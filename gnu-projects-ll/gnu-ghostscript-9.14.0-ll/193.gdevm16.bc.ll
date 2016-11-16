; ModuleID = './gdevm16.bc'
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

@.str = private unnamed_addr constant [8 x i8] c"image16\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_true16_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 16, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @mem_true16_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_true16_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true16_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true16_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true16_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

declare i32 @mem_open(%struct.gx_device_s*) #0

declare void @mem_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @mem_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @mem_true16_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !5
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 11
  %shl = shl i32 %shr, 11
  %2 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  %3 = load i16, i16* %arrayidx1, align 2, !tbaa !5
  %conv2 = zext i16 %3 to i32
  %shr3 = ashr i32 %conv2, 10
  %shl4 = shl i32 %shr3, 5
  %add = add nsw i32 %shl, %shl4
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %4, i64 2
  %5 = load i16, i16* %arrayidx5, align 2, !tbaa !5
  %conv6 = zext i16 %5 to i32
  %shr7 = ashr i32 %conv6, 11
  %add8 = add nsw i32 %add, %shr7
  %conv9 = sext i32 %add8 to i64
  ret i64 %conv9
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true16_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %value = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %1, 11
  %conv = trunc i64 %shr to i16
  store i16 %conv, i16* %value, align 2, !tbaa !5
  %2 = load i16, i16* %value, align 2, !tbaa !5
  %conv1 = zext i16 %2 to i32
  %shl = shl i32 %conv1, 11
  %3 = load i16, i16* %value, align 2, !tbaa !5
  %conv2 = zext i16 %3 to i32
  %shl3 = shl i32 %conv2, 6
  %add = add nsw i32 %shl, %shl3
  %4 = load i16, i16* %value, align 2, !tbaa !5
  %conv4 = zext i16 %4 to i32
  %shl5 = shl i32 %conv4, 1
  %add6 = add nsw i32 %add, %shl5
  %5 = load i16, i16* %value, align 2, !tbaa !5
  %conv7 = zext i16 %5 to i32
  %shr8 = ashr i32 %conv7, 4
  %add9 = add nsw i32 %add6, %shr8
  %shr10 = ashr i32 %add9, 0
  %conv11 = trunc i32 %shr10 to i16
  %6 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 0
  store i16 %conv11, i16* %arrayidx, align 2, !tbaa !5
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr12 = lshr i64 %7, 5
  %and = and i64 %shr12, 63
  %conv13 = trunc i64 %and to i16
  store i16 %conv13, i16* %value, align 2, !tbaa !5
  %8 = load i16, i16* %value, align 2, !tbaa !5
  %conv14 = zext i16 %8 to i32
  %shl15 = shl i32 %conv14, 10
  %9 = load i16, i16* %value, align 2, !tbaa !5
  %conv16 = zext i16 %9 to i32
  %shl17 = shl i32 %conv16, 4
  %add18 = add nsw i32 %shl15, %shl17
  %10 = load i16, i16* %value, align 2, !tbaa !5
  %conv19 = zext i16 %10 to i32
  %shr20 = ashr i32 %conv19, 2
  %add21 = add nsw i32 %add18, %shr20
  %shr22 = ashr i32 %add21, 0
  %conv23 = trunc i32 %shr22 to i16
  %11 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %11, i64 1
  store i16 %conv23, i16* %arrayidx24, align 2, !tbaa !5
  %12 = load i64, i64* %color.addr, align 8, !tbaa !7
  %and25 = and i64 %12, 31
  %conv26 = trunc i64 %and25 to i16
  store i16 %conv26, i16* %value, align 2, !tbaa !5
  %13 = load i16, i16* %value, align 2, !tbaa !5
  %conv27 = zext i16 %13 to i32
  %shl28 = shl i32 %conv27, 11
  %14 = load i16, i16* %value, align 2, !tbaa !5
  %conv29 = zext i16 %14 to i32
  %shl30 = shl i32 %conv29, 6
  %add31 = add nsw i32 %shl28, %shl30
  %15 = load i16, i16* %value, align 2, !tbaa !5
  %conv32 = zext i16 %15 to i32
  %shl33 = shl i32 %conv32, 1
  %add34 = add nsw i32 %add31, %shl33
  %16 = load i16, i16* %value, align 2, !tbaa !5
  %conv35 = zext i16 %16 to i32
  %shr36 = ashr i32 %conv35, 4
  %add37 = add nsw i32 %add34, %shr36
  %shr38 = ashr i32 %add37, 0
  %conv39 = trunc i32 %shr38 to i16
  %17 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds i16, i16* %17, i64 2
  store i16 %conv39, i16* %arrayidx40, align 2, !tbaa !5
  %18 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %18) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true16_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %color16 = alloca i16, align 2
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i16*, align 8
  %cnt = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  store i32 %y, i32* %y.addr, align 4, !tbaa !9
  store i32 %w, i32* %w.addr, align 4, !tbaa !9
  store i32 %h, i32* %h.addr, align 4, !tbaa !9
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i16* %color16 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shl = shl i64 %4, 8
  %5 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %5, 8
  %or = or i64 %shl, %shr
  %conv = trunc i64 %or to i16
  store i16 %conv, i16* %color16, align 2, !tbaa !5
  %6 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %8 = load i32, i32* %x.addr, align 4, !tbaa !9
  %9 = load i32, i32* %y.addr, align 4, !tbaa !9
  %or3 = or i32 %8, %9
  %cmp = icmp slt i32 %or3, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %do.body.2
  %10 = load i32, i32* %x.addr, align 4, !tbaa !9
  %cmp5 = icmp slt i32 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %11 = load i32, i32* %x.addr, align 4, !tbaa !9
  %12 = load i32, i32* %w.addr, align 4, !tbaa !9
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %w.addr, align 4, !tbaa !9
  store i32 0, i32* %x.addr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %13 = load i32, i32* %y.addr, align 4, !tbaa !9
  %cmp8 = icmp slt i32 %13, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %14 = load i32, i32* %y.addr, align 4, !tbaa !9
  %15 = load i32, i32* %h.addr, align 4, !tbaa !9
  %add11 = add nsw i32 %15, %14
  store i32 %add11, i32* %h.addr, align 4, !tbaa !9
  store i32 0, i32* %y.addr, align 4, !tbaa !9
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %16 = load i32, i32* %w.addr, align 4, !tbaa !9
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !11
  %19 = load i32, i32* %x.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %18, %19
  %cmp15 = icmp sgt i32 %16, %sub
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.14
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width18, align 4, !tbaa !11
  %22 = load i32, i32* %x.addr, align 4, !tbaa !9
  %sub19 = sub nsw i32 %21, %22
  store i32 %sub19, i32* %w.addr, align 4, !tbaa !9
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %23 = load i32, i32* %h.addr, align 4, !tbaa !9
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !22
  %26 = load i32, i32* %y.addr, align 4, !tbaa !9
  %sub24 = sub nsw i32 %25, %26
  %cmp25 = icmp sgt i32 %23, %sub24
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %do.body.23
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height28, align 4, !tbaa !22
  %29 = load i32, i32* %y.addr, align 4, !tbaa !9
  %sub29 = sub nsw i32 %28, %29
  store i32 %sub29, i32* %h.addr, align 4, !tbaa !9
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %do.body.23
  br label %do.cond.31

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32

do.end.32:                                        ; preds = %do.cond.31
  br label %do.cond.33

do.cond.33:                                       ; preds = %do.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %30 = load i32, i32* %w.addr, align 4, !tbaa !9
  %cmp35 = icmp sle i32 %30, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.34
  %31 = load i32, i32* %h.addr, align 4, !tbaa !9
  %cmp37 = icmp sle i32 %31, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %do.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.40:                                        ; preds = %lor.lhs.false
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 44
  %33 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %33, i32* %draster, align 4, !tbaa !9
  %34 = load i32, i32* %y.addr, align 4, !tbaa !9
  %idxprom = sext i32 %34 to i64
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 52
  %36 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %idxprom
  %37 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %38 = load i32, i32* %x.addr, align 4, !tbaa !9
  %shl43 = shl i32 %38, 1
  %idx.ext = sext i32 %shl43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  %39 = load i32, i32* %w.addr, align 4, !tbaa !9
  %cmp44 = icmp eq i32 %39, 1
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %do.end.42
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.46
  %40 = load i32, i32* %h.addr, align 4, !tbaa !9
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !9
  %cmp47 = icmp sgt i32 %40, 0
  br i1 %cmp47, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i16, i16* %color16, align 2, !tbaa !5
  %42 = load i8*, i8** %dest, align 8, !tbaa !1
  %43 = bitcast i8* %42 to i16*
  store i16 %41, i16* %43, align 2, !tbaa !5
  %44 = load i8*, i8** %dest, align 8, !tbaa !1
  %45 = load i32, i32* %draster, align 4, !tbaa !9
  %idx.ext49 = zext i32 %45 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %44, i64 %idx.ext49
  store i8* %add.ptr50, i8** %dest, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.92

if.else:                                          ; preds = %do.end.42
  %46 = load i16, i16* %color16, align 2, !tbaa !5
  %conv51 = zext i16 %46 to i32
  %shr52 = ashr i32 %conv51, 8
  %47 = load i16, i16* %color16, align 2, !tbaa !5
  %conv53 = zext i16 %47 to i32
  %and = and i32 %conv53, 255
  %cmp54 = icmp eq i32 %shr52, %and
  br i1 %cmp54, label %if.then.56, label %if.else.65

if.then.56:                                       ; preds = %if.else
  %48 = load i32, i32* %y.addr, align 4, !tbaa !9
  %idxprom57 = sext i32 %48 to i64
  %49 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs58 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %49, i32 0, i32 52
  %50 = load i8**, i8*** %line_ptrs58, align 8, !tbaa !34
  %arrayidx59 = getelementptr inbounds i8*, i8** %50, i64 %idxprom57
  %51 = load i8*, i8** %arrayidx59, align 8, !tbaa !1
  %52 = load i32, i32* %x.addr, align 4, !tbaa !9
  %shl60 = shl i32 %52, 1
  %idx.ext61 = sext i32 %shl60 to i64
  %add.ptr62 = getelementptr inbounds i8, i8* %51, i64 %idx.ext61
  %53 = load i32, i32* %draster, align 4, !tbaa !9
  %54 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv63 = trunc i64 %54 to i8
  %55 = load i32, i32* %w.addr, align 4, !tbaa !9
  %shl64 = shl i32 %55, 1
  %56 = load i32, i32* %h.addr, align 4, !tbaa !9
  call void @bytes_fill_rectangle(i8* %add.ptr62, i32 %53, i8 zeroext %conv63, i32 %shl64, i32 %56) #3
  br label %if.end.91

if.else.65:                                       ; preds = %if.else
  br label %while.cond.66

while.cond.66:                                    ; preds = %sw.epilog, %if.else.65
  %57 = load i32, i32* %h.addr, align 4, !tbaa !9
  %dec67 = add nsw i32 %57, -1
  store i32 %dec67, i32* %h.addr, align 4, !tbaa !9
  %cmp68 = icmp sgt i32 %57, 0
  br i1 %cmp68, label %while.body.70, label %while.end.90

while.body.70:                                    ; preds = %while.cond.66
  %58 = bitcast i16** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %58) #2
  %59 = load i8*, i8** %dest, align 8, !tbaa !1
  %60 = bitcast i8* %59 to i16*
  store i16* %60, i16** %pptr, align 8, !tbaa !1
  %61 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load i32, i32* %w.addr, align 4, !tbaa !9
  store i32 %62, i32* %cnt, align 4, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.70
  %63 = load i32, i32* %cnt, align 4, !tbaa !9
  %cmp71 = icmp sge i32 %63, 4
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i16, i16* %color16, align 2, !tbaa !5
  %65 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %65, i64 0
  store i16 %64, i16* %arrayidx73, align 2, !tbaa !5
  %66 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i16, i16* %66, i64 1
  store i16 %64, i16* %arrayidx74, align 2, !tbaa !5
  %67 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx75 = getelementptr inbounds i16, i16* %67, i64 2
  store i16 %64, i16* %arrayidx75, align 2, !tbaa !5
  %68 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds i16, i16* %68, i64 3
  store i16 %64, i16* %arrayidx76, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i16*, i16** %pptr, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds i16, i16* %69, i64 4
  store i16* %add.ptr77, i16** %pptr, align 8, !tbaa !1
  %70 = load i32, i32* %cnt, align 4, !tbaa !9
  %sub78 = sub nsw i32 %70, 4
  store i32 %sub78, i32* %cnt, align 4, !tbaa !9
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load i32, i32* %cnt, align 4, !tbaa !9
  switch i32 %71, label %sw.epilog [
    i32 3, label %sw.bb
    i32 2, label %sw.bb.80
    i32 1, label %sw.bb.82
    i32 0, label %sw.bb.84
  ]

sw.bb:                                            ; preds = %for.end
  %72 = load i16, i16* %color16, align 2, !tbaa !5
  %73 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i16, i16* %73, i64 2
  store i16 %72, i16* %arrayidx79, align 2, !tbaa !5
  br label %sw.bb.80

sw.bb.80:                                         ; preds = %for.end, %sw.bb
  %74 = load i16, i16* %color16, align 2, !tbaa !5
  %75 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i16, i16* %75, i64 1
  store i16 %74, i16* %arrayidx81, align 2, !tbaa !5
  br label %sw.bb.82

sw.bb.82:                                         ; preds = %for.end, %sw.bb.80
  %76 = load i16, i16* %color16, align 2, !tbaa !5
  %77 = load i16*, i16** %pptr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i16, i16* %77, i64 0
  store i16 %76, i16* %arrayidx83, align 2, !tbaa !5
  br label %sw.bb.84

sw.bb.84:                                         ; preds = %for.end, %sw.bb.82
  br label %do.body.85

do.body.85:                                       ; preds = %sw.bb.84
  br label %do.cond.86

do.cond.86:                                       ; preds = %do.body.85
  br label %do.end.87

do.end.87:                                        ; preds = %do.cond.86
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.87, %for.end
  %78 = load i8*, i8** %dest, align 8, !tbaa !1
  %79 = load i32, i32* %draster, align 4, !tbaa !9
  %idx.ext88 = zext i32 %79 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %78, i64 %idx.ext88
  store i8* %add.ptr89, i8** %dest, align 8, !tbaa !1
  %80 = bitcast i32* %cnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i16** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #2
  br label %while.cond.66

while.end.90:                                     ; preds = %while.cond.66
  br label %if.end.91

if.end.91:                                        ; preds = %while.end.90, %if.then.56
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.92, %if.then.39
  %82 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = bitcast i16* %color16 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %84) #2
  %85 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = load i32, i32* %retval
  ret i32 %86
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true16_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %zero16 = alloca i16, align 2
  %one16 = alloca i16, align 2
  %line = alloca i8*, align 8
  %first_bit = alloca i32, align 4
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i16*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %base, i8** %base.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !9
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !9
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  store i32 %y, i32* %y.addr, align 4, !tbaa !9
  store i32 %w, i32* %w.addr, align 4, !tbaa !9
  store i32 %h, i32* %h.addr, align 4, !tbaa !9
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !7
  store i64 %one, i64* %one.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i16* %zero16 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv = trunc i64 %4 to i8
  %conv1 = zext i8 %conv to i32
  %shl = shl i32 %conv1, 8
  %5 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %conv2 = trunc i64 %5 to i16
  %conv3 = zext i16 %conv2 to i32
  %shr = ashr i32 %conv3, 8
  %add = add i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %zero16, align 2, !tbaa !5
  %6 = bitcast i16* %one16 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv5 = trunc i64 %7 to i8
  %conv6 = zext i8 %conv5 to i32
  %shl7 = shl i32 %conv6, 8
  %8 = load i64, i64* %one.addr, align 8, !tbaa !7
  %conv8 = trunc i64 %8 to i16
  %conv9 = zext i16 %conv8 to i32
  %shr10 = ashr i32 %conv9, 8
  %add11 = add i32 %shl7, %shr10
  %conv12 = trunc i32 %add11 to i16
  store i16 %conv12, i16* %one16, align 2, !tbaa !5
  %9 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.13

do.body.13:                                       ; preds = %do.body
  %13 = load i32, i32* %x.addr, align 4, !tbaa !9
  %14 = load i32, i32* %y.addr, align 4, !tbaa !9
  %or = or i32 %13, %14
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %do.body.13
  %15 = load i32, i32* %x.addr, align 4, !tbaa !9
  %cmp15 = icmp slt i32 %15, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %16 = load i32, i32* %x.addr, align 4, !tbaa !9
  %17 = load i32, i32* %w.addr, align 4, !tbaa !9
  %add18 = add nsw i32 %17, %16
  store i32 %add18, i32* %w.addr, align 4, !tbaa !9
  %18 = load i32, i32* %x.addr, align 4, !tbaa !9
  %19 = load i32, i32* %sourcex.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %19, %18
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !9
  store i32 0, i32* %x.addr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  %20 = load i32, i32* %y.addr, align 4, !tbaa !9
  %cmp19 = icmp slt i32 %20, 0
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end
  %21 = load i32, i32* %y.addr, align 4, !tbaa !9
  %22 = load i32, i32* %h.addr, align 4, !tbaa !9
  %add22 = add nsw i32 %22, %21
  store i32 %add22, i32* %h.addr, align 4, !tbaa !9
  %23 = load i32, i32* %y.addr, align 4, !tbaa !9
  %24 = load i32, i32* %sraster.addr, align 4, !tbaa !9
  %mul = mul nsw i32 %23, %24
  %25 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !9
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %do.body.13
  %26 = load i32, i32* %w.addr, align 4, !tbaa !9
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 13
  %28 = load i32, i32* %width, align 4, !tbaa !11
  %29 = load i32, i32* %x.addr, align 4, !tbaa !9
  %sub25 = sub nsw i32 %28, %29
  %cmp26 = icmp sgt i32 %26, %sub25
  br i1 %cmp26, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.24
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width29 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width29, align 4, !tbaa !11
  %32 = load i32, i32* %x.addr, align 4, !tbaa !9
  %sub30 = sub nsw i32 %31, %32
  store i32 %sub30, i32* %w.addr, align 4, !tbaa !9
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.24
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load i32, i32* %h.addr, align 4, !tbaa !9
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height, align 4, !tbaa !22
  %36 = load i32, i32* %y.addr, align 4, !tbaa !9
  %sub32 = sub nsw i32 %35, %36
  %cmp33 = icmp sgt i32 %33, %sub32
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %do.end
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 14
  %38 = load i32, i32* %height36, align 4, !tbaa !22
  %39 = load i32, i32* %y.addr, align 4, !tbaa !9
  %sub37 = sub nsw i32 %38, %39
  store i32 %sub37, i32* %h.addr, align 4, !tbaa !9
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %do.end
  %40 = load i32, i32* %w.addr, align 4, !tbaa !9
  %cmp39 = icmp sle i32 %40, 0
  br i1 %cmp39, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.38
  %41 = load i32, i32* %h.addr, align 4, !tbaa !9
  %cmp41 = icmp sle i32 %41, 0
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %lor.lhs.false
  br label %do.cond.45

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 44
  %43 = load i32, i32* %raster, align 4, !tbaa !23
  store i32 %43, i32* %draster, align 4, !tbaa !9
  %44 = load i32, i32* %y.addr, align 4, !tbaa !9
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %45, i32 0, i32 52
  %46 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %46, i64 %idxprom
  %47 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %48 = load i32, i32* %x.addr, align 4, !tbaa !9
  %shl47 = shl i32 %48, 1
  %idx.ext48 = sext i32 %shl47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %47, i64 %idx.ext48
  store i8* %add.ptr49, i8** %dest, align 8, !tbaa !1
  %49 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %50 = load i32, i32* %sourcex.addr, align 4, !tbaa !9
  %shr50 = ashr i32 %50, 3
  %idx.ext51 = sext i32 %shr50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %49, i64 %idx.ext51
  store i8* %add.ptr52, i8** %line, align 8, !tbaa !1
  %51 = load i32, i32* %sourcex.addr, align 4, !tbaa !9
  %and = and i32 %51, 7
  %shr53 = ashr i32 128, %and
  store i32 %shr53, i32* %first_bit, align 4, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %do.end.81, %do.end.46
  %52 = load i32, i32* %h.addr, align 4, !tbaa !9
  %dec = add nsw i32 %52, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !9
  %cmp54 = icmp sgt i32 %52, 0
  br i1 %cmp54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %53 = bitcast i16** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %53) #2
  %54 = load i8*, i8** %dest, align 8, !tbaa !1
  %55 = bitcast i8* %54 to i16*
  store i16* %55, i16** %pptr, align 8, !tbaa !1
  %56 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #2
  %57 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %57, i8** %sptr, align 8, !tbaa !1
  %58 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %60 = load i8, i8* %59, align 1, !tbaa !35
  %conv56 = zext i8 %60 to i32
  store i32 %conv56, i32* %sbyte, align 4, !tbaa !9
  %61 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %62 = load i32, i32* %first_bit, align 4, !tbaa !9
  store i32 %62, i32* %bit, align 4, !tbaa !9
  %63 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load i32, i32* %w.addr, align 4, !tbaa !9
  store i32 %64, i32* %count, align 4, !tbaa !9
  br label %do.body.57

do.body.57:                                       ; preds = %do.cond.77, %while.body
  %65 = load i32, i32* %sbyte, align 4, !tbaa !9
  %66 = load i32, i32* %bit, align 4, !tbaa !9
  %and58 = and i32 %65, %66
  %tobool = icmp ne i32 %and58, 0
  br i1 %tobool, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %do.body.57
  %67 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp60 = icmp ne i64 %67, -1
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.59
  %68 = load i16, i16* %one16, align 2, !tbaa !5
  %69 = load i16*, i16** %pptr, align 8, !tbaa !1
  store i16 %68, i16* %69, align 2, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.then.59
  br label %if.end.68

if.else:                                          ; preds = %do.body.57
  %70 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp64 = icmp ne i64 %70, -1
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.else
  %71 = load i16, i16* %zero16, align 2, !tbaa !5
  %72 = load i16*, i16** %pptr, align 8, !tbaa !1
  store i16 %71, i16* %72, align 2, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %if.else
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.63
  %73 = load i32, i32* %bit, align 4, !tbaa !9
  %shr69 = ashr i32 %73, 1
  store i32 %shr69, i32* %bit, align 4, !tbaa !9
  %cmp70 = icmp eq i32 %shr69, 0
  br i1 %cmp70, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.68
  store i32 128, i32* %bit, align 4, !tbaa !9
  %74 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr73, i8** %sptr, align 8, !tbaa !1
  %75 = load i8, i8* %74, align 1, !tbaa !35
  %conv74 = zext i8 %75 to i32
  store i32 %conv74, i32* %sbyte, align 4, !tbaa !9
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.end.68
  %76 = load i16*, i16** %pptr, align 8, !tbaa !1
  %incdec.ptr76 = getelementptr inbounds i16, i16* %76, i32 1
  store i16* %incdec.ptr76, i16** %pptr, align 8, !tbaa !1
  br label %do.cond.77

do.cond.77:                                       ; preds = %if.end.75
  %77 = load i32, i32* %count, align 4, !tbaa !9
  %dec78 = add nsw i32 %77, -1
  store i32 %dec78, i32* %count, align 4, !tbaa !9
  %cmp79 = icmp sgt i32 %dec78, 0
  br i1 %cmp79, label %do.body.57, label %do.end.81

do.end.81:                                        ; preds = %do.cond.77
  %78 = load i32, i32* %sraster.addr, align 4, !tbaa !9
  %79 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext82 = sext i32 %78 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %79, i64 %idx.ext82
  store i8* %add.ptr83, i8** %line, align 8, !tbaa !1
  %80 = load i8*, i8** %dest, align 8, !tbaa !1
  %81 = load i32, i32* %draster, align 4, !tbaa !9
  %idx.ext84 = zext i32 %81 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %80, i64 %idx.ext84
  store i8* %add.ptr85, i8** %dest, align 8, !tbaa !1
  %82 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  %86 = bitcast i16** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.43
  %87 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  %88 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #2
  %89 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #2
  %90 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #2
  %91 = bitcast i16* %one16 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %91) #2
  %92 = bitcast i16* %zero16 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %92) #2
  %93 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = load i32, i32* %retval
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true16_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !9
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !9
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !9
  store i32 %y, i32* %y.addr, align 4, !tbaa !9
  store i32 %w, i32* %w.addr, align 4, !tbaa !9
  store i32 %h, i32* %h.addr, align 4, !tbaa !9
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %3 = load i32, i32* %x.addr, align 4, !tbaa !9
  %4 = load i32, i32* %y.addr, align 4, !tbaa !9
  %or = or i32 %3, %4
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %5 = load i32, i32* %x.addr, align 4, !tbaa !9
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %x.addr, align 4, !tbaa !9
  %7 = load i32, i32* %w.addr, align 4, !tbaa !9
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %w.addr, align 4, !tbaa !9
  %8 = load i32, i32* %x.addr, align 4, !tbaa !9
  %9 = load i32, i32* %sourcex.addr, align 4, !tbaa !9
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !9
  store i32 0, i32* %x.addr, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %10 = load i32, i32* %y.addr, align 4, !tbaa !9
  %cmp4 = icmp slt i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %11 = load i32, i32* %y.addr, align 4, !tbaa !9
  %12 = load i32, i32* %h.addr, align 4, !tbaa !9
  %add6 = add nsw i32 %12, %11
  store i32 %add6, i32* %h.addr, align 4, !tbaa !9
  %13 = load i32, i32* %y.addr, align 4, !tbaa !9
  %14 = load i32, i32* %sraster.addr, align 4, !tbaa !9
  %mul = mul nsw i32 %13, %14
  %15 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !9
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %16 = load i32, i32* %w.addr, align 4, !tbaa !9
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !11
  %19 = load i32, i32* %x.addr, align 4, !tbaa !9
  %sub9 = sub nsw i32 %18, %19
  %cmp10 = icmp sgt i32 %16, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width12, align 4, !tbaa !11
  %22 = load i32, i32* %x.addr, align 4, !tbaa !9
  %sub13 = sub nsw i32 %21, %22
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !9
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %h.addr, align 4, !tbaa !9
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height, align 4, !tbaa !22
  %26 = load i32, i32* %y.addr, align 4, !tbaa !9
  %sub15 = sub nsw i32 %25, %26
  %cmp16 = icmp sgt i32 %23, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height18, align 4, !tbaa !22
  %29 = load i32, i32* %y.addr, align 4, !tbaa !9
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !9
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %30 = load i32, i32* %w.addr, align 4, !tbaa !9
  %cmp21 = icmp sle i32 %30, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %31 = load i32, i32* %h.addr, align 4, !tbaa !9
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
  %32 = load i32, i32* %y.addr, align 4, !tbaa !9
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 52
  %34 = load i8**, i8*** %line_ptrs, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %34, i64 %idxprom
  %35 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %36 = load i32, i32* %x.addr, align 4, !tbaa !9
  %shl = shl i32 %36, 1
  %idx.ext27 = sext i32 %shl to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %35, i64 %idx.ext27
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !23
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !9
  %shl29 = shl i32 %40, 1
  %idx.ext30 = sext i32 %shl29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 %idx.ext30
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !9
  %42 = load i32, i32* %w.addr, align 4, !tbaa !9
  %shl32 = shl i32 %42, 1
  %43 = load i32, i32* %h.addr, align 4, !tbaa !9
  call void @bytes_copy_rectangle(i8* %add.ptr28, i32 %38, i8* %add.ptr31, i32 %41, i32 %shl32, i32 %43) #3
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

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @bytes_fill_rectangle(i8*, i32, i8 zeroext, i32, i32) #0

declare void @bytes_copy_rectangle(i8*, i32, i8*, i32, i32, i32) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !3, i64 0}
!11 = !{!12, !10, i64 832}
!12 = !{!"gx_device_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !13, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !14, i64 96, !16, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !10, i64 1052, !10, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!13 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !6, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !10, i64 712}
!15 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!16 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !19, i64 16, !10, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !8, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!12, !10, i64 836}
!23 = !{!24, !10, i64 1736}
!24 = !{!"gx_device_memory_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !13, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !14, i64 96, !16, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !10, i64 1052, !10, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !10, i64 1736, !2, i64 1744, !2, i64 1752, !10, i64 1760, !2, i64 1768, !10, i64 1776, !3, i64 1780, !25, i64 2548, !2, i64 2576, !27, i64 2584, !28, i64 2600, !29, i64 2624, !30, i64 2656, !31, i64 2680, !32, i64 2720, !33, i64 2736, !10, i64 2744, !10, i64 2748, !10, i64 2752, !10, i64 2756, !10, i64 2760, !8, i64 2768, !2, i64 2776, !10, i64 2784, !10, i64 2788}
!25 = !{!"gs_matrix_s", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !26, i64 16, !26, i64 20}
!26 = !{!"float", !3, i64 0}
!27 = !{!"gs_const_string_s", !2, i64 0, !10, i64 8}
!28 = !{!"_c24", !8, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!29 = !{!"_c40", !8, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24}
!30 = !{!"_c48", !8, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!31 = !{!"_c56", !8, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!32 = !{!"_c64", !8, i64 0, !10, i64 8, !10, i64 12}
!33 = !{!"gs_log2_scale_point_s", !10, i64 0, !10, i64 4}
!34 = !{!24, !2, i64 2576}
!35 = !{!3, !3, i64 0}
