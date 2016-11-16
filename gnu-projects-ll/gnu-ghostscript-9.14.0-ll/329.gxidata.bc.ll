; ModuleID = './gxidata.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }
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
%struct.stream_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gs_devicen_color_map_s = type opaque
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_image_enum_procs_s = type { {}*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
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
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_device_clip_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_clip_list_s, %struct.gx_clip_rect_s*, %struct.gs_int_point_s, %struct.gs_fixed_rect_s, i32 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32 }
%struct.gx_clip_rect_s = type { %struct.gx_clip_rect_s*, %struct.gx_clip_rect_s*, i32, i32, i32, i32, i8 }
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }

@.str = private unnamed_addr constant [15 x i8] c"image RasterOp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"image clipper\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"image scaler state\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"device_contone\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"image is_transparent\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"image color cache\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"image thresh_buffer\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"image ht_buffer\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"image clues\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"image line\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"image buffer\00", align 1
@repack_bit_planes.expand = internal constant [16 x i32] [i32 0, i32 16777216, i32 65536, i32 16842752, i32 256, i32 16777472, i32 65792, i32 16843008, i32 1, i32 16777217, i32 65537, i32 16842753, i32 257, i32 16777473, i32 65793, i32 16843009], align 16

; Function Attrs: nounwind uwtable
define i32 @gx_image1_plane_data(%struct.gx_image_enum_common_s* %info, %struct.gx_image_plane_s* %planes, i32 %height, i32* %rows_used) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %height.addr = alloca i32, align 4
  %rows_used.addr = alloca i32*, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %y = alloca i32, align 4
  %y_end = alloca i32, align 4
  %width_spp = alloca i32, align 4
  %num_planes = alloca i32, align 4
  %num_components_per_plane = alloca i32, align 4
  %adjust = alloca i32, align 4
  %offsets = alloca [65 x i64], align 16
  %ignore_data_x = alloca i32, align 4
  %bit_planar = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %px = alloca i32, align 4
  %px48 = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %sourcex = alloca i32, align 4
  %x_used = alloca i32, align 4
  %yc = alloca i32, align 4
  %yn = alloca i32, align 4
  %temp = alloca i32, align 4
  %xc = alloca i32, align 4
  %xn = alloca i32, align 4
  %temp347 = alloca i32, align 4
  %n_ = alloca i32, align 4
  %n_470 = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store %struct.gx_image_plane_s* %planes, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32* %rows_used, i32** %rows_used.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image_enum_s*
  store %struct.gx_image_enum_s* %2, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %5, i32 0, i32 51
  %6 = load i32, i32* %y1, align 4, !tbaa !7
  store i32 %6, i32* %y, align 4, !tbaa !5
  %7 = bitcast i32* %y_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %y, align 4, !tbaa !5
  %9 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, %9
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 22
  %h = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 3
  %11 = load i32, i32* %h, align 4, !tbaa !30
  %cmp = icmp slt i32 %add, %11
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %y, align 4, !tbaa !5
  %13 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add2 = add nsw i32 %12, %13
  br label %cond.end

cond.false:                                       ; preds = %entry
  %14 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %14, i32 0, i32 22
  %h4 = getelementptr inbounds %struct.r_, %struct.r_* %rect3, i32 0, i32 3
  %15 = load i32, i32* %h4, align 4, !tbaa !30
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add2, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %y_end, align 4, !tbaa !5
  %16 = bitcast i32* %width_spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 22
  %w = getelementptr inbounds %struct.r_, %struct.r_* %rect5, i32 0, i32 2
  %18 = load i32, i32* %w, align 4, !tbaa !31
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 14
  %20 = load i8, i8* %spp, align 1, !tbaa !32
  %conv = zext i8 %20 to i32
  %mul = mul nsw i32 %18, %conv
  store i32 %mul, i32* %width_spp, align 4, !tbaa !5
  %21 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %num_planes6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 6
  %23 = load i32, i32* %num_planes6, align 4, !tbaa !33
  store i32 %23, i32* %num_planes, align 4, !tbaa !5
  %24 = bitcast i32* %num_components_per_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 1, i32* %num_components_per_plane, align 4, !tbaa !5
  %25 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %adjust7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %26, i32 0, i32 45
  %27 = load i32, i32* %adjust7, align 4, !tbaa !34
  store i32 %27, i32* %adjust, align 4, !tbaa !5
  %28 = bitcast [65 x i64]* %offsets to i8*
  call void @llvm.lifetime.start(i64 520, i8* %28) #1
  %29 = bitcast i32* %ignore_data_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %bit_planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %num_planes8 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %31, i32 0, i32 6
  %32 = load i32, i32* %num_planes8, align 4, !tbaa !33
  %33 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp9 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %33, i32 0, i32 14
  %34 = load i8, i8* %spp9, align 1, !tbaa !32
  %conv10 = zext i8 %34 to i32
  %cmp11 = icmp sgt i32 %32, %conv10
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %bit_planar, align 4, !tbaa !5
  %35 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %36, 0
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %37 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 0, i32* %37, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.710

if.end:                                           ; preds = %cond.end
  %38 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @setup_image_device(%struct.gx_image_enum_s* %38) #4
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %39 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %39, i32 0, i32 52
  %y15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used, i32 0, i32 1
  %40 = load i32, i32* %y15, align 4, !tbaa !35
  %tobool = icmp ne i32 %40, 0
  br i1 %tobool, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %41 = bitcast i32* %px to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  store i32 0, i32* %px, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %42 = load i32, i32* %px, align 4, !tbaa !5
  %43 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %42, %43
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %44 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %45, i64 %idxprom
  %raster = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx, i32 0, i32 2
  %46 = load i32, i32* %raster, align 4, !tbaa !36
  %47 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used19 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %47, i32 0, i32 52
  %y20 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used19, i32 0, i32 1
  %48 = load i32, i32* %y20, align 4, !tbaa !35
  %mul21 = mul i32 %46, %48
  %conv22 = zext i32 %mul21 to i64
  %49 = load i32, i32* %px, align 4, !tbaa !5
  %idxprom23 = sext i32 %49 to i64
  %arrayidx24 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i64 %idxprom23
  store i64 %conv22, i64* %arrayidx24, align 8, !tbaa !38
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %px, align 4, !tbaa !5
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %px, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used25 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %51, i32 0, i32 52
  %y26 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used25, i32 0, i32 1
  store i32 0, i32* %y26, align 4, !tbaa !35
  %52 = bitcast i32* %px to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i32 0
  %53 = bitcast i64* %arraydecay to i8*
  %54 = load i32, i32* %num_planes, align 4, !tbaa !5
  %conv27 = sext i32 %54 to i64
  %mul28 = mul i64 %conv27, 8
  %call29 = call i8* @memset(i8* %53, i32 0, i64 %mul28) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %for.end
  %55 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %55, 1
  br i1 %cmp31, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %if.end.30
  %56 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %plane_depths = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %56, i32 0, i32 7
  %arrayidx33 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths, i32 0, i64 0
  %57 = load i32, i32* %arrayidx33, align 4, !tbaa !5
  %58 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %bps = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %58, i32 0, i32 11
  %59 = load i8, i8* %bps, align 1, !tbaa !39
  %conv34 = zext i8 %59 to i32
  %cmp35 = icmp ne i32 %57, %conv34
  br i1 %cmp35, label %if.then.37, label %if.end.42

if.then.37:                                       ; preds = %land.lhs.true
  %60 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %plane_depths38 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %60, i32 0, i32 7
  %arrayidx39 = getelementptr inbounds [65 x i32], [65 x i32]* %plane_depths38, i32 0, i64 0
  %61 = load i32, i32* %arrayidx39, align 4, !tbaa !5
  %62 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %bps40 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %62, i32 0, i32 11
  %63 = load i8, i8* %bps40, align 1, !tbaa !39
  %conv41 = zext i8 %63 to i32
  %div = sdiv i32 %61, %conv41
  store i32 %div, i32* %num_components_per_plane, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.37, %land.lhs.true, %if.end.30
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.691, %if.end.42
  %64 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y44 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 51
  %65 = load i32, i32* %y44, align 4, !tbaa !7
  %66 = load i32, i32* %y_end, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %65, %66
  br i1 %cmp45, label %for.body.47, label %for.end.694

for.body.47:                                      ; preds = %for.cond.43
  %67 = bitcast i32* %px48 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %67) #1
  %68 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %68) #1
  %69 = bitcast i32* %sourcex to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast i32* %x_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  %71 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used49 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %71, i32 0, i32 52
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used49, i32 0, i32 0
  %72 = load i32, i32* %x, align 4, !tbaa !40
  store i32 %72, i32* %x_used, align 4, !tbaa !5
  %73 = load i32, i32* %bit_planar, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %73, 0
  br i1 %tobool50, label %if.then.51, label %if.else.85

if.then.51:                                       ; preds = %for.body.47
  %74 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %buffer52 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %74, i32 0, i32 32
  %75 = load i8*, i8** %buffer52, align 8, !tbaa !41
  store i8* %75, i8** %buffer, align 8, !tbaa !1
  store i32 0, i32* %sourcex, align 4, !tbaa !5
  store i32 0, i32* %px48, align 4, !tbaa !5
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.66, %if.then.51
  %76 = load i32, i32* %px48, align 4, !tbaa !5
  %77 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %76, %77
  br i1 %cmp54, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.53
  %78 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arraydecay57 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i32 0
  %79 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %bps58 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %79, i32 0, i32 11
  %80 = load i8, i8* %bps58, align 1, !tbaa !39
  %conv59 = zext i8 %80 to i32
  %81 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %buffer60 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %81, i32 0, i32 32
  %82 = load i8*, i8** %buffer60, align 8, !tbaa !41
  %83 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect61 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %83, i32 0, i32 22
  %w62 = getelementptr inbounds %struct.r_, %struct.r_* %rect61, i32 0, i32 2
  %84 = load i32, i32* %w62, align 4, !tbaa !31
  %85 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom63 = sext i32 %85 to i64
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 64
  %arrayidx64 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map, i32 0, i64 %idxprom63
  %table = getelementptr inbounds %struct.sample_map_s, %struct.sample_map_s* %arrayidx64, i32 0, i32 0
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spread = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %87, i32 0, i32 18
  %88 = load i8, i8* %spread, align 1, !tbaa !42
  %conv65 = zext i8 %88 to i32
  call void @repack_bit_planes(%struct.gx_image_plane_s* %78, i64* %arraydecay57, i32 %conv59, i8* %82, i32 %84, %union.sample_lookup_s* %table, i32 %conv65) #4
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.56
  %89 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %bps67 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 11
  %90 = load i8, i8* %bps67, align 1, !tbaa !39
  %conv68 = zext i8 %90 to i32
  %91 = load i32, i32* %px48, align 4, !tbaa !5
  %add69 = add nsw i32 %91, %conv68
  store i32 %add69, i32* %px48, align 4, !tbaa !5
  br label %for.cond.53

for.end.70:                                       ; preds = %for.cond.53
  store i32 0, i32* %px48, align 4, !tbaa !5
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.82, %for.end.70
  %92 = load i32, i32* %px48, align 4, !tbaa !5
  %93 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %92, %93
  br i1 %cmp72, label %for.body.74, label %for.end.84

for.body.74:                                      ; preds = %for.cond.71
  %94 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom75 = sext i32 %94 to i64
  %95 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %95, i64 %idxprom75
  %raster77 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx76, i32 0, i32 2
  %96 = load i32, i32* %raster77, align 4, !tbaa !36
  %conv78 = zext i32 %96 to i64
  %97 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom79 = sext i32 %97 to i64
  %arrayidx80 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i64 %idxprom79
  %98 = load i64, i64* %arrayidx80, align 8, !tbaa !38
  %add81 = add i64 %98, %conv78
  store i64 %add81, i64* %arrayidx80, align 8, !tbaa !38
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.74
  %99 = load i32, i32* %px48, align 4, !tbaa !5
  %inc83 = add nsw i32 %99, 1
  store i32 %inc83, i32* %px48, align 4, !tbaa !5
  br label %for.cond.71

for.end.84:                                       ; preds = %for.cond.71
  br label %if.end.163

if.else.85:                                       ; preds = %for.body.47
  %100 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %100, i64 0
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx86, i32 0, i32 1
  %101 = load i32, i32* %data_x, align 4, !tbaa !43
  store i32 %101, i32* %sourcex, align 4, !tbaa !5
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %unpack = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 28
  %103 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack, align 8, !tbaa !44
  %104 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %buffer87 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %104, i32 0, i32 32
  %105 = load i8*, i8** %buffer87, align 8, !tbaa !41
  %106 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %106, i64 0
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx88, i32 0, i32 0
  %107 = load i8*, i8** %data, align 8, !tbaa !45
  %arrayidx89 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i64 0
  %108 = load i64, i64* %arrayidx89, align 8, !tbaa !38
  %add.ptr = getelementptr inbounds i8, i8* %107, i64 %108
  %109 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %109, i64 0
  %data_x91 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx90, i32 0, i32 1
  %110 = load i32, i32* %data_x91, align 4, !tbaa !43
  %111 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect92 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %111, i32 0, i32 22
  %w93 = getelementptr inbounds %struct.r_, %struct.r_* %rect92, i32 0, i32 2
  %112 = load i32, i32* %w93, align 4, !tbaa !31
  %113 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %113, i64 0
  %data_x95 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx94, i32 0, i32 1
  %114 = load i32, i32* %data_x95, align 4, !tbaa !43
  %add96 = add nsw i32 %112, %114
  %115 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp97 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %115, i32 0, i32 14
  %116 = load i8, i8* %spp97, align 1, !tbaa !32
  %conv98 = zext i8 %116 to i32
  %mul99 = mul nsw i32 %add96, %conv98
  %117 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %bps100 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %117, i32 0, i32 11
  %118 = load i8, i8* %bps100, align 1, !tbaa !39
  %conv101 = zext i8 %118 to i32
  %mul102 = mul nsw i32 %mul99, %conv101
  %119 = load i32, i32* %num_planes, align 4, !tbaa !5
  %div103 = sdiv i32 %mul102, %119
  %add104 = add nsw i32 %div103, 7
  %shr = ashr i32 %add104, 3
  %120 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map105 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %120, i32 0, i32 64
  %arrayidx106 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map105, i32 0, i64 0
  %121 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spread107 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %121, i32 0, i32 18
  %122 = load i8, i8* %spread107, align 1, !tbaa !42
  %conv108 = zext i8 %122 to i32
  %123 = load i32, i32* %num_components_per_plane, align 4, !tbaa !5
  %call109 = call i8* %103(i8* %105, i32* %sourcex, i8* %add.ptr, i32 %110, i32 %shr, %struct.sample_map_s* %arrayidx106, i32 %conv108, i32 %123) #4
  store i8* %call109, i8** %buffer, align 8, !tbaa !1
  %124 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %124, i64 0
  %raster111 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx110, i32 0, i32 2
  %125 = load i32, i32* %raster111, align 4, !tbaa !36
  %conv112 = zext i32 %125 to i64
  %arrayidx113 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i64 0
  %126 = load i64, i64* %arrayidx113, align 8, !tbaa !38
  %add114 = add i64 %126, %conv112
  store i64 %add114, i64* %arrayidx113, align 8, !tbaa !38
  store i32 1, i32* %px48, align 4, !tbaa !5
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.160, %if.else.85
  %127 = load i32, i32* %px48, align 4, !tbaa !5
  %128 = load i32, i32* %num_planes, align 4, !tbaa !5
  %cmp116 = icmp slt i32 %127, %128
  br i1 %cmp116, label %for.body.118, label %for.end.162

for.body.118:                                     ; preds = %for.cond.115
  %129 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %unpack119 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 28
  %130 = load i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)** %unpack119, align 8, !tbaa !44
  %131 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %buffer120 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %131, i32 0, i32 32
  %132 = load i8*, i8** %buffer120, align 8, !tbaa !41
  %133 = load i32, i32* %px48, align 4, !tbaa !5
  %134 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %log2_xbytes = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %134, i32 0, i32 13
  %135 = load i8, i8* %log2_xbytes, align 1, !tbaa !46
  %conv121 = zext i8 %135 to i32
  %shl = shl i32 %133, %conv121
  %idx.ext = sext i32 %shl to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %132, i64 %idx.ext
  %136 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom123 = sext i32 %136 to i64
  %137 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %137, i64 %idxprom123
  %data125 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx124, i32 0, i32 0
  %138 = load i8*, i8** %data125, align 8, !tbaa !45
  %139 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom126 = sext i32 %139 to i64
  %arrayidx127 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i64 %idxprom126
  %140 = load i64, i64* %arrayidx127, align 8, !tbaa !38
  %add.ptr128 = getelementptr inbounds i8, i8* %138, i64 %140
  %141 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom129 = sext i32 %141 to i64
  %142 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %142, i64 %idxprom129
  %data_x131 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx130, i32 0, i32 1
  %143 = load i32, i32* %data_x131, align 4, !tbaa !43
  %144 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect132 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %144, i32 0, i32 22
  %w133 = getelementptr inbounds %struct.r_, %struct.r_* %rect132, i32 0, i32 2
  %145 = load i32, i32* %w133, align 4, !tbaa !31
  %146 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom134 = sext i32 %146 to i64
  %147 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %147, i64 %idxprom134
  %data_x136 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx135, i32 0, i32 1
  %148 = load i32, i32* %data_x136, align 4, !tbaa !43
  %add137 = add nsw i32 %145, %148
  %149 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp138 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %149, i32 0, i32 14
  %150 = load i8, i8* %spp138, align 1, !tbaa !32
  %conv139 = zext i8 %150 to i32
  %mul140 = mul nsw i32 %add137, %conv139
  %151 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %bps141 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %151, i32 0, i32 11
  %152 = load i8, i8* %bps141, align 1, !tbaa !39
  %conv142 = zext i8 %152 to i32
  %mul143 = mul nsw i32 %mul140, %conv142
  %153 = load i32, i32* %num_planes, align 4, !tbaa !5
  %div144 = sdiv i32 %mul143, %153
  %add145 = add nsw i32 %div144, 7
  %shr146 = ashr i32 %add145, 3
  %154 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom147 = sext i32 %154 to i64
  %155 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %map148 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %155, i32 0, i32 64
  %arrayidx149 = getelementptr inbounds [65 x %struct.sample_map_s], [65 x %struct.sample_map_s]* %map148, i32 0, i64 %idxprom147
  %156 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spread150 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %156, i32 0, i32 18
  %157 = load i8, i8* %spread150, align 1, !tbaa !42
  %conv151 = zext i8 %157 to i32
  %call152 = call i8* %130(i8* %add.ptr122, i32* %ignore_data_x, i8* %add.ptr128, i32 %143, i32 %shr146, %struct.sample_map_s* %arrayidx149, i32 %conv151, i32 1) #4
  %158 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom153 = sext i32 %158 to i64
  %159 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %planes.addr, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %159, i64 %idxprom153
  %raster155 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx154, i32 0, i32 2
  %160 = load i32, i32* %raster155, align 4, !tbaa !36
  %conv156 = zext i32 %160 to i64
  %161 = load i32, i32* %px48, align 4, !tbaa !5
  %idxprom157 = sext i32 %161 to i64
  %arrayidx158 = getelementptr inbounds [65 x i64], [65 x i64]* %offsets, i32 0, i64 %idxprom157
  %162 = load i64, i64* %arrayidx158, align 8, !tbaa !38
  %add159 = add i64 %162, %conv156
  store i64 %add159, i64* %arrayidx158, align 8, !tbaa !38
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.118
  %163 = load i32, i32* %px48, align 4, !tbaa !5
  %inc161 = add nsw i32 %163, 1
  store i32 %inc161, i32* %px48, align 4, !tbaa !5
  br label %for.cond.115

for.end.162:                                      ; preds = %for.cond.115
  br label %if.end.163

if.end.163:                                       ; preds = %for.end.162, %for.end.84
  %164 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %164, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 0
  %x164 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x164, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %165 = load i32, i32* %Q, align 4, !tbaa !47
  %166 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %166, i32 0, i32 53
  %x165 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  store i32 %165, i32* %x165, align 4, !tbaa !48
  br label %do.body

do.body:                                          ; preds = %if.end.163
  %167 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda166 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %167, i32 0, i32 55
  %row167 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda166, i32 0, i32 0
  %x168 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row167, i32 0, i32 0
  %step = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x168, i32 0, i32 1
  %dR = getelementptr inbounds %struct._e, %struct._e* %step, i32 0, i32 1
  %168 = load i32, i32* %dR, align 4, !tbaa !49
  %169 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda169 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %169, i32 0, i32 55
  %row170 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda169, i32 0, i32 0
  %x171 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row170, i32 0, i32 0
  %state172 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x171, i32 0, i32 0
  %R = getelementptr inbounds %struct._a, %struct._a* %state172, i32 0, i32 1
  %170 = load i32, i32* %R, align 4, !tbaa !50
  %sub = sub i32 %170, %168
  store i32 %sub, i32* %R, align 4, !tbaa !50
  %171 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda173 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %171, i32 0, i32 55
  %row174 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda173, i32 0, i32 0
  %x175 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row174, i32 0, i32 0
  %state176 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x175, i32 0, i32 0
  %R177 = getelementptr inbounds %struct._a, %struct._a* %state176, i32 0, i32 1
  %172 = load i32, i32* %R177, align 4, !tbaa !50
  %cmp178 = icmp slt i32 %172, 0
  br i1 %cmp178, label %if.then.180, label %if.end.197

if.then.180:                                      ; preds = %do.body
  %173 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda181 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %173, i32 0, i32 55
  %row182 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda181, i32 0, i32 0
  %x183 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row182, i32 0, i32 0
  %state184 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x183, i32 0, i32 0
  %Q185 = getelementptr inbounds %struct._a, %struct._a* %state184, i32 0, i32 0
  %174 = load i32, i32* %Q185, align 4, !tbaa !47
  %inc186 = add nsw i32 %174, 1
  store i32 %inc186, i32* %Q185, align 4, !tbaa !47
  %175 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda187 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %175, i32 0, i32 55
  %row188 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda187, i32 0, i32 0
  %x189 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row188, i32 0, i32 0
  %step190 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x189, i32 0, i32 1
  %N = getelementptr inbounds %struct._e, %struct._e* %step190, i32 0, i32 2
  %176 = load i32, i32* %N, align 4, !tbaa !51
  %177 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda191 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %177, i32 0, i32 55
  %row192 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda191, i32 0, i32 0
  %x193 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row192, i32 0, i32 0
  %state194 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x193, i32 0, i32 0
  %R195 = getelementptr inbounds %struct._a, %struct._a* %state194, i32 0, i32 1
  %178 = load i32, i32* %R195, align 4, !tbaa !50
  %add196 = add i32 %178, %176
  store i32 %add196, i32* %R195, align 4, !tbaa !50
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.180, %do.body
  %179 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda198 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %179, i32 0, i32 55
  %row199 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda198, i32 0, i32 0
  %x200 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row199, i32 0, i32 0
  %step201 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x200, i32 0, i32 1
  %dQ = getelementptr inbounds %struct._e, %struct._e* %step201, i32 0, i32 0
  %180 = load i32, i32* %dQ, align 4, !tbaa !52
  %181 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda202 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %181, i32 0, i32 55
  %row203 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda202, i32 0, i32 0
  %x204 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row203, i32 0, i32 0
  %state205 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x204, i32 0, i32 0
  %Q206 = getelementptr inbounds %struct._a, %struct._a* %state205, i32 0, i32 0
  %182 = load i32, i32* %Q206, align 4, !tbaa !47
  %add207 = add nsw i32 %182, %180
  store i32 %add207, i32* %Q206, align 4, !tbaa !47
  br label %do.cond

do.cond:                                          ; preds = %if.end.197
  br label %do.end

do.end:                                           ; preds = %do.cond
  %183 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda208 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %183, i32 0, i32 55
  %row209 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda208, i32 0, i32 0
  %y210 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row209, i32 0, i32 1
  %state211 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y210, i32 0, i32 0
  %Q212 = getelementptr inbounds %struct._a, %struct._a* %state211, i32 0, i32 0
  %184 = load i32, i32* %Q212, align 4, !tbaa !53
  %185 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur213 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %185, i32 0, i32 53
  %y214 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur213, i32 0, i32 1
  store i32 %184, i32* %y214, align 4, !tbaa !54
  br label %do.body.215

do.body.215:                                      ; preds = %do.end
  %186 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda216 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %186, i32 0, i32 55
  %row217 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda216, i32 0, i32 0
  %y218 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row217, i32 0, i32 1
  %step219 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y218, i32 0, i32 1
  %dR220 = getelementptr inbounds %struct._e, %struct._e* %step219, i32 0, i32 1
  %187 = load i32, i32* %dR220, align 4, !tbaa !55
  %188 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda221 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %188, i32 0, i32 55
  %row222 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda221, i32 0, i32 0
  %y223 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row222, i32 0, i32 1
  %state224 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y223, i32 0, i32 0
  %R225 = getelementptr inbounds %struct._a, %struct._a* %state224, i32 0, i32 1
  %189 = load i32, i32* %R225, align 4, !tbaa !56
  %sub226 = sub i32 %189, %187
  store i32 %sub226, i32* %R225, align 4, !tbaa !56
  %190 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda227 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %190, i32 0, i32 55
  %row228 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda227, i32 0, i32 0
  %y229 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row228, i32 0, i32 1
  %state230 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y229, i32 0, i32 0
  %R231 = getelementptr inbounds %struct._a, %struct._a* %state230, i32 0, i32 1
  %191 = load i32, i32* %R231, align 4, !tbaa !56
  %cmp232 = icmp slt i32 %191, 0
  br i1 %cmp232, label %if.then.234, label %if.end.252

if.then.234:                                      ; preds = %do.body.215
  %192 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda235 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %192, i32 0, i32 55
  %row236 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda235, i32 0, i32 0
  %y237 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row236, i32 0, i32 1
  %state238 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y237, i32 0, i32 0
  %Q239 = getelementptr inbounds %struct._a, %struct._a* %state238, i32 0, i32 0
  %193 = load i32, i32* %Q239, align 4, !tbaa !53
  %inc240 = add nsw i32 %193, 1
  store i32 %inc240, i32* %Q239, align 4, !tbaa !53
  %194 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda241 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %194, i32 0, i32 55
  %row242 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda241, i32 0, i32 0
  %y243 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row242, i32 0, i32 1
  %step244 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y243, i32 0, i32 1
  %N245 = getelementptr inbounds %struct._e, %struct._e* %step244, i32 0, i32 2
  %195 = load i32, i32* %N245, align 4, !tbaa !57
  %196 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda246 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %196, i32 0, i32 55
  %row247 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda246, i32 0, i32 0
  %y248 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row247, i32 0, i32 1
  %state249 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y248, i32 0, i32 0
  %R250 = getelementptr inbounds %struct._a, %struct._a* %state249, i32 0, i32 1
  %197 = load i32, i32* %R250, align 4, !tbaa !56
  %add251 = add i32 %197, %195
  store i32 %add251, i32* %R250, align 4, !tbaa !56
  br label %if.end.252

if.end.252:                                       ; preds = %if.then.234, %do.body.215
  %198 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda253 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %198, i32 0, i32 55
  %row254 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda253, i32 0, i32 0
  %y255 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row254, i32 0, i32 1
  %step256 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y255, i32 0, i32 1
  %dQ257 = getelementptr inbounds %struct._e, %struct._e* %step256, i32 0, i32 0
  %199 = load i32, i32* %dQ257, align 4, !tbaa !58
  %200 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda258 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %200, i32 0, i32 55
  %row259 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda258, i32 0, i32 0
  %y260 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row259, i32 0, i32 1
  %state261 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y260, i32 0, i32 0
  %Q262 = getelementptr inbounds %struct._a, %struct._a* %state261, i32 0, i32 0
  %201 = load i32, i32* %Q262, align 4, !tbaa !53
  %add263 = add nsw i32 %201, %199
  store i32 %add263, i32* %Q262, align 4, !tbaa !53
  br label %do.cond.264

do.cond.264:                                      ; preds = %if.end.252
  br label %do.end.265

do.end.265:                                       ; preds = %do.cond.264
  %202 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %interpolate = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %202, i32 0, i32 20
  %203 = load i8, i8* %interpolate, align 1, !tbaa !59
  %tobool266 = icmp ne i8 %203, 0
  br i1 %tobool266, label %if.end.414, label %if.then.267

if.then.267:                                      ; preds = %do.end.265
  %204 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %204, i32 0, i32 37
  %205 = load i32, i32* %posture, align 4, !tbaa !60
  switch i32 %205, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.336
    i32 2, label %sw.bb.413
  ]

sw.bb:                                            ; preds = %if.then.267
  %206 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #1
  %207 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur268 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %207, i32 0, i32 53
  %y269 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur268, i32 0, i32 1
  %208 = load i32, i32* %y269, align 4, !tbaa !54
  store i32 %208, i32* %yc, align 4, !tbaa !5
  %209 = bitcast i32* %yn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %209) #1
  %210 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda270 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %210, i32 0, i32 55
  %row271 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda270, i32 0, i32 0
  %y272 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row271, i32 0, i32 1
  %state273 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y272, i32 0, i32 0
  %Q274 = getelementptr inbounds %struct._a, %struct._a* %state273, i32 0, i32 0
  %211 = load i32, i32* %Q274, align 4, !tbaa !53
  store i32 %211, i32* %yn, align 4, !tbaa !5
  %212 = load i32, i32* %yn, align 4, !tbaa !5
  %213 = load i32, i32* %yc, align 4, !tbaa !5
  %cmp275 = icmp slt i32 %212, %213
  br i1 %cmp275, label %if.then.277, label %if.end.278

if.then.277:                                      ; preds = %sw.bb
  %214 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = load i32, i32* %yn, align 4, !tbaa !5
  store i32 %215, i32* %temp, align 4, !tbaa !5
  %216 = load i32, i32* %yc, align 4, !tbaa !5
  store i32 %216, i32* %yn, align 4, !tbaa !5
  %217 = load i32, i32* %temp, align 4, !tbaa !5
  store i32 %217, i32* %yc, align 4, !tbaa !5
  %218 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.277, %sw.bb
  %219 = load i32, i32* %adjust, align 4, !tbaa !5
  %220 = load i32, i32* %yc, align 4, !tbaa !5
  %sub279 = sub nsw i32 %220, %219
  store i32 %sub279, i32* %yc, align 4, !tbaa !5
  %221 = load i32, i32* %yc, align 4, !tbaa !5
  %222 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_outer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %222, i32 0, i32 42
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_outer, i32 0, i32 1
  %y280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %223 = load i32, i32* %y280, align 4, !tbaa !61
  %cmp281 = icmp sge i32 %221, %223
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.278
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup

if.end.284:                                       ; preds = %if.end.278
  %224 = load i32, i32* %adjust, align 4, !tbaa !5
  %225 = load i32, i32* %yn, align 4, !tbaa !5
  %add285 = add nsw i32 %225, %224
  store i32 %add285, i32* %yn, align 4, !tbaa !5
  %226 = load i32, i32* %yn, align 4, !tbaa !5
  %227 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_outer286 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %227, i32 0, i32 42
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_outer286, i32 0, i32 0
  %y287 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %228 = load i32, i32* %y287, align 4, !tbaa !62
  %cmp288 = icmp sle i32 %226, %228
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.284
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup

if.end.291:                                       ; preds = %if.end.284
  %229 = load i32, i32* %yc, align 4, !tbaa !5
  %cmp292 = icmp slt i32 %229, 0
  br i1 %cmp292, label %land.lhs.true.294, label %cond.false.301

land.lhs.true.294:                                ; preds = %if.end.291
  %230 = load i32, i32* %yc, align 4, !tbaa !5
  %conv295 = sext i32 %230 to i64
  %and = and i64 %conv295, 255
  %cmp296 = icmp eq i64 %and, 128
  br i1 %cmp296, label %cond.true.298, label %cond.false.301

cond.true.298:                                    ; preds = %land.lhs.true.294
  %231 = load i32, i32* %yc, align 4, !tbaa !5
  %shr299 = ashr i32 %231, 8
  %add300 = add nsw i32 %shr299, 1
  br label %cond.end.306

cond.false.301:                                   ; preds = %land.lhs.true.294, %if.end.291
  %232 = load i32, i32* %yc, align 4, !tbaa !5
  %conv302 = sext i32 %232 to i64
  %add303 = add nsw i64 %conv302, 127
  %shr304 = ashr i64 %add303, 8
  %conv305 = trunc i64 %shr304 to i32
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.false.301, %cond.true.298
  %cond307 = phi i32 [ %add300, %cond.true.298 ], [ %conv305, %cond.false.301 ]
  %233 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %233, i32 0, i32 60
  store i32 %cond307, i32* %yci, align 4, !tbaa !63
  %234 = load i32, i32* %yn, align 4, !tbaa !5
  %cmp308 = icmp slt i32 %234, 0
  br i1 %cmp308, label %land.lhs.true.310, label %cond.false.318

land.lhs.true.310:                                ; preds = %cond.end.306
  %235 = load i32, i32* %yn, align 4, !tbaa !5
  %conv311 = sext i32 %235 to i64
  %and312 = and i64 %conv311, 255
  %cmp313 = icmp eq i64 %and312, 128
  br i1 %cmp313, label %cond.true.315, label %cond.false.318

cond.true.315:                                    ; preds = %land.lhs.true.310
  %236 = load i32, i32* %yn, align 4, !tbaa !5
  %shr316 = ashr i32 %236, 8
  %add317 = add nsw i32 %shr316, 1
  br label %cond.end.323

cond.false.318:                                   ; preds = %land.lhs.true.310, %cond.end.306
  %237 = load i32, i32* %yn, align 4, !tbaa !5
  %conv319 = sext i32 %237 to i64
  %add320 = add nsw i64 %conv319, 127
  %shr321 = ashr i64 %add320, 8
  %conv322 = trunc i64 %shr321 to i32
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.318, %cond.true.315
  %cond324 = phi i32 [ %add317, %cond.true.315 ], [ %conv322, %cond.false.318 ]
  %238 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %yci325 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %238, i32 0, i32 60
  %239 = load i32, i32* %yci325, align 4, !tbaa !63
  %sub326 = sub nsw i32 %cond324, %239
  %240 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %240, i32 0, i32 61
  store i32 %sub326, i32* %hci, align 4, !tbaa !64
  %241 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci327 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %241, i32 0, i32 61
  %242 = load i32, i32* %hci327, align 4, !tbaa !64
  %cmp328 = icmp eq i32 %242, 0
  br i1 %cmp328, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %cond.end.323
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup

if.end.331:                                       ; preds = %cond.end.323
  br label %do.body.332

do.body.332:                                      ; preds = %if.end.331
  br label %do.cond.333

do.cond.333:                                      ; preds = %do.body.332
  br label %do.end.334

do.end.334:                                       ; preds = %do.cond.333
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.330, %if.then.290, %if.then.283, %do.end.334
  %243 = bitcast i32* %yn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.685 [
    i32 0, label %cleanup.cont
    i32 22, label %mt
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog

sw.bb.336:                                        ; preds = %if.then.267
  %245 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %245) #1
  %246 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur337 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %246, i32 0, i32 53
  %x338 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur337, i32 0, i32 0
  %247 = load i32, i32* %x338, align 4, !tbaa !48
  store i32 %247, i32* %xc, align 4, !tbaa !5
  %248 = bitcast i32* %xn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #1
  %249 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda339 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %249, i32 0, i32 55
  %row340 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda339, i32 0, i32 0
  %x341 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row340, i32 0, i32 0
  %state342 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x341, i32 0, i32 0
  %Q343 = getelementptr inbounds %struct._a, %struct._a* %state342, i32 0, i32 0
  %250 = load i32, i32* %Q343, align 4, !tbaa !47
  store i32 %250, i32* %xn, align 4, !tbaa !5
  %251 = load i32, i32* %xn, align 4, !tbaa !5
  %252 = load i32, i32* %xc, align 4, !tbaa !5
  %cmp344 = icmp slt i32 %251, %252
  br i1 %cmp344, label %if.then.346, label %if.end.348

if.then.346:                                      ; preds = %sw.bb.336
  %253 = bitcast i32* %temp347 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %253) #1
  %254 = load i32, i32* %xn, align 4, !tbaa !5
  store i32 %254, i32* %temp347, align 4, !tbaa !5
  %255 = load i32, i32* %xc, align 4, !tbaa !5
  store i32 %255, i32* %xn, align 4, !tbaa !5
  %256 = load i32, i32* %temp347, align 4, !tbaa !5
  store i32 %256, i32* %xc, align 4, !tbaa !5
  %257 = bitcast i32* %temp347 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %257) #1
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.346, %sw.bb.336
  %258 = load i32, i32* %adjust, align 4, !tbaa !5
  %259 = load i32, i32* %xc, align 4, !tbaa !5
  %sub349 = sub nsw i32 %259, %258
  store i32 %sub349, i32* %xc, align 4, !tbaa !5
  %260 = load i32, i32* %xc, align 4, !tbaa !5
  %261 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_outer350 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %261, i32 0, i32 42
  %q351 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_outer350, i32 0, i32 1
  %x352 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q351, i32 0, i32 0
  %262 = load i32, i32* %x352, align 4, !tbaa !65
  %cmp353 = icmp sge i32 %260, %262
  br i1 %cmp353, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %if.end.348
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.409

if.end.356:                                       ; preds = %if.end.348
  %263 = load i32, i32* %adjust, align 4, !tbaa !5
  %264 = load i32, i32* %xn, align 4, !tbaa !5
  %add357 = add nsw i32 %264, %263
  store i32 %add357, i32* %xn, align 4, !tbaa !5
  %265 = load i32, i32* %xn, align 4, !tbaa !5
  %266 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_outer358 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %266, i32 0, i32 42
  %p359 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %clip_outer358, i32 0, i32 0
  %x360 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p359, i32 0, i32 0
  %267 = load i32, i32* %x360, align 4, !tbaa !66
  %cmp361 = icmp sle i32 %265, %267
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.end.356
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.409

if.end.364:                                       ; preds = %if.end.356
  %268 = load i32, i32* %xc, align 4, !tbaa !5
  %cmp365 = icmp slt i32 %268, 0
  br i1 %cmp365, label %land.lhs.true.367, label %cond.false.375

land.lhs.true.367:                                ; preds = %if.end.364
  %269 = load i32, i32* %xc, align 4, !tbaa !5
  %conv368 = sext i32 %269 to i64
  %and369 = and i64 %conv368, 255
  %cmp370 = icmp eq i64 %and369, 128
  br i1 %cmp370, label %cond.true.372, label %cond.false.375

cond.true.372:                                    ; preds = %land.lhs.true.367
  %270 = load i32, i32* %xc, align 4, !tbaa !5
  %shr373 = ashr i32 %270, 8
  %add374 = add nsw i32 %shr373, 1
  br label %cond.end.380

cond.false.375:                                   ; preds = %land.lhs.true.367, %if.end.364
  %271 = load i32, i32* %xc, align 4, !tbaa !5
  %conv376 = sext i32 %271 to i64
  %add377 = add nsw i64 %conv376, 127
  %shr378 = ashr i64 %add377, 8
  %conv379 = trunc i64 %shr378 to i32
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.false.375, %cond.true.372
  %cond381 = phi i32 [ %add374, %cond.true.372 ], [ %conv379, %cond.false.375 ]
  %272 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %272, i32 0, i32 62
  store i32 %cond381, i32* %xci, align 4, !tbaa !67
  %273 = load i32, i32* %xn, align 4, !tbaa !5
  %cmp382 = icmp slt i32 %273, 0
  br i1 %cmp382, label %land.lhs.true.384, label %cond.false.392

land.lhs.true.384:                                ; preds = %cond.end.380
  %274 = load i32, i32* %xn, align 4, !tbaa !5
  %conv385 = sext i32 %274 to i64
  %and386 = and i64 %conv385, 255
  %cmp387 = icmp eq i64 %and386, 128
  br i1 %cmp387, label %cond.true.389, label %cond.false.392

cond.true.389:                                    ; preds = %land.lhs.true.384
  %275 = load i32, i32* %xn, align 4, !tbaa !5
  %shr390 = ashr i32 %275, 8
  %add391 = add nsw i32 %shr390, 1
  br label %cond.end.397

cond.false.392:                                   ; preds = %land.lhs.true.384, %cond.end.380
  %276 = load i32, i32* %xn, align 4, !tbaa !5
  %conv393 = sext i32 %276 to i64
  %add394 = add nsw i64 %conv393, 127
  %shr395 = ashr i64 %add394, 8
  %conv396 = trunc i64 %shr395 to i32
  br label %cond.end.397

cond.end.397:                                     ; preds = %cond.false.392, %cond.true.389
  %cond398 = phi i32 [ %add391, %cond.true.389 ], [ %conv396, %cond.false.392 ]
  %277 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci399 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %277, i32 0, i32 62
  %278 = load i32, i32* %xci399, align 4, !tbaa !67
  %sub400 = sub nsw i32 %cond398, %278
  %279 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %279, i32 0, i32 63
  store i32 %sub400, i32* %wci, align 4, !tbaa !68
  %280 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci401 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %280, i32 0, i32 63
  %281 = load i32, i32* %wci401, align 4, !tbaa !68
  %cmp402 = icmp eq i32 %281, 0
  br i1 %cmp402, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %cond.end.397
  store i32 22, i32* %cleanup.dest.slot
  br label %cleanup.409

if.end.405:                                       ; preds = %cond.end.397
  br label %do.body.406

do.body.406:                                      ; preds = %if.end.405
  br label %do.cond.407

do.cond.407:                                      ; preds = %do.body.406
  br label %do.end.408

do.end.408:                                       ; preds = %do.cond.407
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.409

cleanup.409:                                      ; preds = %if.then.404, %if.then.363, %if.then.355, %do.end.408
  %282 = bitcast i32* %xn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %cleanup.dest.411 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.411, label %cleanup.685 [
    i32 0, label %cleanup.cont.412
    i32 22, label %mt
  ]

cleanup.cont.412:                                 ; preds = %cleanup.409
  br label %sw.epilog

sw.bb.413:                                        ; preds = %if.then.267
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.413, %if.then.267, %cleanup.cont.412, %cleanup.cont
  br label %if.end.414

if.end.414:                                       ; preds = %sw.epilog, %do.end.265
  %284 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  call void @update_strip(%struct.gx_image_enum_s* %284) #4
  %285 = load i32, i32* %x_used, align 4, !tbaa !5
  %tobool415 = icmp ne i32 %285, 0
  br i1 %tobool415, label %if.then.416, label %if.end.529

if.then.416:                                      ; preds = %if.end.414
  br label %do.body.417

do.body.417:                                      ; preds = %if.then.416
  %286 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %286) #1
  %287 = load i32, i32* %x_used, align 4, !tbaa !5
  store i32 %287, i32* %n_, align 4, !tbaa !5
  %288 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda418 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %288, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda418, i32 0, i32 2
  %x419 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %step420 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x419, i32 0, i32 1
  %dQ421 = getelementptr inbounds %struct._e, %struct._e* %step420, i32 0, i32 0
  %289 = load i32, i32* %dQ421, align 4, !tbaa !69
  %290 = load i32, i32* %x_used, align 4, !tbaa !5
  %mul422 = mul nsw i32 %289, %290
  %291 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda423 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %291, i32 0, i32 55
  %pixel0424 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda423, i32 0, i32 2
  %x425 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0424, i32 0, i32 0
  %state426 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x425, i32 0, i32 0
  %Q427 = getelementptr inbounds %struct._a, %struct._a* %state426, i32 0, i32 0
  %292 = load i32, i32* %Q427, align 4, !tbaa !70
  %add428 = add nsw i32 %292, %mul422
  store i32 %add428, i32* %Q427, align 4, !tbaa !70
  br label %while.cond

while.cond:                                       ; preds = %if.end.466, %do.body.417
  %293 = load i32, i32* %n_, align 4, !tbaa !5
  %dec = add i32 %293, -1
  store i32 %dec, i32* %n_, align 4, !tbaa !5
  %tobool429 = icmp ne i32 %293, 0
  br i1 %tobool429, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %294 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda430 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %294, i32 0, i32 55
  %pixel0431 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda430, i32 0, i32 2
  %x432 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0431, i32 0, i32 0
  %step433 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x432, i32 0, i32 1
  %dR434 = getelementptr inbounds %struct._e, %struct._e* %step433, i32 0, i32 1
  %295 = load i32, i32* %dR434, align 4, !tbaa !71
  %296 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda435 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %296, i32 0, i32 55
  %pixel0436 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda435, i32 0, i32 2
  %x437 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0436, i32 0, i32 0
  %state438 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x437, i32 0, i32 0
  %R439 = getelementptr inbounds %struct._a, %struct._a* %state438, i32 0, i32 1
  %297 = load i32, i32* %R439, align 4, !tbaa !72
  %sub440 = sub i32 %297, %295
  store i32 %sub440, i32* %R439, align 4, !tbaa !72
  %298 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda441 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %298, i32 0, i32 55
  %pixel0442 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda441, i32 0, i32 2
  %x443 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0442, i32 0, i32 0
  %state444 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x443, i32 0, i32 0
  %R445 = getelementptr inbounds %struct._a, %struct._a* %state444, i32 0, i32 1
  %299 = load i32, i32* %R445, align 4, !tbaa !72
  %cmp446 = icmp slt i32 %299, 0
  br i1 %cmp446, label %if.then.448, label %if.end.466

if.then.448:                                      ; preds = %while.body
  %300 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda449 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %300, i32 0, i32 55
  %pixel0450 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda449, i32 0, i32 2
  %x451 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0450, i32 0, i32 0
  %state452 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x451, i32 0, i32 0
  %Q453 = getelementptr inbounds %struct._a, %struct._a* %state452, i32 0, i32 0
  %301 = load i32, i32* %Q453, align 4, !tbaa !70
  %inc454 = add nsw i32 %301, 1
  store i32 %inc454, i32* %Q453, align 4, !tbaa !70
  %302 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda455 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %302, i32 0, i32 55
  %pixel0456 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda455, i32 0, i32 2
  %x457 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0456, i32 0, i32 0
  %step458 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x457, i32 0, i32 1
  %N459 = getelementptr inbounds %struct._e, %struct._e* %step458, i32 0, i32 2
  %303 = load i32, i32* %N459, align 4, !tbaa !73
  %304 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda460 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %304, i32 0, i32 55
  %pixel0461 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda460, i32 0, i32 2
  %x462 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0461, i32 0, i32 0
  %state463 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x462, i32 0, i32 0
  %R464 = getelementptr inbounds %struct._a, %struct._a* %state463, i32 0, i32 1
  %305 = load i32, i32* %R464, align 4, !tbaa !72
  %add465 = add i32 %305, %303
  store i32 %add465, i32* %R464, align 4, !tbaa !72
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.448, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %306 = bitcast i32* %n_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  br label %do.cond.467

do.cond.467:                                      ; preds = %while.end
  br label %do.end.468

do.end.468:                                       ; preds = %do.cond.467
  br label %do.body.469

do.body.469:                                      ; preds = %do.end.468
  %307 = bitcast i32* %n_470 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %307) #1
  %308 = load i32, i32* %x_used, align 4, !tbaa !5
  store i32 %308, i32* %n_470, align 4, !tbaa !5
  %309 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda471 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %309, i32 0, i32 55
  %pixel0472 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda471, i32 0, i32 2
  %y473 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0472, i32 0, i32 1
  %step474 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y473, i32 0, i32 1
  %dQ475 = getelementptr inbounds %struct._e, %struct._e* %step474, i32 0, i32 0
  %310 = load i32, i32* %dQ475, align 4, !tbaa !74
  %311 = load i32, i32* %x_used, align 4, !tbaa !5
  %mul476 = mul nsw i32 %310, %311
  %312 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda477 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %312, i32 0, i32 55
  %pixel0478 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda477, i32 0, i32 2
  %y479 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0478, i32 0, i32 1
  %state480 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y479, i32 0, i32 0
  %Q481 = getelementptr inbounds %struct._a, %struct._a* %state480, i32 0, i32 0
  %313 = load i32, i32* %Q481, align 4, !tbaa !75
  %add482 = add nsw i32 %313, %mul476
  store i32 %add482, i32* %Q481, align 4, !tbaa !75
  br label %while.cond.483

while.cond.483:                                   ; preds = %if.end.523, %do.body.469
  %314 = load i32, i32* %n_470, align 4, !tbaa !5
  %dec484 = add i32 %314, -1
  store i32 %dec484, i32* %n_470, align 4, !tbaa !5
  %tobool485 = icmp ne i32 %314, 0
  br i1 %tobool485, label %while.body.486, label %while.end.524

while.body.486:                                   ; preds = %while.cond.483
  %315 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda487 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %315, i32 0, i32 55
  %pixel0488 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda487, i32 0, i32 2
  %y489 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0488, i32 0, i32 1
  %step490 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y489, i32 0, i32 1
  %dR491 = getelementptr inbounds %struct._e, %struct._e* %step490, i32 0, i32 1
  %316 = load i32, i32* %dR491, align 4, !tbaa !76
  %317 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda492 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %317, i32 0, i32 55
  %pixel0493 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda492, i32 0, i32 2
  %y494 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0493, i32 0, i32 1
  %state495 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y494, i32 0, i32 0
  %R496 = getelementptr inbounds %struct._a, %struct._a* %state495, i32 0, i32 1
  %318 = load i32, i32* %R496, align 4, !tbaa !77
  %sub497 = sub i32 %318, %316
  store i32 %sub497, i32* %R496, align 4, !tbaa !77
  %319 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda498 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %319, i32 0, i32 55
  %pixel0499 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda498, i32 0, i32 2
  %y500 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0499, i32 0, i32 1
  %state501 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y500, i32 0, i32 0
  %R502 = getelementptr inbounds %struct._a, %struct._a* %state501, i32 0, i32 1
  %320 = load i32, i32* %R502, align 4, !tbaa !77
  %cmp503 = icmp slt i32 %320, 0
  br i1 %cmp503, label %if.then.505, label %if.end.523

if.then.505:                                      ; preds = %while.body.486
  %321 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda506 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %321, i32 0, i32 55
  %pixel0507 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda506, i32 0, i32 2
  %y508 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0507, i32 0, i32 1
  %state509 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y508, i32 0, i32 0
  %Q510 = getelementptr inbounds %struct._a, %struct._a* %state509, i32 0, i32 0
  %322 = load i32, i32* %Q510, align 4, !tbaa !75
  %inc511 = add nsw i32 %322, 1
  store i32 %inc511, i32* %Q510, align 4, !tbaa !75
  %323 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda512 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %323, i32 0, i32 55
  %pixel0513 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda512, i32 0, i32 2
  %y514 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0513, i32 0, i32 1
  %step515 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y514, i32 0, i32 1
  %N516 = getelementptr inbounds %struct._e, %struct._e* %step515, i32 0, i32 2
  %324 = load i32, i32* %N516, align 4, !tbaa !78
  %325 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda517 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %325, i32 0, i32 55
  %pixel0518 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda517, i32 0, i32 2
  %y519 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0518, i32 0, i32 1
  %state520 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y519, i32 0, i32 0
  %R521 = getelementptr inbounds %struct._a, %struct._a* %state520, i32 0, i32 1
  %326 = load i32, i32* %R521, align 4, !tbaa !77
  %add522 = add i32 %326, %324
  store i32 %add522, i32* %R521, align 4, !tbaa !77
  br label %if.end.523

if.end.523:                                       ; preds = %if.then.505, %while.body.486
  br label %while.cond.483

while.end.524:                                    ; preds = %while.cond.483
  %327 = bitcast i32* %n_470 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  br label %do.cond.525

do.cond.525:                                      ; preds = %while.end.524
  br label %do.end.526

do.end.526:                                       ; preds = %do.cond.525
  %328 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used527 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %328, i32 0, i32 52
  %x528 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used527, i32 0, i32 0
  store i32 0, i32* %x528, align 4, !tbaa !40
  br label %if.end.529

if.end.529:                                       ; preds = %do.end.526, %if.end.414
  br label %do.body.530

do.body.530:                                      ; preds = %if.end.529
  br label %do.cond.531

do.cond.531:                                      ; preds = %do.body.530
  br label %do.end.532

do.end.532:                                       ; preds = %do.cond.531
  %329 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %render = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %329, i32 0, i32 29
  %330 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %render, align 8, !tbaa !79
  %331 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %332 = load i8*, i8** %buffer, align 8, !tbaa !1
  %333 = load i32, i32* %sourcex, align 4, !tbaa !5
  %334 = load i32, i32* %x_used, align 4, !tbaa !5
  %add533 = add nsw i32 %333, %334
  %335 = load i32, i32* %width_spp, align 4, !tbaa !5
  %336 = load i32, i32* %x_used, align 4, !tbaa !5
  %337 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp534 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %337, i32 0, i32 14
  %338 = load i8, i8* %spp534, align 1, !tbaa !32
  %conv535 = zext i8 %338 to i32
  %mul536 = mul nsw i32 %336, %conv535
  %sub537 = sub nsw i32 %335, %mul536
  %339 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %call538 = call i32 %330(%struct.gx_image_enum_s* %331, i8* %332, i32 %add533, i32 %sub537, i32 1, %struct.gx_device_s* %339) #4
  store i32 %call538, i32* %code, align 4, !tbaa !5
  %340 = load i32, i32* %code, align 4, !tbaa !5
  %cmp539 = icmp slt i32 %340, 0
  br i1 %cmp539, label %if.then.541, label %if.end.682

if.then.541:                                      ; preds = %do.end.532
  %341 = load i32, i32* %x_used, align 4, !tbaa !5
  %342 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used542 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %342, i32 0, i32 52
  %x543 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used542, i32 0, i32 0
  %343 = load i32, i32* %x543, align 4, !tbaa !40
  %add544 = add nsw i32 %343, %341
  store i32 %add544, i32* %x543, align 4, !tbaa !40
  %344 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %used545 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %344, i32 0, i32 52
  %y546 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %used545, i32 0, i32 1
  %345 = load i32, i32* %y546, align 4, !tbaa !35
  %tobool547 = icmp ne i32 %345, 0
  br i1 %tobool547, label %if.end.681, label %if.then.548

if.then.548:                                      ; preds = %if.then.541
  br label %do.body.549

do.body.549:                                      ; preds = %if.then.548
  %346 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda550 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %346, i32 0, i32 55
  %row551 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda550, i32 0, i32 0
  %x552 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row551, i32 0, i32 0
  %step553 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x552, i32 0, i32 1
  %dR554 = getelementptr inbounds %struct._e, %struct._e* %step553, i32 0, i32 1
  %347 = load i32, i32* %dR554, align 4, !tbaa !49
  %348 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda555 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %348, i32 0, i32 55
  %row556 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda555, i32 0, i32 0
  %x557 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row556, i32 0, i32 0
  %state558 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x557, i32 0, i32 0
  %R559 = getelementptr inbounds %struct._a, %struct._a* %state558, i32 0, i32 1
  %349 = load i32, i32* %R559, align 4, !tbaa !50
  %add560 = add i32 %349, %347
  store i32 %add560, i32* %R559, align 4, !tbaa !50
  %350 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda561 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %350, i32 0, i32 55
  %row562 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda561, i32 0, i32 0
  %x563 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row562, i32 0, i32 0
  %state564 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x563, i32 0, i32 0
  %R565 = getelementptr inbounds %struct._a, %struct._a* %state564, i32 0, i32 1
  %351 = load i32, i32* %R565, align 4, !tbaa !50
  %352 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda566 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %352, i32 0, i32 55
  %row567 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda566, i32 0, i32 0
  %x568 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row567, i32 0, i32 0
  %step569 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x568, i32 0, i32 1
  %N570 = getelementptr inbounds %struct._e, %struct._e* %step569, i32 0, i32 2
  %353 = load i32, i32* %N570, align 4, !tbaa !51
  %cmp571 = icmp uge i32 %351, %353
  br i1 %cmp571, label %if.then.573, label %if.end.591

if.then.573:                                      ; preds = %do.body.549
  %354 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda574 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %354, i32 0, i32 55
  %row575 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda574, i32 0, i32 0
  %x576 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row575, i32 0, i32 0
  %state577 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x576, i32 0, i32 0
  %Q578 = getelementptr inbounds %struct._a, %struct._a* %state577, i32 0, i32 0
  %355 = load i32, i32* %Q578, align 4, !tbaa !47
  %dec579 = add nsw i32 %355, -1
  store i32 %dec579, i32* %Q578, align 4, !tbaa !47
  %356 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda580 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %356, i32 0, i32 55
  %row581 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda580, i32 0, i32 0
  %x582 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row581, i32 0, i32 0
  %step583 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x582, i32 0, i32 1
  %N584 = getelementptr inbounds %struct._e, %struct._e* %step583, i32 0, i32 2
  %357 = load i32, i32* %N584, align 4, !tbaa !51
  %358 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda585 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %358, i32 0, i32 55
  %row586 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda585, i32 0, i32 0
  %x587 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row586, i32 0, i32 0
  %state588 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x587, i32 0, i32 0
  %R589 = getelementptr inbounds %struct._a, %struct._a* %state588, i32 0, i32 1
  %359 = load i32, i32* %R589, align 4, !tbaa !50
  %sub590 = sub i32 %359, %357
  store i32 %sub590, i32* %R589, align 4, !tbaa !50
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.573, %do.body.549
  %360 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda592 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %360, i32 0, i32 55
  %row593 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda592, i32 0, i32 0
  %x594 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row593, i32 0, i32 0
  %step595 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x594, i32 0, i32 1
  %dQ596 = getelementptr inbounds %struct._e, %struct._e* %step595, i32 0, i32 0
  %361 = load i32, i32* %dQ596, align 4, !tbaa !52
  %362 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda597 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %362, i32 0, i32 55
  %row598 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda597, i32 0, i32 0
  %x599 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row598, i32 0, i32 0
  %state600 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x599, i32 0, i32 0
  %Q601 = getelementptr inbounds %struct._a, %struct._a* %state600, i32 0, i32 0
  %363 = load i32, i32* %Q601, align 4, !tbaa !47
  %sub602 = sub nsw i32 %363, %361
  store i32 %sub602, i32* %Q601, align 4, !tbaa !47
  br label %do.cond.603

do.cond.603:                                      ; preds = %if.end.591
  br label %do.end.604

do.end.604:                                       ; preds = %do.cond.603
  br label %do.body.605

do.body.605:                                      ; preds = %do.end.604
  %364 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda606 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %364, i32 0, i32 55
  %row607 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda606, i32 0, i32 0
  %y608 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row607, i32 0, i32 1
  %step609 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y608, i32 0, i32 1
  %dR610 = getelementptr inbounds %struct._e, %struct._e* %step609, i32 0, i32 1
  %365 = load i32, i32* %dR610, align 4, !tbaa !55
  %366 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda611 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %366, i32 0, i32 55
  %row612 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda611, i32 0, i32 0
  %y613 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row612, i32 0, i32 1
  %state614 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y613, i32 0, i32 0
  %R615 = getelementptr inbounds %struct._a, %struct._a* %state614, i32 0, i32 1
  %367 = load i32, i32* %R615, align 4, !tbaa !56
  %add616 = add i32 %367, %365
  store i32 %add616, i32* %R615, align 4, !tbaa !56
  %368 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda617 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %368, i32 0, i32 55
  %row618 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda617, i32 0, i32 0
  %y619 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row618, i32 0, i32 1
  %state620 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y619, i32 0, i32 0
  %R621 = getelementptr inbounds %struct._a, %struct._a* %state620, i32 0, i32 1
  %369 = load i32, i32* %R621, align 4, !tbaa !56
  %370 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda622 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %370, i32 0, i32 55
  %row623 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda622, i32 0, i32 0
  %y624 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row623, i32 0, i32 1
  %step625 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y624, i32 0, i32 1
  %N626 = getelementptr inbounds %struct._e, %struct._e* %step625, i32 0, i32 2
  %371 = load i32, i32* %N626, align 4, !tbaa !57
  %cmp627 = icmp uge i32 %369, %371
  br i1 %cmp627, label %if.then.629, label %if.end.647

if.then.629:                                      ; preds = %do.body.605
  %372 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda630 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %372, i32 0, i32 55
  %row631 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda630, i32 0, i32 0
  %y632 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row631, i32 0, i32 1
  %state633 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y632, i32 0, i32 0
  %Q634 = getelementptr inbounds %struct._a, %struct._a* %state633, i32 0, i32 0
  %373 = load i32, i32* %Q634, align 4, !tbaa !53
  %dec635 = add nsw i32 %373, -1
  store i32 %dec635, i32* %Q634, align 4, !tbaa !53
  %374 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda636 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %374, i32 0, i32 55
  %row637 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda636, i32 0, i32 0
  %y638 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row637, i32 0, i32 1
  %step639 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y638, i32 0, i32 1
  %N640 = getelementptr inbounds %struct._e, %struct._e* %step639, i32 0, i32 2
  %375 = load i32, i32* %N640, align 4, !tbaa !57
  %376 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda641 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %376, i32 0, i32 55
  %row642 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda641, i32 0, i32 0
  %y643 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row642, i32 0, i32 1
  %state644 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y643, i32 0, i32 0
  %R645 = getelementptr inbounds %struct._a, %struct._a* %state644, i32 0, i32 1
  %377 = load i32, i32* %R645, align 4, !tbaa !56
  %sub646 = sub i32 %377, %375
  store i32 %sub646, i32* %R645, align 4, !tbaa !56
  br label %if.end.647

if.end.647:                                       ; preds = %if.then.629, %do.body.605
  %378 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda648 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %378, i32 0, i32 55
  %row649 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda648, i32 0, i32 0
  %y650 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row649, i32 0, i32 1
  %step651 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y650, i32 0, i32 1
  %dQ652 = getelementptr inbounds %struct._e, %struct._e* %step651, i32 0, i32 0
  %379 = load i32, i32* %dQ652, align 4, !tbaa !58
  %380 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda653 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %380, i32 0, i32 55
  %row654 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda653, i32 0, i32 0
  %y655 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row654, i32 0, i32 1
  %state656 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y655, i32 0, i32 0
  %Q657 = getelementptr inbounds %struct._a, %struct._a* %state656, i32 0, i32 0
  %381 = load i32, i32* %Q657, align 4, !tbaa !53
  %sub658 = sub nsw i32 %381, %379
  store i32 %sub658, i32* %Q657, align 4, !tbaa !53
  br label %do.cond.659

do.cond.659:                                      ; preds = %if.end.647
  br label %do.end.660

do.end.660:                                       ; preds = %do.cond.659
  %382 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %382, i32 0, i32 54
  %x661 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %383 = load i32, i32* %x661, align 4, !tbaa !80
  %384 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur662 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %384, i32 0, i32 53
  %x663 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur662, i32 0, i32 0
  %385 = load i32, i32* %x663, align 4, !tbaa !48
  %sub664 = sub nsw i32 %383, %385
  %386 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda665 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %386, i32 0, i32 55
  %strip = getelementptr inbounds %struct.dd_, %struct.dd_* %dda665, i32 0, i32 1
  %x666 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip, i32 0, i32 0
  %state667 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x666, i32 0, i32 0
  %Q668 = getelementptr inbounds %struct._a, %struct._a* %state667, i32 0, i32 0
  %387 = load i32, i32* %Q668, align 4, !tbaa !81
  %add669 = add nsw i32 %387, %sub664
  store i32 %add669, i32* %Q668, align 4, !tbaa !81
  %388 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %prev670 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %388, i32 0, i32 54
  %y671 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev670, i32 0, i32 1
  %389 = load i32, i32* %y671, align 4, !tbaa !82
  %390 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur672 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %390, i32 0, i32 53
  %y673 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur672, i32 0, i32 1
  %391 = load i32, i32* %y673, align 4, !tbaa !54
  %sub674 = sub nsw i32 %389, %391
  %392 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda675 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %392, i32 0, i32 55
  %strip676 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda675, i32 0, i32 1
  %y677 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip676, i32 0, i32 1
  %state678 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y677, i32 0, i32 0
  %Q679 = getelementptr inbounds %struct._a, %struct._a* %state678, i32 0, i32 0
  %393 = load i32, i32* %Q679, align 4, !tbaa !83
  %add680 = add nsw i32 %393, %sub674
  store i32 %add680, i32* %Q679, align 4, !tbaa !83
  br label %if.end.681

if.end.681:                                       ; preds = %do.end.660, %if.then.541
  store i32 41, i32* %cleanup.dest.slot
  br label %cleanup.685

if.end.682:                                       ; preds = %do.end.532
  %394 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %prev683 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %394, i32 0, i32 54
  %395 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur684 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %395, i32 0, i32 53
  %396 = bitcast %struct.gs_fixed_point_s* %prev683 to i8*
  %397 = bitcast %struct.gs_fixed_point_s* %cur684 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %396, i8* %397, i64 8, i32 4, i1 false), !tbaa.struct !84
  br label %mt

mt:                                               ; preds = %if.end.682, %cleanup.409, %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.685

cleanup.685:                                      ; preds = %if.end.681, %mt, %cleanup.409, %cleanup
  %398 = bitcast i32* %x_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #1
  %399 = bitcast i32* %sourcex to i8*
  call void @llvm.lifetime.end(i64 4, i8* %399) #1
  %400 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %400) #1
  %401 = bitcast i32* %px48 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %401) #1
  %cleanup.dest.689 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.689, label %cleanup.710 [
    i32 0, label %cleanup.cont.690
    i32 41, label %out
  ]

cleanup.cont.690:                                 ; preds = %cleanup.685
  br label %for.inc.691

for.inc.691:                                      ; preds = %cleanup.cont.690
  %402 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y692 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %402, i32 0, i32 51
  %403 = load i32, i32* %y692, align 4, !tbaa !7
  %inc693 = add nsw i32 %403, 1
  store i32 %inc693, i32* %y692, align 4, !tbaa !7
  br label %for.cond.43

for.end.694:                                      ; preds = %for.cond.43
  %404 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y695 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %404, i32 0, i32 51
  %405 = load i32, i32* %y695, align 4, !tbaa !7
  %406 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect696 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %406, i32 0, i32 22
  %h697 = getelementptr inbounds %struct.r_, %struct.r_* %rect696, i32 0, i32 3
  %407 = load i32, i32* %h697, align 4, !tbaa !30
  %cmp698 = icmp slt i32 %405, %407
  br i1 %cmp698, label %if.then.700, label %if.else.701

if.then.700:                                      ; preds = %for.end.694
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.707

if.else.701:                                      ; preds = %for.end.694
  %408 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %call702 = call i32 @gx_image1_flush(%struct.gx_image_enum_common_s* %408) #4
  store i32 %call702, i32* %code, align 4, !tbaa !5
  %409 = load i32, i32* %code, align 4, !tbaa !5
  %cmp703 = icmp sge i32 %409, 0
  br i1 %cmp703, label %if.then.705, label %if.end.706

if.then.705:                                      ; preds = %if.else.701
  store i32 1, i32* %code, align 4, !tbaa !5
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.705, %if.else.701
  br label %if.end.707

if.end.707:                                       ; preds = %if.end.706, %if.then.700
  br label %out

out:                                              ; preds = %if.end.707, %cleanup.685
  %410 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %y708 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %410, i32 0, i32 51
  %411 = load i32, i32* %y708, align 4, !tbaa !7
  %412 = load i32, i32* %y, align 4, !tbaa !5
  %sub709 = sub nsw i32 %411, %412
  %413 = load i32*, i32** %rows_used.addr, align 8, !tbaa !1
  store i32 %sub709, i32* %413, align 4, !tbaa !5
  %414 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %414, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.710

cleanup.710:                                      ; preds = %out, %cleanup.685, %if.then
  %415 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %415) #1
  %416 = bitcast i32* %bit_planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %416) #1
  %417 = bitcast i32* %ignore_data_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast [65 x i64]* %offsets to i8*
  call void @llvm.lifetime.end(i64 520, i8* %418) #1
  %419 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #1
  %420 = bitcast i32* %num_components_per_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %420) #1
  %421 = bitcast i32* %num_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %421) #1
  %422 = bitcast i32* %width_spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %422) #1
  %423 = bitcast i32* %y_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %423) #1
  %424 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %424) #1
  %425 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %425) #1
  %426 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %426) #1
  %427 = load i32, i32* %retval
  ret i32 %427
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct.gx_device_s* @setup_image_device(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %dev = alloca %struct.gx_device_s*, align 8
  %cdev = alloca %struct.gx_device_clip_s*, align 8
  %rtdev = alloca %struct.gx_device_rop_texture_s*, align 8
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %1, i32 0, i32 2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !85
  store %struct.gx_device_s* %2, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %3, i32 0, i32 48
  %4 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev, align 8, !tbaa !86
  %tobool = icmp ne %struct.gx_device_clip_s* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gx_device_clip_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %clip_dev2 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 48
  %7 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev2, align 8, !tbaa !86
  store %struct.gx_device_clip_s* %7, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %8 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %9 = bitcast %struct.gx_device_clip_s* %8 to %struct.gx_device_forward_s*
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %9, %struct.gx_device_s* %10) #4
  %11 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %cdev, align 8, !tbaa !1
  %12 = bitcast %struct.gx_device_clip_s* %11 to %struct.gx_device_s*
  store %struct.gx_device_s* %12, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_clip_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rop_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %14, i32 0, i32 49
  %15 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev, align 8, !tbaa !87
  %tobool3 = icmp ne %struct.gx_device_rop_texture_s* %15, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %16 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %rop_dev5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 49
  %18 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev5, align 8, !tbaa !87
  store %struct.gx_device_rop_texture_s* %18, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %19 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_rop_texture_s* %19 to %struct.gx_device_forward_s*
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %20, %struct.gx_device_s* %21) #4
  %22 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rtdev, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_rop_texture_s* %22 to %struct.gx_device_s*
  store %struct.gx_device_s* %23, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_rop_texture_s** %rtdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret %struct.gx_device_s* %25
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal void @repack_bit_planes(%struct.gx_image_plane_s* %src_planes, i64* %offsets, i32 %num_planes, i8* %buffer, i32 %width, %union.sample_lookup_s* %ptab, i32 %spread) #0 {
entry:
  %src_planes.addr = alloca %struct.gx_image_plane_s*, align 8
  %offsets.addr = alloca i64*, align 8
  %num_planes.addr = alloca i32, align 4
  %buffer.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %ptab.addr = alloca %union.sample_lookup_s*, align 8
  %spread.addr = alloca i32, align 4
  %planes = alloca [8 x %struct.gx_image_plane_s], align 16
  %zeros = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %any_data_x = alloca i32, align 4
  %direct = alloca i32, align 4
  %pi = alloca i32, align 4
  %x = alloca i32, align 4
  %pp = alloca %struct.gx_image_plane_s*, align 8
  %dx = alloca i32, align 4
  %w0 = alloca i32, align 4
  %w1 = alloca i32, align 4
  %b = alloca i32, align 4
  %dx51 = alloca i32, align 4
  %b86 = alloca i32, align 4
  store %struct.gx_image_plane_s* %src_planes, %struct.gx_image_plane_s** %src_planes.addr, align 8, !tbaa !1
  store i64* %offsets, i64** %offsets.addr, align 8, !tbaa !1
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !5
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store %union.sample_lookup_s* %ptab, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  store i32 %spread, i32* %spread.addr, align 4, !tbaa !5
  %0 = bitcast [8 x %struct.gx_image_plane_s]* %planes to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i8** %zeros to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i8* null, i8** %zeros, align 8, !tbaa !1
  %2 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %3, i8** %dest, align 8, !tbaa !1
  %4 = bitcast i32* %any_data_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %any_data_x, align 4, !tbaa !5
  %5 = bitcast i32* %direct to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8 = bitcast %union.sample_lookup_s* %7 to [256 x i8]*
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8, i32 0, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !88
  %conv = zext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup83 = bitcast %union.sample_lookup_s* %9 to [256 x i8]*
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup83, i32 0, i64 255
  %10 = load i8, i8* %arrayidx4, align 1, !tbaa !88
  %conv5 = zext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 255
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %direct, align 4, !tbaa !5
  %12 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast %struct.gx_image_plane_s** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  store i32 0, i32* %pi, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [8 x %struct.gx_image_plane_s], [8 x %struct.gx_image_plane_s]* %planes, i32 0, i32 0
  store %struct.gx_image_plane_s* %arraydecay, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %15 = load i32, i32* %pi, align 4, !tbaa !5
  %16 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %15, %16
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %src_planes.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %18, i64 %idxprom
  %data = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx10, i32 0, i32 0
  %19 = load i8*, i8** %data, align 8, !tbaa !45
  %cmp11 = icmp eq i8* %19, null
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %20 = load i8*, i8** %zeros, align 8, !tbaa !1
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  %21 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %22 = load i32, i32* %width.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  %23 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add = add nsw i32 %23, 7
  %shr = ashr i32 %add, 3
  %idx.ext14 = sext i32 %shr to i64
  %idx.neg = sub i64 0, %idx.ext14
  %add.ptr15 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  store i8* %add.ptr15, i8** %zeros, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %24 = load i8*, i8** %zeros, align 8, !tbaa !1
  %25 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data16 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %25, i32 0, i32 0
  store i8* %24, i8** %data16, align 8, !tbaa !45
  %26 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data_x = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %26, i32 0, i32 1
  store i32 0, i32* %data_x, align 4, !tbaa !43
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %27 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom17 = sext i32 %28 to i64
  %29 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %src_planes.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %29, i64 %idxprom17
  %data_x19 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx18, i32 0, i32 1
  %30 = load i32, i32* %data_x19, align 4, !tbaa !43
  store i32 %30, i32* %dx, align 4, !tbaa !5
  %31 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom20 = sext i32 %31 to i64
  %32 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %src_planes.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %32, i64 %idxprom20
  %data22 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %arrayidx21, i32 0, i32 0
  %33 = load i8*, i8** %data22, align 8, !tbaa !45
  %34 = load i32, i32* %dx, align 4, !tbaa !5
  %shr23 = ashr i32 %34, 3
  %idx.ext24 = sext i32 %shr23 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %33, i64 %idx.ext24
  %35 = load i32, i32* %pi, align 4, !tbaa !5
  %idxprom26 = sext i32 %35 to i64
  %36 = load i64*, i64** %offsets.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i64, i64* %36, i64 %idxprom26
  %37 = load i64, i64* %arrayidx27, align 8, !tbaa !38
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr25, i64 %37
  %38 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data29 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %38, i32 0, i32 0
  store i8* %add.ptr28, i8** %data29, align 8, !tbaa !45
  %39 = load i32, i32* %dx, align 4, !tbaa !5
  %and = and i32 %39, 7
  %40 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data_x30 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %40, i32 0, i32 1
  store i32 %and, i32* %data_x30, align 4, !tbaa !43
  %41 = load i32, i32* %any_data_x, align 4, !tbaa !5
  %or = or i32 %41, %and
  store i32 %or, i32* %any_data_x, align 4, !tbaa !5
  %42 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %43 = load i32, i32* %pi, align 4, !tbaa !5
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %pi, align 4, !tbaa !5
  %44 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %44, i32 1
  store %struct.gx_image_plane_s* %incdec.ptr, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i8*, i8** %zeros, align 8, !tbaa !1
  %tobool32 = icmp ne i8* %45, null
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.end
  %46 = load i8*, i8** %zeros, align 8, !tbaa !1
  %47 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %48 = load i32, i32* %width.addr, align 4, !tbaa !5
  %idx.ext34 = sext i32 %48 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %47, i64 %idx.ext34
  %49 = load i8*, i8** %zeros, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr35 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call i8* @memset(i8* %46, i32 0, i64 %sub.ptr.sub) #5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %for.end
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.174, %if.end.36
  %50 = load i32, i32* %x, align 4, !tbaa !5
  %51 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %50, %51
  br i1 %cmp38, label %for.body.40, label %for.end.176

for.body.40:                                      ; preds = %for.cond.37
  %52 = bitcast i32* %w0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  store i32 0, i32* %w0, align 4, !tbaa !5
  %53 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #1
  store i32 0, i32* %w1, align 4, !tbaa !5
  %54 = load i32, i32* %any_data_x, align 4, !tbaa !5
  %tobool41 = icmp ne i32 %54, 0
  br i1 %tobool41, label %if.then.42, label %if.else.80

if.then.42:                                       ; preds = %for.body.40
  store i32 0, i32* %pi, align 4, !tbaa !5
  %arraydecay43 = getelementptr inbounds [8 x %struct.gx_image_plane_s], [8 x %struct.gx_image_plane_s]* %planes, i32 0, i32 0
  store %struct.gx_image_plane_s* %arraydecay43, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.76, %if.then.42
  %55 = load i32, i32* %pi, align 4, !tbaa !5
  %56 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %55, %56
  br i1 %cmp45, label %for.body.47, label %for.end.79

for.body.47:                                      ; preds = %for.cond.44
  %57 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data48 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %58, i32 0, i32 0
  %59 = load i8*, i8** %data48, align 8, !tbaa !45
  %incdec.ptr49 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr49, i8** %data48, align 8, !tbaa !45
  %60 = load i8, i8* %59, align 1, !tbaa !88
  %conv50 = zext i8 %60 to i32
  store i32 %conv50, i32* %b, align 4, !tbaa !5
  %61 = bitcast i32* %dx51 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #1
  %62 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data_x52 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %62, i32 0, i32 1
  %63 = load i32, i32* %data_x52, align 4, !tbaa !43
  store i32 %63, i32* %dx51, align 4, !tbaa !5
  %64 = load i32, i32* %dx51, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %64, 0
  br i1 %tobool53, label %if.then.54, label %if.end.65

if.then.54:                                       ; preds = %for.body.47
  %65 = load i32, i32* %dx51, align 4, !tbaa !5
  %66 = load i32, i32* %b, align 4, !tbaa !5
  %shl = shl i32 %66, %65
  store i32 %shl, i32* %b, align 4, !tbaa !5
  %67 = load i32, i32* %x, align 4, !tbaa !5
  %add55 = add nsw i32 %67, 8
  %68 = load i32, i32* %dx51, align 4, !tbaa !5
  %sub = sub nsw i32 %add55, %68
  %69 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp56 = icmp slt i32 %sub, %69
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.then.54
  %70 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data59 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %70, i32 0, i32 0
  %71 = load i8*, i8** %data59, align 8, !tbaa !45
  %72 = load i8, i8* %71, align 1, !tbaa !88
  %conv60 = zext i8 %72 to i32
  %73 = load i32, i32* %dx51, align 4, !tbaa !5
  %sub61 = sub nsw i32 8, %73
  %shr62 = ashr i32 %conv60, %sub61
  %74 = load i32, i32* %b, align 4, !tbaa !5
  %add63 = add i32 %74, %shr62
  store i32 %add63, i32* %b, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.then.54
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %for.body.47
  %75 = load i32, i32* %w0, align 4, !tbaa !5
  %shl66 = shl i32 %75, 1
  %76 = load i32, i32* %b, align 4, !tbaa !5
  %shr67 = lshr i32 %76, 4
  %idxprom68 = zext i32 %shr67 to i64
  %arrayidx69 = getelementptr inbounds [16 x i32], [16 x i32]* @repack_bit_planes.expand, i32 0, i64 %idxprom68
  %77 = load i32, i32* %arrayidx69, align 4, !tbaa !5
  %or70 = or i32 %shl66, %77
  store i32 %or70, i32* %w0, align 4, !tbaa !5
  %78 = load i32, i32* %w1, align 4, !tbaa !5
  %shl71 = shl i32 %78, 1
  %79 = load i32, i32* %b, align 4, !tbaa !5
  %and72 = and i32 %79, 15
  %idxprom73 = zext i32 %and72 to i64
  %arrayidx74 = getelementptr inbounds [16 x i32], [16 x i32]* @repack_bit_planes.expand, i32 0, i64 %idxprom73
  %80 = load i32, i32* %arrayidx74, align 4, !tbaa !5
  %or75 = or i32 %shl71, %80
  store i32 %or75, i32* %w1, align 4, !tbaa !5
  %81 = bitcast i32* %dx51 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.65
  %83 = load i32, i32* %pi, align 4, !tbaa !5
  %inc77 = add nsw i32 %83, 1
  store i32 %inc77, i32* %pi, align 4, !tbaa !5
  %84 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %84, i32 1
  store %struct.gx_image_plane_s* %incdec.ptr78, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  br label %for.cond.44

for.end.79:                                       ; preds = %for.cond.44
  br label %if.end.104

if.else.80:                                       ; preds = %for.body.40
  store i32 0, i32* %pi, align 4, !tbaa !5
  %arraydecay81 = getelementptr inbounds [8 x %struct.gx_image_plane_s], [8 x %struct.gx_image_plane_s]* %planes, i32 0, i32 0
  store %struct.gx_image_plane_s* %arraydecay81, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.100, %if.else.80
  %85 = load i32, i32* %pi, align 4, !tbaa !5
  %86 = load i32, i32* %num_planes.addr, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %85, %86
  br i1 %cmp83, label %for.body.85, label %for.end.103

for.body.85:                                      ; preds = %for.cond.82
  %87 = bitcast i32* %b86 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %87) #1
  %88 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %data87 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %88, i32 0, i32 0
  %89 = load i8*, i8** %data87, align 8, !tbaa !45
  %incdec.ptr88 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %incdec.ptr88, i8** %data87, align 8, !tbaa !45
  %90 = load i8, i8* %89, align 1, !tbaa !88
  %conv89 = zext i8 %90 to i32
  store i32 %conv89, i32* %b86, align 4, !tbaa !5
  %91 = load i32, i32* %w0, align 4, !tbaa !5
  %shl90 = shl i32 %91, 1
  %92 = load i32, i32* %b86, align 4, !tbaa !5
  %shr91 = lshr i32 %92, 4
  %idxprom92 = zext i32 %shr91 to i64
  %arrayidx93 = getelementptr inbounds [16 x i32], [16 x i32]* @repack_bit_planes.expand, i32 0, i64 %idxprom92
  %93 = load i32, i32* %arrayidx93, align 4, !tbaa !5
  %or94 = or i32 %shl90, %93
  store i32 %or94, i32* %w0, align 4, !tbaa !5
  %94 = load i32, i32* %w1, align 4, !tbaa !5
  %shl95 = shl i32 %94, 1
  %95 = load i32, i32* %b86, align 4, !tbaa !5
  %and96 = and i32 %95, 15
  %idxprom97 = zext i32 %and96 to i64
  %arrayidx98 = getelementptr inbounds [16 x i32], [16 x i32]* @repack_bit_planes.expand, i32 0, i64 %idxprom97
  %96 = load i32, i32* %arrayidx98, align 4, !tbaa !5
  %or99 = or i32 %shl95, %96
  store i32 %or99, i32* %w1, align 4, !tbaa !5
  %97 = bitcast i32* %b86 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.85
  %98 = load i32, i32* %pi, align 4, !tbaa !5
  %inc101 = add nsw i32 %98, 1
  store i32 %inc101, i32* %pi, align 4, !tbaa !5
  %99 = load %struct.gx_image_plane_s*, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds %struct.gx_image_plane_s, %struct.gx_image_plane_s* %99, i32 1
  store %struct.gx_image_plane_s* %incdec.ptr102, %struct.gx_image_plane_s** %pp, align 8, !tbaa !1
  br label %for.cond.82

for.end.103:                                      ; preds = %for.cond.82
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %for.end.79
  %100 = load i32, i32* %direct, align 4, !tbaa !5
  %tobool105 = icmp ne i32 %100, 0
  br i1 %tobool105, label %if.then.106, label %if.else.110

if.then.106:                                      ; preds = %if.end.104
  %101 = load i32, i32* %w0, align 4, !tbaa !5
  %102 = load i8*, i8** %dest, align 8, !tbaa !1
  %103 = bitcast i8* %102 to i32*
  %arrayidx107 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %101, i32* %arrayidx107, align 4, !tbaa !5
  %104 = load i32, i32* %w1, align 4, !tbaa !5
  %105 = load i8*, i8** %dest, align 8, !tbaa !1
  %106 = bitcast i8* %105 to i32*
  %arrayidx108 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %104, i32* %arrayidx108, align 4, !tbaa !5
  %107 = load i8*, i8** %dest, align 8, !tbaa !1
  %add.ptr109 = getelementptr inbounds i8, i8* %107, i64 8
  store i8* %add.ptr109, i8** %dest, align 8, !tbaa !1
  br label %if.end.173

if.else.110:                                      ; preds = %if.end.104
  %108 = load i32, i32* %w0, align 4, !tbaa !5
  %shr111 = lshr i32 %108, 24
  %conv112 = trunc i32 %shr111 to i8
  %idxprom113 = zext i8 %conv112 to i64
  %109 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8114 = bitcast %union.sample_lookup_s* %109 to [256 x i8]*
  %arrayidx115 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8114, i32 0, i64 %idxprom113
  %110 = load i8, i8* %arrayidx115, align 1, !tbaa !88
  %111 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %111, i64 0
  store i8 %110, i8* %arrayidx116, align 1, !tbaa !88
  %112 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %113 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext117 = sext i32 %112 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %113, i64 %idx.ext117
  store i8* %add.ptr118, i8** %dest, align 8, !tbaa !1
  %114 = load i32, i32* %w0, align 4, !tbaa !5
  %shr119 = lshr i32 %114, 16
  %conv120 = trunc i32 %shr119 to i8
  %idxprom121 = zext i8 %conv120 to i64
  %115 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8122 = bitcast %union.sample_lookup_s* %115 to [256 x i8]*
  %arrayidx123 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8122, i32 0, i64 %idxprom121
  %116 = load i8, i8* %arrayidx123, align 1, !tbaa !88
  %117 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds i8, i8* %117, i64 1
  store i8 %116, i8* %arrayidx124, align 1, !tbaa !88
  %118 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %119 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext125 = sext i32 %118 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %119, i64 %idx.ext125
  store i8* %add.ptr126, i8** %dest, align 8, !tbaa !1
  %120 = load i32, i32* %w0, align 4, !tbaa !5
  %shr127 = lshr i32 %120, 8
  %conv128 = trunc i32 %shr127 to i8
  %idxprom129 = zext i8 %conv128 to i64
  %121 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8130 = bitcast %union.sample_lookup_s* %121 to [256 x i8]*
  %arrayidx131 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8130, i32 0, i64 %idxprom129
  %122 = load i8, i8* %arrayidx131, align 1, !tbaa !88
  %123 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %123, i64 2
  store i8 %122, i8* %arrayidx132, align 1, !tbaa !88
  %124 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %125 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext133 = sext i32 %124 to i64
  %add.ptr134 = getelementptr inbounds i8, i8* %125, i64 %idx.ext133
  store i8* %add.ptr134, i8** %dest, align 8, !tbaa !1
  %126 = load i32, i32* %w0, align 4, !tbaa !5
  %conv135 = trunc i32 %126 to i8
  %idxprom136 = zext i8 %conv135 to i64
  %127 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8137 = bitcast %union.sample_lookup_s* %127 to [256 x i8]*
  %arrayidx138 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8137, i32 0, i64 %idxprom136
  %128 = load i8, i8* %arrayidx138, align 1, !tbaa !88
  %129 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx139 = getelementptr inbounds i8, i8* %129, i64 3
  store i8 %128, i8* %arrayidx139, align 1, !tbaa !88
  %130 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %131 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext140 = sext i32 %130 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %131, i64 %idx.ext140
  store i8* %add.ptr141, i8** %dest, align 8, !tbaa !1
  %132 = load i32, i32* %w1, align 4, !tbaa !5
  %shr142 = lshr i32 %132, 24
  %conv143 = trunc i32 %shr142 to i8
  %idxprom144 = zext i8 %conv143 to i64
  %133 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8145 = bitcast %union.sample_lookup_s* %133 to [256 x i8]*
  %arrayidx146 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8145, i32 0, i64 %idxprom144
  %134 = load i8, i8* %arrayidx146, align 1, !tbaa !88
  %135 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds i8, i8* %135, i64 4
  store i8 %134, i8* %arrayidx147, align 1, !tbaa !88
  %136 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %137 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext148 = sext i32 %136 to i64
  %add.ptr149 = getelementptr inbounds i8, i8* %137, i64 %idx.ext148
  store i8* %add.ptr149, i8** %dest, align 8, !tbaa !1
  %138 = load i32, i32* %w1, align 4, !tbaa !5
  %shr150 = lshr i32 %138, 16
  %conv151 = trunc i32 %shr150 to i8
  %idxprom152 = zext i8 %conv151 to i64
  %139 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8153 = bitcast %union.sample_lookup_s* %139 to [256 x i8]*
  %arrayidx154 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8153, i32 0, i64 %idxprom152
  %140 = load i8, i8* %arrayidx154, align 1, !tbaa !88
  %141 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx155 = getelementptr inbounds i8, i8* %141, i64 5
  store i8 %140, i8* %arrayidx155, align 1, !tbaa !88
  %142 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %143 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext156 = sext i32 %142 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %143, i64 %idx.ext156
  store i8* %add.ptr157, i8** %dest, align 8, !tbaa !1
  %144 = load i32, i32* %w1, align 4, !tbaa !5
  %shr158 = lshr i32 %144, 8
  %conv159 = trunc i32 %shr158 to i8
  %idxprom160 = zext i8 %conv159 to i64
  %145 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8161 = bitcast %union.sample_lookup_s* %145 to [256 x i8]*
  %arrayidx162 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8161, i32 0, i64 %idxprom160
  %146 = load i8, i8* %arrayidx162, align 1, !tbaa !88
  %147 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds i8, i8* %147, i64 6
  store i8 %146, i8* %arrayidx163, align 1, !tbaa !88
  %148 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %149 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext164 = sext i32 %148 to i64
  %add.ptr165 = getelementptr inbounds i8, i8* %149, i64 %idx.ext164
  store i8* %add.ptr165, i8** %dest, align 8, !tbaa !1
  %150 = load i32, i32* %w1, align 4, !tbaa !5
  %conv166 = trunc i32 %150 to i8
  %idxprom167 = zext i8 %conv166 to i64
  %151 = load %union.sample_lookup_s*, %union.sample_lookup_s** %ptab.addr, align 8, !tbaa !1
  %lookup8168 = bitcast %union.sample_lookup_s* %151 to [256 x i8]*
  %arrayidx169 = getelementptr inbounds [256 x i8], [256 x i8]* %lookup8168, i32 0, i64 %idxprom167
  %152 = load i8, i8* %arrayidx169, align 1, !tbaa !88
  %153 = load i8*, i8** %dest, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i8, i8* %153, i64 7
  store i8 %152, i8* %arrayidx170, align 1, !tbaa !88
  %154 = load i32, i32* %spread.addr, align 4, !tbaa !5
  %155 = load i8*, i8** %dest, align 8, !tbaa !1
  %idx.ext171 = sext i32 %154 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %155, i64 %idx.ext171
  store i8* %add.ptr172, i8** %dest, align 8, !tbaa !1
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.110, %if.then.106
  %156 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %w0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %158 = load i32, i32* %x, align 4, !tbaa !5
  %add175 = add nsw i32 %158, 8
  store i32 %add175, i32* %x, align 4, !tbaa !5
  br label %for.cond.37

for.end.176:                                      ; preds = %for.cond.37
  %159 = bitcast %struct.gx_image_plane_s** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #1
  %160 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %pi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %direct to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %any_data_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %165 = bitcast i8** %zeros to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #1
  %166 = bitcast [8 x %struct.gx_image_plane_s]* %planes to i8*
  call void @llvm.lifetime.end(i64 128, i8* %166) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @update_strip(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %0, i32 0, i32 53
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !48
  %2 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %2, i32 0, i32 54
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !80
  %sub = sub nsw i32 %1, %3
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 55
  %strip = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x2, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %5 = load i32, i32* %Q, align 4, !tbaa !81
  %add = add nsw i32 %5, %sub
  store i32 %add, i32* %Q, align 4, !tbaa !81
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %cur3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 53
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur3, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !54
  %8 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %prev4 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %8, i32 0, i32 54
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %prev4, i32 0, i32 1
  %9 = load i32, i32* %y5, align 4, !tbaa !82
  %sub6 = sub nsw i32 %7, %9
  %10 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %10, i32 0, i32 55
  %strip8 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda7, i32 0, i32 1
  %y9 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %strip8, i32 0, i32 1
  %state10 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y9, i32 0, i32 0
  %Q11 = getelementptr inbounds %struct._a, %struct._a* %state10, i32 0, i32 0
  %11 = load i32, i32* %Q11, align 4, !tbaa !83
  %add12 = add nsw i32 %11, %sub6
  store i32 %add12, i32* %Q11, align 4, !tbaa !83
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda13, i32 0, i32 2
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda14 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 55
  %strip15 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda14, i32 0, i32 1
  %14 = bitcast %struct.gx_dda_fixed_point_s* %pixel0 to i8*
  %15 = bitcast %struct.gx_dda_fixed_point_s* %strip15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 40, i32 4, i1 false), !tbaa.struct !89
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @gx_image1_flush(%struct.gx_image_enum_common_s* %info) #0 {
entry:
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %width_spp = alloca i32, align 4
  %adjust = alloca i32, align 4
  %yc = alloca i32, align 4
  %xc = alloca i32, align 4
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image_enum_s*
  store %struct.gx_image_enum_s* %2, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast i32* %width_spp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 22
  %w = getelementptr inbounds %struct.r_, %struct.r_* %rect, i32 0, i32 2
  %5 = load i32, i32* %w, align 4, !tbaa !31
  %6 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %spp = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %6, i32 0, i32 14
  %7 = load i8, i8* %spp, align 1, !tbaa !32
  %conv = zext i8 %7 to i32
  %mul = mul nsw i32 %5, %conv
  store i32 %mul, i32* %width_spp, align 4, !tbaa !5
  %8 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %adjust1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 45
  %10 = load i32, i32* %adjust1, align 4, !tbaa !34
  store i32 %10, i32* %adjust, align 4, !tbaa !5
  %11 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %11, i32 0, i32 55
  %row = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 0
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %12 = load i32, i32* %Q, align 4, !tbaa !47
  %13 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %13, i32 0, i32 53
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur, i32 0, i32 0
  store i32 %12, i32* %x2, align 4, !tbaa !48
  %14 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %dda3 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %14, i32 0, i32 55
  %row4 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda3, i32 0, i32 0
  %y = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %row4, i32 0, i32 1
  %state5 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y, i32 0, i32 0
  %Q6 = getelementptr inbounds %struct._a, %struct._a* %state5, i32 0, i32 0
  %15 = load i32, i32* %Q6, align 4, !tbaa !53
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 53
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur7, i32 0, i32 1
  store i32 %15, i32* %y8, align 4, !tbaa !54
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 37
  %18 = load i32, i32* %posture, align 4, !tbaa !60
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.16
    i32 2, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %entry
  %19 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur9 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 53
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur9, i32 0, i32 1
  %21 = load i32, i32* %y10, align 4, !tbaa !54
  store i32 %21, i32* %yc, align 4, !tbaa !5
  %22 = load i32, i32* %yc, align 4, !tbaa !5
  %23 = load i32, i32* %adjust, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %23
  %add = add nsw i32 %sub, 128
  %shr = ashr i32 %add, 8
  %24 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %24, i32 0, i32 60
  store i32 %shr, i32* %yci, align 4, !tbaa !63
  %25 = load i32, i32* %yc, align 4, !tbaa !5
  %26 = load i32, i32* %adjust, align 4, !tbaa !5
  %add11 = add nsw i32 %25, %26
  %add12 = add nsw i32 %add11, 128
  %shr13 = ashr i32 %add12, 8
  %27 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %yci14 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %27, i32 0, i32 60
  %28 = load i32, i32* %yci14, align 4, !tbaa !63
  %sub15 = sub nsw i32 %shr13, %28
  %29 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %29, i32 0, i32 61
  store i32 %sub15, i32* %hci, align 4, !tbaa !64
  %30 = bitcast i32* %yc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %31 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur17 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 53
  %x18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %cur17, i32 0, i32 0
  %33 = load i32, i32* %x18, align 4, !tbaa !48
  store i32 %33, i32* %xc, align 4, !tbaa !5
  %34 = load i32, i32* %xc, align 4, !tbaa !5
  %35 = load i32, i32* %adjust, align 4, !tbaa !5
  %sub19 = sub nsw i32 %34, %35
  %add20 = add nsw i32 %sub19, 128
  %shr21 = ashr i32 %add20, 8
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %36, i32 0, i32 62
  store i32 %shr21, i32* %xci, align 4, !tbaa !67
  %37 = load i32, i32* %xc, align 4, !tbaa !5
  %38 = load i32, i32* %adjust, align 4, !tbaa !5
  %add22 = add nsw i32 %37, %38
  %add23 = add nsw i32 %add22, 128
  %shr24 = ashr i32 %add23, 8
  %39 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %xci25 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %39, i32 0, i32 62
  %40 = load i32, i32* %xci25, align 4, !tbaa !67
  %sub26 = sub nsw i32 %shr24, %40
  %41 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %41, i32 0, i32 63
  store i32 %sub26, i32* %wci, align 4, !tbaa !68
  %42 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.27, %entry, %sw.bb.16, %sw.bb
  %43 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  call void @update_strip(%struct.gx_image_enum_s* %43) #4
  %44 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %44, i32 0, i32 54
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %cur28 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 53
  %46 = bitcast %struct.gs_fixed_point_s* %prev to i8*
  %47 = bitcast %struct.gs_fixed_point_s* %cur28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 8, i32 4, i1 false), !tbaa.struct !84
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %render = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %48, i32 0, i32 29
  %49 = load i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)** %render, align 8, !tbaa !79
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %51 = load i32, i32* %width_spp, align 4, !tbaa !5
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @setup_image_device(%struct.gx_image_enum_s* %52) #4
  %call29 = call i32 %49(%struct.gx_image_enum_s* %50, i8* null, i32 0, i32 %51, i32 0, %struct.gx_device_s* %call) #4
  %53 = bitcast i32* %adjust to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %width_spp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  ret i32 %call29
}

; Function Attrs: nounwind uwtable
define i32 @gx_image1_end_image(%struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  %penum = alloca %struct.gx_image_enum_s*, align 8
  %mem = alloca %struct.gs_memory_s*, align 8
  %scaler = alloca %struct.stream_image_scale_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_image_enum_common_s* %1 to %struct.gx_image_enum_s*
  store %struct.gx_image_enum_s* %2, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %3 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !90
  store %struct.gs_memory_s* %5, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %6 = bitcast %struct.stream_image_scale_state_s** %scaler to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %scaler1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %7, i32 0, i32 50
  %8 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler1, align 8, !tbaa !91
  store %struct.stream_image_scale_state_s* %8, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %9 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %do.end
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %call = call i32 @gx_image_flush(%struct.gx_image_enum_common_s* %11) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %13 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.2
  %14 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.59 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.3

if.end.3:                                         ; preds = %cleanup.cont, %do.end
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rop_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 49
  %16 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev, align 8, !tbaa !87
  %tobool4 = icmp ne %struct.gx_device_rop_texture_s* %16, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %17 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rop_dev6 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %17, i32 0, i32 49
  %18 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev6, align 8, !tbaa !87
  %19 = bitcast %struct.gx_device_rop_texture_s* %18 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %19, %struct.gx_device_s* null) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end.3
  %20 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %20, i32 0, i32 48
  %21 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev, align 8, !tbaa !86
  %tobool8 = icmp ne %struct.gx_device_clip_s* %21, null
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %22 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_dev10 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %22, i32 0, i32 48
  %23 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev10, align 8, !tbaa !86
  %24 = bitcast %struct.gx_device_clip_s* %23 to %struct.gx_device_forward_s*
  call void @gx_device_set_target(%struct.gx_device_forward_s* %24, %struct.gx_device_s* null) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %26 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !92
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %28 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %rop_dev12 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %28, i32 0, i32 49
  %29 = load %struct.gx_device_rop_texture_s*, %struct.gx_device_rop_texture_s** %rop_dev12, align 8, !tbaa !87
  %30 = bitcast %struct.gx_device_rop_texture_s* %29 to i8*
  call void %26(%struct.gs_memory_s* %27, i8* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)) #4
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %free_object14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %32 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object14, align 8, !tbaa !92
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %34 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clip_dev15 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %34, i32 0, i32 48
  %35 = load %struct.gx_device_clip_s*, %struct.gx_device_clip_s** %clip_dev15, align 8, !tbaa !86
  %36 = bitcast %struct.gx_device_clip_s* %35 to i8*
  call void %32(%struct.gs_memory_s* %33, i8* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0)) #4
  %37 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !1
  %cmp16 = icmp ne %struct.stream_image_scale_state_s* %37, null
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.11
  %38 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !1
  %templat = getelementptr inbounds %struct.stream_image_scale_state_s, %struct.stream_image_scale_state_s* %38, i32 0, i32 0
  %39 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !95
  %release = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %39, i32 0, i32 5
  %40 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !98
  %41 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !1
  %42 = bitcast %struct.stream_image_scale_state_s* %41 to %struct.stream_state_s*
  call void %40(%struct.stream_state_s* %42) #4
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %free_object19 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs18, i32 0, i32 2
  %44 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object19, align 8, !tbaa !92
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %46 = load %struct.stream_image_scale_state_s*, %struct.stream_image_scale_state_s** %scaler, align 8, !tbaa !1
  %47 = bitcast %struct.stream_image_scale_state_s* %46 to i8*
  call void %44(%struct.gs_memory_s* %45, i8* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.11
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %48, i32 0, i32 70
  %49 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link, align 8, !tbaa !100
  %cmp21 = icmp ne %struct.gsicc_link_s* %49, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %icc_link23 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %50, i32 0, i32 70
  %51 = load %struct.gsicc_link_s*, %struct.gsicc_link_s** %icc_link23, align 8, !tbaa !100
  call void @gsicc_release_link(%struct.gsicc_link_s* %51) #4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %52 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %color_cache = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %52, i32 0, i32 71
  %53 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache, align 8, !tbaa !101
  %cmp25 = icmp ne %struct.gx_image_color_cache_s* %53, null
  br i1 %cmp25, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.24
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs27 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %free_object28 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs27, i32 0, i32 2
  %55 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object28, align 8, !tbaa !92
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %57 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %color_cache29 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %57, i32 0, i32 71
  %58 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache29, align 8, !tbaa !101
  %device_contone = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %58, i32 0, i32 1
  %59 = load i8*, i8** %device_contone, align 8, !tbaa !102
  call void %55(%struct.gs_memory_s* %56, i8* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)) #4
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs30 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 1
  %free_object31 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs30, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object31, align 8, !tbaa !92
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %63 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %color_cache32 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %63, i32 0, i32 71
  %64 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache32, align 8, !tbaa !101
  %is_transparent = getelementptr inbounds %struct.gx_image_color_cache_s, %struct.gx_image_color_cache_s* %64, i32 0, i32 0
  %65 = load i32*, i32** %is_transparent, align 8, !tbaa !104
  %66 = bitcast i32* %65 to i8*
  call void %61(%struct.gs_memory_s* %62, i8* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)) #4
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %free_object34 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %68 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object34, align 8, !tbaa !92
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %70 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %color_cache35 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %70, i32 0, i32 71
  %71 = load %struct.gx_image_color_cache_s*, %struct.gx_image_color_cache_s** %color_cache35, align 8, !tbaa !101
  %72 = bitcast %struct.gx_image_color_cache_s* %71 to i8*
  call void %68(%struct.gs_memory_s* %69, i8* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)) #4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.26, %if.end.24
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 76
  %74 = load i8*, i8** %thresh_buffer, align 8, !tbaa !105
  %cmp37 = icmp ne i8* %74, null
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.36
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object40 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object40, align 8, !tbaa !92
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %thresh_buffer41 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 76
  %79 = load i8*, i8** %thresh_buffer41, align 8, !tbaa !105
  call void %76(%struct.gs_memory_s* %77, i8* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0)) #4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.36
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 72
  %81 = load i8*, i8** %ht_buffer, align 8, !tbaa !106
  %cmp43 = icmp ne i8* %81, null
  br i1 %cmp43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.end.42
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 1
  %free_object46 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs45, i32 0, i32 2
  %83 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object46, align 8, !tbaa !92
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %85 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %ht_buffer47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %85, i32 0, i32 72
  %86 = load i8*, i8** %ht_buffer47, align 8, !tbaa !106
  call void %83(%struct.gs_memory_s* %84, i8* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %if.end.42
  %87 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clues = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %87, i32 0, i32 65
  %88 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues, align 8, !tbaa !107
  %cmp49 = icmp ne %struct.gx_image_clue_s* %88, null
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.48
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs51 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %89, i32 0, i32 1
  %free_object52 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs51, i32 0, i32 2
  %90 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object52, align 8, !tbaa !92
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %92 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %clues53 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %92, i32 0, i32 65
  %93 = load %struct.gx_image_clue_s*, %struct.gx_image_clue_s** %clues53, align 8, !tbaa !107
  %94 = bitcast %struct.gx_image_clue_s* %93 to i8*
  call void %90(%struct.gs_memory_s* %91, i8* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)) #4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.48
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %free_object56 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs55, i32 0, i32 2
  %96 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object56, align 8, !tbaa !92
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 34
  %99 = load i8*, i8** %line, align 8, !tbaa !108
  call void %96(%struct.gs_memory_s* %97, i8* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #4
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %procs57 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %100, i32 0, i32 1
  %free_object58 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs57, i32 0, i32 2
  %101 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object58, align 8, !tbaa !92
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !1
  %103 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum, align 8, !tbaa !1
  %buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %103, i32 0, i32 32
  %104 = load i8*, i8** %buffer, align 8, !tbaa !41
  call void %101(%struct.gs_memory_s* %102, i8* %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)) #4
  call void @gx_image_free_enum(%struct.gx_image_enum_common_s** %info.addr) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.59

cleanup.59:                                       ; preds = %if.end.54, %cleanup
  %105 = bitcast %struct.stream_image_scale_state_s** %scaler to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %106 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %106) #1
  %107 = bitcast %struct.gx_image_enum_s** %penum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

declare i32 @gx_image_flush(%struct.gx_image_enum_common_s*) #3

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #3

declare void @gsicc_release_link(%struct.gsicc_link_s*) #3

declare void @gx_image_free_enum(%struct.gx_image_enum_common_s**) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = !{!8, !6, i64 1344}
!8 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !9, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !10, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !11, i64 1120, !13, i64 1144, !14, i64 1160, !6, i64 1176, !6, i64 1180, !15, i64 1184, !15, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !16, i64 1272, !16, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !17, i64 1348, !15, i64 1356, !15, i64 1364, !18, i64 1372, !6, i64 1492, !6, i64 1496, !17, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !23, i64 23120, !23, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !28, i64 24504, !29, i64 24792, !6, i64 24808}
!9 = !{!"long", !3, i64 0}
!10 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !3, i64 0}
!13 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!14 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!15 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!16 = !{!"gs_fixed_rect_s", !15, i64 0, !15, i64 8}
!17 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!18 = !{!"dd_", !19, i64 0, !19, i64 40, !19, i64 80}
!19 = !{!"gx_dda_fixed_point_s", !20, i64 0, !20, i64 20}
!20 = !{!"gx_dda_fixed_s", !21, i64 0, !22, i64 8}
!21 = !{!"_a", !6, i64 0, !6, i64 4}
!22 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!23 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !17, i64 352, !6, i64 360, !24, i64 368, !26, i64 632}
!24 = !{!"gs_client_color_s", !2, i64 0, !25, i64 8}
!25 = !{!"gs_paint_color_s", !3, i64 0}
!26 = !{!"_mask", !27, i64 0, !9, i64 8, !2, i64 16}
!27 = !{!"mp_", !6, i64 0, !6, i64 4}
!28 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!29 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!30 = !{!8, !6, i64 1156}
!31 = !{!8, !6, i64 1152}
!32 = !{!8, !3, i64 579}
!33 = !{!8, !6, i64 44}
!34 = !{!8, !6, i64 1308}
!35 = !{!8, !6, i64 1352}
!36 = !{!37, !6, i64 12}
!37 = !{!"gx_image_plane_s", !2, i64 0, !6, i64 8, !6, i64 12}
!38 = !{!9, !9, i64 0}
!39 = !{!8, !3, i64 576}
!40 = !{!8, !6, i64 1348}
!41 = !{!8, !2, i64 1232}
!42 = !{!8, !3, i64 1117}
!43 = !{!37, !6, i64 8}
!44 = !{!8, !2, i64 1200}
!45 = !{!37, !2, i64 0}
!46 = !{!8, !3, i64 578}
!47 = !{!8, !6, i64 1372}
!48 = !{!8, !6, i64 1356}
!49 = !{!8, !6, i64 1384}
!50 = !{!8, !6, i64 1376}
!51 = !{!8, !6, i64 1388}
!52 = !{!8, !6, i64 1380}
!53 = !{!8, !6, i64 1392}
!54 = !{!8, !6, i64 1360}
!55 = !{!8, !6, i64 1404}
!56 = !{!8, !6, i64 1396}
!57 = !{!8, !6, i64 1408}
!58 = !{!8, !6, i64 1400}
!59 = !{!8, !3, i64 1119}
!60 = !{!8, !3, i64 1264}
!61 = !{!8, !6, i64 1284}
!62 = !{!8, !6, i64 1276}
!63 = !{!8, !6, i64 1512}
!64 = !{!8, !6, i64 1516}
!65 = !{!8, !6, i64 1280}
!66 = !{!8, !6, i64 1272}
!67 = !{!8, !6, i64 1520}
!68 = !{!8, !6, i64 1524}
!69 = !{!8, !6, i64 1460}
!70 = !{!8, !6, i64 1452}
!71 = !{!8, !6, i64 1464}
!72 = !{!8, !6, i64 1456}
!73 = !{!8, !6, i64 1468}
!74 = !{!8, !6, i64 1480}
!75 = !{!8, !6, i64 1472}
!76 = !{!8, !6, i64 1484}
!77 = !{!8, !6, i64 1476}
!78 = !{!8, !6, i64 1488}
!79 = !{!8, !2, i64 1208}
!80 = !{!8, !6, i64 1364}
!81 = !{!8, !6, i64 1412}
!82 = !{!8, !6, i64 1368}
!83 = !{!8, !6, i64 1432}
!84 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!85 = !{!8, !2, i64 16}
!86 = !{!8, !2, i64 1320}
!87 = !{!8, !2, i64 1328}
!88 = !{!3, !3, i64 0}
!89 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5}
!90 = !{!8, !2, i64 24}
!91 = !{!8, !2, i64 1336}
!92 = !{!93, !2, i64 24}
!93 = !{!"gs_memory_s", !2, i64 0, !94, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!94 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!95 = !{!96, !2, i64 0}
!96 = !{!"stream_image_scale_state_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !3, i64 28, !97, i64 108}
!97 = !{!"stream_image_scale_params_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!98 = !{!99, !2, i64 32}
!99 = !{!"stream_template_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !2, i64 32, !2, i64 40, !2, i64 48}
!100 = !{!8, !2, i64 24448}
!101 = !{!8, !2, i64 24456}
!102 = !{!103, !2, i64 8}
!103 = !{!"gx_image_color_cache_s", !2, i64 0, !2, i64 8}
!104 = !{!103, !2, i64 0}
!105 = !{!8, !2, i64 24488}
!106 = !{!8, !2, i64 24464}
!107 = !{!8, !2, i64 23112}
!108 = !{!8, !2, i64 1248}
