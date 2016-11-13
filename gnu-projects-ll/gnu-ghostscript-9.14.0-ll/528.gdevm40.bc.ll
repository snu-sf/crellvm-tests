; ModuleID = './gdevm40.bc'
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

@.str = private unnamed_addr constant [8 x i8] c"image40\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_true40_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 40, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true40_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true40_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true40_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image40w\00", align 1
@mem_true40_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 40, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem40_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem40_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem40_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

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
define internal i32 @mem_true40_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bcnt = alloca i32, align 4
  %x3 = alloca i32, align 4
  %ww = alloca i32, align 4
  %abcd = alloca i32, align 4
  %bcde = alloca i32, align 4
  %cdea = alloca i32, align 4
  %deab = alloca i32, align 4
  %eabc = alloca i32, align 4
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
  %shr = lshr i64 %3, 16
  %shr1 = lshr i64 %shr, 16
  %conv = trunc i64 %shr1 to i8
  store i8 %conv, i8* %a, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %4 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv2 = trunc i64 %4 to i32
  %shr3 = lshr i32 %conv2, 24
  %conv4 = trunc i32 %shr3 to i8
  store i8 %conv4, i8* %b, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %5 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv5 = trunc i64 %5 to i32
  %shr6 = lshr i32 %conv5, 16
  %conv7 = trunc i32 %shr6 to i8
  store i8 %conv7, i8* %c, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d) #2
  %6 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv8 = trunc i64 %6 to i32
  %shr9 = lshr i32 %conv8, 8
  %conv10 = trunc i32 %shr9 to i8
  store i8 %conv10, i8* %d, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv11 = trunc i64 %7 to i8
  store i8 %conv11, i8* %e, align 1, !tbaa !9
  %8 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.12

do.body.12:                                       ; preds = %do.body
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %10, %11
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %do.body.12
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %12, 0
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %14 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %14, %13
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %17 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add20 = add nsw i32 %17, %16
  store i32 %add20, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %do.body.12
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.23

do.body.23:                                       ; preds = %do.end
  %18 = load i32, i32* %w.addr, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width, align 4, !tbaa !10
  %21 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %21
  %cmp24 = icmp sgt i32 %18, %sub
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %do.body.23
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width27, align 4, !tbaa !10
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub28 = sub nsw i32 %23, %24
  store i32 %sub28, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %do.body.23
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %25 = load i32, i32* %h.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 14
  %27 = load i32, i32* %height, align 4, !tbaa !22
  %28 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub33 = sub nsw i32 %27, %28
  %cmp34 = icmp sgt i32 %25, %sub33
  br i1 %cmp34, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %do.body.32
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 14
  %30 = load i32, i32* %height37, align 4, !tbaa !22
  %31 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub38 = sub nsw i32 %30, %31
  store i32 %sub38, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %do.body.32
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.end.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %32 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp47 = icmp sge i32 %32, 5
  br i1 %cmp47, label %if.then.49, label %if.else.195

if.then.49:                                       ; preds = %do.end.46
  %33 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp50 = icmp sle i32 %33, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.49
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %34 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %34, i32 0, i32 44
  %35 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %35, i32* %draster, align 4, !tbaa !5
  %36 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 52
  %38 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %38, i64 %idxprom
  %39 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %40 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %40, 5
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %41 = load i8, i8* %a, align 1, !tbaa !9
  %conv57 = zext i8 %41 to i32
  %42 = load i8, i8* %b, align 1, !tbaa !9
  %conv58 = zext i8 %42 to i32
  %cmp59 = icmp eq i32 %conv57, %conv58
  br i1 %cmp59, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.56
  %43 = load i8, i8* %b, align 1, !tbaa !9
  %conv61 = zext i8 %43 to i32
  %44 = load i8, i8* %c, align 1, !tbaa !9
  %conv62 = zext i8 %44 to i32
  %cmp63 = icmp eq i32 %conv61, %conv62
  br i1 %cmp63, label %land.lhs.true.65, label %if.else

land.lhs.true.65:                                 ; preds = %land.lhs.true
  %45 = load i8, i8* %c, align 1, !tbaa !9
  %conv66 = zext i8 %45 to i32
  %46 = load i8, i8* %d, align 1, !tbaa !9
  %conv67 = zext i8 %46 to i32
  %cmp68 = icmp eq i32 %conv66, %conv67
  br i1 %cmp68, label %land.lhs.true.70, label %if.else

land.lhs.true.70:                                 ; preds = %land.lhs.true.65
  %47 = load i8, i8* %d, align 1, !tbaa !9
  %conv71 = zext i8 %47 to i32
  %48 = load i8, i8* %e, align 1, !tbaa !9
  %conv72 = zext i8 %48 to i32
  %cmp73 = icmp eq i32 %conv71, %conv72
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %land.lhs.true.70
  %49 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul76 = mul nsw i32 %50, 5
  store i32 %mul76, i32* %bcnt, align 4, !tbaa !5
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.75
  br label %do.cond.78

do.cond.78:                                       ; preds = %do.body.77
  br label %do.end.79

do.end.79:                                        ; preds = %do.cond.78
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.79
  %51 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp80 = icmp sgt i32 %51, 0
  br i1 %cmp80, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i8*, i8** %dest, align 8, !tbaa !1
  %53 = load i8, i8* %a, align 1, !tbaa !9
  %conv82 = zext i8 %53 to i32
  %54 = load i32, i32* %bcnt, align 4, !tbaa !5
  %conv83 = sext i32 %54 to i64
  %call = call i8* @memset(i8* %52, i32 %conv82, i64 %conv83) #4
  %55 = load i8*, i8** %dest, align 8, !tbaa !1
  %56 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext84 = zext i32 %56 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %55, i64 %idx.ext84
  store i8* %add.ptr85, i8** %dest, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %57 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  br label %if.end.194

if.else:                                          ; preds = %land.lhs.true.70, %land.lhs.true.65, %land.lhs.true, %do.end.56
  %58 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub86 = sub nsw i32 0, %59
  %and = and i32 %sub86, 3
  store i32 %and, i32* %x3, align 4, !tbaa !5
  %60 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = load i32, i32* %w.addr, align 4, !tbaa !5
  %62 = load i32, i32* %x3, align 4, !tbaa !5
  %sub87 = sub nsw i32 %61, %62
  store i32 %sub87, i32* %ww, align 4, !tbaa !5
  %63 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = bitcast i32* %bcde to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = bitcast i32* %cdea to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = bitcast i32* %deab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = bitcast i32* %eabc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %68, i32 0, i32 55
  %abcde = getelementptr inbounds %struct._c40, %struct._c40* %color40, i32 0, i32 0
  %69 = load i64, i64* %abcde, align 8, !tbaa !35
  %70 = load i64, i64* %color.addr, align 8, !tbaa !7
  %cmp88 = icmp eq i64 %69, %70
  br i1 %cmp88, label %if.then.90, label %if.else.101

if.then.90:                                       ; preds = %if.else
  %71 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color4091 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %71, i32 0, i32 55
  %abcd92 = getelementptr inbounds %struct._c40, %struct._c40* %color4091, i32 0, i32 1
  %72 = load i32, i32* %abcd92, align 4, !tbaa !36
  store i32 %72, i32* %abcd, align 4, !tbaa !5
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color4093 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 55
  %bcde94 = getelementptr inbounds %struct._c40, %struct._c40* %color4093, i32 0, i32 2
  %74 = load i32, i32* %bcde94, align 4, !tbaa !37
  store i32 %74, i32* %bcde, align 4, !tbaa !5
  %75 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color4095 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %75, i32 0, i32 55
  %cdea96 = getelementptr inbounds %struct._c40, %struct._c40* %color4095, i32 0, i32 3
  %76 = load i32, i32* %cdea96, align 4, !tbaa !38
  store i32 %76, i32* %cdea, align 4, !tbaa !5
  %77 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color4097 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %77, i32 0, i32 55
  %deab98 = getelementptr inbounds %struct._c40, %struct._c40* %color4097, i32 0, i32 4
  %78 = load i32, i32* %deab98, align 4, !tbaa !39
  store i32 %78, i32* %deab, align 4, !tbaa !5
  %79 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color4099 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %79, i32 0, i32 55
  %eabc100 = getelementptr inbounds %struct._c40, %struct._c40* %color4099, i32 0, i32 5
  %80 = load i32, i32* %eabc100, align 4, !tbaa !40
  store i32 %80, i32* %eabc, align 4, !tbaa !5
  br label %if.end.139

if.else.101:                                      ; preds = %if.else
  br label %do.body.102

do.body.102:                                      ; preds = %if.else.101
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %81 = load i8, i8* %d, align 1, !tbaa !9
  %conv105 = zext i8 %81 to i32
  %shl = shl i32 %conv105, 24
  %82 = load i8, i8* %c, align 1, !tbaa !9
  %conv106 = zext i8 %82 to i32
  %shl107 = shl i32 %conv106, 16
  %or108 = or i32 %shl, %shl107
  %83 = load i8, i8* %b, align 1, !tbaa !9
  %conv109 = zext i8 %83 to i16
  %conv110 = zext i16 %conv109 to i32
  %shl111 = shl i32 %conv110, 8
  %or112 = or i32 %or108, %shl111
  %84 = load i8, i8* %a, align 1, !tbaa !9
  %conv113 = zext i8 %84 to i32
  %or114 = or i32 %or112, %conv113
  store i32 %or114, i32* %abcd, align 4, !tbaa !5
  %85 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40115 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %85, i32 0, i32 55
  %abcd116 = getelementptr inbounds %struct._c40, %struct._c40* %color40115, i32 0, i32 1
  store i32 %or114, i32* %abcd116, align 4, !tbaa !36
  %86 = load i32, i32* %abcd, align 4, !tbaa !5
  %shl117 = shl i32 %86, 8
  %87 = load i8, i8* %e, align 1, !tbaa !9
  %conv118 = zext i8 %87 to i32
  %or119 = or i32 %shl117, %conv118
  store i32 %or119, i32* %eabc, align 4, !tbaa !5
  %88 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40120 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %88, i32 0, i32 55
  %eabc121 = getelementptr inbounds %struct._c40, %struct._c40* %color40120, i32 0, i32 5
  store i32 %or119, i32* %eabc121, align 4, !tbaa !40
  %89 = load i32, i32* %eabc, align 4, !tbaa !5
  %shl122 = shl i32 %89, 8
  %90 = load i8, i8* %d, align 1, !tbaa !9
  %conv123 = zext i8 %90 to i32
  %or124 = or i32 %shl122, %conv123
  store i32 %or124, i32* %deab, align 4, !tbaa !5
  %91 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40125 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %91, i32 0, i32 55
  %deab126 = getelementptr inbounds %struct._c40, %struct._c40* %color40125, i32 0, i32 4
  store i32 %or124, i32* %deab126, align 4, !tbaa !39
  %92 = load i32, i32* %deab, align 4, !tbaa !5
  %shl127 = shl i32 %92, 8
  %93 = load i8, i8* %c, align 1, !tbaa !9
  %conv128 = zext i8 %93 to i32
  %or129 = or i32 %shl127, %conv128
  store i32 %or129, i32* %cdea, align 4, !tbaa !5
  %94 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40130 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %94, i32 0, i32 55
  %cdea131 = getelementptr inbounds %struct._c40, %struct._c40* %color40130, i32 0, i32 3
  store i32 %or129, i32* %cdea131, align 4, !tbaa !38
  %95 = load i32, i32* %cdea, align 4, !tbaa !5
  %shl132 = shl i32 %95, 8
  %96 = load i8, i8* %b, align 1, !tbaa !9
  %conv133 = zext i8 %96 to i32
  %or134 = or i32 %shl132, %conv133
  store i32 %or134, i32* %bcde, align 4, !tbaa !5
  %97 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40135 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %97, i32 0, i32 55
  %bcde136 = getelementptr inbounds %struct._c40, %struct._c40* %color40135, i32 0, i32 2
  store i32 %or134, i32* %bcde136, align 4, !tbaa !37
  %98 = load i64, i64* %color.addr, align 8, !tbaa !7
  %99 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color40137 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %99, i32 0, i32 55
  %abcde138 = getelementptr inbounds %struct._c40, %struct._c40* %color40137, i32 0, i32 0
  store i64 %98, i64* %abcde138, align 8, !tbaa !35
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.104, %if.then.90
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.139
  br label %do.cond.141

do.cond.141:                                      ; preds = %do.body.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  br label %while.cond.143

while.cond.143:                                   ; preds = %sw.epilog.190, %do.end.142
  %100 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec144 = add nsw i32 %100, -1
  store i32 %dec144, i32* %h.addr, align 4, !tbaa !5
  %cmp145 = icmp sgt i32 %100, 0
  br i1 %cmp145, label %while.body.147, label %while.end.193

while.body.147:                                   ; preds = %while.cond.143
  %101 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #2
  %102 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %102, i8** %pptr, align 8, !tbaa !1
  %103 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  %104 = load i32, i32* %ww, align 4, !tbaa !5
  store i32 %104, i32* %w1, align 4, !tbaa !5
  %105 = load i32, i32* %x3, align 4, !tbaa !5
  switch i32 %105, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.151
    i32 3, label %sw.bb.157
    i32 0, label %sw.bb.165
  ]

sw.bb:                                            ; preds = %while.body.147
  %106 = load i8, i8* %a, align 1, !tbaa !9
  %107 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %106, i8* %arrayidx148, align 1, !tbaa !9
  %108 = load i32, i32* %bcde, align 4, !tbaa !5
  %109 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr149 = getelementptr inbounds i8, i8* %109, i64 1
  %110 = bitcast i8* %add.ptr149 to i32*
  store i32 %108, i32* %110, align 4, !tbaa !5
  %111 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr150 = getelementptr inbounds i8, i8* %111, i64 5
  store i8* %add.ptr150, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.151:                                        ; preds = %while.body.147
  %112 = load i8, i8* %a, align 1, !tbaa !9
  %113 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %112, i8* %arrayidx152, align 1, !tbaa !9
  %114 = load i8, i8* %b, align 1, !tbaa !9
  %115 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %114, i8* %arrayidx153, align 1, !tbaa !9
  %116 = load i32, i32* %cdea, align 4, !tbaa !5
  %117 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr154 = getelementptr inbounds i8, i8* %117, i64 2
  %118 = bitcast i8* %add.ptr154 to i32*
  store i32 %116, i32* %118, align 4, !tbaa !5
  %119 = load i32, i32* %bcde, align 4, !tbaa !5
  %120 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr155 = getelementptr inbounds i8, i8* %120, i64 6
  %121 = bitcast i8* %add.ptr155 to i32*
  store i32 %119, i32* %121, align 4, !tbaa !5
  %122 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds i8, i8* %122, i64 10
  store i8* %add.ptr156, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.157:                                        ; preds = %while.body.147
  %123 = load i8, i8* %a, align 1, !tbaa !9
  %124 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds i8, i8* %124, i64 0
  store i8 %123, i8* %arrayidx158, align 1, !tbaa !9
  %125 = load i8, i8* %b, align 1, !tbaa !9
  %126 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds i8, i8* %126, i64 1
  store i8 %125, i8* %arrayidx159, align 1, !tbaa !9
  %127 = load i8, i8* %c, align 1, !tbaa !9
  %128 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i8, i8* %128, i64 2
  store i8 %127, i8* %arrayidx160, align 1, !tbaa !9
  %129 = load i32, i32* %deab, align 4, !tbaa !5
  %130 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr161 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = bitcast i8* %add.ptr161 to i32*
  store i32 %129, i32* %131, align 4, !tbaa !5
  %132 = load i32, i32* %cdea, align 4, !tbaa !5
  %133 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr162 = getelementptr inbounds i8, i8* %133, i64 7
  %134 = bitcast i8* %add.ptr162 to i32*
  store i32 %132, i32* %134, align 4, !tbaa !5
  %135 = load i32, i32* %bcde, align 4, !tbaa !5
  %136 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr163 = getelementptr inbounds i8, i8* %136, i64 11
  %137 = bitcast i8* %add.ptr163 to i32*
  store i32 %135, i32* %137, align 4, !tbaa !5
  %138 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr164 = getelementptr inbounds i8, i8* %138, i64 15
  store i8* %add.ptr164, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.165:                                        ; preds = %while.body.147
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.165, %while.body.147, %sw.bb.157, %sw.bb.151, %sw.bb
  br label %while.cond.166

while.cond.166:                                   ; preds = %while.body.169, %sw.epilog
  %139 = load i32, i32* %w1, align 4, !tbaa !5
  %cmp167 = icmp sge i32 %139, 4
  br i1 %cmp167, label %while.body.169, label %while.end.176

while.body.169:                                   ; preds = %while.cond.166
  %140 = load i32, i32* %abcd, align 4, !tbaa !5
  %141 = load i8*, i8** %pptr, align 8, !tbaa !1
  %142 = bitcast i8* %141 to i32*
  store i32 %140, i32* %142, align 4, !tbaa !5
  %143 = load i32, i32* %eabc, align 4, !tbaa !5
  %144 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr170 = getelementptr inbounds i8, i8* %144, i64 4
  %145 = bitcast i8* %add.ptr170 to i32*
  store i32 %143, i32* %145, align 4, !tbaa !5
  %146 = load i32, i32* %deab, align 4, !tbaa !5
  %147 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr171 = getelementptr inbounds i8, i8* %147, i64 8
  %148 = bitcast i8* %add.ptr171 to i32*
  store i32 %146, i32* %148, align 4, !tbaa !5
  %149 = load i32, i32* %cdea, align 4, !tbaa !5
  %150 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr172 = getelementptr inbounds i8, i8* %150, i64 12
  %151 = bitcast i8* %add.ptr172 to i32*
  store i32 %149, i32* %151, align 4, !tbaa !5
  %152 = load i32, i32* %bcde, align 4, !tbaa !5
  %153 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr173 = getelementptr inbounds i8, i8* %153, i64 16
  %154 = bitcast i8* %add.ptr173 to i32*
  store i32 %152, i32* %154, align 4, !tbaa !5
  %155 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr174 = getelementptr inbounds i8, i8* %155, i64 20
  store i8* %add.ptr174, i8** %pptr, align 8, !tbaa !1
  %156 = load i32, i32* %w1, align 4, !tbaa !5
  %sub175 = sub nsw i32 %156, 4
  store i32 %sub175, i32* %w1, align 4, !tbaa !5
  br label %while.cond.166

while.end.176:                                    ; preds = %while.cond.166
  %157 = load i32, i32* %w1, align 4, !tbaa !5
  switch i32 %157, label %sw.epilog.190 [
    i32 1, label %sw.bb.177
    i32 2, label %sw.bb.179
    i32 3, label %sw.bb.183
    i32 0, label %sw.bb.189
  ]

sw.bb.177:                                        ; preds = %while.end.176
  %158 = load i32, i32* %abcd, align 4, !tbaa !5
  %159 = load i8*, i8** %pptr, align 8, !tbaa !1
  %160 = bitcast i8* %159 to i32*
  store i32 %158, i32* %160, align 4, !tbaa !5
  %161 = load i8, i8* %e, align 1, !tbaa !9
  %162 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds i8, i8* %162, i64 4
  store i8 %161, i8* %arrayidx178, align 1, !tbaa !9
  br label %sw.epilog.190

sw.bb.179:                                        ; preds = %while.end.176
  %163 = load i32, i32* %abcd, align 4, !tbaa !5
  %164 = load i8*, i8** %pptr, align 8, !tbaa !1
  %165 = bitcast i8* %164 to i32*
  store i32 %163, i32* %165, align 4, !tbaa !5
  %166 = load i32, i32* %eabc, align 4, !tbaa !5
  %167 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr180 = getelementptr inbounds i8, i8* %167, i64 4
  %168 = bitcast i8* %add.ptr180 to i32*
  store i32 %166, i32* %168, align 4, !tbaa !5
  %169 = load i8, i8* %d, align 1, !tbaa !9
  %170 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %170, i64 8
  store i8 %169, i8* %arrayidx181, align 1, !tbaa !9
  %171 = load i8, i8* %e, align 1, !tbaa !9
  %172 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %172, i64 9
  store i8 %171, i8* %arrayidx182, align 1, !tbaa !9
  br label %sw.epilog.190

sw.bb.183:                                        ; preds = %while.end.176
  %173 = load i32, i32* %abcd, align 4, !tbaa !5
  %174 = load i8*, i8** %pptr, align 8, !tbaa !1
  %175 = bitcast i8* %174 to i32*
  store i32 %173, i32* %175, align 4, !tbaa !5
  %176 = load i32, i32* %eabc, align 4, !tbaa !5
  %177 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr184 = getelementptr inbounds i8, i8* %177, i64 4
  %178 = bitcast i8* %add.ptr184 to i32*
  store i32 %176, i32* %178, align 4, !tbaa !5
  %179 = load i32, i32* %deab, align 4, !tbaa !5
  %180 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr185 = getelementptr inbounds i8, i8* %180, i64 8
  %181 = bitcast i8* %add.ptr185 to i32*
  store i32 %179, i32* %181, align 4, !tbaa !5
  %182 = load i8, i8* %c, align 1, !tbaa !9
  %183 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx186 = getelementptr inbounds i8, i8* %183, i64 12
  store i8 %182, i8* %arrayidx186, align 1, !tbaa !9
  %184 = load i8, i8* %d, align 1, !tbaa !9
  %185 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %185, i64 13
  store i8 %184, i8* %arrayidx187, align 1, !tbaa !9
  %186 = load i8, i8* %e, align 1, !tbaa !9
  %187 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %187, i64 14
  store i8 %186, i8* %arrayidx188, align 1, !tbaa !9
  br label %sw.epilog.190

sw.bb.189:                                        ; preds = %while.end.176
  br label %sw.epilog.190

sw.epilog.190:                                    ; preds = %sw.bb.189, %while.end.176, %sw.bb.183, %sw.bb.179, %sw.bb.177
  %188 = load i8*, i8** %dest, align 8, !tbaa !1
  %189 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext191 = zext i32 %189 to i64
  %add.ptr192 = getelementptr inbounds i8, i8* %188, i64 %idx.ext191
  store i8* %add.ptr192, i8** %dest, align 8, !tbaa !1
  %190 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #2
  %191 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #2
  br label %while.cond.143

while.end.193:                                    ; preds = %while.cond.143
  %192 = bitcast i32* %eabc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #2
  %193 = bitcast i32* %deab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #2
  %194 = bitcast i32* %cdea to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #2
  %195 = bitcast i32* %bcde to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #2
  %196 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = bitcast i32* %x3 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  br label %if.end.194

if.end.194:                                       ; preds = %while.end.193, %while.end
  br label %if.end.293

if.else.195:                                      ; preds = %do.end.46
  %199 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp196 = icmp sgt i32 %199, 0
  br i1 %cmp196, label %if.then.198, label %if.end.292

if.then.198:                                      ; preds = %if.else.195
  br label %do.body.199

do.body.199:                                      ; preds = %if.then.198
  br label %do.cond.200

do.cond.200:                                      ; preds = %do.body.199
  br label %do.end.201

do.end.201:                                       ; preds = %do.cond.200
  %200 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster202 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %200, i32 0, i32 44
  %201 = load i32, i32* %raster202, align 4, !tbaa !23
  store i32 %201, i32* %draster, align 4, !tbaa !5
  %202 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom203 = sext i32 %202 to i64
  %203 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs204 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %203, i32 0, i32 52
  %204 = load i8**, i8*** %line_ptrs204, align 8, !tbaa !34
  %arrayidx205 = getelementptr inbounds i8*, i8** %204, i64 %idxprom203
  %205 = load i8*, i8** %arrayidx205, align 8, !tbaa !1
  %206 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul206 = mul nsw i32 %206, 5
  %idx.ext207 = sext i32 %mul206 to i64
  %add.ptr208 = getelementptr inbounds i8, i8* %205, i64 %idx.ext207
  store i8* %add.ptr208, i8** %dest, align 8, !tbaa !1
  %207 = load i32, i32* %w.addr, align 4, !tbaa !5
  switch i32 %207, label %sw.default [
    i32 4, label %sw.bb.209
    i32 3, label %sw.bb.236
    i32 2, label %sw.bb.259
    i32 1, label %sw.bb.277
    i32 0, label %sw.bb.290
  ]

sw.bb.209:                                        ; preds = %do.end.201
  br label %do.body.210

do.body.210:                                      ; preds = %do.cond.233, %sw.bb.209
  %208 = load i8, i8* %a, align 1, !tbaa !9
  %209 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds i8, i8* %209, i64 0
  store i8 %208, i8* %arrayidx211, align 1, !tbaa !9
  %210 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds i8, i8* %210, i64 5
  store i8 %208, i8* %arrayidx212, align 1, !tbaa !9
  %211 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds i8, i8* %211, i64 10
  store i8 %208, i8* %arrayidx213, align 1, !tbaa !9
  %212 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx214 = getelementptr inbounds i8, i8* %212, i64 15
  store i8 %208, i8* %arrayidx214, align 1, !tbaa !9
  %213 = load i8, i8* %b, align 1, !tbaa !9
  %214 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds i8, i8* %214, i64 1
  store i8 %213, i8* %arrayidx215, align 1, !tbaa !9
  %215 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds i8, i8* %215, i64 6
  store i8 %213, i8* %arrayidx216, align 1, !tbaa !9
  %216 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds i8, i8* %216, i64 11
  store i8 %213, i8* %arrayidx217, align 1, !tbaa !9
  %217 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %217, i64 16
  store i8 %213, i8* %arrayidx218, align 1, !tbaa !9
  %218 = load i8, i8* %c, align 1, !tbaa !9
  %219 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %219, i64 2
  store i8 %218, i8* %arrayidx219, align 1, !tbaa !9
  %220 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %220, i64 7
  store i8 %218, i8* %arrayidx220, align 1, !tbaa !9
  %221 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %221, i64 12
  store i8 %218, i8* %arrayidx221, align 1, !tbaa !9
  %222 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i8, i8* %222, i64 17
  store i8 %218, i8* %arrayidx222, align 1, !tbaa !9
  %223 = load i8, i8* %d, align 1, !tbaa !9
  %224 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %224, i64 3
  store i8 %223, i8* %arrayidx223, align 1, !tbaa !9
  %225 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %225, i64 8
  store i8 %223, i8* %arrayidx224, align 1, !tbaa !9
  %226 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i8, i8* %226, i64 13
  store i8 %223, i8* %arrayidx225, align 1, !tbaa !9
  %227 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i8, i8* %227, i64 18
  store i8 %223, i8* %arrayidx226, align 1, !tbaa !9
  %228 = load i8, i8* %e, align 1, !tbaa !9
  %229 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i8, i8* %229, i64 4
  store i8 %228, i8* %arrayidx227, align 1, !tbaa !9
  %230 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %230, i64 9
  store i8 %228, i8* %arrayidx228, align 1, !tbaa !9
  %231 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %231, i64 14
  store i8 %228, i8* %arrayidx229, align 1, !tbaa !9
  %232 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i8, i8* %232, i64 19
  store i8 %228, i8* %arrayidx230, align 1, !tbaa !9
  %233 = load i8*, i8** %dest, align 8, !tbaa !1
  %234 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext231 = zext i32 %234 to i64
  %add.ptr232 = getelementptr inbounds i8, i8* %233, i64 %idx.ext231
  store i8* %add.ptr232, i8** %dest, align 8, !tbaa !1
  br label %do.cond.233

do.cond.233:                                      ; preds = %do.body.210
  %235 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec234 = add nsw i32 %235, -1
  store i32 %dec234, i32* %h.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec234, 0
  br i1 %tobool, label %do.body.210, label %do.end.235

do.end.235:                                       ; preds = %do.cond.233
  br label %sw.epilog.291

sw.bb.236:                                        ; preds = %do.end.201
  br label %do.body.237

do.body.237:                                      ; preds = %do.cond.255, %sw.bb.236
  %236 = load i8, i8* %a, align 1, !tbaa !9
  %237 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds i8, i8* %237, i64 0
  store i8 %236, i8* %arrayidx238, align 1, !tbaa !9
  %238 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds i8, i8* %238, i64 5
  store i8 %236, i8* %arrayidx239, align 1, !tbaa !9
  %239 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx240 = getelementptr inbounds i8, i8* %239, i64 10
  store i8 %236, i8* %arrayidx240, align 1, !tbaa !9
  %240 = load i8, i8* %b, align 1, !tbaa !9
  %241 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds i8, i8* %241, i64 1
  store i8 %240, i8* %arrayidx241, align 1, !tbaa !9
  %242 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i8, i8* %242, i64 6
  store i8 %240, i8* %arrayidx242, align 1, !tbaa !9
  %243 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8, i8* %243, i64 11
  store i8 %240, i8* %arrayidx243, align 1, !tbaa !9
  %244 = load i8, i8* %c, align 1, !tbaa !9
  %245 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i8, i8* %245, i64 2
  store i8 %244, i8* %arrayidx244, align 1, !tbaa !9
  %246 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %246, i64 7
  store i8 %244, i8* %arrayidx245, align 1, !tbaa !9
  %247 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %247, i64 12
  store i8 %244, i8* %arrayidx246, align 1, !tbaa !9
  %248 = load i8, i8* %d, align 1, !tbaa !9
  %249 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds i8, i8* %249, i64 3
  store i8 %248, i8* %arrayidx247, align 1, !tbaa !9
  %250 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %250, i64 8
  store i8 %248, i8* %arrayidx248, align 1, !tbaa !9
  %251 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %251, i64 13
  store i8 %248, i8* %arrayidx249, align 1, !tbaa !9
  %252 = load i8, i8* %e, align 1, !tbaa !9
  %253 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %253, i64 4
  store i8 %252, i8* %arrayidx250, align 1, !tbaa !9
  %254 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %254, i64 9
  store i8 %252, i8* %arrayidx251, align 1, !tbaa !9
  %255 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %255, i64 14
  store i8 %252, i8* %arrayidx252, align 1, !tbaa !9
  %256 = load i8*, i8** %dest, align 8, !tbaa !1
  %257 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext253 = zext i32 %257 to i64
  %add.ptr254 = getelementptr inbounds i8, i8* %256, i64 %idx.ext253
  store i8* %add.ptr254, i8** %dest, align 8, !tbaa !1
  br label %do.cond.255

do.cond.255:                                      ; preds = %do.body.237
  %258 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec256 = add nsw i32 %258, -1
  store i32 %dec256, i32* %h.addr, align 4, !tbaa !5
  %tobool257 = icmp ne i32 %dec256, 0
  br i1 %tobool257, label %do.body.237, label %do.end.258

do.end.258:                                       ; preds = %do.cond.255
  br label %sw.epilog.291

sw.bb.259:                                        ; preds = %do.end.201
  br label %do.body.260

do.body.260:                                      ; preds = %do.cond.273, %sw.bb.259
  %259 = load i8, i8* %a, align 1, !tbaa !9
  %260 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds i8, i8* %260, i64 0
  store i8 %259, i8* %arrayidx261, align 1, !tbaa !9
  %261 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds i8, i8* %261, i64 5
  store i8 %259, i8* %arrayidx262, align 1, !tbaa !9
  %262 = load i8, i8* %b, align 1, !tbaa !9
  %263 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i8, i8* %263, i64 1
  store i8 %262, i8* %arrayidx263, align 1, !tbaa !9
  %264 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i8, i8* %264, i64 6
  store i8 %262, i8* %arrayidx264, align 1, !tbaa !9
  %265 = load i8, i8* %c, align 1, !tbaa !9
  %266 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i8, i8* %266, i64 2
  store i8 %265, i8* %arrayidx265, align 1, !tbaa !9
  %267 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %267, i64 7
  store i8 %265, i8* %arrayidx266, align 1, !tbaa !9
  %268 = load i8, i8* %d, align 1, !tbaa !9
  %269 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %269, i64 3
  store i8 %268, i8* %arrayidx267, align 1, !tbaa !9
  %270 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i8, i8* %270, i64 8
  store i8 %268, i8* %arrayidx268, align 1, !tbaa !9
  %271 = load i8, i8* %e, align 1, !tbaa !9
  %272 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %272, i64 4
  store i8 %271, i8* %arrayidx269, align 1, !tbaa !9
  %273 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx270 = getelementptr inbounds i8, i8* %273, i64 9
  store i8 %271, i8* %arrayidx270, align 1, !tbaa !9
  %274 = load i8*, i8** %dest, align 8, !tbaa !1
  %275 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext271 = zext i32 %275 to i64
  %add.ptr272 = getelementptr inbounds i8, i8* %274, i64 %idx.ext271
  store i8* %add.ptr272, i8** %dest, align 8, !tbaa !1
  br label %do.cond.273

do.cond.273:                                      ; preds = %do.body.260
  %276 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec274 = add nsw i32 %276, -1
  store i32 %dec274, i32* %h.addr, align 4, !tbaa !5
  %tobool275 = icmp ne i32 %dec274, 0
  br i1 %tobool275, label %do.body.260, label %do.end.276

do.end.276:                                       ; preds = %do.cond.273
  br label %sw.epilog.291

sw.bb.277:                                        ; preds = %do.end.201
  br label %do.body.278

do.body.278:                                      ; preds = %do.cond.286, %sw.bb.277
  %277 = load i8, i8* %a, align 1, !tbaa !9
  %278 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx279 = getelementptr inbounds i8, i8* %278, i64 0
  store i8 %277, i8* %arrayidx279, align 1, !tbaa !9
  %279 = load i8, i8* %b, align 1, !tbaa !9
  %280 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i8, i8* %280, i64 1
  store i8 %279, i8* %arrayidx280, align 1, !tbaa !9
  %281 = load i8, i8* %c, align 1, !tbaa !9
  %282 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds i8, i8* %282, i64 2
  store i8 %281, i8* %arrayidx281, align 1, !tbaa !9
  %283 = load i8, i8* %d, align 1, !tbaa !9
  %284 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds i8, i8* %284, i64 3
  store i8 %283, i8* %arrayidx282, align 1, !tbaa !9
  %285 = load i8, i8* %e, align 1, !tbaa !9
  %286 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds i8, i8* %286, i64 4
  store i8 %285, i8* %arrayidx283, align 1, !tbaa !9
  %287 = load i8*, i8** %dest, align 8, !tbaa !1
  %288 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext284 = zext i32 %288 to i64
  %add.ptr285 = getelementptr inbounds i8, i8* %287, i64 %idx.ext284
  store i8* %add.ptr285, i8** %dest, align 8, !tbaa !1
  br label %do.cond.286

do.cond.286:                                      ; preds = %do.body.278
  %289 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec287 = add nsw i32 %289, -1
  store i32 %dec287, i32* %h.addr, align 4, !tbaa !5
  %tobool288 = icmp ne i32 %dec287, 0
  br i1 %tobool288, label %do.body.278, label %do.end.289

do.end.289:                                       ; preds = %do.cond.286
  br label %sw.epilog.291

sw.bb.290:                                        ; preds = %do.end.201
  br label %sw.default

sw.default:                                       ; preds = %do.end.201, %sw.bb.290
  br label %sw.epilog.291

sw.epilog.291:                                    ; preds = %sw.default, %do.end.289, %do.end.276, %do.end.258, %do.end.235
  br label %if.end.292

if.end.292:                                       ; preds = %sw.epilog.291, %if.else.195
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.end.194
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.293, %if.then.52
  %290 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #2
  %291 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #2
  call void @llvm.lifetime.end(i64 1, i8* %e) #2
  call void @llvm.lifetime.end(i64 1, i8* %d) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  call void @llvm.lifetime.end(i64 1, i8* %a) #2
  %292 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %292) #2
  %293 = load i32, i32* %retval
  ret i32 %293
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true40_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %a1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %d1 = alloca i8, align 1
  %e1 = alloca i8, align 1
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  %a1102 = alloca i8, align 1
  %b1106 = alloca i8, align 1
  %c1110 = alloca i8, align 1
  %d1114 = alloca i8, align 1
  %e1118 = alloca i8, align 1
  %first_mask = alloca i32, align 4
  %first_count = alloca i32, align 4
  %first_skip = alloca i32, align 4
  %pptr136 = alloca i8*, align 8
  %sptr137 = alloca i8*, align 8
  %sbyte138 = alloca i32, align 4
  %count142 = alloca i32, align 4
  %bit146 = alloca i32, align 4
  %bit294 = alloca i32, align 4
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
  %mul27 = mul nsw i32 %43, 5
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
  br i1 %cmp33, label %if.then.34, label %if.else.98

if.then.34:                                       ; preds = %do.end.26
  call void @llvm.lifetime.start(i64 1, i8* %a0) #2
  %49 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr35 = lshr i64 %49, 16
  %shr36 = lshr i64 %shr35, 16
  %conv = trunc i64 %shr36 to i8
  store i8 %conv, i8* %a0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  %50 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv37 = trunc i64 %50 to i32
  %shr38 = lshr i32 %conv37, 24
  %conv39 = trunc i32 %shr38 to i8
  store i8 %conv39, i8* %b0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c0) #2
  %51 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv40 = trunc i64 %51 to i32
  %shr41 = lshr i32 %conv40, 16
  %conv42 = trunc i32 %shr41 to i8
  store i8 %conv42, i8* %c0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d0) #2
  %52 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv43 = trunc i64 %52 to i32
  %shr44 = lshr i32 %conv43, 8
  %conv45 = trunc i32 %shr44 to i8
  store i8 %conv45, i8* %d0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e0) #2
  %53 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv46 = trunc i64 %53 to i8
  store i8 %conv46, i8* %e0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %a1) #2
  %54 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr47 = lshr i64 %54, 16
  %shr48 = lshr i64 %shr47, 16
  %conv49 = trunc i64 %shr48 to i8
  store i8 %conv49, i8* %a1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  %55 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv50 = trunc i64 %55 to i32
  %shr51 = lshr i32 %conv50, 24
  %conv52 = trunc i32 %shr51 to i8
  store i8 %conv52, i8* %b1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c1) #2
  %56 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv53 = trunc i64 %56 to i32
  %shr54 = lshr i32 %conv53, 16
  %conv55 = trunc i32 %shr54 to i8
  store i8 %conv55, i8* %c1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d1) #2
  %57 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv56 = trunc i64 %57 to i32
  %shr57 = lshr i32 %conv56, 8
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %d1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e1) #2
  %58 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv59 = trunc i64 %58 to i8
  store i8 %conv59, i8* %e1, align 1, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %do.end.93, %if.then.34
  %59 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %59, 0
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %61 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %61, i8** %pptr, align 8, !tbaa !1
  %62 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %63, i8** %sptr, align 8, !tbaa !1
  %64 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %66 = load i8, i8* %65, align 1, !tbaa !9
  %conv62 = zext i8 %66 to i32
  store i32 %conv62, i32* %sbyte, align 4, !tbaa !5
  %67 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %68, i32* %bit, align 4, !tbaa !5
  %69 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %70, i32* %count, align 4, !tbaa !5
  br label %do.body.63

do.body.63:                                       ; preds = %do.cond.89, %while.body
  %71 = load i32, i32* %sbyte, align 4, !tbaa !5
  %72 = load i32, i32* %bit, align 4, !tbaa !5
  %and64 = and i32 %71, %72
  %tobool = icmp ne i32 %and64, 0
  br i1 %tobool, label %if.then.65, label %if.else

if.then.65:                                       ; preds = %do.body.63
  %73 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp66 = icmp ne i64 %73, -1
  br i1 %cmp66, label %if.then.68, label %if.end.74

if.then.68:                                       ; preds = %if.then.65
  %74 = load i8, i8* %a1, align 1, !tbaa !9
  %75 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds i8, i8* %75, i64 0
  store i8 %74, i8* %arrayidx69, align 1, !tbaa !9
  %76 = load i8, i8* %b1, align 1, !tbaa !9
  %77 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %76, i8* %arrayidx70, align 1, !tbaa !9
  %78 = load i8, i8* %c1, align 1, !tbaa !9
  %79 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %79, i64 2
  store i8 %78, i8* %arrayidx71, align 1, !tbaa !9
  %80 = load i8, i8* %d1, align 1, !tbaa !9
  %81 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds i8, i8* %81, i64 3
  store i8 %80, i8* %arrayidx72, align 1, !tbaa !9
  %82 = load i8, i8* %e1, align 1, !tbaa !9
  %83 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %83, i64 4
  store i8 %82, i8* %arrayidx73, align 1, !tbaa !9
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.68, %if.then.65
  br label %if.end.80

if.else:                                          ; preds = %do.body.63
  %84 = load i8, i8* %a0, align 1, !tbaa !9
  %85 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %85, i64 0
  store i8 %84, i8* %arrayidx75, align 1, !tbaa !9
  %86 = load i8, i8* %b0, align 1, !tbaa !9
  %87 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %arrayidx76, align 1, !tbaa !9
  %88 = load i8, i8* %c0, align 1, !tbaa !9
  %89 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %88, i8* %arrayidx77, align 1, !tbaa !9
  %90 = load i8, i8* %d0, align 1, !tbaa !9
  %91 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %91, i64 3
  store i8 %90, i8* %arrayidx78, align 1, !tbaa !9
  %92 = load i8, i8* %e0, align 1, !tbaa !9
  %93 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %93, i64 4
  store i8 %92, i8* %arrayidx79, align 1, !tbaa !9
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.end.74
  %94 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr81 = getelementptr inbounds i8, i8* %94, i64 5
  store i8* %add.ptr81, i8** %pptr, align 8, !tbaa !1
  %95 = load i32, i32* %bit, align 4, !tbaa !5
  %shr82 = ashr i32 %95, 1
  store i32 %shr82, i32* %bit, align 4, !tbaa !5
  %cmp83 = icmp eq i32 %shr82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.end.80
  store i32 128, i32* %bit, align 4, !tbaa !5
  %96 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr86 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr86, i8** %sptr, align 8, !tbaa !1
  %97 = load i8, i8* %96, align 1, !tbaa !9
  %conv87 = zext i8 %97 to i32
  store i32 %conv87, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.end.80
  br label %do.cond.89

do.cond.89:                                       ; preds = %if.end.88
  %98 = load i32, i32* %count, align 4, !tbaa !5
  %dec90 = add nsw i32 %98, -1
  store i32 %dec90, i32* %count, align 4, !tbaa !5
  %cmp91 = icmp sgt i32 %dec90, 0
  br i1 %cmp91, label %do.body.63, label %do.end.93

do.end.93:                                        ; preds = %do.cond.89
  %99 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %100 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext94 = sext i32 %99 to i64
  %add.ptr95 = getelementptr inbounds i8, i8* %100, i64 %idx.ext94
  store i8* %add.ptr95, i8** %line, align 8, !tbaa !1
  %101 = load i8*, i8** %dest, align 8, !tbaa !1
  %102 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext96 = zext i32 %102 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %101, i64 %idx.ext96
  store i8* %add.ptr97, i8** %dest, align 8, !tbaa !1
  %103 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #2
  %106 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  %107 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %e1) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %a1) #2
  call void @llvm.lifetime.end(i64 1, i8* %e0) #2
  call void @llvm.lifetime.end(i64 1, i8* %d0) #2
  call void @llvm.lifetime.end(i64 1, i8* %c0) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  call void @llvm.lifetime.end(i64 1, i8* %a0) #2
  br label %if.end.321

if.else.98:                                       ; preds = %do.end.26
  %108 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp99 = icmp ne i64 %108, -1
  br i1 %cmp99, label %if.then.101, label %if.end.320

if.then.101:                                      ; preds = %if.else.98
  call void @llvm.lifetime.start(i64 1, i8* %a1102) #2
  %109 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr103 = lshr i64 %109, 16
  %shr104 = lshr i64 %shr103, 16
  %conv105 = trunc i64 %shr104 to i8
  store i8 %conv105, i8* %a1102, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1106) #2
  %110 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv107 = trunc i64 %110 to i32
  %shr108 = lshr i32 %conv107, 24
  %conv109 = trunc i32 %shr108 to i8
  store i8 %conv109, i8* %b1106, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c1110) #2
  %111 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv111 = trunc i64 %111 to i32
  %shr112 = lshr i32 %conv111, 16
  %conv113 = trunc i32 %shr112 to i8
  store i8 %conv113, i8* %c1110, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d1114) #2
  %112 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv115 = trunc i64 %112 to i32
  %shr116 = lshr i32 %conv115, 8
  %conv117 = trunc i32 %shr116 to i8
  store i8 %conv117, i8* %d1114, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e1118) #2
  %113 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv119 = trunc i64 %113 to i8
  store i8 %conv119, i8* %e1118, align 1, !tbaa !9
  %114 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %114) #2
  %115 = load i32, i32* %first_bit, align 4, !tbaa !5
  %shl = shl i32 %115, 1
  store i32 %shl, i32* %first_mask, align 4, !tbaa !5
  %116 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #2
  %117 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #2
  %118 = load i32, i32* %sbit, align 4, !tbaa !5
  %119 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add120 = add nsw i32 %118, %119
  %cmp121 = icmp sgt i32 %add120, 8
  br i1 %cmp121, label %if.then.123, label %if.else.126

if.then.123:                                      ; preds = %if.then.101
  %120 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub124 = sub nsw i32 %120, 1
  store i32 %sub124, i32* %first_mask, align 4, !tbaa !5
  %121 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub125 = sub nsw i32 8, %121
  store i32 %sub125, i32* %first_count, align 4, !tbaa !5
  br label %if.end.129

if.else.126:                                      ; preds = %if.then.101
  %122 = load i32, i32* %first_mask, align 4, !tbaa !5
  %123 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shr127 = ashr i32 %122, %123
  %124 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub128 = sub nsw i32 %124, %shr127
  store i32 %sub128, i32* %first_mask, align 4, !tbaa !5
  %125 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %125, i32* %first_count, align 4, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.123
  %126 = load i32, i32* %first_count, align 4, !tbaa !5
  %mul130 = mul nsw i32 %126, 5
  store i32 %mul130, i32* %first_skip, align 4, !tbaa !5
  br label %while.cond.131

while.cond.131:                                   ; preds = %if.end.314, %if.end.129
  %127 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec132 = add nsw i32 %127, -1
  store i32 %dec132, i32* %h.addr, align 4, !tbaa !5
  %cmp133 = icmp sgt i32 %127, 0
  br i1 %cmp133, label %while.body.135, label %while.end.319

while.body.135:                                   ; preds = %while.cond.131
  %128 = bitcast i8** %pptr136 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %128) #2
  %129 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %129, i8** %pptr136, align 8, !tbaa !1
  %130 = bitcast i8** %sptr137 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #2
  %131 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %131, i8** %sptr137, align 8, !tbaa !1
  %132 = bitcast i32* %sbyte138 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #2
  %133 = load i8*, i8** %sptr137, align 8, !tbaa !1
  %incdec.ptr139 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %incdec.ptr139, i8** %sptr137, align 8, !tbaa !1
  %134 = load i8, i8* %133, align 1, !tbaa !9
  %conv140 = zext i8 %134 to i32
  %135 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and141 = and i32 %conv140, %135
  store i32 %and141, i32* %sbyte138, align 4, !tbaa !5
  %136 = bitcast i32* %count142 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #2
  %137 = load i32, i32* %w.addr, align 4, !tbaa !5
  %138 = load i32, i32* %first_count, align 4, !tbaa !5
  %sub143 = sub nsw i32 %137, %138
  store i32 %sub143, i32* %count142, align 4, !tbaa !5
  %139 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %tobool144 = icmp ne i32 %139, 0
  br i1 %tobool144, label %if.then.145, label %if.else.163

if.then.145:                                      ; preds = %while.body.135
  %140 = bitcast i32* %bit146 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #2
  %141 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %141, i32* %bit146, align 4, !tbaa !5
  br label %do.body.147

do.body.147:                                      ; preds = %do.cond.158, %if.then.145
  %142 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %143 = load i32, i32* %bit146, align 4, !tbaa !5
  %and148 = and i32 %142, %143
  %tobool149 = icmp ne i32 %and148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.156

if.then.150:                                      ; preds = %do.body.147
  %144 = load i8, i8* %a1102, align 1, !tbaa !9
  %145 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i8, i8* %145, i64 0
  store i8 %144, i8* %arrayidx151, align 1, !tbaa !9
  %146 = load i8, i8* %b1106, align 1, !tbaa !9
  %147 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds i8, i8* %147, i64 1
  store i8 %146, i8* %arrayidx152, align 1, !tbaa !9
  %148 = load i8, i8* %c1110, align 1, !tbaa !9
  %149 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx153 = getelementptr inbounds i8, i8* %149, i64 2
  store i8 %148, i8* %arrayidx153, align 1, !tbaa !9
  %150 = load i8, i8* %d1114, align 1, !tbaa !9
  %151 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds i8, i8* %151, i64 3
  store i8 %150, i8* %arrayidx154, align 1, !tbaa !9
  %152 = load i8, i8* %e1118, align 1, !tbaa !9
  %153 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i8, i8* %153, i64 4
  store i8 %152, i8* %arrayidx155, align 1, !tbaa !9
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.150, %do.body.147
  %154 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr157 = getelementptr inbounds i8, i8* %154, i64 5
  store i8* %add.ptr157, i8** %pptr136, align 8, !tbaa !1
  br label %do.cond.158

do.cond.158:                                      ; preds = %if.end.156
  %155 = load i32, i32* %bit146, align 4, !tbaa !5
  %shr159 = ashr i32 %155, 1
  store i32 %shr159, i32* %bit146, align 4, !tbaa !5
  %156 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and160 = and i32 %shr159, %156
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %do.body.147, label %do.end.162

do.end.162:                                       ; preds = %do.cond.158
  %157 = bitcast i32* %bit146 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  br label %if.end.166

if.else.163:                                      ; preds = %while.body.135
  %158 = load i32, i32* %first_skip, align 4, !tbaa !5
  %159 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %idx.ext164 = sext i32 %158 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %159, i64 %idx.ext164
  store i8* %add.ptr165, i8** %pptr136, align 8, !tbaa !1
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.163, %do.end.162
  br label %while.cond.167

while.cond.167:                                   ; preds = %if.end.287, %if.end.166
  %160 = load i32, i32* %count142, align 4, !tbaa !5
  %cmp168 = icmp sge i32 %160, 8
  br i1 %cmp168, label %while.body.170, label %while.end.290

while.body.170:                                   ; preds = %while.cond.167
  %161 = load i8*, i8** %sptr137, align 8, !tbaa !1
  %incdec.ptr171 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr171, i8** %sptr137, align 8, !tbaa !1
  %162 = load i8, i8* %161, align 1, !tbaa !9
  %conv172 = zext i8 %162 to i32
  store i32 %conv172, i32* %sbyte138, align 4, !tbaa !5
  %163 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and173 = and i32 %163, 240
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.227

if.then.175:                                      ; preds = %while.body.170
  %164 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and176 = and i32 %164, 128
  %tobool177 = icmp ne i32 %and176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.184

if.then.178:                                      ; preds = %if.then.175
  %165 = load i8, i8* %a1102, align 1, !tbaa !9
  %166 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds i8, i8* %166, i64 0
  store i8 %165, i8* %arrayidx179, align 1, !tbaa !9
  %167 = load i8, i8* %b1106, align 1, !tbaa !9
  %168 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %168, i64 1
  store i8 %167, i8* %arrayidx180, align 1, !tbaa !9
  %169 = load i8, i8* %c1110, align 1, !tbaa !9
  %170 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %170, i64 2
  store i8 %169, i8* %arrayidx181, align 1, !tbaa !9
  %171 = load i8, i8* %d1114, align 1, !tbaa !9
  %172 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i8, i8* %172, i64 3
  store i8 %171, i8* %arrayidx182, align 1, !tbaa !9
  %173 = load i8, i8* %e1118, align 1, !tbaa !9
  %174 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds i8, i8* %174, i64 4
  store i8 %173, i8* %arrayidx183, align 1, !tbaa !9
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.178, %if.then.175
  %175 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and185 = and i32 %175, 64
  %tobool186 = icmp ne i32 %and185, 0
  br i1 %tobool186, label %if.then.187, label %if.end.198

if.then.187:                                      ; preds = %if.end.184
  %176 = load i8, i8* %a1102, align 1, !tbaa !9
  %177 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr188 = getelementptr inbounds i8, i8* %177, i64 5
  %arrayidx189 = getelementptr inbounds i8, i8* %add.ptr188, i64 0
  store i8 %176, i8* %arrayidx189, align 1, !tbaa !9
  %178 = load i8, i8* %b1106, align 1, !tbaa !9
  %179 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr190 = getelementptr inbounds i8, i8* %179, i64 5
  %arrayidx191 = getelementptr inbounds i8, i8* %add.ptr190, i64 1
  store i8 %178, i8* %arrayidx191, align 1, !tbaa !9
  %180 = load i8, i8* %c1110, align 1, !tbaa !9
  %181 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr192 = getelementptr inbounds i8, i8* %181, i64 5
  %arrayidx193 = getelementptr inbounds i8, i8* %add.ptr192, i64 2
  store i8 %180, i8* %arrayidx193, align 1, !tbaa !9
  %182 = load i8, i8* %d1114, align 1, !tbaa !9
  %183 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr194 = getelementptr inbounds i8, i8* %183, i64 5
  %arrayidx195 = getelementptr inbounds i8, i8* %add.ptr194, i64 3
  store i8 %182, i8* %arrayidx195, align 1, !tbaa !9
  %184 = load i8, i8* %e1118, align 1, !tbaa !9
  %185 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr196 = getelementptr inbounds i8, i8* %185, i64 5
  %arrayidx197 = getelementptr inbounds i8, i8* %add.ptr196, i64 4
  store i8 %184, i8* %arrayidx197, align 1, !tbaa !9
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.187, %if.end.184
  %186 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and199 = and i32 %186, 32
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.212

if.then.201:                                      ; preds = %if.end.198
  %187 = load i8, i8* %a1102, align 1, !tbaa !9
  %188 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr202 = getelementptr inbounds i8, i8* %188, i64 10
  %arrayidx203 = getelementptr inbounds i8, i8* %add.ptr202, i64 0
  store i8 %187, i8* %arrayidx203, align 1, !tbaa !9
  %189 = load i8, i8* %b1106, align 1, !tbaa !9
  %190 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr204 = getelementptr inbounds i8, i8* %190, i64 10
  %arrayidx205 = getelementptr inbounds i8, i8* %add.ptr204, i64 1
  store i8 %189, i8* %arrayidx205, align 1, !tbaa !9
  %191 = load i8, i8* %c1110, align 1, !tbaa !9
  %192 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr206 = getelementptr inbounds i8, i8* %192, i64 10
  %arrayidx207 = getelementptr inbounds i8, i8* %add.ptr206, i64 2
  store i8 %191, i8* %arrayidx207, align 1, !tbaa !9
  %193 = load i8, i8* %d1114, align 1, !tbaa !9
  %194 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr208 = getelementptr inbounds i8, i8* %194, i64 10
  %arrayidx209 = getelementptr inbounds i8, i8* %add.ptr208, i64 3
  store i8 %193, i8* %arrayidx209, align 1, !tbaa !9
  %195 = load i8, i8* %e1118, align 1, !tbaa !9
  %196 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds i8, i8* %196, i64 10
  %arrayidx211 = getelementptr inbounds i8, i8* %add.ptr210, i64 4
  store i8 %195, i8* %arrayidx211, align 1, !tbaa !9
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.201, %if.end.198
  %197 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and213 = and i32 %197, 16
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then.215, label %if.end.226

if.then.215:                                      ; preds = %if.end.212
  %198 = load i8, i8* %a1102, align 1, !tbaa !9
  %199 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr216 = getelementptr inbounds i8, i8* %199, i64 15
  %arrayidx217 = getelementptr inbounds i8, i8* %add.ptr216, i64 0
  store i8 %198, i8* %arrayidx217, align 1, !tbaa !9
  %200 = load i8, i8* %b1106, align 1, !tbaa !9
  %201 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr218 = getelementptr inbounds i8, i8* %201, i64 15
  %arrayidx219 = getelementptr inbounds i8, i8* %add.ptr218, i64 1
  store i8 %200, i8* %arrayidx219, align 1, !tbaa !9
  %202 = load i8, i8* %c1110, align 1, !tbaa !9
  %203 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr220 = getelementptr inbounds i8, i8* %203, i64 15
  %arrayidx221 = getelementptr inbounds i8, i8* %add.ptr220, i64 2
  store i8 %202, i8* %arrayidx221, align 1, !tbaa !9
  %204 = load i8, i8* %d1114, align 1, !tbaa !9
  %205 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr222 = getelementptr inbounds i8, i8* %205, i64 15
  %arrayidx223 = getelementptr inbounds i8, i8* %add.ptr222, i64 3
  store i8 %204, i8* %arrayidx223, align 1, !tbaa !9
  %206 = load i8, i8* %e1118, align 1, !tbaa !9
  %207 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr224 = getelementptr inbounds i8, i8* %207, i64 15
  %arrayidx225 = getelementptr inbounds i8, i8* %add.ptr224, i64 4
  store i8 %206, i8* %arrayidx225, align 1, !tbaa !9
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.215, %if.end.212
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %while.body.170
  %208 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and228 = and i32 %208, 15
  %tobool229 = icmp ne i32 %and228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.287

if.then.230:                                      ; preds = %if.end.227
  %209 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and231 = and i32 %209, 8
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then.233, label %if.end.244

if.then.233:                                      ; preds = %if.then.230
  %210 = load i8, i8* %a1102, align 1, !tbaa !9
  %211 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr234 = getelementptr inbounds i8, i8* %211, i64 20
  %arrayidx235 = getelementptr inbounds i8, i8* %add.ptr234, i64 0
  store i8 %210, i8* %arrayidx235, align 1, !tbaa !9
  %212 = load i8, i8* %b1106, align 1, !tbaa !9
  %213 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr236 = getelementptr inbounds i8, i8* %213, i64 20
  %arrayidx237 = getelementptr inbounds i8, i8* %add.ptr236, i64 1
  store i8 %212, i8* %arrayidx237, align 1, !tbaa !9
  %214 = load i8, i8* %c1110, align 1, !tbaa !9
  %215 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr238 = getelementptr inbounds i8, i8* %215, i64 20
  %arrayidx239 = getelementptr inbounds i8, i8* %add.ptr238, i64 2
  store i8 %214, i8* %arrayidx239, align 1, !tbaa !9
  %216 = load i8, i8* %d1114, align 1, !tbaa !9
  %217 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr240 = getelementptr inbounds i8, i8* %217, i64 20
  %arrayidx241 = getelementptr inbounds i8, i8* %add.ptr240, i64 3
  store i8 %216, i8* %arrayidx241, align 1, !tbaa !9
  %218 = load i8, i8* %e1118, align 1, !tbaa !9
  %219 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr242 = getelementptr inbounds i8, i8* %219, i64 20
  %arrayidx243 = getelementptr inbounds i8, i8* %add.ptr242, i64 4
  store i8 %218, i8* %arrayidx243, align 1, !tbaa !9
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.233, %if.then.230
  %220 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and245 = and i32 %220, 4
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.258

if.then.247:                                      ; preds = %if.end.244
  %221 = load i8, i8* %a1102, align 1, !tbaa !9
  %222 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr248 = getelementptr inbounds i8, i8* %222, i64 25
  %arrayidx249 = getelementptr inbounds i8, i8* %add.ptr248, i64 0
  store i8 %221, i8* %arrayidx249, align 1, !tbaa !9
  %223 = load i8, i8* %b1106, align 1, !tbaa !9
  %224 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr250 = getelementptr inbounds i8, i8* %224, i64 25
  %arrayidx251 = getelementptr inbounds i8, i8* %add.ptr250, i64 1
  store i8 %223, i8* %arrayidx251, align 1, !tbaa !9
  %225 = load i8, i8* %c1110, align 1, !tbaa !9
  %226 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr252 = getelementptr inbounds i8, i8* %226, i64 25
  %arrayidx253 = getelementptr inbounds i8, i8* %add.ptr252, i64 2
  store i8 %225, i8* %arrayidx253, align 1, !tbaa !9
  %227 = load i8, i8* %d1114, align 1, !tbaa !9
  %228 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr254 = getelementptr inbounds i8, i8* %228, i64 25
  %arrayidx255 = getelementptr inbounds i8, i8* %add.ptr254, i64 3
  store i8 %227, i8* %arrayidx255, align 1, !tbaa !9
  %229 = load i8, i8* %e1118, align 1, !tbaa !9
  %230 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %230, i64 25
  %arrayidx257 = getelementptr inbounds i8, i8* %add.ptr256, i64 4
  store i8 %229, i8* %arrayidx257, align 1, !tbaa !9
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.247, %if.end.244
  %231 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and259 = and i32 %231, 2
  %tobool260 = icmp ne i32 %and259, 0
  br i1 %tobool260, label %if.then.261, label %if.end.272

if.then.261:                                      ; preds = %if.end.258
  %232 = load i8, i8* %a1102, align 1, !tbaa !9
  %233 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr262 = getelementptr inbounds i8, i8* %233, i64 30
  %arrayidx263 = getelementptr inbounds i8, i8* %add.ptr262, i64 0
  store i8 %232, i8* %arrayidx263, align 1, !tbaa !9
  %234 = load i8, i8* %b1106, align 1, !tbaa !9
  %235 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds i8, i8* %235, i64 30
  %arrayidx265 = getelementptr inbounds i8, i8* %add.ptr264, i64 1
  store i8 %234, i8* %arrayidx265, align 1, !tbaa !9
  %236 = load i8, i8* %c1110, align 1, !tbaa !9
  %237 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr266 = getelementptr inbounds i8, i8* %237, i64 30
  %arrayidx267 = getelementptr inbounds i8, i8* %add.ptr266, i64 2
  store i8 %236, i8* %arrayidx267, align 1, !tbaa !9
  %238 = load i8, i8* %d1114, align 1, !tbaa !9
  %239 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr268 = getelementptr inbounds i8, i8* %239, i64 30
  %arrayidx269 = getelementptr inbounds i8, i8* %add.ptr268, i64 3
  store i8 %238, i8* %arrayidx269, align 1, !tbaa !9
  %240 = load i8, i8* %e1118, align 1, !tbaa !9
  %241 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr270 = getelementptr inbounds i8, i8* %241, i64 30
  %arrayidx271 = getelementptr inbounds i8, i8* %add.ptr270, i64 4
  store i8 %240, i8* %arrayidx271, align 1, !tbaa !9
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.261, %if.end.258
  %242 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %and273 = and i32 %242, 1
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %if.then.275, label %if.end.286

if.then.275:                                      ; preds = %if.end.272
  %243 = load i8, i8* %a1102, align 1, !tbaa !9
  %244 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr276 = getelementptr inbounds i8, i8* %244, i64 35
  %arrayidx277 = getelementptr inbounds i8, i8* %add.ptr276, i64 0
  store i8 %243, i8* %arrayidx277, align 1, !tbaa !9
  %245 = load i8, i8* %b1106, align 1, !tbaa !9
  %246 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i8, i8* %246, i64 35
  %arrayidx279 = getelementptr inbounds i8, i8* %add.ptr278, i64 1
  store i8 %245, i8* %arrayidx279, align 1, !tbaa !9
  %247 = load i8, i8* %c1110, align 1, !tbaa !9
  %248 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr280 = getelementptr inbounds i8, i8* %248, i64 35
  %arrayidx281 = getelementptr inbounds i8, i8* %add.ptr280, i64 2
  store i8 %247, i8* %arrayidx281, align 1, !tbaa !9
  %249 = load i8, i8* %d1114, align 1, !tbaa !9
  %250 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr282 = getelementptr inbounds i8, i8* %250, i64 35
  %arrayidx283 = getelementptr inbounds i8, i8* %add.ptr282, i64 3
  store i8 %249, i8* %arrayidx283, align 1, !tbaa !9
  %251 = load i8, i8* %e1118, align 1, !tbaa !9
  %252 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr284 = getelementptr inbounds i8, i8* %252, i64 35
  %arrayidx285 = getelementptr inbounds i8, i8* %add.ptr284, i64 4
  store i8 %251, i8* %arrayidx285, align 1, !tbaa !9
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.275, %if.end.272
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286, %if.end.227
  %253 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr288 = getelementptr inbounds i8, i8* %253, i64 40
  store i8* %add.ptr288, i8** %pptr136, align 8, !tbaa !1
  %254 = load i32, i32* %count142, align 4, !tbaa !5
  %sub289 = sub nsw i32 %254, 8
  store i32 %sub289, i32* %count142, align 4, !tbaa !5
  br label %while.cond.167

while.end.290:                                    ; preds = %while.cond.167
  %255 = load i32, i32* %count142, align 4, !tbaa !5
  %cmp291 = icmp sgt i32 %255, 0
  br i1 %cmp291, label %if.then.293, label %if.end.314

if.then.293:                                      ; preds = %while.end.290
  %256 = bitcast i32* %bit294 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %256) #2
  store i32 128, i32* %bit294, align 4, !tbaa !5
  %257 = load i8*, i8** %sptr137, align 8, !tbaa !1
  %incdec.ptr295 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr295, i8** %sptr137, align 8, !tbaa !1
  %258 = load i8, i8* %257, align 1, !tbaa !9
  %conv296 = zext i8 %258 to i32
  store i32 %conv296, i32* %sbyte138, align 4, !tbaa !5
  br label %do.body.297

do.body.297:                                      ; preds = %do.cond.309, %if.then.293
  %259 = load i32, i32* %sbyte138, align 4, !tbaa !5
  %260 = load i32, i32* %bit294, align 4, !tbaa !5
  %and298 = and i32 %259, %260
  %tobool299 = icmp ne i32 %and298, 0
  br i1 %tobool299, label %if.then.300, label %if.end.306

if.then.300:                                      ; preds = %do.body.297
  %261 = load i8, i8* %a1102, align 1, !tbaa !9
  %262 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds i8, i8* %262, i64 0
  store i8 %261, i8* %arrayidx301, align 1, !tbaa !9
  %263 = load i8, i8* %b1106, align 1, !tbaa !9
  %264 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds i8, i8* %264, i64 1
  store i8 %263, i8* %arrayidx302, align 1, !tbaa !9
  %265 = load i8, i8* %c1110, align 1, !tbaa !9
  %266 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %266, i64 2
  store i8 %265, i8* %arrayidx303, align 1, !tbaa !9
  %267 = load i8, i8* %d1114, align 1, !tbaa !9
  %268 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx304 = getelementptr inbounds i8, i8* %268, i64 3
  store i8 %267, i8* %arrayidx304, align 1, !tbaa !9
  %269 = load i8, i8* %e1118, align 1, !tbaa !9
  %270 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds i8, i8* %270, i64 4
  store i8 %269, i8* %arrayidx305, align 1, !tbaa !9
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.300, %do.body.297
  %271 = load i8*, i8** %pptr136, align 8, !tbaa !1
  %add.ptr307 = getelementptr inbounds i8, i8* %271, i64 5
  store i8* %add.ptr307, i8** %pptr136, align 8, !tbaa !1
  %272 = load i32, i32* %bit294, align 4, !tbaa !5
  %shr308 = ashr i32 %272, 1
  store i32 %shr308, i32* %bit294, align 4, !tbaa !5
  br label %do.cond.309

do.cond.309:                                      ; preds = %if.end.306
  %273 = load i32, i32* %count142, align 4, !tbaa !5
  %dec310 = add nsw i32 %273, -1
  store i32 %dec310, i32* %count142, align 4, !tbaa !5
  %cmp311 = icmp sgt i32 %dec310, 0
  br i1 %cmp311, label %do.body.297, label %do.end.313

do.end.313:                                       ; preds = %do.cond.309
  %274 = bitcast i32* %bit294 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #2
  br label %if.end.314

if.end.314:                                       ; preds = %do.end.313, %while.end.290
  %275 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %276 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext315 = sext i32 %275 to i64
  %add.ptr316 = getelementptr inbounds i8, i8* %276, i64 %idx.ext315
  store i8* %add.ptr316, i8** %line, align 8, !tbaa !1
  %277 = load i8*, i8** %dest, align 8, !tbaa !1
  %278 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext317 = zext i32 %278 to i64
  %add.ptr318 = getelementptr inbounds i8, i8* %277, i64 %idx.ext317
  store i8* %add.ptr318, i8** %dest, align 8, !tbaa !1
  %279 = bitcast i32* %count142 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #2
  %280 = bitcast i32* %sbyte138 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #2
  %281 = bitcast i8** %sptr137 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #2
  %282 = bitcast i8** %pptr136 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #2
  br label %while.cond.131

while.end.319:                                    ; preds = %while.cond.131
  %283 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #2
  %285 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #2
  call void @llvm.lifetime.end(i64 1, i8* %e1118) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1114) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1110) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1106) #2
  call void @llvm.lifetime.end(i64 1, i8* %a1102) #2
  br label %if.end.320

if.end.320:                                       ; preds = %while.end.319, %if.else.98
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.321, %if.then.23
  %286 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #2
  %287 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #2
  %288 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #2
  %289 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #2
  %290 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %290) #2
  %291 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #2
  %292 = load i32, i32* %retval
  ret i32 %292
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true40_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %mul27 = mul nsw i32 %36, 5
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %35, i64 %idx.ext28
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !23
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %40, 5
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %39, i64 %idx.ext31
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %42, 5
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
define internal i32 @mem40_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %mul = mul nsw i32 %37, 40
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %38, 40
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %mul, i32 %mul36, i32 %39, i32 1) #5
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %45 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 @mem_true40_fill_rectangle(%struct.gx_device_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45) #5
  %46 = load i8*, i8** %base, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %48, 40
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %49, 40
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
define internal i32 @mem40_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %mul30 = mul nsw i32 %46, 40
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 %47, 40
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
  %call = call i32 @mem_true40_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #5
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul32 = mul nsw i32 %63, 40
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %64, 40
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
define internal i32 @mem40_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %mul28 = mul nsw i32 %42, 40
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %43, 40
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %40, i32 %41, i32 %mul28, i32 %mul29, i32 %44, i32 1) #5
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %46, 5
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 %idx.ext31
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %49 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %49, 5
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %48, i64 %idx.ext34
  %50 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %51, 5
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr32, i32 %47, i8* %add.ptr35, i32 %50, i32 %mul36, i32 %52) #5
  %53 = load i8*, i8** %row, align 8, !tbaa !1
  %54 = load i32, i32* %raster, align 4, !tbaa !5
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %55, 40
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %56, 40
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
!35 = !{!24, !8, i64 2624}
!36 = !{!24, !6, i64 2632}
!37 = !{!24, !6, i64 2636}
!38 = !{!24, !6, i64 2640}
!39 = !{!24, !6, i64 2644}
!40 = !{!24, !6, i64 2648}
