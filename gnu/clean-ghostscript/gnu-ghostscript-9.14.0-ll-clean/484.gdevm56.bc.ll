; ModuleID = './gdevm56.bc'
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

@.str = private unnamed_addr constant [8 x i8] c"image56\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_true56_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 56, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true56_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true56_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true56_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image56w\00", align 1
@mem_true56_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 56, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem56_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem56_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem56_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

declare i32 @mem_open(%struct.gx_device_s*) #0

declare void @mem_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @mem_close(%struct.gx_device_s*) #0

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_rgb_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true56_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  %c = alloca i8, align 1
  %d = alloca i8, align 1
  %e = alloca i8, align 1
  %f = alloca i8, align 1
  %g = alloca i8, align 1
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bcnt = alloca i32, align 4
  %x3 = alloca i32, align 4
  %ww = alloca i32, align 4
  %abcd = alloca i32, align 4
  %bcde = alloca i32, align 4
  %cdef = alloca i32, align 4
  %defg = alloca i32, align 4
  %efga = alloca i32, align 4
  %fgab = alloca i32, align 4
  %gabc = alloca i32, align 4
  %pptr = alloca i8*, align 8
  %w1 = alloca i32, align 4
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
  call void @llvm.lifetime.start(i64 1, i8* %a) #2
  %3 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %3, 24
  %shr1 = lshr i64 %shr, 24
  %conv = trunc i64 %shr1 to i8
  store i8 %conv, i8* %a, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %4 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr2 = lshr i64 %4, 24
  %shr3 = lshr i64 %shr2, 16
  %conv4 = trunc i64 %shr3 to i8
  store i8 %conv4, i8* %b, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %5 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr5 = lshr i64 %5, 16
  %shr6 = lshr i64 %shr5, 16
  %conv7 = trunc i64 %shr6 to i8
  store i8 %conv7, i8* %c, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d) #2
  %6 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv8 = trunc i64 %6 to i32
  %shr9 = lshr i32 %conv8, 24
  %conv10 = trunc i32 %shr9 to i8
  store i8 %conv10, i8* %d, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv11 = trunc i64 %7 to i32
  %shr12 = lshr i32 %conv11, 16
  %conv13 = trunc i32 %shr12 to i8
  store i8 %conv13, i8* %e, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f) #2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv14 = trunc i64 %8 to i32
  %shr15 = lshr i32 %conv14, 8
  %conv16 = trunc i32 %shr15 to i8
  store i8 %conv16, i8* %f, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g) #2
  %9 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv17 = trunc i64 %9 to i8
  store i8 %conv17, i8* %g, align 1, !tbaa !9
  %10 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.18

do.body.18:                                       ; preds = %do.body
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %12, %13
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %do.body.18
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %14, 0
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %17, 0
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end
  %18 = load i32, i32* %y.addr, align 4, !tbaa !5
  %19 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add26 = add nsw i32 %19, %18
  store i32 %add26, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %do.body.18
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.29

do.body.29:                                       ; preds = %do.end
  %20 = load i32, i32* %w.addr, align 4, !tbaa !5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width, align 4, !tbaa !10
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %23
  %cmp30 = icmp sgt i32 %20, %sub
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %do.body.29
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 13
  %25 = load i32, i32* %width33, align 4, !tbaa !10
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub34 = sub nsw i32 %25, %26
  store i32 %sub34, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %do.body.29
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %27 = load i32, i32* %h.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height, align 4, !tbaa !22
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub39 = sub nsw i32 %29, %30
  %cmp40 = icmp sgt i32 %27, %sub39
  br i1 %cmp40, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %do.body.38
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 14
  %32 = load i32, i32* %height43, align 4, !tbaa !22
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub44 = sub nsw i32 %32, %33
  store i32 %sub44, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %do.body.38
  br label %do.cond.46

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.end.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  %34 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp53 = icmp sge i32 %34, 5
  br i1 %cmp53, label %if.then.55, label %if.else.233

if.then.55:                                       ; preds = %do.end.52
  %35 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp56 = icmp sle i32 %35, 0
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.55
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.then.55
  br label %do.body.60

do.body.60:                                       ; preds = %if.end.59
  br label %do.cond.61

do.cond.61:                                       ; preds = %do.body.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 44
  %37 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %37, i32* %draster, align 4, !tbaa !5
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 52
  %40 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %40, i64 %idxprom
  %41 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %42 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %42, 7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %43 = load i8, i8* %a, align 1, !tbaa !9
  %conv63 = zext i8 %43 to i32
  %44 = load i8, i8* %b, align 1, !tbaa !9
  %conv64 = zext i8 %44 to i32
  %cmp65 = icmp eq i32 %conv63, %conv64
  br i1 %cmp65, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.62
  %45 = load i8, i8* %b, align 1, !tbaa !9
  %conv67 = zext i8 %45 to i32
  %46 = load i8, i8* %c, align 1, !tbaa !9
  %conv68 = zext i8 %46 to i32
  %cmp69 = icmp eq i32 %conv67, %conv68
  br i1 %cmp69, label %land.lhs.true.71, label %if.else

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %47 = load i8, i8* %c, align 1, !tbaa !9
  %conv72 = zext i8 %47 to i32
  %48 = load i8, i8* %d, align 1, !tbaa !9
  %conv73 = zext i8 %48 to i32
  %cmp74 = icmp eq i32 %conv72, %conv73
  br i1 %cmp74, label %land.lhs.true.76, label %if.else

land.lhs.true.76:                                 ; preds = %land.lhs.true.71
  %49 = load i8, i8* %d, align 1, !tbaa !9
  %conv77 = zext i8 %49 to i32
  %50 = load i8, i8* %e, align 1, !tbaa !9
  %conv78 = zext i8 %50 to i32
  %cmp79 = icmp eq i32 %conv77, %conv78
  br i1 %cmp79, label %land.lhs.true.81, label %if.else

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %51 = load i8, i8* %e, align 1, !tbaa !9
  %conv82 = zext i8 %51 to i32
  %52 = load i8, i8* %f, align 1, !tbaa !9
  %conv83 = zext i8 %52 to i32
  %cmp84 = icmp eq i32 %conv82, %conv83
  br i1 %cmp84, label %land.lhs.true.86, label %if.else

land.lhs.true.86:                                 ; preds = %land.lhs.true.81
  %53 = load i8, i8* %f, align 1, !tbaa !9
  %conv87 = zext i8 %53 to i32
  %54 = load i8, i8* %g, align 1, !tbaa !9
  %conv88 = zext i8 %54 to i32
  %cmp89 = icmp eq i32 %conv87, %conv88
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %land.lhs.true.86
  %55 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul92 = mul nsw i32 %56, 7
  store i32 %mul92, i32* %bcnt, align 4, !tbaa !5
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.91
  br label %do.cond.94

do.cond.94:                                       ; preds = %do.body.93
  br label %do.end.95

do.end.95:                                        ; preds = %do.cond.94
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.95
  %57 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %57, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp96 = icmp sgt i32 %57, 0
  br i1 %cmp96, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %58 = load i8*, i8** %dest, align 8, !tbaa !1
  %59 = load i8, i8* %a, align 1, !tbaa !9
  %conv98 = zext i8 %59 to i32
  %60 = load i32, i32* %bcnt, align 4, !tbaa !5
  %conv99 = sext i32 %60 to i64
  %call = call i8* @memset(i8* %58, i32 %conv98, i64 %conv99) #4
  %61 = load i8*, i8** %dest, align 8, !tbaa !1
  %62 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext100 = zext i32 %62 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %61, i64 %idx.ext100
  store i8* %add.ptr101, i8** %dest, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %63 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  br label %if.end.232

if.else:                                          ; preds = %land.lhs.true.86, %land.lhs.true.81, %land.lhs.true.76, %land.lhs.true.71, %land.lhs.true, %do.end.62
  %64 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub102 = sub nsw i32 0, %65
  %and = and i32 %sub102, 3
  store i32 %and, i32* %x3, align 4, !tbaa !5
  %66 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i32, i32* %w.addr, align 4, !tbaa !5
  %68 = load i32, i32* %x3, align 4, !tbaa !5
  %sub103 = sub nsw i32 %67, %68
  store i32 %sub103, i32* %ww, align 4, !tbaa !5
  %69 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = bitcast i32* %bcde to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  %71 = bitcast i32* %cdef to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = bitcast i32* %defg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #2
  %73 = bitcast i32* %efga to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = bitcast i32* %fgab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #2
  %75 = bitcast i32* %gabc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 57
  %abcdefg = getelementptr inbounds %struct._c56, %struct._c56* %color56, i32 0, i32 0
  %77 = load i64, i64* %abcdefg, align 8, !tbaa !35
  %78 = load i64, i64* %color.addr, align 8, !tbaa !7
  %cmp104 = icmp eq i64 %77, %78
  br i1 %cmp104, label %if.then.106, label %if.else.121

if.then.106:                                      ; preds = %if.else
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56107 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 57
  %abcd108 = getelementptr inbounds %struct._c56, %struct._c56* %color56107, i32 0, i32 1
  %80 = load i32, i32* %abcd108, align 4, !tbaa !36
  store i32 %80, i32* %abcd, align 4, !tbaa !5
  %81 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56109 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %81, i32 0, i32 57
  %bcde110 = getelementptr inbounds %struct._c56, %struct._c56* %color56109, i32 0, i32 2
  %82 = load i32, i32* %bcde110, align 4, !tbaa !37
  store i32 %82, i32* %bcde, align 4, !tbaa !5
  %83 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56111 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %83, i32 0, i32 57
  %cdef112 = getelementptr inbounds %struct._c56, %struct._c56* %color56111, i32 0, i32 3
  %84 = load i32, i32* %cdef112, align 4, !tbaa !38
  store i32 %84, i32* %cdef, align 4, !tbaa !5
  %85 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56113 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %85, i32 0, i32 57
  %defg114 = getelementptr inbounds %struct._c56, %struct._c56* %color56113, i32 0, i32 4
  %86 = load i32, i32* %defg114, align 4, !tbaa !39
  store i32 %86, i32* %defg, align 4, !tbaa !5
  %87 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56115 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %87, i32 0, i32 57
  %efga116 = getelementptr inbounds %struct._c56, %struct._c56* %color56115, i32 0, i32 5
  %88 = load i32, i32* %efga116, align 4, !tbaa !40
  store i32 %88, i32* %efga, align 4, !tbaa !5
  %89 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56117 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %89, i32 0, i32 57
  %fgab118 = getelementptr inbounds %struct._c56, %struct._c56* %color56117, i32 0, i32 6
  %90 = load i32, i32* %fgab118, align 4, !tbaa !41
  store i32 %90, i32* %fgab, align 4, !tbaa !5
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56119 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 57
  %gabc120 = getelementptr inbounds %struct._c56, %struct._c56* %color56119, i32 0, i32 7
  %92 = load i32, i32* %gabc120, align 4, !tbaa !42
  store i32 %92, i32* %gabc, align 4, !tbaa !5
  br label %if.end.169

if.else.121:                                      ; preds = %if.else
  br label %do.body.122

do.body.122:                                      ; preds = %if.else.121
  br label %do.cond.123

do.cond.123:                                      ; preds = %do.body.122
  br label %do.end.124

do.end.124:                                       ; preds = %do.cond.123
  %93 = load i8, i8* %d, align 1, !tbaa !9
  %conv125 = zext i8 %93 to i32
  %shl = shl i32 %conv125, 24
  %94 = load i8, i8* %c, align 1, !tbaa !9
  %conv126 = zext i8 %94 to i32
  %shl127 = shl i32 %conv126, 16
  %or128 = or i32 %shl, %shl127
  %95 = load i8, i8* %b, align 1, !tbaa !9
  %conv129 = zext i8 %95 to i16
  %conv130 = zext i16 %conv129 to i32
  %shl131 = shl i32 %conv130, 8
  %or132 = or i32 %or128, %shl131
  %96 = load i8, i8* %a, align 1, !tbaa !9
  %conv133 = zext i8 %96 to i32
  %or134 = or i32 %or132, %conv133
  store i32 %or134, i32* %abcd, align 4, !tbaa !5
  %97 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56135 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %97, i32 0, i32 57
  %abcd136 = getelementptr inbounds %struct._c56, %struct._c56* %color56135, i32 0, i32 1
  store i32 %or134, i32* %abcd136, align 4, !tbaa !36
  %98 = load i32, i32* %abcd, align 4, !tbaa !5
  %shl137 = shl i32 %98, 8
  %99 = load i8, i8* %g, align 1, !tbaa !9
  %conv138 = zext i8 %99 to i32
  %or139 = or i32 %shl137, %conv138
  store i32 %or139, i32* %gabc, align 4, !tbaa !5
  %100 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56140 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %100, i32 0, i32 57
  %gabc141 = getelementptr inbounds %struct._c56, %struct._c56* %color56140, i32 0, i32 7
  store i32 %or139, i32* %gabc141, align 4, !tbaa !42
  %101 = load i32, i32* %gabc, align 4, !tbaa !5
  %shl142 = shl i32 %101, 8
  %102 = load i8, i8* %f, align 1, !tbaa !9
  %conv143 = zext i8 %102 to i32
  %or144 = or i32 %shl142, %conv143
  store i32 %or144, i32* %fgab, align 4, !tbaa !5
  %103 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56145 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %103, i32 0, i32 57
  %fgab146 = getelementptr inbounds %struct._c56, %struct._c56* %color56145, i32 0, i32 6
  store i32 %or144, i32* %fgab146, align 4, !tbaa !41
  %104 = load i32, i32* %fgab, align 4, !tbaa !5
  %shl147 = shl i32 %104, 8
  %105 = load i8, i8* %e, align 1, !tbaa !9
  %conv148 = zext i8 %105 to i32
  %or149 = or i32 %shl147, %conv148
  store i32 %or149, i32* %efga, align 4, !tbaa !5
  %106 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56150 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %106, i32 0, i32 57
  %efga151 = getelementptr inbounds %struct._c56, %struct._c56* %color56150, i32 0, i32 5
  store i32 %or149, i32* %efga151, align 4, !tbaa !40
  %107 = load i32, i32* %efga, align 4, !tbaa !5
  %shl152 = shl i32 %107, 8
  %108 = load i8, i8* %d, align 1, !tbaa !9
  %conv153 = zext i8 %108 to i32
  %or154 = or i32 %shl152, %conv153
  store i32 %or154, i32* %defg, align 4, !tbaa !5
  %109 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56155 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %109, i32 0, i32 57
  %defg156 = getelementptr inbounds %struct._c56, %struct._c56* %color56155, i32 0, i32 4
  store i32 %or154, i32* %defg156, align 4, !tbaa !39
  %110 = load i32, i32* %defg, align 4, !tbaa !5
  %shl157 = shl i32 %110, 8
  %111 = load i8, i8* %c, align 1, !tbaa !9
  %conv158 = zext i8 %111 to i32
  %or159 = or i32 %shl157, %conv158
  store i32 %or159, i32* %cdef, align 4, !tbaa !5
  %112 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56160 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %112, i32 0, i32 57
  %cdef161 = getelementptr inbounds %struct._c56, %struct._c56* %color56160, i32 0, i32 3
  store i32 %or159, i32* %cdef161, align 4, !tbaa !38
  %113 = load i32, i32* %cdef, align 4, !tbaa !5
  %shl162 = shl i32 %113, 8
  %114 = load i8, i8* %b, align 1, !tbaa !9
  %conv163 = zext i8 %114 to i32
  %or164 = or i32 %shl162, %conv163
  store i32 %or164, i32* %bcde, align 4, !tbaa !5
  %115 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56165 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %115, i32 0, i32 57
  %bcde166 = getelementptr inbounds %struct._c56, %struct._c56* %color56165, i32 0, i32 2
  store i32 %or164, i32* %bcde166, align 4, !tbaa !37
  %116 = load i64, i64* %color.addr, align 8, !tbaa !7
  %117 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color56167 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %117, i32 0, i32 57
  %abcdefg168 = getelementptr inbounds %struct._c56, %struct._c56* %color56167, i32 0, i32 0
  store i64 %116, i64* %abcdefg168, align 8, !tbaa !35
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.124, %if.then.106
  br label %do.body.170

do.body.170:                                      ; preds = %if.end.169
  br label %do.cond.171

do.cond.171:                                      ; preds = %do.body.170
  br label %do.end.172

do.end.172:                                       ; preds = %do.cond.171
  br label %while.cond.173

while.cond.173:                                   ; preds = %sw.epilog.228, %do.end.172
  %118 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec174 = add nsw i32 %118, -1
  store i32 %dec174, i32* %h.addr, align 4, !tbaa !5
  %cmp175 = icmp sgt i32 %118, 0
  br i1 %cmp175, label %while.body.177, label %while.end.231

while.body.177:                                   ; preds = %while.cond.173
  %119 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #2
  %120 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %120, i8** %pptr, align 8, !tbaa !1
  %121 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #2
  %122 = load i32, i32* %ww, align 4, !tbaa !5
  store i32 %122, i32* %w1, align 4, !tbaa !5
  %123 = load i32, i32* %x3, align 4, !tbaa !5
  switch i32 %123, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.183
    i32 3, label %sw.bb.190
    i32 0, label %sw.bb.198
  ]

sw.bb:                                            ; preds = %while.body.177
  %124 = load i8, i8* %a, align 1, !tbaa !9
  %125 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %125, i64 0
  store i8 %124, i8* %arrayidx178, align 1, !tbaa !9
  %126 = load i8, i8* %b, align 1, !tbaa !9
  %127 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %127, i64 1
  store i8 %126, i8* %arrayidx179, align 1, !tbaa !9
  %128 = load i8, i8* %c, align 1, !tbaa !9
  %129 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %129, i64 2
  store i8 %128, i8* %arrayidx180, align 1, !tbaa !9
  %130 = load i32, i32* %defg, align 4, !tbaa !5
  %131 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr181 = getelementptr inbounds i8, i8* %131, i64 3
  %132 = bitcast i8* %add.ptr181 to i32*
  store i32 %130, i32* %132, align 4, !tbaa !5
  %133 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr182 = getelementptr inbounds i8, i8* %133, i64 7
  store i8* %add.ptr182, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.183:                                        ; preds = %while.body.177
  %134 = load i8, i8* %a, align 1, !tbaa !9
  %135 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %135, i64 0
  store i8 %134, i8* %arrayidx184, align 1, !tbaa !9
  %136 = load i8, i8* %b, align 1, !tbaa !9
  %137 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %137, i64 1
  store i8 %136, i8* %arrayidx185, align 1, !tbaa !9
  %138 = load i32, i32* %cdef, align 4, !tbaa !5
  %139 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr186 = getelementptr inbounds i8, i8* %139, i64 2
  %140 = bitcast i8* %add.ptr186 to i32*
  store i32 %138, i32* %140, align 4, !tbaa !5
  %141 = load i32, i32* %gabc, align 4, !tbaa !5
  %142 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr187 = getelementptr inbounds i8, i8* %142, i64 6
  %143 = bitcast i8* %add.ptr187 to i32*
  store i32 %141, i32* %143, align 4, !tbaa !5
  %144 = load i32, i32* %defg, align 4, !tbaa !5
  %145 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr188 = getelementptr inbounds i8, i8* %145, i64 10
  %146 = bitcast i8* %add.ptr188 to i32*
  store i32 %144, i32* %146, align 4, !tbaa !5
  %147 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr189 = getelementptr inbounds i8, i8* %147, i64 14
  store i8* %add.ptr189, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.190:                                        ; preds = %while.body.177
  %148 = load i8, i8* %a, align 1, !tbaa !9
  %149 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %148, i8* %arrayidx191, align 1, !tbaa !9
  %150 = load i32, i32* %bcde, align 4, !tbaa !5
  %151 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr192 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = bitcast i8* %add.ptr192 to i32*
  store i32 %150, i32* %152, align 4, !tbaa !5
  %153 = load i32, i32* %fgab, align 4, !tbaa !5
  %154 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr193 = getelementptr inbounds i8, i8* %154, i64 5
  %155 = bitcast i8* %add.ptr193 to i32*
  store i32 %153, i32* %155, align 4, !tbaa !5
  %156 = load i32, i32* %cdef, align 4, !tbaa !5
  %157 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr194 = getelementptr inbounds i8, i8* %157, i64 9
  %158 = bitcast i8* %add.ptr194 to i32*
  store i32 %156, i32* %158, align 4, !tbaa !5
  %159 = load i32, i32* %gabc, align 4, !tbaa !5
  %160 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr195 = getelementptr inbounds i8, i8* %160, i64 13
  %161 = bitcast i8* %add.ptr195 to i32*
  store i32 %159, i32* %161, align 4, !tbaa !5
  %162 = load i32, i32* %defg, align 4, !tbaa !5
  %163 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr196 = getelementptr inbounds i8, i8* %163, i64 17
  %164 = bitcast i8* %add.ptr196 to i32*
  store i32 %162, i32* %164, align 4, !tbaa !5
  %165 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr197 = getelementptr inbounds i8, i8* %165, i64 21
  store i8* %add.ptr197, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.198:                                        ; preds = %while.body.177
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.198, %while.body.177, %sw.bb.190, %sw.bb.183, %sw.bb
  br label %while.cond.199

while.cond.199:                                   ; preds = %while.body.202, %sw.epilog
  %166 = load i32, i32* %w1, align 4, !tbaa !5
  %cmp200 = icmp sge i32 %166, 4
  br i1 %cmp200, label %while.body.202, label %while.end.211

while.body.202:                                   ; preds = %while.cond.199
  %167 = load i32, i32* %abcd, align 4, !tbaa !5
  %168 = load i8*, i8** %pptr, align 8, !tbaa !1
  %169 = bitcast i8* %168 to i32*
  store i32 %167, i32* %169, align 4, !tbaa !5
  %170 = load i32, i32* %efga, align 4, !tbaa !5
  %171 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr203 = getelementptr inbounds i8, i8* %171, i64 4
  %172 = bitcast i8* %add.ptr203 to i32*
  store i32 %170, i32* %172, align 4, !tbaa !5
  %173 = load i32, i32* %bcde, align 4, !tbaa !5
  %174 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr204 = getelementptr inbounds i8, i8* %174, i64 8
  %175 = bitcast i8* %add.ptr204 to i32*
  store i32 %173, i32* %175, align 4, !tbaa !5
  %176 = load i32, i32* %fgab, align 4, !tbaa !5
  %177 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr205 = getelementptr inbounds i8, i8* %177, i64 12
  %178 = bitcast i8* %add.ptr205 to i32*
  store i32 %176, i32* %178, align 4, !tbaa !5
  %179 = load i32, i32* %cdef, align 4, !tbaa !5
  %180 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr206 = getelementptr inbounds i8, i8* %180, i64 16
  %181 = bitcast i8* %add.ptr206 to i32*
  store i32 %179, i32* %181, align 4, !tbaa !5
  %182 = load i32, i32* %gabc, align 4, !tbaa !5
  %183 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr207 = getelementptr inbounds i8, i8* %183, i64 20
  %184 = bitcast i8* %add.ptr207 to i32*
  store i32 %182, i32* %184, align 4, !tbaa !5
  %185 = load i32, i32* %defg, align 4, !tbaa !5
  %186 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr208 = getelementptr inbounds i8, i8* %186, i64 24
  %187 = bitcast i8* %add.ptr208 to i32*
  store i32 %185, i32* %187, align 4, !tbaa !5
  %188 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr209 = getelementptr inbounds i8, i8* %188, i64 28
  store i8* %add.ptr209, i8** %pptr, align 8, !tbaa !1
  %189 = load i32, i32* %w1, align 4, !tbaa !5
  %sub210 = sub nsw i32 %189, 4
  store i32 %sub210, i32* %w1, align 4, !tbaa !5
  br label %while.cond.199

while.end.211:                                    ; preds = %while.cond.199
  %190 = load i32, i32* %w1, align 4, !tbaa !5
  switch i32 %190, label %sw.epilog.228 [
    i32 1, label %sw.bb.212
    i32 2, label %sw.bb.216
    i32 3, label %sw.bb.221
    i32 0, label %sw.bb.227
  ]

sw.bb.212:                                        ; preds = %while.end.211
  %191 = load i32, i32* %abcd, align 4, !tbaa !5
  %192 = load i8*, i8** %pptr, align 8, !tbaa !1
  %193 = bitcast i8* %192 to i32*
  store i32 %191, i32* %193, align 4, !tbaa !5
  %194 = load i8, i8* %e, align 1, !tbaa !9
  %195 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %195, i64 4
  store i8 %194, i8* %arrayidx213, align 1, !tbaa !9
  %196 = load i8, i8* %f, align 1, !tbaa !9
  %197 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %197, i64 5
  store i8 %196, i8* %arrayidx214, align 1, !tbaa !9
  %198 = load i8, i8* %g, align 1, !tbaa !9
  %199 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %199, i64 6
  store i8 %198, i8* %arrayidx215, align 1, !tbaa !9
  br label %sw.epilog.228

sw.bb.216:                                        ; preds = %while.end.211
  %200 = load i32, i32* %abcd, align 4, !tbaa !5
  %201 = load i8*, i8** %pptr, align 8, !tbaa !1
  %202 = bitcast i8* %201 to i32*
  store i32 %200, i32* %202, align 4, !tbaa !5
  %203 = load i32, i32* %efga, align 4, !tbaa !5
  %204 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr217 = getelementptr inbounds i8, i8* %204, i64 4
  %205 = bitcast i8* %add.ptr217 to i32*
  store i32 %203, i32* %205, align 4, !tbaa !5
  %206 = load i32, i32* %bcde, align 4, !tbaa !5
  %207 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr218 = getelementptr inbounds i8, i8* %207, i64 8
  %208 = bitcast i8* %add.ptr218 to i32*
  store i32 %206, i32* %208, align 4, !tbaa !5
  %209 = load i8, i8* %f, align 1, !tbaa !9
  %210 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %210, i64 12
  store i8 %209, i8* %arrayidx219, align 1, !tbaa !9
  %211 = load i8, i8* %g, align 1, !tbaa !9
  %212 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %212, i64 13
  store i8 %211, i8* %arrayidx220, align 1, !tbaa !9
  br label %sw.epilog.228

sw.bb.221:                                        ; preds = %while.end.211
  %213 = load i32, i32* %abcd, align 4, !tbaa !5
  %214 = load i8*, i8** %pptr, align 8, !tbaa !1
  %215 = bitcast i8* %214 to i32*
  store i32 %213, i32* %215, align 4, !tbaa !5
  %216 = load i32, i32* %efga, align 4, !tbaa !5
  %217 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr222 = getelementptr inbounds i8, i8* %217, i64 4
  %218 = bitcast i8* %add.ptr222 to i32*
  store i32 %216, i32* %218, align 4, !tbaa !5
  %219 = load i32, i32* %bcde, align 4, !tbaa !5
  %220 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr223 = getelementptr inbounds i8, i8* %220, i64 8
  %221 = bitcast i8* %add.ptr223 to i32*
  store i32 %219, i32* %221, align 4, !tbaa !5
  %222 = load i32, i32* %fgab, align 4, !tbaa !5
  %223 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr224 = getelementptr inbounds i8, i8* %223, i64 12
  %224 = bitcast i8* %add.ptr224 to i32*
  store i32 %222, i32* %224, align 4, !tbaa !5
  %225 = load i32, i32* %cdef, align 4, !tbaa !5
  %226 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr225 = getelementptr inbounds i8, i8* %226, i64 16
  %227 = bitcast i8* %add.ptr225 to i32*
  store i32 %225, i32* %227, align 4, !tbaa !5
  %228 = load i8, i8* %g, align 1, !tbaa !9
  %229 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i8, i8* %229, i64 20
  store i8 %228, i8* %arrayidx226, align 1, !tbaa !9
  br label %sw.epilog.228

sw.bb.227:                                        ; preds = %while.end.211
  br label %sw.epilog.228

sw.epilog.228:                                    ; preds = %sw.bb.227, %while.end.211, %sw.bb.221, %sw.bb.216, %sw.bb.212
  %230 = load i8*, i8** %dest, align 8, !tbaa !1
  %231 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext229 = zext i32 %231 to i64
  %add.ptr230 = getelementptr inbounds i8, i8* %230, i64 %idx.ext229
  store i8* %add.ptr230, i8** %dest, align 8, !tbaa !1
  %232 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %233) #2
  br label %while.cond.173

while.end.231:                                    ; preds = %while.cond.173
  %234 = bitcast i32* %gabc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %fgab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %efga to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i32* %defg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %238 = bitcast i32* %cdef to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  %239 = bitcast i32* %bcde to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %240 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  br label %if.end.232

if.end.232:                                       ; preds = %while.end.231, %while.end
  br label %if.end.351

if.else.233:                                      ; preds = %do.end.52
  %243 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp234 = icmp sgt i32 %243, 0
  br i1 %cmp234, label %if.then.236, label %if.end.350

if.then.236:                                      ; preds = %if.else.233
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  br label %do.cond.238

do.cond.238:                                      ; preds = %do.body.237
  br label %do.end.239

do.end.239:                                       ; preds = %do.cond.238
  %244 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster240 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %244, i32 0, i32 44
  %245 = load i32, i32* %raster240, align 4, !tbaa !23
  store i32 %245, i32* %draster, align 4, !tbaa !5
  %246 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom241 = sext i32 %246 to i64
  %247 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs242 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %247, i32 0, i32 52
  %248 = load i8**, i8*** %line_ptrs242, align 8, !tbaa !34
  %arrayidx243 = getelementptr inbounds i8*, i8** %248, i64 %idxprom241
  %249 = load i8*, i8** %arrayidx243, align 8, !tbaa !1
  %250 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul244 = mul nsw i32 %250, 7
  %idx.ext245 = sext i32 %mul244 to i64
  %add.ptr246 = getelementptr inbounds i8, i8* %249, i64 %idx.ext245
  store i8* %add.ptr246, i8** %dest, align 8, !tbaa !1
  %251 = load i32, i32* %w.addr, align 4, !tbaa !5
  switch i32 %251, label %sw.default [
    i32 4, label %sw.bb.247
    i32 3, label %sw.bb.282
    i32 2, label %sw.bb.311
    i32 1, label %sw.bb.333
    i32 0, label %sw.bb.348
  ]

sw.bb.247:                                        ; preds = %do.end.239
  br label %do.body.248

do.body.248:                                      ; preds = %do.cond.279, %sw.bb.247
  %252 = load i8, i8* %a, align 1, !tbaa !9
  %253 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %253, i64 0
  store i8 %252, i8* %arrayidx249, align 1, !tbaa !9
  %254 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %254, i64 7
  store i8 %252, i8* %arrayidx250, align 1, !tbaa !9
  %255 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %255, i64 14
  store i8 %252, i8* %arrayidx251, align 1, !tbaa !9
  %256 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %256, i64 21
  store i8 %252, i8* %arrayidx252, align 1, !tbaa !9
  %257 = load i8, i8* %b, align 1, !tbaa !9
  %258 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds i8, i8* %258, i64 1
  store i8 %257, i8* %arrayidx253, align 1, !tbaa !9
  %259 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %259, i64 8
  store i8 %257, i8* %arrayidx254, align 1, !tbaa !9
  %260 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %260, i64 15
  store i8 %257, i8* %arrayidx255, align 1, !tbaa !9
  %261 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i8, i8* %261, i64 22
  store i8 %257, i8* %arrayidx256, align 1, !tbaa !9
  %262 = load i8, i8* %c, align 1, !tbaa !9
  %263 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds i8, i8* %263, i64 2
  store i8 %262, i8* %arrayidx257, align 1, !tbaa !9
  %264 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds i8, i8* %264, i64 9
  store i8 %262, i8* %arrayidx258, align 1, !tbaa !9
  %265 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i8, i8* %265, i64 16
  store i8 %262, i8* %arrayidx259, align 1, !tbaa !9
  %266 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx260 = getelementptr inbounds i8, i8* %266, i64 23
  store i8 %262, i8* %arrayidx260, align 1, !tbaa !9
  %267 = load i8, i8* %d, align 1, !tbaa !9
  %268 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %268, i64 3
  store i8 %267, i8* %arrayidx261, align 1, !tbaa !9
  %269 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i8, i8* %269, i64 10
  store i8 %267, i8* %arrayidx262, align 1, !tbaa !9
  %270 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i8, i8* %270, i64 17
  store i8 %267, i8* %arrayidx263, align 1, !tbaa !9
  %271 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i8, i8* %271, i64 24
  store i8 %267, i8* %arrayidx264, align 1, !tbaa !9
  %272 = load i8, i8* %e, align 1, !tbaa !9
  %273 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i8, i8* %273, i64 4
  store i8 %272, i8* %arrayidx265, align 1, !tbaa !9
  %274 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %274, i64 11
  store i8 %272, i8* %arrayidx266, align 1, !tbaa !9
  %275 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %275, i64 18
  store i8 %272, i8* %arrayidx267, align 1, !tbaa !9
  %276 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i8, i8* %276, i64 25
  store i8 %272, i8* %arrayidx268, align 1, !tbaa !9
  %277 = load i8, i8* %f, align 1, !tbaa !9
  %278 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %278, i64 5
  store i8 %277, i8* %arrayidx269, align 1, !tbaa !9
  %279 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds i8, i8* %279, i64 12
  store i8 %277, i8* %arrayidx270, align 1, !tbaa !9
  %280 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds i8, i8* %280, i64 19
  store i8 %277, i8* %arrayidx271, align 1, !tbaa !9
  %281 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i8, i8* %281, i64 26
  store i8 %277, i8* %arrayidx272, align 1, !tbaa !9
  %282 = load i8, i8* %g, align 1, !tbaa !9
  %283 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %283, i64 6
  store i8 %282, i8* %arrayidx273, align 1, !tbaa !9
  %284 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx274 = getelementptr inbounds i8, i8* %284, i64 13
  store i8 %282, i8* %arrayidx274, align 1, !tbaa !9
  %285 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds i8, i8* %285, i64 20
  store i8 %282, i8* %arrayidx275, align 1, !tbaa !9
  %286 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i8, i8* %286, i64 27
  store i8 %282, i8* %arrayidx276, align 1, !tbaa !9
  %287 = load i8*, i8** %dest, align 8, !tbaa !1
  %288 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext277 = zext i32 %288 to i64
  %add.ptr278 = getelementptr inbounds i8, i8* %287, i64 %idx.ext277
  store i8* %add.ptr278, i8** %dest, align 8, !tbaa !1
  br label %do.cond.279

do.cond.279:                                      ; preds = %do.body.248
  %289 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec280 = add nsw i32 %289, -1
  store i32 %dec280, i32* %h.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec280, 0
  br i1 %tobool, label %do.body.248, label %do.end.281

do.end.281:                                       ; preds = %do.cond.279
  br label %sw.epilog.349

sw.bb.282:                                        ; preds = %do.end.239
  br label %do.body.283

do.body.283:                                      ; preds = %do.cond.307, %sw.bb.282
  %290 = load i8, i8* %a, align 1, !tbaa !9
  %291 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i8, i8* %291, i64 0
  store i8 %290, i8* %arrayidx284, align 1, !tbaa !9
  %292 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds i8, i8* %292, i64 7
  store i8 %290, i8* %arrayidx285, align 1, !tbaa !9
  %293 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i8, i8* %293, i64 14
  store i8 %290, i8* %arrayidx286, align 1, !tbaa !9
  %294 = load i8, i8* %b, align 1, !tbaa !9
  %295 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds i8, i8* %295, i64 1
  store i8 %294, i8* %arrayidx287, align 1, !tbaa !9
  %296 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds i8, i8* %296, i64 8
  store i8 %294, i8* %arrayidx288, align 1, !tbaa !9
  %297 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds i8, i8* %297, i64 15
  store i8 %294, i8* %arrayidx289, align 1, !tbaa !9
  %298 = load i8, i8* %c, align 1, !tbaa !9
  %299 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i8, i8* %299, i64 2
  store i8 %298, i8* %arrayidx290, align 1, !tbaa !9
  %300 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds i8, i8* %300, i64 9
  store i8 %298, i8* %arrayidx291, align 1, !tbaa !9
  %301 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds i8, i8* %301, i64 16
  store i8 %298, i8* %arrayidx292, align 1, !tbaa !9
  %302 = load i8, i8* %d, align 1, !tbaa !9
  %303 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i8, i8* %303, i64 3
  store i8 %302, i8* %arrayidx293, align 1, !tbaa !9
  %304 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx294 = getelementptr inbounds i8, i8* %304, i64 10
  store i8 %302, i8* %arrayidx294, align 1, !tbaa !9
  %305 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds i8, i8* %305, i64 17
  store i8 %302, i8* %arrayidx295, align 1, !tbaa !9
  %306 = load i8, i8* %e, align 1, !tbaa !9
  %307 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx296 = getelementptr inbounds i8, i8* %307, i64 4
  store i8 %306, i8* %arrayidx296, align 1, !tbaa !9
  %308 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds i8, i8* %308, i64 11
  store i8 %306, i8* %arrayidx297, align 1, !tbaa !9
  %309 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds i8, i8* %309, i64 18
  store i8 %306, i8* %arrayidx298, align 1, !tbaa !9
  %310 = load i8, i8* %f, align 1, !tbaa !9
  %311 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds i8, i8* %311, i64 5
  store i8 %310, i8* %arrayidx299, align 1, !tbaa !9
  %312 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8, i8* %312, i64 12
  store i8 %310, i8* %arrayidx300, align 1, !tbaa !9
  %313 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8, i8* %313, i64 19
  store i8 %310, i8* %arrayidx301, align 1, !tbaa !9
  %314 = load i8, i8* %g, align 1, !tbaa !9
  %315 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8, i8* %315, i64 6
  store i8 %314, i8* %arrayidx302, align 1, !tbaa !9
  %316 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %316, i64 13
  store i8 %314, i8* %arrayidx303, align 1, !tbaa !9
  %317 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i8, i8* %317, i64 20
  store i8 %314, i8* %arrayidx304, align 1, !tbaa !9
  %318 = load i8*, i8** %dest, align 8, !tbaa !1
  %319 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext305 = zext i32 %319 to i64
  %add.ptr306 = getelementptr inbounds i8, i8* %318, i64 %idx.ext305
  store i8* %add.ptr306, i8** %dest, align 8, !tbaa !1
  br label %do.cond.307

do.cond.307:                                      ; preds = %do.body.283
  %320 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec308 = add nsw i32 %320, -1
  store i32 %dec308, i32* %h.addr, align 4, !tbaa !5
  %tobool309 = icmp ne i32 %dec308, 0
  br i1 %tobool309, label %do.body.283, label %do.end.310

do.end.310:                                       ; preds = %do.cond.307
  br label %sw.epilog.349

sw.bb.311:                                        ; preds = %do.end.239
  br label %do.body.312

do.body.312:                                      ; preds = %do.cond.329, %sw.bb.311
  %321 = load i8, i8* %a, align 1, !tbaa !9
  %322 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds i8, i8* %322, i64 0
  store i8 %321, i8* %arrayidx313, align 1, !tbaa !9
  %323 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx314 = getelementptr inbounds i8, i8* %323, i64 7
  store i8 %321, i8* %arrayidx314, align 1, !tbaa !9
  %324 = load i8, i8* %b, align 1, !tbaa !9
  %325 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx315 = getelementptr inbounds i8, i8* %325, i64 1
  store i8 %324, i8* %arrayidx315, align 1, !tbaa !9
  %326 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx316 = getelementptr inbounds i8, i8* %326, i64 8
  store i8 %324, i8* %arrayidx316, align 1, !tbaa !9
  %327 = load i8, i8* %c, align 1, !tbaa !9
  %328 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %328, i64 2
  store i8 %327, i8* %arrayidx317, align 1, !tbaa !9
  %329 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx318 = getelementptr inbounds i8, i8* %329, i64 9
  store i8 %327, i8* %arrayidx318, align 1, !tbaa !9
  %330 = load i8, i8* %d, align 1, !tbaa !9
  %331 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx319 = getelementptr inbounds i8, i8* %331, i64 3
  store i8 %330, i8* %arrayidx319, align 1, !tbaa !9
  %332 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i8, i8* %332, i64 10
  store i8 %330, i8* %arrayidx320, align 1, !tbaa !9
  %333 = load i8, i8* %e, align 1, !tbaa !9
  %334 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx321 = getelementptr inbounds i8, i8* %334, i64 4
  store i8 %333, i8* %arrayidx321, align 1, !tbaa !9
  %335 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds i8, i8* %335, i64 11
  store i8 %333, i8* %arrayidx322, align 1, !tbaa !9
  %336 = load i8, i8* %f, align 1, !tbaa !9
  %337 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds i8, i8* %337, i64 5
  store i8 %336, i8* %arrayidx323, align 1, !tbaa !9
  %338 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds i8, i8* %338, i64 12
  store i8 %336, i8* %arrayidx324, align 1, !tbaa !9
  %339 = load i8, i8* %g, align 1, !tbaa !9
  %340 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i8, i8* %340, i64 6
  store i8 %339, i8* %arrayidx325, align 1, !tbaa !9
  %341 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds i8, i8* %341, i64 13
  store i8 %339, i8* %arrayidx326, align 1, !tbaa !9
  %342 = load i8*, i8** %dest, align 8, !tbaa !1
  %343 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext327 = zext i32 %343 to i64
  %add.ptr328 = getelementptr inbounds i8, i8* %342, i64 %idx.ext327
  store i8* %add.ptr328, i8** %dest, align 8, !tbaa !1
  br label %do.cond.329

do.cond.329:                                      ; preds = %do.body.312
  %344 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec330 = add nsw i32 %344, -1
  store i32 %dec330, i32* %h.addr, align 4, !tbaa !5
  %tobool331 = icmp ne i32 %dec330, 0
  br i1 %tobool331, label %do.body.312, label %do.end.332

do.end.332:                                       ; preds = %do.cond.329
  br label %sw.epilog.349

sw.bb.333:                                        ; preds = %do.end.239
  br label %do.body.334

do.body.334:                                      ; preds = %do.cond.344, %sw.bb.333
  %345 = load i8, i8* %a, align 1, !tbaa !9
  %346 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx335 = getelementptr inbounds i8, i8* %346, i64 0
  store i8 %345, i8* %arrayidx335, align 1, !tbaa !9
  %347 = load i8, i8* %b, align 1, !tbaa !9
  %348 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds i8, i8* %348, i64 1
  store i8 %347, i8* %arrayidx336, align 1, !tbaa !9
  %349 = load i8, i8* %c, align 1, !tbaa !9
  %350 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx337 = getelementptr inbounds i8, i8* %350, i64 2
  store i8 %349, i8* %arrayidx337, align 1, !tbaa !9
  %351 = load i8, i8* %d, align 1, !tbaa !9
  %352 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx338 = getelementptr inbounds i8, i8* %352, i64 3
  store i8 %351, i8* %arrayidx338, align 1, !tbaa !9
  %353 = load i8, i8* %e, align 1, !tbaa !9
  %354 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds i8, i8* %354, i64 4
  store i8 %353, i8* %arrayidx339, align 1, !tbaa !9
  %355 = load i8, i8* %f, align 1, !tbaa !9
  %356 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx340 = getelementptr inbounds i8, i8* %356, i64 5
  store i8 %355, i8* %arrayidx340, align 1, !tbaa !9
  %357 = load i8, i8* %g, align 1, !tbaa !9
  %358 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx341 = getelementptr inbounds i8, i8* %358, i64 6
  store i8 %357, i8* %arrayidx341, align 1, !tbaa !9
  %359 = load i8*, i8** %dest, align 8, !tbaa !1
  %360 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext342 = zext i32 %360 to i64
  %add.ptr343 = getelementptr inbounds i8, i8* %359, i64 %idx.ext342
  store i8* %add.ptr343, i8** %dest, align 8, !tbaa !1
  br label %do.cond.344

do.cond.344:                                      ; preds = %do.body.334
  %361 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec345 = add nsw i32 %361, -1
  store i32 %dec345, i32* %h.addr, align 4, !tbaa !5
  %tobool346 = icmp ne i32 %dec345, 0
  br i1 %tobool346, label %do.body.334, label %do.end.347

do.end.347:                                       ; preds = %do.cond.344
  br label %sw.epilog.349

sw.bb.348:                                        ; preds = %do.end.239
  br label %sw.default

sw.default:                                       ; preds = %do.end.239, %sw.bb.348
  br label %sw.epilog.349

sw.epilog.349:                                    ; preds = %sw.default, %do.end.347, %do.end.332, %do.end.310, %do.end.281
  br label %if.end.350

if.end.350:                                       ; preds = %sw.epilog.349, %if.else.233
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.end.232
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.351, %if.then.58
  %362 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #2
  %363 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %363) #2
  call void @llvm.lifetime.end(i64 1, i8* %g) #2
  call void @llvm.lifetime.end(i64 1, i8* %f) #2
  call void @llvm.lifetime.end(i64 1, i8* %e) #2
  call void @llvm.lifetime.end(i64 1, i8* %d) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  call void @llvm.lifetime.end(i64 1, i8* %a) #2
  %364 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %364) #2
  %365 = load i32, i32* %retval
  ret i32 %365
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true56_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %line = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %first_bit = alloca i32, align 4
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %a0 = alloca i8, align 1
  %b0 = alloca i8, align 1
  %c0 = alloca i8, align 1
  %d0 = alloca i8, align 1
  %e0 = alloca i8, align 1
  %f0 = alloca i8, align 1
  %g0 = alloca i8, align 1
  %a1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %d1 = alloca i8, align 1
  %e1 = alloca i8, align 1
  %f1 = alloca i8, align 1
  %g1 = alloca i8, align 1
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  %a1118 = alloca i8, align 1
  %b1122 = alloca i8, align 1
  %c1126 = alloca i8, align 1
  %d1130 = alloca i8, align 1
  %e1134 = alloca i8, align 1
  %f1138 = alloca i8, align 1
  %g1142 = alloca i8, align 1
  %first_mask = alloca i32, align 4
  %first_count = alloca i32, align 4
  %first_skip = alloca i32, align 4
  %pptr160 = alloca i8*, align 8
  %sptr161 = alloca i8*, align 8
  %sbyte162 = alloca i32, align 4
  %count166 = alloca i32, align 4
  %bit170 = alloca i32, align 4
  %bit350 = alloca i32, align 4
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
  %3 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %8, %9
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %14 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %15, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %17, %16
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %18 = load i32, i32* %y.addr, align 4, !tbaa !5
  %19 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %18, %19
  %20 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %21 = load i32, i32* %w.addr, align 4, !tbaa !5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width, align 4, !tbaa !10
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %23, %24
  %cmp10 = icmp sgt i32 %21, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width12, align 4, !tbaa !10
  %27 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %26, %27
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height, align 4, !tbaa !22
  %31 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %30, %31
  %cmp16 = icmp sgt i32 %28, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 14
  %33 = load i32, i32* %height18, align 4, !tbaa !22
  %34 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %33, %34
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %35 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %35, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %36 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %36, 0
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
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %38, i32* %draster, align 4, !tbaa !5
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 52
  %41 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul27 = mul nsw i32 %43, 7
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %42, i64 %idx.ext28
  store i8* %add.ptr29, i8** %dest, align 8, !tbaa !1
  %44 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %45 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr = ashr i32 %45, 3
  %idx.ext30 = sext i32 %shr to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %44, i64 %idx.ext30
  store i8* %add.ptr31, i8** %line, align 8, !tbaa !1
  %46 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and = and i32 %46, 7
  store i32 %and, i32* %sbit, align 4, !tbaa !5
  %47 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr32 = ashr i32 128, %47
  store i32 %shr32, i32* %first_bit, align 4, !tbaa !5
  %48 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp33 = icmp ne i64 %48, -1
  br i1 %cmp33, label %if.then.34, label %if.else.114

if.then.34:                                       ; preds = %do.end.26
  call void @llvm.lifetime.start(i64 1, i8* %a0) #2
  %49 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr35 = lshr i64 %49, 24
  %shr36 = lshr i64 %shr35, 24
  %conv = trunc i64 %shr36 to i8
  store i8 %conv, i8* %a0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  %50 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr37 = lshr i64 %50, 24
  %shr38 = lshr i64 %shr37, 16
  %conv39 = trunc i64 %shr38 to i8
  store i8 %conv39, i8* %b0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c0) #2
  %51 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr40 = lshr i64 %51, 16
  %shr41 = lshr i64 %shr40, 16
  %conv42 = trunc i64 %shr41 to i8
  store i8 %conv42, i8* %c0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d0) #2
  %52 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv43 = trunc i64 %52 to i32
  %shr44 = lshr i32 %conv43, 24
  %conv45 = trunc i32 %shr44 to i8
  store i8 %conv45, i8* %d0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e0) #2
  %53 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv46 = trunc i64 %53 to i32
  %shr47 = lshr i32 %conv46, 16
  %conv48 = trunc i32 %shr47 to i8
  store i8 %conv48, i8* %e0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f0) #2
  %54 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv49 = trunc i64 %54 to i32
  %shr50 = lshr i32 %conv49, 8
  %conv51 = trunc i32 %shr50 to i8
  store i8 %conv51, i8* %f0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g0) #2
  %55 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv52 = trunc i64 %55 to i8
  store i8 %conv52, i8* %g0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %a1) #2
  %56 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr53 = lshr i64 %56, 24
  %shr54 = lshr i64 %shr53, 24
  %conv55 = trunc i64 %shr54 to i8
  store i8 %conv55, i8* %a1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  %57 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr56 = lshr i64 %57, 24
  %shr57 = lshr i64 %shr56, 16
  %conv58 = trunc i64 %shr57 to i8
  store i8 %conv58, i8* %b1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c1) #2
  %58 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr59 = lshr i64 %58, 16
  %shr60 = lshr i64 %shr59, 16
  %conv61 = trunc i64 %shr60 to i8
  store i8 %conv61, i8* %c1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d1) #2
  %59 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv62 = trunc i64 %59 to i32
  %shr63 = lshr i32 %conv62, 24
  %conv64 = trunc i32 %shr63 to i8
  store i8 %conv64, i8* %d1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e1) #2
  %60 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv65 = trunc i64 %60 to i32
  %shr66 = lshr i32 %conv65, 16
  %conv67 = trunc i32 %shr66 to i8
  store i8 %conv67, i8* %e1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f1) #2
  %61 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv68 = trunc i64 %61 to i32
  %shr69 = lshr i32 %conv68, 8
  %conv70 = trunc i32 %shr69 to i8
  store i8 %conv70, i8* %f1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g1) #2
  %62 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv71 = trunc i64 %62 to i8
  store i8 %conv71, i8* %g1, align 1, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %do.end.109, %if.then.34
  %63 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp72 = icmp sgt i32 %63, 0
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %64 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %65, i8** %pptr, align 8, !tbaa !1
  %66 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  %67 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %67, i8** %sptr, align 8, !tbaa !1
  %68 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %70 = load i8, i8* %69, align 1, !tbaa !9
  %conv74 = zext i8 %70 to i32
  store i32 %conv74, i32* %sbyte, align 4, !tbaa !5
  %71 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %72, i32* %bit, align 4, !tbaa !5
  %73 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %74, i32* %count, align 4, !tbaa !5
  br label %do.body.75

do.body.75:                                       ; preds = %do.cond.105, %while.body
  %75 = load i32, i32* %sbyte, align 4, !tbaa !5
  %76 = load i32, i32* %bit, align 4, !tbaa !5
  %and76 = and i32 %75, %76
  %tobool = icmp ne i32 %and76, 0
  br i1 %tobool, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %do.body.75
  %77 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp78 = icmp ne i64 %77, -1
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %if.then.77
  %78 = load i8, i8* %a1, align 1, !tbaa !9
  %79 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %78, i8* %arrayidx81, align 1, !tbaa !9
  %80 = load i8, i8* %b1, align 1, !tbaa !9
  %81 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %80, i8* %arrayidx82, align 1, !tbaa !9
  %82 = load i8, i8* %c1, align 1, !tbaa !9
  %83 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %83, i64 2
  store i8 %82, i8* %arrayidx83, align 1, !tbaa !9
  %84 = load i8, i8* %d1, align 1, !tbaa !9
  %85 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %85, i64 3
  store i8 %84, i8* %arrayidx84, align 1, !tbaa !9
  %86 = load i8, i8* %e1, align 1, !tbaa !9
  %87 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %87, i64 4
  store i8 %86, i8* %arrayidx85, align 1, !tbaa !9
  %88 = load i8, i8* %f1, align 1, !tbaa !9
  %89 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %89, i64 5
  store i8 %88, i8* %arrayidx86, align 1, !tbaa !9
  %90 = load i8, i8* %g1, align 1, !tbaa !9
  %91 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %91, i64 6
  store i8 %90, i8* %arrayidx87, align 1, !tbaa !9
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %if.then.77
  br label %if.end.96

if.else:                                          ; preds = %do.body.75
  %92 = load i8, i8* %a0, align 1, !tbaa !9
  %93 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 %92, i8* %arrayidx89, align 1, !tbaa !9
  %94 = load i8, i8* %b0, align 1, !tbaa !9
  %95 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %95, i64 1
  store i8 %94, i8* %arrayidx90, align 1, !tbaa !9
  %96 = load i8, i8* %c0, align 1, !tbaa !9
  %97 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds i8, i8* %97, i64 2
  store i8 %96, i8* %arrayidx91, align 1, !tbaa !9
  %98 = load i8, i8* %d0, align 1, !tbaa !9
  %99 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %99, i64 3
  store i8 %98, i8* %arrayidx92, align 1, !tbaa !9
  %100 = load i8, i8* %e0, align 1, !tbaa !9
  %101 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i8, i8* %101, i64 4
  store i8 %100, i8* %arrayidx93, align 1, !tbaa !9
  %102 = load i8, i8* %f0, align 1, !tbaa !9
  %103 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i8, i8* %103, i64 5
  store i8 %102, i8* %arrayidx94, align 1, !tbaa !9
  %104 = load i8, i8* %g0, align 1, !tbaa !9
  %105 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %105, i64 6
  store i8 %104, i8* %arrayidx95, align 1, !tbaa !9
  br label %if.end.96

if.end.96:                                        ; preds = %if.else, %if.end.88
  %106 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr97 = getelementptr inbounds i8, i8* %106, i64 7
  store i8* %add.ptr97, i8** %pptr, align 8, !tbaa !1
  %107 = load i32, i32* %bit, align 4, !tbaa !5
  %shr98 = ashr i32 %107, 1
  store i32 %shr98, i32* %bit, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %shr98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.96
  store i32 128, i32* %bit, align 4, !tbaa !5
  %108 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %incdec.ptr102, i8** %sptr, align 8, !tbaa !1
  %109 = load i8, i8* %108, align 1, !tbaa !9
  %conv103 = zext i8 %109 to i32
  store i32 %conv103, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.96
  br label %do.cond.105

do.cond.105:                                      ; preds = %if.end.104
  %110 = load i32, i32* %count, align 4, !tbaa !5
  %dec106 = add nsw i32 %110, -1
  store i32 %dec106, i32* %count, align 4, !tbaa !5
  %cmp107 = icmp sgt i32 %dec106, 0
  br i1 %cmp107, label %do.body.75, label %do.end.109

do.end.109:                                       ; preds = %do.cond.105
  %111 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %112 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext110 = sext i32 %111 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %112, i64 %idx.ext110
  store i8* %add.ptr111, i8** %line, align 8, !tbaa !1
  %113 = load i8*, i8** %dest, align 8, !tbaa !1
  %114 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext112 = zext i32 %114 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %113, i64 %idx.ext112
  store i8* %add.ptr113, i8** %dest, align 8, !tbaa !1
  %115 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #2
  %116 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #2
  %117 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #2
  %119 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %g1) #2
  call void @llvm.lifetime.end(i64 1, i8* %f1) #2
  call void @llvm.lifetime.end(i64 1, i8* %e1) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %a1) #2
  call void @llvm.lifetime.end(i64 1, i8* %g0) #2
  call void @llvm.lifetime.end(i64 1, i8* %f0) #2
  call void @llvm.lifetime.end(i64 1, i8* %e0) #2
  call void @llvm.lifetime.end(i64 1, i8* %d0) #2
  call void @llvm.lifetime.end(i64 1, i8* %c0) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  call void @llvm.lifetime.end(i64 1, i8* %a0) #2
  br label %if.end.379

if.else.114:                                      ; preds = %do.end.26
  %120 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp115 = icmp ne i64 %120, -1
  br i1 %cmp115, label %if.then.117, label %if.end.378

if.then.117:                                      ; preds = %if.else.114
  call void @llvm.lifetime.start(i64 1, i8* %a1118) #2
  %121 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr119 = lshr i64 %121, 24
  %shr120 = lshr i64 %shr119, 24
  %conv121 = trunc i64 %shr120 to i8
  store i8 %conv121, i8* %a1118, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1122) #2
  %122 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr123 = lshr i64 %122, 24
  %shr124 = lshr i64 %shr123, 16
  %conv125 = trunc i64 %shr124 to i8
  store i8 %conv125, i8* %b1122, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c1126) #2
  %123 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr127 = lshr i64 %123, 16
  %shr128 = lshr i64 %shr127, 16
  %conv129 = trunc i64 %shr128 to i8
  store i8 %conv129, i8* %c1126, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d1130) #2
  %124 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv131 = trunc i64 %124 to i32
  %shr132 = lshr i32 %conv131, 24
  %conv133 = trunc i32 %shr132 to i8
  store i8 %conv133, i8* %d1130, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e1134) #2
  %125 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv135 = trunc i64 %125 to i32
  %shr136 = lshr i32 %conv135, 16
  %conv137 = trunc i32 %shr136 to i8
  store i8 %conv137, i8* %e1134, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f1138) #2
  %126 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv139 = trunc i64 %126 to i32
  %shr140 = lshr i32 %conv139, 8
  %conv141 = trunc i32 %shr140 to i8
  store i8 %conv141, i8* %f1138, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g1142) #2
  %127 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv143 = trunc i64 %127 to i8
  store i8 %conv143, i8* %g1142, align 1, !tbaa !9
  %128 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #2
  %129 = load i32, i32* %first_bit, align 4, !tbaa !5
  %shl = shl i32 %129, 1
  store i32 %shl, i32* %first_mask, align 4, !tbaa !5
  %130 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #2
  %131 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #2
  %132 = load i32, i32* %sbit, align 4, !tbaa !5
  %133 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add144 = add nsw i32 %132, %133
  %cmp145 = icmp sgt i32 %add144, 8
  br i1 %cmp145, label %if.then.147, label %if.else.150

if.then.147:                                      ; preds = %if.then.117
  %134 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub148 = sub nsw i32 %134, 1
  store i32 %sub148, i32* %first_mask, align 4, !tbaa !5
  %135 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub149 = sub nsw i32 8, %135
  store i32 %sub149, i32* %first_count, align 4, !tbaa !5
  br label %if.end.153

if.else.150:                                      ; preds = %if.then.117
  %136 = load i32, i32* %first_mask, align 4, !tbaa !5
  %137 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shr151 = ashr i32 %136, %137
  %138 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub152 = sub nsw i32 %138, %shr151
  store i32 %sub152, i32* %first_mask, align 4, !tbaa !5
  %139 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %139, i32* %first_count, align 4, !tbaa !5
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.147
  %140 = load i32, i32* %first_count, align 4, !tbaa !5
  %mul154 = mul nsw i32 %140, 7
  store i32 %mul154, i32* %first_skip, align 4, !tbaa !5
  br label %while.cond.155

while.cond.155:                                   ; preds = %if.end.372, %if.end.153
  %141 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec156 = add nsw i32 %141, -1
  store i32 %dec156, i32* %h.addr, align 4, !tbaa !5
  %cmp157 = icmp sgt i32 %141, 0
  br i1 %cmp157, label %while.body.159, label %while.end.377

while.body.159:                                   ; preds = %while.cond.155
  %142 = bitcast i8** %pptr160 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #2
  %143 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %143, i8** %pptr160, align 8, !tbaa !1
  %144 = bitcast i8** %sptr161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %144) #2
  %145 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %145, i8** %sptr161, align 8, !tbaa !1
  %146 = bitcast i32* %sbyte162 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %146) #2
  %147 = load i8*, i8** %sptr161, align 8, !tbaa !1
  %incdec.ptr163 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr163, i8** %sptr161, align 8, !tbaa !1
  %148 = load i8, i8* %147, align 1, !tbaa !9
  %conv164 = zext i8 %148 to i32
  %149 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and165 = and i32 %conv164, %149
  store i32 %and165, i32* %sbyte162, align 4, !tbaa !5
  %150 = bitcast i32* %count166 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #2
  %151 = load i32, i32* %w.addr, align 4, !tbaa !5
  %152 = load i32, i32* %first_count, align 4, !tbaa !5
  %sub167 = sub nsw i32 %151, %152
  store i32 %sub167, i32* %count166, align 4, !tbaa !5
  %153 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %tobool168 = icmp ne i32 %153, 0
  br i1 %tobool168, label %if.then.169, label %if.else.189

if.then.169:                                      ; preds = %while.body.159
  %154 = bitcast i32* %bit170 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #2
  %155 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %155, i32* %bit170, align 4, !tbaa !5
  br label %do.body.171

do.body.171:                                      ; preds = %do.cond.184, %if.then.169
  %156 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %157 = load i32, i32* %bit170, align 4, !tbaa !5
  %and172 = and i32 %156, %157
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.182

if.then.174:                                      ; preds = %do.body.171
  %158 = load i8, i8* %a1118, align 1, !tbaa !9
  %159 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8, i8* %159, i64 0
  store i8 %158, i8* %arrayidx175, align 1, !tbaa !9
  %160 = load i8, i8* %b1122, align 1, !tbaa !9
  %161 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 %160, i8* %arrayidx176, align 1, !tbaa !9
  %162 = load i8, i8* %c1126, align 1, !tbaa !9
  %163 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %163, i64 2
  store i8 %162, i8* %arrayidx177, align 1, !tbaa !9
  %164 = load i8, i8* %d1130, align 1, !tbaa !9
  %165 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %165, i64 3
  store i8 %164, i8* %arrayidx178, align 1, !tbaa !9
  %166 = load i8, i8* %e1134, align 1, !tbaa !9
  %167 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %167, i64 4
  store i8 %166, i8* %arrayidx179, align 1, !tbaa !9
  %168 = load i8, i8* %f1138, align 1, !tbaa !9
  %169 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %169, i64 5
  store i8 %168, i8* %arrayidx180, align 1, !tbaa !9
  %170 = load i8, i8* %g1142, align 1, !tbaa !9
  %171 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %171, i64 6
  store i8 %170, i8* %arrayidx181, align 1, !tbaa !9
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.174, %do.body.171
  %172 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr183 = getelementptr inbounds i8, i8* %172, i64 7
  store i8* %add.ptr183, i8** %pptr160, align 8, !tbaa !1
  br label %do.cond.184

do.cond.184:                                      ; preds = %if.end.182
  %173 = load i32, i32* %bit170, align 4, !tbaa !5
  %shr185 = ashr i32 %173, 1
  store i32 %shr185, i32* %bit170, align 4, !tbaa !5
  %174 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and186 = and i32 %shr185, %174
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %do.body.171, label %do.end.188

do.end.188:                                       ; preds = %do.cond.184
  %175 = bitcast i32* %bit170 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #2
  br label %if.end.192

if.else.189:                                      ; preds = %while.body.159
  %176 = load i32, i32* %first_skip, align 4, !tbaa !5
  %177 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %idx.ext190 = sext i32 %176 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %177, i64 %idx.ext190
  store i8* %add.ptr191, i8** %pptr160, align 8, !tbaa !1
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %do.end.188
  br label %while.cond.193

while.cond.193:                                   ; preds = %if.end.343, %if.end.192
  %178 = load i32, i32* %count166, align 4, !tbaa !5
  %cmp194 = icmp sge i32 %178, 8
  br i1 %cmp194, label %while.body.196, label %while.end.346

while.body.196:                                   ; preds = %while.cond.193
  %179 = load i8*, i8** %sptr161, align 8, !tbaa !1
  %incdec.ptr197 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr197, i8** %sptr161, align 8, !tbaa !1
  %180 = load i8, i8* %179, align 1, !tbaa !9
  %conv198 = zext i8 %180 to i32
  store i32 %conv198, i32* %sbyte162, align 4, !tbaa !5
  %181 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and199 = and i32 %181, 240
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.267

if.then.201:                                      ; preds = %while.body.196
  %182 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and202 = and i32 %182, 128
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.212

if.then.204:                                      ; preds = %if.then.201
  %183 = load i8, i8* %a1118, align 1, !tbaa !9
  %184 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %184, i64 0
  store i8 %183, i8* %arrayidx205, align 1, !tbaa !9
  %185 = load i8, i8* %b1122, align 1, !tbaa !9
  %186 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i8, i8* %186, i64 1
  store i8 %185, i8* %arrayidx206, align 1, !tbaa !9
  %187 = load i8, i8* %c1126, align 1, !tbaa !9
  %188 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %188, i64 2
  store i8 %187, i8* %arrayidx207, align 1, !tbaa !9
  %189 = load i8, i8* %d1130, align 1, !tbaa !9
  %190 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %190, i64 3
  store i8 %189, i8* %arrayidx208, align 1, !tbaa !9
  %191 = load i8, i8* %e1134, align 1, !tbaa !9
  %192 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i8, i8* %192, i64 4
  store i8 %191, i8* %arrayidx209, align 1, !tbaa !9
  %193 = load i8, i8* %f1138, align 1, !tbaa !9
  %194 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i8, i8* %194, i64 5
  store i8 %193, i8* %arrayidx210, align 1, !tbaa !9
  %195 = load i8, i8* %g1142, align 1, !tbaa !9
  %196 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i8, i8* %196, i64 6
  store i8 %195, i8* %arrayidx211, align 1, !tbaa !9
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.204, %if.then.201
  %197 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and213 = and i32 %197, 64
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then.215, label %if.end.230

if.then.215:                                      ; preds = %if.end.212
  %198 = load i8, i8* %a1118, align 1, !tbaa !9
  %199 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr216 = getelementptr inbounds i8, i8* %199, i64 7
  %arrayidx217 = getelementptr inbounds i8, i8* %add.ptr216, i64 0
  store i8 %198, i8* %arrayidx217, align 1, !tbaa !9
  %200 = load i8, i8* %b1122, align 1, !tbaa !9
  %201 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr218 = getelementptr inbounds i8, i8* %201, i64 7
  %arrayidx219 = getelementptr inbounds i8, i8* %add.ptr218, i64 1
  store i8 %200, i8* %arrayidx219, align 1, !tbaa !9
  %202 = load i8, i8* %c1126, align 1, !tbaa !9
  %203 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr220 = getelementptr inbounds i8, i8* %203, i64 7
  %arrayidx221 = getelementptr inbounds i8, i8* %add.ptr220, i64 2
  store i8 %202, i8* %arrayidx221, align 1, !tbaa !9
  %204 = load i8, i8* %d1130, align 1, !tbaa !9
  %205 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr222 = getelementptr inbounds i8, i8* %205, i64 7
  %arrayidx223 = getelementptr inbounds i8, i8* %add.ptr222, i64 3
  store i8 %204, i8* %arrayidx223, align 1, !tbaa !9
  %206 = load i8, i8* %e1134, align 1, !tbaa !9
  %207 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr224 = getelementptr inbounds i8, i8* %207, i64 7
  %arrayidx225 = getelementptr inbounds i8, i8* %add.ptr224, i64 4
  store i8 %206, i8* %arrayidx225, align 1, !tbaa !9
  %208 = load i8, i8* %f1138, align 1, !tbaa !9
  %209 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr226 = getelementptr inbounds i8, i8* %209, i64 7
  %arrayidx227 = getelementptr inbounds i8, i8* %add.ptr226, i64 5
  store i8 %208, i8* %arrayidx227, align 1, !tbaa !9
  %210 = load i8, i8* %g1142, align 1, !tbaa !9
  %211 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr228 = getelementptr inbounds i8, i8* %211, i64 7
  %arrayidx229 = getelementptr inbounds i8, i8* %add.ptr228, i64 6
  store i8 %210, i8* %arrayidx229, align 1, !tbaa !9
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.215, %if.end.212
  %212 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and231 = and i32 %212, 32
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then.233, label %if.end.248

if.then.233:                                      ; preds = %if.end.230
  %213 = load i8, i8* %a1118, align 1, !tbaa !9
  %214 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr234 = getelementptr inbounds i8, i8* %214, i64 14
  %arrayidx235 = getelementptr inbounds i8, i8* %add.ptr234, i64 0
  store i8 %213, i8* %arrayidx235, align 1, !tbaa !9
  %215 = load i8, i8* %b1122, align 1, !tbaa !9
  %216 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr236 = getelementptr inbounds i8, i8* %216, i64 14
  %arrayidx237 = getelementptr inbounds i8, i8* %add.ptr236, i64 1
  store i8 %215, i8* %arrayidx237, align 1, !tbaa !9
  %217 = load i8, i8* %c1126, align 1, !tbaa !9
  %218 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr238 = getelementptr inbounds i8, i8* %218, i64 14
  %arrayidx239 = getelementptr inbounds i8, i8* %add.ptr238, i64 2
  store i8 %217, i8* %arrayidx239, align 1, !tbaa !9
  %219 = load i8, i8* %d1130, align 1, !tbaa !9
  %220 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr240 = getelementptr inbounds i8, i8* %220, i64 14
  %arrayidx241 = getelementptr inbounds i8, i8* %add.ptr240, i64 3
  store i8 %219, i8* %arrayidx241, align 1, !tbaa !9
  %221 = load i8, i8* %e1134, align 1, !tbaa !9
  %222 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr242 = getelementptr inbounds i8, i8* %222, i64 14
  %arrayidx243 = getelementptr inbounds i8, i8* %add.ptr242, i64 4
  store i8 %221, i8* %arrayidx243, align 1, !tbaa !9
  %223 = load i8, i8* %f1138, align 1, !tbaa !9
  %224 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr244 = getelementptr inbounds i8, i8* %224, i64 14
  %arrayidx245 = getelementptr inbounds i8, i8* %add.ptr244, i64 5
  store i8 %223, i8* %arrayidx245, align 1, !tbaa !9
  %225 = load i8, i8* %g1142, align 1, !tbaa !9
  %226 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr246 = getelementptr inbounds i8, i8* %226, i64 14
  %arrayidx247 = getelementptr inbounds i8, i8* %add.ptr246, i64 6
  store i8 %225, i8* %arrayidx247, align 1, !tbaa !9
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.233, %if.end.230
  %227 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and249 = and i32 %227, 16
  %tobool250 = icmp ne i32 %and249, 0
  br i1 %tobool250, label %if.then.251, label %if.end.266

if.then.251:                                      ; preds = %if.end.248
  %228 = load i8, i8* %a1118, align 1, !tbaa !9
  %229 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr252 = getelementptr inbounds i8, i8* %229, i64 21
  %arrayidx253 = getelementptr inbounds i8, i8* %add.ptr252, i64 0
  store i8 %228, i8* %arrayidx253, align 1, !tbaa !9
  %230 = load i8, i8* %b1122, align 1, !tbaa !9
  %231 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr254 = getelementptr inbounds i8, i8* %231, i64 21
  %arrayidx255 = getelementptr inbounds i8, i8* %add.ptr254, i64 1
  store i8 %230, i8* %arrayidx255, align 1, !tbaa !9
  %232 = load i8, i8* %c1126, align 1, !tbaa !9
  %233 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %233, i64 21
  %arrayidx257 = getelementptr inbounds i8, i8* %add.ptr256, i64 2
  store i8 %232, i8* %arrayidx257, align 1, !tbaa !9
  %234 = load i8, i8* %d1130, align 1, !tbaa !9
  %235 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr258 = getelementptr inbounds i8, i8* %235, i64 21
  %arrayidx259 = getelementptr inbounds i8, i8* %add.ptr258, i64 3
  store i8 %234, i8* %arrayidx259, align 1, !tbaa !9
  %236 = load i8, i8* %e1134, align 1, !tbaa !9
  %237 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr260 = getelementptr inbounds i8, i8* %237, i64 21
  %arrayidx261 = getelementptr inbounds i8, i8* %add.ptr260, i64 4
  store i8 %236, i8* %arrayidx261, align 1, !tbaa !9
  %238 = load i8, i8* %f1138, align 1, !tbaa !9
  %239 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr262 = getelementptr inbounds i8, i8* %239, i64 21
  %arrayidx263 = getelementptr inbounds i8, i8* %add.ptr262, i64 5
  store i8 %238, i8* %arrayidx263, align 1, !tbaa !9
  %240 = load i8, i8* %g1142, align 1, !tbaa !9
  %241 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds i8, i8* %241, i64 21
  %arrayidx265 = getelementptr inbounds i8, i8* %add.ptr264, i64 6
  store i8 %240, i8* %arrayidx265, align 1, !tbaa !9
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.251, %if.end.248
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %while.body.196
  %242 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and268 = and i32 %242, 15
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %if.then.270, label %if.end.343

if.then.270:                                      ; preds = %if.end.267
  %243 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and271 = and i32 %243, 8
  %tobool272 = icmp ne i32 %and271, 0
  br i1 %tobool272, label %if.then.273, label %if.end.288

if.then.273:                                      ; preds = %if.then.270
  %244 = load i8, i8* %a1118, align 1, !tbaa !9
  %245 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr274 = getelementptr inbounds i8, i8* %245, i64 28
  %arrayidx275 = getelementptr inbounds i8, i8* %add.ptr274, i64 0
  store i8 %244, i8* %arrayidx275, align 1, !tbaa !9
  %246 = load i8, i8* %b1122, align 1, !tbaa !9
  %247 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr276 = getelementptr inbounds i8, i8* %247, i64 28
  %arrayidx277 = getelementptr inbounds i8, i8* %add.ptr276, i64 1
  store i8 %246, i8* %arrayidx277, align 1, !tbaa !9
  %248 = load i8, i8* %c1126, align 1, !tbaa !9
  %249 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i8, i8* %249, i64 28
  %arrayidx279 = getelementptr inbounds i8, i8* %add.ptr278, i64 2
  store i8 %248, i8* %arrayidx279, align 1, !tbaa !9
  %250 = load i8, i8* %d1130, align 1, !tbaa !9
  %251 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr280 = getelementptr inbounds i8, i8* %251, i64 28
  %arrayidx281 = getelementptr inbounds i8, i8* %add.ptr280, i64 3
  store i8 %250, i8* %arrayidx281, align 1, !tbaa !9
  %252 = load i8, i8* %e1134, align 1, !tbaa !9
  %253 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr282 = getelementptr inbounds i8, i8* %253, i64 28
  %arrayidx283 = getelementptr inbounds i8, i8* %add.ptr282, i64 4
  store i8 %252, i8* %arrayidx283, align 1, !tbaa !9
  %254 = load i8, i8* %f1138, align 1, !tbaa !9
  %255 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr284 = getelementptr inbounds i8, i8* %255, i64 28
  %arrayidx285 = getelementptr inbounds i8, i8* %add.ptr284, i64 5
  store i8 %254, i8* %arrayidx285, align 1, !tbaa !9
  %256 = load i8, i8* %g1142, align 1, !tbaa !9
  %257 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr286 = getelementptr inbounds i8, i8* %257, i64 28
  %arrayidx287 = getelementptr inbounds i8, i8* %add.ptr286, i64 6
  store i8 %256, i8* %arrayidx287, align 1, !tbaa !9
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.273, %if.then.270
  %258 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and289 = and i32 %258, 4
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %if.then.291, label %if.end.306

if.then.291:                                      ; preds = %if.end.288
  %259 = load i8, i8* %a1118, align 1, !tbaa !9
  %260 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr292 = getelementptr inbounds i8, i8* %260, i64 35
  %arrayidx293 = getelementptr inbounds i8, i8* %add.ptr292, i64 0
  store i8 %259, i8* %arrayidx293, align 1, !tbaa !9
  %261 = load i8, i8* %b1122, align 1, !tbaa !9
  %262 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr294 = getelementptr inbounds i8, i8* %262, i64 35
  %arrayidx295 = getelementptr inbounds i8, i8* %add.ptr294, i64 1
  store i8 %261, i8* %arrayidx295, align 1, !tbaa !9
  %263 = load i8, i8* %c1126, align 1, !tbaa !9
  %264 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr296 = getelementptr inbounds i8, i8* %264, i64 35
  %arrayidx297 = getelementptr inbounds i8, i8* %add.ptr296, i64 2
  store i8 %263, i8* %arrayidx297, align 1, !tbaa !9
  %265 = load i8, i8* %d1130, align 1, !tbaa !9
  %266 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr298 = getelementptr inbounds i8, i8* %266, i64 35
  %arrayidx299 = getelementptr inbounds i8, i8* %add.ptr298, i64 3
  store i8 %265, i8* %arrayidx299, align 1, !tbaa !9
  %267 = load i8, i8* %e1134, align 1, !tbaa !9
  %268 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr300 = getelementptr inbounds i8, i8* %268, i64 35
  %arrayidx301 = getelementptr inbounds i8, i8* %add.ptr300, i64 4
  store i8 %267, i8* %arrayidx301, align 1, !tbaa !9
  %269 = load i8, i8* %f1138, align 1, !tbaa !9
  %270 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr302 = getelementptr inbounds i8, i8* %270, i64 35
  %arrayidx303 = getelementptr inbounds i8, i8* %add.ptr302, i64 5
  store i8 %269, i8* %arrayidx303, align 1, !tbaa !9
  %271 = load i8, i8* %g1142, align 1, !tbaa !9
  %272 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr304 = getelementptr inbounds i8, i8* %272, i64 35
  %arrayidx305 = getelementptr inbounds i8, i8* %add.ptr304, i64 6
  store i8 %271, i8* %arrayidx305, align 1, !tbaa !9
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.291, %if.end.288
  %273 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and307 = and i32 %273, 2
  %tobool308 = icmp ne i32 %and307, 0
  br i1 %tobool308, label %if.then.309, label %if.end.324

if.then.309:                                      ; preds = %if.end.306
  %274 = load i8, i8* %a1118, align 1, !tbaa !9
  %275 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr310 = getelementptr inbounds i8, i8* %275, i64 42
  %arrayidx311 = getelementptr inbounds i8, i8* %add.ptr310, i64 0
  store i8 %274, i8* %arrayidx311, align 1, !tbaa !9
  %276 = load i8, i8* %b1122, align 1, !tbaa !9
  %277 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr312 = getelementptr inbounds i8, i8* %277, i64 42
  %arrayidx313 = getelementptr inbounds i8, i8* %add.ptr312, i64 1
  store i8 %276, i8* %arrayidx313, align 1, !tbaa !9
  %278 = load i8, i8* %c1126, align 1, !tbaa !9
  %279 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr314 = getelementptr inbounds i8, i8* %279, i64 42
  %arrayidx315 = getelementptr inbounds i8, i8* %add.ptr314, i64 2
  store i8 %278, i8* %arrayidx315, align 1, !tbaa !9
  %280 = load i8, i8* %d1130, align 1, !tbaa !9
  %281 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr316 = getelementptr inbounds i8, i8* %281, i64 42
  %arrayidx317 = getelementptr inbounds i8, i8* %add.ptr316, i64 3
  store i8 %280, i8* %arrayidx317, align 1, !tbaa !9
  %282 = load i8, i8* %e1134, align 1, !tbaa !9
  %283 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr318 = getelementptr inbounds i8, i8* %283, i64 42
  %arrayidx319 = getelementptr inbounds i8, i8* %add.ptr318, i64 4
  store i8 %282, i8* %arrayidx319, align 1, !tbaa !9
  %284 = load i8, i8* %f1138, align 1, !tbaa !9
  %285 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr320 = getelementptr inbounds i8, i8* %285, i64 42
  %arrayidx321 = getelementptr inbounds i8, i8* %add.ptr320, i64 5
  store i8 %284, i8* %arrayidx321, align 1, !tbaa !9
  %286 = load i8, i8* %g1142, align 1, !tbaa !9
  %287 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr322 = getelementptr inbounds i8, i8* %287, i64 42
  %arrayidx323 = getelementptr inbounds i8, i8* %add.ptr322, i64 6
  store i8 %286, i8* %arrayidx323, align 1, !tbaa !9
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.309, %if.end.306
  %288 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %and325 = and i32 %288, 1
  %tobool326 = icmp ne i32 %and325, 0
  br i1 %tobool326, label %if.then.327, label %if.end.342

if.then.327:                                      ; preds = %if.end.324
  %289 = load i8, i8* %a1118, align 1, !tbaa !9
  %290 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr328 = getelementptr inbounds i8, i8* %290, i64 49
  %arrayidx329 = getelementptr inbounds i8, i8* %add.ptr328, i64 0
  store i8 %289, i8* %arrayidx329, align 1, !tbaa !9
  %291 = load i8, i8* %b1122, align 1, !tbaa !9
  %292 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr330 = getelementptr inbounds i8, i8* %292, i64 49
  %arrayidx331 = getelementptr inbounds i8, i8* %add.ptr330, i64 1
  store i8 %291, i8* %arrayidx331, align 1, !tbaa !9
  %293 = load i8, i8* %c1126, align 1, !tbaa !9
  %294 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr332 = getelementptr inbounds i8, i8* %294, i64 49
  %arrayidx333 = getelementptr inbounds i8, i8* %add.ptr332, i64 2
  store i8 %293, i8* %arrayidx333, align 1, !tbaa !9
  %295 = load i8, i8* %d1130, align 1, !tbaa !9
  %296 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr334 = getelementptr inbounds i8, i8* %296, i64 49
  %arrayidx335 = getelementptr inbounds i8, i8* %add.ptr334, i64 3
  store i8 %295, i8* %arrayidx335, align 1, !tbaa !9
  %297 = load i8, i8* %e1134, align 1, !tbaa !9
  %298 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr336 = getelementptr inbounds i8, i8* %298, i64 49
  %arrayidx337 = getelementptr inbounds i8, i8* %add.ptr336, i64 4
  store i8 %297, i8* %arrayidx337, align 1, !tbaa !9
  %299 = load i8, i8* %f1138, align 1, !tbaa !9
  %300 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr338 = getelementptr inbounds i8, i8* %300, i64 49
  %arrayidx339 = getelementptr inbounds i8, i8* %add.ptr338, i64 5
  store i8 %299, i8* %arrayidx339, align 1, !tbaa !9
  %301 = load i8, i8* %g1142, align 1, !tbaa !9
  %302 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr340 = getelementptr inbounds i8, i8* %302, i64 49
  %arrayidx341 = getelementptr inbounds i8, i8* %add.ptr340, i64 6
  store i8 %301, i8* %arrayidx341, align 1, !tbaa !9
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.327, %if.end.324
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342, %if.end.267
  %303 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr344 = getelementptr inbounds i8, i8* %303, i64 56
  store i8* %add.ptr344, i8** %pptr160, align 8, !tbaa !1
  %304 = load i32, i32* %count166, align 4, !tbaa !5
  %sub345 = sub nsw i32 %304, 8
  store i32 %sub345, i32* %count166, align 4, !tbaa !5
  br label %while.cond.193

while.end.346:                                    ; preds = %while.cond.193
  %305 = load i32, i32* %count166, align 4, !tbaa !5
  %cmp347 = icmp sgt i32 %305, 0
  br i1 %cmp347, label %if.then.349, label %if.end.372

if.then.349:                                      ; preds = %while.end.346
  %306 = bitcast i32* %bit350 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %306) #2
  store i32 128, i32* %bit350, align 4, !tbaa !5
  %307 = load i8*, i8** %sptr161, align 8, !tbaa !1
  %incdec.ptr351 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr351, i8** %sptr161, align 8, !tbaa !1
  %308 = load i8, i8* %307, align 1, !tbaa !9
  %conv352 = zext i8 %308 to i32
  store i32 %conv352, i32* %sbyte162, align 4, !tbaa !5
  br label %do.body.353

do.body.353:                                      ; preds = %do.cond.367, %if.then.349
  %309 = load i32, i32* %sbyte162, align 4, !tbaa !5
  %310 = load i32, i32* %bit350, align 4, !tbaa !5
  %and354 = and i32 %309, %310
  %tobool355 = icmp ne i32 %and354, 0
  br i1 %tobool355, label %if.then.356, label %if.end.364

if.then.356:                                      ; preds = %do.body.353
  %311 = load i8, i8* %a1118, align 1, !tbaa !9
  %312 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx357 = getelementptr inbounds i8, i8* %312, i64 0
  store i8 %311, i8* %arrayidx357, align 1, !tbaa !9
  %313 = load i8, i8* %b1122, align 1, !tbaa !9
  %314 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds i8, i8* %314, i64 1
  store i8 %313, i8* %arrayidx358, align 1, !tbaa !9
  %315 = load i8, i8* %c1126, align 1, !tbaa !9
  %316 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx359 = getelementptr inbounds i8, i8* %316, i64 2
  store i8 %315, i8* %arrayidx359, align 1, !tbaa !9
  %317 = load i8, i8* %d1130, align 1, !tbaa !9
  %318 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds i8, i8* %318, i64 3
  store i8 %317, i8* %arrayidx360, align 1, !tbaa !9
  %319 = load i8, i8* %e1134, align 1, !tbaa !9
  %320 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx361 = getelementptr inbounds i8, i8* %320, i64 4
  store i8 %319, i8* %arrayidx361, align 1, !tbaa !9
  %321 = load i8, i8* %f1138, align 1, !tbaa !9
  %322 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds i8, i8* %322, i64 5
  store i8 %321, i8* %arrayidx362, align 1, !tbaa !9
  %323 = load i8, i8* %g1142, align 1, !tbaa !9
  %324 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %arrayidx363 = getelementptr inbounds i8, i8* %324, i64 6
  store i8 %323, i8* %arrayidx363, align 1, !tbaa !9
  br label %if.end.364

if.end.364:                                       ; preds = %if.then.356, %do.body.353
  %325 = load i8*, i8** %pptr160, align 8, !tbaa !1
  %add.ptr365 = getelementptr inbounds i8, i8* %325, i64 7
  store i8* %add.ptr365, i8** %pptr160, align 8, !tbaa !1
  %326 = load i32, i32* %bit350, align 4, !tbaa !5
  %shr366 = ashr i32 %326, 1
  store i32 %shr366, i32* %bit350, align 4, !tbaa !5
  br label %do.cond.367

do.cond.367:                                      ; preds = %if.end.364
  %327 = load i32, i32* %count166, align 4, !tbaa !5
  %dec368 = add nsw i32 %327, -1
  store i32 %dec368, i32* %count166, align 4, !tbaa !5
  %cmp369 = icmp sgt i32 %dec368, 0
  br i1 %cmp369, label %do.body.353, label %do.end.371

do.end.371:                                       ; preds = %do.cond.367
  %328 = bitcast i32* %bit350 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %328) #2
  br label %if.end.372

if.end.372:                                       ; preds = %do.end.371, %while.end.346
  %329 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %330 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext373 = sext i32 %329 to i64
  %add.ptr374 = getelementptr inbounds i8, i8* %330, i64 %idx.ext373
  store i8* %add.ptr374, i8** %line, align 8, !tbaa !1
  %331 = load i8*, i8** %dest, align 8, !tbaa !1
  %332 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext375 = zext i32 %332 to i64
  %add.ptr376 = getelementptr inbounds i8, i8* %331, i64 %idx.ext375
  store i8* %add.ptr376, i8** %dest, align 8, !tbaa !1
  %333 = bitcast i32* %count166 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %333) #2
  %334 = bitcast i32* %sbyte162 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %334) #2
  %335 = bitcast i8** %sptr161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %335) #2
  %336 = bitcast i8** %pptr160 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %336) #2
  br label %while.cond.155

while.end.377:                                    ; preds = %while.cond.155
  %337 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %337) #2
  %338 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %338) #2
  %339 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %339) #2
  call void @llvm.lifetime.end(i64 1, i8* %g1142) #2
  call void @llvm.lifetime.end(i64 1, i8* %f1138) #2
  call void @llvm.lifetime.end(i64 1, i8* %e1134) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1130) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1126) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1122) #2
  call void @llvm.lifetime.end(i64 1, i8* %a1118) #2
  br label %if.end.378

if.end.378:                                       ; preds = %while.end.377, %if.else.114
  br label %if.end.379

if.end.379:                                       ; preds = %if.end.378, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.379, %if.then.23
  %340 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %340) #2
  %341 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %341) #2
  %342 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %342) #2
  %343 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #2
  %344 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %344) #2
  %345 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %345) #2
  %346 = load i32, i32* %retval
  ret i32 %346
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true56_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %18 = load i32, i32* %width, align 4, !tbaa !10
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !10
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
  %25 = load i32, i32* %height, align 4, !tbaa !22
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !22
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
  %34 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul27 = mul nsw i32 %36, 7
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %35, i64 %idx.ext28
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !23
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %40, 7
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %39, i64 %idx.ext31
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %42, 7
  %43 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr29, i32 %38, i8* %add.ptr32, i32 %41, i32 %mul33, i32 %43) #5
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

declare i64 @gx_default_map_cmyk_color(%struct.gx_device_s*, i16*) #0

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
define internal i32 @mem56_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %base = alloca i8*, align 8
  %raster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
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
  %3 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %6 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %5, %6
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body.2
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add7 = add nsw i32 %12, %11
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
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %14, i32 0, i32 13
  %15 = load i32, i32* %width, align 4, !tbaa !10
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %16
  %cmp11 = icmp sgt i32 %13, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width13, align 4, !tbaa !10
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %18, %19
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.10
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %20 = load i32, i32* %h.addr, align 4, !tbaa !5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 14
  %22 = load i32, i32* %height, align 4, !tbaa !22
  %23 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %22, %23
  %cmp20 = icmp sgt i32 %20, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height22, align 4, !tbaa !22
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %25, %26
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
  %27 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %27, 0
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.28
  %28 = load i32, i32* %h.addr, align 4, !tbaa !5
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
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %30, i32 0, i32 52
  %31 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 %idxprom
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %32, i8** %base, align 8, !tbaa !1
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 44
  %34 = load i32, i32* %raster35, align 4, !tbaa !23
  store i32 %34, i32* %raster, align 4, !tbaa !5
  %35 = load i8*, i8** %base, align 8, !tbaa !1
  %36 = load i32, i32* %raster, align 4, !tbaa !5
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %37, 56
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %38, 56
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %mul, i32 %mul36, i32 %39, i32 1) #5
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %45 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 @mem_true56_fill_rectangle(%struct.gx_device_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45) #5
  %46 = load i8*, i8** %base, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %48, 56
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %49, 56
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %46, i32 %47, i32 %mul37, i32 %mul38, i32 %50, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.34, %if.then.31
  %51 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @mem56_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %row = alloca i8*, align 8
  %raster = alloca i32, align 4
  %store = alloca i32, align 4
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
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %store to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %6, %7
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %15, %14
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %17
  %18 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !10
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %21, %22
  %cmp10 = icmp sgt i32 %19, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width12, align 4, !tbaa !10
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %24, %25
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height, align 4, !tbaa !22
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %28, %29
  %cmp16 = icmp sgt i32 %26, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height18, align 4, !tbaa !22
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %31, %32
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %33, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %34 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %34, 0
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
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 52
  %37 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %38, i8** %row, align 8, !tbaa !1
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 44
  %40 = load i32, i32* %raster27, align 4, !tbaa !23
  store i32 %40, i32* %raster, align 4, !tbaa !5
  %41 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp28 = icmp ne i64 %41, -1
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end.26
  %42 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp29 = icmp ne i64 %42, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end.26
  %43 = phi i1 [ false, %do.end.26 ], [ %cmp29, %land.rhs ]
  %land.ext = zext i1 %43 to i32
  store i32 %land.ext, i32* %store, align 4, !tbaa !5
  %44 = load i8*, i8** %row, align 8, !tbaa !1
  %45 = load i32, i32* %raster, align 4, !tbaa !5
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %46, 56
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 %47, 56
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %49 = load i32, i32* %store, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %44, i32 %45, i32 %mul30, i32 %mul31, i32 %48, i32 %49) #5
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %52 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %53 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %54 = load i64, i64* %id.addr, align 8, !tbaa !7
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %56 = load i32, i32* %y.addr, align 4, !tbaa !5
  %57 = load i32, i32* %w.addr, align 4, !tbaa !5
  %58 = load i32, i32* %h.addr, align 4, !tbaa !5
  %59 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %60 = load i64, i64* %one.addr, align 8, !tbaa !7
  %call = call i32 @mem_true56_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #5
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul32 = mul nsw i32 %63, 56
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %64, 56
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %61, i32 %62, i32 %mul32, i32 %mul33, i32 %65, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.23
  %66 = bitcast i32* %store to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #2
  %68 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #2
  %69 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #2
  %70 = load i32, i32* %retval
  ret i32 %70
}

; Function Attrs: nounwind uwtable
define internal i32 @mem56_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %20 = load i32, i32* %width, align 4, !tbaa !10
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %20, %21
  %cmp10 = icmp sgt i32 %18, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width12, align 4, !tbaa !10
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
  %27 = load i32, i32* %height, align 4, !tbaa !22
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %27, %28
  %cmp16 = icmp sgt i32 %25, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height18, align 4, !tbaa !22
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
  %36 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %37, i8** %row, align 8, !tbaa !1
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 44
  %39 = load i32, i32* %raster27, align 4, !tbaa !23
  store i32 %39, i32* %raster, align 4, !tbaa !5
  %40 = load i8*, i8** %row, align 8, !tbaa !1
  %41 = load i32, i32* %raster, align 4, !tbaa !5
  %42 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul28 = mul nsw i32 %42, 56
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %43, 56
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %40, i32 %41, i32 %mul28, i32 %mul29, i32 %44, i32 1) #5
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %46, 7
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 %idx.ext31
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %49 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %49, 7
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %48, i64 %idx.ext34
  %50 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %51, 7
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr32, i32 %47, i8* %add.ptr35, i32 %50, i32 %mul36, i32 %52) #5
  %53 = load i8*, i8** %row, align 8, !tbaa !1
  %54 = load i32, i32* %raster, align 4, !tbaa !5
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %55, 56
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %56, 56
  %57 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %53, i32 %54, i32 %mul37, i32 %mul38, i32 %57, i32 0) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.26, %if.then.23
  %58 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = load i32, i32* %retval
  ret i32 %61
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
!9 = !{!3, !3, i64 0}
!10 = !{!11, !6, i64 832}
!11 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!12 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!13 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!11, !6, i64 836}
!23 = !{!24, !6, i64 1736}
!24 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !25, i64 2548, !2, i64 2576, !27, i64 2584, !28, i64 2600, !29, i64 2624, !30, i64 2656, !31, i64 2680, !32, i64 2720, !33, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!25 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!26 = !{!"float", !3, i64 0}
!27 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!28 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!29 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!30 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!31 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!32 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!33 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!34 = !{!24, !2, i64 2576}
!35 = !{!24, !8, i64 2680}
!36 = !{!24, !6, i64 2688}
!37 = !{!24, !6, i64 2692}
!38 = !{!24, !6, i64 2696}
!39 = !{!24, !6, i64 2700}
!40 = !{!24, !6, i64 2704}
!41 = !{!24, !6, i64 2708}
!42 = !{!24, !6, i64 2712}
