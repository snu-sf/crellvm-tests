; ModuleID = './gdevm64.bc'
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

@.str = private unnamed_addr constant [8 x i8] c"image64\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@mem_true64_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 64, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_true64_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_true64_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem_true64_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"image64w\00", align 1
@mem_true64_word_device = constant %struct.gx_device_memory_s { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 64, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_rgb_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem64_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem64_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @mem64_word_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_default_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8

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
define internal i32 @mem_true64_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %dest = alloca i8*, align 8
  %draster = alloca i32, align 4
  %abcd = alloca i32, align 4
  %efgh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pptr = alloca i32*, align 8
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
  %3 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr = lshr i64 %6, 28
  %shr1 = lshr i64 %shr, 28
  %and = and i64 255, %shr1
  %7 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr2 = lshr i64 %7, 24
  %shr3 = lshr i64 %shr2, 16
  %and4 = and i64 65280, %shr3
  %or = or i64 %and, %and4
  %8 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr5 = lshr i64 %8, 24
  %and6 = and i64 16711680, %shr5
  %or7 = or i64 %or, %and6
  %9 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr8 = lshr i64 %9, 8
  %and9 = and i64 4278190080, %shr8
  %or10 = or i64 %or7, %and9
  %conv = trunc i64 %or10 to i32
  store i32 %conv, i32* %abcd, align 4, !tbaa !5
  %10 = bitcast i32* %efgh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr11 = lshr i64 %11, 24
  %and12 = and i64 255, %shr11
  %12 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shr13 = lshr i64 %12, 8
  %and14 = and i64 65280, %shr13
  %or15 = or i64 %and12, %and14
  %13 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shl = shl i64 %13, 8
  %and16 = and i64 16711680, %shl
  %or17 = or i64 %or15, %and16
  %14 = load i64, i64* %color.addr, align 8, !tbaa !7
  %shl18 = shl i64 %14, 24
  %and19 = and i64 4278190080, %shl18
  %or20 = or i64 %or17, %and19
  %conv21 = trunc i64 %or20 to i32
  store i32 %conv21, i32* %efgh, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.22

do.body.22:                                       ; preds = %do.body
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or23 = or i32 %15, %16
  %cmp = icmp slt i32 %or23, 0
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %do.body.22
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %17, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %20, 0
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %22 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add31 = add nsw i32 %22, %21
  store i32 %add31, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %do.body.22
  br label %do.cond

do.cond:                                          ; preds = %if.end.33
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.34

do.body.34:                                       ; preds = %do.end
  %23 = load i32, i32* %w.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 13
  %25 = load i32, i32* %width, align 4, !tbaa !9
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %26
  %cmp35 = icmp sgt i32 %23, %sub
  br i1 %cmp35, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %do.body.34
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 13
  %28 = load i32, i32* %width38, align 4, !tbaa !9
  %29 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub39 = sub nsw i32 %28, %29
  store i32 %sub39, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %do.body.34
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 14
  %32 = load i32, i32* %height, align 4, !tbaa !21
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub44 = sub nsw i32 %32, %33
  %cmp45 = icmp sgt i32 %30, %sub44
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %do.body.43
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height48 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height48, align 4, !tbaa !21
  %36 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub49 = sub nsw i32 %35, %36
  store i32 %sub49, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %do.body.43
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  %37 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp58 = icmp sle i32 %37, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %do.end.57
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %do.end.57
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp62 = icmp sge i32 %38, 5
  br i1 %cmp62, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.end.61
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  br label %do.cond.66

do.cond.66:                                       ; preds = %do.body.65
  br label %do.end.67

do.end.67:                                        ; preds = %do.cond.66
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 44
  %40 = load i32, i32* %raster, align 4, !tbaa !22
  store i32 %40, i32* %draster, align 4, !tbaa !5
  %41 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %42, i32 0, i32 52
  %43 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %43, i64 %idxprom
  %44 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %45 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl68 = shl i32 %45, 3
  %idx.ext = sext i32 %shl68 to i64
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !1
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.67
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %do.end.71
  %46 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %46, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp72 = icmp sgt i32 %46, 0
  br i1 %cmp72, label %while.body, label %while.end.117

while.body:                                       ; preds = %while.cond
  %47 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  %48 = load i8*, i8** %dest, align 8, !tbaa !1
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %pptr, align 8, !tbaa !1
  %50 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #2
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %51, i32* %w1, align 4, !tbaa !5
  br label %while.cond.74

while.cond.74:                                    ; preds = %while.body.77, %while.body
  %52 = load i32, i32* %w1, align 4, !tbaa !5
  %cmp75 = icmp sge i32 %52, 4
  br i1 %cmp75, label %while.body.77, label %while.end

while.body.77:                                    ; preds = %while.cond.74
  %53 = load i32, i32* %abcd, align 4, !tbaa !5
  %54 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %53, i32* %arrayidx78, align 4, !tbaa !5
  %55 = load i32, i32* %efgh, align 4, !tbaa !5
  %56 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx79 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %arrayidx79, align 4, !tbaa !5
  %57 = load i32, i32* %abcd, align 4, !tbaa !5
  %58 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr80 = getelementptr inbounds i32, i32* %58, i64 2
  %arrayidx81 = getelementptr inbounds i32, i32* %add.ptr80, i64 0
  store i32 %57, i32* %arrayidx81, align 4, !tbaa !5
  %59 = load i32, i32* %efgh, align 4, !tbaa !5
  %60 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i32, i32* %60, i64 2
  %arrayidx83 = getelementptr inbounds i32, i32* %add.ptr82, i64 1
  store i32 %59, i32* %arrayidx83, align 4, !tbaa !5
  %61 = load i32, i32* %abcd, align 4, !tbaa !5
  %62 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr84 = getelementptr inbounds i32, i32* %62, i64 4
  %arrayidx85 = getelementptr inbounds i32, i32* %add.ptr84, i64 0
  store i32 %61, i32* %arrayidx85, align 4, !tbaa !5
  %63 = load i32, i32* %efgh, align 4, !tbaa !5
  %64 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr86 = getelementptr inbounds i32, i32* %64, i64 4
  %arrayidx87 = getelementptr inbounds i32, i32* %add.ptr86, i64 1
  store i32 %63, i32* %arrayidx87, align 4, !tbaa !5
  %65 = load i32, i32* %abcd, align 4, !tbaa !5
  %66 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr88 = getelementptr inbounds i32, i32* %66, i64 6
  %arrayidx89 = getelementptr inbounds i32, i32* %add.ptr88, i64 0
  store i32 %65, i32* %arrayidx89, align 4, !tbaa !5
  %67 = load i32, i32* %efgh, align 4, !tbaa !5
  %68 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr90 = getelementptr inbounds i32, i32* %68, i64 6
  %arrayidx91 = getelementptr inbounds i32, i32* %add.ptr90, i64 1
  store i32 %67, i32* %arrayidx91, align 4, !tbaa !5
  %69 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr92 = getelementptr inbounds i32, i32* %69, i64 8
  store i32* %add.ptr92, i32** %pptr, align 8, !tbaa !1
  %70 = load i32, i32* %w1, align 4, !tbaa !5
  %sub93 = sub nsw i32 %70, 4
  store i32 %sub93, i32* %w1, align 4, !tbaa !5
  br label %while.cond.74

while.end:                                        ; preds = %while.cond.74
  %71 = load i32, i32* %w1, align 4, !tbaa !5
  switch i32 %71, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.96
    i32 3, label %sw.bb.103
    i32 0, label %sw.bb.114
  ]

sw.bb:                                            ; preds = %while.end
  %72 = load i32, i32* %abcd, align 4, !tbaa !5
  %73 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %72, i32* %arrayidx94, align 4, !tbaa !5
  %74 = load i32, i32* %efgh, align 4, !tbaa !5
  %75 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %arrayidx95, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.96:                                         ; preds = %while.end
  %76 = load i32, i32* %abcd, align 4, !tbaa !5
  %77 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %arrayidx97, align 4, !tbaa !5
  %78 = load i32, i32* %efgh, align 4, !tbaa !5
  %79 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %arrayidx98, align 4, !tbaa !5
  %80 = load i32, i32* %abcd, align 4, !tbaa !5
  %81 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr99 = getelementptr inbounds i32, i32* %81, i64 2
  %arrayidx100 = getelementptr inbounds i32, i32* %add.ptr99, i64 0
  store i32 %80, i32* %arrayidx100, align 4, !tbaa !5
  %82 = load i32, i32* %efgh, align 4, !tbaa !5
  %83 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr101 = getelementptr inbounds i32, i32* %83, i64 2
  %arrayidx102 = getelementptr inbounds i32, i32* %add.ptr101, i64 1
  store i32 %82, i32* %arrayidx102, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.103:                                        ; preds = %while.end
  %84 = load i32, i32* %abcd, align 4, !tbaa !5
  %85 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %arrayidx104, align 4, !tbaa !5
  %86 = load i32, i32* %efgh, align 4, !tbaa !5
  %87 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx105 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %arrayidx105, align 4, !tbaa !5
  %88 = load i32, i32* %abcd, align 4, !tbaa !5
  %89 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i32, i32* %89, i64 2
  %arrayidx107 = getelementptr inbounds i32, i32* %add.ptr106, i64 0
  store i32 %88, i32* %arrayidx107, align 4, !tbaa !5
  %90 = load i32, i32* %efgh, align 4, !tbaa !5
  %91 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr108 = getelementptr inbounds i32, i32* %91, i64 2
  %arrayidx109 = getelementptr inbounds i32, i32* %add.ptr108, i64 1
  store i32 %90, i32* %arrayidx109, align 4, !tbaa !5
  %92 = load i32, i32* %abcd, align 4, !tbaa !5
  %93 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr110 = getelementptr inbounds i32, i32* %93, i64 4
  %arrayidx111 = getelementptr inbounds i32, i32* %add.ptr110, i64 0
  store i32 %92, i32* %arrayidx111, align 4, !tbaa !5
  %94 = load i32, i32* %efgh, align 4, !tbaa !5
  %95 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr112 = getelementptr inbounds i32, i32* %95, i64 4
  %arrayidx113 = getelementptr inbounds i32, i32* %add.ptr112, i64 1
  store i32 %94, i32* %arrayidx113, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.114:                                        ; preds = %while.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.114, %while.end, %sw.bb.103, %sw.bb.96, %sw.bb
  %96 = load i8*, i8** %dest, align 8, !tbaa !1
  %97 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext115 = zext i32 %97 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %96, i64 %idx.ext115
  store i8* %add.ptr116, i8** %dest, align 8, !tbaa !1
  %98 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #2
  br label %while.cond

while.end.117:                                    ; preds = %while.cond
  br label %if.end.193

if.else:                                          ; preds = %if.end.61
  br label %do.body.118

do.body.118:                                      ; preds = %if.else
  br label %do.cond.119

do.cond.119:                                      ; preds = %do.body.118
  br label %do.end.120

do.end.120:                                       ; preds = %do.cond.119
  %100 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster121 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %100, i32 0, i32 44
  %101 = load i32, i32* %raster121, align 4, !tbaa !22
  store i32 %101, i32* %draster, align 4, !tbaa !5
  %102 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom122 = sext i32 %102 to i64
  %103 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs123 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %103, i32 0, i32 52
  %104 = load i8**, i8*** %line_ptrs123, align 8, !tbaa !33
  %arrayidx124 = getelementptr inbounds i8*, i8** %104, i64 %idxprom122
  %105 = load i8*, i8** %arrayidx124, align 8, !tbaa !1
  %106 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl125 = shl i32 %106, 3
  %idx.ext126 = sext i32 %shl125 to i64
  %add.ptr127 = getelementptr inbounds i8, i8* %105, i64 %idx.ext126
  store i8* %add.ptr127, i8** %dest, align 8, !tbaa !1
  %107 = load i32, i32* %w.addr, align 4, !tbaa !5
  switch i32 %107, label %sw.default [
    i32 4, label %sw.bb.128
    i32 3, label %sw.bb.149
    i32 2, label %sw.bb.167
    i32 1, label %sw.bb.181
    i32 0, label %sw.bb.191
  ]

sw.bb.128:                                        ; preds = %do.end.120
  br label %do.body.129

do.body.129:                                      ; preds = %do.cond.146, %sw.bb.128
  %108 = load i32, i32* %abcd, align 4, !tbaa !5
  %109 = load i8*, i8** %dest, align 8, !tbaa !1
  %110 = bitcast i8* %109 to i32*
  %arrayidx130 = getelementptr inbounds i32, i32* %110, i64 0
  store i32 %108, i32* %arrayidx130, align 4, !tbaa !5
  %111 = load i32, i32* %efgh, align 4, !tbaa !5
  %112 = load i8*, i8** %dest, align 8, !tbaa !1
  %113 = bitcast i8* %112 to i32*
  %arrayidx131 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %111, i32* %arrayidx131, align 4, !tbaa !5
  %114 = load i32, i32* %abcd, align 4, !tbaa !5
  %115 = load i8*, i8** %dest, align 8, !tbaa !1
  %116 = bitcast i8* %115 to i32*
  %add.ptr132 = getelementptr inbounds i32, i32* %116, i64 2
  %arrayidx133 = getelementptr inbounds i32, i32* %add.ptr132, i64 0
  store i32 %114, i32* %arrayidx133, align 4, !tbaa !5
  %117 = load i32, i32* %efgh, align 4, !tbaa !5
  %118 = load i8*, i8** %dest, align 8, !tbaa !1
  %119 = bitcast i8* %118 to i32*
  %add.ptr134 = getelementptr inbounds i32, i32* %119, i64 2
  %arrayidx135 = getelementptr inbounds i32, i32* %add.ptr134, i64 1
  store i32 %117, i32* %arrayidx135, align 4, !tbaa !5
  %120 = load i32, i32* %abcd, align 4, !tbaa !5
  %121 = load i8*, i8** %dest, align 8, !tbaa !1
  %122 = bitcast i8* %121 to i32*
  %add.ptr136 = getelementptr inbounds i32, i32* %122, i64 4
  %arrayidx137 = getelementptr inbounds i32, i32* %add.ptr136, i64 0
  store i32 %120, i32* %arrayidx137, align 4, !tbaa !5
  %123 = load i32, i32* %efgh, align 4, !tbaa !5
  %124 = load i8*, i8** %dest, align 8, !tbaa !1
  %125 = bitcast i8* %124 to i32*
  %add.ptr138 = getelementptr inbounds i32, i32* %125, i64 4
  %arrayidx139 = getelementptr inbounds i32, i32* %add.ptr138, i64 1
  store i32 %123, i32* %arrayidx139, align 4, !tbaa !5
  %126 = load i32, i32* %abcd, align 4, !tbaa !5
  %127 = load i8*, i8** %dest, align 8, !tbaa !1
  %128 = bitcast i8* %127 to i32*
  %add.ptr140 = getelementptr inbounds i32, i32* %128, i64 6
  %arrayidx141 = getelementptr inbounds i32, i32* %add.ptr140, i64 0
  store i32 %126, i32* %arrayidx141, align 4, !tbaa !5
  %129 = load i32, i32* %efgh, align 4, !tbaa !5
  %130 = load i8*, i8** %dest, align 8, !tbaa !1
  %131 = bitcast i8* %130 to i32*
  %add.ptr142 = getelementptr inbounds i32, i32* %131, i64 6
  %arrayidx143 = getelementptr inbounds i32, i32* %add.ptr142, i64 1
  store i32 %129, i32* %arrayidx143, align 4, !tbaa !5
  %132 = load i8*, i8** %dest, align 8, !tbaa !1
  %133 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext144 = zext i32 %133 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %132, i64 %idx.ext144
  store i8* %add.ptr145, i8** %dest, align 8, !tbaa !1
  br label %do.cond.146

do.cond.146:                                      ; preds = %do.body.129
  %134 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec147 = add nsw i32 %134, -1
  store i32 %dec147, i32* %h.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec147, 0
  br i1 %tobool, label %do.body.129, label %do.end.148

do.end.148:                                       ; preds = %do.cond.146
  br label %sw.epilog.192

sw.bb.149:                                        ; preds = %do.end.120
  br label %do.body.150

do.body.150:                                      ; preds = %do.cond.163, %sw.bb.149
  %135 = load i32, i32* %abcd, align 4, !tbaa !5
  %136 = load i8*, i8** %dest, align 8, !tbaa !1
  %137 = bitcast i8* %136 to i32*
  %arrayidx151 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %135, i32* %arrayidx151, align 4, !tbaa !5
  %138 = load i32, i32* %efgh, align 4, !tbaa !5
  %139 = load i8*, i8** %dest, align 8, !tbaa !1
  %140 = bitcast i8* %139 to i32*
  %arrayidx152 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 %138, i32* %arrayidx152, align 4, !tbaa !5
  %141 = load i32, i32* %abcd, align 4, !tbaa !5
  %142 = load i8*, i8** %dest, align 8, !tbaa !1
  %143 = bitcast i8* %142 to i32*
  %add.ptr153 = getelementptr inbounds i32, i32* %143, i64 2
  %arrayidx154 = getelementptr inbounds i32, i32* %add.ptr153, i64 0
  store i32 %141, i32* %arrayidx154, align 4, !tbaa !5
  %144 = load i32, i32* %efgh, align 4, !tbaa !5
  %145 = load i8*, i8** %dest, align 8, !tbaa !1
  %146 = bitcast i8* %145 to i32*
  %add.ptr155 = getelementptr inbounds i32, i32* %146, i64 2
  %arrayidx156 = getelementptr inbounds i32, i32* %add.ptr155, i64 1
  store i32 %144, i32* %arrayidx156, align 4, !tbaa !5
  %147 = load i32, i32* %abcd, align 4, !tbaa !5
  %148 = load i8*, i8** %dest, align 8, !tbaa !1
  %149 = bitcast i8* %148 to i32*
  %add.ptr157 = getelementptr inbounds i32, i32* %149, i64 4
  %arrayidx158 = getelementptr inbounds i32, i32* %add.ptr157, i64 0
  store i32 %147, i32* %arrayidx158, align 4, !tbaa !5
  %150 = load i32, i32* %efgh, align 4, !tbaa !5
  %151 = load i8*, i8** %dest, align 8, !tbaa !1
  %152 = bitcast i8* %151 to i32*
  %add.ptr159 = getelementptr inbounds i32, i32* %152, i64 4
  %arrayidx160 = getelementptr inbounds i32, i32* %add.ptr159, i64 1
  store i32 %150, i32* %arrayidx160, align 4, !tbaa !5
  %153 = load i8*, i8** %dest, align 8, !tbaa !1
  %154 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext161 = zext i32 %154 to i64
  %add.ptr162 = getelementptr inbounds i8, i8* %153, i64 %idx.ext161
  store i8* %add.ptr162, i8** %dest, align 8, !tbaa !1
  br label %do.cond.163

do.cond.163:                                      ; preds = %do.body.150
  %155 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec164 = add nsw i32 %155, -1
  store i32 %dec164, i32* %h.addr, align 4, !tbaa !5
  %tobool165 = icmp ne i32 %dec164, 0
  br i1 %tobool165, label %do.body.150, label %do.end.166

do.end.166:                                       ; preds = %do.cond.163
  br label %sw.epilog.192

sw.bb.167:                                        ; preds = %do.end.120
  br label %do.body.168

do.body.168:                                      ; preds = %do.cond.177, %sw.bb.167
  %156 = load i32, i32* %abcd, align 4, !tbaa !5
  %157 = load i8*, i8** %dest, align 8, !tbaa !1
  %158 = bitcast i8* %157 to i32*
  %arrayidx169 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %156, i32* %arrayidx169, align 4, !tbaa !5
  %159 = load i32, i32* %efgh, align 4, !tbaa !5
  %160 = load i8*, i8** %dest, align 8, !tbaa !1
  %161 = bitcast i8* %160 to i32*
  %arrayidx170 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %159, i32* %arrayidx170, align 4, !tbaa !5
  %162 = load i32, i32* %abcd, align 4, !tbaa !5
  %163 = load i8*, i8** %dest, align 8, !tbaa !1
  %164 = bitcast i8* %163 to i32*
  %add.ptr171 = getelementptr inbounds i32, i32* %164, i64 2
  %arrayidx172 = getelementptr inbounds i32, i32* %add.ptr171, i64 0
  store i32 %162, i32* %arrayidx172, align 4, !tbaa !5
  %165 = load i32, i32* %efgh, align 4, !tbaa !5
  %166 = load i8*, i8** %dest, align 8, !tbaa !1
  %167 = bitcast i8* %166 to i32*
  %add.ptr173 = getelementptr inbounds i32, i32* %167, i64 2
  %arrayidx174 = getelementptr inbounds i32, i32* %add.ptr173, i64 1
  store i32 %165, i32* %arrayidx174, align 4, !tbaa !5
  %168 = load i8*, i8** %dest, align 8, !tbaa !1
  %169 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext175 = zext i32 %169 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %168, i64 %idx.ext175
  store i8* %add.ptr176, i8** %dest, align 8, !tbaa !1
  br label %do.cond.177

do.cond.177:                                      ; preds = %do.body.168
  %170 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec178 = add nsw i32 %170, -1
  store i32 %dec178, i32* %h.addr, align 4, !tbaa !5
  %tobool179 = icmp ne i32 %dec178, 0
  br i1 %tobool179, label %do.body.168, label %do.end.180

do.end.180:                                       ; preds = %do.cond.177
  br label %sw.epilog.192

sw.bb.181:                                        ; preds = %do.end.120
  br label %do.body.182

do.body.182:                                      ; preds = %do.cond.187, %sw.bb.181
  %171 = load i32, i32* %abcd, align 4, !tbaa !5
  %172 = load i8*, i8** %dest, align 8, !tbaa !1
  %173 = bitcast i8* %172 to i32*
  %arrayidx183 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %171, i32* %arrayidx183, align 4, !tbaa !5
  %174 = load i32, i32* %efgh, align 4, !tbaa !5
  %175 = load i8*, i8** %dest, align 8, !tbaa !1
  %176 = bitcast i8* %175 to i32*
  %arrayidx184 = getelementptr inbounds i32, i32* %176, i64 1
  store i32 %174, i32* %arrayidx184, align 4, !tbaa !5
  %177 = load i8*, i8** %dest, align 8, !tbaa !1
  %178 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext185 = zext i32 %178 to i64
  %add.ptr186 = getelementptr inbounds i8, i8* %177, i64 %idx.ext185
  store i8* %add.ptr186, i8** %dest, align 8, !tbaa !1
  br label %do.cond.187

do.cond.187:                                      ; preds = %do.body.182
  %179 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec188 = add nsw i32 %179, -1
  store i32 %dec188, i32* %h.addr, align 4, !tbaa !5
  %tobool189 = icmp ne i32 %dec188, 0
  br i1 %tobool189, label %do.body.182, label %do.end.190

do.end.190:                                       ; preds = %do.cond.187
  br label %sw.epilog.192

sw.bb.191:                                        ; preds = %do.end.120
  br label %sw.default

sw.default:                                       ; preds = %do.end.120, %sw.bb.191
  br label %sw.epilog.192

sw.epilog.192:                                    ; preds = %sw.default, %do.end.190, %do.end.180, %do.end.166, %do.end.148
  br label %if.end.193

if.end.193:                                       ; preds = %sw.epilog.192, %while.end.117
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.193, %if.then.60
  %180 = bitcast i32* %efgh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #2
  %181 = bitcast i32* %abcd to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #2
  %182 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #2
  %183 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #2
  %184 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %184) #2
  %185 = load i32, i32* %retval
  ret i32 %185
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_true64_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %abcd0 = alloca i32, align 4
  %efgh0 = alloca i32, align 4
  %abcd1 = alloca i32, align 4
  %efgh1 = alloca i32, align 4
  %pptr = alloca i32*, align 8
  %sptr = alloca i8*, align 8
  %sbyte = alloca i32, align 4
  %bit = alloca i32, align 4
  %count = alloca i32, align 4
  %abcd1121 = alloca i32, align 4
  %efgh1136 = alloca i32, align 4
  %first_mask = alloca i32, align 4
  %first_count = alloca i32, align 4
  %first_skip = alloca i32, align 4
  %pptr166 = alloca i32*, align 8
  %sptr167 = alloca i8*, align 8
  %sbyte168 = alloca i32, align 4
  %count172 = alloca i32, align 4
  %bit176 = alloca i32, align 4
  %bit276 = alloca i32, align 4
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
  %23 = load i32, i32* %width, align 4, !tbaa !9
  %24 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %23, %24
  %cmp10 = icmp sgt i32 %21, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width12, align 4, !tbaa !9
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
  %30 = load i32, i32* %height, align 4, !tbaa !21
  %31 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %30, %31
  %cmp16 = icmp sgt i32 %28, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 14
  %33 = load i32, i32* %height18, align 4, !tbaa !21
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
  %38 = load i32, i32* %raster, align 4, !tbaa !22
  store i32 %38, i32* %draster, align 4, !tbaa !5
  %39 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %40, i32 0, i32 52
  %41 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shl = shl i32 %43, 3
  %idx.ext27 = sext i32 %shl to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %42, i64 %idx.ext27
  store i8* %add.ptr28, i8** %dest, align 8, !tbaa !1
  %44 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %45 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr = ashr i32 %45, 3
  %idx.ext29 = sext i32 %shr to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %44, i64 %idx.ext29
  store i8* %add.ptr30, i8** %line, align 8, !tbaa !1
  %46 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and = and i32 %46, 7
  store i32 %and, i32* %sbit, align 4, !tbaa !5
  %47 = load i32, i32* %sbit, align 4, !tbaa !5
  %shr31 = ashr i32 128, %47
  store i32 %shr31, i32* %first_bit, align 4, !tbaa !5
  %48 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %cmp32 = icmp ne i64 %48, -1
  br i1 %cmp32, label %if.then.33, label %if.else.117

if.then.33:                                       ; preds = %do.end.26
  %49 = bitcast i32* %abcd0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #2
  %50 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr34 = lshr i64 %50, 28
  %shr35 = lshr i64 %shr34, 28
  %and36 = and i64 255, %shr35
  %51 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr37 = lshr i64 %51, 24
  %shr38 = lshr i64 %shr37, 16
  %and39 = and i64 65280, %shr38
  %or40 = or i64 %and36, %and39
  %52 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr41 = lshr i64 %52, 24
  %and42 = and i64 16711680, %shr41
  %or43 = or i64 %or40, %and42
  %53 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr44 = lshr i64 %53, 8
  %and45 = and i64 4278190080, %shr44
  %or46 = or i64 %or43, %and45
  %conv = trunc i64 %or46 to i32
  store i32 %conv, i32* %abcd0, align 4, !tbaa !5
  %54 = bitcast i32* %efgh0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #2
  %55 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr47 = lshr i64 %55, 24
  %and48 = and i64 255, %shr47
  %56 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shr49 = lshr i64 %56, 8
  %and50 = and i64 65280, %shr49
  %or51 = or i64 %and48, %and50
  %57 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shl52 = shl i64 %57, 8
  %and53 = and i64 16711680, %shl52
  %or54 = or i64 %or51, %and53
  %58 = load i64, i64* %zero.addr, align 8, !tbaa !7
  %shl55 = shl i64 %58, 24
  %and56 = and i64 4278190080, %shl55
  %or57 = or i64 %or54, %and56
  %conv58 = trunc i64 %or57 to i32
  store i32 %conv58, i32* %efgh0, align 4, !tbaa !5
  %59 = bitcast i32* %abcd1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr59 = lshr i64 %60, 28
  %shr60 = lshr i64 %shr59, 28
  %and61 = and i64 255, %shr60
  %61 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr62 = lshr i64 %61, 24
  %shr63 = lshr i64 %shr62, 16
  %and64 = and i64 65280, %shr63
  %or65 = or i64 %and61, %and64
  %62 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr66 = lshr i64 %62, 24
  %and67 = and i64 16711680, %shr66
  %or68 = or i64 %or65, %and67
  %63 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr69 = lshr i64 %63, 8
  %and70 = and i64 4278190080, %shr69
  %or71 = or i64 %or68, %and70
  %conv72 = trunc i64 %or71 to i32
  store i32 %conv72, i32* %abcd1, align 4, !tbaa !5
  %64 = bitcast i32* %efgh1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %64) #2
  %65 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr73 = lshr i64 %65, 24
  %and74 = and i64 255, %shr73
  %66 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr75 = lshr i64 %66, 8
  %and76 = and i64 65280, %shr75
  %or77 = or i64 %and74, %and76
  %67 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shl78 = shl i64 %67, 8
  %and79 = and i64 16711680, %shl78
  %or80 = or i64 %or77, %and79
  %68 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shl81 = shl i64 %68, 24
  %and82 = and i64 4278190080, %shl81
  %or83 = or i64 %or80, %and82
  %conv84 = trunc i64 %or83 to i32
  store i32 %conv84, i32* %efgh1, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %do.end.112, %if.then.33
  %69 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %69, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp85 = icmp sgt i32 %69, 0
  br i1 %cmp85, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %70 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #2
  %71 = load i8*, i8** %dest, align 8, !tbaa !1
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %pptr, align 8, !tbaa !1
  %73 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #2
  %74 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %74, i8** %sptr, align 8, !tbaa !1
  %75 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #2
  %76 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr, i8** %sptr, align 8, !tbaa !1
  %77 = load i8, i8* %76, align 1, !tbaa !34
  %conv87 = zext i8 %77 to i32
  store i32 %conv87, i32* %sbyte, align 4, !tbaa !5
  %78 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #2
  %79 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %79, i32* %bit, align 4, !tbaa !5
  %80 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #2
  %81 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %81, i32* %count, align 4, !tbaa !5
  br label %do.body.88

do.body.88:                                       ; preds = %do.cond.108, %while.body
  %82 = load i32, i32* %sbyte, align 4, !tbaa !5
  %83 = load i32, i32* %bit, align 4, !tbaa !5
  %and89 = and i32 %82, %83
  %tobool = icmp ne i32 %and89, 0
  br i1 %tobool, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %do.body.88
  %84 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp91 = icmp ne i64 %84, -1
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.then.90
  %85 = load i32, i32* %abcd1, align 4, !tbaa !5
  %86 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %arrayidx94, align 4, !tbaa !5
  %87 = load i32, i32* %efgh1, align 4, !tbaa !5
  %88 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %87, i32* %arrayidx95, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.then.90
  br label %if.end.99

if.else:                                          ; preds = %do.body.88
  %89 = load i32, i32* %abcd0, align 4, !tbaa !5
  %90 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %arrayidx97, align 4, !tbaa !5
  %91 = load i32, i32* %efgh0, align 4, !tbaa !5
  %92 = load i32*, i32** %pptr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %91, i32* %arrayidx98, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.else, %if.end.96
  %93 = load i32*, i32** %pptr, align 8, !tbaa !1
  %add.ptr100 = getelementptr inbounds i32, i32* %93, i64 2
  store i32* %add.ptr100, i32** %pptr, align 8, !tbaa !1
  %94 = load i32, i32* %bit, align 4, !tbaa !5
  %shr101 = ashr i32 %94, 1
  store i32 %shr101, i32* %bit, align 4, !tbaa !5
  %cmp102 = icmp eq i32 %shr101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.107

if.then.104:                                      ; preds = %if.end.99
  store i32 128, i32* %bit, align 4, !tbaa !5
  %95 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr105 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr105, i8** %sptr, align 8, !tbaa !1
  %96 = load i8, i8* %95, align 1, !tbaa !34
  %conv106 = zext i8 %96 to i32
  store i32 %conv106, i32* %sbyte, align 4, !tbaa !5
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.104, %if.end.99
  br label %do.cond.108

do.cond.108:                                      ; preds = %if.end.107
  %97 = load i32, i32* %count, align 4, !tbaa !5
  %dec109 = add nsw i32 %97, -1
  store i32 %dec109, i32* %count, align 4, !tbaa !5
  %cmp110 = icmp sgt i32 %dec109, 0
  br i1 %cmp110, label %do.body.88, label %do.end.112

do.end.112:                                       ; preds = %do.cond.108
  %98 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %99 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext113 = sext i32 %98 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %99, i64 %idx.ext113
  store i8* %add.ptr114, i8** %line, align 8, !tbaa !1
  %100 = load i8*, i8** %dest, align 8, !tbaa !1
  %101 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext115 = zext i32 %101 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %100, i64 %idx.ext115
  store i8* %add.ptr116, i8** %dest, align 8, !tbaa !1
  %102 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast i32* %bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #2
  %104 = bitcast i32* %sbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #2
  %105 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #2
  %106 = bitcast i32** %pptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %107 = bitcast i32* %efgh1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %abcd1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %efgh0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %abcd0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  br label %if.end.300

if.else.117:                                      ; preds = %do.end.26
  %111 = load i64, i64* %one.addr, align 8, !tbaa !7
  %cmp118 = icmp ne i64 %111, -1
  br i1 %cmp118, label %if.then.120, label %if.end.299

if.then.120:                                      ; preds = %if.else.117
  %112 = bitcast i32* %abcd1121 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr122 = lshr i64 %113, 28
  %shr123 = lshr i64 %shr122, 28
  %and124 = and i64 255, %shr123
  %114 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr125 = lshr i64 %114, 24
  %shr126 = lshr i64 %shr125, 16
  %and127 = and i64 65280, %shr126
  %or128 = or i64 %and124, %and127
  %115 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr129 = lshr i64 %115, 24
  %and130 = and i64 16711680, %shr129
  %or131 = or i64 %or128, %and130
  %116 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr132 = lshr i64 %116, 8
  %and133 = and i64 4278190080, %shr132
  %or134 = or i64 %or131, %and133
  %conv135 = trunc i64 %or134 to i32
  store i32 %conv135, i32* %abcd1121, align 4, !tbaa !5
  %117 = bitcast i32* %efgh1136 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #2
  %118 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr137 = lshr i64 %118, 24
  %and138 = and i64 255, %shr137
  %119 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shr139 = lshr i64 %119, 8
  %and140 = and i64 65280, %shr139
  %or141 = or i64 %and138, %and140
  %120 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shl142 = shl i64 %120, 8
  %and143 = and i64 16711680, %shl142
  %or144 = or i64 %or141, %and143
  %121 = load i64, i64* %one.addr, align 8, !tbaa !7
  %shl145 = shl i64 %121, 24
  %and146 = and i64 4278190080, %shl145
  %or147 = or i64 %or144, %and146
  %conv148 = trunc i64 %or147 to i32
  store i32 %conv148, i32* %efgh1136, align 4, !tbaa !5
  %122 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %122) #2
  %123 = load i32, i32* %first_bit, align 4, !tbaa !5
  %shl149 = shl i32 %123, 1
  store i32 %shl149, i32* %first_mask, align 4, !tbaa !5
  %124 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #2
  %125 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %125) #2
  %126 = load i32, i32* %sbit, align 4, !tbaa !5
  %127 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add150 = add nsw i32 %126, %127
  %cmp151 = icmp sgt i32 %add150, 8
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %if.then.120
  %128 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub154 = sub nsw i32 %128, 1
  store i32 %sub154, i32* %first_mask, align 4, !tbaa !5
  %129 = load i32, i32* %sbit, align 4, !tbaa !5
  %sub155 = sub nsw i32 8, %129
  store i32 %sub155, i32* %first_count, align 4, !tbaa !5
  br label %if.end.159

if.else.156:                                      ; preds = %if.then.120
  %130 = load i32, i32* %first_mask, align 4, !tbaa !5
  %131 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shr157 = ashr i32 %130, %131
  %132 = load i32, i32* %first_mask, align 4, !tbaa !5
  %sub158 = sub nsw i32 %132, %shr157
  store i32 %sub158, i32* %first_mask, align 4, !tbaa !5
  %133 = load i32, i32* %w.addr, align 4, !tbaa !5
  store i32 %133, i32* %first_count, align 4, !tbaa !5
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.153
  %134 = load i32, i32* %first_count, align 4, !tbaa !5
  %mul160 = mul nsw i32 %134, 2
  store i32 %mul160, i32* %first_skip, align 4, !tbaa !5
  br label %while.cond.161

while.cond.161:                                   ; preds = %if.end.293, %if.end.159
  %135 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec162 = add nsw i32 %135, -1
  store i32 %dec162, i32* %h.addr, align 4, !tbaa !5
  %cmp163 = icmp sgt i32 %135, 0
  br i1 %cmp163, label %while.body.165, label %while.end.298

while.body.165:                                   ; preds = %while.cond.161
  %136 = bitcast i32** %pptr166 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #2
  %137 = load i8*, i8** %dest, align 8, !tbaa !1
  %138 = bitcast i8* %137 to i32*
  store i32* %138, i32** %pptr166, align 8, !tbaa !1
  %139 = bitcast i8** %sptr167 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #2
  %140 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %140, i8** %sptr167, align 8, !tbaa !1
  %141 = bitcast i32* %sbyte168 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #2
  %142 = load i8*, i8** %sptr167, align 8, !tbaa !1
  %incdec.ptr169 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr169, i8** %sptr167, align 8, !tbaa !1
  %143 = load i8, i8* %142, align 1, !tbaa !34
  %conv170 = zext i8 %143 to i32
  %144 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and171 = and i32 %conv170, %144
  store i32 %and171, i32* %sbyte168, align 4, !tbaa !5
  %145 = bitcast i32* %count172 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %145) #2
  %146 = load i32, i32* %w.addr, align 4, !tbaa !5
  %147 = load i32, i32* %first_count, align 4, !tbaa !5
  %sub173 = sub nsw i32 %146, %147
  store i32 %sub173, i32* %count172, align 4, !tbaa !5
  %148 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %tobool174 = icmp ne i32 %148, 0
  br i1 %tobool174, label %if.then.175, label %if.else.190

if.then.175:                                      ; preds = %while.body.165
  %149 = bitcast i32* %bit176 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %149) #2
  %150 = load i32, i32* %first_bit, align 4, !tbaa !5
  store i32 %150, i32* %bit176, align 4, !tbaa !5
  br label %do.body.177

do.body.177:                                      ; preds = %do.cond.185, %if.then.175
  %151 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %152 = load i32, i32* %bit176, align 4, !tbaa !5
  %and178 = and i32 %151, %152
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %if.then.180, label %if.end.183

if.then.180:                                      ; preds = %do.body.177
  %153 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %154 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %153, i32* %arrayidx181, align 4, !tbaa !5
  %155 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %156 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds i32, i32* %156, i64 1
  store i32 %155, i32* %arrayidx182, align 4, !tbaa !5
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.180, %do.body.177
  %157 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr184 = getelementptr inbounds i32, i32* %157, i64 2
  store i32* %add.ptr184, i32** %pptr166, align 8, !tbaa !1
  br label %do.cond.185

do.cond.185:                                      ; preds = %if.end.183
  %158 = load i32, i32* %bit176, align 4, !tbaa !5
  %shr186 = ashr i32 %158, 1
  store i32 %shr186, i32* %bit176, align 4, !tbaa !5
  %159 = load i32, i32* %first_mask, align 4, !tbaa !5
  %and187 = and i32 %shr186, %159
  %tobool188 = icmp ne i32 %and187, 0
  br i1 %tobool188, label %do.body.177, label %do.end.189

do.end.189:                                       ; preds = %do.cond.185
  %160 = bitcast i32* %bit176 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  br label %if.end.193

if.else.190:                                      ; preds = %while.body.165
  %161 = load i32, i32* %first_skip, align 4, !tbaa !5
  %162 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %idx.ext191 = sext i32 %161 to i64
  %add.ptr192 = getelementptr inbounds i32, i32* %162, i64 %idx.ext191
  store i32* %add.ptr192, i32** %pptr166, align 8, !tbaa !1
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.190, %do.end.189
  br label %while.cond.194

while.cond.194:                                   ; preds = %if.end.269, %if.end.193
  %163 = load i32, i32* %count172, align 4, !tbaa !5
  %cmp195 = icmp sge i32 %163, 8
  br i1 %cmp195, label %while.body.197, label %while.end.272

while.body.197:                                   ; preds = %while.cond.194
  %164 = load i8*, i8** %sptr167, align 8, !tbaa !1
  %incdec.ptr198 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr198, i8** %sptr167, align 8, !tbaa !1
  %165 = load i8, i8* %164, align 1, !tbaa !34
  %conv199 = zext i8 %165 to i32
  store i32 %conv199, i32* %sbyte168, align 4, !tbaa !5
  %166 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and200 = and i32 %166, 240
  %tobool201 = icmp ne i32 %and200, 0
  br i1 %tobool201, label %if.then.202, label %if.end.233

if.then.202:                                      ; preds = %while.body.197
  %167 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and203 = and i32 %167, 128
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %if.then.205, label %if.end.208

if.then.205:                                      ; preds = %if.then.202
  %168 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %169 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %arrayidx206 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %168, i32* %arrayidx206, align 4, !tbaa !5
  %170 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %171 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %170, i32* %arrayidx207, align 4, !tbaa !5
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.205, %if.then.202
  %172 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and209 = and i32 %172, 64
  %tobool210 = icmp ne i32 %and209, 0
  br i1 %tobool210, label %if.then.211, label %if.end.216

if.then.211:                                      ; preds = %if.end.208
  %173 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %174 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr212 = getelementptr inbounds i32, i32* %174, i64 2
  %arrayidx213 = getelementptr inbounds i32, i32* %add.ptr212, i64 0
  store i32 %173, i32* %arrayidx213, align 4, !tbaa !5
  %175 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %176 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr214 = getelementptr inbounds i32, i32* %176, i64 2
  %arrayidx215 = getelementptr inbounds i32, i32* %add.ptr214, i64 1
  store i32 %175, i32* %arrayidx215, align 4, !tbaa !5
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.211, %if.end.208
  %177 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and217 = and i32 %177, 32
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.then.219, label %if.end.224

if.then.219:                                      ; preds = %if.end.216
  %178 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %179 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr220 = getelementptr inbounds i32, i32* %179, i64 4
  %arrayidx221 = getelementptr inbounds i32, i32* %add.ptr220, i64 0
  store i32 %178, i32* %arrayidx221, align 4, !tbaa !5
  %180 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %181 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr222 = getelementptr inbounds i32, i32* %181, i64 4
  %arrayidx223 = getelementptr inbounds i32, i32* %add.ptr222, i64 1
  store i32 %180, i32* %arrayidx223, align 4, !tbaa !5
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.219, %if.end.216
  %182 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and225 = and i32 %182, 16
  %tobool226 = icmp ne i32 %and225, 0
  br i1 %tobool226, label %if.then.227, label %if.end.232

if.then.227:                                      ; preds = %if.end.224
  %183 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %184 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr228 = getelementptr inbounds i32, i32* %184, i64 6
  %arrayidx229 = getelementptr inbounds i32, i32* %add.ptr228, i64 0
  store i32 %183, i32* %arrayidx229, align 4, !tbaa !5
  %185 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %186 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr230 = getelementptr inbounds i32, i32* %186, i64 6
  %arrayidx231 = getelementptr inbounds i32, i32* %add.ptr230, i64 1
  store i32 %185, i32* %arrayidx231, align 4, !tbaa !5
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.227, %if.end.224
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %while.body.197
  %187 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and234 = and i32 %187, 15
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.269

if.then.236:                                      ; preds = %if.end.233
  %188 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and237 = and i32 %188, 8
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %if.then.239, label %if.end.244

if.then.239:                                      ; preds = %if.then.236
  %189 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %190 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr240 = getelementptr inbounds i32, i32* %190, i64 8
  %arrayidx241 = getelementptr inbounds i32, i32* %add.ptr240, i64 0
  store i32 %189, i32* %arrayidx241, align 4, !tbaa !5
  %191 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %192 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr242 = getelementptr inbounds i32, i32* %192, i64 8
  %arrayidx243 = getelementptr inbounds i32, i32* %add.ptr242, i64 1
  store i32 %191, i32* %arrayidx243, align 4, !tbaa !5
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.239, %if.then.236
  %193 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and245 = and i32 %193, 4
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %if.then.247, label %if.end.252

if.then.247:                                      ; preds = %if.end.244
  %194 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %195 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr248 = getelementptr inbounds i32, i32* %195, i64 10
  %arrayidx249 = getelementptr inbounds i32, i32* %add.ptr248, i64 0
  store i32 %194, i32* %arrayidx249, align 4, !tbaa !5
  %196 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %197 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr250 = getelementptr inbounds i32, i32* %197, i64 10
  %arrayidx251 = getelementptr inbounds i32, i32* %add.ptr250, i64 1
  store i32 %196, i32* %arrayidx251, align 4, !tbaa !5
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.247, %if.end.244
  %198 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and253 = and i32 %198, 2
  %tobool254 = icmp ne i32 %and253, 0
  br i1 %tobool254, label %if.then.255, label %if.end.260

if.then.255:                                      ; preds = %if.end.252
  %199 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %200 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i32, i32* %200, i64 12
  %arrayidx257 = getelementptr inbounds i32, i32* %add.ptr256, i64 0
  store i32 %199, i32* %arrayidx257, align 4, !tbaa !5
  %201 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %202 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr258 = getelementptr inbounds i32, i32* %202, i64 12
  %arrayidx259 = getelementptr inbounds i32, i32* %add.ptr258, i64 1
  store i32 %201, i32* %arrayidx259, align 4, !tbaa !5
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.255, %if.end.252
  %203 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %and261 = and i32 %203, 1
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %if.then.263, label %if.end.268

if.then.263:                                      ; preds = %if.end.260
  %204 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %205 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr264 = getelementptr inbounds i32, i32* %205, i64 14
  %arrayidx265 = getelementptr inbounds i32, i32* %add.ptr264, i64 0
  store i32 %204, i32* %arrayidx265, align 4, !tbaa !5
  %206 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %207 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr266 = getelementptr inbounds i32, i32* %207, i64 14
  %arrayidx267 = getelementptr inbounds i32, i32* %add.ptr266, i64 1
  store i32 %206, i32* %arrayidx267, align 4, !tbaa !5
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.263, %if.end.260
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.233
  %208 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr270 = getelementptr inbounds i32, i32* %208, i64 16
  store i32* %add.ptr270, i32** %pptr166, align 8, !tbaa !1
  %209 = load i32, i32* %count172, align 4, !tbaa !5
  %sub271 = sub nsw i32 %209, 8
  store i32 %sub271, i32* %count172, align 4, !tbaa !5
  br label %while.cond.194

while.end.272:                                    ; preds = %while.cond.194
  %210 = load i32, i32* %count172, align 4, !tbaa !5
  %cmp273 = icmp sgt i32 %210, 0
  br i1 %cmp273, label %if.then.275, label %if.end.293

if.then.275:                                      ; preds = %while.end.272
  %211 = bitcast i32* %bit276 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %211) #2
  store i32 128, i32* %bit276, align 4, !tbaa !5
  %212 = load i8*, i8** %sptr167, align 8, !tbaa !1
  %incdec.ptr277 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr277, i8** %sptr167, align 8, !tbaa !1
  %213 = load i8, i8* %212, align 1, !tbaa !34
  %conv278 = zext i8 %213 to i32
  store i32 %conv278, i32* %sbyte168, align 4, !tbaa !5
  br label %do.body.279

do.body.279:                                      ; preds = %do.cond.288, %if.then.275
  %214 = load i32, i32* %sbyte168, align 4, !tbaa !5
  %215 = load i32, i32* %bit276, align 4, !tbaa !5
  %and280 = and i32 %214, %215
  %tobool281 = icmp ne i32 %and280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.285

if.then.282:                                      ; preds = %do.body.279
  %216 = load i32, i32* %abcd1121, align 4, !tbaa !5
  %217 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds i32, i32* %217, i64 0
  store i32 %216, i32* %arrayidx283, align 4, !tbaa !5
  %218 = load i32, i32* %efgh1136, align 4, !tbaa !5
  %219 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %arrayidx284 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 %218, i32* %arrayidx284, align 4, !tbaa !5
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.282, %do.body.279
  %220 = load i32*, i32** %pptr166, align 8, !tbaa !1
  %add.ptr286 = getelementptr inbounds i32, i32* %220, i64 2
  store i32* %add.ptr286, i32** %pptr166, align 8, !tbaa !1
  %221 = load i32, i32* %bit276, align 4, !tbaa !5
  %shr287 = ashr i32 %221, 1
  store i32 %shr287, i32* %bit276, align 4, !tbaa !5
  br label %do.cond.288

do.cond.288:                                      ; preds = %if.end.285
  %222 = load i32, i32* %count172, align 4, !tbaa !5
  %dec289 = add nsw i32 %222, -1
  store i32 %dec289, i32* %count172, align 4, !tbaa !5
  %cmp290 = icmp sgt i32 %dec289, 0
  br i1 %cmp290, label %do.body.279, label %do.end.292

do.end.292:                                       ; preds = %do.cond.288
  %223 = bitcast i32* %bit276 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #2
  br label %if.end.293

if.end.293:                                       ; preds = %do.end.292, %while.end.272
  %224 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %225 = load i8*, i8** %line, align 8, !tbaa !1
  %idx.ext294 = sext i32 %224 to i64
  %add.ptr295 = getelementptr inbounds i8, i8* %225, i64 %idx.ext294
  store i8* %add.ptr295, i8** %line, align 8, !tbaa !1
  %226 = load i8*, i8** %dest, align 8, !tbaa !1
  %227 = load i32, i32* %draster, align 4, !tbaa !5
  %idx.ext296 = zext i32 %227 to i64
  %add.ptr297 = getelementptr inbounds i8, i8* %226, i64 %idx.ext296
  store i8* %add.ptr297, i8** %dest, align 8, !tbaa !1
  %228 = bitcast i32* %count172 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #2
  %229 = bitcast i32* %sbyte168 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #2
  %230 = bitcast i8** %sptr167 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast i32** %pptr166 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  br label %while.cond.161

while.end.298:                                    ; preds = %while.cond.161
  %232 = bitcast i32* %first_skip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i32* %first_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast i32* %first_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %efgh1136 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %abcd1121 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  br label %if.end.299

if.end.299:                                       ; preds = %while.end.298, %if.else.117
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %while.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.300, %if.then.23
  %237 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %238 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %240 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #2
  %242 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %242) #2
  %243 = load i32, i32* %retval
  ret i32 %243
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_true64_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %shl = shl i32 %36, 3
  %idx.ext27 = sext i32 %shl to i64
  %add.ptr28 = getelementptr inbounds i8, i8* %35, i64 %idx.ext27
  %37 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %37, i32 0, i32 44
  %38 = load i32, i32* %raster, align 4, !tbaa !22
  %39 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %40 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shl29 = shl i32 %40, 3
  %idx.ext30 = sext i32 %shl29 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %39, i64 %idx.ext30
  %41 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %42 = load i32, i32* %w.addr, align 4, !tbaa !5
  %shl32 = shl i32 %42, 3
  %43 = load i32, i32* %h.addr, align 4, !tbaa !5
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

; Function Attrs: nounwind uwtable
define internal i32 @mem64_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #1 {
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
  %31 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 %idxprom
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %32, i8** %base, align 8, !tbaa !1
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 44
  %34 = load i32, i32* %raster35, align 4, !tbaa !22
  store i32 %34, i32* %raster, align 4, !tbaa !5
  %35 = load i8*, i8** %base, align 8, !tbaa !1
  %36 = load i32, i32* %raster, align 4, !tbaa !5
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %37, 64
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %38, 64
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %mul, i32 %mul36, i32 %39, i32 1) #3
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %y.addr, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  %45 = load i64, i64* %color.addr, align 8, !tbaa !7
  %call = call i32 @mem_true64_fill_rectangle(%struct.gx_device_s* %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45) #3
  %46 = load i8*, i8** %base, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %48, 64
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %49, 64
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %46, i32 %47, i32 %mul37, i32 %mul38, i32 %50, i32 0) #3
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
define internal i32 @mem64_word_copy_mono(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #1 {
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
  %37 = load i8**, i8*** %line_ptrs, align 8, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %38, i8** %row, align 8, !tbaa !1
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 44
  %40 = load i32, i32* %raster27, align 4, !tbaa !22
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
  %mul30 = mul nsw i32 %46, 64
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul31 = mul nsw i32 %47, 64
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %49 = load i32, i32* %store, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %44, i32 %45, i32 %mul30, i32 %mul31, i32 %48, i32 %49) #3
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
  %call = call i32 @mem_true64_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #3
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul32 = mul nsw i32 %63, 64
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %64, 64
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %61, i32 %62, i32 %mul32, i32 %mul33, i32 %65, i32 0) #3
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
define internal i32 @mem64_word_copy_color(%struct.gx_device_s* %dev, i8* %base, i32 %sourcex, i32 %sraster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #1 {
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
  %41 = load i32, i32* %raster, align 4, !tbaa !5
  %42 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul28 = mul nsw i32 %42, 64
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul29 = mul nsw i32 %43, 64
  %44 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %40, i32 %41, i32 %mul28, i32 %mul29, i32 %44, i32 1) #3
  %45 = load i8*, i8** %row, align 8, !tbaa !1
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul30 = mul nsw i32 %46, 2
  %idx.ext31 = sext i32 %mul30 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %45, i64 %idx.ext31
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i8*, i8** %base.addr, align 8, !tbaa !1
  %49 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %mul33 = mul nsw i32 %49, 2
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %48, i64 %idx.ext34
  %50 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %51 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul36 = mul nsw i32 %51, 2
  %52 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bytes_copy_rectangle(i8* %add.ptr32, i32 %47, i8* %add.ptr35, i32 %50, i32 %mul36, i32 %52) #3
  %53 = load i8*, i8** %row, align 8, !tbaa !1
  %54 = load i32, i32* %raster, align 4, !tbaa !5
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %mul37 = mul nsw i32 %55, 64
  %56 = load i32, i32* %w.addr, align 4, !tbaa !5
  %mul38 = mul nsw i32 %56, 64
  %57 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %53, i32 %54, i32 %mul37, i32 %mul38, i32 %57, i32 0) #3
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
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare void @bytes_copy_rectangle(i8*, i32, i8*, i32, i32, i32) #0

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
