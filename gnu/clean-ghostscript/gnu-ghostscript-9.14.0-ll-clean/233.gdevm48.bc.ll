; ModuleID = './gdevm48.bc'
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

@.str = private unnamed_addr constant [8 x i8] c"image48\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_true48_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 48, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true48_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true48_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true48_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image48w\00", align 1
@mem_true48_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 48, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem48_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem48_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem48_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

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
define internal i32 @mem_true48_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bcnt = alloca i32, align 4
  %x1 = alloca i32, align 4
  %ww = alloca i32, align 4
  %abcd = alloca i32, align 4
  %cdef = alloca i32, align 4
  %efab = alloca i32, align 4
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
  %shr1 = lshr i64 %shr, 16
  %conv = trunc i64 %shr1 to i8
  store i8 %conv, i8* %a, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b) #2
  %4 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr2 = lshr i64 %4, 16
  %shr3 = lshr i64 %shr2, 16
  %conv4 = trunc i64 %shr3 to i8
  store i8 %conv4, i8* %b, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c) #2
  %5 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv5 = trunc i64 %5 to i32
  %shr6 = lshr i32 %conv5, 24
  %conv7 = trunc i32 %shr6 to i8
  store i8 %conv7, i8* %c, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d) #2
  %6 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv8 = trunc i64 %6 to i32
  %shr9 = lshr i32 %conv8, 16
  %conv10 = trunc i32 %shr9 to i8
  store i8 %conv10, i8* %d, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e) #2
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv11 = trunc i64 %7 to i32
  %shr12 = lshr i32 %conv11, 8
  %conv13 = trunc i32 %shr12 to i8
  store i8 %conv13, i8* %e, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f) #2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv14 = trunc i64 %8 to i8
  store i8 %conv14, i8* %f, align 1, !tbaa !9
  %9 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.15

do.body.15:                                       ; preds = %do.body
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %11, %12
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.25

if.then:                                          ; preds = %do.body.15
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %13, 0
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %16, 0
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add23 = add nsw i32 %18, %17
  store i32 %add23, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.15
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.26

do.body.26:                                       ; preds = %do.end
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !10
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %21, %22
  %cmp27 = icmp sgt i32 %19, %sub
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %do.body.26
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width30, align 4, !tbaa !10
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub31 = sub nsw i32 %24, %25
  store i32 %sub31, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %do.body.26
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height, align 4, !tbaa !22
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub36 = sub nsw i32 %28, %29
  %cmp37 = icmp sgt i32 %26, %sub36
  br i1 %cmp37, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %do.body.35
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height40, align 4, !tbaa !22
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub41 = sub nsw i32 %31, %32
  store i32 %sub41, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %do.body.35
  br label %do.cond.43

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44

do.end.44:                                        ; preds = %do.cond.43
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  br label %do.cond.48

do.cond.48:                                       ; preds = %do.body.47
  br label %do.end.49

do.end.49:                                        ; preds = %do.cond.48
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp50 = icmp sge i32 %33, 5
  br i1 %cmp50, label %if.then.52, label %if.else.171

if.then.52:                                       ; preds = %do.end.49
  %34 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp53 = icmp sle i32 %34, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.then.52
  br label %do.body.57

do.body.57:                                       ; preds = %if.end.56
  br label %do.cond.58

do.cond.58:                                       ; preds = %do.body.57
  br label %do.end.59

do.end.59:                                        ; preds = %do.cond.58
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 44
  %36 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %36, i32* %draster, align 4, !tbaa !5
  %37 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 52
  %39 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %39, i64 %idxprom
  %40 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %41, 6
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %42 = load i8, i8* %a, align 1, !tbaa !9
  %conv60 = zext i8 %42 to i32
  %43 = load i8, i8* %b, align 1, !tbaa !9
  %conv61 = zext i8 %43 to i32
  %cmp62 = icmp eq i32 %conv60, %conv61
  br i1 %cmp62, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.end.59
  %44 = load i8, i8* %b, align 1, !tbaa !9
  %conv64 = zext i8 %44 to i32
  %45 = load i8, i8* %c, align 1, !tbaa !9
  %conv65 = zext i8 %45 to i32
  %cmp66 = icmp eq i32 %conv64, %conv65
  br i1 %cmp66, label %land.lhs.true.68, label %if.else

land.lhs.true.68:                                 ; preds = %land.lhs.true
  %46 = load i8, i8* %c, align 1, !tbaa !9
  %conv69 = zext i8 %46 to i32
  %47 = load i8, i8* %d, align 1, !tbaa !9
  %conv70 = zext i8 %47 to i32
  %cmp71 = icmp eq i32 %conv69, %conv70
  br i1 %cmp71, label %land.lhs.true.73, label %if.else

land.lhs.true.73:                                 ; preds = %land.lhs.true.68
  %48 = load i8, i8* %d, align 1, !tbaa !9
  %conv74 = zext i8 %48 to i32
  %49 = load i8, i8* %e, align 1, !tbaa !9
  %conv75 = zext i8 %49 to i32
  %cmp76 = icmp eq i32 %conv74, %conv75
  br i1 %cmp76, label %land.lhs.true.78, label %if.else

land.lhs.true.78:                                 ; preds = %land.lhs.true.73
  %50 = load i8, i8* %e, align 1, !tbaa !9
  %conv79 = zext i8 %50 to i32
  %51 = load i8, i8* %f, align 1, !tbaa !9
  %conv80 = zext i8 %51 to i32
  %cmp81 = icmp eq i32 %conv79, %conv80
  br i1 %cmp81, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %land.lhs.true.78
  %52 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #2
  %53 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul84 = mul nsw i32 %53, 6
  store i32 %mul84, i32* %bcnt, align 4, !tbaa !5
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.83
  br label %do.cond.86

do.cond.86:                                       ; preds = %do.body.85
  br label %do.end.87

do.end.87:                                        ; preds = %do.cond.86
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.87
  %54 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp88 = icmp sgt i32 %54, 0
  br i1 %cmp88, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %55 = load i8*, i8** %dest, align 8, !tbaa !1
  %56 = load i8, i8* %a, align 1, !tbaa !9
  %conv90 = zext i8 %56 to i32
  %57 = load i32, i32* %bcnt, align 4, !tbaa !5
  %conv91 = sext i32 %57 to i64
  %call = call i8* @memset(i8* %55, i32 %conv90, i64 %conv91) #4
  %58 = load i8*, i8** %dest, align 8, !tbaa !1
  %59 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext92 = zext i32 %59 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %58, i64 %idx.ext92
  store i8* %add.ptr93, i8** %dest, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = bitcast i32* %bcnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  br label %if.end.170

if.else:                                          ; preds = %land.lhs.true.78, %land.lhs.true.73, %land.lhs.true.68, %land.lhs.true, %do.end.59
  %61 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub94 = sub nsw i32 0, %62
  %and = and i32 %sub94, 1
  store i32 %and, i32* %x1, align 4, !tbaa !5
  %63 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %65 = load i32, i32* %x1, align 4, !tbaa !5
  %sub95 = sub nsw i32 %64, %65
  store i32 %sub95, i32* %ww, align 4, !tbaa !5
  %66 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = bitcast i32* %cdef to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #2
  %68 = bitcast i32* %efab to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %69, i32 0, i32 56
  %abcdef = getelementptr inbounds %struct._c48, %struct._c48* %color48, i32 0, i32 0
  %70 = load i64, i64* %abcdef, align 8, !tbaa !35
  %71 = load i64, i64* %color.addr, align 8, !tbaa !7
  %cmp96 = icmp eq i64 %70, %71
  br i1 %cmp96, label %if.then.98, label %if.else.105

if.then.98:                                       ; preds = %if.else
  %72 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color4899 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %72, i32 0, i32 56
  %abcd100 = getelementptr inbounds %struct._c48, %struct._c48* %color4899, i32 0, i32 1
  %73 = load i32, i32* %abcd100, align 4, !tbaa !36
  store i32 %73, i32* %abcd, align 4, !tbaa !5
  %74 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48101 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %74, i32 0, i32 56
  %cdef102 = getelementptr inbounds %struct._c48, %struct._c48* %color48101, i32 0, i32 2
  %75 = load i32, i32* %cdef102, align 4, !tbaa !37
  store i32 %75, i32* %cdef, align 4, !tbaa !5
  %76 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48103 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %76, i32 0, i32 56
  %efab104 = getelementptr inbounds %struct._c48, %struct._c48* %color48103, i32 0, i32 3
  %77 = load i32, i32* %efab104, align 4, !tbaa !38
  store i32 %77, i32* %efab, align 4, !tbaa !5
  br label %if.end.139

if.else.105:                                      ; preds = %if.else
  br label %do.body.106

do.body.106:                                      ; preds = %if.else.105
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.body.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  %78 = load i8, i8* %d, align 1, !tbaa !9
  %conv109 = zext i8 %78 to i32
  %shl = shl i32 %conv109, 24
  %79 = load i8, i8* %c, align 1, !tbaa !9
  %conv110 = zext i8 %79 to i32
  %shl111 = shl i32 %conv110, 16
  %or112 = or i32 %shl, %shl111
  %80 = load i8, i8* %b, align 1, !tbaa !9
  %conv113 = zext i8 %80 to i16
  %conv114 = zext i16 %conv113 to i32
  %shl115 = shl i32 %conv114, 8
  %or116 = or i32 %or112, %shl115
  %81 = load i8, i8* %a, align 1, !tbaa !9
  %conv117 = zext i8 %81 to i32
  %or118 = or i32 %or116, %conv117
  store i32 %or118, i32* %abcd, align 4, !tbaa !5
  %82 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48119 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %82, i32 0, i32 56
  %abcd120 = getelementptr inbounds %struct._c48, %struct._c48* %color48119, i32 0, i32 1
  store i32 %or118, i32* %abcd120, align 4, !tbaa !36
  %83 = load i32, i32* %abcd, align 4, !tbaa !5
  %shl121 = shl i32 %83, 16
  %84 = load i8, i8* %f, align 1, !tbaa !9
  %conv122 = zext i8 %84 to i32
  %shl123 = shl i32 %conv122, 8
  %or124 = or i32 %shl121, %shl123
  %85 = load i8, i8* %e, align 1, !tbaa !9
  %conv125 = zext i8 %85 to i32
  %or126 = or i32 %or124, %conv125
  store i32 %or126, i32* %efab, align 4, !tbaa !5
  %86 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48127 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %86, i32 0, i32 56
  %efab128 = getelementptr inbounds %struct._c48, %struct._c48* %color48127, i32 0, i32 3
  store i32 %or126, i32* %efab128, align 4, !tbaa !38
  %87 = load i32, i32* %efab, align 4, !tbaa !5
  %shl129 = shl i32 %87, 16
  %88 = load i8, i8* %d, align 1, !tbaa !9
  %conv130 = zext i8 %88 to i32
  %shl131 = shl i32 %conv130, 8
  %or132 = or i32 %shl129, %shl131
  %89 = load i8, i8* %c, align 1, !tbaa !9
  %conv133 = zext i8 %89 to i32
  %or134 = or i32 %or132, %conv133
  store i32 %or134, i32* %cdef, align 4, !tbaa !5
  %90 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48135 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %90, i32 0, i32 56
  %cdef136 = getelementptr inbounds %struct._c48, %struct._c48* %color48135, i32 0, i32 2
  store i32 %or134, i32* %cdef136, align 4, !tbaa !37
  %91 = load i64, i64* %color.addr, align 8, !tbaa !7
  %92 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %color48137 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %92, i32 0, i32 56
  %abcdef138 = getelementptr inbounds %struct._c48, %struct._c48* %color48137, i32 0, i32 0
  store i64 %91, i64* %abcdef138, align 8, !tbaa !35
  br label %if.end.139

if.end.139:                                       ; preds = %do.end.108, %if.then.98
  br label %do.body.140

do.body.140:                                      ; preds = %if.end.139
  br label %do.cond.141

do.cond.141:                                      ; preds = %do.body.140
  br label %do.end.142

do.end.142:                                       ; preds = %do.cond.141
  br label %while.cond.143

while.cond.143:                                   ; preds = %sw.epilog.166, %do.end.142
  %93 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec144 = add nsw i32 %93, -1
  store i32 %dec144, i32* %h.addr, align 4, !tbaa !5
  %cmp145 = icmp sgt i32 %93, 0
  br i1 %cmp145, label %while.body.147, label %while.end.169

while.body.147:                                   ; preds = %while.cond.143
  %94 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %94) #2
  %95 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %95, i8** %pptr, align 8, !tbaa !1
  %96 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #2
  %97 = load i32, i32* %ww, align 4, !tbaa !5
  store i32 %97, i32* %w1, align 4, !tbaa !5
  %98 = load i32, i32* %x1, align 4, !tbaa !5
  switch i32 %98, label %sw.epilog [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.152
  ]

sw.bb:                                            ; preds = %while.body.147
  %99 = load i8, i8* %a, align 1, !tbaa !9
  %100 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 %99, i8* %arrayidx148, align 1, !tbaa !9
  %101 = load i8, i8* %b, align 1, !tbaa !9
  %102 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx149 = getelementptr inbounds i8, i8* %102, i64 1
  store i8 %101, i8* %arrayidx149, align 1, !tbaa !9
  %103 = load i32, i32* %cdef, align 4, !tbaa !5
  %104 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr150 = getelementptr inbounds i8, i8* %104, i64 2
  %105 = bitcast i8* %add.ptr150 to i32*
  store i32 %103, i32* %105, align 4, !tbaa !5
  %106 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr151 = getelementptr inbounds i8, i8* %106, i64 6
  store i8* %add.ptr151, i8** %pptr, align 8, !tbaa !1
  br label %sw.epilog

sw.bb.152:                                        ; preds = %while.body.147
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.152, %while.body.147, %sw.bb
  br label %while.cond.153

while.cond.153:                                   ; preds = %while.body.156, %sw.epilog
  %107 = load i32, i32* %w1, align 4, !tbaa !5
  %cmp154 = icmp sge i32 %107, 2
  br i1 %cmp154, label %while.body.156, label %while.end.161

while.body.156:                                   ; preds = %while.cond.153
  %108 = load i32, i32* %abcd, align 4, !tbaa !5
  %109 = load i8*, i8** %pptr, align 8, !tbaa !1
  %110 = bitcast i8* %109 to i32*
  store i32 %108, i32* %110, align 4, !tbaa !5
  %111 = load i32, i32* %efab, align 4, !tbaa !5
  %112 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr157 = getelementptr inbounds i8, i8* %112, i64 4
  %113 = bitcast i8* %add.ptr157 to i32*
  store i32 %111, i32* %113, align 4, !tbaa !5
  %114 = load i32, i32* %cdef, align 4, !tbaa !5
  %115 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr158 = getelementptr inbounds i8, i8* %115, i64 8
  %116 = bitcast i8* %add.ptr158 to i32*
  store i32 %114, i32* %116, align 4, !tbaa !5
  %117 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr159 = getelementptr inbounds i8, i8* %117, i64 12
  store i8* %add.ptr159, i8** %pptr, align 8, !tbaa !1
  %118 = load i32, i32* %w1, align 4, !tbaa !5
  %sub160 = sub nsw i32 %118, 2
  store i32 %sub160, i32* %w1, align 4, !tbaa !5
  br label %while.cond.153

while.end.161:                                    ; preds = %while.cond.153
  %119 = load i32, i32* %w1, align 4, !tbaa !5
  switch i32 %119, label %sw.epilog.166 [
    i32 1, label %sw.bb.162
    i32 0, label %sw.bb.165
  ]

sw.bb.162:                                        ; preds = %while.end.161
  %120 = load i32, i32* %abcd, align 4, !tbaa !5
  %121 = load i8*, i8** %pptr, align 8, !tbaa !1
  %122 = bitcast i8* %121 to i32*
  store i32 %120, i32* %122, align 4, !tbaa !5
  %123 = load i8, i8* %e, align 1, !tbaa !9
  %124 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %124, i64 4
  store i8 %123, i8* %arrayidx163, align 1, !tbaa !9
  %125 = load i8, i8* %f, align 1, !tbaa !9
  %126 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %126, i64 5
  store i8 %125, i8* %arrayidx164, align 1, !tbaa !9
  br label %sw.epilog.166

sw.bb.165:                                        ; preds = %while.end.161
  br label %sw.epilog.166

sw.epilog.166:                                    ; preds = %sw.bb.165, %while.end.161, %sw.bb.162
  %127 = load i8*, i8** %dest, align 8, !tbaa !1
  %128 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext167 = zext i32 %128 to i64
  %add.ptr168 = getelementptr inbounds i8, i8* %127, i64 %idx.ext167
  store i8* %add.ptr168, i8** %dest, align 8, !tbaa !1
  %129 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #2
  br label %while.cond.143

while.end.169:                                    ; preds = %while.cond.143
  %131 = bitcast i32* %efab to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i32* %cdef to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  %134 = bitcast i32* %ww to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #2
  %135 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  br label %if.end.170

if.end.170:                                       ; preds = %while.end.169, %while.end
  br label %if.end.279

if.else.171:                                      ; preds = %do.end.49
  %136 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp172 = icmp sgt i32 %136, 0
  br i1 %cmp172, label %if.then.174, label %if.end.278

if.then.174:                                      ; preds = %if.else.171
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  br label %do.cond.176

do.cond.176:                                      ; preds = %do.body.175
  br label %do.end.177

do.end.177:                                       ; preds = %do.cond.176
  %137 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster178 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %137, i32 0, i32 44
  %138 = load i32, i32* %raster178, align 4, !tbaa !23
  store i32 %138, i32* %draster, align 4, !tbaa !5
  %139 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom179 = sext i32 %139 to i64
  %140 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs180 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %140, i32 0, i32 52
  %141 = load i8**, i8*** %line_ptrs180, align 8, !tbaa !34
  %arrayidx181 = getelementptr inbounds i8*, i8** %141, i64 %idxprom179
  %142 = load i8*, i8** %arrayidx181, align 8, !tbaa !1
  %143 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul182 = mul nsw i32 %143, 6
  %idx.ext183 = sext i32 %mul182 to i64
  %add.ptr184 = getelementptr inbounds i8, i8* %142, i64 %idx.ext183
  store i8* %add.ptr184, i8** %dest, align 8, !tbaa !1
  %144 = load i32, i32* %w.addr, align 4, !tbaa !5
  switch i32 %144, label %sw.default [
    i32 4, label %sw.bb.185
    i32 3, label %sw.bb.216
    i32 2, label %sw.bb.242
    i32 1, label %sw.bb.262
    i32 0, label %sw.bb.276
  ]

sw.bb.185:                                        ; preds = %do.end.177
  br label %do.body.186

do.body.186:                                      ; preds = %do.cond.213, %sw.bb.185
  %145 = load i8, i8* %a, align 1, !tbaa !9
  %146 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds i8, i8* %146, i64 0
  store i8 %145, i8* %arrayidx187, align 1, !tbaa !9
  %147 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds i8, i8* %147, i64 6
  store i8 %145, i8* %arrayidx188, align 1, !tbaa !9
  %148 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds i8, i8* %148, i64 12
  store i8 %145, i8* %arrayidx189, align 1, !tbaa !9
  %149 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx190 = getelementptr inbounds i8, i8* %149, i64 18
  store i8 %145, i8* %arrayidx190, align 1, !tbaa !9
  %150 = load i8, i8* %b, align 1, !tbaa !9
  %151 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds i8, i8* %151, i64 1
  store i8 %150, i8* %arrayidx191, align 1, !tbaa !9
  %152 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %152, i64 7
  store i8 %150, i8* %arrayidx192, align 1, !tbaa !9
  %153 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %153, i64 13
  store i8 %150, i8* %arrayidx193, align 1, !tbaa !9
  %154 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %154, i64 19
  store i8 %150, i8* %arrayidx194, align 1, !tbaa !9
  %155 = load i8, i8* %c, align 1, !tbaa !9
  %156 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %156, i64 2
  store i8 %155, i8* %arrayidx195, align 1, !tbaa !9
  %157 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %157, i64 8
  store i8 %155, i8* %arrayidx196, align 1, !tbaa !9
  %158 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %158, i64 14
  store i8 %155, i8* %arrayidx197, align 1, !tbaa !9
  %159 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds i8, i8* %159, i64 20
  store i8 %155, i8* %arrayidx198, align 1, !tbaa !9
  %160 = load i8, i8* %d, align 1, !tbaa !9
  %161 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds i8, i8* %161, i64 3
  store i8 %160, i8* %arrayidx199, align 1, !tbaa !9
  %162 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds i8, i8* %162, i64 9
  store i8 %160, i8* %arrayidx200, align 1, !tbaa !9
  %163 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds i8, i8* %163, i64 15
  store i8 %160, i8* %arrayidx201, align 1, !tbaa !9
  %164 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds i8, i8* %164, i64 21
  store i8 %160, i8* %arrayidx202, align 1, !tbaa !9
  %165 = load i8, i8* %e, align 1, !tbaa !9
  %166 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds i8, i8* %166, i64 4
  store i8 %165, i8* %arrayidx203, align 1, !tbaa !9
  %167 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %167, i64 10
  store i8 %165, i8* %arrayidx204, align 1, !tbaa !9
  %168 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %168, i64 16
  store i8 %165, i8* %arrayidx205, align 1, !tbaa !9
  %169 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i8, i8* %169, i64 22
  store i8 %165, i8* %arrayidx206, align 1, !tbaa !9
  %170 = load i8, i8* %f, align 1, !tbaa !9
  %171 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %171, i64 5
  store i8 %170, i8* %arrayidx207, align 1, !tbaa !9
  %172 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds i8, i8* %172, i64 11
  store i8 %170, i8* %arrayidx208, align 1, !tbaa !9
  %173 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds i8, i8* %173, i64 17
  store i8 %170, i8* %arrayidx209, align 1, !tbaa !9
  %174 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx210 = getelementptr inbounds i8, i8* %174, i64 23
  store i8 %170, i8* %arrayidx210, align 1, !tbaa !9
  %175 = load i8*, i8** %dest, align 8, !tbaa !1
  %176 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext211 = zext i32 %176 to i64
  %add.ptr212 = getelementptr inbounds i8, i8* %175, i64 %idx.ext211
  store i8* %add.ptr212, i8** %dest, align 8, !tbaa !1
  br label %do.cond.213

do.cond.213:                                      ; preds = %do.body.186
  %177 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec214 = add nsw i32 %177, -1
  store i32 %dec214, i32* %h.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec214, 0
  br i1 %tobool, label %do.body.186, label %do.end.215

do.end.215:                                       ; preds = %do.cond.213
  br label %sw.epilog.277

sw.bb.216:                                        ; preds = %do.end.177
  br label %do.body.217

do.body.217:                                      ; preds = %do.cond.238, %sw.bb.216
  %178 = load i8, i8* %a, align 1, !tbaa !9
  %179 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %179, i64 0
  store i8 %178, i8* %arrayidx218, align 1, !tbaa !9
  %180 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds i8, i8* %180, i64 6
  store i8 %178, i8* %arrayidx219, align 1, !tbaa !9
  %181 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds i8, i8* %181, i64 12
  store i8 %178, i8* %arrayidx220, align 1, !tbaa !9
  %182 = load i8, i8* %b, align 1, !tbaa !9
  %183 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds i8, i8* %183, i64 1
  store i8 %182, i8* %arrayidx221, align 1, !tbaa !9
  %184 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds i8, i8* %184, i64 7
  store i8 %182, i8* %arrayidx222, align 1, !tbaa !9
  %185 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds i8, i8* %185, i64 13
  store i8 %182, i8* %arrayidx223, align 1, !tbaa !9
  %186 = load i8, i8* %c, align 1, !tbaa !9
  %187 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds i8, i8* %187, i64 2
  store i8 %186, i8* %arrayidx224, align 1, !tbaa !9
  %188 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds i8, i8* %188, i64 8
  store i8 %186, i8* %arrayidx225, align 1, !tbaa !9
  %189 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx226 = getelementptr inbounds i8, i8* %189, i64 14
  store i8 %186, i8* %arrayidx226, align 1, !tbaa !9
  %190 = load i8, i8* %d, align 1, !tbaa !9
  %191 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i8, i8* %191, i64 3
  store i8 %190, i8* %arrayidx227, align 1, !tbaa !9
  %192 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds i8, i8* %192, i64 9
  store i8 %190, i8* %arrayidx228, align 1, !tbaa !9
  %193 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds i8, i8* %193, i64 15
  store i8 %190, i8* %arrayidx229, align 1, !tbaa !9
  %194 = load i8, i8* %e, align 1, !tbaa !9
  %195 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx230 = getelementptr inbounds i8, i8* %195, i64 4
  store i8 %194, i8* %arrayidx230, align 1, !tbaa !9
  %196 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds i8, i8* %196, i64 10
  store i8 %194, i8* %arrayidx231, align 1, !tbaa !9
  %197 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds i8, i8* %197, i64 16
  store i8 %194, i8* %arrayidx232, align 1, !tbaa !9
  %198 = load i8, i8* %f, align 1, !tbaa !9
  %199 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i8, i8* %199, i64 5
  store i8 %198, i8* %arrayidx233, align 1, !tbaa !9
  %200 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx234 = getelementptr inbounds i8, i8* %200, i64 11
  store i8 %198, i8* %arrayidx234, align 1, !tbaa !9
  %201 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds i8, i8* %201, i64 17
  store i8 %198, i8* %arrayidx235, align 1, !tbaa !9
  %202 = load i8*, i8** %dest, align 8, !tbaa !1
  %203 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext236 = zext i32 %203 to i64
  %add.ptr237 = getelementptr inbounds i8, i8* %202, i64 %idx.ext236
  store i8* %add.ptr237, i8** %dest, align 8, !tbaa !1
  br label %do.cond.238

do.cond.238:                                      ; preds = %do.body.217
  %204 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec239 = add nsw i32 %204, -1
  store i32 %dec239, i32* %h.addr, align 4, !tbaa !5
  %tobool240 = icmp ne i32 %dec239, 0
  br i1 %tobool240, label %do.body.217, label %do.end.241

do.end.241:                                       ; preds = %do.cond.238
  br label %sw.epilog.277

sw.bb.242:                                        ; preds = %do.end.177
  br label %do.body.243

do.body.243:                                      ; preds = %do.cond.258, %sw.bb.242
  %205 = load i8, i8* %a, align 1, !tbaa !9
  %206 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx244 = getelementptr inbounds i8, i8* %206, i64 0
  store i8 %205, i8* %arrayidx244, align 1, !tbaa !9
  %207 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds i8, i8* %207, i64 6
  store i8 %205, i8* %arrayidx245, align 1, !tbaa !9
  %208 = load i8, i8* %b, align 1, !tbaa !9
  %209 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %209, i64 1
  store i8 %208, i8* %arrayidx246, align 1, !tbaa !9
  %210 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds i8, i8* %210, i64 7
  store i8 %208, i8* %arrayidx247, align 1, !tbaa !9
  %211 = load i8, i8* %c, align 1, !tbaa !9
  %212 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds i8, i8* %212, i64 2
  store i8 %211, i8* %arrayidx248, align 1, !tbaa !9
  %213 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds i8, i8* %213, i64 8
  store i8 %211, i8* %arrayidx249, align 1, !tbaa !9
  %214 = load i8, i8* %d, align 1, !tbaa !9
  %215 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx250 = getelementptr inbounds i8, i8* %215, i64 3
  store i8 %214, i8* %arrayidx250, align 1, !tbaa !9
  %216 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %216, i64 9
  store i8 %214, i8* %arrayidx251, align 1, !tbaa !9
  %217 = load i8, i8* %e, align 1, !tbaa !9
  %218 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %218, i64 4
  store i8 %217, i8* %arrayidx252, align 1, !tbaa !9
  %219 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds i8, i8* %219, i64 10
  store i8 %217, i8* %arrayidx253, align 1, !tbaa !9
  %220 = load i8, i8* %f, align 1, !tbaa !9
  %221 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx254 = getelementptr inbounds i8, i8* %221, i64 5
  store i8 %220, i8* %arrayidx254, align 1, !tbaa !9
  %222 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %222, i64 11
  store i8 %220, i8* %arrayidx255, align 1, !tbaa !9
  %223 = load i8*, i8** %dest, align 8, !tbaa !1
  %224 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext256 = zext i32 %224 to i64
  %add.ptr257 = getelementptr inbounds i8, i8* %223, i64 %idx.ext256
  store i8* %add.ptr257, i8** %dest, align 8, !tbaa !1
  br label %do.cond.258

do.cond.258:                                      ; preds = %do.body.243
  %225 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec259 = add nsw i32 %225, -1
  store i32 %dec259, i32* %h.addr, align 4, !tbaa !5
  %tobool260 = icmp ne i32 %dec259, 0
  br i1 %tobool260, label %do.body.243, label %do.end.261

do.end.261:                                       ; preds = %do.cond.258
  br label %sw.epilog.277

sw.bb.262:                                        ; preds = %do.end.177
  br label %do.body.263

do.body.263:                                      ; preds = %do.cond.272, %sw.bb.262
  %226 = load i8, i8* %a, align 1, !tbaa !9
  %227 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx264 = getelementptr inbounds i8, i8* %227, i64 0
  store i8 %226, i8* %arrayidx264, align 1, !tbaa !9
  %228 = load i8, i8* %b, align 1, !tbaa !9
  %229 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds i8, i8* %229, i64 1
  store i8 %228, i8* %arrayidx265, align 1, !tbaa !9
  %230 = load i8, i8* %c, align 1, !tbaa !9
  %231 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %231, i64 2
  store i8 %230, i8* %arrayidx266, align 1, !tbaa !9
  %232 = load i8, i8* %d, align 1, !tbaa !9
  %233 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds i8, i8* %233, i64 3
  store i8 %232, i8* %arrayidx267, align 1, !tbaa !9
  %234 = load i8, i8* %e, align 1, !tbaa !9
  %235 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds i8, i8* %235, i64 4
  store i8 %234, i8* %arrayidx268, align 1, !tbaa !9
  %236 = load i8, i8* %f, align 1, !tbaa !9
  %237 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %237, i64 5
  store i8 %236, i8* %arrayidx269, align 1, !tbaa !9
  %238 = load i8*, i8** %dest, align 8, !tbaa !1
  %239 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext270 = zext i32 %239 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %238, i64 %idx.ext270
  store i8* %add.ptr271, i8** %dest, align 8, !tbaa !1
  br label %do.cond.272

do.cond.272:                                      ; preds = %do.body.263
  %240 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec273 = add nsw i32 %240, -1
  store i32 %dec273, i32* %h.addr, align 4, !tbaa !5
  %tobool274 = icmp ne i32 %dec273, 0
  br i1 %tobool274, label %do.body.263, label %do.end.275

do.end.275:                                       ; preds = %do.cond.272
  br label %sw.epilog.277

sw.bb.276:                                        ; preds = %do.end.177
  br label %sw.default

sw.default:                                       ; preds = %do.end.177, %sw.bb.276
  br label %sw.epilog.277

sw.epilog.277:                                    ; preds = %sw.default, %do.end.275, %do.end.261, %do.end.241, %do.end.215
  br label %if.end.278

if.end.278:                                       ; preds = %sw.epilog.277, %if.else.171
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.end.170
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.279, %if.then.55
  %241 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #2
  call void @llvm.lifetime.end(i64 1, i8* %f) #2
  call void @llvm.lifetime.end(i64 1, i8* %e) #2
  call void @llvm.lifetime.end(i64 1, i8* %d) #2
  call void @llvm.lifetime.end(i64 1, i8* %c) #2
  call void @llvm.lifetime.end(i64 1, i8* %b) #2
  call void @llvm.lifetime.end(i64 1, i8* %a) #2
  %243 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %243) #2
  %244 = load i32, i32* %retval
  ret i32 %244
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true48_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %a1 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %c1 = alloca i8, align 1
  %d1 = alloca i8, align 1
  %e1 = alloca i8, align 1
  %f1 = alloca i8, align 1
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  %a1110 = alloca i8, align 1
  %b1114 = alloca i8, align 1
  %c1118 = alloca i8, align 1
  %d1122 = alloca i8, align 1
  %e1126 = alloca i8, align 1
  %f1130 = alloca i8, align 1
  %first_mask = alloca i32, align 4
  %first_count = alloca i32, align 4
  %first_skip = alloca i32, align 4
  %pptr148 = alloca i8*, align 8
  %sptr149 = alloca i8*, align 8
  %sbyte150 = alloca i32, align 4
  %count154 = alloca i32, align 4
  %bit158 = alloca i32, align 4
  %bit322 = alloca i32, align 4
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
  %mul27 = mul nsw i32 %43, 6
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
  br i1 %cmp33, label %if.then.34, label %if.else.106

if.then.34:                                       ; preds = %do.end.26
  call void @llvm.lifetime.start(i64 1, i8* %a0) #2
  %49 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr35 = lshr i64 %49, 24
  %shr36 = lshr i64 %shr35, 16
  %conv = trunc i64 %shr36 to i8
  store i8 %conv, i8* %a0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  %50 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr37 = lshr i64 %50, 16
  %shr38 = lshr i64 %shr37, 16
  %conv39 = trunc i64 %shr38 to i8
  store i8 %conv39, i8* %b0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c0) #2
  %51 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv40 = trunc i64 %51 to i32
  %shr41 = lshr i32 %conv40, 24
  %conv42 = trunc i32 %shr41 to i8
  store i8 %conv42, i8* %c0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d0) #2
  %52 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv43 = trunc i64 %52 to i32
  %shr44 = lshr i32 %conv43, 16
  %conv45 = trunc i32 %shr44 to i8
  store i8 %conv45, i8* %d0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e0) #2
  %53 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv46 = trunc i64 %53 to i32
  %shr47 = lshr i32 %conv46, 8
  %conv48 = trunc i32 %shr47 to i8
  store i8 %conv48, i8* %e0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f0) #2
  %54 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv49 = trunc i64 %54 to i8
  store i8 %conv49, i8* %f0, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %a1) #2
  %55 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr50 = lshr i64 %55, 24
  %shr51 = lshr i64 %shr50, 16
  %conv52 = trunc i64 %shr51 to i8
  store i8 %conv52, i8* %a1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  %56 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr53 = lshr i64 %56, 16
  %shr54 = lshr i64 %shr53, 16
  %conv55 = trunc i64 %shr54 to i8
  store i8 %conv55, i8* %b1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c1) #2
  %57 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv56 = trunc i64 %57 to i32
  %shr57 = lshr i32 %conv56, 24
  %conv58 = trunc i32 %shr57 to i8
  store i8 %conv58, i8* %c1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d1) #2
  %58 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv59 = trunc i64 %58 to i32
  %shr60 = lshr i32 %conv59, 16
  %conv61 = trunc i32 %shr60 to i8
  store i8 %conv61, i8* %d1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e1) #2
  %59 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv62 = trunc i64 %59 to i32
  %shr63 = lshr i32 %conv62, 8
  %conv64 = trunc i32 %shr63 to i8
  store i8 %conv64, i8* %e1, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f1) #2
  %60 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv65 = trunc i64 %60 to i8
  store i8 %conv65, i8* %f1, align 1, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %do.end.101, %if.then.34
  %61 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %61, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp66 = icmp sgt i32 %61, 0
  br i1 %cmp66, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %63 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %63, i8** %pptr, align 8, !tbaa !1
  %64 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %65, i8** %sptr, align 8, !tbaa !1
  %66 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !9
  %conv68 = zext i8 %68 to i32
  store i32 %conv68, i32* %sbyte, align 4, !tbaa !5
  %69 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #2
  %70 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %70, i32* %bit, align 4, !tbaa !5
  %71 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %72, i32* %count, align 4, !tbaa !5
  br label %do.body.69

do.body.69:                                       ; preds = %do.cond.97, %while.body
  %73 = load i32, i32* %sbyte, align 4, !tbaa !5
  %74 = load i32, i32* %bit, align 4, !tbaa !5
  %and70 = and i32 %73, %74
  %tobool = icmp ne i32 %and70, 0
  br i1 %tobool, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %do.body.69
  %75 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp72 = icmp ne i64 %75, -1
  br i1 %cmp72, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.then.71
  %76 = load i8, i8* %a1, align 1, !tbaa !9
  %77 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 %76, i8* %arrayidx75, align 1, !tbaa !9
  %78 = load i8, i8* %b1, align 1, !tbaa !9
  %79 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 %78, i8* %arrayidx76, align 1, !tbaa !9
  %80 = load i8, i8* %c1, align 1, !tbaa !9
  %81 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %81, i64 2
  store i8 %80, i8* %arrayidx77, align 1, !tbaa !9
  %82 = load i8, i8* %d1, align 1, !tbaa !9
  %83 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %83, i64 3
  store i8 %82, i8* %arrayidx78, align 1, !tbaa !9
  %84 = load i8, i8* %e1, align 1, !tbaa !9
  %85 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i8, i8* %85, i64 4
  store i8 %84, i8* %arrayidx79, align 1, !tbaa !9
  %86 = load i8, i8* %f1, align 1, !tbaa !9
  %87 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds i8, i8* %87, i64 5
  store i8 %86, i8* %arrayidx80, align 1, !tbaa !9
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %if.then.71
  br label %if.end.88

if.else:                                          ; preds = %do.body.69
  %88 = load i8, i8* %a0, align 1, !tbaa !9
  %89 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 %88, i8* %arrayidx82, align 1, !tbaa !9
  %90 = load i8, i8* %b0, align 1, !tbaa !9
  %91 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %90, i8* %arrayidx83, align 1, !tbaa !9
  %92 = load i8, i8* %c0, align 1, !tbaa !9
  %93 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i8, i8* %93, i64 2
  store i8 %92, i8* %arrayidx84, align 1, !tbaa !9
  %94 = load i8, i8* %d0, align 1, !tbaa !9
  %95 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 %94, i8* %arrayidx85, align 1, !tbaa !9
  %96 = load i8, i8* %e0, align 1, !tbaa !9
  %97 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds i8, i8* %97, i64 4
  store i8 %96, i8* %arrayidx86, align 1, !tbaa !9
  %98 = load i8, i8* %f0, align 1, !tbaa !9
  %99 = load i8*, i8** %pptr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %99, i64 5
  store i8 %98, i8* %arrayidx87, align 1, !tbaa !9
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.end.81
  %100 = load i8*, i8** %pptr, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds i8, i8* %100, i64 6
  store i8* %add.ptr89, i8** %pptr, align 8, !tbaa !1
  %101 = load i32, i32* %bit, align 4, !tbaa !5
  %shr90 = ashr i32 %101, 1
  store i32 %shr90, i32* %bit, align 4, !tbaa !5
  %cmp91 = icmp eq i32 %shr90, 0
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.end.88
  store i32 128, i32* %bit, align 4, !tbaa !5
  %102 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr94 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr94, i8** %sptr, align 8, !tbaa !1
  %103 = load i8, i8* %102, align 1, !tbaa !9
  %conv95 = zext i8 %103 to i32
  store i32 %conv95, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.end.88
  br label %do.cond.97

do.cond.97:                                       ; preds = %if.end.96
  %104 = load i32, i32* %count, align 4, !tbaa !5
  %dec98 = add nsw i32 %104, -1
  store i32 %dec98, i32* %count, align 4, !tbaa !5
  %cmp99 = icmp sgt i32 %dec98, 0
  br i1 %cmp99, label %do.body.69, label %do.end.101

do.end.101:                                       ; preds = %do.cond.97
  %105 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %106 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext102 = sext i32 %105 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %106, i64 %idx.ext102
  store i8* %add.ptr103, i8** %line, align 8, !tbaa !1
  %107 = load i8*, i8** %dest, align 8, !tbaa !1
  %108 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext104 = zext i32 %108 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %107, i64 %idx.ext104
  store i8* %add.ptr105, i8** %dest, align 8, !tbaa !1
  %109 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  %112 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #2
  %113 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end(i64 1, i8* %f1) #2
  call void @llvm.lifetime.end(i64 1, i8* %e1) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %a1) #2
  call void @llvm.lifetime.end(i64 1, i8* %f0) #2
  call void @llvm.lifetime.end(i64 1, i8* %e0) #2
  call void @llvm.lifetime.end(i64 1, i8* %d0) #2
  call void @llvm.lifetime.end(i64 1, i8* %c0) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  call void @llvm.lifetime.end(i64 1, i8* %a0) #2
  br label %if.end.350

if.else.106:                                      ; preds = %do.end.26
  %114 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp107 = icmp ne i64 %114, -1
  br i1 %cmp107, label %if.then.109, label %if.end.349

if.then.109:                                      ; preds = %if.else.106
  call void @llvm.lifetime.start(i64 1, i8* %a1110) #2
  %115 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr111 = lshr i64 %115, 24
  %shr112 = lshr i64 %shr111, 16
  %conv113 = trunc i64 %shr112 to i8
  store i8 %conv113, i8* %a1110, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %b1114) #2
  %116 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr115 = lshr i64 %116, 16
  %shr116 = lshr i64 %shr115, 16
  %conv117 = trunc i64 %shr116 to i8
  store i8 %conv117, i8* %b1114, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %c1118) #2
  %117 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv119 = trunc i64 %117 to i32
  %shr120 = lshr i32 %conv119, 24
  %conv121 = trunc i32 %shr120 to i8
  store i8 %conv121, i8* %c1118, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %d1122) #2
  %118 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv123 = trunc i64 %118 to i32
  %shr124 = lshr i32 %conv123, 16
  %conv125 = trunc i32 %shr124 to i8
  store i8 %conv125, i8* %d1122, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %e1126) #2
  %119 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv127 = trunc i64 %119 to i32
  %shr128 = lshr i32 %conv127, 8
  %conv129 = trunc i32 %shr128 to i8
  store i8 %conv129, i8* %e1126, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %f1130) #2
  %120 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv131 = trunc i64 %120 to i8
  store i8 %conv131, i8* %f1130, align 1, !tbaa !9
  %121 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %121) #2
  %122 = load i32, i32* %first_bit, align 4, !tbaa !5
  %shl = shl i32 %122, 1
  store i32 %shl, i32* %first_mask, align 4, !tbaa !5
  %123 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #2
  %124 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #2
  %125 = load i32, i32* %sbit, align 4, !tbaa !5
  %126 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add132 = add nsw i32 %125, %126
  %cmp133 = icmp sgt i32 %add132, 8
  br i1 %cmp133, label %if.then.135, label %if.else.138

if.then.135:                                      ; preds = %if.then.109
  %127 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub136 = sub nsw i32 %127, 1
  store i32 %sub136, i32* %first_mask, align 4, !tbaa !5
  %128 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub137 = sub nsw i32 8, %128
  store i32 %sub137, i32* %first_count, align 4, !tbaa !5
  br label %if.end.141

if.else.138:                                      ; preds = %if.then.109
  %129 = load i32, i32* %first_mask, align 4, !tbaa !5
  %130 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shr139 = ashr i32 %129, %130
  %131 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub140 = sub nsw i32 %131, %shr139
  store i32 %sub140, i32* %first_mask, align 4, !tbaa !5
  %132 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %132, i32* %first_count, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.135
  %133 = load i32, i32* %first_count, align 4, !tbaa !5
  %mul142 = mul nsw i32 %133, 6
  store i32 %mul142, i32* %first_skip, align 4, !tbaa !5
  br label %while.cond.143

while.cond.143:                                   ; preds = %if.end.343, %if.end.141
  %134 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec144 = add nsw i32 %134, -1
  store i32 %dec144, i32* %h.addr, align 4, !tbaa !5
  %cmp145 = icmp sgt i32 %134, 0
  br i1 %cmp145, label %while.body.147, label %while.end.348

while.body.147:                                   ; preds = %while.cond.143
  %135 = bitcast i8** %pptr148 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #2
  %136 = load i8*, i8** %dest, align 8, !tbaa !1
  store i8* %136, i8** %pptr148, align 8, !tbaa !1
  %137 = bitcast i8** %sptr149 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %137) #2
  %138 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %138, i8** %sptr149, align 8, !tbaa !1
  %139 = bitcast i32* %sbyte150 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #2
  %140 = load i8*, i8** %sptr149, align 8, !tbaa !1
  %incdec.ptr151 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr151, i8** %sptr149, align 8, !tbaa !1
  %141 = load i8, i8* %140, align 1, !tbaa !9
  %conv152 = zext i8 %141 to i32
  %142 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and153 = and i32 %conv152, %142
  store i32 %and153, i32* %sbyte150, align 4, !tbaa !5
  %143 = bitcast i32* %count154 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #2
  %144 = load i32, i32* %w.addr, align 4, !tbaa !5
  %145 = load i32, i32* %first_count, align 4, !tbaa !5
  %sub155 = sub nsw i32 %144, %145
  store i32 %sub155, i32* %count154, align 4, !tbaa !5
  %146 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %tobool156 = icmp ne i32 %146, 0
  br i1 %tobool156, label %if.then.157, label %if.else.176

if.then.157:                                      ; preds = %while.body.147
  %147 = bitcast i32* %bit158 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %147) #2
  %148 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %148, i32* %bit158, align 4, !tbaa !5
  br label %do.body.159

do.body.159:                                      ; preds = %do.cond.171, %if.then.157
  %149 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %150 = load i32, i32* %bit158, align 4, !tbaa !5
  %and160 = and i32 %149, %150
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.then.162, label %if.end.169

if.then.162:                                      ; preds = %do.body.159
  %151 = load i8, i8* %a1110, align 1, !tbaa !9
  %152 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %152, i64 0
  store i8 %151, i8* %arrayidx163, align 1, !tbaa !9
  %153 = load i8, i8* %b1114, align 1, !tbaa !9
  %154 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %154, i64 1
  store i8 %153, i8* %arrayidx164, align 1, !tbaa !9
  %155 = load i8, i8* %c1118, align 1, !tbaa !9
  %156 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %156, i64 2
  store i8 %155, i8* %arrayidx165, align 1, !tbaa !9
  %157 = load i8, i8* %d1122, align 1, !tbaa !9
  %158 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx166 = getelementptr inbounds i8, i8* %158, i64 3
  store i8 %157, i8* %arrayidx166, align 1, !tbaa !9
  %159 = load i8, i8* %e1126, align 1, !tbaa !9
  %160 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds i8, i8* %160, i64 4
  store i8 %159, i8* %arrayidx167, align 1, !tbaa !9
  %161 = load i8, i8* %f1130, align 1, !tbaa !9
  %162 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i8, i8* %162, i64 5
  store i8 %161, i8* %arrayidx168, align 1, !tbaa !9
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.162, %do.body.159
  %163 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr170 = getelementptr inbounds i8, i8* %163, i64 6
  store i8* %add.ptr170, i8** %pptr148, align 8, !tbaa !1
  br label %do.cond.171

do.cond.171:                                      ; preds = %if.end.169
  %164 = load i32, i32* %bit158, align 4, !tbaa !5
  %shr172 = ashr i32 %164, 1
  store i32 %shr172, i32* %bit158, align 4, !tbaa !5
  %165 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and173 = and i32 %shr172, %165
  %tobool174 = icmp ne i32 %and173, 0
  br i1 %tobool174, label %do.body.159, label %do.end.175

do.end.175:                                       ; preds = %do.cond.171
  %166 = bitcast i32* %bit158 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #2
  br label %if.end.179

if.else.176:                                      ; preds = %while.body.147
  %167 = load i32, i32* %first_skip, align 4, !tbaa !5
  %168 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %idx.ext177 = sext i32 %167 to i64
  %add.ptr178 = getelementptr inbounds i8, i8* %168, i64 %idx.ext177
  store i8* %add.ptr178, i8** %pptr148, align 8, !tbaa !1
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %do.end.175
  br label %while.cond.180

while.cond.180:                                   ; preds = %if.end.315, %if.end.179
  %169 = load i32, i32* %count154, align 4, !tbaa !5
  %cmp181 = icmp sge i32 %169, 8
  br i1 %cmp181, label %while.body.183, label %while.end.318

while.body.183:                                   ; preds = %while.cond.180
  %170 = load i8*, i8** %sptr149, align 8, !tbaa !1
  %incdec.ptr184 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %incdec.ptr184, i8** %sptr149, align 8, !tbaa !1
  %171 = load i8, i8* %170, align 1, !tbaa !9
  %conv185 = zext i8 %171 to i32
  store i32 %conv185, i32* %sbyte150, align 4, !tbaa !5
  %172 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and186 = and i32 %172, 240
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.247

if.then.188:                                      ; preds = %while.body.183
  %173 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and189 = and i32 %173, 128
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.198

if.then.191:                                      ; preds = %if.then.188
  %174 = load i8, i8* %a1110, align 1, !tbaa !9
  %175 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds i8, i8* %175, i64 0
  store i8 %174, i8* %arrayidx192, align 1, !tbaa !9
  %176 = load i8, i8* %b1114, align 1, !tbaa !9
  %177 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds i8, i8* %177, i64 1
  store i8 %176, i8* %arrayidx193, align 1, !tbaa !9
  %178 = load i8, i8* %c1118, align 1, !tbaa !9
  %179 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %179, i64 2
  store i8 %178, i8* %arrayidx194, align 1, !tbaa !9
  %180 = load i8, i8* %d1122, align 1, !tbaa !9
  %181 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %181, i64 3
  store i8 %180, i8* %arrayidx195, align 1, !tbaa !9
  %182 = load i8, i8* %e1126, align 1, !tbaa !9
  %183 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds i8, i8* %183, i64 4
  store i8 %182, i8* %arrayidx196, align 1, !tbaa !9
  %184 = load i8, i8* %f1130, align 1, !tbaa !9
  %185 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds i8, i8* %185, i64 5
  store i8 %184, i8* %arrayidx197, align 1, !tbaa !9
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.191, %if.then.188
  %186 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and199 = and i32 %186, 64
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %if.then.201, label %if.end.214

if.then.201:                                      ; preds = %if.end.198
  %187 = load i8, i8* %a1110, align 1, !tbaa !9
  %188 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr202 = getelementptr inbounds i8, i8* %188, i64 6
  %arrayidx203 = getelementptr inbounds i8, i8* %add.ptr202, i64 0
  store i8 %187, i8* %arrayidx203, align 1, !tbaa !9
  %189 = load i8, i8* %b1114, align 1, !tbaa !9
  %190 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr204 = getelementptr inbounds i8, i8* %190, i64 6
  %arrayidx205 = getelementptr inbounds i8, i8* %add.ptr204, i64 1
  store i8 %189, i8* %arrayidx205, align 1, !tbaa !9
  %191 = load i8, i8* %c1118, align 1, !tbaa !9
  %192 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr206 = getelementptr inbounds i8, i8* %192, i64 6
  %arrayidx207 = getelementptr inbounds i8, i8* %add.ptr206, i64 2
  store i8 %191, i8* %arrayidx207, align 1, !tbaa !9
  %193 = load i8, i8* %d1122, align 1, !tbaa !9
  %194 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr208 = getelementptr inbounds i8, i8* %194, i64 6
  %arrayidx209 = getelementptr inbounds i8, i8* %add.ptr208, i64 3
  store i8 %193, i8* %arrayidx209, align 1, !tbaa !9
  %195 = load i8, i8* %e1126, align 1, !tbaa !9
  %196 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr210 = getelementptr inbounds i8, i8* %196, i64 6
  %arrayidx211 = getelementptr inbounds i8, i8* %add.ptr210, i64 4
  store i8 %195, i8* %arrayidx211, align 1, !tbaa !9
  %197 = load i8, i8* %f1130, align 1, !tbaa !9
  %198 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr212 = getelementptr inbounds i8, i8* %198, i64 6
  %arrayidx213 = getelementptr inbounds i8, i8* %add.ptr212, i64 5
  store i8 %197, i8* %arrayidx213, align 1, !tbaa !9
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.201, %if.end.198
  %199 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and215 = and i32 %199, 32
  %tobool216 = icmp ne i32 %and215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.230

if.then.217:                                      ; preds = %if.end.214
  %200 = load i8, i8* %a1110, align 1, !tbaa !9
  %201 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr218 = getelementptr inbounds i8, i8* %201, i64 12
  %arrayidx219 = getelementptr inbounds i8, i8* %add.ptr218, i64 0
  store i8 %200, i8* %arrayidx219, align 1, !tbaa !9
  %202 = load i8, i8* %b1114, align 1, !tbaa !9
  %203 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr220 = getelementptr inbounds i8, i8* %203, i64 12
  %arrayidx221 = getelementptr inbounds i8, i8* %add.ptr220, i64 1
  store i8 %202, i8* %arrayidx221, align 1, !tbaa !9
  %204 = load i8, i8* %c1118, align 1, !tbaa !9
  %205 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr222 = getelementptr inbounds i8, i8* %205, i64 12
  %arrayidx223 = getelementptr inbounds i8, i8* %add.ptr222, i64 2
  store i8 %204, i8* %arrayidx223, align 1, !tbaa !9
  %206 = load i8, i8* %d1122, align 1, !tbaa !9
  %207 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr224 = getelementptr inbounds i8, i8* %207, i64 12
  %arrayidx225 = getelementptr inbounds i8, i8* %add.ptr224, i64 3
  store i8 %206, i8* %arrayidx225, align 1, !tbaa !9
  %208 = load i8, i8* %e1126, align 1, !tbaa !9
  %209 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr226 = getelementptr inbounds i8, i8* %209, i64 12
  %arrayidx227 = getelementptr inbounds i8, i8* %add.ptr226, i64 4
  store i8 %208, i8* %arrayidx227, align 1, !tbaa !9
  %210 = load i8, i8* %f1130, align 1, !tbaa !9
  %211 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr228 = getelementptr inbounds i8, i8* %211, i64 12
  %arrayidx229 = getelementptr inbounds i8, i8* %add.ptr228, i64 5
  store i8 %210, i8* %arrayidx229, align 1, !tbaa !9
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.217, %if.end.214
  %212 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and231 = and i32 %212, 16
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %if.then.233, label %if.end.246

if.then.233:                                      ; preds = %if.end.230
  %213 = load i8, i8* %a1110, align 1, !tbaa !9
  %214 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr234 = getelementptr inbounds i8, i8* %214, i64 18
  %arrayidx235 = getelementptr inbounds i8, i8* %add.ptr234, i64 0
  store i8 %213, i8* %arrayidx235, align 1, !tbaa !9
  %215 = load i8, i8* %b1114, align 1, !tbaa !9
  %216 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr236 = getelementptr inbounds i8, i8* %216, i64 18
  %arrayidx237 = getelementptr inbounds i8, i8* %add.ptr236, i64 1
  store i8 %215, i8* %arrayidx237, align 1, !tbaa !9
  %217 = load i8, i8* %c1118, align 1, !tbaa !9
  %218 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr238 = getelementptr inbounds i8, i8* %218, i64 18
  %arrayidx239 = getelementptr inbounds i8, i8* %add.ptr238, i64 2
  store i8 %217, i8* %arrayidx239, align 1, !tbaa !9
  %219 = load i8, i8* %d1122, align 1, !tbaa !9
  %220 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr240 = getelementptr inbounds i8, i8* %220, i64 18
  %arrayidx241 = getelementptr inbounds i8, i8* %add.ptr240, i64 3
  store i8 %219, i8* %arrayidx241, align 1, !tbaa !9
  %221 = load i8, i8* %e1126, align 1, !tbaa !9
  %222 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr242 = getelementptr inbounds i8, i8* %222, i64 18
  %arrayidx243 = getelementptr inbounds i8, i8* %add.ptr242, i64 4
  store i8 %221, i8* %arrayidx243, align 1, !tbaa !9
  %223 = load i8, i8* %f1130, align 1, !tbaa !9
  %224 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr244 = getelementptr inbounds i8, i8* %224, i64 18
  %arrayidx245 = getelementptr inbounds i8, i8* %add.ptr244, i64 5
  store i8 %223, i8* %arrayidx245, align 1, !tbaa !9
  br label %if.end.246

if.end.246:                                       ; preds = %if.then.233, %if.end.230
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246, %while.body.183
  %225 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and248 = and i32 %225, 15
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %if.then.250, label %if.end.315

if.then.250:                                      ; preds = %if.end.247
  %226 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and251 = and i32 %226, 8
  %tobool252 = icmp ne i32 %and251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.266

if.then.253:                                      ; preds = %if.then.250
  %227 = load i8, i8* %a1110, align 1, !tbaa !9
  %228 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr254 = getelementptr inbounds i8, i8* %228, i64 24
  %arrayidx255 = getelementptr inbounds i8, i8* %add.ptr254, i64 0
  store i8 %227, i8* %arrayidx255, align 1, !tbaa !9
  %229 = load i8, i8* %b1114, align 1, !tbaa !9
  %230 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %230, i64 24
  %arrayidx257 = getelementptr inbounds i8, i8* %add.ptr256, i64 1
  store i8 %229, i8* %arrayidx257, align 1, !tbaa !9
  %231 = load i8, i8* %c1118, align 1, !tbaa !9
  %232 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr258 = getelementptr inbounds i8, i8* %232, i64 24
  %arrayidx259 = getelementptr inbounds i8, i8* %add.ptr258, i64 2
  store i8 %231, i8* %arrayidx259, align 1, !tbaa !9
  %233 = load i8, i8* %d1122, align 1, !tbaa !9
  %234 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr260 = getelementptr inbounds i8, i8* %234, i64 24
  %arrayidx261 = getelementptr inbounds i8, i8* %add.ptr260, i64 3
  store i8 %233, i8* %arrayidx261, align 1, !tbaa !9
  %235 = load i8, i8* %e1126, align 1, !tbaa !9
  %236 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr262 = getelementptr inbounds i8, i8* %236, i64 24
  %arrayidx263 = getelementptr inbounds i8, i8* %add.ptr262, i64 4
  store i8 %235, i8* %arrayidx263, align 1, !tbaa !9
  %237 = load i8, i8* %f1130, align 1, !tbaa !9
  %238 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds i8, i8* %238, i64 24
  %arrayidx265 = getelementptr inbounds i8, i8* %add.ptr264, i64 5
  store i8 %237, i8* %arrayidx265, align 1, !tbaa !9
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.253, %if.then.250
  %239 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and267 = and i32 %239, 4
  %tobool268 = icmp ne i32 %and267, 0
  br i1 %tobool268, label %if.then.269, label %if.end.282

if.then.269:                                      ; preds = %if.end.266
  %240 = load i8, i8* %a1110, align 1, !tbaa !9
  %241 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr270 = getelementptr inbounds i8, i8* %241, i64 30
  %arrayidx271 = getelementptr inbounds i8, i8* %add.ptr270, i64 0
  store i8 %240, i8* %arrayidx271, align 1, !tbaa !9
  %242 = load i8, i8* %b1114, align 1, !tbaa !9
  %243 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr272 = getelementptr inbounds i8, i8* %243, i64 30
  %arrayidx273 = getelementptr inbounds i8, i8* %add.ptr272, i64 1
  store i8 %242, i8* %arrayidx273, align 1, !tbaa !9
  %244 = load i8, i8* %c1118, align 1, !tbaa !9
  %245 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr274 = getelementptr inbounds i8, i8* %245, i64 30
  %arrayidx275 = getelementptr inbounds i8, i8* %add.ptr274, i64 2
  store i8 %244, i8* %arrayidx275, align 1, !tbaa !9
  %246 = load i8, i8* %d1122, align 1, !tbaa !9
  %247 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr276 = getelementptr inbounds i8, i8* %247, i64 30
  %arrayidx277 = getelementptr inbounds i8, i8* %add.ptr276, i64 3
  store i8 %246, i8* %arrayidx277, align 1, !tbaa !9
  %248 = load i8, i8* %e1126, align 1, !tbaa !9
  %249 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr278 = getelementptr inbounds i8, i8* %249, i64 30
  %arrayidx279 = getelementptr inbounds i8, i8* %add.ptr278, i64 4
  store i8 %248, i8* %arrayidx279, align 1, !tbaa !9
  %250 = load i8, i8* %f1130, align 1, !tbaa !9
  %251 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr280 = getelementptr inbounds i8, i8* %251, i64 30
  %arrayidx281 = getelementptr inbounds i8, i8* %add.ptr280, i64 5
  store i8 %250, i8* %arrayidx281, align 1, !tbaa !9
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.269, %if.end.266
  %252 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and283 = and i32 %252, 2
  %tobool284 = icmp ne i32 %and283, 0
  br i1 %tobool284, label %if.then.285, label %if.end.298

if.then.285:                                      ; preds = %if.end.282
  %253 = load i8, i8* %a1110, align 1, !tbaa !9
  %254 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr286 = getelementptr inbounds i8, i8* %254, i64 36
  %arrayidx287 = getelementptr inbounds i8, i8* %add.ptr286, i64 0
  store i8 %253, i8* %arrayidx287, align 1, !tbaa !9
  %255 = load i8, i8* %b1114, align 1, !tbaa !9
  %256 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr288 = getelementptr inbounds i8, i8* %256, i64 36
  %arrayidx289 = getelementptr inbounds i8, i8* %add.ptr288, i64 1
  store i8 %255, i8* %arrayidx289, align 1, !tbaa !9
  %257 = load i8, i8* %c1118, align 1, !tbaa !9
  %258 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr290 = getelementptr inbounds i8, i8* %258, i64 36
  %arrayidx291 = getelementptr inbounds i8, i8* %add.ptr290, i64 2
  store i8 %257, i8* %arrayidx291, align 1, !tbaa !9
  %259 = load i8, i8* %d1122, align 1, !tbaa !9
  %260 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr292 = getelementptr inbounds i8, i8* %260, i64 36
  %arrayidx293 = getelementptr inbounds i8, i8* %add.ptr292, i64 3
  store i8 %259, i8* %arrayidx293, align 1, !tbaa !9
  %261 = load i8, i8* %e1126, align 1, !tbaa !9
  %262 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr294 = getelementptr inbounds i8, i8* %262, i64 36
  %arrayidx295 = getelementptr inbounds i8, i8* %add.ptr294, i64 4
  store i8 %261, i8* %arrayidx295, align 1, !tbaa !9
  %263 = load i8, i8* %f1130, align 1, !tbaa !9
  %264 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr296 = getelementptr inbounds i8, i8* %264, i64 36
  %arrayidx297 = getelementptr inbounds i8, i8* %add.ptr296, i64 5
  store i8 %263, i8* %arrayidx297, align 1, !tbaa !9
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.285, %if.end.282
  %265 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %and299 = and i32 %265, 1
  %tobool300 = icmp ne i32 %and299, 0
  br i1 %tobool300, label %if.then.301, label %if.end.314

if.then.301:                                      ; preds = %if.end.298
  %266 = load i8, i8* %a1110, align 1, !tbaa !9
  %267 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr302 = getelementptr inbounds i8, i8* %267, i64 42
  %arrayidx303 = getelementptr inbounds i8, i8* %add.ptr302, i64 0
  store i8 %266, i8* %arrayidx303, align 1, !tbaa !9
  %268 = load i8, i8* %b1114, align 1, !tbaa !9
  %269 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr304 = getelementptr inbounds i8, i8* %269, i64 42
  %arrayidx305 = getelementptr inbounds i8, i8* %add.ptr304, i64 1
  store i8 %268, i8* %arrayidx305, align 1, !tbaa !9
  %270 = load i8, i8* %c1118, align 1, !tbaa !9
  %271 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr306 = getelementptr inbounds i8, i8* %271, i64 42
  %arrayidx307 = getelementptr inbounds i8, i8* %add.ptr306, i64 2
  store i8 %270, i8* %arrayidx307, align 1, !tbaa !9
  %272 = load i8, i8* %d1122, align 1, !tbaa !9
  %273 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr308 = getelementptr inbounds i8, i8* %273, i64 42
  %arrayidx309 = getelementptr inbounds i8, i8* %add.ptr308, i64 3
  store i8 %272, i8* %arrayidx309, align 1, !tbaa !9
  %274 = load i8, i8* %e1126, align 1, !tbaa !9
  %275 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr310 = getelementptr inbounds i8, i8* %275, i64 42
  %arrayidx311 = getelementptr inbounds i8, i8* %add.ptr310, i64 4
  store i8 %274, i8* %arrayidx311, align 1, !tbaa !9
  %276 = load i8, i8* %f1130, align 1, !tbaa !9
  %277 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr312 = getelementptr inbounds i8, i8* %277, i64 42
  %arrayidx313 = getelementptr inbounds i8, i8* %add.ptr312, i64 5
  store i8 %276, i8* %arrayidx313, align 1, !tbaa !9
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.301, %if.end.298
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.247
  %278 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr316 = getelementptr inbounds i8, i8* %278, i64 48
  store i8* %add.ptr316, i8** %pptr148, align 8, !tbaa !1
  %279 = load i32, i32* %count154, align 4, !tbaa !5
  %sub317 = sub nsw i32 %279, 8
  store i32 %sub317, i32* %count154, align 4, !tbaa !5
  br label %while.cond.180

while.end.318:                                    ; preds = %while.cond.180
  %280 = load i32, i32* %count154, align 4, !tbaa !5
  %cmp319 = icmp sgt i32 %280, 0
  br i1 %cmp319, label %if.then.321, label %if.end.343

if.then.321:                                      ; preds = %while.end.318
  %281 = bitcast i32* %bit322 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %281) #2
  store i32 128, i32* %bit322, align 4, !tbaa !5
  %282 = load i8*, i8** %sptr149, align 8, !tbaa !1
  %incdec.ptr323 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %incdec.ptr323, i8** %sptr149, align 8, !tbaa !1
  %283 = load i8, i8* %282, align 1, !tbaa !9
  %conv324 = zext i8 %283 to i32
  store i32 %conv324, i32* %sbyte150, align 4, !tbaa !5
  br label %do.body.325

do.body.325:                                      ; preds = %do.cond.338, %if.then.321
  %284 = load i32, i32* %sbyte150, align 4, !tbaa !5
  %285 = load i32, i32* %bit322, align 4, !tbaa !5
  %and326 = and i32 %284, %285
  %tobool327 = icmp ne i32 %and326, 0
  br i1 %tobool327, label %if.then.328, label %if.end.335

if.then.328:                                      ; preds = %do.body.325
  %286 = load i8, i8* %a1110, align 1, !tbaa !9
  %287 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx329 = getelementptr inbounds i8, i8* %287, i64 0
  store i8 %286, i8* %arrayidx329, align 1, !tbaa !9
  %288 = load i8, i8* %b1114, align 1, !tbaa !9
  %289 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds i8, i8* %289, i64 1
  store i8 %288, i8* %arrayidx330, align 1, !tbaa !9
  %290 = load i8, i8* %c1118, align 1, !tbaa !9
  %291 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx331 = getelementptr inbounds i8, i8* %291, i64 2
  store i8 %290, i8* %arrayidx331, align 1, !tbaa !9
  %292 = load i8, i8* %d1122, align 1, !tbaa !9
  %293 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds i8, i8* %293, i64 3
  store i8 %292, i8* %arrayidx332, align 1, !tbaa !9
  %294 = load i8, i8* %e1126, align 1, !tbaa !9
  %295 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds i8, i8* %295, i64 4
  store i8 %294, i8* %arrayidx333, align 1, !tbaa !9
  %296 = load i8, i8* %f1130, align 1, !tbaa !9
  %297 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds i8, i8* %297, i64 5
  store i8 %296, i8* %arrayidx334, align 1, !tbaa !9
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.328, %do.body.325
  %298 = load i8*, i8** %pptr148, align 8, !tbaa !1
  %add.ptr336 = getelementptr inbounds i8, i8* %298, i64 6
  store i8* %add.ptr336, i8** %pptr148, align 8, !tbaa !1
  %299 = load i32, i32* %bit322, align 4, !tbaa !5
  %shr337 = ashr i32 %299, 1
  store i32 %shr337, i32* %bit322, align 4, !tbaa !5
  br label %do.cond.338

do.cond.338:                                      ; preds = %if.end.335
  %300 = load i32, i32* %count154, align 4, !tbaa !5
  %dec339 = add nsw i32 %300, -1
  store i32 %dec339, i32* %count154, align 4, !tbaa !5
  %cmp340 = icmp sgt i32 %dec339, 0
  br i1 %cmp340, label %do.body.325, label %do.end.342

do.end.342:                                       ; preds = %do.cond.338
  %301 = bitcast i32* %bit322 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #2
  br label %if.end.343

if.end.343:                                       ; preds = %do.end.342, %while.end.318
  %302 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %303 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext344 = sext i32 %302 to i64
  %add.ptr345 = getelementptr inbounds i8, i8* %303, i64 %idx.ext344
  store i8* %add.ptr345, i8** %line, align 8, !tbaa !1
  %304 = load i8*, i8** %dest, align 8, !tbaa !1
  %305 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext346 = zext i32 %305 to i64
  %add.ptr347 = getelementptr inbounds i8, i8* %304, i64 %idx.ext346
  store i8* %add.ptr347, i8** %dest, align 8, !tbaa !1
  %306 = bitcast i32* %count154 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #2
  %307 = bitcast i32* %sbyte150 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #2
  %308 = bitcast i8** %sptr149 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %308) #2
  %309 = bitcast i8** %pptr148 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %309) #2
  br label %while.cond.143

while.end.348:                                    ; preds = %while.cond.143
  %310 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #2
  %311 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #2
  %312 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #2
  call void @llvm.lifetime.end(i64 1, i8* %f1130) #2
  call void @llvm.lifetime.end(i64 1, i8* %e1126) #2
  call void @llvm.lifetime.end(i64 1, i8* %d1122) #2
  call void @llvm.lifetime.end(i64 1, i8* %c1118) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1114) #2
  call void @llvm.lifetime.end(i64 1, i8* %a1110) #2
  br label %if.end.349

if.end.349:                                       ; preds = %while.end.348, %if.else.106
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.350, %if.then.23
  %313 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #2
  %314 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %314) #2
  %315 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #2
  %316 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #2
  %317 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %317) #2
  %318 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %318) #2
  %319 = load i32, i32* %retval
  ret i32 %319
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true48_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %mul27 = mul nsw i32 %36, 6
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %35, i64 %idx.ext28
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !23
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %40, 6
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %39, i64 %idx.ext31
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %42, 6
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
define internal i32 @mem48_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %mul = mul nsw i32 %37, 48
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %38, 48
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %mul, i32 %mul36, i32 %39, i32 1) #5
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %45 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 @mem_true48_fill_rectangle(%struct.gx_device_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45) #5
  %46 = load i8*, i8** %base, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %48, 48
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %49, 48
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
define internal i32 @mem48_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %mul30 = mul nsw i32 %46, 48
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 %47, 48
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
  %call = call i32 @mem_true48_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #5
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul32 = mul nsw i32 %63, 48
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %64, 48
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
define internal i32 @mem48_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %mul28 = mul nsw i32 %42, 48
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %43, 48
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %40, i32 %41, i32 %mul28, i32 %mul29, i32 %44, i32 1) #5
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %46, 6
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 %idx.ext31
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %49 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %49, 6
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %48, i64 %idx.ext34
  %50 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %51, 6
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr32, i32 %47, i8* %add.ptr35, i32 %50, i32 %mul36, i32 %52) #5
  %53 = load i8*, i8** %row, align 8, !tbaa !1
  %54 = load i32, i32* %raster, align 4, !tbaa !5
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %55, 48
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %56, 48
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
!35 = !{!24, !8, i64 2656}
!36 = !{!24, !6, i64 2664}
!37 = !{!24, !6, i64 2668}
!38 = !{!24, !6, i64 2672}
