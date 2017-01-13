; ModuleID = './gdevm2.bc'
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

@.str = private unnamed_addr constant [7 x i8] c"image2\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_mapped2_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 2, i8 -1, i32 3, i32 3, i32 4, i32 4, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @mem_mapped_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_mapped_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_mapped2_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_mapped2_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_mapped2_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_gray_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"image2w\00", align 1
@mem_mapped2_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 2, i8 -1, i32 3, i32 3, i32 4, i32 4, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @mem_mapped_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_mapped_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem2_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem2_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem2_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@tile_patterns = internal constant [4 x i32] [i32 0, i32 1431655765, i32 -1431655766, i32 -1], align 16
@mem_mapped2_copy_mono.btab = internal constant [4 x i8] c"\00U\AA\FF", align 1
@mem_mapped2_copy_mono.bmask = internal constant [4 x i8] c"\C00\0C\03", align 1
@mem_mapped2_copy_mono.lmask = internal constant [4 x i8] c"\00\C0\F0\FC", align 1
@mem_mono_device = external constant %struct.gx_device_memory_s, align 8
@mem_mono_word_device = external constant %struct.gx_device_memory_s, align 8

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

declare i32 @mem_open(%struct.gx_device_s*) #0

declare void @mem_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #0

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @mem_close(%struct.gx_device_s*) #0

declare i64 @mem_mapped_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @mem_mapped_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_mapped2_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
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
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
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
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %8, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add7 = add nsw i32 %10, %9
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
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !9
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %13, %14
  %cmp11 = icmp sgt i32 %11, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width13, align 4, !tbaa !9
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %16, %17
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.10
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 14
  %20 = load i32, i32* %height, align 4, !tbaa !21
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %20, %21
  %cmp20 = icmp sgt i32 %18, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height22, align 4, !tbaa !21
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %23, %24
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
  %25 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %25, 0
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.28
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %26, 0
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
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 52
  %29 = load i8**, i8*** %line_ptrs, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds i8*, i8** %29, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %31 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl = shl i32 %31, 1
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 44
  %33 = load i32, i32* %raster, align 4, !tbaa !33
  %34 = load i64, i64* %color.addr, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* @tile_patterns, i32 0, i64 %34
  %35 = load i32, i32* %arrayidx35, align 4, !tbaa !5
  %36 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl36 = shl i32 %36, 1
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bits_fill_rectangle(i8* %30, i32 %shl, i32 %33, i32 %35, i32 %shl36, i32 %37) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.34, %if.then.31
  %38 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_mapped2_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %first_bit = alloca i32, align 4
  %first_mask = alloca i8, align 1
  %b0 = alloca i8, align 1
  %b1 = alloca i8, align 1
  %bxor = alloca i8, align 1
  %left_mask = alloca i8, align 1
  %right_mask = alloca i8, align 1
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %mask = alloca i8, align 1
  %count = alloca i32, align 4
  %data = alloca i8, align 1
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
  %4 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  call void @llvm.lifetime.start(i64 1, i8* %first_mask) #2
  call void @llvm.lifetime.start(i64 1, i8* %b0) #2
  call void @llvm.lifetime.start(i64 1, i8* %b1) #2
  call void @llvm.lifetime.start(i64 1, i8* %bxor) #2
  call void @llvm.lifetime.start(i64 1, i8* %left_mask) #2
  call void @llvm.lifetime.start(i64 1, i8* %right_mask) #2
  %5 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %7 = load i32, i32* %x.addr, align 4, !tbaa !5
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %7, %8
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %9 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %10 = load i32, i32* %x.addr, align 4, !tbaa !5
  %11 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %13, %12
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %14 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %15 = load i32, i32* %y.addr, align 4, !tbaa !5
  %16 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %16, %15
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %17, %18
  %19 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %20 = load i32, i32* %w.addr, align 4, !tbaa !5
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width, align 4, !tbaa !9
  %23 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %22, %23
  %cmp10 = icmp sgt i32 %20, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 13
  %25 = load i32, i32* %width12, align 4, !tbaa !9
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %25, %26
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %h.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 14
  %29 = load i32, i32* %height, align 4, !tbaa !21
  %30 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %29, %30
  %cmp16 = icmp sgt i32 %27, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 14
  %32 = load i32, i32* %height18, align 4, !tbaa !21
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %32, %33
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %34 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %34, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %35 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %35, 0
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
  %36 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %36, i32 0, i32 44
  %37 = load i32, i32* %raster, align 4, !tbaa !33
  store i32 %37, i32* %draster, align 4, !tbaa !5
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 52
  %40 = load i8**, i8*** %line_ptrs, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds i8*, i8** %40, i64 %idxprom
  %41 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %42 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %42, 2
  %idx.ext27 = sext i32 %shr to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %41, i64 %idx.ext27
  store i8* %add.ptr28, i8** %dest, align 8, !tbaa !1
  %43 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %44 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr29 = ashr i32 %44, 3
  %idx.ext30 = sext i32 %shr29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %43, i64 %idx.ext30
  store i8* %add.ptr31, i8** %line, align 8, !tbaa !1
  %45 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and = and i32 %45, 7
  %shr32 = ashr i32 128, %and
  store i32 %shr32, i32* %first_bit, align 4, !tbaa !5
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and33 = and i32 %46, 3
  %idxprom34 = sext i32 %and33 to i64
  %arrayidx35 = getelementptr inbounds [4 x i8], [4 x i8]* @mem_mapped2_copy_mono.bmask, i32 0, i64 %idxprom34
  %47 = load i8, i8* %arrayidx35, align 1, !tbaa !34
  store i8 %47, i8* %first_mask, align 1, !tbaa !34
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and36 = and i32 %48, 3
  %idxprom37 = sext i32 %and36 to i64
  %arrayidx38 = getelementptr inbounds [4 x i8], [4 x i8]* @mem_mapped2_copy_mono.lmask, i32 0, i64 %idxprom37
  %49 = load i8, i8* %arrayidx38, align 1, !tbaa !34
  store i8 %49, i8* %left_mask, align 1, !tbaa !34
  %50 = load i32, i32* %x.addr, align 4, !tbaa !5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add39 = add nsw i32 %50, %51
  %and40 = and i32 %add39, 3
  %idxprom41 = sext i32 %and40 to i64
  %arrayidx42 = getelementptr inbounds [4 x i8], [4 x i8]* @mem_mapped2_copy_mono.lmask, i32 0, i64 %idxprom41
  %52 = load i8, i8* %arrayidx42, align 1, !tbaa !34
  %conv = zext i8 %52 to i32
  %neg = xor i32 %conv, -1
  %conv43 = trunc i32 %neg to i8
  store i8 %conv43, i8* %right_mask, align 1, !tbaa !34
  %53 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and44 = and i32 %53, 3
  %54 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add45 = add nsw i32 %and44, %54
  %cmp46 = icmp sle i32 %add45, 3
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %do.end.26
  %55 = load i8, i8* %left_mask, align 1, !tbaa !34
  %conv49 = zext i8 %55 to i32
  %56 = load i8, i8* %right_mask, align 1, !tbaa !34
  %conv50 = zext i8 %56 to i32
  %or51 = or i32 %conv49, %conv50
  %conv52 = trunc i32 %or51 to i8
  store i8 %conv52, i8* %right_mask, align 1, !tbaa !34
  store i8 %conv52, i8* %left_mask, align 1, !tbaa !34
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %do.end.26
  %57 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %and54 = and i64 %57, 3
  %arrayidx55 = getelementptr inbounds [4 x i8], [4 x i8]* @mem_mapped2_copy_mono.btab, i32 0, i64 %and54
  %58 = load i8, i8* %arrayidx55, align 1, !tbaa !34
  store i8 %58, i8* %b0, align 1, !tbaa !34
  %59 = load i64, i64* %one.addr, align 8, !tbaa !7
  %and56 = and i64 %59, 3
  %arrayidx57 = getelementptr inbounds [4 x i8], [4 x i8]* @mem_mapped2_copy_mono.btab, i32 0, i64 %and56
  %60 = load i8, i8* %arrayidx57, align 1, !tbaa !34
  store i8 %60, i8* %b1, align 1, !tbaa !34
  %61 = load i8, i8* %b0, align 1, !tbaa !34
  %conv58 = zext i8 %61 to i32
  %62 = load i8, i8* %b1, align 1, !tbaa !34
  %conv59 = zext i8 %62 to i32
  %xor = xor i32 %conv58, %conv59
  %conv60 = trunc i32 %xor to i8
  store i8 %conv60, i8* %bxor, align 1, !tbaa !34
  br label %while.cond

while.cond:                                       ; preds = %if.end.201, %if.end.53
  %63 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %63, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp61 = icmp sgt i32 %63, 0
  br i1 %cmp61, label %while.body, label %while.end

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
  %70 = load i8, i8* %69, align 1, !tbaa !34
  %conv63 = zext i8 %70 to i32
  store i32 %conv63, i32* %sbyte, align 4, !tbaa !5
  %71 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  %72 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %72, i32* %bit, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2
  %73 = load i8, i8* %first_mask, align 1, !tbaa !34
  store i8 %73, i8* %mask, align 1, !tbaa !34
  %74 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #2
  %75 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %75, i32* %count, align 4, !tbaa !5
  %76 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp64 = icmp ne i64 %76, -1
  br i1 %cmp64, label %if.then.66, label %if.else.160

if.then.66:                                       ; preds = %while.body
  %77 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp67 = icmp ne i64 %77, -1
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.then.66
  call void @llvm.lifetime.start(i64 1, i8* %data) #2
  %78 = load i8*, i8** %pptr, align 8, !tbaa !1
  %79 = load i8, i8* %78, align 1, !tbaa !34
  %conv70 = zext i8 %79 to i32
  %80 = load i8, i8* %left_mask, align 1, !tbaa !34
  %conv71 = zext i8 %80 to i32
  %and72 = and i32 %conv70, %conv71
  %81 = load i8, i8* %b0, align 1, !tbaa !34
  %conv73 = zext i8 %81 to i32
  %82 = load i8, i8* %left_mask, align 1, !tbaa !34
  %conv74 = zext i8 %82 to i32
  %neg75 = xor i32 %conv74, -1
  %and76 = and i32 %conv73, %neg75
  %or77 = or i32 %and72, %and76
  %conv78 = trunc i32 %or77 to i8
  store i8 %conv78, i8* %data, align 1, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %if.end.108, %if.then.69
  %83 = load i32, i32* %sbyte, align 4, !tbaa !5
  %84 = load i32, i32* %bit, align 4, !tbaa !5
  %and79 = and i32 %83, %84
  %tobool = icmp ne i32 %and79, 0
  br i1 %tobool, label %if.then.80, label %if.end.87

if.then.80:                                       ; preds = %for.cond
  %85 = load i8, i8* %bxor, align 1, !tbaa !34
  %conv81 = zext i8 %85 to i32
  %86 = load i8, i8* %mask, align 1, !tbaa !34
  %conv82 = zext i8 %86 to i32
  %and83 = and i32 %conv81, %conv82
  %87 = load i8, i8* %data, align 1, !tbaa !34
  %conv84 = zext i8 %87 to i32
  %xor85 = xor i32 %conv84, %and83
  %conv86 = trunc i32 %xor85 to i8
  store i8 %conv86, i8* %data, align 1, !tbaa !34
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.80, %for.cond
  %88 = load i32, i32* %bit, align 4, !tbaa !5
  %shr88 = ashr i32 %88, 1
  store i32 %shr88, i32* %bit, align 4, !tbaa !5
  %cmp89 = icmp eq i32 %shr88, 0
  br i1 %cmp89, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.87
  store i32 128, i32* %bit, align 4, !tbaa !5
  %89 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr92 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr92, i8** %sptr, align 8, !tbaa !1
  %90 = load i8, i8* %89, align 1, !tbaa !34
  %conv93 = zext i8 %90 to i32
  store i32 %conv93, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.87
  %91 = load i8, i8* %mask, align 1, !tbaa !34
  %conv95 = zext i8 %91 to i32
  %shr96 = ashr i32 %conv95, 2
  %conv97 = trunc i32 %shr96 to i8
  store i8 %conv97, i8* %mask, align 1, !tbaa !34
  %conv98 = zext i8 %conv97 to i32
  %cmp99 = icmp eq i32 %conv98, 0
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.end.94
  store i8 -64, i8* %mask, align 1, !tbaa !34
  %92 = load i8, i8* %data, align 1, !tbaa !34
  %93 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr102, i8** %pptr, align 8, !tbaa !1
  store i8 %92, i8* %93, align 1, !tbaa !34
  %94 = load i8, i8* %b0, align 1, !tbaa !34
  store i8 %94, i8* %data, align 1, !tbaa !34
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.end.94
  %95 = load i32, i32* %count, align 4, !tbaa !5
  %dec104 = add nsw i32 %95, -1
  store i32 %dec104, i32* %count, align 4, !tbaa !5
  %cmp105 = icmp sle i32 %dec104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  br label %for.end

if.end.108:                                       ; preds = %if.end.103
  br label %for.cond

for.end:                                          ; preds = %if.then.107
  %96 = load i8, i8* %mask, align 1, !tbaa !34
  %conv109 = zext i8 %96 to i32
  %cmp110 = icmp ne i32 %conv109, 192
  br i1 %cmp110, label %if.then.112, label %if.end.122

if.then.112:                                      ; preds = %for.end
  %97 = load i8*, i8** %pptr, align 8, !tbaa !1
  %98 = load i8, i8* %97, align 1, !tbaa !34
  %conv113 = zext i8 %98 to i32
  %99 = load i8, i8* %right_mask, align 1, !tbaa !34
  %conv114 = zext i8 %99 to i32
  %and115 = and i32 %conv113, %conv114
  %100 = load i8, i8* %data, align 1, !tbaa !34
  %conv116 = zext i8 %100 to i32
  %101 = load i8, i8* %right_mask, align 1, !tbaa !34
  %conv117 = zext i8 %101 to i32
  %neg118 = xor i32 %conv117, -1
  %and119 = and i32 %conv116, %neg118
  %or120 = or i32 %and115, %and119
  %conv121 = trunc i32 %or120 to i8
  %102 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv121, i8* %102, align 1, !tbaa !34
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.112, %for.end
  call void @llvm.lifetime.end(i64 1, i8* %data) #2
  br label %if.end.159

if.else:                                          ; preds = %if.then.66
  br label %for.cond.123

for.cond.123:                                     ; preds = %if.end.157, %if.else
  %103 = load i32, i32* %sbyte, align 4, !tbaa !5
  %104 = load i32, i32* %bit, align 4, !tbaa !5
  %and124 = and i32 %103, %104
  %tobool125 = icmp ne i32 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.136

if.then.126:                                      ; preds = %for.cond.123
  %105 = load i8*, i8** %pptr, align 8, !tbaa !1
  %106 = load i8, i8* %105, align 1, !tbaa !34
  %conv127 = zext i8 %106 to i32
  %107 = load i8, i8* %mask, align 1, !tbaa !34
  %conv128 = zext i8 %107 to i32
  %neg129 = xor i32 %conv128, -1
  %and130 = and i32 %conv127, %neg129
  %108 = load i8, i8* %b1, align 1, !tbaa !34
  %conv131 = zext i8 %108 to i32
  %109 = load i8, i8* %mask, align 1, !tbaa !34
  %conv132 = zext i8 %109 to i32
  %and133 = and i32 %conv131, %conv132
  %add134 = add nsw i32 %and130, %and133
  %conv135 = trunc i32 %add134 to i8
  %110 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv135, i8* %110, align 1, !tbaa !34
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.126, %for.cond.123
  %111 = load i32, i32* %count, align 4, !tbaa !5
  %dec137 = add nsw i32 %111, -1
  store i32 %dec137, i32* %count, align 4, !tbaa !5
  %cmp138 = icmp sle i32 %dec137, 0
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %if.end.136
  br label %for.end.158

if.end.141:                                       ; preds = %if.end.136
  %112 = load i32, i32* %bit, align 4, !tbaa !5
  %shr142 = ashr i32 %112, 1
  store i32 %shr142, i32* %bit, align 4, !tbaa !5
  %cmp143 = icmp eq i32 %shr142, 0
  br i1 %cmp143, label %if.then.145, label %if.end.148

if.then.145:                                      ; preds = %if.end.141
  store i32 128, i32* %bit, align 4, !tbaa !5
  %113 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr146 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %incdec.ptr146, i8** %sptr, align 8, !tbaa !1
  %114 = load i8, i8* %113, align 1, !tbaa !34
  %conv147 = zext i8 %114 to i32
  store i32 %conv147, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.145, %if.end.141
  %115 = load i8, i8* %mask, align 1, !tbaa !34
  %conv149 = zext i8 %115 to i32
  %shr150 = ashr i32 %conv149, 2
  %conv151 = trunc i32 %shr150 to i8
  store i8 %conv151, i8* %mask, align 1, !tbaa !34
  %conv152 = zext i8 %conv151 to i32
  %cmp153 = icmp eq i32 %conv152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.148
  store i8 -64, i8* %mask, align 1, !tbaa !34
  %116 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr156 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr156, i8** %pptr, align 8, !tbaa !1
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.148
  br label %for.cond.123

for.end.158:                                      ; preds = %if.then.140
  br label %if.end.159

if.end.159:                                       ; preds = %for.end.158, %if.end.122
  br label %if.end.201

if.else.160:                                      ; preds = %while.body
  br label %for.cond.161

for.cond.161:                                     ; preds = %if.end.199, %if.else.160
  %117 = load i32, i32* %sbyte, align 4, !tbaa !5
  %118 = load i32, i32* %bit, align 4, !tbaa !5
  %and162 = and i32 %117, %118
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %if.end.178, label %if.then.164

if.then.164:                                      ; preds = %for.cond.161
  %119 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp165 = icmp ne i64 %119, -1
  br i1 %cmp165, label %if.then.167, label %if.end.177

if.then.167:                                      ; preds = %if.then.164
  %120 = load i8*, i8** %pptr, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !34
  %conv168 = zext i8 %121 to i32
  %122 = load i8, i8* %mask, align 1, !tbaa !34
  %conv169 = zext i8 %122 to i32
  %neg170 = xor i32 %conv169, -1
  %and171 = and i32 %conv168, %neg170
  %123 = load i8, i8* %b0, align 1, !tbaa !34
  %conv172 = zext i8 %123 to i32
  %124 = load i8, i8* %mask, align 1, !tbaa !34
  %conv173 = zext i8 %124 to i32
  %and174 = and i32 %conv172, %conv173
  %add175 = add nsw i32 %and171, %and174
  %conv176 = trunc i32 %add175 to i8
  %125 = load i8*, i8** %pptr, align 8, !tbaa !1
  store i8 %conv176, i8* %125, align 1, !tbaa !34
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.167, %if.then.164
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.cond.161
  %126 = load i32, i32* %count, align 4, !tbaa !5
  %dec179 = add nsw i32 %126, -1
  store i32 %dec179, i32* %count, align 4, !tbaa !5
  %cmp180 = icmp sle i32 %dec179, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.end.178
  br label %for.end.200

if.end.183:                                       ; preds = %if.end.178
  %127 = load i32, i32* %bit, align 4, !tbaa !5
  %shr184 = ashr i32 %127, 1
  store i32 %shr184, i32* %bit, align 4, !tbaa !5
  %cmp185 = icmp eq i32 %shr184, 0
  br i1 %cmp185, label %if.then.187, label %if.end.190

if.then.187:                                      ; preds = %if.end.183
  store i32 128, i32* %bit, align 4, !tbaa !5
  %128 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr188 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr188, i8** %sptr, align 8, !tbaa !1
  %129 = load i8, i8* %128, align 1, !tbaa !34
  %conv189 = zext i8 %129 to i32
  store i32 %conv189, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.187, %if.end.183
  %130 = load i8, i8* %mask, align 1, !tbaa !34
  %conv191 = zext i8 %130 to i32
  %shr192 = ashr i32 %conv191, 2
  %conv193 = trunc i32 %shr192 to i8
  store i8 %conv193, i8* %mask, align 1, !tbaa !34
  %conv194 = zext i8 %conv193 to i32
  %cmp195 = icmp eq i32 %conv194, 0
  br i1 %cmp195, label %if.then.197, label %if.end.199

if.then.197:                                      ; preds = %if.end.190
  store i8 -64, i8* %mask, align 1, !tbaa !34
  %131 = load i8*, i8** %pptr, align 8, !tbaa !1
  %incdec.ptr198 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr198, i8** %pptr, align 8, !tbaa !1
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.197, %if.end.190
  br label %for.cond.161

for.end.200:                                      ; preds = %if.then.182
  br label %if.end.201

if.end.201:                                       ; preds = %for.end.200, %if.end.159
  %132 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %133 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext202 = sext i32 %132 to i64
  %add.ptr203 = getelementptr inbounds i8, i8* %133, i64 %idx.ext202
  store i8* %add.ptr203, i8** %line, align 8, !tbaa !1
  %134 = load i8*, i8** %dest, align 8, !tbaa !1
  %135 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext204 = zext i32 %135 to i64
  %add.ptr205 = getelementptr inbounds i8, i8* %134, i64 %idx.ext204
  store i8* %add.ptr205, i8** %dest, align 8, !tbaa !1
  %136 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2
  %137 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #2
  %140 = bitcast i8** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.23
  %141 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  call void @llvm.lifetime.end(i64 1, i8* %right_mask) #2
  call void @llvm.lifetime.end(i64 1, i8* %left_mask) #2
  call void @llvm.lifetime.end(i64 1, i8* %bxor) #2
  call void @llvm.lifetime.end(i64 1, i8* %b1) #2
  call void @llvm.lifetime.end(i64 1, i8* %b0) #2
  call void @llvm.lifetime.end(i64 1, i8* %first_mask) #2
  %143 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #2
  %145 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #2
  %146 = load i32, i32* %retval
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_mapped2_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %code = alloca i32, align 4
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
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %1, %2
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %10, %9
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %12
  %13 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %14 = load i32, i32* %w.addr, align 4, !tbaa !5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !9
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %16, %17
  %cmp10 = icmp sgt i32 %14, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width12, align 4, !tbaa !9
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %19, %20
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height, align 4, !tbaa !21
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %23, %24
  %cmp16 = icmp sgt i32 %21, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height18, align 4, !tbaa !21
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %26, %27
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %28 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %28, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %29, 0
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
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width27, align 4, !tbaa !9
  %shl = shl i32 %31, 1
  store i32 %shl, i32* %width27, align 4, !tbaa !9
  %32 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_device, i32 0, i32 42, i32 9), align 8, !tbaa !35
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %35 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shl28 = shl i32 %35, 1
  %36 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %37 = load i64, i64* %id.addr, align 8, !tbaa !7
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl29 = shl i32 %38, 1
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl30 = shl i32 %40, 1
  %41 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 %32(%struct.gx_device_s* %33, i8* %34, i32 %shl28, i32 %36, i64 %37, i32 %shl29, i32 %39, i32 %shl30, i32 %41, i64 0, i64 1) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 13
  %43 = load i32, i32* %width31, align 4, !tbaa !9
  %shr = ashr i32 %43, 1
  store i32 %shr, i32* %width31, align 4, !tbaa !9
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.26, %if.then.23
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
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

declare i32 @mem_gray_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #0

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #0

declare i32 @mem_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #0

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #0

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem2_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %15 = load i32, i32* %width, align 4, !tbaa !9
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %16
  %cmp11 = icmp sgt i32 %13, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width13, align 4, !tbaa !9
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
  %22 = load i32, i32* %height, align 4, !tbaa !21
  %23 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %22, %23
  %cmp20 = icmp sgt i32 %20, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height22, align 4, !tbaa !21
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
  %31 = load i8**, i8*** %line_ptrs, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 %idxprom
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %32, i8** %base, align 8, !tbaa !1
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 44
  %34 = load i32, i32* %raster35, align 4, !tbaa !33
  store i32 %34, i32* %raster, align 4, !tbaa !5
  %35 = load i8*, i8** %base, align 8, !tbaa !1
  %36 = load i32, i32* %raster, align 4, !tbaa !5
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl = shl i32 %37, 1
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl36 = shl i32 %38, 1
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %shl, i32 %shl36, i32 %39, i32 1) #3
  %40 = load i8*, i8** %base, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl37 = shl i32 %41, 1
  %42 = load i32, i32* %raster, align 4, !tbaa !5
  %43 = load i64, i64* %color.addr, align 8, !tbaa !7
  %arrayidx38 = getelementptr inbounds [4 x i32], [4 x i32]* @tile_patterns, i32 0, i64 %43
  %44 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %45 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl39 = shl i32 %45, 1
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bits_fill_rectangle(i8* %40, i32 %shl37, i32 %42, i32 %44, i32 %shl39, i32 %46) #3
  %47 = load i8*, i8** %base, align 8, !tbaa !1
  %48 = load i32, i32* %raster, align 4, !tbaa !5
  %49 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl40 = shl i32 %49, 1
  %50 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl41 = shl i32 %50, 1
  %51 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %47, i32 %48, i32 %shl40, i32 %shl41, i32 %51, i32 1) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.34, %if.then.31
  %52 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @mem2_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %21 = load i32, i32* %width, align 4, !tbaa !9
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %21, %22
  %cmp10 = icmp sgt i32 %19, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width12, align 4, !tbaa !9
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
  %28 = load i32, i32* %height, align 4, !tbaa !21
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %28, %29
  %cmp16 = icmp sgt i32 %26, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height18, align 4, !tbaa !21
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
  %37 = load i8**, i8*** %line_ptrs, align 8, !tbaa !22
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %38, i8** %row, align 8, !tbaa !1
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 44
  %40 = load i32, i32* %raster27, align 4, !tbaa !33
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
  %shl = shl i32 %46, 1
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl30 = shl i32 %47, 1
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %49 = load i32, i32* %store, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %44, i32 %45, i32 %shl, i32 %shl30, i32 %48, i32 %49) #3
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
  %call = call i32 @mem_mapped2_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #3
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl31 = shl i32 %63, 1
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl32 = shl i32 %64, 1
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %61, i32 %62, i32 %shl31, i32 %shl32, i32 %65, i32 0) #3
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
define internal i32 @mem2_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %code = alloca i32, align 4
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
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %1, %2
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i32, i32* %x.addr, align 4, !tbaa !5
  %5 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %6 = load i32, i32* %x.addr, align 4, !tbaa !5
  %7 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %6
  store i32 %sub, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %8 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %8, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %10, %9
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %11 = load i32, i32* %y.addr, align 4, !tbaa !5
  %12 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %11, %12
  %13 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.neg
  store i8* %add.ptr, i8** %base.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %14 = load i32, i32* %w.addr, align 4, !tbaa !5
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !9
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %16, %17
  %cmp10 = icmp sgt i32 %14, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width12, align 4, !tbaa !9
  %20 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %19, %20
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height, align 4, !tbaa !21
  %24 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %23, %24
  %cmp16 = icmp sgt i32 %21, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height18, align 4, !tbaa !21
  %27 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %26, %27
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %28 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %28, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %29 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %29, 0
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
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width27, align 4, !tbaa !9
  %shl = shl i32 %31, 1
  store i32 %shl, i32* %width27, align 4, !tbaa !9
  %32 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** getelementptr inbounds (%struct.gx_device_memory_s, %struct.gx_device_memory_s* @mem_mono_word_device, i32 0, i32 42, i32 9), align 8, !tbaa !35
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %35 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shl28 = shl i32 %35, 1
  %36 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %37 = load i64, i64* %id.addr, align 8, !tbaa !7
  %38 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl29 = shl i32 %38, 1
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %40 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl30 = shl i32 %40, 1
  %41 = load i32, i32* %h.addr, align 4, !tbaa !5
  %call = call i32 %32(%struct.gx_device_s* %33, i8* %34, i32 %shl28, i32 %36, i64 %37, i32 %shl29, i32 %39, i32 %shl30, i32 %41, i64 0, i64 1) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 13
  %43 = load i32, i32* %width31, align 4, !tbaa !9
  %shr = ashr i32 %43, 1
  store i32 %shr, i32* %width31, align 4, !tbaa !9
  %44 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.26, %if.then.23
  %45 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #2
  %46 = load i32, i32* %retval
  ret i32 %46
}

declare i32 @gx_no_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #0

declare i32 @mem_word_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @bits_fill_rectangle(i8*, i32, i32, i32, i32, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @mem_swap_byte_rect(i8*, i32, i32, i32, i32, i32) #0

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
!22 = !{!23, !2, i64 2576}
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
!33 = !{!23, !6, i64 1736}
!34 = !{!3, !3, i64 0}
!35 = !{!23, !2, i64 1216}
