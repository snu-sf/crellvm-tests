; ModuleID = './gxoprect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_text_returned_s = type { i64, i64, %struct.gs_point_s }
%struct.gs_transparency_group_params_s = type { %struct.gs_color_space_s*, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cmm_profile_s* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
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

@.str = private unnamed_addr constant [33 x i8] c"overprint generic fill rectangle\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"overprint sep fill rectangle 1\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"overprint sep fill rectangle 2\00", align 1
@fill_pat_2 = internal global [4 x i32] [i32 0, i32 1431655765, i32 -1431655766, i32 -1], align 16
@fill_pat_4 = internal global [16 x i32] [i32 0, i32 286331153, i32 572662306, i32 858993459, i32 1145324612, i32 1431655765, i32 1717986918, i32 2004318071, i32 -2004318072, i32 -1717986919, i32 -1431655766, i32 -1145324613, i32 -858993460, i32 -572662307, i32 -286331154, i32 -1], align 16

; Function Attrs: nounwind uwtable
define i32 @gx_overprint_generic_fill_rectangle(%struct.gx_device_s* %tdev, i32 %blendspot, i64 %drawn_comps, i16 zeroext %k_value, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %blendspot.addr = alloca i32, align 4
  %drawn_comps.addr = alloca i64, align 8
  %k_value.addr = alloca i16, align 2
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %src_cvals = alloca [64 x i16], align 16
  %pcolor_buff = alloca i64*, align 8
  %gb_buff = alloca i8*, align 8
  %gb_params = alloca %struct.gs_get_bits_params_s, align 8
  %gb_rect = alloca %struct.gs_int_rect_s, align 4
  %depth = alloca i32, align 4
  %bit_x = alloca i32, align 4
  %start_x = alloca i32, align 4
  %end_x = alloca i32, align 4
  %raster = alloca i32, align 4
  %code = alloca i32, align 4
  %unpack_proc = alloca void (i64*, i8*, i32, i32, i32)*, align 8
  %pack_proc = alloca void (i64*, i8*, i32, i32, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  %cp = alloca i64*, align 8
  %i = alloca i32, align 4
  %comps = alloca i64, align 8
  %j = alloca i32, align 4
  %dest_cvals = alloca [64 x i16], align 16
  %temp = alloca i32, align 4
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store i32 %blendspot, i32* %blendspot.addr, align 4, !tbaa !5
  store i64 %drawn_comps, i64* %drawn_comps.addr, align 8, !tbaa !7
  store i16 %k_value, i16* %k_value.addr, align 2, !tbaa !9
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i16]* %src_cvals to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i64** %pcolor_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i64* null, i64** %pcolor_buff, align 8, !tbaa !1
  %2 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store i8* null, i8** %gb_buff, align 8, !tbaa !1
  %3 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %3) #1
  %4 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth1, align 2, !tbaa !11
  %conv = zext i16 %7 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %8 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %start_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %end_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast void (i64*, i8*, i32, i32, i32)** %unpack_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast void (i64*, i8*, i32, i32, i32)** %pack_proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %15, %16
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %do.body.3
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %17, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %20, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %22 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %22, %21
  store i32 %add11, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %23 = load i32, i32* %w.addr, align 4, !tbaa !5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 13
  %25 = load i32, i32* %width, align 4, !tbaa !22
  %26 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %25, %26
  %cmp15 = icmp sgt i32 %23, %sub
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.14
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 13
  %28 = load i32, i32* %width18, align 4, !tbaa !22
  %29 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %28, %29
  store i32 %sub19, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %30 = load i32, i32* %h.addr, align 4, !tbaa !5
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 14
  %32 = load i32, i32* %height, align 4, !tbaa !23
  %33 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %32, %33
  %cmp25 = icmp sgt i32 %30, %sub24
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %do.body.23
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 14
  %35 = load i32, i32* %height28, align 4, !tbaa !23
  %36 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub29 = sub nsw i32 %35, %36
  store i32 %sub29, i32* %h.addr, align 4, !tbaa !5
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
  %37 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %37, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.34
  %38 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp37 = icmp sle i32 %38, 0
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false, %do.end.34
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.40:                                        ; preds = %lor.lhs.false
  br label %do.cond.41

do.cond.41:                                       ; preds = %if.end.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %39 = load i32, i32* %x.addr, align 4, !tbaa !5
  %40 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %39, %40
  store i32 %mul, i32* %bit_x, align 4, !tbaa !5
  %41 = load i32, i32* %bit_x, align 4, !tbaa !5
  %and = and i32 %41, -64
  store i32 %and, i32* %start_x, align 4, !tbaa !5
  %42 = load i32, i32* %bit_x, align 4, !tbaa !5
  %43 = load i32, i32* %w.addr, align 4, !tbaa !5
  %44 = load i32, i32* %depth, align 4, !tbaa !5
  %mul43 = mul nsw i32 %43, %44
  %add44 = add nsw i32 %42, %mul43
  store i32 %add44, i32* %end_x, align 4, !tbaa !5
  %45 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp45 = icmp sge i32 %45, 8
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %do.end.42
  store void (i64*, i8*, i32, i32, i32)* @unpack_scanline_ge8, void (i64*, i8*, i32, i32, i32)** %unpack_proc, align 8, !tbaa !1
  store void (i64*, i8*, i32, i32, i32)* @pack_scanline_ge8, void (i64*, i8*, i32, i32, i32)** %pack_proc, align 8, !tbaa !1
  br label %if.end.48

if.else:                                          ; preds = %do.end.42
  store void (i64*, i8*, i32, i32, i32)* @unpack_scanline_lt8, void (i64*, i8*, i32, i32, i32)** %unpack_proc, align 8, !tbaa !1
  store void (i64*, i8*, i32, i32, i32)* @pack_scanline_lt8, void (i64*, i8*, i32, i32, i32)** %pack_proc, align 8, !tbaa !1
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.47
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 42
  %decode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 52
  %47 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color, align 8, !tbaa !24
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %49 = load i64, i64* %color.addr, align 8, !tbaa !7
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %src_cvals, i32 0, i32 0
  %call = call i32 %47(%struct.gx_device_s* %48, i64 %49, i16* %arraydecay) #3
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp49 = icmp slt i32 %call, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %50 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.52:                                        ; preds = %if.end.48
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs53 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs53, i32 0, i32 7
  %52 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !25
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %54 = load i32, i32* %w.addr, align 4, !tbaa !5
  %conv54 = sext i32 %54 to i64
  %mul55 = mul i64 %conv54, 8
  %conv56 = trunc i64 %mul55 to i32
  %call57 = call i8* %52(%struct.gs_memory_s* %53, i32 %conv56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  %55 = bitcast i8* %call57 to i64*
  store i64* %55, i64** %pcolor_buff, align 8, !tbaa !1
  %56 = load i64*, i64** %pcolor_buff, align 8, !tbaa !1
  %cmp58 = icmp eq i64* %56, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.52
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.61:                                        ; preds = %if.end.52
  %57 = load i32, i32* %end_x, align 4, !tbaa !5
  %58 = load i32, i32* %start_x, align 4, !tbaa !5
  %sub62 = sub nsw i32 %57, %58
  %add63 = add nsw i32 %sub62, 63
  %shr = ashr i32 %add63, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !5
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %59, i32 0, i32 1
  %alloc_bytes65 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 7
  %60 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes65, align 8, !tbaa !25
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %call66 = call i8* %60(%struct.gs_memory_s* %61, i32 %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  store i8* %call66, i8** %gb_buff, align 8, !tbaa !1
  %63 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %cmp67 = icmp eq i8* %63, null
  br i1 %cmp67, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.61
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs70 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %64, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs70, i32 0, i32 2
  %65 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %67 = load i64*, i64** %pcolor_buff, align 8, !tbaa !1
  %68 = bitcast i64* %67 to i8*
  call void %65(%struct.gs_memory_s* %66, i8* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

if.end.71:                                        ; preds = %if.end.61
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 0
  store i64 290537233, i64* %options, align 8, !tbaa !29
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !31
  %69 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  store i8* %69, i8** %arrayidx, align 8, !tbaa !1
  %70 = load i32, i32* %raster, align 4, !tbaa !5
  %raster72 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 4
  store i32 %70, i32* %raster72, align 4, !tbaa !32
  %71 = load i32, i32* %x.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %x73 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %71, i32* %x73, align 4, !tbaa !33
  %72 = load i32, i32* %x.addr, align 4, !tbaa !5
  %73 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add74 = add nsw i32 %72, %73
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %x75 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add74, i32* %x75, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.182, %if.end.71
  %74 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %74, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp76 = icmp sgt i32 %74, 0
  br i1 %cmp76, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %75 = load i32, i32* %code, align 4, !tbaa !5
  %cmp78 = icmp sge i32 %75, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %76 = phi i1 [ false, %while.cond ], [ %cmp78, %land.rhs ]
  br i1 %76, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %77 = bitcast i64** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i64*, i64** %pcolor_buff, align 8, !tbaa !1
  store i64* %78, i64** %cp, align 8, !tbaa !1
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #1
  %80 = load i32, i32* %y.addr, align 4, !tbaa !5
  %inc = add nsw i32 %80, 1
  store i32 %inc, i32* %y.addr, align 4, !tbaa !5
  %p80 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %y81 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p80, i32 0, i32 1
  store i32 %80, i32* %y81, align 4, !tbaa !37
  %81 = load i32, i32* %y.addr, align 4, !tbaa !5
  %q82 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %y83 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q82, i32 0, i32 1
  store i32 %81, i32* %y83, align 4, !tbaa !38
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs84 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %82, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs84, i32 0, i32 38
  %83 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !39
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %call85 = call i32 %83(%struct.gx_device_s* %84, %struct.gs_int_rect_s* %gb_rect, %struct.gs_get_bits_params_s* %gb_params, %struct.gs_int_rect_s** null) #3
  store i32 %call85, i32* %code, align 4, !tbaa !5
  %85 = load i32, i32* %code, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %85, 0
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %while.body
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.179

if.end.89:                                        ; preds = %while.body
  %86 = load void (i64*, i8*, i32, i32, i32)*, void (i64*, i8*, i32, i32, i32)** %unpack_proc, align 8, !tbaa !1
  %87 = load i64*, i64** %pcolor_buff, align 8, !tbaa !1
  %88 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %89 = load i32, i32* %w.addr, align 4, !tbaa !5
  %90 = load i32, i32* %depth, align 4, !tbaa !5
  call void %86(i64* %87, i8* %88, i32 0, i32 %89, i32 %90) #3
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.173, %if.end.89
  %91 = load i32, i32* %i, align 4, !tbaa !5
  %92 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp90 = icmp slt i32 %91, %92
  br i1 %cmp90, label %for.body, label %for.end.175

for.body:                                         ; preds = %for.cond
  %93 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %93) #1
  %94 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #1
  %95 = bitcast [64 x i16]* %dest_cvals to i8*
  call void @llvm.lifetime.start(i64 128, i8* %95) #1
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs92 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %96, i32 0, i32 42
  %decode_color93 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs92, i32 0, i32 52
  %97 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %decode_color93, align 8, !tbaa !24
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %99 = load i64*, i64** %cp, align 8, !tbaa !1
  %100 = load i64, i64* %99, align 8, !tbaa !7
  %arraydecay94 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i32 0
  %call95 = call i32 %97(%struct.gx_device_s* %98, i64 %100, i16* %arraydecay94) #3
  store i32 %call95, i32* %code, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body
  store i32 14, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %for.body
  %101 = load i16, i16* %k_value.addr, align 2, !tbaa !9
  %conv100 = zext i16 %101 to i32
  %cmp101 = icmp sgt i32 %conv100, 0
  br i1 %cmp101, label %if.then.103, label %if.else.129

if.then.103:                                      ; preds = %if.end.99
  store i32 0, i32* %j, align 4, !tbaa !5
  %102 = load i64, i64* %drawn_comps.addr, align 8, !tbaa !7
  store i64 %102, i64* %comps, align 8, !tbaa !7
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc, %if.then.103
  %103 = load i32, i32* %j, align 4, !tbaa !5
  %cmp105 = icmp slt i32 %103, 3
  br i1 %cmp105, label %for.body.107, label %for.end

for.body.107:                                     ; preds = %for.cond.104
  %104 = load i64, i64* %comps, align 8, !tbaa !7
  %and108 = and i64 %104, 1
  %cmp109 = icmp ne i64 %and108, 0
  br i1 %cmp109, label %if.then.111, label %if.else.115

if.then.111:                                      ; preds = %for.body.107
  %105 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %105 to i64
  %arrayidx112 = getelementptr inbounds [64 x i16], [64 x i16]* %src_cvals, i32 0, i64 %idxprom
  %106 = load i16, i16* %arrayidx112, align 2, !tbaa !9
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom113 = sext i32 %107 to i64
  %arrayidx114 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i64 %idxprom113
  store i16 %106, i16* %arrayidx114, align 2, !tbaa !9
  br label %if.end.126

if.else.115:                                      ; preds = %for.body.107
  %108 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #1
  %109 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom116 = sext i32 %109 to i64
  %arrayidx117 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i64 %idxprom116
  %110 = load i16, i16* %arrayidx117, align 2, !tbaa !9
  %conv118 = zext i16 %110 to i32
  %111 = load i16, i16* %k_value.addr, align 2, !tbaa !9
  %conv119 = zext i16 %111 to i32
  %sub120 = sub nsw i32 256, %conv119
  %mul121 = mul nsw i32 %conv118, %sub120
  store i32 %mul121, i32* %temp, align 4, !tbaa !5
  %112 = load i32, i32* %temp, align 4, !tbaa !5
  %shr122 = ashr i32 %112, 8
  %conv123 = trunc i32 %shr122 to i16
  %113 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom124 = sext i32 %113 to i64
  %arrayidx125 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i64 %idxprom124
  store i16 %conv123, i16* %arrayidx125, align 2, !tbaa !9
  %114 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.115, %if.then.111
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %115 = load i32, i32* %j, align 4, !tbaa !5
  %inc127 = add nsw i32 %115, 1
  store i32 %inc127, i32* %j, align 4, !tbaa !5
  %116 = load i64, i64* %comps, align 8, !tbaa !7
  %shr128 = lshr i64 %116, 1
  store i64 %shr128, i64* %comps, align 8, !tbaa !7
  br label %for.cond.104

for.end:                                          ; preds = %for.cond.104
  br label %if.end.167

if.else.129:                                      ; preds = %if.end.99
  %117 = load i32, i32* %blendspot.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %117, 0
  br i1 %tobool, label %if.then.130, label %if.else.148

if.then.130:                                      ; preds = %if.else.129
  store i32 0, i32* %j, align 4, !tbaa !5
  %118 = load i64, i64* %drawn_comps.addr, align 8, !tbaa !7
  store i64 %118, i64* %comps, align 8, !tbaa !7
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.144, %if.then.130
  %119 = load i64, i64* %comps, align 8, !tbaa !7
  %cmp132 = icmp ne i64 %119, 0
  br i1 %cmp132, label %for.body.134, label %for.end.147

for.body.134:                                     ; preds = %for.cond.131
  %120 = load i64, i64* %comps, align 8, !tbaa !7
  %and135 = and i64 %120, 1
  %cmp136 = icmp ne i64 %and135, 0
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %for.body.134
  %121 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom139 = sext i32 %121 to i64
  %arrayidx140 = getelementptr inbounds [64 x i16], [64 x i16]* %src_cvals, i32 0, i64 %idxprom139
  %122 = load i16, i16* %arrayidx140, align 2, !tbaa !9
  %123 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom141 = sext i32 %123 to i64
  %arrayidx142 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i64 %idxprom141
  store i16 %122, i16* %arrayidx142, align 2, !tbaa !9
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %for.body.134
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %124 = load i32, i32* %j, align 4, !tbaa !5
  %inc145 = add nsw i32 %124, 1
  store i32 %inc145, i32* %j, align 4, !tbaa !5
  %125 = load i64, i64* %comps, align 8, !tbaa !7
  %shr146 = lshr i64 %125, 1
  store i64 %shr146, i64* %comps, align 8, !tbaa !7
  br label %for.cond.131

for.end.147:                                      ; preds = %for.cond.131
  br label %if.end.166

if.else.148:                                      ; preds = %if.else.129
  store i32 0, i32* %j, align 4, !tbaa !5
  %126 = load i64, i64* %drawn_comps.addr, align 8, !tbaa !7
  store i64 %126, i64* %comps, align 8, !tbaa !7
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.162, %if.else.148
  %127 = load i64, i64* %comps, align 8, !tbaa !7
  %cmp150 = icmp ne i64 %127, 0
  br i1 %cmp150, label %for.body.152, label %for.end.165

for.body.152:                                     ; preds = %for.cond.149
  %128 = load i64, i64* %comps, align 8, !tbaa !7
  %and153 = and i64 %128, 1
  %cmp154 = icmp ne i64 %and153, 0
  br i1 %cmp154, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %for.body.152
  %129 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom157 = sext i32 %129 to i64
  %arrayidx158 = getelementptr inbounds [64 x i16], [64 x i16]* %src_cvals, i32 0, i64 %idxprom157
  %130 = load i16, i16* %arrayidx158, align 2, !tbaa !9
  %131 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom159 = sext i32 %131 to i64
  %arrayidx160 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i64 %idxprom159
  store i16 %130, i16* %arrayidx160, align 2, !tbaa !9
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.156, %for.body.152
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161
  %132 = load i32, i32* %j, align 4, !tbaa !5
  %inc163 = add nsw i32 %132, 1
  store i32 %inc163, i32* %j, align 4, !tbaa !5
  %133 = load i64, i64* %comps, align 8, !tbaa !7
  %shr164 = lshr i64 %133, 1
  store i64 %shr164, i64* %comps, align 8, !tbaa !7
  br label %for.cond.149

for.end.165:                                      ; preds = %for.cond.149
  br label %if.end.166

if.end.166:                                       ; preds = %for.end.165, %for.end.147
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %for.end
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs168 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %134, i32 0, i32 42
  %encode_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs168, i32 0, i32 51
  %135 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %encode_color, align 8, !tbaa !40
  %136 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %arraydecay169 = getelementptr inbounds [64 x i16], [64 x i16]* %dest_cvals, i32 0, i32 0
  %call170 = call i64 %135(%struct.gx_device_s* %136, i16* %arraydecay169) #3
  %137 = load i64*, i64** %cp, align 8, !tbaa !1
  store i64 %call170, i64* %137, align 8, !tbaa !7
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.167, %if.then.98
  %138 = bitcast [64 x i16]* %dest_cvals to i8*
  call void @llvm.lifetime.end(i64 128, i8* %138) #1
  %139 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i64* %comps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.end.175
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.173

for.inc.173:                                      ; preds = %cleanup.cont
  %141 = load i32, i32* %i, align 4, !tbaa !5
  %inc174 = add nsw i32 %141, 1
  store i32 %inc174, i32* %i, align 4, !tbaa !5
  %142 = load i64*, i64** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %incdec.ptr, i64** %cp, align 8, !tbaa !1
  br label %for.cond

for.end.175:                                      ; preds = %cleanup, %for.cond
  %143 = load void (i64*, i8*, i32, i32, i32)*, void (i64*, i8*, i32, i32, i32)** %pack_proc, align 8, !tbaa !1
  %144 = load i64*, i64** %pcolor_buff, align 8, !tbaa !1
  %145 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %146 = load i32, i32* %w.addr, align 4, !tbaa !5
  %147 = load i32, i32* %depth, align 4, !tbaa !5
  call void %143(i64* %144, i8* %145, i32 0, i32 %146, i32 %147) #3
  %148 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs176 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %148, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs176, i32 0, i32 10
  %149 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !41
  %150 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %151 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %152 = load i32, i32* %raster, align 4, !tbaa !5
  %153 = load i32, i32* %x.addr, align 4, !tbaa !5
  %154 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub177 = sub nsw i32 %154, 1
  %155 = load i32, i32* %w.addr, align 4, !tbaa !5
  %call178 = call i32 %149(%struct.gx_device_s* %150, i8* %151, i32 0, i32 %152, i64 0, i32 %153, i32 %sub177, i32 %155, i32 1) #3
  store i32 %call178, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.179

cleanup.179:                                      ; preds = %for.end.175, %if.then.88
  %156 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i64** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %cleanup.dest.181 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.181, label %unreachable [
    i32 0, label %cleanup.cont.182
    i32 13, label %while.end
  ]

cleanup.cont.182:                                 ; preds = %cleanup.179
  br label %while.cond

while.end:                                        ; preds = %cleanup.179, %land.end
  %158 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs183 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %158, i32 0, i32 1
  %free_object184 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs183, i32 0, i32 2
  %159 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object184, align 8, !tbaa !28
  %160 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %161 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %159(%struct.gs_memory_s* %160, i8* %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  %162 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs185 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %162, i32 0, i32 1
  %free_object186 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs185, i32 0, i32 2
  %163 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object186, align 8, !tbaa !28
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %165 = load i64*, i64** %pcolor_buff, align 8, !tbaa !1
  %166 = bitcast i64* %165 to i8*
  call void %163(%struct.gs_memory_s* %164, i8* %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  %167 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %167, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

cleanup.187:                                      ; preds = %while.end, %if.then.69, %if.then.60, %if.then.51, %if.then.39
  %168 = bitcast void (i64*, i8*, i32, i32, i32)** %pack_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast void (i64*, i8*, i32, i32, i32)** %unpack_proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %end_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %start_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %bit_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %176) #1
  %177 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %177) #1
  %178 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  %179 = bitcast i64** %pcolor_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast [64 x i16]* %src_cvals to i8*
  call void @llvm.lifetime.end(i64 128, i8* %180) #1
  %181 = load i32, i32* %retval
  ret i32 %181

unreachable:                                      ; preds = %cleanup.179, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @unpack_scanline_ge8(i64* %destp, i8* %srcp, i32 %src_offset, i32 %width, i32 %depth) #0 {
entry:
  %destp.addr = alloca i64*, align 8
  %srcp.addr = alloca i8*, align 8
  %src_offset.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %buff = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bytes_per_p = alloca i32, align 4
  store i64* %destp, i64** %destp.addr, align 8, !tbaa !1
  store i8* %srcp, i8** %srcp.addr, align 8, !tbaa !1
  store i32 %src_offset, i32* %src_offset.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast i64* %buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %buff, align 8, !tbaa !7
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bytes_per_p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %bytes_per_p, align 4, !tbaa !5
  %5 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %6 = load i32, i32* %bytes_per_p, align 4, !tbaa !5
  %mul = mul nsw i32 %5, %6
  %7 = load i8*, i8** %srcp.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %srcp.addr, align 8, !tbaa !1
  %8 = load i32, i32* %bytes_per_p, align 4, !tbaa !5
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 %9, %8
  store i32 %mul1, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i64, i64* %buff, align 8, !tbaa !7
  %shl = shl i64 %12, 8
  %13 = load i8*, i8** %srcp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %srcp.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !42
  %conv = zext i8 %14 to i64
  %or = or i64 %shl, %conv
  store i64 %or, i64* %buff, align 8, !tbaa !7
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %16 = load i32, i32* %bytes_per_p, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %inc, %16
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %17 = load i64, i64* %buff, align 8, !tbaa !7
  %18 = load i64*, i64** %destp.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i64, i64* %18, i32 1
  store i64* %incdec.ptr4, i64** %destp.addr, align 8, !tbaa !1
  store i64 %17, i64* %18, align 8, !tbaa !7
  store i64 0, i64* %buff, align 8, !tbaa !7
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc5 = add nsw i32 %19, 1
  store i32 %inc5, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %bytes_per_p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i64* %buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pack_scanline_ge8(i64* %srcp, i8* %destp, i32 %dest_offset, i32 %width, i32 %depth) #0 {
entry:
  %srcp.addr = alloca i64*, align 8
  %destp.addr = alloca i8*, align 8
  %dest_offset.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %buff = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %bytes_per_p = alloca i32, align 4
  %shift = alloca i32, align 4
  store i64* %srcp, i64** %srcp.addr, align 8, !tbaa !1
  store i8* %destp, i8** %destp.addr, align 8, !tbaa !1
  store i32 %dest_offset, i32* %dest_offset.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast i64* %buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i64 0, i64* %buff, align 8, !tbaa !7
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bytes_per_p to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %shr = ashr i32 %4, 3
  store i32 %shr, i32* %bytes_per_p, align 4, !tbaa !5
  %5 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 8
  store i32 %sub, i32* %shift, align 4, !tbaa !5
  %7 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %8 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %destp.addr, align 8, !tbaa !1
  %9 = load i32, i32* %bytes_per_p, align 4, !tbaa !5
  %10 = load i32, i32* %width.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %10, %9
  store i32 %mul, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  %11 = load i32, i32* %bytes_per_p, align 4, !tbaa !5
  %sub1 = sub nsw i32 %11, 1
  store i32 %sub1, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  %15 = load i32, i32* %bytes_per_p, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %inc, %15
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i64*, i64** %srcp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %incdec.ptr, i64** %srcp.addr, align 8, !tbaa !1
  %17 = load i64, i64* %16, align 8, !tbaa !7
  store i64 %17, i64* %buff, align 8, !tbaa !7
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i64, i64* %buff, align 8, !tbaa !7
  %19 = load i32, i32* %shift, align 4, !tbaa !5
  %sh_prom = zext i32 %19 to i64
  %shr3 = lshr i64 %18, %sh_prom
  %conv = trunc i64 %shr3 to i8
  %20 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr4, i8** %destp.addr, align 8, !tbaa !1
  store i8 %conv, i8* %20, align 1, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %inc5 = add nsw i32 %21, 1
  store i32 %inc5, i32* %i, align 4, !tbaa !5
  %22 = load i64, i64* %buff, align 8, !tbaa !7
  %shl = shl i64 %22, 8
  store i64 %shl, i64* %buff, align 8, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %bytes_per_p to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  %27 = bitcast i64* %buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unpack_scanline_lt8(i64* %destp, i8* %srcp, i32 %src_offset, i32 %width, i32 %depth) #0 {
entry:
  %destp.addr = alloca i64*, align 8
  %srcp.addr = alloca i8*, align 8
  %src_offset.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %buff = alloca i8, align 1
  %i = alloca i32, align 4
  %shift = alloca i32, align 4
  %p_per_byte = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i64* %destp, i64** %destp.addr, align 8, !tbaa !1
  store i8* %srcp, i8** %srcp.addr, align 8, !tbaa !1
  store i32 %src_offset, i32* %src_offset.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %buff) #1
  store i8 0, i8* %buff, align 1, !tbaa !42
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %1 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %sub = sub nsw i32 8, %2
  store i32 %sub, i32* %shift, align 4, !tbaa !5
  %3 = bitcast i32* %p_per_byte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %div = sdiv i32 8, %4
  store i32 %div, i32* %p_per_byte, align 4, !tbaa !5
  %5 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %7 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %8 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %9 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %div3 = sdiv i32 %8, %9
  %10 = load i8*, i8** %srcp.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %div3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  store i8* %add.ptr, i8** %srcp.addr, align 8, !tbaa !1
  %11 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %sub4 = sub nsw i32 %11, 1
  %12 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %and = and i32 %12, %sub4
  store i32 %and, i32* %src_offset.addr, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %13 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %13, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %14 = load i8*, i8** %srcp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %srcp.addr, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !42
  %conv = zext i8 %15 to i32
  %16 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %17 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %17
  %shl = shl i32 %conv, %mul
  %conv8 = trunc i32 %shl to i8
  store i8 %conv8, i8* %buff, align 1, !tbaa !42
  %18 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  store i32 %18, i32* %i, align 4, !tbaa !5
  %19 = load i32, i32* %src_offset.addr, align 4, !tbaa !5
  %20 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %22 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %21, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %24 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %sub12 = sub nsw i32 %24, 1
  %and13 = and i32 %23, %sub12
  %cmp14 = icmp eq i32 %and13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body
  %25 = load i8*, i8** %srcp.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %srcp.addr, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !42
  store i8 %26, i8* %buff, align 1, !tbaa !42
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body
  %27 = load i8, i8* %buff, align 1, !tbaa !42
  %conv19 = zext i8 %27 to i32
  %28 = load i32, i32* %shift, align 4, !tbaa !5
  %shr = ashr i32 %conv19, %28
  %conv20 = sext i32 %shr to i64
  %29 = load i64*, i64** %destp.addr, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr21, i64** %destp.addr, align 8, !tbaa !1
  store i64 %conv20, i64* %29, align 8, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %31 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %32 = load i8, i8* %buff, align 1, !tbaa !42
  %conv22 = zext i8 %32 to i32
  %shl23 = shl i32 %conv22, %31
  %conv24 = trunc i32 %shl23 to i8
  store i8 %conv24, i8* %buff, align 1, !tbaa !42
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %33 = bitcast i32* %p_per_byte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  call void @llvm.lifetime.end(i64 1, i8* %buff) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @pack_scanline_lt8(i64* %srcp, i8* %destp, i32 %dest_offset, i32 %width, i32 %depth) #0 {
entry:
  %srcp.addr = alloca i64*, align 8
  %destp.addr = alloca i8*, align 8
  %dest_offset.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %buff = alloca i8, align 1
  %i = alloca i32, align 4
  %p_per_byte = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  store i64* %srcp, i64** %srcp.addr, align 8, !tbaa !1
  store i8* %destp, i8** %destp.addr, align 8, !tbaa !1
  store i32 %dest_offset, i32* %dest_offset.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %buff) #1
  store i8 0, i8* %buff, align 1, !tbaa !42
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !5
  %1 = bitcast i32* %p_per_byte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %div = sdiv i32 8, %2
  store i32 %div, i32* %p_per_byte, align 4, !tbaa !5
  %3 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %5 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %7 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %div3 = sdiv i32 %6, %7
  %8 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %div3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr, i8** %destp.addr, align 8, !tbaa !1
  %9 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %sub = sub nsw i32 %9, 1
  %10 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %and = and i32 %10, %sub
  store i32 %and, i32* %dest_offset.addr, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %11 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %12 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %destp.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !42
  %conv = zext i8 %13 to i32
  %14 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %15 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %15
  %sub7 = sub nsw i32 8, %mul
  %shr = ashr i32 %conv, %sub7
  %conv8 = trunc i32 %shr to i8
  store i8 %conv8, i8* %buff, align 1, !tbaa !42
  %16 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  store i32 %16, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %dest_offset.addr, align 4, !tbaa !5
  %18 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.end.4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %20 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %19, %20
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i8, i8* %buff, align 1, !tbaa !42
  %conv12 = zext i8 %21 to i32
  %22 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %shl = shl i32 %conv12, %22
  %conv13 = sext i32 %shl to i64
  %23 = load i64*, i64** %srcp.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %incdec.ptr14, i64** %srcp.addr, align 8, !tbaa !1
  %24 = load i64, i64* %23, align 8, !tbaa !7
  %or = or i64 %conv13, %24
  %conv15 = trunc i64 %or to i8
  store i8 %conv15, i8* %buff, align 1, !tbaa !42
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %sub16 = sub nsw i32 %26, 1
  %and17 = and i32 %25, %sub16
  %27 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %sub18 = sub nsw i32 %27, 1
  %cmp19 = icmp eq i32 %and17, %sub18
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body
  %28 = load i8, i8* %buff, align 1, !tbaa !42
  %29 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr22, i8** %destp.addr, align 8, !tbaa !1
  store i8 %28, i8* %29, align 1, !tbaa !42
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %30 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %sub24 = sub nsw i32 %31, 1
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %and25 = and i32 %32, %sub24
  store i32 %and25, i32* %i, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %and25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.39

if.then.28:                                       ; preds = %for.end
  %33 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %35 = load i32, i32* %p_per_byte, align 4, !tbaa !5
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %sub29 = sub nsw i32 %35, %36
  %mul30 = mul nsw i32 %34, %sub29
  store i32 %mul30, i32* %shift, align 4, !tbaa !5
  %37 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %shift, align 4, !tbaa !5
  %shl31 = shl i32 1, %38
  %sub32 = sub nsw i32 %shl31, 1
  store i32 %sub32, i32* %mask, align 4, !tbaa !5
  %39 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !42
  %conv33 = zext i8 %40 to i32
  %41 = load i32, i32* %mask, align 4, !tbaa !5
  %and34 = and i32 %conv33, %41
  %42 = load i8, i8* %buff, align 1, !tbaa !42
  %conv35 = zext i8 %42 to i32
  %43 = load i32, i32* %shift, align 4, !tbaa !5
  %shl36 = shl i32 %conv35, %43
  %or37 = or i32 %and34, %shl36
  %conv38 = trunc i32 %or37 to i8
  %44 = load i8*, i8** %destp.addr, align 8, !tbaa !1
  store i8 %conv38, i8* %44, align 1, !tbaa !42
  %45 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.28, %for.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.39, %if.then
  %47 = bitcast i32* %p_per_byte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  call void @llvm.lifetime.end(i64 1, i8* %buff) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_overprint_sep_fill_rectangle_1(%struct.gx_device_s* %tdev, i64 %retain_mask, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %retain_mask.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %gb_buff = alloca i8*, align 8
  %gb_params = alloca %struct.gs_get_bits_params_s, align 8
  %gb_rect = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %bit_w = alloca i32, align 4
  %depth = alloca i32, align 4
  %raster = alloca i32, align 4
  %rep_color = alloca i32, align 4
  %rep_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store i64 %retain_mask, i64* %retain_mask.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %gb_buff, align 8, !tbaa !1
  %1 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %1) #1
  %2 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %bit_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth1, align 2, !tbaa !11
  %conv = zext i16 %7 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %8 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %rep_color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %rep_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %11, %12
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %do.body.3
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %13, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %16, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %18, %17
  store i32 %add11, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end.13
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.14

do.body.14:                                       ; preds = %do.end
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !22
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %21, %22
  %cmp15 = icmp sgt i32 %19, %sub
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.body.14
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width18, align 4, !tbaa !22
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %24, %25
  store i32 %sub19, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.body.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height, align 4, !tbaa !23
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %28, %29
  %cmp25 = icmp sgt i32 %26, %sub24
  br i1 %cmp25, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %do.body.23
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height28, align 4, !tbaa !23
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub29 = sub nsw i32 %31, %32
  store i32 %sub29, i32* %h.addr, align 4, !tbaa !5
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
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %33, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.34
  %34 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp37 = icmp sle i32 %34, 0
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
  %35 = load i32, i32* %w.addr, align 4, !tbaa !5
  %36 = load i32, i32* %depth, align 4, !tbaa !5
  %mul = mul nsw i32 %35, %36
  store i32 %mul, i32* %bit_w, align 4, !tbaa !5
  %37 = load i32, i32* %depth, align 4, !tbaa !5
  %conv43 = sext i32 %37 to i64
  %cmp44 = icmp ult i64 %conv43, 32
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %do.end.42
  %38 = load i32, i32* %depth, align 4, !tbaa !5
  %39 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv47 = trunc i64 %39 to i32
  %call = call i32 @replicate_color(i32 %38, i32 %conv47) #3
  store i32 %call, i32* %rep_color, align 4, !tbaa !5
  %40 = load i32, i32* %depth, align 4, !tbaa !5
  %41 = load i64, i64* %retain_mask.addr, align 8, !tbaa !7
  %conv48 = trunc i64 %41 to i32
  %call49 = call i32 @replicate_color(i32 %40, i32 %conv48) #3
  store i32 %call49, i32* %rep_mask, align 4, !tbaa !5
  br label %if.end.52

if.else:                                          ; preds = %do.end.42
  %42 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv50 = trunc i64 %42 to i32
  store i32 %conv50, i32* %rep_color, align 4, !tbaa !5
  %43 = load i64, i64* %retain_mask.addr, align 8, !tbaa !7
  %conv51 = trunc i64 %43 to i32
  store i32 %conv51, i32* %rep_mask, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.else, %if.then.46
  %44 = load i32, i32* %w.addr, align 4, !tbaa !5
  %45 = load i32, i32* %depth, align 4, !tbaa !5
  %mul53 = mul nsw i32 %44, %45
  %add54 = add nsw i32 %mul53, 63
  %shr = ashr i32 %add54, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster, align 4, !tbaa !5
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %47 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !25
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %49 = load i32, i32* %raster, align 4, !tbaa !5
  %call55 = call i8* %47(%struct.gs_memory_s* %48, i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #3
  store i8* %call55, i8** %gb_buff, align 8, !tbaa !1
  %50 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %cmp56 = icmp eq i8* %50, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.52
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.59:                                        ; preds = %if.end.52
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 0
  store i64 290537233, i64* %options, align 8, !tbaa !29
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !31
  %51 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  store i8* %51, i8** %arrayidx, align 8, !tbaa !1
  %52 = load i32, i32* %raster, align 4, !tbaa !5
  %raster60 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 4
  store i32 %52, i32* %raster60, align 4, !tbaa !32
  %53 = load i32, i32* %x.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %x61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %53, i32* %x61, align 4, !tbaa !33
  %54 = load i32, i32* %x.addr, align 4, !tbaa !5
  %55 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add62 = add nsw i32 %54, %55
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %x63 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add62, i32* %x63, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %if.end.59
  %56 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %56, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp64 = icmp sgt i32 %56, 0
  br i1 %cmp64, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %57 = load i32, i32* %code, align 4, !tbaa !5
  %cmp66 = icmp sge i32 %57, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %58 = phi i1 [ false, %while.cond ], [ %cmp66, %land.rhs ]
  br i1 %58, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %59 = load i32, i32* %y.addr, align 4, !tbaa !5
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %y.addr, align 4, !tbaa !5
  %p68 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %y69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p68, i32 0, i32 1
  store i32 %59, i32* %y69, align 4, !tbaa !37
  %60 = load i32, i32* %y.addr, align 4, !tbaa !5
  %q70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %y71 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q70, i32 0, i32 1
  store i32 %60, i32* %y71, align 4, !tbaa !38
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs72, i32 0, i32 38
  %62 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !39
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %call73 = call i32 %62(%struct.gx_device_s* %63, %struct.gs_int_rect_s* %gb_rect, %struct.gs_get_bits_params_s* %gb_params, %struct.gs_int_rect_s** null) #3
  store i32 %call73, i32* %code, align 4, !tbaa !5
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %64, 0
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %while.body
  br label %while.end

if.end.77:                                        ; preds = %while.body
  %65 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %66 = load i32, i32* %raster, align 4, !tbaa !5
  %67 = load i32, i32* %rep_color, align 4, !tbaa !5
  %68 = load i32, i32* %rep_mask, align 4, !tbaa !5
  %69 = load i32, i32* %bit_w, align 4, !tbaa !5
  call void @bits_fill_rectangle_masked(i8* %65, i32 0, i32 %66, i32 %67, i32 %68, i32 %69, i32 1) #3
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs78 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %70, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs78, i32 0, i32 10
  %71 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !41
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %73 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %74 = load i32, i32* %raster, align 4, !tbaa !5
  %75 = load i32, i32* %x.addr, align 4, !tbaa !5
  %76 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub79 = sub nsw i32 %76, 1
  %77 = load i32, i32* %w.addr, align 4, !tbaa !5
  %call80 = call i32 %71(%struct.gx_device_s* %72, i8* %73, i32 0, i32 %74, i64 0, i32 %75, i32 %sub79, i32 %77, i32 1) #3
  store i32 %call80, i32* %code, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %if.then.76, %land.end
  %78 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs81 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %78, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs81, i32 0, i32 2
  %79 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %81 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %79(%struct.gs_memory_s* %80, i8* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  %82 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %82, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.58, %if.then.39
  %83 = bitcast i32* %rep_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i32* %rep_color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %bit_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %89) #1
  %90 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %90) #1
  %91 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = load i32, i32* %retval
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal i32 @replicate_color(i32 %depth, i32 %color) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %color.addr = alloca i32, align 4
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  store i32 %color, i32* %color.addr, align 4, !tbaa !5
  %0 = load i32, i32* %depth.addr, align 4, !tbaa !5
  switch i32 %0, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.2
    i32 8, label %sw.bb.5
    i32 16, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %color.addr, align 4, !tbaa !5
  %sub = sub nsw i32 0, %1
  store i32 %sub, i32* %color.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load i32, i32* %color.addr, align 4, !tbaa !5
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @fill_pat_2, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %3, i32* %color.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load i32, i32* %color.addr, align 4, !tbaa !5
  %idxprom3 = zext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* @fill_pat_4, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  store i32 %5, i32* %color.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load i32, i32* %color.addr, align 4, !tbaa !5
  %mul = mul i32 %6, 16843009
  store i32 %mul, i32* %color.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %7 = load i32, i32* %color.addr, align 4, !tbaa !5
  %shl = shl i32 %7, 16
  %8 = load i32, i32* %color.addr, align 4, !tbaa !5
  %or = or i32 %shl, %8
  store i32 %or, i32* %color.addr, align 4, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %entry, %sw.bb.5, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %color.addr, align 4, !tbaa !5
  ret i32 %9
}

declare void @bits_fill_rectangle_masked(i8*, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gx_overprint_sep_fill_rectangle_2(%struct.gx_device_s* %tdev, i32 %blendspot, i64 %retain_mask, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %tdev.addr = alloca %struct.gx_device_s*, align 8
  %blendspot.addr = alloca i32, align 4
  %retain_mask.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %gb_buff = alloca i8*, align 8
  %gb_params = alloca %struct.gs_get_bits_params_s, align 8
  %gb_rect = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %byte_w = alloca i32, align 4
  %raster = alloca i32, align 4
  %byte_depth = alloca i32, align 4
  %pcolor = alloca i8*, align 8
  %pmask = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cp = alloca i8*, align 8
  %temp = alloca i32, align 4
  store %struct.gx_device_s* %tdev, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  store i32 %blendspot, i32* %blendspot.addr, align 4, !tbaa !5
  store i64 %retain_mask, i64* %retain_mask.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store i8* null, i8** %gb_buff, align 8, !tbaa !1
  %1 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %1) #1
  %2 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast i32* %byte_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %8 = load i16, i16* %depth, align 2, !tbaa !11
  %conv = zext i16 %8 to i32
  %shr = ashr i32 %conv, 3
  store i32 %shr, i32* %byte_depth, align 4, !tbaa !5
  %9 = bitcast i8** %pcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %pmask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !5
  %12 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %11, %12
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %do.body.2
  %13 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %15 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %15, %14
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %16 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %16, 0
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end
  %17 = load i32, i32* %y.addr, align 4, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %18, %17
  store i32 %add10, i32* %h.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %if.end.12
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !22
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %21, %22
  %cmp14 = icmp sgt i32 %19, %sub
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %do.body.13
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width17, align 4, !tbaa !22
  %25 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %24, %25
  store i32 %sub18, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %do.body.13
  br label %do.cond.20

do.cond.20:                                       ; preds = %if.end.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %26 = load i32, i32* %h.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height, align 4, !tbaa !23
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %28, %29
  %cmp24 = icmp sgt i32 %26, %sub23
  br i1 %cmp24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %do.body.22
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %height27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height27, align 4, !tbaa !23
  %32 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub28 = sub nsw i32 %31, %32
  store i32 %sub28, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %do.body.22
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %33 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %33, 0
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.33
  %34 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %34, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %do.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.39:                                        ; preds = %lor.lhs.false
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %35 = load i32, i32* %w.addr, align 4, !tbaa !5
  %36 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %mul = mul nsw i32 %35, %36
  store i32 %mul, i32* %byte_w, align 4, !tbaa !5
  %37 = bitcast i64* %color.addr to i8*
  store i8* %37, i8** %pcolor, align 8, !tbaa !1
  %38 = bitcast i64* %retain_mask.addr to i8*
  store i8* %38, i8** %pmask, align 8, !tbaa !1
  %39 = load i32, i32* %w.addr, align 4, !tbaa !5
  %40 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %shl = shl i32 %40, 3
  %mul42 = mul nsw i32 %39, %shl
  %add43 = add nsw i32 %mul42, 63
  %shr44 = ashr i32 %add43, 6
  %shl45 = shl i32 %shr44, 3
  store i32 %shl45, i32* %raster, align 4, !tbaa !5
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %42 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !25
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %44 = load i32, i32* %raster, align 4, !tbaa !5
  %call = call i8* %42(%struct.gs_memory_s* %43, i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0)) #3
  store i8* %call, i8** %gb_buff, align 8, !tbaa !1
  %45 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %cmp46 = icmp eq i8* %45, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.41
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

if.end.49:                                        ; preds = %do.end.41
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 0
  store i64 290537233, i64* %options, align 8, !tbaa !29
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !31
  %46 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  store i8* %46, i8** %arrayidx, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %raster50 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %gb_params, i32 0, i32 4
  store i32 %47, i32* %raster50, align 4, !tbaa !32
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %x51 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %48, i32* %x51, align 4, !tbaa !33
  %49 = load i32, i32* %x.addr, align 4, !tbaa !5
  %50 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add52 = add nsw i32 %49, %50
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %x53 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add52, i32* %x53, align 4, !tbaa !36
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.49
  %51 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp54 = icmp sgt i32 %51, 0
  br i1 %cmp54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %52 = load i32, i32* %code, align 4, !tbaa !5
  %cmp56 = icmp sge i32 %52, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %53 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ]
  br i1 %53, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %54 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #1
  %56 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %56) #1
  %57 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  store i8* %57, i8** %cp, align 8, !tbaa !1
  %58 = load i32, i32* %y.addr, align 4, !tbaa !5
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %y.addr, align 4, !tbaa !5
  %p58 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 0
  %y59 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p58, i32 0, i32 1
  store i32 %58, i32* %y59, align 4, !tbaa !37
  %59 = load i32, i32* %y.addr, align 4, !tbaa !5
  %q60 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %gb_rect, i32 0, i32 1
  %y61 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q60, i32 0, i32 1
  store i32 %59, i32* %y61, align 4, !tbaa !38
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs62 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs62, i32 0, i32 38
  %61 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !39
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %call63 = call i32 %61(%struct.gx_device_s* %62, %struct.gs_int_rect_s* %gb_rect, %struct.gs_get_bits_params_s* %gb_params, %struct.gs_int_rect_s** null) #3
  store i32 %call63, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %while.body
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup

if.end.67:                                        ; preds = %while.body
  %64 = load i32, i32* %blendspot.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %64, 0
  br i1 %tobool, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %if.end.67
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.68
  %65 = load i32, i32* %i, align 4, !tbaa !5
  %66 = load i32, i32* %byte_w, align 4, !tbaa !5
  %cmp69 = icmp slt i32 %65, %66
  br i1 %cmp69, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %67 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = load i8*, i8** %cp, align 8, !tbaa !1
  %69 = load i8, i8* %68, align 1, !tbaa !42
  %conv71 = zext i8 %69 to i32
  %sub72 = sub nsw i32 255, %conv71
  %70 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %70 to i64
  %71 = load i8*, i8** %pcolor, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i8, i8* %71, i64 %idxprom
  %72 = load i8, i8* %arrayidx73, align 1, !tbaa !42
  %conv74 = zext i8 %72 to i32
  %sub75 = sub nsw i32 255, %conv74
  %mul76 = mul nsw i32 %sub72, %sub75
  store i32 %mul76, i32* %temp, align 4, !tbaa !5
  %73 = load i32, i32* %temp, align 4, !tbaa !5
  %shr77 = ashr i32 %73, 8
  store i32 %shr77, i32* %temp, align 4, !tbaa !5
  %74 = load i32, i32* %temp, align 4, !tbaa !5
  %sub78 = sub nsw i32 255, %74
  %conv79 = trunc i32 %sub78 to i8
  %75 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8 %conv79, i8* %75, align 1, !tbaa !42
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %inc80 = add nsw i32 %76, 1
  store i32 %inc80, i32* %j, align 4, !tbaa !5
  %77 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %cmp81 = icmp eq i32 %inc80, %77
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %for.body
  %78 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc85 = add nsw i32 %79, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !5
  %80 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.108

if.else:                                          ; preds = %if.end.67
  store i32 0, i32* %i, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.104, %if.else
  %81 = load i32, i32* %i, align 4, !tbaa !5
  %82 = load i32, i32* %byte_w, align 4, !tbaa !5
  %cmp87 = icmp slt i32 %81, %82
  br i1 %cmp87, label %for.body.89, label %for.end.107

for.body.89:                                      ; preds = %for.cond.86
  %83 = load i8*, i8** %cp, align 8, !tbaa !1
  %84 = load i8, i8* %83, align 1, !tbaa !42
  %conv90 = zext i8 %84 to i32
  %85 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom91 = sext i32 %85 to i64
  %86 = load i8*, i8** %pmask, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds i8, i8* %86, i64 %idxprom91
  %87 = load i8, i8* %arrayidx92, align 1, !tbaa !42
  %conv93 = zext i8 %87 to i32
  %and = and i32 %conv90, %conv93
  %88 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom94 = sext i32 %88 to i64
  %89 = load i8*, i8** %pcolor, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %89, i64 %idxprom94
  %90 = load i8, i8* %arrayidx95, align 1, !tbaa !42
  %conv96 = zext i8 %90 to i32
  %or97 = or i32 %and, %conv96
  %conv98 = trunc i32 %or97 to i8
  %91 = load i8*, i8** %cp, align 8, !tbaa !1
  store i8 %conv98, i8* %91, align 1, !tbaa !42
  %92 = load i32, i32* %j, align 4, !tbaa !5
  %inc99 = add nsw i32 %92, 1
  store i32 %inc99, i32* %j, align 4, !tbaa !5
  %93 = load i32, i32* %byte_depth, align 4, !tbaa !5
  %cmp100 = icmp eq i32 %inc99, %93
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.body.89
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %for.body.89
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %94 = load i32, i32* %i, align 4, !tbaa !5
  %inc105 = add nsw i32 %94, 1
  store i32 %inc105, i32* %i, align 4, !tbaa !5
  %95 = load i8*, i8** %cp, align 8, !tbaa !1
  %incdec.ptr106 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr106, i8** %cp, align 8, !tbaa !1
  br label %for.cond.86

for.end.107:                                      ; preds = %for.cond.86
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %for.end
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %procs109 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %96, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs109, i32 0, i32 10
  %97 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !41
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %tdev.addr, align 8, !tbaa !1
  %99 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  %100 = load i32, i32* %raster, align 4, !tbaa !5
  %101 = load i32, i32* %x.addr, align 4, !tbaa !5
  %102 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub110 = sub nsw i32 %102, 1
  %103 = load i32, i32* %w.addr, align 4, !tbaa !5
  %call111 = call i32 %97(%struct.gx_device_s* %98, i8* %99, i32 0, i32 %100, i64 0, i32 %101, i32 %sub110, i32 %103, i32 1) #3
  store i32 %call111, i32* %code, align 4, !tbaa !5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.108, %if.then.66
  %104 = bitcast i8** %cp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 13, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %land.end
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs114, i32 0, i32 2
  %108 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !28
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %110 = load i8*, i8** %gb_buff, align 8, !tbaa !1
  call void %108(%struct.gs_memory_s* %109, i8* %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0)) #3
  %111 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.115

cleanup.115:                                      ; preds = %while.end, %if.then.48, %if.then.38
  %112 = bitcast i8** %pmask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %112) #1
  %113 = bitcast i8** %pcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i32* %byte_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i32* %byte_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast %struct.gs_int_rect_s* %gb_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %118) #1
  %119 = bitcast %struct.gs_get_bits_params_s* %gb_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %119) #1
  %120 = bitcast i8** %gb_buff to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = load i32, i32* %retval
  ret i32 %121

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !3, i64 0}
!11 = !{!12, !10, i64 108}
!12 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !13, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !14, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!13 = !{!"rc_header_s", !8, i64 0, !2, i64 8, !2, i64 16}
!14 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !10, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !8, i64 704, !6, i64 712}
!15 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!16 = !{!"gx_device_cached_colors_s", !8, i64 0, !8, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !8, i64 0, !8, i64 8, !19, i64 16, !6, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !8, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!12, !6, i64 832}
!23 = !{!12, !6, i64 836}
!24 = !{!12, !2, i64 1560}
!25 = !{!26, !2, i64 64}
!26 = !{!"gs_memory_s", !2, i64 0, !27, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!27 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!28 = !{!26, !2, i64 24}
!29 = !{!30, !8, i64 0}
!30 = !{!"gs_get_bits_params_s", !8, i64 0, !3, i64 8, !6, i64 520, !6, i64 524, !6, i64 528}
!31 = !{!30, !6, i64 520}
!32 = !{!30, !6, i64 528}
!33 = !{!34, !6, i64 0}
!34 = !{!"gs_int_rect_s", !35, i64 0, !35, i64 8}
!35 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!36 = !{!34, !6, i64 8}
!37 = !{!34, !6, i64 4}
!38 = !{!34, !6, i64 12}
!39 = !{!12, !2, i64 1448}
!40 = !{!12, !2, i64 1552}
!41 = !{!12, !2, i64 1224}
!42 = !{!3, !3, i64 0}
