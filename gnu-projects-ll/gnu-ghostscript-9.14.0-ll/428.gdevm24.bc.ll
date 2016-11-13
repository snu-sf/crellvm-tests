; ModuleID = './gdevm24.bc'
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

@.str = private unnamed_addr constant [8 x i8] c"image24\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_true24_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true24_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true24_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true24_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @mem_true24_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_gray8_rgb24_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image24w\00", align 1
@mem_true24_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem24_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem24_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem24_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

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
define internal i32 @mem_true24_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bcnt = alloca i32, align 4
  %x3 = alloca i32, align 4
  %ww = alloca i32, align 4
  %rgbr = alloca i32, align 4
  %gbrg = alloca i32, align 4
  %brgb = alloca i32, align 4
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
  call void @llvm.lifetime.start(i64 1, i8* %r) #2
  %3 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %3, 16
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %r, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g) #2
  %4 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv1 = trunc i64 %4 to i32
  %shr2 = lshr i32 %conv1, 8
  %conv3 = trunc i32 %shr2 to i8
  store i8 %conv3, i8* %g, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %5 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv4 = trunc i64 %5 to i8
  store i8 %conv4, i8* %b, align 1, !tbaa !9
  %6 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  br label %do.body.6

do.body.6:                                        ; preds = %do.body.5
  %8 = load i32, i32* %x.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %8, %9
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %do.body.6
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %15 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add14 = add nsw i32 %15, %14
  store i32 %add14, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %do.body.6
  br label %do.cond.17

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !10
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %19
  %cmp20 = icmp sgt i32 %16, %sub
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.body.19
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width23, align 4, !tbaa !10
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %21, %22
  store i32 %sub24, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.body.19
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !22
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub29 = sub nsw i32 %25, %26
  %cmp30 = icmp sgt i32 %23, %sub29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %do.body.28
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height33, align 4, !tbaa !22
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub34 = sub nsw i32 %28, %29
  store i32 %sub34, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %do.body.28
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  br label %do.cond.38

do.cond.38:                                       ; preds = %do.end.37
  br label %do.end.39

do.end.39:                                        ; preds = %do.cond.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp43 = icmp sge i32 %30, 5
  br i1 %cmp43, label %if.then.45, label %if.else.160

if.then.45:                                       ; preds = %do.end.42
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp46 = icmp sle i32 %31, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.49:                                        ; preds = %if.then.45
  br label %do.body.50

do.body.50:                                       ; preds = %if.end.49
  br label %do.cond.51

do.cond.51:                                       ; preds = %do.body.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 44
  %33 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %33, i32* %draster, align 4, !tbaa !5
  %34 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 52
  %36 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %38, 3
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %39 = load i8, i8* %r, align 1, !tbaa !9
  %conv53 = zext i8 %39 to i32
  %40 = load i8, i8* %g, align 1, !tbaa !9
  %conv54 = zext i8 %40 to i32
  %cmp55 = icmp eq i32 %conv53, %conv54
  br i1 %cmp55, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.52
  %41 = load i8, i8* %r, align 1, !tbaa !9
  %conv57 = zext i8 %41 to i32
  %42 = load i8, i8* %b, align 1, !tbaa !9
  %conv58 = zext i8 %42 to i32
  %cmp59 = icmp eq i32 %conv57, %conv58
  br i1 %cmp59, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %land.lhs.true
  %43 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul62 = mul nsw i32 %44, 3
  store i32 %mul62, i32* %bcnt, align 4, !tbaa !5
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.61
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.body.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.65
  %45 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %45, 0
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load i8*, i8** %dest, align 8, !tbaa !1
  %47 = load i8, i8* %r, align 1, !tbaa !9
  %conv68 = zext i8 %47 to i32
  %48 = load i32, i32* %bcnt, align 4, !tbaa !5
  %conv69 = sext i32 %48 to i64
  %call = call i8* @memset(i8* %46, i32 %conv68, i64 %conv69) #4
  %49 = load i8*, i8** %dest, align 8, !tbaa !1
  %50 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext70 = zext i32 %50 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %49, i64 %idx.ext70
  store i8* %add.ptr71, i8** %dest, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  br label %if.end.159

if.else:                                          ; preds = %land.lhs.true, %do.end.52
  %52 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub72 = sub nsw i32 0, %53
  %and = and i32 %sub72, 3
  store i32 %and, i32* %x3, align 4, !tbaa !5
  %54 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i32, i32* %w.addr, align 4, !tbaa !5
  %56 = load i32, i32* %x3, align 4, !tbaa !5
  %sub73 = sub nsw i32 %55, %56
  store i32 %sub73, i32* %ww, align 4, !tbaa !5
  %57 = bitcast i32* %rgbr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = bitcast i32* %gbrg to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = bitcast i32* %brgb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 54
  %rgb = getelementptr inbounds %struct._c24, %struct._c24* %color24, i32 0, i32 0
  %61 = load i64, i64* %rgb, align 8, !tbaa !35
  %62 = load i64, i64* %color.addr, align 8, !tbaa !7
  %cmp74 = icmp eq i64 %61, %62
  br i1 %cmp74, label %if.then.76, label %if.else.83

if.then.76:                                       ; preds = %if.else
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color2477 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %63, i32 0, i32 54
  %rgbr78 = getelementptr inbounds %struct._c24, %struct._c24* %color2477, i32 0, i32 1
  %64 = load i32, i32* %rgbr78, align 4, !tbaa !36
  store i32 %64, i32* %rgbr, align 4, !tbaa !5
  %65 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color2479 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %65, i32 0, i32 54
  %gbrg80 = getelementptr inbounds %struct._c24, %struct._c24* %color2479, i32 0, i32 2
  %66 = load i32, i32* %gbrg80, align 4, !tbaa !37
  store i32 %66, i32* %gbrg, align 4, !tbaa !5
  %67 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color2481 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %67, i32 0, i32 54
  %brgb82 = getelementptr inbounds %struct._c24, %struct._c24* %color2481, i32 0, i32 3
  %68 = load i32, i32* %brgb82, align 4, !tbaa !38
  store i32 %68, i32* %brgb, align 4, !tbaa !5
  br label %if.end.111

if.else.83:                                       ; preds = %if.else
  br label %do.body.84

do.body.84:                                       ; preds = %if.else.83
  br label %do.cond.85

do.cond.85:                                       ; preds = %do.body.84
  br label %do.end.86

do.end.86:                                        ; preds = %do.cond.85
  %69 = load i8, i8* %r, align 1, !tbaa !9
  %conv87 = zext i8 %69 to i32
  %shl = shl i32 %conv87, 24
  %70 = load i8, i8* %b, align 1, !tbaa !9
  %conv88 = zext i8 %70 to i32
  %shl89 = shl i32 %conv88, 16
  %or90 = or i32 %shl, %shl89
  %71 = load i8, i8* %g, align 1, !tbaa !9
  %conv91 = zext i8 %71 to i16
  %conv92 = zext i16 %conv91 to i32
  %shl93 = shl i32 %conv92, 8
  %or94 = or i32 %or90, %shl93
  %72 = load i8, i8* %r, align 1, !tbaa !9
  %conv95 = zext i8 %72 to i32
  %or96 = or i32 %or94, %conv95
  store i32 %or96, i32* %rgbr, align 4, !tbaa !5
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color2497 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 54
  %rgbr98 = getelementptr inbounds %struct._c24, %struct._c24* %color2497, i32 0, i32 1
  store i32 %or96, i32* %rgbr98, align 4, !tbaa !36
  %74 = load i32, i32* %rgbr, align 4, !tbaa !5
  %shl99 = shl i32 %74, 8
  %75 = load i8, i8* %b, align 1, !tbaa !9
  %conv100 = zext i8 %75 to i32
  %or101 = or i32 %shl99, %conv100
  store i32 %or101, i32* %brgb, align 4, !tbaa !5
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color24102 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 54
  %brgb103 = getelementptr inbounds %struct._c24, %struct._c24* %color24102, i32 0, i32 3
  store i32 %or101, i32* %brgb103, align 4, !tbaa !38
  %77 = load i32, i32* %brgb, align 4, !tbaa !5
  %shl104 = shl i32 %77, 8
  %78 = load i8, i8* %g, align 1, !tbaa !9
  %conv105 = zext i8 %78 to i32
  %or106 = or i32 %shl104, %conv105
  store i32 %or106, i32* %gbrg, align 4, !tbaa !5
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color24107 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 54
  %gbrg108 = getelementptr inbounds %struct._c24, %struct._c24* %color24107, i32 0, i32 2
  store i32 %or106, i32* %gbrg108, align 4, !tbaa !37
  %80 = load i64, i64* %color.addr, align 8, !tbaa !7
  %81 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color24109 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %81, i32 0, i32 54
  %rgb110 = getelementptr inbounds %struct._c24, %struct._c24* %color24109, i32 0, i32 0
  store i64 %80, i64* %rgb110, align 8, !tbaa !35
  br label %if.end.111

if.end.111:                                       ; preds = %do.end.86, %if.then.76
  br label %do.body.112

do.body.112:                                      ; preds = %if.end.111
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.body.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  br label %while.cond.115

while.cond.115:                                   ; preds = %sw.epilog.155, %do.end.114
  %82 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec116 = add nsw i32 %82, -1
  store i32 %dec116, i32* %h.addr, align 4, !tbaa !5
  %cmp117 = icmp sgt i32 %82, 0
  br i1 %cmp117, label %while.body.119, label %while.end.158

while.body.119:                                   ; preds = %while.cond.115
  %83 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %83) #2
  %84 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %84, i8** %pptr, align 8, !tbaa !1
  %85 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %85) #2
  %86 = load i32, i32* %ww, align 4, !tbaa !5
  store i32 %86, i32* %w1, align 4, !tbaa !5
  %87 = load i32, i32* %x3, align 4, !tbaa !5
  switch i32 %87, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.124
    i32 3, label %sw.bb.129
    i32 0, label %sw.bb.134
  ]

sw.bb:                                            ; preds = %while.body.119
  %88 = load i8, i8* %r, align 1, !tbaa !9
  %89 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 %88, i8* %arrayidx120, align 1, !tbaa !9
  %90 = load i8, i8* %g, align 1, !tbaa !9
  %91 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %90, i8* %arrayidx121, align 1, !tbaa !9
  %92 = load i8, i8* %b, align 1, !tbaa !9
  %93 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 %92, i8* %arrayidx122, align 1, !tbaa !9
  %94 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr123 = getelementptr inbounds i8, i8* %94, i64 3
  store i8* %add.ptr123, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.124:                                        ; preds = %while.body.119
  %95 = load i8, i8* %r, align 1, !tbaa !9
  %96 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %95, i8* %arrayidx125, align 1, !tbaa !9
  %97 = load i8, i8* %g, align 1, !tbaa !9
  %98 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %98, i64 1
  store i8 %97, i8* %arrayidx126, align 1, !tbaa !9
  %99 = load i32, i32* %brgb, align 4, !tbaa !5
  %100 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr127 = getelementptr inbounds i8, i8* %100, i64 2
  %101 = bitcast i8* %add.ptr127 to i32*
  store i32 %99, i32* %101, align 4, !tbaa !5
  %102 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr128 = getelementptr inbounds i8, i8* %102, i64 6
  store i8* %add.ptr128, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.129:                                        ; preds = %while.body.119
  %103 = load i8, i8* %r, align 1, !tbaa !9
  %104 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 %103, i8* %arrayidx130, align 1, !tbaa !9
  %105 = load i32, i32* %gbrg, align 4, !tbaa !5
  %106 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr131 = getelementptr inbounds i8, i8* %106, i64 1
  %107 = bitcast i8* %add.ptr131 to i32*
  store i32 %105, i32* %107, align 4, !tbaa !5
  %108 = load i32, i32* %brgb, align 4, !tbaa !5
  %109 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr132 = getelementptr inbounds i8, i8* %109, i64 5
  %110 = bitcast i8* %add.ptr132 to i32*
  store i32 %108, i32* %110, align 4, !tbaa !5
  %111 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr133 = getelementptr inbounds i8, i8* %111, i64 9
  store i8* %add.ptr133, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.134:                                        ; preds = %while.body.119
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.134, %while.body.119, %sw.bb.129, %sw.bb.124, %sw.bb
  br label %while.cond.135

while.cond.135:                                   ; preds = %while.body.138, %sw.epilog
  %112 = load i32, i32* %w1, align 4, !tbaa !5
  %cmp136 = icmp sge i32 %112, 4
  br i1 %cmp136, label %while.body.138, label %while.end.143

while.body.138:                                   ; preds = %while.cond.135
  %113 = load i32, i32* %rgbr, align 4, !tbaa !5
  %114 = load i8*, i8** %pptr, align 8, !tbaa !1
  %115 = bitcast i8* %114 to i32*
  store i32 %113, i32* %115, align 4, !tbaa !5
  %116 = load i32, i32* %gbrg, align 4, !tbaa !5
  %117 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr139 = getelementptr inbounds i8, i8* %117, i64 4
  %118 = bitcast i8* %add.ptr139 to i32*
  store i32 %116, i32* %118, align 4, !tbaa !5
  %119 = load i32, i32* %brgb, align 4, !tbaa !5
  %120 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds i8, i8* %120, i64 8
  %121 = bitcast i8* %add.ptr140 to i32*
  store i32 %119, i32* %121, align 4, !tbaa !5
  %122 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr141 = getelementptr inbounds i8, i8* %122, i64 12
  store i8* %add.ptr141, i8** %pptr, align 8, !tbaa !1
  %123 = load i32, i32* %w1, align 4, !tbaa !5
  %sub142 = sub nsw i32 %123, 4
  store i32 %sub142, i32* %w1, align 4, !tbaa !5
  br label %while.cond.135

while.end.143:                                    ; preds = %while.cond.135
  %124 = load i32, i32* %w1, align 4, !tbaa !5
  switch i32 %124, label %sw.epilog.155 [
    i32 1, label %sw.bb.144
    i32 2, label %sw.bb.148
    i32 3, label %sw.bb.151
    i32 0, label %sw.bb.154
  ]

sw.bb.144:                                        ; preds = %while.end.143
  %125 = load i8, i8* %r, align 1, !tbaa !9
  %126 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx145 = getelementptr inbounds i8, i8* %126, i64 0
  store i8 %125, i8* %arrayidx145, align 1, !tbaa !9
  %127 = load i8, i8* %g, align 1, !tbaa !9
  %128 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %127, i8* %arrayidx146, align 1, !tbaa !9
  %129 = load i8, i8* %b, align 1, !tbaa !9
  %130 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 %129, i8* %arrayidx147, align 1, !tbaa !9
  br label %sw.epilog.155

sw.bb.148:                                        ; preds = %while.end.143
  %131 = load i32, i32* %rgbr, align 4, !tbaa !5
  %132 = load i8*, i8** %pptr, align 8, !tbaa !1
  %133 = bitcast i8* %132 to i32*
  store i32 %131, i32* %133, align 4, !tbaa !5
  %134 = load i8, i8* %g, align 1, !tbaa !9
  %135 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i8, i8* %135, i64 4
  store i8 %134, i8* %arrayidx149, align 1, !tbaa !9
  %136 = load i8, i8* %b, align 1, !tbaa !9
  %137 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %137, i64 5
  store i8 %136, i8* %arrayidx150, align 1, !tbaa !9
  br label %sw.epilog.155

sw.bb.151:                                        ; preds = %while.end.143
  %138 = load i32, i32* %rgbr, align 4, !tbaa !5
  %139 = load i8*, i8** %pptr, align 8, !tbaa !1
  %140 = bitcast i8* %139 to i32*
  store i32 %138, i32* %140, align 4, !tbaa !5
  %141 = load i32, i32* %gbrg, align 4, !tbaa !5
  %142 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr152 = getelementptr inbounds i8, i8* %142, i64 4
  %143 = bitcast i8* %add.ptr152 to i32*
  store i32 %141, i32* %143, align 4, !tbaa !5
  %144 = load i8, i8* %b, align 1, !tbaa !9
  %145 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %145, i64 8
  store i8 %144, i8* %arrayidx153, align 1, !tbaa !9
  br label %sw.epilog.155

sw.bb.154:                                        ; preds = %while.end.143
  br label %sw.epilog.155

sw.epilog.155:                                    ; preds = %sw.bb.154, %while.end.143, %sw.bb.151, %sw.bb.148, %sw.bb.144
  %146 = load i8*, i8** %dest, align 8, !tbaa !1
  %147 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext156 = zext i32 %147 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %146, i64 %idx.ext156
  store i8* %add.ptr157, i8** %dest, align 8, !tbaa !1
  %148 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #2
  br label %while.cond.115

while.end.158:                                    ; preds = %while.cond.115
  %150 = bitcast i32* %brgb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #2
  %151 = bitcast i32* %gbrg to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #2
  %152 = bitcast i32* %rgbr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #2
  %153 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #2
  %154 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  br label %if.end.159

if.end.159:                                       ; preds = %while.end.158, %while.end
  br label %if.end.238

if.else.160:                                      ; preds = %do.end.42
  %155 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp161 = icmp sgt i32 %155, 0
  br i1 %cmp161, label %if.then.163, label %if.end.237

if.then.163:                                      ; preds = %if.else.160
  br label %do.body.164

do.body.164:                                      ; preds = %if.then.163
  br label %do.cond.165

do.cond.165:                                      ; preds = %do.body.164
  br label %do.end.166

do.end.166:                                       ; preds = %do.cond.165
  %156 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster167 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %156, i32 0, i32 44
  %157 = load i32, i32* %raster167, align 4, !tbaa !23
  store i32 %157, i32* %draster, align 4, !tbaa !5
  %158 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom168 = sext i32 %158 to i64
  %159 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs169 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %159, i32 0, i32 52
  %160 = load i8**, i8*** %line_ptrs169, align 8, !tbaa !34
  %arrayidx170 = getelementptr inbounds i8*, i8** %160, i64 %idxprom168
  %161 = load i8*, i8** %arrayidx170, align 8, !tbaa !1
  %162 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul171 = mul nsw i32 %162, 3
  %idx.ext172 = sext i32 %mul171 to i64
  %add.ptr173 = getelementptr inbounds i8, i8* %161, i64 %idx.ext172
  store i8* %add.ptr173, i8** %dest, align 8, !tbaa !1
  %163 = load i32, i32* %w.addr, align 4, !tbaa !5
  switch i32 %163, label %sw.default [
    i32 4, label %sw.bb.174
    i32 3, label %sw.bb.193
    i32 2, label %sw.bb.210
    i32 1, label %sw.bb.224
    i32 0, label %sw.bb.235
  ]

sw.bb.174:                                        ; preds = %do.end.166
  br label %do.body.175

do.body.175:                                      ; preds = %do.cond.190, %sw.bb.174
  %164 = load i8, i8* %r, align 1, !tbaa !9
  %165 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds i8, i8* %165, i64 0
  store i8 %164, i8* %arrayidx176, align 1, !tbaa !9
  %166 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds i8, i8* %166, i64 3
  store i8 %164, i8* %arrayidx177, align 1, !tbaa !9
  %167 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %167, i64 6
  store i8 %164, i8* %arrayidx178, align 1, !tbaa !9
  %168 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %168, i64 9
  store i8 %164, i8* %arrayidx179, align 1, !tbaa !9
  %169 = load i8, i8* %g, align 1, !tbaa !9
  %170 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %170, i64 1
  store i8 %169, i8* %arrayidx180, align 1, !tbaa !9
  %171 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %171, i64 4
  store i8 %169, i8* %arrayidx181, align 1, !tbaa !9
  %172 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %172, i64 7
  store i8 %169, i8* %arrayidx182, align 1, !tbaa !9
  %173 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %173, i64 10
  store i8 %169, i8* %arrayidx183, align 1, !tbaa !9
  %174 = load i8, i8* %b, align 1, !tbaa !9
  %175 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %175, i64 2
  store i8 %174, i8* %arrayidx184, align 1, !tbaa !9
  %176 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %176, i64 5
  store i8 %174, i8* %arrayidx185, align 1, !tbaa !9
  %177 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %177, i64 8
  store i8 %174, i8* %arrayidx186, align 1, !tbaa !9
  %178 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %178, i64 11
  store i8 %174, i8* %arrayidx187, align 1, !tbaa !9
  %179 = load i8*, i8** %dest, align 8, !tbaa !1
  %180 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext188 = zext i32 %180 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %179, i64 %idx.ext188
  store i8* %add.ptr189, i8** %dest, align 8, !tbaa !1
  br label %do.cond.190

do.cond.190:                                      ; preds = %do.body.175
  %181 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec191 = add nsw i32 %181, -1
  store i32 %dec191, i32* %h.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec191, 0
  br i1 %tobool, label %do.body.175, label %do.end.192

do.end.192:                                       ; preds = %do.cond.190
  br label %sw.epilog.236

sw.bb.193:                                        ; preds = %do.end.166
  br label %do.body.194

do.body.194:                                      ; preds = %do.cond.206, %sw.bb.193
  %182 = load i8, i8* %r, align 1, !tbaa !9
  %183 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %183, i64 0
  store i8 %182, i8* %arrayidx195, align 1, !tbaa !9
  %184 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %184, i64 3
  store i8 %182, i8* %arrayidx196, align 1, !tbaa !9
  %185 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %185, i64 6
  store i8 %182, i8* %arrayidx197, align 1, !tbaa !9
  %186 = load i8, i8* %g, align 1, !tbaa !9
  %187 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i8, i8* %187, i64 1
  store i8 %186, i8* %arrayidx198, align 1, !tbaa !9
  %188 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %188, i64 4
  store i8 %186, i8* %arrayidx199, align 1, !tbaa !9
  %189 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %189, i64 7
  store i8 %186, i8* %arrayidx200, align 1, !tbaa !9
  %190 = load i8, i8* %b, align 1, !tbaa !9
  %191 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i8, i8* %191, i64 2
  store i8 %190, i8* %arrayidx201, align 1, !tbaa !9
  %192 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %192, i64 5
  store i8 %190, i8* %arrayidx202, align 1, !tbaa !9
  %193 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %193, i64 8
  store i8 %190, i8* %arrayidx203, align 1, !tbaa !9
  %194 = load i8*, i8** %dest, align 8, !tbaa !1
  %195 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext204 = zext i32 %195 to i64
  %add.ptr205 = getelementptr inbounds i8, i8* %194, i64 %idx.ext204
  store i8* %add.ptr205, i8** %dest, align 8, !tbaa !1
  br label %do.cond.206

do.cond.206:                                      ; preds = %do.body.194
  %196 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec207 = add nsw i32 %196, -1
  store i32 %dec207, i32* %h.addr, align 4, !tbaa !5
  %tobool208 = icmp ne i32 %dec207, 0
  br i1 %tobool208, label %do.body.194, label %do.end.209

do.end.209:                                       ; preds = %do.cond.206
  br label %sw.epilog.236

sw.bb.210:                                        ; preds = %do.end.166
  br label %do.body.211

do.body.211:                                      ; preds = %do.cond.220, %sw.bb.210
  %197 = load i8, i8* %r, align 1, !tbaa !9
  %198 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %198, i64 0
  store i8 %197, i8* %arrayidx212, align 1, !tbaa !9
  %199 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %199, i64 3
  store i8 %197, i8* %arrayidx213, align 1, !tbaa !9
  %200 = load i8, i8* %g, align 1, !tbaa !9
  %201 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %201, i64 1
  store i8 %200, i8* %arrayidx214, align 1, !tbaa !9
  %202 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %202, i64 4
  store i8 %200, i8* %arrayidx215, align 1, !tbaa !9
  %203 = load i8, i8* %b, align 1, !tbaa !9
  %204 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i8, i8* %204, i64 2
  store i8 %203, i8* %arrayidx216, align 1, !tbaa !9
  %205 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i8, i8* %205, i64 5
  store i8 %203, i8* %arrayidx217, align 1, !tbaa !9
  %206 = load i8*, i8** %dest, align 8, !tbaa !1
  %207 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext218 = zext i32 %207 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %206, i64 %idx.ext218
  store i8* %add.ptr219, i8** %dest, align 8, !tbaa !1
  br label %do.cond.220

do.cond.220:                                      ; preds = %do.body.211
  %208 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec221 = add nsw i32 %208, -1
  store i32 %dec221, i32* %h.addr, align 4, !tbaa !5
  %tobool222 = icmp ne i32 %dec221, 0
  br i1 %tobool222, label %do.body.211, label %do.end.223

do.end.223:                                       ; preds = %do.cond.220
  br label %sw.epilog.236

sw.bb.224:                                        ; preds = %do.end.166
  br label %do.body.225

do.body.225:                                      ; preds = %do.cond.231, %sw.bb.224
  %209 = load i8, i8* %r, align 1, !tbaa !9
  %210 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i8, i8* %210, i64 0
  store i8 %209, i8* %arrayidx226, align 1, !tbaa !9
  %211 = load i8, i8* %g, align 1, !tbaa !9
  %212 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i8, i8* %212, i64 1
  store i8 %211, i8* %arrayidx227, align 1, !tbaa !9
  %213 = load i8, i8* %b, align 1, !tbaa !9
  %214 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %214, i64 2
  store i8 %213, i8* %arrayidx228, align 1, !tbaa !9
  %215 = load i8*, i8** %dest, align 8, !tbaa !1
  %216 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext229 = zext i32 %216 to i64
  %add.ptr230 = getelementptr inbounds i8, i8* %215, i64 %idx.ext229
  store i8* %add.ptr230, i8** %dest, align 8, !tbaa !1
  br label %do.cond.231

do.cond.231:                                      ; preds = %do.body.225
  %217 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec232 = add nsw i32 %217, -1
  store i32 %dec232, i32* %h.addr, align 4, !tbaa !5
  %tobool233 = icmp ne i32 %dec232, 0
  br i1 %tobool233, label %do.body.225, label %do.end.234

do.end.234:                                       ; preds = %do.cond.231
  br label %sw.epilog.236

sw.bb.235:                                        ; preds = %do.end.166
  br label %sw.default

sw.default:                                       ; preds = %do.end.166, %sw.bb.235
  br label %sw.epilog.236

sw.epilog.236:                                    ; preds = %sw.default, %do.end.234, %do.end.223, %do.end.209, %do.end.192
  br label %if.end.237

if.end.237:                                       ; preds = %sw.epilog.236, %if.else.160
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.159
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.238, %if.then.48
  %218 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #2
  %219 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #2
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  call void @llvm.lifetime.end(i64 1, i8* %g) #2
  call void @llvm.lifetime.end(i64 1, i8* %r) #2
  %220 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #2
  %221 = load i32, i32* %retval
  ret i32 %221
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true24_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %r0 = alloca i8, align 1
  %g0 = alloca i8, align 1
  %b0 = alloca i8, align 1
  %r1 = alloca i8, align 1
  %g1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  %r192 = alloca i8, align 1
  %g195 = alloca i8, align 1
  %b199 = alloca i8, align 1
  %first_mask = alloca i32, align 4
  %first_count = alloca i32, align 4
  %first_skip = alloca i32, align 4
  %pptr117 = alloca i8*, align 8
  %sptr118 = alloca i8*, align 8
  %sbyte119 = alloca i32, align 4
  %count123 = alloca i32, align 4
  %bit127 = alloca i32, align 4
  %bit243 = alloca i32, align 4
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
  %mul27 = mul nsw i32 %43, 3
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
  br i1 %cmp33, label %if.then.34, label %if.else.88

if.then.34:                                       ; preds = %do.end.26
  call void @llvm.lifetime.start(i64 1, i8* %r0) #2
  %49 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr35 = lshr i64 %49, 16
  %conv = trunc i64 %shr35 to i8
  store i8 %conv, i8* %r0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g0) #2
  %50 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv36 = trunc i64 %50 to i32
  %shr37 = lshr i32 %conv36, 8
  %conv38 = trunc i32 %shr37 to i8
  store i8 %conv38, i8* %g0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  %51 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv39 = trunc i64 %51 to i8
  store i8 %conv39, i8* %b0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %r1) #2
  %52 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr40 = lshr i64 %52, 16
  %conv41 = trunc i64 %shr40 to i8
  store i8 %conv41, i8* %r1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g1) #2
  %53 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv42 = trunc i64 %53 to i32
  %shr43 = lshr i32 %conv42, 8
  %conv44 = trunc i32 %shr43 to i8
  store i8 %conv44, i8* %g1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  %54 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv45 = trunc i64 %54 to i8
  store i8 %conv45, i8* %b1, align 1, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %do.end.83, %if.then.34
  %55 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %55, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp46 = icmp sgt i32 %55, 0
  br i1 %cmp46, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %56 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %57, i8** %pptr, align 8, !tbaa !1
  %58 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %59, i8** %sptr, align 8, !tbaa !1
  %60 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !9
  %conv48 = zext i8 %62 to i32
  store i32 %conv48, i32* %sbyte, align 4, !tbaa !5
  %63 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %64, i32* %bit, align 4, !tbaa !5
  %65 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %66, i32* %count, align 4, !tbaa !5
  br label %do.body.49

do.body.49:                                       ; preds = %do.cond.82, %while.body
  %67 = load i32, i32* %sbyte, align 4, !tbaa !5
  %68 = load i32, i32* %bit, align 4, !tbaa !5
  %and50 = and i32 %67, %68
  %tobool = icmp ne i32 %and50, 0
  br i1 %tobool, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %do.body.49
  %69 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp52 = icmp ne i64 %69, -1
  br i1 %cmp52, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %if.then.51
  %70 = load i8, i8* %r1, align 1, !tbaa !9
  %71 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 %70, i8* %arrayidx55, align 1, !tbaa !9
  %72 = load i8, i8* %g1, align 1, !tbaa !9
  %73 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %arrayidx56, align 1, !tbaa !9
  %74 = load i8, i8* %b1, align 1, !tbaa !9
  %75 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %75, i64 2
  store i8 %74, i8* %arrayidx57, align 1, !tbaa !9
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.54
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %if.then.51
  br label %if.end.68

if.else:                                          ; preds = %do.body.49
  %76 = load i8, i8* %r0, align 1, !tbaa !9
  %77 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %arrayidx62, align 1, !tbaa !9
  %78 = load i8, i8* %g0, align 1, !tbaa !9
  %79 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %78, i8* %arrayidx63, align 1, !tbaa !9
  %80 = load i8, i8* %b0, align 1, !tbaa !9
  %81 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds i8, i8* %81, i64 2
  store i8 %80, i8* %arrayidx64, align 1, !tbaa !9
  br label %do.body.65

do.body.65:                                       ; preds = %if.else
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  br label %if.end.68

if.end.68:                                        ; preds = %do.end.67, %if.end.61
  %82 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr69 = getelementptr inbounds i8, i8* %82, i64 3
  store i8* %add.ptr69, i8** %pptr, align 8, !tbaa !1
  %83 = load i32, i32* %count, align 4, !tbaa !5
  %dec70 = add nsw i32 %83, -1
  store i32 %dec70, i32* %count, align 4, !tbaa !5
  %84 = load i32, i32* %count, align 4, !tbaa !5
  %cmp71 = icmp eq i32 %84, 0
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.68
  br label %do.end.83

if.end.74:                                        ; preds = %if.end.68
  %85 = load i32, i32* %bit, align 4, !tbaa !5
  %shr75 = ashr i32 %85, 1
  store i32 %shr75, i32* %bit, align 4, !tbaa !5
  %cmp76 = icmp eq i32 %shr75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.74
  store i32 128, i32* %bit, align 4, !tbaa !5
  %86 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr79 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr79, i8** %sptr, align 8, !tbaa !1
  %87 = load i8, i8* %86, align 1, !tbaa !9
  %conv80 = zext i8 %87 to i32
  store i32 %conv80, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.74
  br label %do.cond.82

do.cond.82:                                       ; preds = %if.end.81
  br i1 true, label %do.body.49, label %do.end.83

do.end.83:                                        ; preds = %do.cond.82, %if.then.73
  %88 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %89 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext84 = sext i32 %88 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %89, i64 %idx.ext84
  store i8* %add.ptr85, i8** %line, align 8, !tbaa !1
  %90 = load i8*, i8** %dest, align 8, !tbaa !1
  %91 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext86 = zext i32 %91 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %90, i64 %idx.ext86
  store i8* %add.ptr87, i8** %dest, align 8, !tbaa !1
  %92 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #2
  %93 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #2
  %94 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #2
  %95 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #2
  %96 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %g1) #2
  call void @llvm.lifetime.end(i64 1, i8* %r1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  call void @llvm.lifetime.end(i64 1, i8* %g0) #2
  call void @llvm.lifetime.end(i64 1, i8* %r0) #2
  br label %if.end.268

if.else.88:                                       ; preds = %do.end.26
  %97 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp89 = icmp ne i64 %97, -1
  br i1 %cmp89, label %if.then.91, label %if.end.267

if.then.91:                                       ; preds = %if.else.88
  call void @llvm.lifetime.start(i64 1, i8* %r192) #2
  %98 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr93 = lshr i64 %98, 16
  %conv94 = trunc i64 %shr93 to i8
  store i8 %conv94, i8* %r192, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g195) #2
  %99 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv96 = trunc i64 %99 to i32
  %shr97 = lshr i32 %conv96, 8
  %conv98 = trunc i32 %shr97 to i8
  store i8 %conv98, i8* %g195, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b199) #2
  %100 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv100 = trunc i64 %100 to i8
  store i8 %conv100, i8* %b199, align 1, !tbaa !9
  %101 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #2
  %102 = load i32, i32* %first_bit, align 4, !tbaa !5
  %shl = shl i32 %102, 1
  store i32 %shl, i32* %first_mask, align 4, !tbaa !5
  %103 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  %104 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %104) #2
  %105 = load i32, i32* %sbit, align 4, !tbaa !5
  %106 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add101 = add nsw i32 %105, %106
  %cmp102 = icmp sgt i32 %add101, 8
  br i1 %cmp102, label %if.then.104, label %if.else.107

if.then.104:                                      ; preds = %if.then.91
  %107 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub105 = sub nsw i32 %107, 1
  store i32 %sub105, i32* %first_mask, align 4, !tbaa !5
  %108 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub106 = sub nsw i32 8, %108
  store i32 %sub106, i32* %first_count, align 4, !tbaa !5
  br label %if.end.110

if.else.107:                                      ; preds = %if.then.91
  %109 = load i32, i32* %first_mask, align 4, !tbaa !5
  %110 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shr108 = ashr i32 %109, %110
  %111 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub109 = sub nsw i32 %111, %shr108
  store i32 %sub109, i32* %first_mask, align 4, !tbaa !5
  %112 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %112, i32* %first_count, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.104
  %113 = load i32, i32* %first_count, align 4, !tbaa !5
  %mul111 = mul nsw i32 %113, 3
  store i32 %mul111, i32* %first_skip, align 4, !tbaa !5
  br label %while.cond.112

while.cond.112:                                   ; preds = %if.end.261, %if.end.110
  %114 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec113 = add nsw i32 %114, -1
  store i32 %dec113, i32* %h.addr, align 4, !tbaa !5
  %cmp114 = icmp sgt i32 %114, 0
  br i1 %cmp114, label %while.body.116, label %while.end.266

while.body.116:                                   ; preds = %while.cond.112
  %115 = bitcast i8** %pptr117 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %115) #2
  %116 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %116, i8** %pptr117, align 8, !tbaa !1
  %117 = bitcast i8** %sptr118 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %117) #2
  %118 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %118, i8** %sptr118, align 8, !tbaa !1
  %119 = bitcast i32* %sbyte119 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %119) #2
  %120 = load i8*, i8** %sptr118, align 8, !tbaa !1
  %incdec.ptr120 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr120, i8** %sptr118, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !9
  %conv121 = zext i8 %121 to i32
  %122 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and122 = and i32 %conv121, %122
  store i32 %and122, i32* %sbyte119, align 4, !tbaa !5
  %123 = bitcast i32* %count123 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #2
  %124 = load i32, i32* %w.addr, align 4, !tbaa !5
  %125 = load i32, i32* %first_count, align 4, !tbaa !5
  %sub124 = sub nsw i32 %124, %125
  store i32 %sub124, i32* %count123, align 4, !tbaa !5
  %126 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %tobool125 = icmp ne i32 %126, 0
  br i1 %tobool125, label %if.then.126, label %if.else.142

if.then.126:                                      ; preds = %while.body.116
  %127 = bitcast i32* %bit127 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #2
  %128 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %128, i32* %bit127, align 4, !tbaa !5
  br label %do.body.128

do.body.128:                                      ; preds = %do.cond.137, %if.then.126
  %129 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %130 = load i32, i32* %bit127, align 4, !tbaa !5
  %and129 = and i32 %129, %130
  %tobool130 = icmp ne i32 %and129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.135

if.then.131:                                      ; preds = %do.body.128
  %131 = load i8, i8* %r192, align 1, !tbaa !9
  %132 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %132, i64 0
  store i8 %131, i8* %arrayidx132, align 1, !tbaa !9
  %133 = load i8, i8* %g195, align 1, !tbaa !9
  %134 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 %133, i8* %arrayidx133, align 1, !tbaa !9
  %135 = load i8, i8* %b199, align 1, !tbaa !9
  %136 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i8, i8* %136, i64 2
  store i8 %135, i8* %arrayidx134, align 1, !tbaa !9
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.131, %do.body.128
  %137 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr136 = getelementptr inbounds i8, i8* %137, i64 3
  store i8* %add.ptr136, i8** %pptr117, align 8, !tbaa !1
  br label %do.cond.137

do.cond.137:                                      ; preds = %if.end.135
  %138 = load i32, i32* %bit127, align 4, !tbaa !5
  %shr138 = ashr i32 %138, 1
  store i32 %shr138, i32* %bit127, align 4, !tbaa !5
  %139 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and139 = and i32 %shr138, %139
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %do.body.128, label %do.end.141

do.end.141:                                       ; preds = %do.cond.137
  %140 = bitcast i32* %bit127 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  br label %if.end.145

if.else.142:                                      ; preds = %while.body.116
  %141 = load i32, i32* %first_skip, align 4, !tbaa !5
  %142 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %idx.ext143 = sext i32 %141 to i64
  %add.ptr144 = getelementptr inbounds i8, i8* %142, i64 %idx.ext143
  store i8* %add.ptr144, i8** %pptr117, align 8, !tbaa !1
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %do.end.141
  br label %while.cond.146

while.cond.146:                                   ; preds = %if.end.236, %if.end.145
  %143 = load i32, i32* %count123, align 4, !tbaa !5
  %cmp147 = icmp sge i32 %143, 8
  br i1 %cmp147, label %while.body.149, label %while.end.239

while.body.149:                                   ; preds = %while.cond.146
  %144 = load i8*, i8** %sptr118, align 8, !tbaa !1
  %incdec.ptr150 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr150, i8** %sptr118, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !9
  %conv151 = zext i8 %145 to i32
  store i32 %conv151, i32* %sbyte119, align 4, !tbaa !5
  %146 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and152 = and i32 %146, 240
  %tobool153 = icmp ne i32 %and152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.192

if.then.154:                                      ; preds = %while.body.149
  %147 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and155 = and i32 %147, 128
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.161

if.then.157:                                      ; preds = %if.then.154
  %148 = load i8, i8* %r192, align 1, !tbaa !9
  %149 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 %148, i8* %arrayidx158, align 1, !tbaa !9
  %150 = load i8, i8* %g195, align 1, !tbaa !9
  %151 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %151, i64 1
  store i8 %150, i8* %arrayidx159, align 1, !tbaa !9
  %152 = load i8, i8* %b199, align 1, !tbaa !9
  %153 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i8, i8* %153, i64 2
  store i8 %152, i8* %arrayidx160, align 1, !tbaa !9
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.157, %if.then.154
  %154 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and162 = and i32 %154, 64
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.then.164, label %if.end.171

if.then.164:                                      ; preds = %if.end.161
  %155 = load i8, i8* %r192, align 1, !tbaa !9
  %156 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr165 = getelementptr inbounds i8, i8* %156, i64 3
  %arrayidx166 = getelementptr inbounds i8, i8* %add.ptr165, i64 0
  store i8 %155, i8* %arrayidx166, align 1, !tbaa !9
  %157 = load i8, i8* %g195, align 1, !tbaa !9
  %158 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr167 = getelementptr inbounds i8, i8* %158, i64 3
  %arrayidx168 = getelementptr inbounds i8, i8* %add.ptr167, i64 1
  store i8 %157, i8* %arrayidx168, align 1, !tbaa !9
  %159 = load i8, i8* %b199, align 1, !tbaa !9
  %160 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr169 = getelementptr inbounds i8, i8* %160, i64 3
  %arrayidx170 = getelementptr inbounds i8, i8* %add.ptr169, i64 2
  store i8 %159, i8* %arrayidx170, align 1, !tbaa !9
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.164, %if.end.161
  %161 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and172 = and i32 %161, 32
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.181

if.then.174:                                      ; preds = %if.end.171
  %162 = load i8, i8* %r192, align 1, !tbaa !9
  %163 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr175 = getelementptr inbounds i8, i8* %163, i64 6
  %arrayidx176 = getelementptr inbounds i8, i8* %add.ptr175, i64 0
  store i8 %162, i8* %arrayidx176, align 1, !tbaa !9
  %164 = load i8, i8* %g195, align 1, !tbaa !9
  %165 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr177 = getelementptr inbounds i8, i8* %165, i64 6
  %arrayidx178 = getelementptr inbounds i8, i8* %add.ptr177, i64 1
  store i8 %164, i8* %arrayidx178, align 1, !tbaa !9
  %166 = load i8, i8* %b199, align 1, !tbaa !9
  %167 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr179 = getelementptr inbounds i8, i8* %167, i64 6
  %arrayidx180 = getelementptr inbounds i8, i8* %add.ptr179, i64 2
  store i8 %166, i8* %arrayidx180, align 1, !tbaa !9
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.174, %if.end.171
  %168 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and182 = and i32 %168, 16
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.191

if.then.184:                                      ; preds = %if.end.181
  %169 = load i8, i8* %r192, align 1, !tbaa !9
  %170 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds i8, i8* %170, i64 9
  %arrayidx186 = getelementptr inbounds i8, i8* %add.ptr185, i64 0
  store i8 %169, i8* %arrayidx186, align 1, !tbaa !9
  %171 = load i8, i8* %g195, align 1, !tbaa !9
  %172 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr187 = getelementptr inbounds i8, i8* %172, i64 9
  %arrayidx188 = getelementptr inbounds i8, i8* %add.ptr187, i64 1
  store i8 %171, i8* %arrayidx188, align 1, !tbaa !9
  %173 = load i8, i8* %b199, align 1, !tbaa !9
  %174 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr189 = getelementptr inbounds i8, i8* %174, i64 9
  %arrayidx190 = getelementptr inbounds i8, i8* %add.ptr189, i64 2
  store i8 %173, i8* %arrayidx190, align 1, !tbaa !9
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.184, %if.end.181
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.191, %while.body.149
  %175 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and193 = and i32 %175, 15
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.236

if.then.195:                                      ; preds = %if.end.192
  %176 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and196 = and i32 %176, 8
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.205

if.then.198:                                      ; preds = %if.then.195
  %177 = load i8, i8* %r192, align 1, !tbaa !9
  %178 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr199 = getelementptr inbounds i8, i8* %178, i64 12
  %arrayidx200 = getelementptr inbounds i8, i8* %add.ptr199, i64 0
  store i8 %177, i8* %arrayidx200, align 1, !tbaa !9
  %179 = load i8, i8* %g195, align 1, !tbaa !9
  %180 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr201 = getelementptr inbounds i8, i8* %180, i64 12
  %arrayidx202 = getelementptr inbounds i8, i8* %add.ptr201, i64 1
  store i8 %179, i8* %arrayidx202, align 1, !tbaa !9
  %181 = load i8, i8* %b199, align 1, !tbaa !9
  %182 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr203 = getelementptr inbounds i8, i8* %182, i64 12
  %arrayidx204 = getelementptr inbounds i8, i8* %add.ptr203, i64 2
  store i8 %181, i8* %arrayidx204, align 1, !tbaa !9
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.198, %if.then.195
  %183 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and206 = and i32 %183, 4
  %tobool207 = icmp ne i32 %and206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.215

if.then.208:                                      ; preds = %if.end.205
  %184 = load i8, i8* %r192, align 1, !tbaa !9
  %185 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr209 = getelementptr inbounds i8, i8* %185, i64 15
  %arrayidx210 = getelementptr inbounds i8, i8* %add.ptr209, i64 0
  store i8 %184, i8* %arrayidx210, align 1, !tbaa !9
  %186 = load i8, i8* %g195, align 1, !tbaa !9
  %187 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr211 = getelementptr inbounds i8, i8* %187, i64 15
  %arrayidx212 = getelementptr inbounds i8, i8* %add.ptr211, i64 1
  store i8 %186, i8* %arrayidx212, align 1, !tbaa !9
  %188 = load i8, i8* %b199, align 1, !tbaa !9
  %189 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr213 = getelementptr inbounds i8, i8* %189, i64 15
  %arrayidx214 = getelementptr inbounds i8, i8* %add.ptr213, i64 2
  store i8 %188, i8* %arrayidx214, align 1, !tbaa !9
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.208, %if.end.205
  %190 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and216 = and i32 %190, 2
  %tobool217 = icmp ne i32 %and216, 0
  br i1 %tobool217, label %if.then.218, label %if.end.225

if.then.218:                                      ; preds = %if.end.215
  %191 = load i8, i8* %r192, align 1, !tbaa !9
  %192 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr219 = getelementptr inbounds i8, i8* %192, i64 18
  %arrayidx220 = getelementptr inbounds i8, i8* %add.ptr219, i64 0
  store i8 %191, i8* %arrayidx220, align 1, !tbaa !9
  %193 = load i8, i8* %g195, align 1, !tbaa !9
  %194 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr221 = getelementptr inbounds i8, i8* %194, i64 18
  %arrayidx222 = getelementptr inbounds i8, i8* %add.ptr221, i64 1
  store i8 %193, i8* %arrayidx222, align 1, !tbaa !9
  %195 = load i8, i8* %b199, align 1, !tbaa !9
  %196 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr223 = getelementptr inbounds i8, i8* %196, i64 18
  %arrayidx224 = getelementptr inbounds i8, i8* %add.ptr223, i64 2
  store i8 %195, i8* %arrayidx224, align 1, !tbaa !9
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.218, %if.end.215
  %197 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %and226 = and i32 %197, 1
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.235

if.then.228:                                      ; preds = %if.end.225
  %198 = load i8, i8* %r192, align 1, !tbaa !9
  %199 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr229 = getelementptr inbounds i8, i8* %199, i64 21
  %arrayidx230 = getelementptr inbounds i8, i8* %add.ptr229, i64 0
  store i8 %198, i8* %arrayidx230, align 1, !tbaa !9
  %200 = load i8, i8* %g195, align 1, !tbaa !9
  %201 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr231 = getelementptr inbounds i8, i8* %201, i64 21
  %arrayidx232 = getelementptr inbounds i8, i8* %add.ptr231, i64 1
  store i8 %200, i8* %arrayidx232, align 1, !tbaa !9
  %202 = load i8, i8* %b199, align 1, !tbaa !9
  %203 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr233 = getelementptr inbounds i8, i8* %203, i64 21
  %arrayidx234 = getelementptr inbounds i8, i8* %add.ptr233, i64 2
  store i8 %202, i8* %arrayidx234, align 1, !tbaa !9
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.228, %if.end.225
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.192
  %204 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr237 = getelementptr inbounds i8, i8* %204, i64 24
  store i8* %add.ptr237, i8** %pptr117, align 8, !tbaa !1
  %205 = load i32, i32* %count123, align 4, !tbaa !5
  %sub238 = sub nsw i32 %205, 8
  store i32 %sub238, i32* %count123, align 4, !tbaa !5
  br label %while.cond.146

while.end.239:                                    ; preds = %while.cond.146
  %206 = load i32, i32* %count123, align 4, !tbaa !5
  %cmp240 = icmp sgt i32 %206, 0
  br i1 %cmp240, label %if.then.242, label %if.end.261

if.then.242:                                      ; preds = %while.end.239
  %207 = bitcast i32* %bit243 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #2
  store i32 128, i32* %bit243, align 4, !tbaa !5
  %208 = load i8*, i8** %sptr118, align 8, !tbaa !1
  %incdec.ptr244 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr244, i8** %sptr118, align 8, !tbaa !1
  %209 = load i8, i8* %208, align 1, !tbaa !9
  %conv245 = zext i8 %209 to i32
  store i32 %conv245, i32* %sbyte119, align 4, !tbaa !5
  br label %do.body.246

do.body.246:                                      ; preds = %do.cond.256, %if.then.242
  %210 = load i32, i32* %sbyte119, align 4, !tbaa !5
  %211 = load i32, i32* %bit243, align 4, !tbaa !5
  %and247 = and i32 %210, %211
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %do.body.246
  %212 = load i8, i8* %r192, align 1, !tbaa !9
  %213 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %213, i64 0
  store i8 %212, i8* %arrayidx250, align 1, !tbaa !9
  %214 = load i8, i8* %g195, align 1, !tbaa !9
  %215 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %215, i64 1
  store i8 %214, i8* %arrayidx251, align 1, !tbaa !9
  %216 = load i8, i8* %b199, align 1, !tbaa !9
  %217 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %217, i64 2
  store i8 %216, i8* %arrayidx252, align 1, !tbaa !9
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.249, %do.body.246
  %218 = load i8*, i8** %pptr117, align 8, !tbaa !1
  %add.ptr254 = getelementptr inbounds i8, i8* %218, i64 3
  store i8* %add.ptr254, i8** %pptr117, align 8, !tbaa !1
  %219 = load i32, i32* %bit243, align 4, !tbaa !5
  %shr255 = ashr i32 %219, 1
  store i32 %shr255, i32* %bit243, align 4, !tbaa !5
  br label %do.cond.256

do.cond.256:                                      ; preds = %if.end.253
  %220 = load i32, i32* %count123, align 4, !tbaa !5
  %dec257 = add nsw i32 %220, -1
  store i32 %dec257, i32* %count123, align 4, !tbaa !5
  %cmp258 = icmp sgt i32 %dec257, 0
  br i1 %cmp258, label %do.body.246, label %do.end.260

do.end.260:                                       ; preds = %do.cond.256
  %221 = bitcast i32* %bit243 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #2
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %while.end.239
  %222 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %223 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext262 = sext i32 %222 to i64
  %add.ptr263 = getelementptr inbounds i8, i8* %223, i64 %idx.ext262
  store i8* %add.ptr263, i8** %line, align 8, !tbaa !1
  %224 = load i8*, i8** %dest, align 8, !tbaa !1
  %225 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext264 = zext i32 %225 to i64
  %add.ptr265 = getelementptr inbounds i8, i8* %224, i64 %idx.ext264
  store i8* %add.ptr265, i8** %dest, align 8, !tbaa !1
  %226 = bitcast i32* %count123 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #2
  %227 = bitcast i32* %sbyte119 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #2
  %228 = bitcast i8** %sptr118 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = bitcast i8** %pptr117 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #2
  br label %while.cond.112

while.end.266:                                    ; preds = %while.cond.112
  %230 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %230) #2
  %231 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %231) #2
  %232 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  call void @llvm.lifetime.end(i64 1, i8* %b199) #2
  call void @llvm.lifetime.end(i64 1, i8* %g195) #2
  call void @llvm.lifetime.end(i64 1, i8* %r192) #2
  br label %if.end.267

if.end.267:                                       ; preds = %while.end.266, %if.else.88
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.268, %if.then.23
  %233 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #2
  %235 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = load i32, i32* %retval
  ret i32 %239
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true24_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body.2
  %5 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
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

if.end:                                           ; preds = %if.then.4, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add7 = add nsw i32 %12, %11
  store i32 %add7, i32* %h.addr, align 4, !tbaa !5
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
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body.2
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !10
  %19 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %18, %19
  %cmp11 = icmp sgt i32 %16, %sub10
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end.9
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width13, align 4, !tbaa !10
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %21, %22
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.9
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  %23 = load i32, i32* %h.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !22
  %26 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %25, %26
  %cmp19 = icmp sgt i32 %23, %sub18
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %do.end.17
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height21, align 4, !tbaa !22
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub22 = sub nsw i32 %28, %29
  store i32 %sub22, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %do.end.17
  %30 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp24 = icmp sle i32 %30, 0
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %31 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %31, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.23
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %lor.lhs.false
  br label %do.cond.28

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 52
  %34 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %36 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %36, 3
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %35, i64 %idx.ext31
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !23
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %40, 3
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %39, i64 %idx.ext34
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %42, 3
  %43 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr32, i32 %38, i8* %add.ptr35, i32 %41, i32 %mul36, i32 %43) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.29, %if.then.26
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

; Function Attrs: nounwind uwtable
define internal i32 @mem_true24_copy_alpha(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #1 {
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
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %line = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i8*, align 8
  %sx = alloca i32, align 4
  %alpha2 = alloca i32, align 4
  %alpha = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  call void @llvm.lifetime.start(i64 1, i8* %r) #2
  %6 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %6, 16
  %conv = trunc i64 %shr to i8
  store i8 %conv, i8* %r, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %g) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv1 = trunc i64 %7 to i32
  %shr2 = lshr i32 %conv1, 8
  %conv3 = trunc i32 %shr2 to i8
  store i8 %conv3, i8* %g, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv4 = trunc i64 %8 to i8
  store i8 %conv4, i8* %b, align 1, !tbaa !9
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %10 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %9, %10
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %do.body.5
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %11, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %13, %12
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %14
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %16, 0
  br i1 %cmp10, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add13 = add nsw i32 %18, %17
  store i32 %add13, i32* %h.addr, align 4, !tbaa !5
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %20 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %19, %20
  %21 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %do.body.5
  %22 = load i32, i32* %w.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width, align 4, !tbaa !10
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub16 = sub nsw i32 %24, %25
  %cmp17 = icmp sgt i32 %22, %sub16
  br i1 %cmp17, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.15
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width20, align 4, !tbaa !10
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %27, %28
  store i32 %sub21, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.15
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height, align 4, !tbaa !22
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %31, %32
  %cmp24 = icmp sgt i32 %29, %sub23
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %do.end
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height27, align 4, !tbaa !22
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub28 = sub nsw i32 %34, %35
  store i32 %sub28, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %do.end
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %36, 0
  br i1 %cmp30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp32 = icmp sle i32 %37, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %lor.lhs.false
  br label %do.cond.36

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37

do.end.37:                                        ; preds = %do.cond.36
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 44
  %39 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %39, i32* %draster, align 4, !tbaa !5
  %40 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %40 to i64
  %41 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %41, i32 0, i32 52
  %42 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %42, i64 %idxprom
  %43 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %44 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %44, 3
  %idx.ext39 = sext i32 %mul38 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %43, i64 %idx.ext39
  store i8* %add.ptr40, i8** %dest, align 8, !tbaa !1
  %45 = load i8*, i8** %base.addr, align 8, !tbaa !1
  store i8* %45, i8** %line, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %for.end, %do.end.37
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp41 = icmp sgt i32 %46, 0
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %47 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %48, i8** %pptr, align 8, !tbaa !1
  %49 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %50, i32* %sx, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %51 = load i32, i32* %sx, align 4, !tbaa !5
  %52 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %53 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add43 = add nsw i32 %52, %53
  %cmp44 = icmp slt i32 %51, %add43
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %56, 2
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %for.body
  %57 = load i32, i32* %sx, align 4, !tbaa !5
  %shr49 = ashr i32 %57, 2
  %idxprom50 = sext i32 %shr49 to i64
  %58 = load i8*, i8** %line, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8, i8* %58, i64 %idxprom50
  %59 = load i8, i8* %arrayidx51, align 1, !tbaa !9
  %conv52 = zext i8 %59 to i32
  %60 = load i32, i32* %sx, align 4, !tbaa !5
  %and = and i32 %60, 3
  %sub53 = sub nsw i32 3, %and
  %shl = shl i32 %sub53, 1
  %shr54 = ashr i32 %conv52, %shl
  %and55 = and i32 %shr54, 3
  %mul56 = mul nsw i32 %and55, 5
  store i32 %mul56, i32* %alpha, align 4, !tbaa !5
  br label %if.end.64

if.else:                                          ; preds = %for.body
  %61 = load i32, i32* %sx, align 4, !tbaa !5
  %shr57 = ashr i32 %61, 1
  %idxprom58 = sext i32 %shr57 to i64
  %62 = load i8*, i8** %line, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds i8, i8* %62, i64 %idxprom58
  %63 = load i8, i8* %arrayidx59, align 1, !tbaa !9
  %conv60 = zext i8 %63 to i32
  store i32 %conv60, i32* %alpha2, align 4, !tbaa !5
  %64 = load i32, i32* %sx, align 4, !tbaa !5
  %and61 = and i32 %64, 1
  %tobool = icmp ne i32 %and61, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %65 = load i32, i32* %alpha2, align 4, !tbaa !5
  %and62 = and i32 %65, 15
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %66 = load i32, i32* %alpha2, align 4, !tbaa !5
  %shr63 = ashr i32 %66, 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and62, %cond.true ], [ %shr63, %cond.false ]
  store i32 %cond, i32* %alpha, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %cond.end, %if.then.48
  %67 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %67, 15
  br i1 %cmp65, label %if.then.67, label %if.else.71

if.then.67:                                       ; preds = %if.end.64
  %68 = load i8, i8* %r, align 1, !tbaa !9
  %69 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 %68, i8* %arrayidx68, align 1, !tbaa !9
  %70 = load i8, i8* %g, align 1, !tbaa !9
  %71 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %71, i64 1
  store i8 %70, i8* %arrayidx69, align 1, !tbaa !9
  %72 = load i8, i8* %b, align 1, !tbaa !9
  %73 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %73, i64 2
  store i8 %72, i8* %arrayidx70, align 1, !tbaa !9
  br label %if.end.108

if.else.71:                                       ; preds = %if.end.64
  %74 = load i32, i32* %alpha, align 4, !tbaa !5
  %cmp72 = icmp ne i32 %74, 0
  br i1 %cmp72, label %if.then.74, label %if.end.107

if.then.74:                                       ; preds = %if.else.71
  %75 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %75, i64 0
  %76 = load i8, i8* %arrayidx75, align 1, !tbaa !9
  %conv76 = zext i8 %76 to i32
  %77 = load i8, i8* %r, align 1, !tbaa !9
  %conv77 = zext i8 %77 to i32
  %78 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %78, i64 0
  %79 = load i8, i8* %arrayidx78, align 1, !tbaa !9
  %conv79 = zext i8 %79 to i32
  %sub80 = sub nsw i32 %conv77, %conv79
  %80 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul81 = mul nsw i32 %sub80, %80
  %div = sdiv i32 %mul81, 15
  %add82 = add nsw i32 %conv76, %div
  %conv83 = trunc i32 %add82 to i8
  %81 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 %conv83, i8* %arrayidx84, align 1, !tbaa !9
  %82 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %82, i64 1
  %83 = load i8, i8* %arrayidx85, align 1, !tbaa !9
  %conv86 = zext i8 %83 to i32
  %84 = load i8, i8* %g, align 1, !tbaa !9
  %conv87 = zext i8 %84 to i32
  %85 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %85, i64 1
  %86 = load i8, i8* %arrayidx88, align 1, !tbaa !9
  %conv89 = zext i8 %86 to i32
  %sub90 = sub nsw i32 %conv87, %conv89
  %87 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul91 = mul nsw i32 %sub90, %87
  %div92 = sdiv i32 %mul91, 15
  %add93 = add nsw i32 %conv86, %div92
  %conv94 = trunc i32 %add93 to i8
  %88 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %88, i64 1
  store i8 %conv94, i8* %arrayidx95, align 1, !tbaa !9
  %89 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds i8, i8* %89, i64 2
  %90 = load i8, i8* %arrayidx96, align 1, !tbaa !9
  %conv97 = zext i8 %90 to i32
  %91 = load i8, i8* %b, align 1, !tbaa !9
  %conv98 = zext i8 %91 to i32
  %92 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds i8, i8* %92, i64 2
  %93 = load i8, i8* %arrayidx99, align 1, !tbaa !9
  %conv100 = zext i8 %93 to i32
  %sub101 = sub nsw i32 %conv98, %conv100
  %94 = load i32, i32* %alpha, align 4, !tbaa !5
  %mul102 = mul nsw i32 %sub101, %94
  %div103 = sdiv i32 %mul102, 15
  %add104 = add nsw i32 %conv97, %div103
  %conv105 = trunc i32 %add104 to i8
  %95 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %95, i64 2
  store i8 %conv105, i8* %arrayidx106, align 1, !tbaa !9
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.74, %if.else.71
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.67
  %96 = bitcast i32* %alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %alpha2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  br label %for.inc

for.inc:                                          ; preds = %if.end.108
  %98 = load i32, i32* %sx, align 4, !tbaa !5
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %sx, align 4, !tbaa !5
  %99 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr109 = getelementptr inbounds i8, i8* %99, i64 3
  store i8* %add.ptr109, i8** %pptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %100 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %101 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext110 = sext i32 %100 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %101, i64 %idx.ext110
  store i8* %add.ptr111, i8** %line, align 8, !tbaa !1
  %102 = load i8*, i8** %dest, align 8, !tbaa !1
  %103 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext112 = zext i32 %103 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %102, i64 %idx.ext112
  store i8* %add.ptr113, i8** %dest, align 8, !tbaa !1
  %104 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.34
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  call void @llvm.lifetime.end(i64 1, i8* %g) #2
  call void @llvm.lifetime.end(i64 1, i8* %r) #2
  %106 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #2
  %107 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = load i32, i32* %retval
  ret i32 %110
}

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

declare i32 @mem_gray8_rgb24_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #0

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @mem_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #0

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem24_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %mul = mul nsw i32 %37, 24
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %38, 24
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %mul, i32 %mul36, i32 %39, i32 1) #5
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %45 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 @mem_true24_fill_rectangle(%struct.gx_device_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45) #5
  %46 = load i8*, i8** %base, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %48, 24
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %49, 24
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
define internal i32 @mem24_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %mul30 = mul nsw i32 %46, 24
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 %47, 24
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
  %call = call i32 @mem_true24_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #5
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul32 = mul nsw i32 %63, 24
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %64, 24
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
define internal i32 @mem24_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %mul28 = mul nsw i32 %42, 24
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %43, 24
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %40, i32 %41, i32 %mul28, i32 %mul29, i32 %44, i32 1) #5
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %46, 3
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 %idx.ext31
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %49 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %49, 3
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %48, i64 %idx.ext34
  %50 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %51, 3
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr32, i32 %47, i8* %add.ptr35, i32 %50, i32 %mul36, i32 %52) #5
  %53 = load i8*, i8** %row, align 8, !tbaa !1
  %54 = load i32, i32* %raster, align 4, !tbaa !5
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %55, 24
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %56, 24
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

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #0

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
!35 = !{!24, !8, i64 2600}
!36 = !{!24, !6, i64 2608}
!37 = !{!24, !6, i64 2612}
!38 = !{!24, !6, i64 2616}
