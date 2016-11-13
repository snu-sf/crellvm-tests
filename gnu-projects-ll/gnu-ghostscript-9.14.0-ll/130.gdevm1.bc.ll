; ModuleID = './gdevm1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, {}*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_state_s = type opaque
%struct.stream_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
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
%struct.copy_mode = type { i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct.rop_run_op_s = type { void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)*, %union.rop_source_s, %union.rop_source_s, i32, i8, i8, i8, i8*, i8*, void (%struct.rop_run_op_s*)*, i8* }
%union.rop_source_s = type { %struct.anon }
%struct.anon = type { i8*, i32 }

@rop_usage_table = external constant [256 x i8], align 16
@rop_proc_table = external constant [256 x i64 (i64, i64, i64)*], align 16
@.str = private unnamed_addr constant [7 x i8] c"image1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@mem_mono_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 } { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @mem_mono_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_mono_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem_mono_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem_mono_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_no_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @mem_mono_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @mem_mono_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"image1w\00", align 1
@mem_mono_word_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 } { i32 2792, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* } { i32 (%struct.gx_device_s*)* @mem_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @mem_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @mem_close, i64 (%struct.gx_device_s*, i16*)* @mem_mono_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @mem_mono_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @mem1_word_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @mem1_word_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @gx_default_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @gx_default_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @gx_no_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_default_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @mem_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_no_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_default_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @mem_word_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_default_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_default_get_hardware_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* @gx_default_text_begin, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* @gx_default_finish_copydevice, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, i32 0, i8* null, %struct.gs_memory_s* null, i32 1, %struct.gs_memory_s* null, i32 1, [64 x %struct.gx_render_plane_s] zeroinitializer, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i8** null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c40 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c48 { i64 -1, i32 0, i32 0, i32 0 }, %struct._c56 { i64 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct._c64 { i64 -1, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1, %struct.gx_device_color_s* null, i32 0, i32 0 }, align 8
@copy_modes = internal constant [16 x %struct.copy_mode] [%struct.copy_mode { i32 -1, i32 3 }, %struct.copy_mode { i32 -1, i32 2 }, %struct.copy_mode zeroinitializer, %struct.copy_mode zeroinitializer, %struct.copy_mode { i32 0, i32 2 }, %struct.copy_mode { i32 0, i32 3 }, %struct.copy_mode { i32 0, i32 1 }, %struct.copy_mode zeroinitializer, %struct.copy_mode { i32 -1, i32 0 }, %struct.copy_mode { i32 -1, i32 1 }, %struct.copy_mode { i32 0, i32 3 }, %struct.copy_mode zeroinitializer, %struct.copy_mode zeroinitializer, %struct.copy_mode zeroinitializer, %struct.copy_mode zeroinitializer, %struct.copy_mode zeroinitializer], align 16
@mono_copy_masks = external constant [17 x i16], align 16
@right_masks2 = internal constant [9 x i16] [i16 -1, i16 32639, i16 16191, i16 7967, i16 3855, i16 1799, i16 771, i16 257, i16 0], align 16
@left_masks2 = internal constant [9 x i16] [i16 -1, i16 -258, i16 -772, i16 -1800, i16 -3856, i16 -7968, i16 -16192, i16 -32640, i16 0], align 16

; Function Attrs: nounwind uwtable
define i32 @mem_mono_strip_copy_rop_dev(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %width, i32 %height, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %rop = alloca i32, align 4
  %draster = alloca i32, align 4
  %traster = alloca i32, align 4
  %line_count = alloca i32, align 4
  %drow = alloca i8*, align 8
  %srow = alloca i8*, align 8
  %ty = alloca i32, align 4
  %ropper = alloca %struct.rop_run_op_s, align 8
  %cleanup.dest.slot = alloca i32
  %dbit = alloca i32, align 4
  %sbit = alloca i32, align 4
  %sskew = alloca i32, align 4
  %proc = alloca i64 (i64, i64, i64)*, align 8
  %lmask = alloca i8, align 1
  %rmask = alloca i8, align 1
  %dptr = alloca i8*, align 8
  %sptr = alloca i8*, align 8
  %left = alloca i32, align 4
  %dbyte = alloca i8, align 1
  %sbyte = alloca i8, align 1
  %result = alloca i8, align 1
  %dbyte439 = alloca i8, align 1
  %sbyte440 = alloca i8, align 1
  %dbyte464 = alloca i8, align 1
  %sbyte465 = alloca i8, align 1
  %result481 = alloca i8, align 1
  %OP2 = alloca %struct.rop_run_op_s*, align 8
  %sx = alloca i32, align 4
  %dx = alloca i32, align 4
  %w = alloca i32, align 4
  %trow = alloca i8*, align 8
  %xoff = alloca i32, align 4
  %nw = alloca i32, align 4
  %tx = alloca i32, align 4
  %dbit557 = alloca i32, align 4
  %sbit559 = alloca i32, align 4
  %tbit = alloca i32, align 4
  %dptr562 = alloca i8*, align 8
  %sptr566 = alloca i8*, align 8
  %tptr = alloca i8*, align 8
  %OP2610 = alloca %struct.rop_run_op_s*, align 8
  %proc622 = alloca i64 (i64, i64, i64)*, align 8
  %dx630 = alloca i32, align 4
  %w631 = alloca i32, align 4
  %trow632 = alloca i8*, align 8
  %xoff640 = alloca i32, align 4
  %nw656 = alloca i32, align 4
  %tx657 = alloca i32, align 4
  %dbit666 = alloca i32, align 4
  %tbit668 = alloca i32, align 4
  %tskew = alloca i32, align 4
  %left671 = alloca i32, align 4
  %lmask684 = alloca i8, align 1
  %rmask687 = alloca i8, align 1
  %mask = alloca i8, align 1
  %nx = alloca i32, align 4
  %dptr695 = alloca i8*, align 8
  %tptr699 = alloca i8*, align 8
  %dbyte713 = alloca i8, align 1
  %tbyte = alloca i8, align 1
  %result729 = alloca i8, align 1
  %proc774 = alloca i64 (i64, i64, i64)*, align 8
  %sx782 = alloca i32, align 4
  %dx783 = alloca i32, align 4
  %w784 = alloca i32, align 4
  %trow785 = alloca i8*, align 8
  %xoff793 = alloca i32, align 4
  %nw809 = alloca i32, align 4
  %tx810 = alloca i32, align 4
  %dbit819 = alloca i32, align 4
  %sbit821 = alloca i32, align 4
  %sskew823 = alloca i32, align 4
  %tbit825 = alloca i32, align 4
  %tskew827 = alloca i32, align 4
  %left829 = alloca i32, align 4
  %lmask842 = alloca i8, align 1
  %rmask845 = alloca i8, align 1
  %mask852 = alloca i8, align 1
  %nx853 = alloca i32, align 4
  %dptr855 = alloca i8*, align 8
  %sptr859 = alloca i8*, align 8
  %tptr863 = alloca i8*, align 8
  %dbyte883 = alloca i8, align 1
  %sbyte884 = alloca i8, align 1
  %tbyte900 = alloca i8, align 1
  %result916 = alloca i8, align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !5
  store i32 %4, i32* %rop, align 4, !tbaa !9
  %5 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 44
  %7 = load i32, i32* %raster, align 4, !tbaa !10
  store i32 %7, i32* %draster, align 4, !tbaa !5
  %8 = bitcast i32* %traster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i8** %drow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i8** %srow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast %struct.rop_run_op_s* %ropper to i8*
  call void @llvm.lifetime.start(i64 88, i8* %13) #1
  %14 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp = icmp ne i64* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %15, i64 1
  %16 = load i64, i64* %arrayidx, align 8, !tbaa !7
  %shl = shl i64 %16, 1
  %17 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i64, i64* %17, i64 0
  %18 = load i64, i64* %arrayidx1, align 8, !tbaa !7
  %add = add i64 %shl, %18
  %conv = trunc i64 %add to i32
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.epilog
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then
  %19 = load i32, i32* %rop, align 4, !tbaa !9
  %and = and i32 %19, 51
  %shl2 = shl i32 %and, 2
  %20 = load i32, i32* %rop, align 4, !tbaa !9
  %and3 = and i32 %20, -205
  %or = or i32 %shl2, %and3
  store i32 %or, i32* %rop, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %21 = load i32, i32* %rop, align 4, !tbaa !9
  %and5 = and i32 %21, 204
  %shr = lshr i32 %and5, 2
  %22 = load i32, i32* %rop, align 4, !tbaa !9
  %and6 = and i32 %22, 51
  %shl7 = shl i32 %and6, 2
  %or8 = or i32 %shr, %shl7
  %23 = load i32, i32* %rop, align 4, !tbaa !9
  %and9 = and i32 %23, -256
  %or10 = or i32 %or8, %and9
  store i32 %or10, i32* %rop, align 4, !tbaa !9
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  %24 = load i32, i32* %rop, align 4, !tbaa !9
  %and12 = and i32 %24, 204
  %shr13 = lshr i32 %and12, 2
  %25 = load i32, i32* %rop, align 4, !tbaa !9
  %and14 = and i32 %25, -52
  %or15 = or i32 %shr13, %and14
  store i32 %or15, i32* %rop, align 4, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.11, %if.then, %sw.bb.4, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %26 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp16 = icmp ne i64* %26, null
  br i1 %cmp16, label %if.then.18, label %if.end.43

if.then.18:                                       ; preds = %if.end
  %27 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i64, i64* %27, i64 1
  %28 = load i64, i64* %arrayidx19, align 8, !tbaa !7
  %shl20 = shl i64 %28, 1
  %29 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i64, i64* %29, i64 0
  %30 = load i64, i64* %arrayidx21, align 8, !tbaa !7
  %add22 = add i64 %shl20, %30
  %conv23 = trunc i64 %add22 to i32
  switch i32 %conv23, label %sw.epilog.42 [
    i32 0, label %sw.bb.24
    i32 1, label %sw.bb.29
    i32 2, label %sw.epilog.42
    i32 3, label %sw.bb.37
  ]

sw.bb.24:                                         ; preds = %if.then.18
  %31 = load i32, i32* %rop, align 4, !tbaa !9
  %and25 = and i32 %31, 15
  %shl26 = shl i32 %and25, 4
  %32 = load i32, i32* %rop, align 4, !tbaa !9
  %and27 = and i32 %32, -241
  %or28 = or i32 %shl26, %and27
  store i32 %or28, i32* %rop, align 4, !tbaa !9
  br label %sw.epilog.42

sw.bb.29:                                         ; preds = %if.then.18
  %33 = load i32, i32* %rop, align 4, !tbaa !9
  %and30 = and i32 %33, 240
  %shr31 = lshr i32 %and30, 4
  %34 = load i32, i32* %rop, align 4, !tbaa !9
  %and32 = and i32 %34, 15
  %shl33 = shl i32 %and32, 4
  %or34 = or i32 %shr31, %shl33
  %35 = load i32, i32* %rop, align 4, !tbaa !9
  %and35 = and i32 %35, -256
  %or36 = or i32 %or34, %and35
  store i32 %or36, i32* %rop, align 4, !tbaa !9
  br label %sw.epilog.42

sw.bb.37:                                         ; preds = %if.then.18
  %36 = load i32, i32* %rop, align 4, !tbaa !9
  %and38 = and i32 %36, 240
  %shr39 = lshr i32 %and38, 4
  %37 = load i32, i32* %rop, align 4, !tbaa !9
  %and40 = and i32 %37, -16
  %or41 = or i32 %shr39, %and40
  store i32 %or41, i32* %rop, align 4, !tbaa !9
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %if.then.18, %sw.bb.37, %if.then.18, %sw.bb.29, %sw.bb.24
  br label %if.end.43

if.end.43:                                        ; preds = %sw.epilog.42, %if.end
  %38 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom = zext i32 %38 to i64
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* @rop_usage_table, i32 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx44, align 1, !tbaa !9
  %conv45 = zext i8 %39 to i32
  switch i32 %conv45, label %sw.default [
    i32 0, label %sw.bb.46
    i32 1, label %sw.bb.49
    i32 2, label %sw.bb.103
    i32 3, label %sw.bb.149
    i32 4, label %sw.bb.199
    i32 5, label %sw.bb.253
  ]

sw.bb.46:                                         ; preds = %if.end.43
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %41 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !31
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load i32, i32* %x.addr, align 4, !tbaa !5
  %44 = load i32, i32* %y.addr, align 4, !tbaa !5
  %45 = load i32, i32* %width.addr, align 4, !tbaa !5
  %46 = load i32, i32* %height.addr, align 4, !tbaa !5
  %47 = load i32, i32* %rop, align 4, !tbaa !9
  %and47 = and i32 %47, 1
  %conv48 = zext i32 %and47 to i64
  %call = call i32 %41(%struct.gx_device_s* %42, i32 %43, i32 %44, i32 %45, i32 %46, i64 %conv48) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

sw.bb.49:                                         ; preds = %if.end.43
  %48 = load i32, i32* %rop, align 4, !tbaa !9
  %cmp50 = icmp eq i32 %48, 170
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %sw.bb.49
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.53:                                        ; preds = %sw.bb.49
  br label %do.body

do.body:                                          ; preds = %if.end.53
  br label %do.body.54

do.body.54:                                       ; preds = %do.body
  br label %do.body.55

do.body.55:                                       ; preds = %do.body.54
  %49 = load i32, i32* %x.addr, align 4, !tbaa !5
  %50 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or56 = or i32 %49, %50
  %cmp57 = icmp slt i32 %or56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.70

if.then.59:                                       ; preds = %do.body.55
  %51 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %51, 0
  br i1 %cmp60, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.then.59
  %52 = load i32, i32* %x.addr, align 4, !tbaa !5
  %53 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add63 = add nsw i32 %53, %52
  store i32 %add63, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.59
  %54 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %54, 0
  br i1 %cmp65, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %55 = load i32, i32* %y.addr, align 4, !tbaa !5
  %56 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add68 = add nsw i32 %56, %55
  store i32 %add68, i32* %height.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.64
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %do.body.55
  br label %do.cond

do.cond:                                          ; preds = %if.end.70
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.71

do.body.71:                                       ; preds = %do.end
  %57 = load i32, i32* %width.addr, align 4, !tbaa !5
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width72 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 13
  %59 = load i32, i32* %width72, align 4, !tbaa !33
  %60 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %59, %60
  %cmp73 = icmp sgt i32 %57, %sub
  br i1 %cmp73, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %do.body.71
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width76 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 13
  %62 = load i32, i32* %width76, align 4, !tbaa !33
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub77 = sub nsw i32 %62, %63
  store i32 %sub77, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %do.body.71
  br label %do.cond.79

do.cond.79:                                       ; preds = %if.end.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  br label %do.body.81

do.body.81:                                       ; preds = %do.end.80
  %64 = load i32, i32* %height.addr, align 4, !tbaa !5
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height82 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 14
  %66 = load i32, i32* %height82, align 4, !tbaa !34
  %67 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub83 = sub nsw i32 %66, %67
  %cmp84 = icmp sgt i32 %64, %sub83
  br i1 %cmp84, label %if.then.86, label %if.end.89

if.then.86:                                       ; preds = %do.body.81
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 14
  %69 = load i32, i32* %height87, align 4, !tbaa !34
  %70 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub88 = sub nsw i32 %69, %70
  store i32 %sub88, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.86, %do.body.81
  br label %do.cond.90

do.cond.90:                                       ; preds = %if.end.89
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  br label %do.cond.92

do.cond.92:                                       ; preds = %do.end.91
  br label %do.end.93

do.end.93:                                        ; preds = %do.cond.92
  %71 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp94 = icmp sle i32 %71, 0
  br i1 %cmp94, label %if.then.98, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.93
  %72 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp96 = icmp sle i32 %72, 0
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %lor.lhs.false, %do.end.93
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.99:                                        ; preds = %lor.lhs.false
  br label %do.cond.100

do.cond.100:                                      ; preds = %if.end.99
  br label %do.end.101

do.end.101:                                       ; preds = %do.cond.100
  %73 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %73, i32 0, i32 52
  %74 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx102 = getelementptr inbounds i8*, i8** %74, i64 0
  %75 = load i8*, i8** %arrayidx102, align 8, !tbaa !1
  store i8* %75, i8** %sdata.addr, align 8, !tbaa !1
  %76 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %76, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %sraster.addr, align 4, !tbaa !5
  br label %no_T

sw.bb.103:                                        ; preds = %if.end.43
  br label %do.body.104

do.body.104:                                      ; preds = %sw.bb.103
  br label %do.body.105

do.body.105:                                      ; preds = %do.body.104
  %77 = load i32, i32* %x.addr, align 4, !tbaa !5
  %78 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or106 = or i32 %77, %78
  %cmp107 = icmp slt i32 %or106, 0
  br i1 %cmp107, label %if.then.109, label %if.end.121

if.then.109:                                      ; preds = %do.body.105
  %79 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %79, 0
  br i1 %cmp110, label %if.then.112, label %if.end.115

if.then.112:                                      ; preds = %if.then.109
  %80 = load i32, i32* %x.addr, align 4, !tbaa !5
  %81 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add113 = add nsw i32 %81, %80
  store i32 %add113, i32* %width.addr, align 4, !tbaa !5
  %82 = load i32, i32* %x.addr, align 4, !tbaa !5
  %83 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub114 = sub nsw i32 %83, %82
  store i32 %sub114, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.112, %if.then.109
  %84 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp116 = icmp slt i32 %84, 0
  br i1 %cmp116, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.end.115
  %85 = load i32, i32* %y.addr, align 4, !tbaa !5
  %86 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add119 = add nsw i32 %86, %85
  store i32 %add119, i32* %height.addr, align 4, !tbaa !5
  %87 = load i32, i32* %y.addr, align 4, !tbaa !5
  %88 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul i32 %87, %88
  %89 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %89, i64 %idx.neg
  store i8* %add.ptr, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.end.115
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %do.body.105
  %90 = load i32, i32* %width.addr, align 4, !tbaa !5
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width122 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 13
  %92 = load i32, i32* %width122, align 4, !tbaa !33
  %93 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub123 = sub nsw i32 %92, %93
  %cmp124 = icmp sgt i32 %90, %sub123
  br i1 %cmp124, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.end.121
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width127 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 13
  %95 = load i32, i32* %width127, align 4, !tbaa !33
  %96 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub128 = sub nsw i32 %95, %96
  store i32 %sub128, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.121
  br label %do.cond.130

do.cond.130:                                      ; preds = %if.end.129
  br label %do.end.131

do.end.131:                                       ; preds = %do.cond.130
  %97 = load i32, i32* %height.addr, align 4, !tbaa !5
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height132 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %98, i32 0, i32 14
  %99 = load i32, i32* %height132, align 4, !tbaa !34
  %100 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub133 = sub nsw i32 %99, %100
  %cmp134 = icmp sgt i32 %97, %sub133
  br i1 %cmp134, label %if.then.136, label %if.end.139

if.then.136:                                      ; preds = %do.end.131
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height137 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 14
  %102 = load i32, i32* %height137, align 4, !tbaa !34
  %103 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub138 = sub nsw i32 %102, %103
  store i32 %sub138, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.136, %do.end.131
  %104 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp140 = icmp sle i32 %104, 0
  br i1 %cmp140, label %if.then.145, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.end.139
  %105 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp143 = icmp sle i32 %105, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %lor.lhs.false.142, %if.end.139
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.146:                                       ; preds = %lor.lhs.false.142
  br label %do.cond.147

do.cond.147:                                      ; preds = %if.end.146
  br label %do.end.148

do.end.148:                                       ; preds = %do.cond.147
  br label %no_T

sw.bb.149:                                        ; preds = %if.end.43
  br label %do.body.150

do.body.150:                                      ; preds = %sw.bb.149
  br label %do.body.151

do.body.151:                                      ; preds = %do.body.150
  %106 = load i32, i32* %x.addr, align 4, !tbaa !5
  %107 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or152 = or i32 %106, %107
  %cmp153 = icmp slt i32 %or152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.171

if.then.155:                                      ; preds = %do.body.151
  %108 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %108, 0
  br i1 %cmp156, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %if.then.155
  %109 = load i32, i32* %x.addr, align 4, !tbaa !5
  %110 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add159 = add nsw i32 %110, %109
  store i32 %add159, i32* %width.addr, align 4, !tbaa !5
  %111 = load i32, i32* %x.addr, align 4, !tbaa !5
  %112 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub160 = sub nsw i32 %112, %111
  store i32 %sub160, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.then.155
  %113 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp162 = icmp slt i32 %113, 0
  br i1 %cmp162, label %if.then.164, label %if.end.170

if.then.164:                                      ; preds = %if.end.161
  %114 = load i32, i32* %y.addr, align 4, !tbaa !5
  %115 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add165 = add nsw i32 %115, %114
  store i32 %add165, i32* %height.addr, align 4, !tbaa !5
  %116 = load i32, i32* %y.addr, align 4, !tbaa !5
  %117 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul166 = mul i32 %116, %117
  %118 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext167 = sext i32 %mul166 to i64
  %idx.neg168 = sub i64 0, %idx.ext167
  %add.ptr169 = getelementptr inbounds i8, i8* %118, i64 %idx.neg168
  store i8* %add.ptr169, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.164, %if.end.161
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %do.body.151
  %119 = load i32, i32* %width.addr, align 4, !tbaa !5
  %120 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width172 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %120, i32 0, i32 13
  %121 = load i32, i32* %width172, align 4, !tbaa !33
  %122 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub173 = sub nsw i32 %121, %122
  %cmp174 = icmp sgt i32 %119, %sub173
  br i1 %cmp174, label %if.then.176, label %if.end.179

if.then.176:                                      ; preds = %if.end.171
  %123 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width177 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %123, i32 0, i32 13
  %124 = load i32, i32* %width177, align 4, !tbaa !33
  %125 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub178 = sub nsw i32 %124, %125
  store i32 %sub178, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.176, %if.end.171
  br label %do.cond.180

do.cond.180:                                      ; preds = %if.end.179
  br label %do.end.181

do.end.181:                                       ; preds = %do.cond.180
  %126 = load i32, i32* %height.addr, align 4, !tbaa !5
  %127 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height182 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %127, i32 0, i32 14
  %128 = load i32, i32* %height182, align 4, !tbaa !34
  %129 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub183 = sub nsw i32 %128, %129
  %cmp184 = icmp sgt i32 %126, %sub183
  br i1 %cmp184, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %do.end.181
  %130 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height187 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %130, i32 0, i32 14
  %131 = load i32, i32* %height187, align 4, !tbaa !34
  %132 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub188 = sub nsw i32 %131, %132
  store i32 %sub188, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.186, %do.end.181
  %133 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp190 = icmp sle i32 %133, 0
  br i1 %cmp190, label %if.then.195, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %if.end.189
  %134 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp193 = icmp sle i32 %134, 0
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %lor.lhs.false.192, %if.end.189
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.196:                                       ; preds = %lor.lhs.false.192
  br label %do.cond.197

do.cond.197:                                      ; preds = %if.end.196
  br label %do.end.198

do.end.198:                                       ; preds = %do.cond.197
  br label %no_T

no_T:                                             ; preds = %do.end.198, %do.end.148, %do.end.101
  store %struct.gx_strip_bitmap_s* null, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  br label %sw.epilog.356

sw.bb.199:                                        ; preds = %if.end.43
  br label %do.body.200

do.body.200:                                      ; preds = %sw.bb.199
  br label %do.body.201

do.body.201:                                      ; preds = %do.body.200
  br label %do.body.202

do.body.202:                                      ; preds = %do.body.201
  %135 = load i32, i32* %x.addr, align 4, !tbaa !5
  %136 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or203 = or i32 %135, %136
  %cmp204 = icmp slt i32 %or203, 0
  br i1 %cmp204, label %if.then.206, label %if.end.217

if.then.206:                                      ; preds = %do.body.202
  %137 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp207 = icmp slt i32 %137, 0
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.then.206
  %138 = load i32, i32* %x.addr, align 4, !tbaa !5
  %139 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add210 = add nsw i32 %139, %138
  store i32 %add210, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %if.then.206
  %140 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp212 = icmp slt i32 %140, 0
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %if.end.211
  %141 = load i32, i32* %y.addr, align 4, !tbaa !5
  %142 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add215 = add nsw i32 %142, %141
  store i32 %add215, i32* %height.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %if.end.211
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %do.body.202
  br label %do.cond.218

do.cond.218:                                      ; preds = %if.end.217
  br label %do.end.219

do.end.219:                                       ; preds = %do.cond.218
  br label %do.body.220

do.body.220:                                      ; preds = %do.end.219
  %143 = load i32, i32* %width.addr, align 4, !tbaa !5
  %144 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width221 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %144, i32 0, i32 13
  %145 = load i32, i32* %width221, align 4, !tbaa !33
  %146 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub222 = sub nsw i32 %145, %146
  %cmp223 = icmp sgt i32 %143, %sub222
  br i1 %cmp223, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %do.body.220
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width226 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %147, i32 0, i32 13
  %148 = load i32, i32* %width226, align 4, !tbaa !33
  %149 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub227 = sub nsw i32 %148, %149
  store i32 %sub227, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.225, %do.body.220
  br label %do.cond.229

do.cond.229:                                      ; preds = %if.end.228
  br label %do.end.230

do.end.230:                                       ; preds = %do.cond.229
  br label %do.body.231

do.body.231:                                      ; preds = %do.end.230
  %150 = load i32, i32* %height.addr, align 4, !tbaa !5
  %151 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height232 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %151, i32 0, i32 14
  %152 = load i32, i32* %height232, align 4, !tbaa !34
  %153 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub233 = sub nsw i32 %152, %153
  %cmp234 = icmp sgt i32 %150, %sub233
  br i1 %cmp234, label %if.then.236, label %if.end.239

if.then.236:                                      ; preds = %do.body.231
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height237 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 14
  %155 = load i32, i32* %height237, align 4, !tbaa !34
  %156 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub238 = sub nsw i32 %155, %156
  store i32 %sub238, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.236, %do.body.231
  br label %do.cond.240

do.cond.240:                                      ; preds = %if.end.239
  br label %do.end.241

do.end.241:                                       ; preds = %do.cond.240
  br label %do.cond.242

do.cond.242:                                      ; preds = %do.end.241
  br label %do.end.243

do.end.243:                                       ; preds = %do.cond.242
  %157 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp244 = icmp sle i32 %157, 0
  br i1 %cmp244, label %if.then.249, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %do.end.243
  %158 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp247 = icmp sle i32 %158, 0
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %lor.lhs.false.246, %do.end.243
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.250:                                       ; preds = %lor.lhs.false.246
  br label %do.cond.251

do.cond.251:                                      ; preds = %if.end.250
  br label %do.end.252

do.end.252:                                       ; preds = %do.cond.251
  br label %sw.epilog.356

sw.bb.253:                                        ; preds = %if.end.43
  br label %do.body.254

do.body.254:                                      ; preds = %sw.bb.253
  br label %do.body.255

do.body.255:                                      ; preds = %do.body.254
  br label %do.body.256

do.body.256:                                      ; preds = %do.body.255
  %159 = load i32, i32* %x.addr, align 4, !tbaa !5
  %160 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or257 = or i32 %159, %160
  %cmp258 = icmp slt i32 %or257, 0
  br i1 %cmp258, label %if.then.260, label %if.end.271

if.then.260:                                      ; preds = %do.body.256
  %161 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp261 = icmp slt i32 %161, 0
  br i1 %cmp261, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %if.then.260
  %162 = load i32, i32* %x.addr, align 4, !tbaa !5
  %163 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add264 = add nsw i32 %163, %162
  store i32 %add264, i32* %width.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %if.then.260
  %164 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp266 = icmp slt i32 %164, 0
  br i1 %cmp266, label %if.then.268, label %if.end.270

if.then.268:                                      ; preds = %if.end.265
  %165 = load i32, i32* %y.addr, align 4, !tbaa !5
  %166 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add269 = add nsw i32 %166, %165
  store i32 %add269, i32* %height.addr, align 4, !tbaa !5
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.268, %if.end.265
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %do.body.256
  br label %do.cond.272

do.cond.272:                                      ; preds = %if.end.271
  br label %do.end.273

do.end.273:                                       ; preds = %do.cond.272
  br label %do.body.274

do.body.274:                                      ; preds = %do.end.273
  %167 = load i32, i32* %width.addr, align 4, !tbaa !5
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width275 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %168, i32 0, i32 13
  %169 = load i32, i32* %width275, align 4, !tbaa !33
  %170 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub276 = sub nsw i32 %169, %170
  %cmp277 = icmp sgt i32 %167, %sub276
  br i1 %cmp277, label %if.then.279, label %if.end.282

if.then.279:                                      ; preds = %do.body.274
  %171 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width280 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %171, i32 0, i32 13
  %172 = load i32, i32* %width280, align 4, !tbaa !33
  %173 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub281 = sub nsw i32 %172, %173
  store i32 %sub281, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.279, %do.body.274
  br label %do.cond.283

do.cond.283:                                      ; preds = %if.end.282
  br label %do.end.284

do.end.284:                                       ; preds = %do.cond.283
  br label %do.body.285

do.body.285:                                      ; preds = %do.end.284
  %174 = load i32, i32* %height.addr, align 4, !tbaa !5
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height286 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %175, i32 0, i32 14
  %176 = load i32, i32* %height286, align 4, !tbaa !34
  %177 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub287 = sub nsw i32 %176, %177
  %cmp288 = icmp sgt i32 %174, %sub287
  br i1 %cmp288, label %if.then.290, label %if.end.293

if.then.290:                                      ; preds = %do.body.285
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height291 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %178, i32 0, i32 14
  %179 = load i32, i32* %height291, align 4, !tbaa !34
  %180 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub292 = sub nsw i32 %179, %180
  store i32 %sub292, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.293

if.end.293:                                       ; preds = %if.then.290, %do.body.285
  br label %do.cond.294

do.cond.294:                                      ; preds = %if.end.293
  br label %do.end.295

do.end.295:                                       ; preds = %do.cond.294
  br label %do.cond.296

do.cond.296:                                      ; preds = %do.end.295
  br label %do.end.297

do.end.297:                                       ; preds = %do.cond.296
  %181 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp298 = icmp sle i32 %181, 0
  br i1 %cmp298, label %if.then.303, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %do.end.297
  %182 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp301 = icmp sle i32 %182, 0
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %lor.lhs.false.300, %do.end.297
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.304:                                       ; preds = %lor.lhs.false.300
  br label %do.cond.305

do.cond.305:                                      ; preds = %if.end.304
  br label %do.end.306

do.end.306:                                       ; preds = %do.cond.305
  %183 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %183, i32 0, i32 45
  %184 = load i8*, i8** %base, align 8, !tbaa !36
  store i8* %184, i8** %sdata.addr, align 8, !tbaa !1
  %185 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %185, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %sraster.addr, align 4, !tbaa !5
  br label %sw.epilog.356

sw.default:                                       ; preds = %if.end.43
  br label %do.body.307

do.body.307:                                      ; preds = %sw.default
  br label %do.body.308

do.body.308:                                      ; preds = %do.body.307
  %186 = load i32, i32* %x.addr, align 4, !tbaa !5
  %187 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or309 = or i32 %186, %187
  %cmp310 = icmp slt i32 %or309, 0
  br i1 %cmp310, label %if.then.312, label %if.end.328

if.then.312:                                      ; preds = %do.body.308
  %188 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp313 = icmp slt i32 %188, 0
  br i1 %cmp313, label %if.then.315, label %if.end.318

if.then.315:                                      ; preds = %if.then.312
  %189 = load i32, i32* %x.addr, align 4, !tbaa !5
  %190 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add316 = add nsw i32 %190, %189
  store i32 %add316, i32* %width.addr, align 4, !tbaa !5
  %191 = load i32, i32* %x.addr, align 4, !tbaa !5
  %192 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub317 = sub nsw i32 %192, %191
  store i32 %sub317, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.315, %if.then.312
  %193 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp319 = icmp slt i32 %193, 0
  br i1 %cmp319, label %if.then.321, label %if.end.327

if.then.321:                                      ; preds = %if.end.318
  %194 = load i32, i32* %y.addr, align 4, !tbaa !5
  %195 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add322 = add nsw i32 %195, %194
  store i32 %add322, i32* %height.addr, align 4, !tbaa !5
  %196 = load i32, i32* %y.addr, align 4, !tbaa !5
  %197 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul323 = mul i32 %196, %197
  %198 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext324 = sext i32 %mul323 to i64
  %idx.neg325 = sub i64 0, %idx.ext324
  %add.ptr326 = getelementptr inbounds i8, i8* %198, i64 %idx.neg325
  store i8* %add.ptr326, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.321, %if.end.318
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %do.body.308
  %199 = load i32, i32* %width.addr, align 4, !tbaa !5
  %200 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width329 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %200, i32 0, i32 13
  %201 = load i32, i32* %width329, align 4, !tbaa !33
  %202 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub330 = sub nsw i32 %201, %202
  %cmp331 = icmp sgt i32 %199, %sub330
  br i1 %cmp331, label %if.then.333, label %if.end.336

if.then.333:                                      ; preds = %if.end.328
  %203 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width334 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %203, i32 0, i32 13
  %204 = load i32, i32* %width334, align 4, !tbaa !33
  %205 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub335 = sub nsw i32 %204, %205
  store i32 %sub335, i32* %width.addr, align 4, !tbaa !5
  br label %if.end.336

if.end.336:                                       ; preds = %if.then.333, %if.end.328
  br label %do.cond.337

do.cond.337:                                      ; preds = %if.end.336
  br label %do.end.338

do.end.338:                                       ; preds = %do.cond.337
  %206 = load i32, i32* %height.addr, align 4, !tbaa !5
  %207 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height339 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %207, i32 0, i32 14
  %208 = load i32, i32* %height339, align 4, !tbaa !34
  %209 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub340 = sub nsw i32 %208, %209
  %cmp341 = icmp sgt i32 %206, %sub340
  br i1 %cmp341, label %if.then.343, label %if.end.346

if.then.343:                                      ; preds = %do.end.338
  %210 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height344 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %210, i32 0, i32 14
  %211 = load i32, i32* %height344, align 4, !tbaa !34
  %212 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub345 = sub nsw i32 %211, %212
  store i32 %sub345, i32* %height.addr, align 4, !tbaa !5
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.343, %do.end.338
  %213 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp347 = icmp sle i32 %213, 0
  br i1 %cmp347, label %if.then.352, label %lor.lhs.false.349

lor.lhs.false.349:                                ; preds = %if.end.346
  %214 = load i32, i32* %height.addr, align 4, !tbaa !5
  %cmp350 = icmp sle i32 %214, 0
  br i1 %cmp350, label %if.then.352, label %if.end.353

if.then.352:                                      ; preds = %lor.lhs.false.349, %if.end.346
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

if.end.353:                                       ; preds = %lor.lhs.false.349
  br label %do.cond.354

do.cond.354:                                      ; preds = %if.end.353
  br label %do.end.355

do.end.355:                                       ; preds = %do.cond.354
  br label %sw.epilog.356

sw.epilog.356:                                    ; preds = %do.end.355, %do.end.306, %do.end.252, %no_T
  %215 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %215, i32* %line_count, align 4, !tbaa !5
  %216 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  store i8* %216, i8** %srow, align 8, !tbaa !1
  %217 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom357 = sext i32 %217 to i64
  %218 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs358 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %218, i32 0, i32 52
  %219 = load i8**, i8*** %line_ptrs358, align 8, !tbaa !35
  %arrayidx359 = getelementptr inbounds i8*, i8** %219, i64 %idxprom357
  %220 = load i8*, i8** %arrayidx359, align 8, !tbaa !1
  store i8* %220, i8** %drow, align 8, !tbaa !1
  %221 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_strip_bitmap_s* %221, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.356
  %222 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %raster360 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %222, i32 0, i32 1
  %223 = load i32, i32* %raster360, align 4, !tbaa !37
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.356
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %223, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %traster, align 4, !tbaa !5
  %224 = load i32, i32* %y.addr, align 4, !tbaa !5
  %225 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %add361 = add nsw i32 %224, %225
  store i32 %add361, i32* %ty, align 4, !tbaa !5
  %226 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %cmp362 = icmp eq %struct.gx_strip_bitmap_s* %226, null
  br i1 %cmp362, label %if.then.364, label %if.else.523

if.then.364:                                      ; preds = %cond.end
  %227 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %227) #1
  %228 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and365 = and i32 %228, 7
  store i32 %and365, i32* %dbit, align 4, !tbaa !5
  %229 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %229) #1
  %230 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %and366 = and i32 %230, 7
  store i32 %and366, i32* %sbit, align 4, !tbaa !5
  %231 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr367 = ashr i32 %231, 3
  %232 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext368 = sext i32 %shr367 to i64
  %add.ptr369 = getelementptr inbounds i8, i8* %232, i64 %idx.ext368
  store i8* %add.ptr369, i8** %drow, align 8, !tbaa !1
  %233 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %shr370 = ashr i32 %233, 3
  %234 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext371 = sext i32 %shr370 to i64
  %add.ptr372 = getelementptr inbounds i8, i8* %234, i64 %idx.ext371
  store i8* %add.ptr372, i8** %srow, align 8, !tbaa !1
  %235 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp373 = icmp slt i32 %235, 32
  br i1 %cmp373, label %if.then.375, label %if.else

if.then.375:                                      ; preds = %if.then.364
  %236 = bitcast i32* %sskew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %236) #1
  %237 = load i32, i32* %sbit, align 4, !tbaa !5
  %238 = load i32, i32* %dbit, align 4, !tbaa !5
  %sub376 = sub nsw i32 %237, %238
  store i32 %sub376, i32* %sskew, align 4, !tbaa !5
  %239 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %239) #1
  %240 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom377 = zext i32 %240 to i64
  %arrayidx378 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom377
  %241 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx378, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %241, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %lmask) #1
  call void @llvm.lifetime.start(i64 1, i8* %rmask) #1
  %242 = load i32, i32* %dbit, align 4, !tbaa !5
  %shr379 = ashr i32 255, %242
  %conv380 = trunc i32 %shr379 to i8
  store i8 %conv380, i8* %lmask, align 1, !tbaa !9
  %243 = load i32, i32* %dbit, align 4, !tbaa !5
  %244 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add381 = add nsw i32 %244, %243
  store i32 %add381, i32* %width.addr, align 4, !tbaa !5
  %245 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub382 = sub nsw i32 %245, 1
  %neg = xor i32 %sub382, -1
  %and383 = and i32 %neg, 7
  %shl384 = shl i32 255, %and383
  %conv385 = trunc i32 %shl384 to i8
  store i8 %conv385, i8* %rmask, align 1, !tbaa !9
  %246 = load i32, i32* %sskew, align 4, !tbaa !5
  %cmp386 = icmp slt i32 %246, 0
  br i1 %cmp386, label %if.then.388, label %if.end.390

if.then.388:                                      ; preds = %if.then.375
  %247 = load i8*, i8** %srow, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %247, i32 -1
  store i8* %incdec.ptr, i8** %srow, align 8, !tbaa !1
  %248 = load i32, i32* %sskew, align 4, !tbaa !5
  %add389 = add nsw i32 %248, 8
  store i32 %add389, i32* %sskew, align 4, !tbaa !5
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.388, %if.then.375
  %249 = load i32, i32* %width.addr, align 4, !tbaa !5
  %cmp391 = icmp slt i32 %249, 8
  br i1 %cmp391, label %if.then.393, label %if.end.398

if.then.393:                                      ; preds = %if.end.390
  %250 = load i8, i8* %rmask, align 1, !tbaa !9
  %conv394 = zext i8 %250 to i32
  %251 = load i8, i8* %lmask, align 1, !tbaa !9
  %conv395 = zext i8 %251 to i32
  %and396 = and i32 %conv395, %conv394
  %conv397 = trunc i32 %and396 to i8
  store i8 %conv397, i8* %lmask, align 1, !tbaa !9
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.393, %if.end.390
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.398
  %252 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec = add nsw i32 %252, -1
  store i32 %dec, i32* %line_count, align 4, !tbaa !5
  %cmp399 = icmp sgt i32 %252, 0
  br i1 %cmp399, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %253 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %253) #1
  %254 = load i8*, i8** %drow, align 8, !tbaa !1
  store i8* %254, i8** %dptr, align 8, !tbaa !1
  %255 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %255) #1
  %256 = load i8*, i8** %srow, align 8, !tbaa !1
  store i8* %256, i8** %sptr, align 8, !tbaa !1
  %257 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %257) #1
  %258 = load i32, i32* %width.addr, align 4, !tbaa !5
  %sub401 = sub nsw i32 %258, 8
  store i32 %sub401, i32* %left, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbyte) #1
  %259 = load i8*, i8** %dptr, align 8, !tbaa !1
  %260 = load i8, i8* %259, align 1, !tbaa !9
  store i8 %260, i8* %dbyte, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %sbyte) #1
  %261 = load i32, i32* %sskew, align 4, !tbaa !5
  %tobool402 = icmp ne i32 %261, 0
  br i1 %tobool402, label %cond.true.403, label %cond.false.412

cond.true.403:                                    ; preds = %for.body
  %262 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx404 = getelementptr inbounds i8, i8* %262, i64 0
  %263 = load i8, i8* %arrayidx404, align 1, !tbaa !9
  %conv405 = zext i8 %263 to i32
  %264 = load i32, i32* %sskew, align 4, !tbaa !5
  %shl406 = shl i32 %conv405, %264
  %265 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx407 = getelementptr inbounds i8, i8* %265, i64 1
  %266 = load i8, i8* %arrayidx407, align 1, !tbaa !9
  %conv408 = zext i8 %266 to i32
  %267 = load i32, i32* %sskew, align 4, !tbaa !5
  %sub409 = sub nsw i32 8, %267
  %shr410 = ashr i32 %conv408, %sub409
  %add411 = add nsw i32 %shl406, %shr410
  br label %cond.end.414

cond.false.412:                                   ; preds = %for.body
  %268 = load i8*, i8** %sptr, align 8, !tbaa !1
  %269 = load i8, i8* %268, align 1, !tbaa !9
  %conv413 = zext i8 %269 to i32
  br label %cond.end.414

cond.end.414:                                     ; preds = %cond.false.412, %cond.true.403
  %cond415 = phi i32 [ %add411, %cond.true.403 ], [ %conv413, %cond.false.412 ]
  %conv416 = trunc i32 %cond415 to i8
  store i8 %conv416, i8* %sbyte, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %result) #1
  %270 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %271 = load i8, i8* %dbyte, align 1, !tbaa !9
  %conv417 = zext i8 %271 to i64
  %272 = load i8, i8* %sbyte, align 1, !tbaa !9
  %conv418 = zext i8 %272 to i64
  %call419 = call i64 %270(i64 %conv417, i64 %conv418, i64 0) #3
  %conv420 = trunc i64 %call419 to i8
  store i8 %conv420, i8* %result, align 1, !tbaa !9
  %273 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr421 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr421, i8** %sptr, align 8, !tbaa !1
  %274 = load i8, i8* %result, align 1, !tbaa !9
  %conv422 = zext i8 %274 to i32
  %275 = load i8, i8* %lmask, align 1, !tbaa !9
  %conv423 = zext i8 %275 to i32
  %and424 = and i32 %conv422, %conv423
  %276 = load i8, i8* %dbyte, align 1, !tbaa !9
  %conv425 = zext i8 %276 to i32
  %277 = load i8, i8* %lmask, align 1, !tbaa !9
  %conv426 = zext i8 %277 to i32
  %neg427 = xor i32 %conv426, -1
  %and428 = and i32 %conv425, %neg427
  %or429 = or i32 %and424, %and428
  %conv430 = trunc i32 %or429 to i8
  %278 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr431 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %incdec.ptr431, i8** %dptr, align 8, !tbaa !1
  store i8 %conv430, i8* %278, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 1, i8* %result) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbyte) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbyte) #1
  %279 = load i32, i32* %left, align 4, !tbaa !5
  %cmp432 = icmp sle i32 %279, 0
  br i1 %cmp432, label %if.then.434, label %if.end.435

if.then.434:                                      ; preds = %cond.end.414
  store i32 50, i32* %cleanup.dest.slot
  br label %cleanup

if.end.435:                                       ; preds = %cond.end.414
  %280 = load i32, i32* %left, align 4, !tbaa !5
  %sub436 = sub nsw i32 %280, 8
  store i32 %sub436, i32* %left, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cond.end.453, %if.end.435
  %281 = load i32, i32* %left, align 4, !tbaa !5
  %cmp437 = icmp sgt i32 %281, 0
  br i1 %cmp437, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %dbyte439) #1
  %282 = load i8*, i8** %dptr, align 8, !tbaa !1
  %283 = load i8, i8* %282, align 1, !tbaa !9
  store i8 %283, i8* %dbyte439, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %sbyte440) #1
  %284 = load i32, i32* %sskew, align 4, !tbaa !5
  %tobool441 = icmp ne i32 %284, 0
  br i1 %tobool441, label %cond.true.442, label %cond.false.451

cond.true.442:                                    ; preds = %while.body
  %285 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds i8, i8* %285, i64 0
  %286 = load i8, i8* %arrayidx443, align 1, !tbaa !9
  %conv444 = zext i8 %286 to i32
  %287 = load i32, i32* %sskew, align 4, !tbaa !5
  %shl445 = shl i32 %conv444, %287
  %288 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx446 = getelementptr inbounds i8, i8* %288, i64 1
  %289 = load i8, i8* %arrayidx446, align 1, !tbaa !9
  %conv447 = zext i8 %289 to i32
  %290 = load i32, i32* %sskew, align 4, !tbaa !5
  %sub448 = sub nsw i32 8, %290
  %shr449 = ashr i32 %conv447, %sub448
  %add450 = add nsw i32 %shl445, %shr449
  br label %cond.end.453

cond.false.451:                                   ; preds = %while.body
  %291 = load i8*, i8** %sptr, align 8, !tbaa !1
  %292 = load i8, i8* %291, align 1, !tbaa !9
  %conv452 = zext i8 %292 to i32
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.false.451, %cond.true.442
  %cond454 = phi i32 [ %add450, %cond.true.442 ], [ %conv452, %cond.false.451 ]
  %conv455 = trunc i32 %cond454 to i8
  store i8 %conv455, i8* %sbyte440, align 1, !tbaa !9
  %293 = load i8*, i8** %sptr, align 8, !tbaa !1
  %incdec.ptr456 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr456, i8** %sptr, align 8, !tbaa !1
  %294 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %295 = load i8, i8* %dbyte439, align 1, !tbaa !9
  %conv457 = zext i8 %295 to i64
  %296 = load i8, i8* %sbyte440, align 1, !tbaa !9
  %conv458 = zext i8 %296 to i64
  %call459 = call i64 %294(i64 %conv457, i64 %conv458, i64 0) #3
  %conv460 = trunc i64 %call459 to i8
  %297 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr461 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %incdec.ptr461, i8** %dptr, align 8, !tbaa !1
  store i8 %conv460, i8* %297, align 1, !tbaa !9
  %298 = load i32, i32* %left, align 4, !tbaa !5
  %sub462 = sub nsw i32 %298, 8
  store i32 %sub462, i32* %left, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %sbyte440) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbyte439) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %299 = load i32, i32* %left, align 4, !tbaa !5
  %add463 = add nsw i32 %299, 8
  store i32 %add463, i32* %left, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %dbyte464) #1
  %300 = load i8*, i8** %dptr, align 8, !tbaa !1
  %301 = load i8, i8* %300, align 1, !tbaa !9
  store i8 %301, i8* %dbyte464, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %sbyte465) #1
  %302 = load i32, i32* %sskew, align 4, !tbaa !5
  %tobool466 = icmp ne i32 %302, 0
  br i1 %tobool466, label %cond.true.467, label %cond.false.476

cond.true.467:                                    ; preds = %while.end
  %303 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx468 = getelementptr inbounds i8, i8* %303, i64 0
  %304 = load i8, i8* %arrayidx468, align 1, !tbaa !9
  %conv469 = zext i8 %304 to i32
  %305 = load i32, i32* %sskew, align 4, !tbaa !5
  %shl470 = shl i32 %conv469, %305
  %306 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx471 = getelementptr inbounds i8, i8* %306, i64 1
  %307 = load i8, i8* %arrayidx471, align 1, !tbaa !9
  %conv472 = zext i8 %307 to i32
  %308 = load i32, i32* %sskew, align 4, !tbaa !5
  %sub473 = sub nsw i32 8, %308
  %shr474 = ashr i32 %conv472, %sub473
  %add475 = add nsw i32 %shl470, %shr474
  br label %cond.end.478

cond.false.476:                                   ; preds = %while.end
  %309 = load i8*, i8** %sptr, align 8, !tbaa !1
  %310 = load i8, i8* %309, align 1, !tbaa !9
  %conv477 = zext i8 %310 to i32
  br label %cond.end.478

cond.end.478:                                     ; preds = %cond.false.476, %cond.true.467
  %cond479 = phi i32 [ %add475, %cond.true.467 ], [ %conv477, %cond.false.476 ]
  %conv480 = trunc i32 %cond479 to i8
  store i8 %conv480, i8* %sbyte465, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %result481) #1
  %311 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc, align 8, !tbaa !1
  %312 = load i8, i8* %dbyte464, align 1, !tbaa !9
  %conv482 = zext i8 %312 to i64
  %313 = load i8, i8* %sbyte465, align 1, !tbaa !9
  %conv483 = zext i8 %313 to i64
  %call484 = call i64 %311(i64 %conv482, i64 %conv483, i64 0) #3
  %conv485 = trunc i64 %call484 to i8
  store i8 %conv485, i8* %result481, align 1, !tbaa !9
  %314 = load i8, i8* %result481, align 1, !tbaa !9
  %conv486 = zext i8 %314 to i32
  %315 = load i8, i8* %rmask, align 1, !tbaa !9
  %conv487 = zext i8 %315 to i32
  %and488 = and i32 %conv486, %conv487
  %316 = load i8, i8* %dbyte464, align 1, !tbaa !9
  %conv489 = zext i8 %316 to i32
  %317 = load i8, i8* %rmask, align 1, !tbaa !9
  %conv490 = zext i8 %317 to i32
  %neg491 = xor i32 %conv490, -1
  %and492 = and i32 %conv489, %neg491
  %or493 = or i32 %and488, %and492
  %conv494 = trunc i32 %or493 to i8
  %318 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv494, i8* %318, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 1, i8* %result481) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbyte465) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbyte464) #1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end.478, %if.then.434
  %319 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %320) #1
  %321 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %321) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 50, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %322 = load i32, i32* %draster, align 4, !tbaa !5
  %323 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext497 = zext i32 %322 to i64
  %add.ptr498 = getelementptr inbounds i8, i8* %323, i64 %idx.ext497
  store i8* %add.ptr498, i8** %drow, align 8, !tbaa !1
  %324 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %325 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext499 = zext i32 %324 to i64
  %add.ptr500 = getelementptr inbounds i8, i8* %325, i64 %idx.ext499
  store i8* %add.ptr500, i8** %srow, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end(i64 1, i8* %rmask) #1
  call void @llvm.lifetime.end(i64 1, i8* %lmask) #1
  %326 = bitcast i64 (i64, i64, i64)** %proc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #1
  %327 = bitcast i32* %sskew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  br label %if.end.522

if.else:                                          ; preds = %if.then.364
  %328 = load i32, i32* %rop, align 4, !tbaa !9
  call void @rop_get_run_op(%struct.rop_run_op_s* %ropper, i32 %328, i32 1, i32 0) #3
  br label %for.cond.501

for.cond.501:                                     ; preds = %for.inc.509, %if.else
  %329 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec502 = add nsw i32 %329, -1
  store i32 %dec502, i32* %line_count, align 4, !tbaa !5
  %cmp503 = icmp sgt i32 %329, 0
  br i1 %cmp503, label %for.body.505, label %for.end.514

for.body.505:                                     ; preds = %for.cond.501
  %330 = load i8*, i8** %srow, align 8, !tbaa !1
  %s = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 2
  %b = bitcast %union.rop_source_s* %s to %struct.anon*
  %ptr = getelementptr inbounds %struct.anon, %struct.anon* %b, i32 0, i32 0
  store i8* %330, i8** %ptr, align 8, !tbaa !40
  %331 = load i32, i32* %sbit, align 4, !tbaa !5
  %s506 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 2
  %b507 = bitcast %union.rop_source_s* %s506 to %struct.anon*
  %pos = getelementptr inbounds %struct.anon, %struct.anon* %b507, i32 0, i32 1
  store i32 %331, i32* %pos, align 4, !tbaa !42
  %332 = load i32, i32* %dbit, align 4, !tbaa !5
  %conv508 = trunc i32 %332 to i8
  %dpos = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 7
  store i8 %conv508, i8* %dpos, align 1, !tbaa !43
  %run = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 0
  %333 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %run, align 8, !tbaa !45
  %334 = load i8*, i8** %drow, align 8, !tbaa !1
  %335 = load i32, i32* %width.addr, align 4, !tbaa !5
  call void %333(%struct.rop_run_op_s* %ropper, i8* %334, i32 %335) #3
  br label %for.inc.509

for.inc.509:                                      ; preds = %for.body.505
  %336 = load i32, i32* %draster, align 4, !tbaa !5
  %337 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext510 = zext i32 %336 to i64
  %add.ptr511 = getelementptr inbounds i8, i8* %337, i64 %idx.ext510
  store i8* %add.ptr511, i8** %drow, align 8, !tbaa !1
  %338 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %339 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext512 = zext i32 %338 to i64
  %add.ptr513 = getelementptr inbounds i8, i8* %339, i64 %idx.ext512
  store i8* %add.ptr513, i8** %srow, align 8, !tbaa !1
  br label %for.cond.501

for.end.514:                                      ; preds = %for.cond.501
  br label %do.body.515

do.body.515:                                      ; preds = %for.end.514
  %340 = bitcast %struct.rop_run_op_s** %OP2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %340) #1
  store %struct.rop_run_op_s* %ropper, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  %341 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  %release = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %341, i32 0, i32 10
  %342 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release, align 8, !tbaa !46
  %tobool516 = icmp ne void (%struct.rop_run_op_s*)* %342, null
  br i1 %tobool516, label %if.then.517, label %if.end.519

if.then.517:                                      ; preds = %do.body.515
  %343 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  %release518 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %343, i32 0, i32 10
  %344 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release518, align 8, !tbaa !46
  %345 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2, align 8, !tbaa !1
  call void %344(%struct.rop_run_op_s* %345) #3
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.517, %do.body.515
  %346 = bitcast %struct.rop_run_op_s** %OP2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %346) #1
  br label %do.cond.520

do.cond.520:                                      ; preds = %if.end.519
  br label %do.end.521

do.end.521:                                       ; preds = %do.cond.520
  br label %if.end.522

if.end.522:                                       ; preds = %do.end.521, %for.end
  %347 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %347) #1
  %348 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %348) #1
  br label %if.end.967

if.else.523:                                      ; preds = %cond.end
  %349 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %349, i32 0, i32 4
  %350 = load i16, i16* %rep_width, align 2, !tbaa !47
  %conv524 = zext i16 %350 to i32
  %cmp525 = icmp sgt i32 %conv524, 32
  br i1 %cmp525, label %if.then.527, label %if.else.618

if.then.527:                                      ; preds = %if.else.523
  %351 = load i32, i32* %rop, align 4, !tbaa !9
  call void @rop_get_run_op(%struct.rop_run_op_s* %ropper, i32 %351, i32 1, i32 0) #3
  br label %for.cond.528

for.cond.528:                                     ; preds = %for.inc.603, %if.then.527
  %352 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec529 = add nsw i32 %352, -1
  store i32 %dec529, i32* %line_count, align 4, !tbaa !5
  %cmp530 = icmp sgt i32 %352, 0
  br i1 %cmp530, label %for.body.532, label %for.end.608

for.body.532:                                     ; preds = %for.cond.528
  %353 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %353) #1
  %354 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %354, i32* %sx, align 4, !tbaa !5
  %355 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %355) #1
  %356 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %356, i32* %dx, align 4, !tbaa !5
  %357 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %357) #1
  %358 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %358, i32* %w, align 4, !tbaa !5
  %359 = bitcast i8** %trow to i8*
  call void @llvm.lifetime.start(i64 8, i8* %359) #1
  %360 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %360, i32 0, i32 0
  %361 = load i8*, i8** %data, align 8, !tbaa !48
  %362 = load i32, i32* %ty, align 4, !tbaa !5
  %363 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %363, i32 0, i32 5
  %364 = load i16, i16* %rep_height, align 2, !tbaa !49
  %conv533 = zext i16 %364 to i32
  %rem = srem i32 %362, %conv533
  %365 = load i32, i32* %traster, align 4, !tbaa !5
  %mul534 = mul i32 %rem, %365
  %idx.ext535 = zext i32 %mul534 to i64
  %add.ptr536 = getelementptr inbounds i8, i8* %361, i64 %idx.ext535
  store i8* %add.ptr536, i8** %trow, align 8, !tbaa !1
  %366 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %366) #1
  %367 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %367, i32 0, i32 7
  %368 = load i16, i16* %shift, align 2, !tbaa !50
  %conv537 = zext i16 %368 to i32
  %cmp538 = icmp eq i32 %conv537, 0
  br i1 %cmp538, label %cond.true.540, label %cond.false.541

cond.true.540:                                    ; preds = %for.body.532
  %369 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  br label %cond.end.547

cond.false.541:                                   ; preds = %for.body.532
  %370 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %371 = load i32, i32* %ty, align 4, !tbaa !5
  %372 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height542 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %372, i32 0, i32 5
  %373 = load i16, i16* %rep_height542, align 2, !tbaa !49
  %conv543 = zext i16 %373 to i32
  %div = sdiv i32 %371, %conv543
  %374 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %374, i32 0, i32 6
  %375 = load i16, i16* %rep_shift, align 2, !tbaa !51
  %conv544 = zext i16 %375 to i32
  %mul545 = mul nsw i32 %div, %conv544
  %add546 = add nsw i32 %370, %mul545
  br label %cond.end.547

cond.end.547:                                     ; preds = %cond.false.541, %cond.true.540
  %cond548 = phi i32 [ %369, %cond.true.540 ], [ %add546, %cond.false.541 ]
  store i32 %cond548, i32* %xoff, align 4, !tbaa !5
  %376 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.start(i64 4, i8* %376) #1
  %377 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %377) #1
  %378 = load i32, i32* %dx, align 4, !tbaa !5
  %379 = load i32, i32* %xoff, align 4, !tbaa !5
  %add549 = add nsw i32 %378, %379
  %380 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width550 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %380, i32 0, i32 4
  %381 = load i16, i16* %rep_width550, align 2, !tbaa !47
  %conv551 = zext i16 %381 to i32
  %rem552 = srem i32 %add549, %conv551
  store i32 %rem552, i32* %tx, align 4, !tbaa !5
  br label %for.cond.553

for.cond.553:                                     ; preds = %for.inc.598, %cond.end.547
  %382 = load i32, i32* %w, align 4, !tbaa !5
  %cmp554 = icmp sgt i32 %382, 0
  br i1 %cmp554, label %for.body.556, label %for.end.602

for.body.556:                                     ; preds = %for.cond.553
  %383 = bitcast i32* %dbit557 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %383) #1
  %384 = load i32, i32* %dx, align 4, !tbaa !5
  %and558 = and i32 %384, 7
  store i32 %and558, i32* %dbit557, align 4, !tbaa !5
  %385 = bitcast i32* %sbit559 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %385) #1
  %386 = load i32, i32* %sx, align 4, !tbaa !5
  %and560 = and i32 %386, 7
  store i32 %and560, i32* %sbit559, align 4, !tbaa !5
  %387 = bitcast i32* %tbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %387) #1
  %388 = load i32, i32* %tx, align 4, !tbaa !5
  %and561 = and i32 %388, 7
  store i32 %and561, i32* %tbit, align 4, !tbaa !5
  %389 = bitcast i8** %dptr562 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %389) #1
  %390 = load i8*, i8** %drow, align 8, !tbaa !1
  %391 = load i32, i32* %dx, align 4, !tbaa !5
  %shr563 = ashr i32 %391, 3
  %idx.ext564 = sext i32 %shr563 to i64
  %add.ptr565 = getelementptr inbounds i8, i8* %390, i64 %idx.ext564
  store i8* %add.ptr565, i8** %dptr562, align 8, !tbaa !1
  %392 = bitcast i8** %sptr566 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %392) #1
  %393 = load i8*, i8** %srow, align 8, !tbaa !1
  %394 = load i32, i32* %sx, align 4, !tbaa !5
  %shr567 = ashr i32 %394, 3
  %idx.ext568 = sext i32 %shr567 to i64
  %add.ptr569 = getelementptr inbounds i8, i8* %393, i64 %idx.ext568
  store i8* %add.ptr569, i8** %sptr566, align 8, !tbaa !1
  %395 = bitcast i8** %tptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %395) #1
  %396 = load i8*, i8** %trow, align 8, !tbaa !1
  %397 = load i32, i32* %tx, align 4, !tbaa !5
  %shr570 = ashr i32 %397, 3
  %idx.ext571 = sext i32 %shr570 to i64
  %add.ptr572 = getelementptr inbounds i8, i8* %396, i64 %idx.ext571
  store i8* %add.ptr572, i8** %tptr, align 8, !tbaa !1
  %398 = load i32, i32* %w, align 4, !tbaa !5
  %399 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %399, i32 0, i32 2
  %x573 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %400 = load i32, i32* %x573, align 4, !tbaa !52
  %401 = load i32, i32* %tx, align 4, !tbaa !5
  %sub574 = sub nsw i32 %400, %401
  %cmp575 = icmp slt i32 %398, %sub574
  br i1 %cmp575, label %cond.true.577, label %cond.false.578

cond.true.577:                                    ; preds = %for.body.556
  %402 = load i32, i32* %w, align 4, !tbaa !5
  br label %cond.end.582

cond.false.578:                                   ; preds = %for.body.556
  %403 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size579 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %403, i32 0, i32 2
  %x580 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size579, i32 0, i32 0
  %404 = load i32, i32* %x580, align 4, !tbaa !52
  %405 = load i32, i32* %tx, align 4, !tbaa !5
  %sub581 = sub nsw i32 %404, %405
  br label %cond.end.582

cond.end.582:                                     ; preds = %cond.false.578, %cond.true.577
  %cond583 = phi i32 [ %402, %cond.true.577 ], [ %sub581, %cond.false.578 ]
  store i32 %cond583, i32* %nw, align 4, !tbaa !5
  %406 = load i8*, i8** %sptr566, align 8, !tbaa !1
  %s584 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 2
  %b585 = bitcast %union.rop_source_s* %s584 to %struct.anon*
  %ptr586 = getelementptr inbounds %struct.anon, %struct.anon* %b585, i32 0, i32 0
  store i8* %406, i8** %ptr586, align 8, !tbaa !40
  %407 = load i32, i32* %sbit559, align 4, !tbaa !5
  %s587 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 2
  %b588 = bitcast %union.rop_source_s* %s587 to %struct.anon*
  %pos589 = getelementptr inbounds %struct.anon, %struct.anon* %b588, i32 0, i32 1
  store i32 %407, i32* %pos589, align 4, !tbaa !42
  %408 = load i8*, i8** %tptr, align 8, !tbaa !1
  %t = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 3
  %b590 = bitcast %union.rop_source_s* %t to %struct.anon*
  %ptr591 = getelementptr inbounds %struct.anon, %struct.anon* %b590, i32 0, i32 0
  store i8* %408, i8** %ptr591, align 8, !tbaa !40
  %409 = load i32, i32* %tbit, align 4, !tbaa !5
  %t592 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 3
  %b593 = bitcast %union.rop_source_s* %t592 to %struct.anon*
  %pos594 = getelementptr inbounds %struct.anon, %struct.anon* %b593, i32 0, i32 1
  store i32 %409, i32* %pos594, align 4, !tbaa !42
  %410 = load i32, i32* %dbit557, align 4, !tbaa !5
  %conv595 = trunc i32 %410 to i8
  %dpos596 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 7
  store i8 %conv595, i8* %dpos596, align 1, !tbaa !43
  %run597 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %ropper, i32 0, i32 0
  %411 = load void (%struct.rop_run_op_s*, i8*, i32)*, void (%struct.rop_run_op_s*, i8*, i32)** %run597, align 8, !tbaa !45
  %412 = load i8*, i8** %dptr562, align 8, !tbaa !1
  %413 = load i32, i32* %nw, align 4, !tbaa !5
  call void %411(%struct.rop_run_op_s* %ropper, i8* %412, i32 %413) #3
  %414 = bitcast i8** %tptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %414) #1
  %415 = bitcast i8** %sptr566 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %415) #1
  %416 = bitcast i8** %dptr562 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %416) #1
  %417 = bitcast i32* %tbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %417) #1
  %418 = bitcast i32* %sbit559 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %418) #1
  %419 = bitcast i32* %dbit557 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %419) #1
  br label %for.inc.598

for.inc.598:                                      ; preds = %cond.end.582
  %420 = load i32, i32* %nw, align 4, !tbaa !5
  %421 = load i32, i32* %sx, align 4, !tbaa !5
  %add599 = add nsw i32 %421, %420
  store i32 %add599, i32* %sx, align 4, !tbaa !5
  %422 = load i32, i32* %nw, align 4, !tbaa !5
  %423 = load i32, i32* %dx, align 4, !tbaa !5
  %add600 = add nsw i32 %423, %422
  store i32 %add600, i32* %dx, align 4, !tbaa !5
  %424 = load i32, i32* %nw, align 4, !tbaa !5
  %425 = load i32, i32* %w, align 4, !tbaa !5
  %sub601 = sub nsw i32 %425, %424
  store i32 %sub601, i32* %w, align 4, !tbaa !5
  store i32 0, i32* %tx, align 4, !tbaa !5
  br label %for.cond.553

for.end.602:                                      ; preds = %for.cond.553
  %426 = bitcast i32* %tx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %426) #1
  %427 = bitcast i32* %nw to i8*
  call void @llvm.lifetime.end(i64 4, i8* %427) #1
  %428 = bitcast i32* %xoff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %428) #1
  %429 = bitcast i8** %trow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %429) #1
  %430 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %430) #1
  %431 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %431) #1
  %432 = bitcast i32* %sx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %432) #1
  br label %for.inc.603

for.inc.603:                                      ; preds = %for.end.602
  %433 = load i32, i32* %draster, align 4, !tbaa !5
  %434 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext604 = zext i32 %433 to i64
  %add.ptr605 = getelementptr inbounds i8, i8* %434, i64 %idx.ext604
  store i8* %add.ptr605, i8** %drow, align 8, !tbaa !1
  %435 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %436 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext606 = zext i32 %435 to i64
  %add.ptr607 = getelementptr inbounds i8, i8* %436, i64 %idx.ext606
  store i8* %add.ptr607, i8** %srow, align 8, !tbaa !1
  %437 = load i32, i32* %ty, align 4, !tbaa !5
  %inc = add nsw i32 %437, 1
  store i32 %inc, i32* %ty, align 4, !tbaa !5
  br label %for.cond.528

for.end.608:                                      ; preds = %for.cond.528
  br label %do.body.609

do.body.609:                                      ; preds = %for.end.608
  %438 = bitcast %struct.rop_run_op_s** %OP2610 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %438) #1
  store %struct.rop_run_op_s* %ropper, %struct.rop_run_op_s** %OP2610, align 8, !tbaa !1
  %439 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2610, align 8, !tbaa !1
  %release611 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %439, i32 0, i32 10
  %440 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release611, align 8, !tbaa !46
  %tobool612 = icmp ne void (%struct.rop_run_op_s*)* %440, null
  br i1 %tobool612, label %if.then.613, label %if.end.615

if.then.613:                                      ; preds = %do.body.609
  %441 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2610, align 8, !tbaa !1
  %release614 = getelementptr inbounds %struct.rop_run_op_s, %struct.rop_run_op_s* %441, i32 0, i32 10
  %442 = load void (%struct.rop_run_op_s*)*, void (%struct.rop_run_op_s*)** %release614, align 8, !tbaa !46
  %443 = load %struct.rop_run_op_s*, %struct.rop_run_op_s** %OP2610, align 8, !tbaa !1
  call void %442(%struct.rop_run_op_s* %443) #3
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.613, %do.body.609
  %444 = bitcast %struct.rop_run_op_s** %OP2610 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  br label %do.cond.616

do.cond.616:                                      ; preds = %if.end.615
  br label %do.end.617

do.end.617:                                       ; preds = %do.cond.616
  br label %if.end.966

if.else.618:                                      ; preds = %if.else.523
  %445 = load i8*, i8** %srow, align 8, !tbaa !1
  %cmp619 = icmp eq i8* %445, null
  br i1 %cmp619, label %if.then.621, label %if.else.773

if.then.621:                                      ; preds = %if.else.618
  %446 = bitcast i64 (i64, i64, i64)** %proc622 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %446) #1
  %447 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom623 = zext i32 %447 to i64
  %arrayidx624 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom623
  %448 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx624, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %448, i64 (i64, i64, i64)** %proc622, align 8, !tbaa !1
  br label %for.cond.625

for.cond.625:                                     ; preds = %for.inc.768, %if.then.621
  %449 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec626 = add nsw i32 %449, -1
  store i32 %dec626, i32* %line_count, align 4, !tbaa !5
  %cmp627 = icmp sgt i32 %449, 0
  br i1 %cmp627, label %for.body.629, label %for.end.772

for.body.629:                                     ; preds = %for.cond.625
  %450 = bitcast i32* %dx630 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %450) #1
  %451 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %451, i32* %dx630, align 4, !tbaa !5
  %452 = bitcast i32* %w631 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %452) #1
  %453 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %453, i32* %w631, align 4, !tbaa !5
  %454 = bitcast i8** %trow632 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %454) #1
  %455 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data633 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %455, i32 0, i32 0
  %456 = load i8*, i8** %data633, align 8, !tbaa !48
  %457 = load i32, i32* %ty, align 4, !tbaa !5
  %458 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height634 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %458, i32 0, i32 5
  %459 = load i16, i16* %rep_height634, align 2, !tbaa !49
  %conv635 = zext i16 %459 to i32
  %rem636 = srem i32 %457, %conv635
  %460 = load i32, i32* %traster, align 4, !tbaa !5
  %mul637 = mul i32 %rem636, %460
  %idx.ext638 = zext i32 %mul637 to i64
  %add.ptr639 = getelementptr inbounds i8, i8* %456, i64 %idx.ext638
  store i8* %add.ptr639, i8** %trow632, align 8, !tbaa !1
  %461 = bitcast i32* %xoff640 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %461) #1
  %462 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %shift641 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %462, i32 0, i32 7
  %463 = load i16, i16* %shift641, align 2, !tbaa !50
  %conv642 = zext i16 %463 to i32
  %cmp643 = icmp eq i32 %conv642, 0
  br i1 %cmp643, label %cond.true.645, label %cond.false.646

cond.true.645:                                    ; preds = %for.body.629
  %464 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  br label %cond.end.654

cond.false.646:                                   ; preds = %for.body.629
  %465 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %466 = load i32, i32* %ty, align 4, !tbaa !5
  %467 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height647 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %467, i32 0, i32 5
  %468 = load i16, i16* %rep_height647, align 2, !tbaa !49
  %conv648 = zext i16 %468 to i32
  %div649 = sdiv i32 %466, %conv648
  %469 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_shift650 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %469, i32 0, i32 6
  %470 = load i16, i16* %rep_shift650, align 2, !tbaa !51
  %conv651 = zext i16 %470 to i32
  %mul652 = mul nsw i32 %div649, %conv651
  %add653 = add nsw i32 %465, %mul652
  br label %cond.end.654

cond.end.654:                                     ; preds = %cond.false.646, %cond.true.645
  %cond655 = phi i32 [ %464, %cond.true.645 ], [ %add653, %cond.false.646 ]
  store i32 %cond655, i32* %xoff640, align 4, !tbaa !5
  %471 = bitcast i32* %nw656 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %471) #1
  %472 = bitcast i32* %tx657 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %472) #1
  %473 = load i32, i32* %dx630, align 4, !tbaa !5
  %474 = load i32, i32* %xoff640, align 4, !tbaa !5
  %add658 = add nsw i32 %473, %474
  %475 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width659 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %475, i32 0, i32 4
  %476 = load i16, i16* %rep_width659, align 2, !tbaa !47
  %conv660 = zext i16 %476 to i32
  %rem661 = srem i32 %add658, %conv660
  store i32 %rem661, i32* %tx657, align 4, !tbaa !5
  br label %for.cond.662

for.cond.662:                                     ; preds = %for.inc.764, %cond.end.654
  %477 = load i32, i32* %w631, align 4, !tbaa !5
  %cmp663 = icmp sgt i32 %477, 0
  br i1 %cmp663, label %for.body.665, label %for.end.767

for.body.665:                                     ; preds = %for.cond.662
  %478 = bitcast i32* %dbit666 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %478) #1
  %479 = load i32, i32* %dx630, align 4, !tbaa !5
  %and667 = and i32 %479, 7
  store i32 %and667, i32* %dbit666, align 4, !tbaa !5
  %480 = bitcast i32* %tbit668 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %480) #1
  %481 = load i32, i32* %tx657, align 4, !tbaa !5
  %and669 = and i32 %481, 7
  store i32 %and669, i32* %tbit668, align 4, !tbaa !5
  %482 = bitcast i32* %tskew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %482) #1
  %483 = load i32, i32* %tbit668, align 4, !tbaa !5
  %484 = load i32, i32* %dbit666, align 4, !tbaa !5
  %sub670 = sub nsw i32 %483, %484
  store i32 %sub670, i32* %tskew, align 4, !tbaa !5
  %485 = bitcast i32* %left671 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %485) #1
  %486 = load i32, i32* %w631, align 4, !tbaa !5
  %487 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size672 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %487, i32 0, i32 2
  %x673 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size672, i32 0, i32 0
  %488 = load i32, i32* %x673, align 4, !tbaa !52
  %489 = load i32, i32* %tx657, align 4, !tbaa !5
  %sub674 = sub nsw i32 %488, %489
  %cmp675 = icmp slt i32 %486, %sub674
  br i1 %cmp675, label %cond.true.677, label %cond.false.678

cond.true.677:                                    ; preds = %for.body.665
  %490 = load i32, i32* %w631, align 4, !tbaa !5
  br label %cond.end.682

cond.false.678:                                   ; preds = %for.body.665
  %491 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size679 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %491, i32 0, i32 2
  %x680 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size679, i32 0, i32 0
  %492 = load i32, i32* %x680, align 4, !tbaa !52
  %493 = load i32, i32* %tx657, align 4, !tbaa !5
  %sub681 = sub nsw i32 %492, %493
  br label %cond.end.682

cond.end.682:                                     ; preds = %cond.false.678, %cond.true.677
  %cond683 = phi i32 [ %490, %cond.true.677 ], [ %sub681, %cond.false.678 ]
  store i32 %cond683, i32* %nw656, align 4, !tbaa !5
  store i32 %cond683, i32* %left671, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %lmask684) #1
  %494 = load i32, i32* %dbit666, align 4, !tbaa !5
  %shr685 = ashr i32 255, %494
  %conv686 = trunc i32 %shr685 to i8
  store i8 %conv686, i8* %lmask684, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %rmask687) #1
  %495 = load i32, i32* %dbit666, align 4, !tbaa !5
  %496 = load i32, i32* %nw656, align 4, !tbaa !5
  %add688 = add nsw i32 %495, %496
  %sub689 = sub nsw i32 %add688, 1
  %neg690 = xor i32 %sub689, -1
  %and691 = and i32 %neg690, 7
  %shl692 = shl i32 255, %and691
  %conv693 = trunc i32 %shl692 to i8
  store i8 %conv693, i8* %rmask687, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %mask) #1
  %497 = load i8, i8* %lmask684, align 1, !tbaa !9
  store i8 %497, i8* %mask, align 1, !tbaa !9
  %498 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %498) #1
  %499 = load i32, i32* %dbit666, align 4, !tbaa !5
  %sub694 = sub nsw i32 8, %499
  store i32 %sub694, i32* %nx, align 4, !tbaa !5
  %500 = bitcast i8** %dptr695 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %500) #1
  %501 = load i8*, i8** %drow, align 8, !tbaa !1
  %502 = load i32, i32* %dx630, align 4, !tbaa !5
  %shr696 = ashr i32 %502, 3
  %idx.ext697 = sext i32 %shr696 to i64
  %add.ptr698 = getelementptr inbounds i8, i8* %501, i64 %idx.ext697
  store i8* %add.ptr698, i8** %dptr695, align 8, !tbaa !1
  %503 = bitcast i8** %tptr699 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %503) #1
  %504 = load i8*, i8** %trow632, align 8, !tbaa !1
  %505 = load i32, i32* %tx657, align 4, !tbaa !5
  %shr700 = ashr i32 %505, 3
  %idx.ext701 = sext i32 %shr700 to i64
  %add.ptr702 = getelementptr inbounds i8, i8* %504, i64 %idx.ext701
  store i8* %add.ptr702, i8** %tptr699, align 8, !tbaa !1
  %506 = load i32, i32* %tskew, align 4, !tbaa !5
  %cmp703 = icmp slt i32 %506, 0
  br i1 %cmp703, label %if.then.705, label %if.end.708

if.then.705:                                      ; preds = %cond.end.682
  %507 = load i8*, i8** %tptr699, align 8, !tbaa !1
  %incdec.ptr706 = getelementptr inbounds i8, i8* %507, i32 -1
  store i8* %incdec.ptr706, i8** %tptr699, align 8, !tbaa !1
  %508 = load i32, i32* %tskew, align 4, !tbaa !5
  %add707 = add nsw i32 %508, 8
  store i32 %add707, i32* %tskew, align 4, !tbaa !5
  br label %if.end.708

if.end.708:                                       ; preds = %if.then.705, %cond.end.682
  br label %for.cond.709

for.cond.709:                                     ; preds = %for.inc.759, %if.end.708
  %509 = load i32, i32* %left671, align 4, !tbaa !5
  %cmp710 = icmp sgt i32 %509, 0
  br i1 %cmp710, label %for.body.712, label %for.end.763

for.body.712:                                     ; preds = %for.cond.709
  call void @llvm.lifetime.start(i64 1, i8* %dbyte713) #1
  %510 = load i8*, i8** %dptr695, align 8, !tbaa !1
  %511 = load i8, i8* %510, align 1, !tbaa !9
  store i8 %511, i8* %dbyte713, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %tbyte) #1
  %512 = load i32, i32* %tskew, align 4, !tbaa !5
  %tobool714 = icmp ne i32 %512, 0
  br i1 %tobool714, label %cond.true.715, label %cond.false.724

cond.true.715:                                    ; preds = %for.body.712
  %513 = load i8*, i8** %tptr699, align 8, !tbaa !1
  %arrayidx716 = getelementptr inbounds i8, i8* %513, i64 0
  %514 = load i8, i8* %arrayidx716, align 1, !tbaa !9
  %conv717 = zext i8 %514 to i32
  %515 = load i32, i32* %tskew, align 4, !tbaa !5
  %shl718 = shl i32 %conv717, %515
  %516 = load i8*, i8** %tptr699, align 8, !tbaa !1
  %arrayidx719 = getelementptr inbounds i8, i8* %516, i64 1
  %517 = load i8, i8* %arrayidx719, align 1, !tbaa !9
  %conv720 = zext i8 %517 to i32
  %518 = load i32, i32* %tskew, align 4, !tbaa !5
  %sub721 = sub nsw i32 8, %518
  %shr722 = ashr i32 %conv720, %sub721
  %add723 = add nsw i32 %shl718, %shr722
  br label %cond.end.726

cond.false.724:                                   ; preds = %for.body.712
  %519 = load i8*, i8** %tptr699, align 8, !tbaa !1
  %520 = load i8, i8* %519, align 1, !tbaa !9
  %conv725 = zext i8 %520 to i32
  br label %cond.end.726

cond.end.726:                                     ; preds = %cond.false.724, %cond.true.715
  %cond727 = phi i32 [ %add723, %cond.true.715 ], [ %conv725, %cond.false.724 ]
  %conv728 = trunc i32 %cond727 to i8
  store i8 %conv728, i8* %tbyte, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %result729) #1
  %521 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc622, align 8, !tbaa !1
  %522 = load i8, i8* %dbyte713, align 1, !tbaa !9
  %conv730 = zext i8 %522 to i64
  %523 = load i8, i8* %tbyte, align 1, !tbaa !9
  %conv731 = zext i8 %523 to i64
  %call732 = call i64 %521(i64 %conv730, i64 0, i64 %conv731) #3
  %conv733 = trunc i64 %call732 to i8
  store i8 %conv733, i8* %result729, align 1, !tbaa !9
  %524 = load i32, i32* %left671, align 4, !tbaa !5
  %525 = load i32, i32* %nx, align 4, !tbaa !5
  %cmp734 = icmp sle i32 %524, %525
  br i1 %cmp734, label %if.then.736, label %if.end.741

if.then.736:                                      ; preds = %cond.end.726
  %526 = load i8, i8* %rmask687, align 1, !tbaa !9
  %conv737 = zext i8 %526 to i32
  %527 = load i8, i8* %mask, align 1, !tbaa !9
  %conv738 = zext i8 %527 to i32
  %and739 = and i32 %conv738, %conv737
  %conv740 = trunc i32 %and739 to i8
  store i8 %conv740, i8* %mask, align 1, !tbaa !9
  br label %if.end.741

if.end.741:                                       ; preds = %if.then.736, %cond.end.726
  %528 = load i8, i8* %mask, align 1, !tbaa !9
  %conv742 = zext i8 %528 to i32
  %cmp743 = icmp eq i32 %conv742, 255
  br i1 %cmp743, label %cond.true.745, label %cond.false.747

cond.true.745:                                    ; preds = %if.end.741
  %529 = load i8, i8* %result729, align 1, !tbaa !9
  %conv746 = zext i8 %529 to i32
  br label %cond.end.756

cond.false.747:                                   ; preds = %if.end.741
  %530 = load i8, i8* %result729, align 1, !tbaa !9
  %conv748 = zext i8 %530 to i32
  %531 = load i8, i8* %mask, align 1, !tbaa !9
  %conv749 = zext i8 %531 to i32
  %and750 = and i32 %conv748, %conv749
  %532 = load i8, i8* %dbyte713, align 1, !tbaa !9
  %conv751 = zext i8 %532 to i32
  %533 = load i8, i8* %mask, align 1, !tbaa !9
  %conv752 = zext i8 %533 to i32
  %neg753 = xor i32 %conv752, -1
  %and754 = and i32 %conv751, %neg753
  %or755 = or i32 %and750, %and754
  br label %cond.end.756

cond.end.756:                                     ; preds = %cond.false.747, %cond.true.745
  %cond757 = phi i32 [ %conv746, %cond.true.745 ], [ %or755, %cond.false.747 ]
  %conv758 = trunc i32 %cond757 to i8
  %534 = load i8*, i8** %dptr695, align 8, !tbaa !1
  store i8 %conv758, i8* %534, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 1, i8* %result729) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbyte) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbyte713) #1
  br label %for.inc.759

for.inc.759:                                      ; preds = %cond.end.756
  %535 = load i32, i32* %nx, align 4, !tbaa !5
  %536 = load i32, i32* %left671, align 4, !tbaa !5
  %sub760 = sub nsw i32 %536, %535
  store i32 %sub760, i32* %left671, align 4, !tbaa !5
  store i8 -1, i8* %mask, align 1, !tbaa !9
  store i32 8, i32* %nx, align 4, !tbaa !5
  %537 = load i8*, i8** %dptr695, align 8, !tbaa !1
  %incdec.ptr761 = getelementptr inbounds i8, i8* %537, i32 1
  store i8* %incdec.ptr761, i8** %dptr695, align 8, !tbaa !1
  %538 = load i8*, i8** %tptr699, align 8, !tbaa !1
  %incdec.ptr762 = getelementptr inbounds i8, i8* %538, i32 1
  store i8* %incdec.ptr762, i8** %tptr699, align 8, !tbaa !1
  br label %for.cond.709

for.end.763:                                      ; preds = %for.cond.709
  %539 = bitcast i8** %tptr699 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %539) #1
  %540 = bitcast i8** %dptr695 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %540) #1
  %541 = bitcast i32* %nx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %541) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask) #1
  call void @llvm.lifetime.end(i64 1, i8* %rmask687) #1
  call void @llvm.lifetime.end(i64 1, i8* %lmask684) #1
  %542 = bitcast i32* %left671 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %542) #1
  %543 = bitcast i32* %tskew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %543) #1
  %544 = bitcast i32* %tbit668 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %544) #1
  %545 = bitcast i32* %dbit666 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %545) #1
  br label %for.inc.764

for.inc.764:                                      ; preds = %for.end.763
  %546 = load i32, i32* %nw656, align 4, !tbaa !5
  %547 = load i32, i32* %dx630, align 4, !tbaa !5
  %add765 = add nsw i32 %547, %546
  store i32 %add765, i32* %dx630, align 4, !tbaa !5
  %548 = load i32, i32* %nw656, align 4, !tbaa !5
  %549 = load i32, i32* %w631, align 4, !tbaa !5
  %sub766 = sub nsw i32 %549, %548
  store i32 %sub766, i32* %w631, align 4, !tbaa !5
  store i32 0, i32* %tx657, align 4, !tbaa !5
  br label %for.cond.662

for.end.767:                                      ; preds = %for.cond.662
  %550 = bitcast i32* %tx657 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %550) #1
  %551 = bitcast i32* %nw656 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %551) #1
  %552 = bitcast i32* %xoff640 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %552) #1
  %553 = bitcast i8** %trow632 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %553) #1
  %554 = bitcast i32* %w631 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %554) #1
  %555 = bitcast i32* %dx630 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %555) #1
  br label %for.inc.768

for.inc.768:                                      ; preds = %for.end.767
  %556 = load i32, i32* %draster, align 4, !tbaa !5
  %557 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext769 = zext i32 %556 to i64
  %add.ptr770 = getelementptr inbounds i8, i8* %557, i64 %idx.ext769
  store i8* %add.ptr770, i8** %drow, align 8, !tbaa !1
  %558 = load i32, i32* %ty, align 4, !tbaa !5
  %inc771 = add nsw i32 %558, 1
  store i32 %inc771, i32* %ty, align 4, !tbaa !5
  br label %for.cond.625

for.end.772:                                      ; preds = %for.cond.625
  %559 = bitcast i64 (i64, i64, i64)** %proc622 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %559) #1
  br label %if.end.965

if.else.773:                                      ; preds = %if.else.618
  %560 = bitcast i64 (i64, i64, i64)** %proc774 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %560) #1
  %561 = load i32, i32* %rop, align 4, !tbaa !9
  %idxprom775 = zext i32 %561 to i64
  %arrayidx776 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom775
  %562 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx776, align 8, !tbaa !1
  store i64 (i64, i64, i64)* %562, i64 (i64, i64, i64)** %proc774, align 8, !tbaa !1
  br label %for.cond.777

for.cond.777:                                     ; preds = %for.inc.958, %if.else.773
  %563 = load i32, i32* %line_count, align 4, !tbaa !5
  %dec778 = add nsw i32 %563, -1
  store i32 %dec778, i32* %line_count, align 4, !tbaa !5
  %cmp779 = icmp sgt i32 %563, 0
  br i1 %cmp779, label %for.body.781, label %for.end.964

for.body.781:                                     ; preds = %for.cond.777
  %564 = bitcast i32* %sx782 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %564) #1
  %565 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %565, i32* %sx782, align 4, !tbaa !5
  %566 = bitcast i32* %dx783 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %566) #1
  %567 = load i32, i32* %x.addr, align 4, !tbaa !5
  store i32 %567, i32* %dx783, align 4, !tbaa !5
  %568 = bitcast i32* %w784 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %568) #1
  %569 = load i32, i32* %width.addr, align 4, !tbaa !5
  store i32 %569, i32* %w784, align 4, !tbaa !5
  %570 = bitcast i8** %trow785 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %570) #1
  %571 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %data786 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %571, i32 0, i32 0
  %572 = load i8*, i8** %data786, align 8, !tbaa !48
  %573 = load i32, i32* %ty, align 4, !tbaa !5
  %574 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height787 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %574, i32 0, i32 5
  %575 = load i16, i16* %rep_height787, align 2, !tbaa !49
  %conv788 = zext i16 %575 to i32
  %rem789 = srem i32 %573, %conv788
  %576 = load i32, i32* %traster, align 4, !tbaa !5
  %mul790 = mul i32 %rem789, %576
  %idx.ext791 = zext i32 %mul790 to i64
  %add.ptr792 = getelementptr inbounds i8, i8* %572, i64 %idx.ext791
  store i8* %add.ptr792, i8** %trow785, align 8, !tbaa !1
  %577 = bitcast i32* %xoff793 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %577) #1
  %578 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %shift794 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %578, i32 0, i32 7
  %579 = load i16, i16* %shift794, align 2, !tbaa !50
  %conv795 = zext i16 %579 to i32
  %cmp796 = icmp eq i32 %conv795, 0
  br i1 %cmp796, label %cond.true.798, label %cond.false.799

cond.true.798:                                    ; preds = %for.body.781
  %580 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  br label %cond.end.807

cond.false.799:                                   ; preds = %for.body.781
  %581 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %582 = load i32, i32* %ty, align 4, !tbaa !5
  %583 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_height800 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %583, i32 0, i32 5
  %584 = load i16, i16* %rep_height800, align 2, !tbaa !49
  %conv801 = zext i16 %584 to i32
  %div802 = sdiv i32 %582, %conv801
  %585 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_shift803 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %585, i32 0, i32 6
  %586 = load i16, i16* %rep_shift803, align 2, !tbaa !51
  %conv804 = zext i16 %586 to i32
  %mul805 = mul nsw i32 %div802, %conv804
  %add806 = add nsw i32 %581, %mul805
  br label %cond.end.807

cond.end.807:                                     ; preds = %cond.false.799, %cond.true.798
  %cond808 = phi i32 [ %580, %cond.true.798 ], [ %add806, %cond.false.799 ]
  store i32 %cond808, i32* %xoff793, align 4, !tbaa !5
  %587 = bitcast i32* %nw809 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %587) #1
  %588 = bitcast i32* %tx810 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %588) #1
  %589 = load i32, i32* %dx783, align 4, !tbaa !5
  %590 = load i32, i32* %xoff793, align 4, !tbaa !5
  %add811 = add nsw i32 %589, %590
  %591 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %rep_width812 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %591, i32 0, i32 4
  %592 = load i16, i16* %rep_width812, align 2, !tbaa !47
  %conv813 = zext i16 %592 to i32
  %rem814 = srem i32 %add811, %conv813
  store i32 %rem814, i32* %tx810, align 4, !tbaa !5
  br label %for.cond.815

for.cond.815:                                     ; preds = %for.inc.953, %cond.end.807
  %593 = load i32, i32* %w784, align 4, !tbaa !5
  %cmp816 = icmp sgt i32 %593, 0
  br i1 %cmp816, label %for.body.818, label %for.end.957

for.body.818:                                     ; preds = %for.cond.815
  %594 = bitcast i32* %dbit819 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %594) #1
  %595 = load i32, i32* %dx783, align 4, !tbaa !5
  %and820 = and i32 %595, 7
  store i32 %and820, i32* %dbit819, align 4, !tbaa !5
  %596 = bitcast i32* %sbit821 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %596) #1
  %597 = load i32, i32* %sx782, align 4, !tbaa !5
  %and822 = and i32 %597, 7
  store i32 %and822, i32* %sbit821, align 4, !tbaa !5
  %598 = bitcast i32* %sskew823 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %598) #1
  %599 = load i32, i32* %sbit821, align 4, !tbaa !5
  %600 = load i32, i32* %dbit819, align 4, !tbaa !5
  %sub824 = sub nsw i32 %599, %600
  store i32 %sub824, i32* %sskew823, align 4, !tbaa !5
  %601 = bitcast i32* %tbit825 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %601) #1
  %602 = load i32, i32* %tx810, align 4, !tbaa !5
  %and826 = and i32 %602, 7
  store i32 %and826, i32* %tbit825, align 4, !tbaa !5
  %603 = bitcast i32* %tskew827 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %603) #1
  %604 = load i32, i32* %tbit825, align 4, !tbaa !5
  %605 = load i32, i32* %dbit819, align 4, !tbaa !5
  %sub828 = sub nsw i32 %604, %605
  store i32 %sub828, i32* %tskew827, align 4, !tbaa !5
  %606 = bitcast i32* %left829 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %606) #1
  %607 = load i32, i32* %w784, align 4, !tbaa !5
  %608 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size830 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %608, i32 0, i32 2
  %x831 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size830, i32 0, i32 0
  %609 = load i32, i32* %x831, align 4, !tbaa !52
  %610 = load i32, i32* %tx810, align 4, !tbaa !5
  %sub832 = sub nsw i32 %609, %610
  %cmp833 = icmp slt i32 %607, %sub832
  br i1 %cmp833, label %cond.true.835, label %cond.false.836

cond.true.835:                                    ; preds = %for.body.818
  %611 = load i32, i32* %w784, align 4, !tbaa !5
  br label %cond.end.840

cond.false.836:                                   ; preds = %for.body.818
  %612 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %size837 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %612, i32 0, i32 2
  %x838 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size837, i32 0, i32 0
  %613 = load i32, i32* %x838, align 4, !tbaa !52
  %614 = load i32, i32* %tx810, align 4, !tbaa !5
  %sub839 = sub nsw i32 %613, %614
  br label %cond.end.840

cond.end.840:                                     ; preds = %cond.false.836, %cond.true.835
  %cond841 = phi i32 [ %611, %cond.true.835 ], [ %sub839, %cond.false.836 ]
  store i32 %cond841, i32* %nw809, align 4, !tbaa !5
  store i32 %cond841, i32* %left829, align 4, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %lmask842) #1
  %615 = load i32, i32* %dbit819, align 4, !tbaa !5
  %shr843 = ashr i32 255, %615
  %conv844 = trunc i32 %shr843 to i8
  store i8 %conv844, i8* %lmask842, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %rmask845) #1
  %616 = load i32, i32* %dbit819, align 4, !tbaa !5
  %617 = load i32, i32* %nw809, align 4, !tbaa !5
  %add846 = add nsw i32 %616, %617
  %sub847 = sub nsw i32 %add846, 1
  %neg848 = xor i32 %sub847, -1
  %and849 = and i32 %neg848, 7
  %shl850 = shl i32 255, %and849
  %conv851 = trunc i32 %shl850 to i8
  store i8 %conv851, i8* %rmask845, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %mask852) #1
  %618 = load i8, i8* %lmask842, align 1, !tbaa !9
  store i8 %618, i8* %mask852, align 1, !tbaa !9
  %619 = bitcast i32* %nx853 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %619) #1
  %620 = load i32, i32* %dbit819, align 4, !tbaa !5
  %sub854 = sub nsw i32 8, %620
  store i32 %sub854, i32* %nx853, align 4, !tbaa !5
  %621 = bitcast i8** %dptr855 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %621) #1
  %622 = load i8*, i8** %drow, align 8, !tbaa !1
  %623 = load i32, i32* %dx783, align 4, !tbaa !5
  %shr856 = ashr i32 %623, 3
  %idx.ext857 = sext i32 %shr856 to i64
  %add.ptr858 = getelementptr inbounds i8, i8* %622, i64 %idx.ext857
  store i8* %add.ptr858, i8** %dptr855, align 8, !tbaa !1
  %624 = bitcast i8** %sptr859 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %624) #1
  %625 = load i8*, i8** %srow, align 8, !tbaa !1
  %626 = load i32, i32* %sx782, align 4, !tbaa !5
  %shr860 = ashr i32 %626, 3
  %idx.ext861 = sext i32 %shr860 to i64
  %add.ptr862 = getelementptr inbounds i8, i8* %625, i64 %idx.ext861
  store i8* %add.ptr862, i8** %sptr859, align 8, !tbaa !1
  %627 = bitcast i8** %tptr863 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %627) #1
  %628 = load i8*, i8** %trow785, align 8, !tbaa !1
  %629 = load i32, i32* %tx810, align 4, !tbaa !5
  %shr864 = ashr i32 %629, 3
  %idx.ext865 = sext i32 %shr864 to i64
  %add.ptr866 = getelementptr inbounds i8, i8* %628, i64 %idx.ext865
  store i8* %add.ptr866, i8** %tptr863, align 8, !tbaa !1
  %630 = load i32, i32* %sskew823, align 4, !tbaa !5
  %cmp867 = icmp slt i32 %630, 0
  br i1 %cmp867, label %if.then.869, label %if.end.872

if.then.869:                                      ; preds = %cond.end.840
  %631 = load i8*, i8** %sptr859, align 8, !tbaa !1
  %incdec.ptr870 = getelementptr inbounds i8, i8* %631, i32 -1
  store i8* %incdec.ptr870, i8** %sptr859, align 8, !tbaa !1
  %632 = load i32, i32* %sskew823, align 4, !tbaa !5
  %add871 = add nsw i32 %632, 8
  store i32 %add871, i32* %sskew823, align 4, !tbaa !5
  br label %if.end.872

if.end.872:                                       ; preds = %if.then.869, %cond.end.840
  %633 = load i32, i32* %tskew827, align 4, !tbaa !5
  %cmp873 = icmp slt i32 %633, 0
  br i1 %cmp873, label %if.then.875, label %if.end.878

if.then.875:                                      ; preds = %if.end.872
  %634 = load i8*, i8** %tptr863, align 8, !tbaa !1
  %incdec.ptr876 = getelementptr inbounds i8, i8* %634, i32 -1
  store i8* %incdec.ptr876, i8** %tptr863, align 8, !tbaa !1
  %635 = load i32, i32* %tskew827, align 4, !tbaa !5
  %add877 = add nsw i32 %635, 8
  store i32 %add877, i32* %tskew827, align 4, !tbaa !5
  br label %if.end.878

if.end.878:                                       ; preds = %if.then.875, %if.end.872
  br label %for.cond.879

for.cond.879:                                     ; preds = %for.inc.947, %if.end.878
  %636 = load i32, i32* %left829, align 4, !tbaa !5
  %cmp880 = icmp sgt i32 %636, 0
  br i1 %cmp880, label %for.body.882, label %for.end.952

for.body.882:                                     ; preds = %for.cond.879
  call void @llvm.lifetime.start(i64 1, i8* %dbyte883) #1
  %637 = load i8*, i8** %dptr855, align 8, !tbaa !1
  %638 = load i8, i8* %637, align 1, !tbaa !9
  store i8 %638, i8* %dbyte883, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %sbyte884) #1
  %639 = load i32, i32* %sskew823, align 4, !tbaa !5
  %tobool885 = icmp ne i32 %639, 0
  br i1 %tobool885, label %cond.true.886, label %cond.false.895

cond.true.886:                                    ; preds = %for.body.882
  %640 = load i8*, i8** %sptr859, align 8, !tbaa !1
  %arrayidx887 = getelementptr inbounds i8, i8* %640, i64 0
  %641 = load i8, i8* %arrayidx887, align 1, !tbaa !9
  %conv888 = zext i8 %641 to i32
  %642 = load i32, i32* %sskew823, align 4, !tbaa !5
  %shl889 = shl i32 %conv888, %642
  %643 = load i8*, i8** %sptr859, align 8, !tbaa !1
  %arrayidx890 = getelementptr inbounds i8, i8* %643, i64 1
  %644 = load i8, i8* %arrayidx890, align 1, !tbaa !9
  %conv891 = zext i8 %644 to i32
  %645 = load i32, i32* %sskew823, align 4, !tbaa !5
  %sub892 = sub nsw i32 8, %645
  %shr893 = ashr i32 %conv891, %sub892
  %add894 = add nsw i32 %shl889, %shr893
  br label %cond.end.897

cond.false.895:                                   ; preds = %for.body.882
  %646 = load i8*, i8** %sptr859, align 8, !tbaa !1
  %647 = load i8, i8* %646, align 1, !tbaa !9
  %conv896 = zext i8 %647 to i32
  br label %cond.end.897

cond.end.897:                                     ; preds = %cond.false.895, %cond.true.886
  %cond898 = phi i32 [ %add894, %cond.true.886 ], [ %conv896, %cond.false.895 ]
  %conv899 = trunc i32 %cond898 to i8
  store i8 %conv899, i8* %sbyte884, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %tbyte900) #1
  %648 = load i32, i32* %tskew827, align 4, !tbaa !5
  %tobool901 = icmp ne i32 %648, 0
  br i1 %tobool901, label %cond.true.902, label %cond.false.911

cond.true.902:                                    ; preds = %cond.end.897
  %649 = load i8*, i8** %tptr863, align 8, !tbaa !1
  %arrayidx903 = getelementptr inbounds i8, i8* %649, i64 0
  %650 = load i8, i8* %arrayidx903, align 1, !tbaa !9
  %conv904 = zext i8 %650 to i32
  %651 = load i32, i32* %tskew827, align 4, !tbaa !5
  %shl905 = shl i32 %conv904, %651
  %652 = load i8*, i8** %tptr863, align 8, !tbaa !1
  %arrayidx906 = getelementptr inbounds i8, i8* %652, i64 1
  %653 = load i8, i8* %arrayidx906, align 1, !tbaa !9
  %conv907 = zext i8 %653 to i32
  %654 = load i32, i32* %tskew827, align 4, !tbaa !5
  %sub908 = sub nsw i32 8, %654
  %shr909 = ashr i32 %conv907, %sub908
  %add910 = add nsw i32 %shl905, %shr909
  br label %cond.end.913

cond.false.911:                                   ; preds = %cond.end.897
  %655 = load i8*, i8** %tptr863, align 8, !tbaa !1
  %656 = load i8, i8* %655, align 1, !tbaa !9
  %conv912 = zext i8 %656 to i32
  br label %cond.end.913

cond.end.913:                                     ; preds = %cond.false.911, %cond.true.902
  %cond914 = phi i32 [ %add910, %cond.true.902 ], [ %conv912, %cond.false.911 ]
  %conv915 = trunc i32 %cond914 to i8
  store i8 %conv915, i8* %tbyte900, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %result916) #1
  %657 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %proc774, align 8, !tbaa !1
  %658 = load i8, i8* %dbyte883, align 1, !tbaa !9
  %conv917 = zext i8 %658 to i64
  %659 = load i8, i8* %sbyte884, align 1, !tbaa !9
  %conv918 = zext i8 %659 to i64
  %660 = load i8, i8* %tbyte900, align 1, !tbaa !9
  %conv919 = zext i8 %660 to i64
  %call920 = call i64 %657(i64 %conv917, i64 %conv918, i64 %conv919) #3
  %conv921 = trunc i64 %call920 to i8
  store i8 %conv921, i8* %result916, align 1, !tbaa !9
  %661 = load i32, i32* %left829, align 4, !tbaa !5
  %662 = load i32, i32* %nx853, align 4, !tbaa !5
  %cmp922 = icmp sle i32 %661, %662
  br i1 %cmp922, label %if.then.924, label %if.end.929

if.then.924:                                      ; preds = %cond.end.913
  %663 = load i8, i8* %rmask845, align 1, !tbaa !9
  %conv925 = zext i8 %663 to i32
  %664 = load i8, i8* %mask852, align 1, !tbaa !9
  %conv926 = zext i8 %664 to i32
  %and927 = and i32 %conv926, %conv925
  %conv928 = trunc i32 %and927 to i8
  store i8 %conv928, i8* %mask852, align 1, !tbaa !9
  br label %if.end.929

if.end.929:                                       ; preds = %if.then.924, %cond.end.913
  %665 = load i8, i8* %mask852, align 1, !tbaa !9
  %conv930 = zext i8 %665 to i32
  %cmp931 = icmp eq i32 %conv930, 255
  br i1 %cmp931, label %cond.true.933, label %cond.false.935

cond.true.933:                                    ; preds = %if.end.929
  %666 = load i8, i8* %result916, align 1, !tbaa !9
  %conv934 = zext i8 %666 to i32
  br label %cond.end.944

cond.false.935:                                   ; preds = %if.end.929
  %667 = load i8, i8* %result916, align 1, !tbaa !9
  %conv936 = zext i8 %667 to i32
  %668 = load i8, i8* %mask852, align 1, !tbaa !9
  %conv937 = zext i8 %668 to i32
  %and938 = and i32 %conv936, %conv937
  %669 = load i8, i8* %dbyte883, align 1, !tbaa !9
  %conv939 = zext i8 %669 to i32
  %670 = load i8, i8* %mask852, align 1, !tbaa !9
  %conv940 = zext i8 %670 to i32
  %neg941 = xor i32 %conv940, -1
  %and942 = and i32 %conv939, %neg941
  %or943 = or i32 %and938, %and942
  br label %cond.end.944

cond.end.944:                                     ; preds = %cond.false.935, %cond.true.933
  %cond945 = phi i32 [ %conv934, %cond.true.933 ], [ %or943, %cond.false.935 ]
  %conv946 = trunc i32 %cond945 to i8
  %671 = load i8*, i8** %dptr855, align 8, !tbaa !1
  store i8 %conv946, i8* %671, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 1, i8* %result916) #1
  call void @llvm.lifetime.end(i64 1, i8* %tbyte900) #1
  call void @llvm.lifetime.end(i64 1, i8* %sbyte884) #1
  call void @llvm.lifetime.end(i64 1, i8* %dbyte883) #1
  br label %for.inc.947

for.inc.947:                                      ; preds = %cond.end.944
  %672 = load i32, i32* %nx853, align 4, !tbaa !5
  %673 = load i32, i32* %left829, align 4, !tbaa !5
  %sub948 = sub nsw i32 %673, %672
  store i32 %sub948, i32* %left829, align 4, !tbaa !5
  store i8 -1, i8* %mask852, align 1, !tbaa !9
  store i32 8, i32* %nx853, align 4, !tbaa !5
  %674 = load i8*, i8** %dptr855, align 8, !tbaa !1
  %incdec.ptr949 = getelementptr inbounds i8, i8* %674, i32 1
  store i8* %incdec.ptr949, i8** %dptr855, align 8, !tbaa !1
  %675 = load i8*, i8** %sptr859, align 8, !tbaa !1
  %incdec.ptr950 = getelementptr inbounds i8, i8* %675, i32 1
  store i8* %incdec.ptr950, i8** %sptr859, align 8, !tbaa !1
  %676 = load i8*, i8** %tptr863, align 8, !tbaa !1
  %incdec.ptr951 = getelementptr inbounds i8, i8* %676, i32 1
  store i8* %incdec.ptr951, i8** %tptr863, align 8, !tbaa !1
  br label %for.cond.879

for.end.952:                                      ; preds = %for.cond.879
  %677 = bitcast i8** %tptr863 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %677) #1
  %678 = bitcast i8** %sptr859 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %678) #1
  %679 = bitcast i8** %dptr855 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %679) #1
  %680 = bitcast i32* %nx853 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %680) #1
  call void @llvm.lifetime.end(i64 1, i8* %mask852) #1
  call void @llvm.lifetime.end(i64 1, i8* %rmask845) #1
  call void @llvm.lifetime.end(i64 1, i8* %lmask842) #1
  %681 = bitcast i32* %left829 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %681) #1
  %682 = bitcast i32* %tskew827 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %682) #1
  %683 = bitcast i32* %tbit825 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %683) #1
  %684 = bitcast i32* %sskew823 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %684) #1
  %685 = bitcast i32* %sbit821 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %685) #1
  %686 = bitcast i32* %dbit819 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %686) #1
  br label %for.inc.953

for.inc.953:                                      ; preds = %for.end.952
  %687 = load i32, i32* %nw809, align 4, !tbaa !5
  %688 = load i32, i32* %sx782, align 4, !tbaa !5
  %add954 = add nsw i32 %688, %687
  store i32 %add954, i32* %sx782, align 4, !tbaa !5
  %689 = load i32, i32* %nw809, align 4, !tbaa !5
  %690 = load i32, i32* %dx783, align 4, !tbaa !5
  %add955 = add nsw i32 %690, %689
  store i32 %add955, i32* %dx783, align 4, !tbaa !5
  %691 = load i32, i32* %nw809, align 4, !tbaa !5
  %692 = load i32, i32* %w784, align 4, !tbaa !5
  %sub956 = sub nsw i32 %692, %691
  store i32 %sub956, i32* %w784, align 4, !tbaa !5
  store i32 0, i32* %tx810, align 4, !tbaa !5
  br label %for.cond.815

for.end.957:                                      ; preds = %for.cond.815
  %693 = bitcast i32* %tx810 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %693) #1
  %694 = bitcast i32* %nw809 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %694) #1
  %695 = bitcast i32* %xoff793 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %695) #1
  %696 = bitcast i8** %trow785 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %696) #1
  %697 = bitcast i32* %w784 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %697) #1
  %698 = bitcast i32* %dx783 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %698) #1
  %699 = bitcast i32* %sx782 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %699) #1
  br label %for.inc.958

for.inc.958:                                      ; preds = %for.end.957
  %700 = load i32, i32* %draster, align 4, !tbaa !5
  %701 = load i8*, i8** %drow, align 8, !tbaa !1
  %idx.ext959 = zext i32 %700 to i64
  %add.ptr960 = getelementptr inbounds i8, i8* %701, i64 %idx.ext959
  store i8* %add.ptr960, i8** %drow, align 8, !tbaa !1
  %702 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %703 = load i8*, i8** %srow, align 8, !tbaa !1
  %idx.ext961 = zext i32 %702 to i64
  %add.ptr962 = getelementptr inbounds i8, i8* %703, i64 %idx.ext961
  store i8* %add.ptr962, i8** %srow, align 8, !tbaa !1
  %704 = load i32, i32* %ty, align 4, !tbaa !5
  %inc963 = add nsw i32 %704, 1
  store i32 %inc963, i32* %ty, align 4, !tbaa !5
  br label %for.cond.777

for.end.964:                                      ; preds = %for.cond.777
  %705 = bitcast i64 (i64, i64, i64)** %proc774 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %705) #1
  br label %if.end.965

if.end.965:                                       ; preds = %for.end.964, %for.end.772
  br label %if.end.966

if.end.966:                                       ; preds = %if.end.965, %do.end.617
  br label %if.end.967

if.end.967:                                       ; preds = %if.end.966, %if.end.522
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.968

cleanup.968:                                      ; preds = %if.end.967, %if.then.352, %if.then.303, %if.then.249, %if.then.195, %if.then.145, %if.then.98, %if.then.52, %sw.bb.46
  %706 = bitcast %struct.rop_run_op_s* %ropper to i8*
  call void @llvm.lifetime.end(i64 88, i8* %706) #1
  %707 = bitcast i32* %ty to i8*
  call void @llvm.lifetime.end(i64 4, i8* %707) #1
  %708 = bitcast i8** %srow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %708) #1
  %709 = bitcast i8** %drow to i8*
  call void @llvm.lifetime.end(i64 8, i8* %709) #1
  %710 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %710) #1
  %711 = bitcast i32* %traster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %711) #1
  %712 = bitcast i32* %draster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %712) #1
  %713 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %713) #1
  %714 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %714) #1
  %715 = load i32, i32* %retval
  ret i32 %715

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @rop_get_run_op(%struct.rop_run_op_s*, i32, i32, i32) #2

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #2

declare i32 @mem_open(%struct.gx_device_s*) #2

declare void @mem_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #2

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #2

declare i32 @mem_close(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i64 @mem_mono_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %call = call i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s* %3, i16* %4) #3
  %5 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %5, i32 0, i32 53
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %7 to i64
  %xor = xor i64 %call, %conv
  %and = and i64 %xor, 1
  %8 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret i64 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_mono_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !7
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i64, i64* %color.addr, align 8, !tbaa !7
  %5 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s* %3, i64 %4, i16* %5) #3
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 53
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %palette, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8, !tbaa !53
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx, align 1, !tbaa !9
  %conv = zext i8 %8 to i32
  %xor = xor i32 %call, %conv
  %and = and i32 %xor, 1
  %9 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
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
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
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
  %13 = load i32, i32* %width, align 4, !tbaa !33
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %13, %14
  %cmp11 = icmp sgt i32 %11, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width13, align 4, !tbaa !33
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
  %20 = load i32, i32* %height, align 4, !tbaa !34
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %20, %21
  %cmp20 = icmp sgt i32 %18, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height22, align 4, !tbaa !34
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
  %29 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %29, i64 %idxprom
  %30 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %31 = load i32, i32* %x.addr, align 4, !tbaa !5
  %32 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %32, i32 0, i32 44
  %33 = load i32, i32* %raster, align 4, !tbaa !10
  %34 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv = trunc i64 %34 to i32
  %sub35 = sub nsw i32 0, %conv
  %35 = load i32, i32* %w.addr, align 4, !tbaa !5
  %36 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bits_fill_rectangle(i8* %30, i32 %31, i32 %33, i32 %sub35, i32 %35, i32 %36) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.34, %if.then.31
  %37 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @mem_mono_copy_mono(%struct.gx_device_s* %dev, i8* %source_data, i32 %source_x, i32 %source_raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %source_data.addr = alloca i8*, align 8
  %source_x.addr = alloca i32, align 4
  %source_raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %bptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %wleft = alloca i32, align 4
  %mask = alloca i32, align 4
  %mode = alloca %struct.copy_mode, align 4
  %dbptr = alloca i8*, align 8
  %dest_raster = alloca i32, align 4
  %skew = alloca i32, align 4
  %invert = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %cskew = alloca i32, align 4
  %cskew274 = alloca i32, align 4
  %cskew414 = alloca i32, align 4
  %rmask = alloca i32, align 4
  %cskew613 = alloca i32, align 4
  %rmask845 = alloca i32, align 4
  %words = alloca i32, align 4
  %sskip = alloca i32, align 4
  %dskip = alloca i32, align 4
  %bits = alloca i32, align 4
  %count = alloca i32, align 4
  %count908 = alloca i32, align 4
  %count960 = alloca i32, align 4
  %cskew1017 = alloca i32, align 4
  %case_right = alloca i32, align 4
  %count1031 = alloca i32, align 4
  %count1238 = alloca i32, align 4
  %count1449 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %source_data, i8** %source_data.addr, align 8, !tbaa !1
  store i32 %source_x, i32* %source_x.addr, align 4, !tbaa !5
  store i32 %source_raster, i32* %source_raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.copy_mode* %mode to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %dbptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i32* %dest_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %skew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %12 = load i32, i32* %x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %y.addr, align 4, !tbaa !5
  %or = or i32 %12, %13
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body.1
  %14 = load i32, i32* %x.addr, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %14, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %15 = load i32, i32* %x.addr, align 4, !tbaa !5
  %16 = load i32, i32* %w.addr, align 4, !tbaa !5
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %w.addr, align 4, !tbaa !5
  %17 = load i32, i32* %x.addr, align 4, !tbaa !5
  %18 = load i32, i32* %source_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %18, %17
  store i32 %sub, i32* %source_x.addr, align 4, !tbaa !5
  store i32 0, i32* %x.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %19 = load i32, i32* %y.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %19, 0
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %21 = load i32, i32* %h.addr, align 4, !tbaa !5
  %add6 = add nsw i32 %21, %20
  store i32 %add6, i32* %h.addr, align 4, !tbaa !5
  %22 = load i32, i32* %y.addr, align 4, !tbaa !5
  %23 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %22, %23
  %24 = load i8*, i8** %source_data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  store i8* %add.ptr, i8** %source_data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %25 = load i32, i32* %w.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width, align 4, !tbaa !33
  %28 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %27, %28
  %cmp10 = icmp sgt i32 %25, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 13
  %30 = load i32, i32* %width12, align 4, !tbaa !33
  %31 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 %30, %31
  store i32 %sub13, i32* %w.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  br label %do.cond

do.cond:                                          ; preds = %if.end.14
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load i32, i32* %h.addr, align 4, !tbaa !5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height, align 4, !tbaa !34
  %35 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %34, %35
  %cmp16 = icmp sgt i32 %32, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height18, align 4, !tbaa !34
  %38 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %37, %38
  store i32 %sub19, i32* %h.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %do.end
  %39 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %39, 0
  br i1 %cmp21, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %40 = load i32, i32* %h.addr, align 4, !tbaa !5
  %cmp22 = icmp sle i32 %40, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %if.end.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1678

if.end.24:                                        ; preds = %lor.lhs.false
  br label %do.cond.25

do.cond.25:                                       ; preds = %if.end.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  %41 = load i32, i32* %w.addr, align 4, !tbaa !5
  %cmp27 = icmp sge i32 %41, 32
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.end.26
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load i8*, i8** %source_data.addr, align 8, !tbaa !1
  %44 = load i32, i32* %source_x.addr, align 4, !tbaa !5
  %45 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %46 = load i64, i64* %id.addr, align 8, !tbaa !7
  %47 = load i32, i32* %x.addr, align 4, !tbaa !5
  %48 = load i32, i32* %y.addr, align 4, !tbaa !5
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  %51 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp29 = icmp eq i64 %51, -1
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.28
  br label %cond.end

cond.false:                                       ; preds = %if.then.28
  %52 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp30 = icmp eq i64 %52, 0
  %cond = select i1 %cmp30, i32 0, i32 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond31 = phi i32 [ 170, %cond.true ], [ %cond, %cond.false ]
  %and = and i32 %cond31, -205
  %53 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp32 = icmp eq i64 %53, -1
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  br label %cond.end.37

cond.false.34:                                    ; preds = %cond.end
  %54 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp35 = icmp eq i64 %54, 0
  %cond36 = select i1 %cmp35, i32 0, i32 255
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.34, %cond.true.33
  %cond38 = phi i32 [ 170, %cond.true.33 ], [ %cond36, %cond.false.34 ]
  %and39 = and i32 %cond38, 204
  %or40 = or i32 %and, %and39
  %call = call i32 @mem_mono_strip_copy_rop_dev(%struct.gx_device_s* %42, i8* %43, i32 %44, i32 %45, i64 %46, i64* null, %struct.gx_strip_bitmap_s* null, i64* null, i32 %47, i32 %48, i32 %49, i32 %50, i32 0, i32 0, i32 %or40) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1678

if.end.41:                                        ; preds = %do.end.26
  %55 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %conv = trunc i64 %55 to i32
  %shl = shl i32 %conv, 2
  %56 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %conv42 = trunc i64 %56 to i32
  %add43 = add nsw i32 %shl, %conv42
  %add44 = add nsw i32 %add43, 5
  %idxprom = sext i32 %add44 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.copy_mode], [16 x %struct.copy_mode]* @copy_modes, i32 0, i64 %idxprom
  %57 = bitcast %struct.copy_mode* %mode to i8*
  %58 = bitcast %struct.copy_mode* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 8, i32 4, i1 false), !tbaa.struct !54
  %invert45 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 0
  %59 = load i32, i32* %invert45, align 4, !tbaa !55
  store i32 %59, i32* %invert, align 4, !tbaa !5
  %60 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %60, i32 0, i32 44
  %61 = load i32, i32* %raster, align 4, !tbaa !10
  store i32 %61, i32* %dest_raster, align 4, !tbaa !5
  %62 = load i32, i32* %y.addr, align 4, !tbaa !5
  %idxprom46 = sext i32 %62 to i64
  %63 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %63, i32 0, i32 52
  %64 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx47 = getelementptr inbounds i8*, i8** %64, i64 %idxprom46
  %65 = load i8*, i8** %arrayidx47, align 8, !tbaa !1
  %66 = load i32, i32* %x.addr, align 4, !tbaa !5
  %shr = ashr i32 %66, 3
  %and48 = and i32 %shr, -2
  %idx.ext49 = sext i32 %and48 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %65, i64 %idx.ext49
  store i8* %add.ptr50, i8** %dbptr, align 8, !tbaa !1
  %67 = load i8*, i8** %source_data.addr, align 8, !tbaa !1
  %68 = load i32, i32* %source_x.addr, align 4, !tbaa !5
  %and51 = and i32 %68, -16
  %shr52 = ashr i32 %and51, 3
  %idx.ext53 = sext i32 %shr52 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %67, i64 %idx.ext53
  store i8* %add.ptr54, i8** %bptr, align 8, !tbaa !1
  %69 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and55 = and i32 %69, 15
  store i32 %and55, i32* %dbit, align 4, !tbaa !5
  %70 = load i32, i32* %dbit, align 4, !tbaa !5
  %71 = load i32, i32* %source_x.addr, align 4, !tbaa !5
  %and56 = and i32 %71, 15
  %sub57 = sub nsw i32 %70, %and56
  store i32 %sub57, i32* %skew, align 4, !tbaa !5
  %72 = load i32, i32* %w.addr, align 4, !tbaa !5
  %73 = load i32, i32* %dbit, align 4, !tbaa !5
  %add58 = add nsw i32 %72, %73
  %sub59 = sub nsw i32 %add58, 16
  store i32 %sub59, i32* %wleft, align 4, !tbaa !5
  %cmp60 = icmp sle i32 %sub59, 0
  br i1 %cmp60, label %if.then.62, label %if.else.609

if.then.62:                                       ; preds = %if.end.41
  %74 = load i32, i32* %w.addr, align 4, !tbaa !5
  %75 = load i32, i32* %dbit, align 4, !tbaa !5
  %add63 = add nsw i32 %74, %75
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds [17 x i16], [17 x i16]* @mono_copy_masks, i32 0, i64 %idxprom64
  %76 = load i16, i16* %arrayidx65, align 2, !tbaa !57
  %conv66 = zext i16 %76 to i32
  %neg = xor i32 %conv66, -1
  %77 = load i32, i32* %dbit, align 4, !tbaa !5
  %idxprom67 = sext i32 %77 to i64
  %arrayidx68 = getelementptr inbounds [17 x i16], [17 x i16]* @mono_copy_masks, i32 0, i64 %idxprom67
  %78 = load i16, i16* %arrayidx68, align 2, !tbaa !57
  %conv69 = zext i16 %78 to i32
  %and70 = and i32 %neg, %conv69
  store i32 %and70, i32* %mask, align 4, !tbaa !5
  %79 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp71 = icmp sge i32 %79, 0
  br i1 %cmp71, label %if.then.73, label %if.else.270

if.then.73:                                       ; preds = %if.then.62
  %80 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %80, 0
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.then.73
  %op = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %81 = load i32, i32* %op, align 4, !tbaa !58
  switch i32 %81, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.91
    i32 2, label %sw.bb.113
  ]

sw.bb:                                            ; preds = %if.then.76
  br label %for.cond

for.cond:                                         ; preds = %if.end.86, %sw.bb
  %82 = load i8*, i8** %bptr, align 8, !tbaa !1
  %83 = bitcast i8* %82 to i16*
  %84 = load i16, i16* %83, align 2, !tbaa !57
  %conv77 = zext i16 %84 to i32
  %85 = load i32, i32* %invert, align 4, !tbaa !5
  %xor = xor i32 %conv77, %85
  %86 = load i32, i32* %mask, align 4, !tbaa !5
  %and78 = and i32 %xor, %86
  %87 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %88 = bitcast i8* %87 to i16*
  %arrayidx79 = getelementptr inbounds i16, i16* %88, i64 0
  %89 = load i16, i16* %arrayidx79, align 2, !tbaa !57
  %conv80 = zext i16 %89 to i32
  %or81 = or i32 %conv80, %and78
  %conv82 = trunc i32 %or81 to i16
  store i16 %conv82, i16* %arrayidx79, align 2, !tbaa !57
  %90 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec = add nsw i32 %90, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !5
  %cmp83 = icmp eq i32 %dec, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %for.cond
  br label %for.end

if.end.86:                                        ; preds = %for.cond
  %91 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %92 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext87 = sext i32 %91 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %92, i64 %idx.ext87
  store i8* %add.ptr88, i8** %bptr, align 8, !tbaa !1
  %93 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %94 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext89 = zext i32 %93 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %94, i64 %idx.ext89
  store i8* %add.ptr90, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.85
  br label %sw.epilog

sw.bb.91:                                         ; preds = %if.then.76
  br label %for.cond.92

for.cond.92:                                      ; preds = %if.end.107, %sw.bb.91
  %95 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %96 = bitcast i8* %95 to i16*
  %arrayidx93 = getelementptr inbounds i16, i16* %96, i64 0
  %97 = load i16, i16* %arrayidx93, align 2, !tbaa !57
  %conv94 = zext i16 %97 to i32
  %98 = load i32, i32* %mask, align 4, !tbaa !5
  %neg95 = xor i32 %98, -1
  %and96 = and i32 %conv94, %neg95
  %99 = load i8*, i8** %bptr, align 8, !tbaa !1
  %100 = bitcast i8* %99 to i16*
  %101 = load i16, i16* %100, align 2, !tbaa !57
  %conv97 = zext i16 %101 to i32
  %102 = load i32, i32* %invert, align 4, !tbaa !5
  %xor98 = xor i32 %conv97, %102
  %103 = load i32, i32* %mask, align 4, !tbaa !5
  %and99 = and i32 %xor98, %103
  %or100 = or i32 %and96, %and99
  %conv101 = trunc i32 %or100 to i16
  %104 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %105 = bitcast i8* %104 to i16*
  %arrayidx102 = getelementptr inbounds i16, i16* %105, i64 0
  store i16 %conv101, i16* %arrayidx102, align 2, !tbaa !57
  %106 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec103 = add nsw i32 %106, -1
  store i32 %dec103, i32* %h.addr, align 4, !tbaa !5
  %cmp104 = icmp eq i32 %dec103, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.cond.92
  br label %for.end.112

if.end.107:                                       ; preds = %for.cond.92
  %107 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %108 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext108 = sext i32 %107 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %108, i64 %idx.ext108
  store i8* %add.ptr109, i8** %bptr, align 8, !tbaa !1
  %109 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %110 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext110 = zext i32 %109 to i64
  %add.ptr111 = getelementptr inbounds i8, i8* %110, i64 %idx.ext110
  store i8* %add.ptr111, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.92

for.end.112:                                      ; preds = %if.then.106
  br label %sw.epilog

sw.bb.113:                                        ; preds = %if.then.76
  br label %for.cond.114

for.cond.114:                                     ; preds = %if.end.127, %sw.bb.113
  %111 = load i8*, i8** %bptr, align 8, !tbaa !1
  %112 = bitcast i8* %111 to i16*
  %113 = load i16, i16* %112, align 2, !tbaa !57
  %conv115 = zext i16 %113 to i32
  %114 = load i32, i32* %invert, align 4, !tbaa !5
  %xor116 = xor i32 %conv115, %114
  %115 = load i32, i32* %mask, align 4, !tbaa !5
  %neg117 = xor i32 %115, -1
  %or118 = or i32 %xor116, %neg117
  %116 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %117 = bitcast i8* %116 to i16*
  %arrayidx119 = getelementptr inbounds i16, i16* %117, i64 0
  %118 = load i16, i16* %arrayidx119, align 2, !tbaa !57
  %conv120 = zext i16 %118 to i32
  %and121 = and i32 %conv120, %or118
  %conv122 = trunc i32 %and121 to i16
  store i16 %conv122, i16* %arrayidx119, align 2, !tbaa !57
  %119 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec123 = add nsw i32 %119, -1
  store i32 %dec123, i32* %h.addr, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %dec123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %for.cond.114
  br label %for.end.132

if.end.127:                                       ; preds = %for.cond.114
  %120 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %121 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext128 = sext i32 %120 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %121, i64 %idx.ext128
  store i8* %add.ptr129, i8** %bptr, align 8, !tbaa !1
  %122 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %123 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext130 = zext i32 %122 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %123, i64 %idx.ext130
  store i8* %add.ptr131, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.114

for.end.132:                                      ; preds = %if.then.126
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.76
  %124 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool = icmp ne i32 %124, 0
  br i1 %tobool, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %sw.default
  br label %cond.end.136

cond.false.134:                                   ; preds = %sw.default
  %125 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %126 = load i32, i32* %x.addr, align 4, !tbaa !5
  %127 = load i32, i32* %y.addr, align 4, !tbaa !5
  %128 = load i32, i32* %w.addr, align 4, !tbaa !5
  %129 = load i32, i32* %h.addr, align 4, !tbaa !5
  %130 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call135 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %125, i32 %126, i32 %127, i32 %128, i32 %129, i64 %130) #3
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.133
  %cond137 = phi i32 [ -1, %cond.true.133 ], [ %call135, %cond.false.134 ]
  store i32 %cond137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1678

sw.epilog:                                        ; preds = %for.end.132, %for.end.112, %for.end
  br label %if.end.269

if.else:                                          ; preds = %if.then.73
  %131 = bitcast i32* %cskew to i8*
  call void @llvm.lifetime.start(i64 4, i8* %131) #1
  %132 = load i32, i32* %skew, align 4, !tbaa !5
  %sub138 = sub nsw i32 16, %132
  store i32 %sub138, i32* %cskew, align 4, !tbaa !5
  %op139 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %133 = load i32, i32* %op139, align 4, !tbaa !58
  switch i32 %133, label %sw.default.261 [
    i32 0, label %sw.bb.140
    i32 1, label %sw.bb.179
    i32 2, label %sw.bb.221
  ]

sw.bb.140:                                        ; preds = %if.else
  br label %for.cond.141

for.cond.141:                                     ; preds = %if.end.173, %sw.bb.140
  %134 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp142 = icmp slt i32 %134, 8
  br i1 %cmp142, label %cond.true.144, label %cond.false.156

cond.true.144:                                    ; preds = %for.cond.141
  %135 = load i8*, i8** %bptr, align 8, !tbaa !1
  %136 = bitcast i8* %135 to i16*
  %arrayidx145 = getelementptr inbounds i16, i16* %136, i64 0
  %137 = load i16, i16* %arrayidx145, align 2, !tbaa !57
  %conv146 = zext i16 %137 to i32
  %138 = load i32, i32* %skew, align 4, !tbaa !5
  %shr147 = ashr i32 %conv146, %138
  %139 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom148 = sext i32 %139 to i64
  %arrayidx149 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom148
  %140 = load i16, i16* %arrayidx149, align 2, !tbaa !57
  %conv150 = zext i16 %140 to i32
  %and151 = and i32 %shr147, %conv150
  %141 = load i8*, i8** %bptr, align 8, !tbaa !1
  %142 = bitcast i8* %141 to i16*
  %arrayidx152 = getelementptr inbounds i16, i16* %142, i64 0
  %143 = load i16, i16* %arrayidx152, align 2, !tbaa !57
  %conv153 = zext i16 %143 to i32
  %144 = load i32, i32* %cskew, align 4, !tbaa !5
  %shl154 = shl i32 %conv153, %144
  %add155 = add nsw i32 %and151, %shl154
  br label %cond.end.161

cond.false.156:                                   ; preds = %for.cond.141
  %145 = load i8*, i8** %bptr, align 8, !tbaa !1
  %146 = load i8, i8* %145, align 1, !tbaa !9
  %conv157 = zext i8 %146 to i16
  %conv158 = zext i16 %conv157 to i32
  %147 = load i32, i32* %cskew, align 4, !tbaa !5
  %shl159 = shl i32 %conv158, %147
  %and160 = and i32 %shl159, 65280
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.156, %cond.true.144
  %cond162 = phi i32 [ %add155, %cond.true.144 ], [ %and160, %cond.false.156 ]
  %148 = load i32, i32* %invert, align 4, !tbaa !5
  %xor163 = xor i32 %cond162, %148
  %149 = load i32, i32* %mask, align 4, !tbaa !5
  %and164 = and i32 %xor163, %149
  %150 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %151 = bitcast i8* %150 to i16*
  %arrayidx165 = getelementptr inbounds i16, i16* %151, i64 0
  %152 = load i16, i16* %arrayidx165, align 2, !tbaa !57
  %conv166 = zext i16 %152 to i32
  %or167 = or i32 %conv166, %and164
  %conv168 = trunc i32 %or167 to i16
  store i16 %conv168, i16* %arrayidx165, align 2, !tbaa !57
  %153 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec169 = add nsw i32 %153, -1
  store i32 %dec169, i32* %h.addr, align 4, !tbaa !5
  %cmp170 = icmp eq i32 %dec169, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %cond.end.161
  br label %for.end.178

if.end.173:                                       ; preds = %cond.end.161
  %154 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %155 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext174 = sext i32 %154 to i64
  %add.ptr175 = getelementptr inbounds i8, i8* %155, i64 %idx.ext174
  store i8* %add.ptr175, i8** %bptr, align 8, !tbaa !1
  %156 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %157 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext176 = zext i32 %156 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %157, i64 %idx.ext176
  store i8* %add.ptr177, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.141

for.end.178:                                      ; preds = %if.then.172
  br label %sw.epilog.268

sw.bb.179:                                        ; preds = %if.else
  br label %for.cond.180

for.cond.180:                                     ; preds = %if.end.215, %sw.bb.179
  %158 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %159 = bitcast i8* %158 to i16*
  %arrayidx181 = getelementptr inbounds i16, i16* %159, i64 0
  %160 = load i16, i16* %arrayidx181, align 2, !tbaa !57
  %conv182 = zext i16 %160 to i32
  %161 = load i32, i32* %mask, align 4, !tbaa !5
  %neg183 = xor i32 %161, -1
  %and184 = and i32 %conv182, %neg183
  %162 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp185 = icmp slt i32 %162, 8
  br i1 %cmp185, label %cond.true.187, label %cond.false.199

cond.true.187:                                    ; preds = %for.cond.180
  %163 = load i8*, i8** %bptr, align 8, !tbaa !1
  %164 = bitcast i8* %163 to i16*
  %arrayidx188 = getelementptr inbounds i16, i16* %164, i64 0
  %165 = load i16, i16* %arrayidx188, align 2, !tbaa !57
  %conv189 = zext i16 %165 to i32
  %166 = load i32, i32* %skew, align 4, !tbaa !5
  %shr190 = ashr i32 %conv189, %166
  %167 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom191 = sext i32 %167 to i64
  %arrayidx192 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom191
  %168 = load i16, i16* %arrayidx192, align 2, !tbaa !57
  %conv193 = zext i16 %168 to i32
  %and194 = and i32 %shr190, %conv193
  %169 = load i8*, i8** %bptr, align 8, !tbaa !1
  %170 = bitcast i8* %169 to i16*
  %arrayidx195 = getelementptr inbounds i16, i16* %170, i64 0
  %171 = load i16, i16* %arrayidx195, align 2, !tbaa !57
  %conv196 = zext i16 %171 to i32
  %172 = load i32, i32* %cskew, align 4, !tbaa !5
  %shl197 = shl i32 %conv196, %172
  %add198 = add nsw i32 %and194, %shl197
  br label %cond.end.204

cond.false.199:                                   ; preds = %for.cond.180
  %173 = load i8*, i8** %bptr, align 8, !tbaa !1
  %174 = load i8, i8* %173, align 1, !tbaa !9
  %conv200 = zext i8 %174 to i16
  %conv201 = zext i16 %conv200 to i32
  %175 = load i32, i32* %cskew, align 4, !tbaa !5
  %shl202 = shl i32 %conv201, %175
  %and203 = and i32 %shl202, 65280
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.false.199, %cond.true.187
  %cond205 = phi i32 [ %add198, %cond.true.187 ], [ %and203, %cond.false.199 ]
  %176 = load i32, i32* %invert, align 4, !tbaa !5
  %xor206 = xor i32 %cond205, %176
  %177 = load i32, i32* %mask, align 4, !tbaa !5
  %and207 = and i32 %xor206, %177
  %or208 = or i32 %and184, %and207
  %conv209 = trunc i32 %or208 to i16
  %178 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %179 = bitcast i8* %178 to i16*
  %arrayidx210 = getelementptr inbounds i16, i16* %179, i64 0
  store i16 %conv209, i16* %arrayidx210, align 2, !tbaa !57
  %180 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec211 = add nsw i32 %180, -1
  store i32 %dec211, i32* %h.addr, align 4, !tbaa !5
  %cmp212 = icmp eq i32 %dec211, 0
  br i1 %cmp212, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %cond.end.204
  br label %for.end.220

if.end.215:                                       ; preds = %cond.end.204
  %181 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %182 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext216 = sext i32 %181 to i64
  %add.ptr217 = getelementptr inbounds i8, i8* %182, i64 %idx.ext216
  store i8* %add.ptr217, i8** %bptr, align 8, !tbaa !1
  %183 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %184 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext218 = zext i32 %183 to i64
  %add.ptr219 = getelementptr inbounds i8, i8* %184, i64 %idx.ext218
  store i8* %add.ptr219, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.180

for.end.220:                                      ; preds = %if.then.214
  br label %sw.epilog.268

sw.bb.221:                                        ; preds = %if.else
  br label %for.cond.222

for.cond.222:                                     ; preds = %if.end.255, %sw.bb.221
  %185 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp223 = icmp slt i32 %185, 8
  br i1 %cmp223, label %cond.true.225, label %cond.false.237

cond.true.225:                                    ; preds = %for.cond.222
  %186 = load i8*, i8** %bptr, align 8, !tbaa !1
  %187 = bitcast i8* %186 to i16*
  %arrayidx226 = getelementptr inbounds i16, i16* %187, i64 0
  %188 = load i16, i16* %arrayidx226, align 2, !tbaa !57
  %conv227 = zext i16 %188 to i32
  %189 = load i32, i32* %skew, align 4, !tbaa !5
  %shr228 = ashr i32 %conv227, %189
  %190 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom229 = sext i32 %190 to i64
  %arrayidx230 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom229
  %191 = load i16, i16* %arrayidx230, align 2, !tbaa !57
  %conv231 = zext i16 %191 to i32
  %and232 = and i32 %shr228, %conv231
  %192 = load i8*, i8** %bptr, align 8, !tbaa !1
  %193 = bitcast i8* %192 to i16*
  %arrayidx233 = getelementptr inbounds i16, i16* %193, i64 0
  %194 = load i16, i16* %arrayidx233, align 2, !tbaa !57
  %conv234 = zext i16 %194 to i32
  %195 = load i32, i32* %cskew, align 4, !tbaa !5
  %shl235 = shl i32 %conv234, %195
  %add236 = add nsw i32 %and232, %shl235
  br label %cond.end.242

cond.false.237:                                   ; preds = %for.cond.222
  %196 = load i8*, i8** %bptr, align 8, !tbaa !1
  %197 = load i8, i8* %196, align 1, !tbaa !9
  %conv238 = zext i8 %197 to i16
  %conv239 = zext i16 %conv238 to i32
  %198 = load i32, i32* %cskew, align 4, !tbaa !5
  %shl240 = shl i32 %conv239, %198
  %and241 = and i32 %shl240, 65280
  br label %cond.end.242

cond.end.242:                                     ; preds = %cond.false.237, %cond.true.225
  %cond243 = phi i32 [ %add236, %cond.true.225 ], [ %and241, %cond.false.237 ]
  %199 = load i32, i32* %invert, align 4, !tbaa !5
  %xor244 = xor i32 %cond243, %199
  %200 = load i32, i32* %mask, align 4, !tbaa !5
  %neg245 = xor i32 %200, -1
  %or246 = or i32 %xor244, %neg245
  %201 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %202 = bitcast i8* %201 to i16*
  %arrayidx247 = getelementptr inbounds i16, i16* %202, i64 0
  %203 = load i16, i16* %arrayidx247, align 2, !tbaa !57
  %conv248 = zext i16 %203 to i32
  %and249 = and i32 %conv248, %or246
  %conv250 = trunc i32 %and249 to i16
  store i16 %conv250, i16* %arrayidx247, align 2, !tbaa !57
  %204 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec251 = add nsw i32 %204, -1
  store i32 %dec251, i32* %h.addr, align 4, !tbaa !5
  %cmp252 = icmp eq i32 %dec251, 0
  br i1 %cmp252, label %if.then.254, label %if.end.255

if.then.254:                                      ; preds = %cond.end.242
  br label %for.end.260

if.end.255:                                       ; preds = %cond.end.242
  %205 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %206 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext256 = sext i32 %205 to i64
  %add.ptr257 = getelementptr inbounds i8, i8* %206, i64 %idx.ext256
  store i8* %add.ptr257, i8** %bptr, align 8, !tbaa !1
  %207 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %208 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext258 = zext i32 %207 to i64
  %add.ptr259 = getelementptr inbounds i8, i8* %208, i64 %idx.ext258
  store i8* %add.ptr259, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.222

for.end.260:                                      ; preds = %if.then.254
  br label %sw.epilog.268

sw.default.261:                                   ; preds = %if.else
  %209 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool262 = icmp ne i32 %209, 0
  br i1 %tobool262, label %cond.true.263, label %cond.false.264

cond.true.263:                                    ; preds = %sw.default.261
  br label %cond.end.266

cond.false.264:                                   ; preds = %sw.default.261
  %210 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %211 = load i32, i32* %x.addr, align 4, !tbaa !5
  %212 = load i32, i32* %y.addr, align 4, !tbaa !5
  %213 = load i32, i32* %w.addr, align 4, !tbaa !5
  %214 = load i32, i32* %h.addr, align 4, !tbaa !5
  %215 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call265 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %210, i32 %211, i32 %212, i32 %213, i32 %214, i64 %215) #3
  br label %cond.end.266

cond.end.266:                                     ; preds = %cond.false.264, %cond.true.263
  %cond267 = phi i32 [ -1, %cond.true.263 ], [ %call265, %cond.false.264 ]
  store i32 %cond267, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.268:                                    ; preds = %for.end.260, %for.end.220, %for.end.178
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.268, %cond.end.266
  %216 = bitcast i32* %cskew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.1678 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.269

if.end.269:                                       ; preds = %cleanup.cont, %sw.epilog
  br label %if.end.608

if.else.270:                                      ; preds = %if.then.62
  %217 = load i32, i32* %wleft, align 4, !tbaa !5
  %218 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp271 = icmp sle i32 %217, %218
  br i1 %cmp271, label %if.then.273, label %if.else.413

if.then.273:                                      ; preds = %if.else.270
  %219 = bitcast i32* %cskew274 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %219) #1
  %220 = load i32, i32* %skew, align 4, !tbaa !5
  %add275 = add nsw i32 16, %220
  store i32 %add275, i32* %cskew274, align 4, !tbaa !5
  %221 = load i32, i32* %skew, align 4, !tbaa !5
  %sub276 = sub nsw i32 0, %221
  store i32 %sub276, i32* %skew, align 4, !tbaa !5
  %op277 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %222 = load i32, i32* %op277, align 4, !tbaa !58
  switch i32 %222, label %sw.default.402 [
    i32 0, label %sw.bb.278
    i32 1, label %sw.bb.318
    i32 2, label %sw.bb.361
  ]

sw.bb.278:                                        ; preds = %if.then.273
  br label %for.cond.279

for.cond.279:                                     ; preds = %if.end.312, %sw.bb.278
  %223 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp280 = icmp slt i32 %223, 8
  br i1 %cmp280, label %cond.true.282, label %cond.false.294

cond.true.282:                                    ; preds = %for.cond.279
  %224 = load i8*, i8** %bptr, align 8, !tbaa !1
  %225 = bitcast i8* %224 to i16*
  %arrayidx283 = getelementptr inbounds i16, i16* %225, i64 0
  %226 = load i16, i16* %arrayidx283, align 2, !tbaa !57
  %conv284 = zext i16 %226 to i32
  %227 = load i32, i32* %skew, align 4, !tbaa !5
  %shl285 = shl i32 %conv284, %227
  %228 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom286 = sext i32 %228 to i64
  %arrayidx287 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom286
  %229 = load i16, i16* %arrayidx287, align 2, !tbaa !57
  %conv288 = zext i16 %229 to i32
  %and289 = and i32 %shl285, %conv288
  %230 = load i8*, i8** %bptr, align 8, !tbaa !1
  %231 = bitcast i8* %230 to i16*
  %arrayidx290 = getelementptr inbounds i16, i16* %231, i64 0
  %232 = load i16, i16* %arrayidx290, align 2, !tbaa !57
  %conv291 = zext i16 %232 to i32
  %233 = load i32, i32* %cskew274, align 4, !tbaa !5
  %shr292 = ashr i32 %conv291, %233
  %add293 = add nsw i32 %and289, %shr292
  br label %cond.end.300

cond.false.294:                                   ; preds = %for.cond.279
  %234 = load i8*, i8** %bptr, align 8, !tbaa !1
  %235 = bitcast i8* %234 to i16*
  %arrayidx295 = getelementptr inbounds i16, i16* %235, i64 0
  %236 = load i16, i16* %arrayidx295, align 2, !tbaa !57
  %conv296 = zext i16 %236 to i32
  %and297 = and i32 %conv296, 65280
  %237 = load i32, i32* %cskew274, align 4, !tbaa !5
  %shr298 = ashr i32 %and297, %237
  %and299 = and i32 %shr298, 255
  br label %cond.end.300

cond.end.300:                                     ; preds = %cond.false.294, %cond.true.282
  %cond301 = phi i32 [ %add293, %cond.true.282 ], [ %and299, %cond.false.294 ]
  %238 = load i32, i32* %invert, align 4, !tbaa !5
  %xor302 = xor i32 %cond301, %238
  %239 = load i32, i32* %mask, align 4, !tbaa !5
  %and303 = and i32 %xor302, %239
  %240 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %241 = bitcast i8* %240 to i16*
  %arrayidx304 = getelementptr inbounds i16, i16* %241, i64 0
  %242 = load i16, i16* %arrayidx304, align 2, !tbaa !57
  %conv305 = zext i16 %242 to i32
  %or306 = or i32 %conv305, %and303
  %conv307 = trunc i32 %or306 to i16
  store i16 %conv307, i16* %arrayidx304, align 2, !tbaa !57
  %243 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec308 = add nsw i32 %243, -1
  store i32 %dec308, i32* %h.addr, align 4, !tbaa !5
  %cmp309 = icmp eq i32 %dec308, 0
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %cond.end.300
  br label %for.end.317

if.end.312:                                       ; preds = %cond.end.300
  %244 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %245 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext313 = sext i32 %244 to i64
  %add.ptr314 = getelementptr inbounds i8, i8* %245, i64 %idx.ext313
  store i8* %add.ptr314, i8** %bptr, align 8, !tbaa !1
  %246 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %247 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext315 = zext i32 %246 to i64
  %add.ptr316 = getelementptr inbounds i8, i8* %247, i64 %idx.ext315
  store i8* %add.ptr316, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.279

for.end.317:                                      ; preds = %if.then.311
  br label %sw.epilog.409

sw.bb.318:                                        ; preds = %if.then.273
  br label %for.cond.319

for.cond.319:                                     ; preds = %if.end.355, %sw.bb.318
  %248 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %249 = bitcast i8* %248 to i16*
  %arrayidx320 = getelementptr inbounds i16, i16* %249, i64 0
  %250 = load i16, i16* %arrayidx320, align 2, !tbaa !57
  %conv321 = zext i16 %250 to i32
  %251 = load i32, i32* %mask, align 4, !tbaa !5
  %neg322 = xor i32 %251, -1
  %and323 = and i32 %conv321, %neg322
  %252 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp324 = icmp slt i32 %252, 8
  br i1 %cmp324, label %cond.true.326, label %cond.false.338

cond.true.326:                                    ; preds = %for.cond.319
  %253 = load i8*, i8** %bptr, align 8, !tbaa !1
  %254 = bitcast i8* %253 to i16*
  %arrayidx327 = getelementptr inbounds i16, i16* %254, i64 0
  %255 = load i16, i16* %arrayidx327, align 2, !tbaa !57
  %conv328 = zext i16 %255 to i32
  %256 = load i32, i32* %skew, align 4, !tbaa !5
  %shl329 = shl i32 %conv328, %256
  %257 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom330 = sext i32 %257 to i64
  %arrayidx331 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom330
  %258 = load i16, i16* %arrayidx331, align 2, !tbaa !57
  %conv332 = zext i16 %258 to i32
  %and333 = and i32 %shl329, %conv332
  %259 = load i8*, i8** %bptr, align 8, !tbaa !1
  %260 = bitcast i8* %259 to i16*
  %arrayidx334 = getelementptr inbounds i16, i16* %260, i64 0
  %261 = load i16, i16* %arrayidx334, align 2, !tbaa !57
  %conv335 = zext i16 %261 to i32
  %262 = load i32, i32* %cskew274, align 4, !tbaa !5
  %shr336 = ashr i32 %conv335, %262
  %add337 = add nsw i32 %and333, %shr336
  br label %cond.end.344

cond.false.338:                                   ; preds = %for.cond.319
  %263 = load i8*, i8** %bptr, align 8, !tbaa !1
  %264 = bitcast i8* %263 to i16*
  %arrayidx339 = getelementptr inbounds i16, i16* %264, i64 0
  %265 = load i16, i16* %arrayidx339, align 2, !tbaa !57
  %conv340 = zext i16 %265 to i32
  %and341 = and i32 %conv340, 65280
  %266 = load i32, i32* %cskew274, align 4, !tbaa !5
  %shr342 = ashr i32 %and341, %266
  %and343 = and i32 %shr342, 255
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.338, %cond.true.326
  %cond345 = phi i32 [ %add337, %cond.true.326 ], [ %and343, %cond.false.338 ]
  %267 = load i32, i32* %invert, align 4, !tbaa !5
  %xor346 = xor i32 %cond345, %267
  %268 = load i32, i32* %mask, align 4, !tbaa !5
  %and347 = and i32 %xor346, %268
  %or348 = or i32 %and323, %and347
  %conv349 = trunc i32 %or348 to i16
  %269 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %270 = bitcast i8* %269 to i16*
  %arrayidx350 = getelementptr inbounds i16, i16* %270, i64 0
  store i16 %conv349, i16* %arrayidx350, align 2, !tbaa !57
  %271 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec351 = add nsw i32 %271, -1
  store i32 %dec351, i32* %h.addr, align 4, !tbaa !5
  %cmp352 = icmp eq i32 %dec351, 0
  br i1 %cmp352, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %cond.end.344
  br label %for.end.360

if.end.355:                                       ; preds = %cond.end.344
  %272 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %273 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext356 = sext i32 %272 to i64
  %add.ptr357 = getelementptr inbounds i8, i8* %273, i64 %idx.ext356
  store i8* %add.ptr357, i8** %bptr, align 8, !tbaa !1
  %274 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %275 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext358 = zext i32 %274 to i64
  %add.ptr359 = getelementptr inbounds i8, i8* %275, i64 %idx.ext358
  store i8* %add.ptr359, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.319

for.end.360:                                      ; preds = %if.then.354
  br label %sw.epilog.409

sw.bb.361:                                        ; preds = %if.then.273
  br label %for.cond.362

for.cond.362:                                     ; preds = %if.end.396, %sw.bb.361
  %276 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp363 = icmp slt i32 %276, 8
  br i1 %cmp363, label %cond.true.365, label %cond.false.377

cond.true.365:                                    ; preds = %for.cond.362
  %277 = load i8*, i8** %bptr, align 8, !tbaa !1
  %278 = bitcast i8* %277 to i16*
  %arrayidx366 = getelementptr inbounds i16, i16* %278, i64 0
  %279 = load i16, i16* %arrayidx366, align 2, !tbaa !57
  %conv367 = zext i16 %279 to i32
  %280 = load i32, i32* %skew, align 4, !tbaa !5
  %shl368 = shl i32 %conv367, %280
  %281 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom369 = sext i32 %281 to i64
  %arrayidx370 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom369
  %282 = load i16, i16* %arrayidx370, align 2, !tbaa !57
  %conv371 = zext i16 %282 to i32
  %and372 = and i32 %shl368, %conv371
  %283 = load i8*, i8** %bptr, align 8, !tbaa !1
  %284 = bitcast i8* %283 to i16*
  %arrayidx373 = getelementptr inbounds i16, i16* %284, i64 0
  %285 = load i16, i16* %arrayidx373, align 2, !tbaa !57
  %conv374 = zext i16 %285 to i32
  %286 = load i32, i32* %cskew274, align 4, !tbaa !5
  %shr375 = ashr i32 %conv374, %286
  %add376 = add nsw i32 %and372, %shr375
  br label %cond.end.383

cond.false.377:                                   ; preds = %for.cond.362
  %287 = load i8*, i8** %bptr, align 8, !tbaa !1
  %288 = bitcast i8* %287 to i16*
  %arrayidx378 = getelementptr inbounds i16, i16* %288, i64 0
  %289 = load i16, i16* %arrayidx378, align 2, !tbaa !57
  %conv379 = zext i16 %289 to i32
  %and380 = and i32 %conv379, 65280
  %290 = load i32, i32* %cskew274, align 4, !tbaa !5
  %shr381 = ashr i32 %and380, %290
  %and382 = and i32 %shr381, 255
  br label %cond.end.383

cond.end.383:                                     ; preds = %cond.false.377, %cond.true.365
  %cond384 = phi i32 [ %add376, %cond.true.365 ], [ %and382, %cond.false.377 ]
  %291 = load i32, i32* %invert, align 4, !tbaa !5
  %xor385 = xor i32 %cond384, %291
  %292 = load i32, i32* %mask, align 4, !tbaa !5
  %neg386 = xor i32 %292, -1
  %or387 = or i32 %xor385, %neg386
  %293 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %294 = bitcast i8* %293 to i16*
  %arrayidx388 = getelementptr inbounds i16, i16* %294, i64 0
  %295 = load i16, i16* %arrayidx388, align 2, !tbaa !57
  %conv389 = zext i16 %295 to i32
  %and390 = and i32 %conv389, %or387
  %conv391 = trunc i32 %and390 to i16
  store i16 %conv391, i16* %arrayidx388, align 2, !tbaa !57
  %296 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec392 = add nsw i32 %296, -1
  store i32 %dec392, i32* %h.addr, align 4, !tbaa !5
  %cmp393 = icmp eq i32 %dec392, 0
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %cond.end.383
  br label %for.end.401

if.end.396:                                       ; preds = %cond.end.383
  %297 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %298 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext397 = sext i32 %297 to i64
  %add.ptr398 = getelementptr inbounds i8, i8* %298, i64 %idx.ext397
  store i8* %add.ptr398, i8** %bptr, align 8, !tbaa !1
  %299 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %300 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext399 = zext i32 %299 to i64
  %add.ptr400 = getelementptr inbounds i8, i8* %300, i64 %idx.ext399
  store i8* %add.ptr400, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.362

for.end.401:                                      ; preds = %if.then.395
  br label %sw.epilog.409

sw.default.402:                                   ; preds = %if.then.273
  %301 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool403 = icmp ne i32 %301, 0
  br i1 %tobool403, label %cond.true.404, label %cond.false.405

cond.true.404:                                    ; preds = %sw.default.402
  br label %cond.end.407

cond.false.405:                                   ; preds = %sw.default.402
  %302 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %303 = load i32, i32* %x.addr, align 4, !tbaa !5
  %304 = load i32, i32* %y.addr, align 4, !tbaa !5
  %305 = load i32, i32* %w.addr, align 4, !tbaa !5
  %306 = load i32, i32* %h.addr, align 4, !tbaa !5
  %307 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call406 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %302, i32 %303, i32 %304, i32 %305, i32 %306, i64 %307) #3
  br label %cond.end.407

cond.end.407:                                     ; preds = %cond.false.405, %cond.true.404
  %cond408 = phi i32 [ -1, %cond.true.404 ], [ %call406, %cond.false.405 ]
  store i32 %cond408, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.410

sw.epilog.409:                                    ; preds = %for.end.401, %for.end.360, %for.end.317
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.410

cleanup.410:                                      ; preds = %sw.epilog.409, %cond.end.407
  %308 = bitcast i32* %cskew274 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %cleanup.dest.411 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.411, label %cleanup.1678 [
    i32 0, label %cleanup.cont.412
  ]

cleanup.cont.412:                                 ; preds = %cleanup.410
  br label %if.end.607

if.else.413:                                      ; preds = %if.else.270
  %309 = bitcast i32* %cskew414 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %309) #1
  %310 = load i32, i32* %skew, align 4, !tbaa !5
  %sub415 = sub nsw i32 0, %310
  store i32 %sub415, i32* %cskew414, align 4, !tbaa !5
  %311 = load i32, i32* %skew, align 4, !tbaa !5
  %add416 = add nsw i32 %311, 16
  store i32 %add416, i32* %skew, align 4, !tbaa !5
  %op417 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %312 = load i32, i32* %op417, align 4, !tbaa !58
  switch i32 %312, label %sw.default.596 [
    i32 0, label %sw.bb.418
    i32 1, label %sw.bb.476
    i32 2, label %sw.bb.537
  ]

sw.bb.418:                                        ; preds = %if.else.413
  br label %for.cond.419

for.cond.419:                                     ; preds = %if.end.470, %sw.bb.418
  %313 = load i32, i32* %cskew414, align 4, !tbaa !5
  %cmp420 = icmp slt i32 %313, 8
  br i1 %cmp420, label %cond.true.422, label %cond.false.440

cond.true.422:                                    ; preds = %for.cond.419
  %314 = load i8*, i8** %bptr, align 8, !tbaa !1
  %315 = bitcast i8* %314 to i16*
  %arrayidx423 = getelementptr inbounds i16, i16* %315, i64 0
  %316 = load i16, i16* %arrayidx423, align 2, !tbaa !57
  %conv424 = zext i16 %316 to i32
  %317 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl425 = shl i32 %conv424, %317
  %318 = load i32, i32* %cskew414, align 4, !tbaa !5
  %idxprom426 = sext i32 %318 to i64
  %arrayidx427 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom426
  %319 = load i16, i16* %arrayidx427, align 2, !tbaa !57
  %conv428 = zext i16 %319 to i32
  %and429 = and i32 %shl425, %conv428
  %320 = load i8*, i8** %bptr, align 8, !tbaa !1
  %321 = bitcast i8* %320 to i16*
  %arrayidx430 = getelementptr inbounds i16, i16* %321, i64 0
  %322 = load i16, i16* %arrayidx430, align 2, !tbaa !57
  %conv431 = zext i16 %322 to i32
  %323 = load i32, i32* %skew, align 4, !tbaa !5
  %shr432 = ashr i32 %conv431, %323
  %add433 = add nsw i32 %and429, %shr432
  %324 = load i8*, i8** %bptr, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds i8, i8* %324, i64 2
  %325 = load i8, i8* %arrayidx434, align 1, !tbaa !9
  %conv435 = zext i8 %325 to i16
  %conv436 = zext i16 %conv435 to i32
  %326 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl437 = shl i32 %conv436, %326
  %and438 = and i32 %shl437, 65280
  %add439 = add nsw i32 %add433, %and438
  br label %cond.end.458

cond.false.440:                                   ; preds = %for.cond.419
  %327 = load i8*, i8** %bptr, align 8, !tbaa !1
  %328 = bitcast i8* %327 to i16*
  %arrayidx441 = getelementptr inbounds i16, i16* %328, i64 0
  %329 = load i16, i16* %arrayidx441, align 2, !tbaa !57
  %conv442 = zext i16 %329 to i32
  %and443 = and i32 %conv442, 65280
  %330 = load i32, i32* %skew, align 4, !tbaa !5
  %shr444 = ashr i32 %and443, %330
  %and445 = and i32 %shr444, 255
  %331 = load i8*, i8** %bptr, align 8, !tbaa !1
  %332 = bitcast i8* %331 to i16*
  %arrayidx446 = getelementptr inbounds i16, i16* %332, i64 1
  %333 = load i16, i16* %arrayidx446, align 2, !tbaa !57
  %conv447 = zext i16 %333 to i32
  %334 = load i32, i32* %skew, align 4, !tbaa !5
  %shr448 = ashr i32 %conv447, %334
  %335 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom449 = sext i32 %335 to i64
  %arrayidx450 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom449
  %336 = load i16, i16* %arrayidx450, align 2, !tbaa !57
  %conv451 = zext i16 %336 to i32
  %and452 = and i32 %shr448, %conv451
  %add453 = add nsw i32 %and445, %and452
  %337 = load i8*, i8** %bptr, align 8, !tbaa !1
  %338 = bitcast i8* %337 to i16*
  %arrayidx454 = getelementptr inbounds i16, i16* %338, i64 1
  %339 = load i16, i16* %arrayidx454, align 2, !tbaa !57
  %conv455 = zext i16 %339 to i32
  %340 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl456 = shl i32 %conv455, %340
  %add457 = add nsw i32 %add453, %shl456
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.false.440, %cond.true.422
  %cond459 = phi i32 [ %add439, %cond.true.422 ], [ %add457, %cond.false.440 ]
  %341 = load i32, i32* %invert, align 4, !tbaa !5
  %xor460 = xor i32 %cond459, %341
  %342 = load i32, i32* %mask, align 4, !tbaa !5
  %and461 = and i32 %xor460, %342
  %343 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %344 = bitcast i8* %343 to i16*
  %arrayidx462 = getelementptr inbounds i16, i16* %344, i64 0
  %345 = load i16, i16* %arrayidx462, align 2, !tbaa !57
  %conv463 = zext i16 %345 to i32
  %or464 = or i32 %conv463, %and461
  %conv465 = trunc i32 %or464 to i16
  store i16 %conv465, i16* %arrayidx462, align 2, !tbaa !57
  %346 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec466 = add nsw i32 %346, -1
  store i32 %dec466, i32* %h.addr, align 4, !tbaa !5
  %cmp467 = icmp eq i32 %dec466, 0
  br i1 %cmp467, label %if.then.469, label %if.end.470

if.then.469:                                      ; preds = %cond.end.458
  br label %for.end.475

if.end.470:                                       ; preds = %cond.end.458
  %347 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %348 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext471 = sext i32 %347 to i64
  %add.ptr472 = getelementptr inbounds i8, i8* %348, i64 %idx.ext471
  store i8* %add.ptr472, i8** %bptr, align 8, !tbaa !1
  %349 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %350 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext473 = zext i32 %349 to i64
  %add.ptr474 = getelementptr inbounds i8, i8* %350, i64 %idx.ext473
  store i8* %add.ptr474, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.419

for.end.475:                                      ; preds = %if.then.469
  br label %sw.epilog.603

sw.bb.476:                                        ; preds = %if.else.413
  br label %for.cond.477

for.cond.477:                                     ; preds = %if.end.531, %sw.bb.476
  %351 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %352 = bitcast i8* %351 to i16*
  %arrayidx478 = getelementptr inbounds i16, i16* %352, i64 0
  %353 = load i16, i16* %arrayidx478, align 2, !tbaa !57
  %conv479 = zext i16 %353 to i32
  %354 = load i32, i32* %mask, align 4, !tbaa !5
  %neg480 = xor i32 %354, -1
  %and481 = and i32 %conv479, %neg480
  %355 = load i32, i32* %cskew414, align 4, !tbaa !5
  %cmp482 = icmp slt i32 %355, 8
  br i1 %cmp482, label %cond.true.484, label %cond.false.502

cond.true.484:                                    ; preds = %for.cond.477
  %356 = load i8*, i8** %bptr, align 8, !tbaa !1
  %357 = bitcast i8* %356 to i16*
  %arrayidx485 = getelementptr inbounds i16, i16* %357, i64 0
  %358 = load i16, i16* %arrayidx485, align 2, !tbaa !57
  %conv486 = zext i16 %358 to i32
  %359 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl487 = shl i32 %conv486, %359
  %360 = load i32, i32* %cskew414, align 4, !tbaa !5
  %idxprom488 = sext i32 %360 to i64
  %arrayidx489 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom488
  %361 = load i16, i16* %arrayidx489, align 2, !tbaa !57
  %conv490 = zext i16 %361 to i32
  %and491 = and i32 %shl487, %conv490
  %362 = load i8*, i8** %bptr, align 8, !tbaa !1
  %363 = bitcast i8* %362 to i16*
  %arrayidx492 = getelementptr inbounds i16, i16* %363, i64 0
  %364 = load i16, i16* %arrayidx492, align 2, !tbaa !57
  %conv493 = zext i16 %364 to i32
  %365 = load i32, i32* %skew, align 4, !tbaa !5
  %shr494 = ashr i32 %conv493, %365
  %add495 = add nsw i32 %and491, %shr494
  %366 = load i8*, i8** %bptr, align 8, !tbaa !1
  %arrayidx496 = getelementptr inbounds i8, i8* %366, i64 2
  %367 = load i8, i8* %arrayidx496, align 1, !tbaa !9
  %conv497 = zext i8 %367 to i16
  %conv498 = zext i16 %conv497 to i32
  %368 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl499 = shl i32 %conv498, %368
  %and500 = and i32 %shl499, 65280
  %add501 = add nsw i32 %add495, %and500
  br label %cond.end.520

cond.false.502:                                   ; preds = %for.cond.477
  %369 = load i8*, i8** %bptr, align 8, !tbaa !1
  %370 = bitcast i8* %369 to i16*
  %arrayidx503 = getelementptr inbounds i16, i16* %370, i64 0
  %371 = load i16, i16* %arrayidx503, align 2, !tbaa !57
  %conv504 = zext i16 %371 to i32
  %and505 = and i32 %conv504, 65280
  %372 = load i32, i32* %skew, align 4, !tbaa !5
  %shr506 = ashr i32 %and505, %372
  %and507 = and i32 %shr506, 255
  %373 = load i8*, i8** %bptr, align 8, !tbaa !1
  %374 = bitcast i8* %373 to i16*
  %arrayidx508 = getelementptr inbounds i16, i16* %374, i64 1
  %375 = load i16, i16* %arrayidx508, align 2, !tbaa !57
  %conv509 = zext i16 %375 to i32
  %376 = load i32, i32* %skew, align 4, !tbaa !5
  %shr510 = ashr i32 %conv509, %376
  %377 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom511 = sext i32 %377 to i64
  %arrayidx512 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom511
  %378 = load i16, i16* %arrayidx512, align 2, !tbaa !57
  %conv513 = zext i16 %378 to i32
  %and514 = and i32 %shr510, %conv513
  %add515 = add nsw i32 %and507, %and514
  %379 = load i8*, i8** %bptr, align 8, !tbaa !1
  %380 = bitcast i8* %379 to i16*
  %arrayidx516 = getelementptr inbounds i16, i16* %380, i64 1
  %381 = load i16, i16* %arrayidx516, align 2, !tbaa !57
  %conv517 = zext i16 %381 to i32
  %382 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl518 = shl i32 %conv517, %382
  %add519 = add nsw i32 %add515, %shl518
  br label %cond.end.520

cond.end.520:                                     ; preds = %cond.false.502, %cond.true.484
  %cond521 = phi i32 [ %add501, %cond.true.484 ], [ %add519, %cond.false.502 ]
  %383 = load i32, i32* %invert, align 4, !tbaa !5
  %xor522 = xor i32 %cond521, %383
  %384 = load i32, i32* %mask, align 4, !tbaa !5
  %and523 = and i32 %xor522, %384
  %or524 = or i32 %and481, %and523
  %conv525 = trunc i32 %or524 to i16
  %385 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %386 = bitcast i8* %385 to i16*
  %arrayidx526 = getelementptr inbounds i16, i16* %386, i64 0
  store i16 %conv525, i16* %arrayidx526, align 2, !tbaa !57
  %387 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec527 = add nsw i32 %387, -1
  store i32 %dec527, i32* %h.addr, align 4, !tbaa !5
  %cmp528 = icmp eq i32 %dec527, 0
  br i1 %cmp528, label %if.then.530, label %if.end.531

if.then.530:                                      ; preds = %cond.end.520
  br label %for.end.536

if.end.531:                                       ; preds = %cond.end.520
  %388 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %389 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext532 = sext i32 %388 to i64
  %add.ptr533 = getelementptr inbounds i8, i8* %389, i64 %idx.ext532
  store i8* %add.ptr533, i8** %bptr, align 8, !tbaa !1
  %390 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %391 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext534 = zext i32 %390 to i64
  %add.ptr535 = getelementptr inbounds i8, i8* %391, i64 %idx.ext534
  store i8* %add.ptr535, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.477

for.end.536:                                      ; preds = %if.then.530
  br label %sw.epilog.603

sw.bb.537:                                        ; preds = %if.else.413
  br label %for.cond.538

for.cond.538:                                     ; preds = %if.end.590, %sw.bb.537
  %392 = load i32, i32* %cskew414, align 4, !tbaa !5
  %cmp539 = icmp slt i32 %392, 8
  br i1 %cmp539, label %cond.true.541, label %cond.false.559

cond.true.541:                                    ; preds = %for.cond.538
  %393 = load i8*, i8** %bptr, align 8, !tbaa !1
  %394 = bitcast i8* %393 to i16*
  %arrayidx542 = getelementptr inbounds i16, i16* %394, i64 0
  %395 = load i16, i16* %arrayidx542, align 2, !tbaa !57
  %conv543 = zext i16 %395 to i32
  %396 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl544 = shl i32 %conv543, %396
  %397 = load i32, i32* %cskew414, align 4, !tbaa !5
  %idxprom545 = sext i32 %397 to i64
  %arrayidx546 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom545
  %398 = load i16, i16* %arrayidx546, align 2, !tbaa !57
  %conv547 = zext i16 %398 to i32
  %and548 = and i32 %shl544, %conv547
  %399 = load i8*, i8** %bptr, align 8, !tbaa !1
  %400 = bitcast i8* %399 to i16*
  %arrayidx549 = getelementptr inbounds i16, i16* %400, i64 0
  %401 = load i16, i16* %arrayidx549, align 2, !tbaa !57
  %conv550 = zext i16 %401 to i32
  %402 = load i32, i32* %skew, align 4, !tbaa !5
  %shr551 = ashr i32 %conv550, %402
  %add552 = add nsw i32 %and548, %shr551
  %403 = load i8*, i8** %bptr, align 8, !tbaa !1
  %arrayidx553 = getelementptr inbounds i8, i8* %403, i64 2
  %404 = load i8, i8* %arrayidx553, align 1, !tbaa !9
  %conv554 = zext i8 %404 to i16
  %conv555 = zext i16 %conv554 to i32
  %405 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl556 = shl i32 %conv555, %405
  %and557 = and i32 %shl556, 65280
  %add558 = add nsw i32 %add552, %and557
  br label %cond.end.577

cond.false.559:                                   ; preds = %for.cond.538
  %406 = load i8*, i8** %bptr, align 8, !tbaa !1
  %407 = bitcast i8* %406 to i16*
  %arrayidx560 = getelementptr inbounds i16, i16* %407, i64 0
  %408 = load i16, i16* %arrayidx560, align 2, !tbaa !57
  %conv561 = zext i16 %408 to i32
  %and562 = and i32 %conv561, 65280
  %409 = load i32, i32* %skew, align 4, !tbaa !5
  %shr563 = ashr i32 %and562, %409
  %and564 = and i32 %shr563, 255
  %410 = load i8*, i8** %bptr, align 8, !tbaa !1
  %411 = bitcast i8* %410 to i16*
  %arrayidx565 = getelementptr inbounds i16, i16* %411, i64 1
  %412 = load i16, i16* %arrayidx565, align 2, !tbaa !57
  %conv566 = zext i16 %412 to i32
  %413 = load i32, i32* %skew, align 4, !tbaa !5
  %shr567 = ashr i32 %conv566, %413
  %414 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom568 = sext i32 %414 to i64
  %arrayidx569 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom568
  %415 = load i16, i16* %arrayidx569, align 2, !tbaa !57
  %conv570 = zext i16 %415 to i32
  %and571 = and i32 %shr567, %conv570
  %add572 = add nsw i32 %and564, %and571
  %416 = load i8*, i8** %bptr, align 8, !tbaa !1
  %417 = bitcast i8* %416 to i16*
  %arrayidx573 = getelementptr inbounds i16, i16* %417, i64 1
  %418 = load i16, i16* %arrayidx573, align 2, !tbaa !57
  %conv574 = zext i16 %418 to i32
  %419 = load i32, i32* %cskew414, align 4, !tbaa !5
  %shl575 = shl i32 %conv574, %419
  %add576 = add nsw i32 %add572, %shl575
  br label %cond.end.577

cond.end.577:                                     ; preds = %cond.false.559, %cond.true.541
  %cond578 = phi i32 [ %add558, %cond.true.541 ], [ %add576, %cond.false.559 ]
  %420 = load i32, i32* %invert, align 4, !tbaa !5
  %xor579 = xor i32 %cond578, %420
  %421 = load i32, i32* %mask, align 4, !tbaa !5
  %neg580 = xor i32 %421, -1
  %or581 = or i32 %xor579, %neg580
  %422 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %423 = bitcast i8* %422 to i16*
  %arrayidx582 = getelementptr inbounds i16, i16* %423, i64 0
  %424 = load i16, i16* %arrayidx582, align 2, !tbaa !57
  %conv583 = zext i16 %424 to i32
  %and584 = and i32 %conv583, %or581
  %conv585 = trunc i32 %and584 to i16
  store i16 %conv585, i16* %arrayidx582, align 2, !tbaa !57
  %425 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec586 = add nsw i32 %425, -1
  store i32 %dec586, i32* %h.addr, align 4, !tbaa !5
  %cmp587 = icmp eq i32 %dec586, 0
  br i1 %cmp587, label %if.then.589, label %if.end.590

if.then.589:                                      ; preds = %cond.end.577
  br label %for.end.595

if.end.590:                                       ; preds = %cond.end.577
  %426 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %427 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext591 = sext i32 %426 to i64
  %add.ptr592 = getelementptr inbounds i8, i8* %427, i64 %idx.ext591
  store i8* %add.ptr592, i8** %bptr, align 8, !tbaa !1
  %428 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %429 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext593 = zext i32 %428 to i64
  %add.ptr594 = getelementptr inbounds i8, i8* %429, i64 %idx.ext593
  store i8* %add.ptr594, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.538

for.end.595:                                      ; preds = %if.then.589
  br label %sw.epilog.603

sw.default.596:                                   ; preds = %if.else.413
  %430 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool597 = icmp ne i32 %430, 0
  br i1 %tobool597, label %cond.true.598, label %cond.false.599

cond.true.598:                                    ; preds = %sw.default.596
  br label %cond.end.601

cond.false.599:                                   ; preds = %sw.default.596
  %431 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %432 = load i32, i32* %x.addr, align 4, !tbaa !5
  %433 = load i32, i32* %y.addr, align 4, !tbaa !5
  %434 = load i32, i32* %w.addr, align 4, !tbaa !5
  %435 = load i32, i32* %h.addr, align 4, !tbaa !5
  %436 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call600 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %431, i32 %432, i32 %433, i32 %434, i32 %435, i64 %436) #3
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.599, %cond.true.598
  %cond602 = phi i32 [ -1, %cond.true.598 ], [ %call600, %cond.false.599 ]
  store i32 %cond602, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.604

sw.epilog.603:                                    ; preds = %for.end.595, %for.end.536, %for.end.475
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.604

cleanup.604:                                      ; preds = %sw.epilog.603, %cond.end.601
  %437 = bitcast i32* %cskew414 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %437) #1
  %cleanup.dest.605 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.605, label %cleanup.1678 [
    i32 0, label %cleanup.cont.606
  ]

cleanup.cont.606:                                 ; preds = %cleanup.604
  br label %if.end.607

if.end.607:                                       ; preds = %cleanup.cont.606, %cleanup.cont.412
  br label %if.end.608

if.end.608:                                       ; preds = %if.end.607, %if.end.269
  br label %if.end.1677

if.else.609:                                      ; preds = %if.end.41
  %438 = load i32, i32* %wleft, align 4, !tbaa !5
  %439 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp610 = icmp sle i32 %438, %439
  br i1 %cmp610, label %if.then.612, label %if.else.844

if.then.612:                                      ; preds = %if.else.609
  %440 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %440) #1
  %441 = bitcast i32* %cskew613 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %441) #1
  %442 = load i32, i32* %skew, align 4, !tbaa !5
  %sub614 = sub nsw i32 16, %442
  store i32 %sub614, i32* %cskew613, align 4, !tbaa !5
  %443 = load i32, i32* %dbit, align 4, !tbaa !5
  %idxprom615 = sext i32 %443 to i64
  %arrayidx616 = getelementptr inbounds [17 x i16], [17 x i16]* @mono_copy_masks, i32 0, i64 %idxprom615
  %444 = load i16, i16* %arrayidx616, align 2, !tbaa !57
  %conv617 = zext i16 %444 to i32
  store i32 %conv617, i32* %mask, align 4, !tbaa !5
  %445 = load i32, i32* %wleft, align 4, !tbaa !5
  %idxprom618 = sext i32 %445 to i64
  %arrayidx619 = getelementptr inbounds [17 x i16], [17 x i16]* @mono_copy_masks, i32 0, i64 %idxprom618
  %446 = load i16, i16* %arrayidx619, align 2, !tbaa !57
  %conv620 = zext i16 %446 to i32
  %neg621 = xor i32 %conv620, -1
  store i32 %neg621, i32* %rmask, align 4, !tbaa !5
  %op622 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %447 = load i32, i32* %op622, align 4, !tbaa !58
  switch i32 %447, label %sw.default.832 [
    i32 0, label %sw.bb.623
    i32 1, label %sw.bb.690
    i32 2, label %sw.bb.763
  ]

sw.bb.623:                                        ; preds = %if.then.612
  br label %for.cond.624

for.cond.624:                                     ; preds = %if.end.684, %sw.bb.623
  %448 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp625 = icmp slt i32 %448, 8
  br i1 %cmp625, label %cond.true.627, label %cond.false.639

cond.true.627:                                    ; preds = %for.cond.624
  %449 = load i8*, i8** %bptr, align 8, !tbaa !1
  %450 = bitcast i8* %449 to i16*
  %arrayidx628 = getelementptr inbounds i16, i16* %450, i64 0
  %451 = load i16, i16* %arrayidx628, align 2, !tbaa !57
  %conv629 = zext i16 %451 to i32
  %452 = load i32, i32* %skew, align 4, !tbaa !5
  %shr630 = ashr i32 %conv629, %452
  %453 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom631 = sext i32 %453 to i64
  %arrayidx632 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom631
  %454 = load i16, i16* %arrayidx632, align 2, !tbaa !57
  %conv633 = zext i16 %454 to i32
  %and634 = and i32 %shr630, %conv633
  %455 = load i8*, i8** %bptr, align 8, !tbaa !1
  %456 = bitcast i8* %455 to i16*
  %arrayidx635 = getelementptr inbounds i16, i16* %456, i64 0
  %457 = load i16, i16* %arrayidx635, align 2, !tbaa !57
  %conv636 = zext i16 %457 to i32
  %458 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl637 = shl i32 %conv636, %458
  %add638 = add nsw i32 %and634, %shl637
  br label %cond.end.644

cond.false.639:                                   ; preds = %for.cond.624
  %459 = load i8*, i8** %bptr, align 8, !tbaa !1
  %460 = load i8, i8* %459, align 1, !tbaa !9
  %conv640 = zext i8 %460 to i16
  %conv641 = zext i16 %conv640 to i32
  %461 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl642 = shl i32 %conv641, %461
  %and643 = and i32 %shl642, 65280
  br label %cond.end.644

cond.end.644:                                     ; preds = %cond.false.639, %cond.true.627
  %cond645 = phi i32 [ %add638, %cond.true.627 ], [ %and643, %cond.false.639 ]
  %462 = load i32, i32* %invert, align 4, !tbaa !5
  %xor646 = xor i32 %cond645, %462
  %463 = load i32, i32* %mask, align 4, !tbaa !5
  %and647 = and i32 %xor646, %463
  %464 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %465 = bitcast i8* %464 to i16*
  %arrayidx648 = getelementptr inbounds i16, i16* %465, i64 0
  %466 = load i16, i16* %arrayidx648, align 2, !tbaa !57
  %conv649 = zext i16 %466 to i32
  %or650 = or i32 %conv649, %and647
  %conv651 = trunc i32 %or650 to i16
  store i16 %conv651, i16* %arrayidx648, align 2, !tbaa !57
  %467 = load i32, i32* %cskew613, align 4, !tbaa !5
  %cmp652 = icmp slt i32 %467, 8
  br i1 %cmp652, label %cond.true.654, label %cond.false.666

cond.true.654:                                    ; preds = %cond.end.644
  %468 = load i8*, i8** %bptr, align 8, !tbaa !1
  %469 = bitcast i8* %468 to i16*
  %arrayidx655 = getelementptr inbounds i16, i16* %469, i64 0
  %470 = load i16, i16* %arrayidx655, align 2, !tbaa !57
  %conv656 = zext i16 %470 to i32
  %471 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl657 = shl i32 %conv656, %471
  %472 = load i32, i32* %cskew613, align 4, !tbaa !5
  %idxprom658 = sext i32 %472 to i64
  %arrayidx659 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom658
  %473 = load i16, i16* %arrayidx659, align 2, !tbaa !57
  %conv660 = zext i16 %473 to i32
  %and661 = and i32 %shl657, %conv660
  %474 = load i8*, i8** %bptr, align 8, !tbaa !1
  %475 = bitcast i8* %474 to i16*
  %arrayidx662 = getelementptr inbounds i16, i16* %475, i64 0
  %476 = load i16, i16* %arrayidx662, align 2, !tbaa !57
  %conv663 = zext i16 %476 to i32
  %477 = load i32, i32* %skew, align 4, !tbaa !5
  %shr664 = ashr i32 %conv663, %477
  %add665 = add nsw i32 %and661, %shr664
  br label %cond.end.672

cond.false.666:                                   ; preds = %cond.end.644
  %478 = load i8*, i8** %bptr, align 8, !tbaa !1
  %479 = bitcast i8* %478 to i16*
  %arrayidx667 = getelementptr inbounds i16, i16* %479, i64 0
  %480 = load i16, i16* %arrayidx667, align 2, !tbaa !57
  %conv668 = zext i16 %480 to i32
  %and669 = and i32 %conv668, 65280
  %481 = load i32, i32* %skew, align 4, !tbaa !5
  %shr670 = ashr i32 %and669, %481
  %and671 = and i32 %shr670, 255
  br label %cond.end.672

cond.end.672:                                     ; preds = %cond.false.666, %cond.true.654
  %cond673 = phi i32 [ %add665, %cond.true.654 ], [ %and671, %cond.false.666 ]
  %482 = load i32, i32* %invert, align 4, !tbaa !5
  %xor674 = xor i32 %cond673, %482
  %483 = load i32, i32* %rmask, align 4, !tbaa !5
  %and675 = and i32 %xor674, %483
  %484 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %485 = bitcast i8* %484 to i16*
  %arrayidx676 = getelementptr inbounds i16, i16* %485, i64 1
  %486 = load i16, i16* %arrayidx676, align 2, !tbaa !57
  %conv677 = zext i16 %486 to i32
  %or678 = or i32 %conv677, %and675
  %conv679 = trunc i32 %or678 to i16
  store i16 %conv679, i16* %arrayidx676, align 2, !tbaa !57
  %487 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec680 = add nsw i32 %487, -1
  store i32 %dec680, i32* %h.addr, align 4, !tbaa !5
  %cmp681 = icmp eq i32 %dec680, 0
  br i1 %cmp681, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %cond.end.672
  br label %for.end.689

if.end.684:                                       ; preds = %cond.end.672
  %488 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %489 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext685 = sext i32 %488 to i64
  %add.ptr686 = getelementptr inbounds i8, i8* %489, i64 %idx.ext685
  store i8* %add.ptr686, i8** %bptr, align 8, !tbaa !1
  %490 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %491 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext687 = zext i32 %490 to i64
  %add.ptr688 = getelementptr inbounds i8, i8* %491, i64 %idx.ext687
  store i8* %add.ptr688, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.624

for.end.689:                                      ; preds = %if.then.683
  br label %sw.epilog.839

sw.bb.690:                                        ; preds = %if.then.612
  br label %for.cond.691

for.cond.691:                                     ; preds = %if.end.757, %sw.bb.690
  %492 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %493 = bitcast i8* %492 to i16*
  %arrayidx692 = getelementptr inbounds i16, i16* %493, i64 0
  %494 = load i16, i16* %arrayidx692, align 2, !tbaa !57
  %conv693 = zext i16 %494 to i32
  %495 = load i32, i32* %mask, align 4, !tbaa !5
  %neg694 = xor i32 %495, -1
  %and695 = and i32 %conv693, %neg694
  %496 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp696 = icmp slt i32 %496, 8
  br i1 %cmp696, label %cond.true.698, label %cond.false.710

cond.true.698:                                    ; preds = %for.cond.691
  %497 = load i8*, i8** %bptr, align 8, !tbaa !1
  %498 = bitcast i8* %497 to i16*
  %arrayidx699 = getelementptr inbounds i16, i16* %498, i64 0
  %499 = load i16, i16* %arrayidx699, align 2, !tbaa !57
  %conv700 = zext i16 %499 to i32
  %500 = load i32, i32* %skew, align 4, !tbaa !5
  %shr701 = ashr i32 %conv700, %500
  %501 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom702 = sext i32 %501 to i64
  %arrayidx703 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom702
  %502 = load i16, i16* %arrayidx703, align 2, !tbaa !57
  %conv704 = zext i16 %502 to i32
  %and705 = and i32 %shr701, %conv704
  %503 = load i8*, i8** %bptr, align 8, !tbaa !1
  %504 = bitcast i8* %503 to i16*
  %arrayidx706 = getelementptr inbounds i16, i16* %504, i64 0
  %505 = load i16, i16* %arrayidx706, align 2, !tbaa !57
  %conv707 = zext i16 %505 to i32
  %506 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl708 = shl i32 %conv707, %506
  %add709 = add nsw i32 %and705, %shl708
  br label %cond.end.715

cond.false.710:                                   ; preds = %for.cond.691
  %507 = load i8*, i8** %bptr, align 8, !tbaa !1
  %508 = load i8, i8* %507, align 1, !tbaa !9
  %conv711 = zext i8 %508 to i16
  %conv712 = zext i16 %conv711 to i32
  %509 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl713 = shl i32 %conv712, %509
  %and714 = and i32 %shl713, 65280
  br label %cond.end.715

cond.end.715:                                     ; preds = %cond.false.710, %cond.true.698
  %cond716 = phi i32 [ %add709, %cond.true.698 ], [ %and714, %cond.false.710 ]
  %510 = load i32, i32* %invert, align 4, !tbaa !5
  %xor717 = xor i32 %cond716, %510
  %511 = load i32, i32* %mask, align 4, !tbaa !5
  %and718 = and i32 %xor717, %511
  %or719 = or i32 %and695, %and718
  %conv720 = trunc i32 %or719 to i16
  %512 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %513 = bitcast i8* %512 to i16*
  %arrayidx721 = getelementptr inbounds i16, i16* %513, i64 0
  store i16 %conv720, i16* %arrayidx721, align 2, !tbaa !57
  %514 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %515 = bitcast i8* %514 to i16*
  %arrayidx722 = getelementptr inbounds i16, i16* %515, i64 1
  %516 = load i16, i16* %arrayidx722, align 2, !tbaa !57
  %conv723 = zext i16 %516 to i32
  %517 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg724 = xor i32 %517, -1
  %and725 = and i32 %conv723, %neg724
  %518 = load i32, i32* %cskew613, align 4, !tbaa !5
  %cmp726 = icmp slt i32 %518, 8
  br i1 %cmp726, label %cond.true.728, label %cond.false.740

cond.true.728:                                    ; preds = %cond.end.715
  %519 = load i8*, i8** %bptr, align 8, !tbaa !1
  %520 = bitcast i8* %519 to i16*
  %arrayidx729 = getelementptr inbounds i16, i16* %520, i64 0
  %521 = load i16, i16* %arrayidx729, align 2, !tbaa !57
  %conv730 = zext i16 %521 to i32
  %522 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl731 = shl i32 %conv730, %522
  %523 = load i32, i32* %cskew613, align 4, !tbaa !5
  %idxprom732 = sext i32 %523 to i64
  %arrayidx733 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom732
  %524 = load i16, i16* %arrayidx733, align 2, !tbaa !57
  %conv734 = zext i16 %524 to i32
  %and735 = and i32 %shl731, %conv734
  %525 = load i8*, i8** %bptr, align 8, !tbaa !1
  %526 = bitcast i8* %525 to i16*
  %arrayidx736 = getelementptr inbounds i16, i16* %526, i64 0
  %527 = load i16, i16* %arrayidx736, align 2, !tbaa !57
  %conv737 = zext i16 %527 to i32
  %528 = load i32, i32* %skew, align 4, !tbaa !5
  %shr738 = ashr i32 %conv737, %528
  %add739 = add nsw i32 %and735, %shr738
  br label %cond.end.746

cond.false.740:                                   ; preds = %cond.end.715
  %529 = load i8*, i8** %bptr, align 8, !tbaa !1
  %530 = bitcast i8* %529 to i16*
  %arrayidx741 = getelementptr inbounds i16, i16* %530, i64 0
  %531 = load i16, i16* %arrayidx741, align 2, !tbaa !57
  %conv742 = zext i16 %531 to i32
  %and743 = and i32 %conv742, 65280
  %532 = load i32, i32* %skew, align 4, !tbaa !5
  %shr744 = ashr i32 %and743, %532
  %and745 = and i32 %shr744, 255
  br label %cond.end.746

cond.end.746:                                     ; preds = %cond.false.740, %cond.true.728
  %cond747 = phi i32 [ %add739, %cond.true.728 ], [ %and745, %cond.false.740 ]
  %533 = load i32, i32* %invert, align 4, !tbaa !5
  %xor748 = xor i32 %cond747, %533
  %534 = load i32, i32* %rmask, align 4, !tbaa !5
  %and749 = and i32 %xor748, %534
  %or750 = or i32 %and725, %and749
  %conv751 = trunc i32 %or750 to i16
  %535 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %536 = bitcast i8* %535 to i16*
  %arrayidx752 = getelementptr inbounds i16, i16* %536, i64 1
  store i16 %conv751, i16* %arrayidx752, align 2, !tbaa !57
  %537 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec753 = add nsw i32 %537, -1
  store i32 %dec753, i32* %h.addr, align 4, !tbaa !5
  %cmp754 = icmp eq i32 %dec753, 0
  br i1 %cmp754, label %if.then.756, label %if.end.757

if.then.756:                                      ; preds = %cond.end.746
  br label %for.end.762

if.end.757:                                       ; preds = %cond.end.746
  %538 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %539 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext758 = sext i32 %538 to i64
  %add.ptr759 = getelementptr inbounds i8, i8* %539, i64 %idx.ext758
  store i8* %add.ptr759, i8** %bptr, align 8, !tbaa !1
  %540 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %541 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext760 = zext i32 %540 to i64
  %add.ptr761 = getelementptr inbounds i8, i8* %541, i64 %idx.ext760
  store i8* %add.ptr761, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.691

for.end.762:                                      ; preds = %if.then.756
  br label %sw.epilog.839

sw.bb.763:                                        ; preds = %if.then.612
  br label %for.cond.764

for.cond.764:                                     ; preds = %if.end.826, %sw.bb.763
  %542 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp765 = icmp slt i32 %542, 8
  br i1 %cmp765, label %cond.true.767, label %cond.false.779

cond.true.767:                                    ; preds = %for.cond.764
  %543 = load i8*, i8** %bptr, align 8, !tbaa !1
  %544 = bitcast i8* %543 to i16*
  %arrayidx768 = getelementptr inbounds i16, i16* %544, i64 0
  %545 = load i16, i16* %arrayidx768, align 2, !tbaa !57
  %conv769 = zext i16 %545 to i32
  %546 = load i32, i32* %skew, align 4, !tbaa !5
  %shr770 = ashr i32 %conv769, %546
  %547 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom771 = sext i32 %547 to i64
  %arrayidx772 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom771
  %548 = load i16, i16* %arrayidx772, align 2, !tbaa !57
  %conv773 = zext i16 %548 to i32
  %and774 = and i32 %shr770, %conv773
  %549 = load i8*, i8** %bptr, align 8, !tbaa !1
  %550 = bitcast i8* %549 to i16*
  %arrayidx775 = getelementptr inbounds i16, i16* %550, i64 0
  %551 = load i16, i16* %arrayidx775, align 2, !tbaa !57
  %conv776 = zext i16 %551 to i32
  %552 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl777 = shl i32 %conv776, %552
  %add778 = add nsw i32 %and774, %shl777
  br label %cond.end.784

cond.false.779:                                   ; preds = %for.cond.764
  %553 = load i8*, i8** %bptr, align 8, !tbaa !1
  %554 = load i8, i8* %553, align 1, !tbaa !9
  %conv780 = zext i8 %554 to i16
  %conv781 = zext i16 %conv780 to i32
  %555 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl782 = shl i32 %conv781, %555
  %and783 = and i32 %shl782, 65280
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.false.779, %cond.true.767
  %cond785 = phi i32 [ %add778, %cond.true.767 ], [ %and783, %cond.false.779 ]
  %556 = load i32, i32* %invert, align 4, !tbaa !5
  %xor786 = xor i32 %cond785, %556
  %557 = load i32, i32* %mask, align 4, !tbaa !5
  %neg787 = xor i32 %557, -1
  %or788 = or i32 %xor786, %neg787
  %558 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %559 = bitcast i8* %558 to i16*
  %arrayidx789 = getelementptr inbounds i16, i16* %559, i64 0
  %560 = load i16, i16* %arrayidx789, align 2, !tbaa !57
  %conv790 = zext i16 %560 to i32
  %and791 = and i32 %conv790, %or788
  %conv792 = trunc i32 %and791 to i16
  store i16 %conv792, i16* %arrayidx789, align 2, !tbaa !57
  %561 = load i32, i32* %cskew613, align 4, !tbaa !5
  %cmp793 = icmp slt i32 %561, 8
  br i1 %cmp793, label %cond.true.795, label %cond.false.807

cond.true.795:                                    ; preds = %cond.end.784
  %562 = load i8*, i8** %bptr, align 8, !tbaa !1
  %563 = bitcast i8* %562 to i16*
  %arrayidx796 = getelementptr inbounds i16, i16* %563, i64 0
  %564 = load i16, i16* %arrayidx796, align 2, !tbaa !57
  %conv797 = zext i16 %564 to i32
  %565 = load i32, i32* %cskew613, align 4, !tbaa !5
  %shl798 = shl i32 %conv797, %565
  %566 = load i32, i32* %cskew613, align 4, !tbaa !5
  %idxprom799 = sext i32 %566 to i64
  %arrayidx800 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom799
  %567 = load i16, i16* %arrayidx800, align 2, !tbaa !57
  %conv801 = zext i16 %567 to i32
  %and802 = and i32 %shl798, %conv801
  %568 = load i8*, i8** %bptr, align 8, !tbaa !1
  %569 = bitcast i8* %568 to i16*
  %arrayidx803 = getelementptr inbounds i16, i16* %569, i64 0
  %570 = load i16, i16* %arrayidx803, align 2, !tbaa !57
  %conv804 = zext i16 %570 to i32
  %571 = load i32, i32* %skew, align 4, !tbaa !5
  %shr805 = ashr i32 %conv804, %571
  %add806 = add nsw i32 %and802, %shr805
  br label %cond.end.813

cond.false.807:                                   ; preds = %cond.end.784
  %572 = load i8*, i8** %bptr, align 8, !tbaa !1
  %573 = bitcast i8* %572 to i16*
  %arrayidx808 = getelementptr inbounds i16, i16* %573, i64 0
  %574 = load i16, i16* %arrayidx808, align 2, !tbaa !57
  %conv809 = zext i16 %574 to i32
  %and810 = and i32 %conv809, 65280
  %575 = load i32, i32* %skew, align 4, !tbaa !5
  %shr811 = ashr i32 %and810, %575
  %and812 = and i32 %shr811, 255
  br label %cond.end.813

cond.end.813:                                     ; preds = %cond.false.807, %cond.true.795
  %cond814 = phi i32 [ %add806, %cond.true.795 ], [ %and812, %cond.false.807 ]
  %576 = load i32, i32* %invert, align 4, !tbaa !5
  %xor815 = xor i32 %cond814, %576
  %577 = load i32, i32* %rmask, align 4, !tbaa !5
  %neg816 = xor i32 %577, -1
  %or817 = or i32 %xor815, %neg816
  %578 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %579 = bitcast i8* %578 to i16*
  %arrayidx818 = getelementptr inbounds i16, i16* %579, i64 1
  %580 = load i16, i16* %arrayidx818, align 2, !tbaa !57
  %conv819 = zext i16 %580 to i32
  %and820 = and i32 %conv819, %or817
  %conv821 = trunc i32 %and820 to i16
  store i16 %conv821, i16* %arrayidx818, align 2, !tbaa !57
  %581 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec822 = add nsw i32 %581, -1
  store i32 %dec822, i32* %h.addr, align 4, !tbaa !5
  %cmp823 = icmp eq i32 %dec822, 0
  br i1 %cmp823, label %if.then.825, label %if.end.826

if.then.825:                                      ; preds = %cond.end.813
  br label %for.end.831

if.end.826:                                       ; preds = %cond.end.813
  %582 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %583 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext827 = sext i32 %582 to i64
  %add.ptr828 = getelementptr inbounds i8, i8* %583, i64 %idx.ext827
  store i8* %add.ptr828, i8** %bptr, align 8, !tbaa !1
  %584 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %585 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext829 = zext i32 %584 to i64
  %add.ptr830 = getelementptr inbounds i8, i8* %585, i64 %idx.ext829
  store i8* %add.ptr830, i8** %dbptr, align 8, !tbaa !1
  br label %for.cond.764

for.end.831:                                      ; preds = %if.then.825
  br label %sw.epilog.839

sw.default.832:                                   ; preds = %if.then.612
  %586 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool833 = icmp ne i32 %586, 0
  br i1 %tobool833, label %cond.true.834, label %cond.false.835

cond.true.834:                                    ; preds = %sw.default.832
  br label %cond.end.837

cond.false.835:                                   ; preds = %sw.default.832
  %587 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %588 = load i32, i32* %x.addr, align 4, !tbaa !5
  %589 = load i32, i32* %y.addr, align 4, !tbaa !5
  %590 = load i32, i32* %w.addr, align 4, !tbaa !5
  %591 = load i32, i32* %h.addr, align 4, !tbaa !5
  %592 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call836 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %587, i32 %588, i32 %589, i32 %590, i32 %591, i64 %592) #3
  br label %cond.end.837

cond.end.837:                                     ; preds = %cond.false.835, %cond.true.834
  %cond838 = phi i32 [ -1, %cond.true.834 ], [ %call836, %cond.false.835 ]
  store i32 %cond838, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.840

sw.epilog.839:                                    ; preds = %for.end.831, %for.end.762, %for.end.689
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.840

cleanup.840:                                      ; preds = %sw.epilog.839, %cond.end.837
  %593 = bitcast i32* %cskew613 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %593) #1
  %594 = bitcast i32* %rmask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %594) #1
  %cleanup.dest.842 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.842, label %cleanup.1678 [
    i32 0, label %cleanup.cont.843
  ]

cleanup.cont.843:                                 ; preds = %cleanup.840
  br label %if.end.1676

if.else.844:                                      ; preds = %if.else.609
  %595 = bitcast i32* %rmask845 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %595) #1
  %596 = bitcast i32* %words to i8*
  call void @llvm.lifetime.start(i64 4, i8* %596) #1
  %597 = load i32, i32* %wleft, align 4, !tbaa !5
  %and846 = and i32 %597, -16
  %shr847 = ashr i32 %and846, 3
  store i32 %shr847, i32* %words, align 4, !tbaa !5
  %598 = bitcast i32* %sskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %598) #1
  %599 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %600 = load i32, i32* %words, align 4, !tbaa !5
  %sub848 = sub nsw i32 %599, %600
  store i32 %sub848, i32* %sskip, align 4, !tbaa !5
  %601 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %601) #1
  %602 = load i32, i32* %dest_raster, align 4, !tbaa !5
  %603 = load i32, i32* %words, align 4, !tbaa !5
  %sub849 = sub i32 %602, %603
  store i32 %sub849, i32* %dskip, align 4, !tbaa !5
  %604 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %604) #1
  %605 = load i32, i32* %dbit, align 4, !tbaa !5
  %idxprom850 = sext i32 %605 to i64
  %arrayidx851 = getelementptr inbounds [17 x i16], [17 x i16]* @mono_copy_masks, i32 0, i64 %idxprom850
  %606 = load i16, i16* %arrayidx851, align 2, !tbaa !57
  %conv852 = zext i16 %606 to i32
  store i32 %conv852, i32* %mask, align 4, !tbaa !5
  %607 = load i32, i32* %wleft, align 4, !tbaa !5
  %and853 = and i32 %607, 15
  %idxprom854 = sext i32 %and853 to i64
  %arrayidx855 = getelementptr inbounds [17 x i16], [17 x i16]* @mono_copy_masks, i32 0, i64 %idxprom854
  %608 = load i16, i16* %arrayidx855, align 2, !tbaa !57
  %conv856 = zext i16 %608 to i32
  %neg857 = xor i32 %conv856, -1
  store i32 %neg857, i32* %rmask845, align 4, !tbaa !5
  %609 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp858 = icmp eq i32 %609, 0
  br i1 %cmp858, label %if.then.860, label %if.else.1016

if.then.860:                                      ; preds = %if.else.844
  %op861 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %610 = load i32, i32* %op861, align 4, !tbaa !58
  switch i32 %610, label %sw.default.1008 [
    i32 0, label %sw.bb.862
    i32 1, label %sw.bb.906
    i32 2, label %sw.bb.958
  ]

sw.bb.862:                                        ; preds = %if.then.860
  br label %for.cond.863

for.cond.863:                                     ; preds = %cleanup.cont.904, %sw.bb.862
  %611 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %611) #1
  %612 = load i32, i32* %wleft, align 4, !tbaa !5
  store i32 %612, i32* %count, align 4, !tbaa !5
  %613 = load i8*, i8** %bptr, align 8, !tbaa !1
  %614 = bitcast i8* %613 to i16*
  %615 = load i16, i16* %614, align 2, !tbaa !57
  %conv864 = zext i16 %615 to i32
  %616 = load i32, i32* %invert, align 4, !tbaa !5
  %xor865 = xor i32 %conv864, %616
  %617 = load i32, i32* %mask, align 4, !tbaa !5
  %and866 = and i32 %xor865, %617
  %618 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %619 = bitcast i8* %618 to i16*
  %arrayidx867 = getelementptr inbounds i16, i16* %619, i64 0
  %620 = load i16, i16* %arrayidx867, align 2, !tbaa !57
  %conv868 = zext i16 %620 to i32
  %or869 = or i32 %conv868, %and866
  %conv870 = trunc i32 %or869 to i16
  store i16 %conv870, i16* %arrayidx867, align 2, !tbaa !57
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond.863
  %621 = load i32, i32* %count, align 4, !tbaa !5
  %sub871 = sub nsw i32 %621, 16
  store i32 %sub871, i32* %count, align 4, !tbaa !5
  %cmp872 = icmp sge i32 %sub871, 0
  br i1 %cmp872, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %622 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr874 = getelementptr inbounds i8, i8* %622, i64 2
  store i8* %add.ptr874, i8** %bptr, align 8, !tbaa !1
  %623 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %add.ptr875 = getelementptr inbounds i8, i8* %623, i64 2
  store i8* %add.ptr875, i8** %dbptr, align 8, !tbaa !1
  %624 = load i8*, i8** %bptr, align 8, !tbaa !1
  %625 = bitcast i8* %624 to i16*
  %626 = load i16, i16* %625, align 2, !tbaa !57
  %conv876 = zext i16 %626 to i32
  %627 = load i32, i32* %invert, align 4, !tbaa !5
  %xor877 = xor i32 %conv876, %627
  %628 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %629 = bitcast i8* %628 to i16*
  %630 = load i16, i16* %629, align 2, !tbaa !57
  %conv878 = zext i16 %630 to i32
  %or879 = or i32 %conv878, %xor877
  %conv880 = trunc i32 %or879 to i16
  store i16 %conv880, i16* %629, align 2, !tbaa !57
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %631 = load i32, i32* %count, align 4, !tbaa !5
  %cmp881 = icmp sgt i32 %631, -16
  br i1 %cmp881, label %if.then.883, label %if.end.892

if.then.883:                                      ; preds = %while.end
  %632 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr884 = getelementptr inbounds i8, i8* %632, i64 2
  %633 = bitcast i8* %add.ptr884 to i16*
  %634 = load i16, i16* %633, align 2, !tbaa !57
  %conv885 = zext i16 %634 to i32
  %635 = load i32, i32* %invert, align 4, !tbaa !5
  %xor886 = xor i32 %conv885, %635
  %636 = load i32, i32* %rmask845, align 4, !tbaa !5
  %and887 = and i32 %xor886, %636
  %637 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %638 = bitcast i8* %637 to i16*
  %arrayidx888 = getelementptr inbounds i16, i16* %638, i64 1
  %639 = load i16, i16* %arrayidx888, align 2, !tbaa !57
  %conv889 = zext i16 %639 to i32
  %or890 = or i32 %conv889, %and887
  %conv891 = trunc i32 %or890 to i16
  store i16 %conv891, i16* %arrayidx888, align 2, !tbaa !57
  br label %if.end.892

if.end.892:                                       ; preds = %if.then.883, %while.end
  %640 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec893 = add nsw i32 %640, -1
  store i32 %dec893, i32* %h.addr, align 4, !tbaa !5
  %cmp894 = icmp eq i32 %dec893, 0
  br i1 %cmp894, label %if.then.896, label %if.end.897

if.then.896:                                      ; preds = %if.end.892
  store i32 42, i32* %cleanup.dest.slot
  br label %cleanup.902

if.end.897:                                       ; preds = %if.end.892
  %641 = load i32, i32* %sskip, align 4, !tbaa !5
  %642 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext898 = zext i32 %641 to i64
  %add.ptr899 = getelementptr inbounds i8, i8* %642, i64 %idx.ext898
  store i8* %add.ptr899, i8** %bptr, align 8, !tbaa !1
  %643 = load i32, i32* %dskip, align 4, !tbaa !5
  %644 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext900 = zext i32 %643 to i64
  %add.ptr901 = getelementptr inbounds i8, i8* %644, i64 %idx.ext900
  store i8* %add.ptr901, i8** %dbptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.902

cleanup.902:                                      ; preds = %if.end.897, %if.then.896
  %645 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %645) #1
  %cleanup.dest.903 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.903, label %unreachable [
    i32 0, label %cleanup.cont.904
    i32 42, label %for.end.905
  ]

cleanup.cont.904:                                 ; preds = %cleanup.902
  br label %for.cond.863

for.end.905:                                      ; preds = %cleanup.902
  br label %sw.epilog.1015

sw.bb.906:                                        ; preds = %if.then.860
  br label %for.cond.907

for.cond.907:                                     ; preds = %cleanup.cont.956, %sw.bb.906
  %646 = bitcast i32* %count908 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %646) #1
  %647 = load i32, i32* %wleft, align 4, !tbaa !5
  store i32 %647, i32* %count908, align 4, !tbaa !5
  %648 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %649 = bitcast i8* %648 to i16*
  %arrayidx909 = getelementptr inbounds i16, i16* %649, i64 0
  %650 = load i16, i16* %arrayidx909, align 2, !tbaa !57
  %conv910 = zext i16 %650 to i32
  %651 = load i32, i32* %mask, align 4, !tbaa !5
  %neg911 = xor i32 %651, -1
  %and912 = and i32 %conv910, %neg911
  %652 = load i8*, i8** %bptr, align 8, !tbaa !1
  %653 = bitcast i8* %652 to i16*
  %654 = load i16, i16* %653, align 2, !tbaa !57
  %conv913 = zext i16 %654 to i32
  %655 = load i32, i32* %invert, align 4, !tbaa !5
  %xor914 = xor i32 %conv913, %655
  %656 = load i32, i32* %mask, align 4, !tbaa !5
  %and915 = and i32 %xor914, %656
  %or916 = or i32 %and912, %and915
  %conv917 = trunc i32 %or916 to i16
  %657 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %658 = bitcast i8* %657 to i16*
  %arrayidx918 = getelementptr inbounds i16, i16* %658, i64 0
  store i16 %conv917, i16* %arrayidx918, align 2, !tbaa !57
  br label %while.cond.919

while.cond.919:                                   ; preds = %while.body.923, %for.cond.907
  %659 = load i32, i32* %count908, align 4, !tbaa !5
  %sub920 = sub nsw i32 %659, 16
  store i32 %sub920, i32* %count908, align 4, !tbaa !5
  %cmp921 = icmp sge i32 %sub920, 0
  br i1 %cmp921, label %while.body.923, label %while.end.929

while.body.923:                                   ; preds = %while.cond.919
  %660 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr924 = getelementptr inbounds i8, i8* %660, i64 2
  store i8* %add.ptr924, i8** %bptr, align 8, !tbaa !1
  %661 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %add.ptr925 = getelementptr inbounds i8, i8* %661, i64 2
  store i8* %add.ptr925, i8** %dbptr, align 8, !tbaa !1
  %662 = load i8*, i8** %bptr, align 8, !tbaa !1
  %663 = bitcast i8* %662 to i16*
  %664 = load i16, i16* %663, align 2, !tbaa !57
  %conv926 = zext i16 %664 to i32
  %665 = load i32, i32* %invert, align 4, !tbaa !5
  %xor927 = xor i32 %conv926, %665
  %conv928 = trunc i32 %xor927 to i16
  %666 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %667 = bitcast i8* %666 to i16*
  store i16 %conv928, i16* %667, align 2, !tbaa !57
  br label %while.cond.919

while.end.929:                                    ; preds = %while.cond.919
  %668 = load i32, i32* %count908, align 4, !tbaa !5
  %cmp930 = icmp sgt i32 %668, -16
  br i1 %cmp930, label %if.then.932, label %if.end.944

if.then.932:                                      ; preds = %while.end.929
  %669 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %670 = bitcast i8* %669 to i16*
  %arrayidx933 = getelementptr inbounds i16, i16* %670, i64 1
  %671 = load i16, i16* %arrayidx933, align 2, !tbaa !57
  %conv934 = zext i16 %671 to i32
  %672 = load i32, i32* %rmask845, align 4, !tbaa !5
  %neg935 = xor i32 %672, -1
  %and936 = and i32 %conv934, %neg935
  %673 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr937 = getelementptr inbounds i8, i8* %673, i64 2
  %674 = bitcast i8* %add.ptr937 to i16*
  %675 = load i16, i16* %674, align 2, !tbaa !57
  %conv938 = zext i16 %675 to i32
  %676 = load i32, i32* %invert, align 4, !tbaa !5
  %xor939 = xor i32 %conv938, %676
  %677 = load i32, i32* %rmask845, align 4, !tbaa !5
  %and940 = and i32 %xor939, %677
  %or941 = or i32 %and936, %and940
  %conv942 = trunc i32 %or941 to i16
  %678 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %679 = bitcast i8* %678 to i16*
  %arrayidx943 = getelementptr inbounds i16, i16* %679, i64 1
  store i16 %conv942, i16* %arrayidx943, align 2, !tbaa !57
  br label %if.end.944

if.end.944:                                       ; preds = %if.then.932, %while.end.929
  %680 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec945 = add nsw i32 %680, -1
  store i32 %dec945, i32* %h.addr, align 4, !tbaa !5
  %cmp946 = icmp eq i32 %dec945, 0
  br i1 %cmp946, label %if.then.948, label %if.end.949

if.then.948:                                      ; preds = %if.end.944
  store i32 46, i32* %cleanup.dest.slot
  br label %cleanup.954

if.end.949:                                       ; preds = %if.end.944
  %681 = load i32, i32* %sskip, align 4, !tbaa !5
  %682 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext950 = zext i32 %681 to i64
  %add.ptr951 = getelementptr inbounds i8, i8* %682, i64 %idx.ext950
  store i8* %add.ptr951, i8** %bptr, align 8, !tbaa !1
  %683 = load i32, i32* %dskip, align 4, !tbaa !5
  %684 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext952 = zext i32 %683 to i64
  %add.ptr953 = getelementptr inbounds i8, i8* %684, i64 %idx.ext952
  store i8* %add.ptr953, i8** %dbptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.954

cleanup.954:                                      ; preds = %if.end.949, %if.then.948
  %685 = bitcast i32* %count908 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %685) #1
  %cleanup.dest.955 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.955, label %unreachable [
    i32 0, label %cleanup.cont.956
    i32 46, label %for.end.957
  ]

cleanup.cont.956:                                 ; preds = %cleanup.954
  br label %for.cond.907

for.end.957:                                      ; preds = %cleanup.954
  br label %sw.epilog.1015

sw.bb.958:                                        ; preds = %if.then.860
  br label %for.cond.959

for.cond.959:                                     ; preds = %cleanup.cont.1006, %sw.bb.958
  %686 = bitcast i32* %count960 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %686) #1
  %687 = load i32, i32* %wleft, align 4, !tbaa !5
  store i32 %687, i32* %count960, align 4, !tbaa !5
  %688 = load i8*, i8** %bptr, align 8, !tbaa !1
  %689 = bitcast i8* %688 to i16*
  %690 = load i16, i16* %689, align 2, !tbaa !57
  %conv961 = zext i16 %690 to i32
  %691 = load i32, i32* %invert, align 4, !tbaa !5
  %xor962 = xor i32 %conv961, %691
  %692 = load i32, i32* %mask, align 4, !tbaa !5
  %neg963 = xor i32 %692, -1
  %or964 = or i32 %xor962, %neg963
  %693 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %694 = bitcast i8* %693 to i16*
  %arrayidx965 = getelementptr inbounds i16, i16* %694, i64 0
  %695 = load i16, i16* %arrayidx965, align 2, !tbaa !57
  %conv966 = zext i16 %695 to i32
  %and967 = and i32 %conv966, %or964
  %conv968 = trunc i32 %and967 to i16
  store i16 %conv968, i16* %arrayidx965, align 2, !tbaa !57
  br label %while.cond.969

while.cond.969:                                   ; preds = %while.body.973, %for.cond.959
  %696 = load i32, i32* %count960, align 4, !tbaa !5
  %sub970 = sub nsw i32 %696, 16
  store i32 %sub970, i32* %count960, align 4, !tbaa !5
  %cmp971 = icmp sge i32 %sub970, 0
  br i1 %cmp971, label %while.body.973, label %while.end.981

while.body.973:                                   ; preds = %while.cond.969
  %697 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr974 = getelementptr inbounds i8, i8* %697, i64 2
  store i8* %add.ptr974, i8** %bptr, align 8, !tbaa !1
  %698 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %add.ptr975 = getelementptr inbounds i8, i8* %698, i64 2
  store i8* %add.ptr975, i8** %dbptr, align 8, !tbaa !1
  %699 = load i8*, i8** %bptr, align 8, !tbaa !1
  %700 = bitcast i8* %699 to i16*
  %701 = load i16, i16* %700, align 2, !tbaa !57
  %conv976 = zext i16 %701 to i32
  %702 = load i32, i32* %invert, align 4, !tbaa !5
  %xor977 = xor i32 %conv976, %702
  %703 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %704 = bitcast i8* %703 to i16*
  %705 = load i16, i16* %704, align 2, !tbaa !57
  %conv978 = zext i16 %705 to i32
  %and979 = and i32 %conv978, %xor977
  %conv980 = trunc i32 %and979 to i16
  store i16 %conv980, i16* %704, align 2, !tbaa !57
  br label %while.cond.969

while.end.981:                                    ; preds = %while.cond.969
  %706 = load i32, i32* %count960, align 4, !tbaa !5
  %cmp982 = icmp sgt i32 %706, -16
  br i1 %cmp982, label %if.then.984, label %if.end.994

if.then.984:                                      ; preds = %while.end.981
  %707 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr985 = getelementptr inbounds i8, i8* %707, i64 2
  %708 = bitcast i8* %add.ptr985 to i16*
  %709 = load i16, i16* %708, align 2, !tbaa !57
  %conv986 = zext i16 %709 to i32
  %710 = load i32, i32* %invert, align 4, !tbaa !5
  %xor987 = xor i32 %conv986, %710
  %711 = load i32, i32* %rmask845, align 4, !tbaa !5
  %neg988 = xor i32 %711, -1
  %or989 = or i32 %xor987, %neg988
  %712 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %713 = bitcast i8* %712 to i16*
  %arrayidx990 = getelementptr inbounds i16, i16* %713, i64 1
  %714 = load i16, i16* %arrayidx990, align 2, !tbaa !57
  %conv991 = zext i16 %714 to i32
  %and992 = and i32 %conv991, %or989
  %conv993 = trunc i32 %and992 to i16
  store i16 %conv993, i16* %arrayidx990, align 2, !tbaa !57
  br label %if.end.994

if.end.994:                                       ; preds = %if.then.984, %while.end.981
  %715 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec995 = add nsw i32 %715, -1
  store i32 %dec995, i32* %h.addr, align 4, !tbaa !5
  %cmp996 = icmp eq i32 %dec995, 0
  br i1 %cmp996, label %if.then.998, label %if.end.999

if.then.998:                                      ; preds = %if.end.994
  store i32 50, i32* %cleanup.dest.slot
  br label %cleanup.1004

if.end.999:                                       ; preds = %if.end.994
  %716 = load i32, i32* %sskip, align 4, !tbaa !5
  %717 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext1000 = zext i32 %716 to i64
  %add.ptr1001 = getelementptr inbounds i8, i8* %717, i64 %idx.ext1000
  store i8* %add.ptr1001, i8** %bptr, align 8, !tbaa !1
  %718 = load i32, i32* %dskip, align 4, !tbaa !5
  %719 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext1002 = zext i32 %718 to i64
  %add.ptr1003 = getelementptr inbounds i8, i8* %719, i64 %idx.ext1002
  store i8* %add.ptr1003, i8** %dbptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1004

cleanup.1004:                                     ; preds = %if.end.999, %if.then.998
  %720 = bitcast i32* %count960 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %720) #1
  %cleanup.dest.1005 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1005, label %unreachable [
    i32 0, label %cleanup.cont.1006
    i32 50, label %for.end.1007
  ]

cleanup.cont.1006:                                ; preds = %cleanup.1004
  br label %for.cond.959

for.end.1007:                                     ; preds = %cleanup.1004
  br label %sw.epilog.1015

sw.default.1008:                                  ; preds = %if.then.860
  %721 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool1009 = icmp ne i32 %721, 0
  br i1 %tobool1009, label %cond.true.1010, label %cond.false.1011

cond.true.1010:                                   ; preds = %sw.default.1008
  br label %cond.end.1013

cond.false.1011:                                  ; preds = %sw.default.1008
  %722 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %723 = load i32, i32* %x.addr, align 4, !tbaa !5
  %724 = load i32, i32* %y.addr, align 4, !tbaa !5
  %725 = load i32, i32* %w.addr, align 4, !tbaa !5
  %726 = load i32, i32* %h.addr, align 4, !tbaa !5
  %727 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call1012 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %722, i32 %723, i32 %724, i32 %725, i32 %726, i64 %727) #3
  br label %cond.end.1013

cond.end.1013:                                    ; preds = %cond.false.1011, %cond.true.1010
  %cond1014 = phi i32 [ -1, %cond.true.1010 ], [ %call1012, %cond.false.1011 ]
  store i32 %cond1014, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1669

sw.epilog.1015:                                   ; preds = %for.end.1007, %for.end.957, %for.end.905
  br label %if.end.1668

if.else.1016:                                     ; preds = %if.else.844
  %728 = bitcast i32* %cskew1017 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %728) #1
  %729 = load i32, i32* %skew, align 4, !tbaa !5
  %sub1018 = sub nsw i32 0, %729
  %and1019 = and i32 %sub1018, 15
  store i32 %and1019, i32* %cskew1017, align 4, !tbaa !5
  %730 = bitcast i32* %case_right to i8*
  call void @llvm.lifetime.start(i64 4, i8* %730) #1
  %731 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1020 = icmp sge i32 %731, 0
  br i1 %cmp1020, label %cond.true.1022, label %cond.false.1023

cond.true.1022:                                   ; preds = %if.else.1016
  br label %cond.end.1025

cond.false.1023:                                  ; preds = %if.else.1016
  %732 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1024 = getelementptr inbounds i8, i8* %732, i64 2
  store i8* %add.ptr1024, i8** %bptr, align 8, !tbaa !1
  br label %cond.end.1025

cond.end.1025:                                    ; preds = %cond.false.1023, %cond.true.1022
  %cond1026 = phi i32 [ 1, %cond.true.1022 ], [ 0, %cond.false.1023 ]
  store i32 %cond1026, i32* %case_right, align 4, !tbaa !5
  %733 = load i32, i32* %skew, align 4, !tbaa !5
  %and1027 = and i32 %733, 15
  store i32 %and1027, i32* %skew, align 4, !tbaa !5
  %op1028 = getelementptr inbounds %struct.copy_mode, %struct.copy_mode* %mode, i32 0, i32 1
  %734 = load i32, i32* %op1028, align 4, !tbaa !58
  switch i32 %734, label %sw.default.1656 [
    i32 0, label %sw.bb.1029
    i32 1, label %sw.bb.1236
    i32 2, label %sw.bb.1447
  ]

sw.bb.1029:                                       ; preds = %cond.end.1025
  br label %for.cond.1030

for.cond.1030:                                    ; preds = %cleanup.cont.1234, %sw.bb.1029
  %735 = bitcast i32* %count1031 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %735) #1
  %736 = load i32, i32* %wleft, align 4, !tbaa !5
  store i32 %736, i32* %count1031, align 4, !tbaa !5
  %737 = load i32, i32* %case_right, align 4, !tbaa !5
  %tobool1032 = icmp ne i32 %737, 0
  br i1 %tobool1032, label %cond.true.1033, label %cond.false.1055

cond.true.1033:                                   ; preds = %for.cond.1030
  %738 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1034 = icmp slt i32 %738, 8
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1048

cond.true.1036:                                   ; preds = %cond.true.1033
  %739 = load i8*, i8** %bptr, align 8, !tbaa !1
  %740 = bitcast i8* %739 to i16*
  %arrayidx1037 = getelementptr inbounds i16, i16* %740, i64 0
  %741 = load i16, i16* %arrayidx1037, align 2, !tbaa !57
  %conv1038 = zext i16 %741 to i32
  %742 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1039 = ashr i32 %conv1038, %742
  %743 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1040 = sext i32 %743 to i64
  %arrayidx1041 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1040
  %744 = load i16, i16* %arrayidx1041, align 2, !tbaa !57
  %conv1042 = zext i16 %744 to i32
  %and1043 = and i32 %shr1039, %conv1042
  %745 = load i8*, i8** %bptr, align 8, !tbaa !1
  %746 = bitcast i8* %745 to i16*
  %arrayidx1044 = getelementptr inbounds i16, i16* %746, i64 0
  %747 = load i16, i16* %arrayidx1044, align 2, !tbaa !57
  %conv1045 = zext i16 %747 to i32
  %748 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1046 = shl i32 %conv1045, %748
  %add1047 = add nsw i32 %and1043, %shl1046
  br label %cond.end.1053

cond.false.1048:                                  ; preds = %cond.true.1033
  %749 = load i8*, i8** %bptr, align 8, !tbaa !1
  %750 = load i8, i8* %749, align 1, !tbaa !9
  %conv1049 = zext i8 %750 to i16
  %conv1050 = zext i16 %conv1049 to i32
  %751 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1051 = shl i32 %conv1050, %751
  %and1052 = and i32 %shl1051, 65280
  br label %cond.end.1053

cond.end.1053:                                    ; preds = %cond.false.1048, %cond.true.1036
  %cond1054 = phi i32 [ %add1047, %cond.true.1036 ], [ %and1052, %cond.false.1048 ]
  br label %cond.end.1102

cond.false.1055:                                  ; preds = %for.cond.1030
  %752 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1056 = icmp slt i32 %752, 8
  br i1 %cmp1056, label %cond.true.1058, label %cond.false.1079

cond.true.1058:                                   ; preds = %cond.false.1055
  %753 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1059 = getelementptr inbounds i8, i8* %753, i64 -2
  %754 = bitcast i8* %add.ptr1059 to i16*
  %arrayidx1060 = getelementptr inbounds i16, i16* %754, i64 0
  %755 = load i16, i16* %arrayidx1060, align 2, !tbaa !57
  %conv1061 = zext i16 %755 to i32
  %756 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1062 = shl i32 %conv1061, %756
  %757 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1063 = sext i32 %757 to i64
  %arrayidx1064 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1063
  %758 = load i16, i16* %arrayidx1064, align 2, !tbaa !57
  %conv1065 = zext i16 %758 to i32
  %and1066 = and i32 %shl1062, %conv1065
  %759 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1067 = getelementptr inbounds i8, i8* %759, i64 -2
  %760 = bitcast i8* %add.ptr1067 to i16*
  %arrayidx1068 = getelementptr inbounds i16, i16* %760, i64 0
  %761 = load i16, i16* %arrayidx1068, align 2, !tbaa !57
  %conv1069 = zext i16 %761 to i32
  %762 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1070 = ashr i32 %conv1069, %762
  %add1071 = add nsw i32 %and1066, %shr1070
  %763 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1072 = getelementptr inbounds i8, i8* %763, i64 -2
  %arrayidx1073 = getelementptr inbounds i8, i8* %add.ptr1072, i64 2
  %764 = load i8, i8* %arrayidx1073, align 1, !tbaa !9
  %conv1074 = zext i8 %764 to i16
  %conv1075 = zext i16 %conv1074 to i32
  %765 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1076 = shl i32 %conv1075, %765
  %and1077 = and i32 %shl1076, 65280
  %add1078 = add nsw i32 %add1071, %and1077
  br label %cond.end.1100

cond.false.1079:                                  ; preds = %cond.false.1055
  %766 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1080 = getelementptr inbounds i8, i8* %766, i64 -2
  %767 = bitcast i8* %add.ptr1080 to i16*
  %arrayidx1081 = getelementptr inbounds i16, i16* %767, i64 0
  %768 = load i16, i16* %arrayidx1081, align 2, !tbaa !57
  %conv1082 = zext i16 %768 to i32
  %and1083 = and i32 %conv1082, 65280
  %769 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1084 = ashr i32 %and1083, %769
  %and1085 = and i32 %shr1084, 255
  %770 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1086 = getelementptr inbounds i8, i8* %770, i64 -2
  %771 = bitcast i8* %add.ptr1086 to i16*
  %arrayidx1087 = getelementptr inbounds i16, i16* %771, i64 1
  %772 = load i16, i16* %arrayidx1087, align 2, !tbaa !57
  %conv1088 = zext i16 %772 to i32
  %773 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1089 = ashr i32 %conv1088, %773
  %774 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1090 = sext i32 %774 to i64
  %arrayidx1091 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1090
  %775 = load i16, i16* %arrayidx1091, align 2, !tbaa !57
  %conv1092 = zext i16 %775 to i32
  %and1093 = and i32 %shr1089, %conv1092
  %add1094 = add nsw i32 %and1085, %and1093
  %776 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1095 = getelementptr inbounds i8, i8* %776, i64 -2
  %777 = bitcast i8* %add.ptr1095 to i16*
  %arrayidx1096 = getelementptr inbounds i16, i16* %777, i64 1
  %778 = load i16, i16* %arrayidx1096, align 2, !tbaa !57
  %conv1097 = zext i16 %778 to i32
  %779 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1098 = shl i32 %conv1097, %779
  %add1099 = add nsw i32 %add1094, %shl1098
  br label %cond.end.1100

cond.end.1100:                                    ; preds = %cond.false.1079, %cond.true.1058
  %cond1101 = phi i32 [ %add1078, %cond.true.1058 ], [ %add1099, %cond.false.1079 ]
  br label %cond.end.1102

cond.end.1102:                                    ; preds = %cond.end.1100, %cond.end.1053
  %cond1103 = phi i32 [ %cond1054, %cond.end.1053 ], [ %cond1101, %cond.end.1100 ]
  store i32 %cond1103, i32* %bits, align 4, !tbaa !5
  %780 = load i32, i32* %bits, align 4, !tbaa !5
  %781 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1104 = xor i32 %780, %781
  %782 = load i32, i32* %mask, align 4, !tbaa !5
  %and1105 = and i32 %xor1104, %782
  %783 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %784 = bitcast i8* %783 to i16*
  %arrayidx1106 = getelementptr inbounds i16, i16* %784, i64 0
  %785 = load i16, i16* %arrayidx1106, align 2, !tbaa !57
  %conv1107 = zext i16 %785 to i32
  %or1108 = or i32 %conv1107, %and1105
  %conv1109 = trunc i32 %or1108 to i16
  store i16 %conv1109, i16* %arrayidx1106, align 2, !tbaa !57
  br label %while.cond.1110

while.cond.1110:                                  ; preds = %cond.end.1152, %cond.end.1102
  %786 = load i32, i32* %count1031, align 4, !tbaa !5
  %cmp1111 = icmp sge i32 %786, 16
  br i1 %cmp1111, label %while.body.1113, label %while.end.1161

while.body.1113:                                  ; preds = %while.cond.1110
  %787 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1114 = icmp slt i32 %787, 8
  br i1 %cmp1114, label %cond.true.1116, label %cond.false.1134

cond.true.1116:                                   ; preds = %while.body.1113
  %788 = load i8*, i8** %bptr, align 8, !tbaa !1
  %789 = bitcast i8* %788 to i16*
  %arrayidx1117 = getelementptr inbounds i16, i16* %789, i64 0
  %790 = load i16, i16* %arrayidx1117, align 2, !tbaa !57
  %conv1118 = zext i16 %790 to i32
  %791 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1119 = shl i32 %conv1118, %791
  %792 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1120 = sext i32 %792 to i64
  %arrayidx1121 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1120
  %793 = load i16, i16* %arrayidx1121, align 2, !tbaa !57
  %conv1122 = zext i16 %793 to i32
  %and1123 = and i32 %shl1119, %conv1122
  %794 = load i8*, i8** %bptr, align 8, !tbaa !1
  %795 = bitcast i8* %794 to i16*
  %arrayidx1124 = getelementptr inbounds i16, i16* %795, i64 0
  %796 = load i16, i16* %arrayidx1124, align 2, !tbaa !57
  %conv1125 = zext i16 %796 to i32
  %797 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1126 = ashr i32 %conv1125, %797
  %add1127 = add nsw i32 %and1123, %shr1126
  %798 = load i8*, i8** %bptr, align 8, !tbaa !1
  %arrayidx1128 = getelementptr inbounds i8, i8* %798, i64 2
  %799 = load i8, i8* %arrayidx1128, align 1, !tbaa !9
  %conv1129 = zext i8 %799 to i16
  %conv1130 = zext i16 %conv1129 to i32
  %800 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1131 = shl i32 %conv1130, %800
  %and1132 = and i32 %shl1131, 65280
  %add1133 = add nsw i32 %add1127, %and1132
  br label %cond.end.1152

cond.false.1134:                                  ; preds = %while.body.1113
  %801 = load i8*, i8** %bptr, align 8, !tbaa !1
  %802 = bitcast i8* %801 to i16*
  %arrayidx1135 = getelementptr inbounds i16, i16* %802, i64 0
  %803 = load i16, i16* %arrayidx1135, align 2, !tbaa !57
  %conv1136 = zext i16 %803 to i32
  %and1137 = and i32 %conv1136, 65280
  %804 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1138 = ashr i32 %and1137, %804
  %and1139 = and i32 %shr1138, 255
  %805 = load i8*, i8** %bptr, align 8, !tbaa !1
  %806 = bitcast i8* %805 to i16*
  %arrayidx1140 = getelementptr inbounds i16, i16* %806, i64 1
  %807 = load i16, i16* %arrayidx1140, align 2, !tbaa !57
  %conv1141 = zext i16 %807 to i32
  %808 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1142 = ashr i32 %conv1141, %808
  %809 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1143 = sext i32 %809 to i64
  %arrayidx1144 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1143
  %810 = load i16, i16* %arrayidx1144, align 2, !tbaa !57
  %conv1145 = zext i16 %810 to i32
  %and1146 = and i32 %shr1142, %conv1145
  %add1147 = add nsw i32 %and1139, %and1146
  %811 = load i8*, i8** %bptr, align 8, !tbaa !1
  %812 = bitcast i8* %811 to i16*
  %arrayidx1148 = getelementptr inbounds i16, i16* %812, i64 1
  %813 = load i16, i16* %arrayidx1148, align 2, !tbaa !57
  %conv1149 = zext i16 %813 to i32
  %814 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1150 = shl i32 %conv1149, %814
  %add1151 = add nsw i32 %add1147, %shl1150
  br label %cond.end.1152

cond.end.1152:                                    ; preds = %cond.false.1134, %cond.true.1116
  %cond1153 = phi i32 [ %add1133, %cond.true.1116 ], [ %add1151, %cond.false.1134 ]
  store i32 %cond1153, i32* %bits, align 4, !tbaa !5
  %815 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1154 = getelementptr inbounds i8, i8* %815, i64 2
  store i8* %add.ptr1154, i8** %bptr, align 8, !tbaa !1
  %816 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %add.ptr1155 = getelementptr inbounds i8, i8* %816, i64 2
  store i8* %add.ptr1155, i8** %dbptr, align 8, !tbaa !1
  %817 = load i32, i32* %bits, align 4, !tbaa !5
  %818 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1156 = xor i32 %817, %818
  %819 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %820 = bitcast i8* %819 to i16*
  %821 = load i16, i16* %820, align 2, !tbaa !57
  %conv1157 = zext i16 %821 to i32
  %or1158 = or i32 %conv1157, %xor1156
  %conv1159 = trunc i32 %or1158 to i16
  store i16 %conv1159, i16* %820, align 2, !tbaa !57
  %822 = load i32, i32* %count1031, align 4, !tbaa !5
  %sub1160 = sub nsw i32 %822, 16
  store i32 %sub1160, i32* %count1031, align 4, !tbaa !5
  br label %while.cond.1110

while.end.1161:                                   ; preds = %while.cond.1110
  %823 = load i32, i32* %count1031, align 4, !tbaa !5
  %cmp1162 = icmp sgt i32 %823, 0
  br i1 %cmp1162, label %if.then.1164, label %if.end.1222

if.then.1164:                                     ; preds = %while.end.1161
  %824 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1165 = icmp slt i32 %824, 8
  br i1 %cmp1165, label %cond.true.1167, label %cond.false.1179

cond.true.1167:                                   ; preds = %if.then.1164
  %825 = load i8*, i8** %bptr, align 8, !tbaa !1
  %826 = bitcast i8* %825 to i16*
  %arrayidx1168 = getelementptr inbounds i16, i16* %826, i64 0
  %827 = load i16, i16* %arrayidx1168, align 2, !tbaa !57
  %conv1169 = zext i16 %827 to i32
  %828 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1170 = shl i32 %conv1169, %828
  %829 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1171 = sext i32 %829 to i64
  %arrayidx1172 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1171
  %830 = load i16, i16* %arrayidx1172, align 2, !tbaa !57
  %conv1173 = zext i16 %830 to i32
  %and1174 = and i32 %shl1170, %conv1173
  %831 = load i8*, i8** %bptr, align 8, !tbaa !1
  %832 = bitcast i8* %831 to i16*
  %arrayidx1175 = getelementptr inbounds i16, i16* %832, i64 0
  %833 = load i16, i16* %arrayidx1175, align 2, !tbaa !57
  %conv1176 = zext i16 %833 to i32
  %834 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1177 = ashr i32 %conv1176, %834
  %add1178 = add nsw i32 %and1174, %shr1177
  br label %cond.end.1185

cond.false.1179:                                  ; preds = %if.then.1164
  %835 = load i8*, i8** %bptr, align 8, !tbaa !1
  %836 = bitcast i8* %835 to i16*
  %arrayidx1180 = getelementptr inbounds i16, i16* %836, i64 0
  %837 = load i16, i16* %arrayidx1180, align 2, !tbaa !57
  %conv1181 = zext i16 %837 to i32
  %and1182 = and i32 %conv1181, 65280
  %838 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1183 = ashr i32 %and1182, %838
  %and1184 = and i32 %shr1183, 255
  br label %cond.end.1185

cond.end.1185:                                    ; preds = %cond.false.1179, %cond.true.1167
  %cond1186 = phi i32 [ %add1178, %cond.true.1167 ], [ %and1184, %cond.false.1179 ]
  store i32 %cond1186, i32* %bits, align 4, !tbaa !5
  %839 = load i32, i32* %count1031, align 4, !tbaa !5
  %840 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1187 = icmp sgt i32 %839, %840
  br i1 %cmp1187, label %if.then.1189, label %if.end.1215

if.then.1189:                                     ; preds = %cond.end.1185
  %841 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1190 = icmp slt i32 %841, 8
  br i1 %cmp1190, label %cond.true.1192, label %cond.false.1206

cond.true.1192:                                   ; preds = %if.then.1189
  %842 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1193 = getelementptr inbounds i8, i8* %842, i64 2
  %843 = bitcast i8* %add.ptr1193 to i16*
  %arrayidx1194 = getelementptr inbounds i16, i16* %843, i64 0
  %844 = load i16, i16* %arrayidx1194, align 2, !tbaa !57
  %conv1195 = zext i16 %844 to i32
  %845 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1196 = ashr i32 %conv1195, %845
  %846 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1197 = sext i32 %846 to i64
  %arrayidx1198 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1197
  %847 = load i16, i16* %arrayidx1198, align 2, !tbaa !57
  %conv1199 = zext i16 %847 to i32
  %and1200 = and i32 %shr1196, %conv1199
  %848 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1201 = getelementptr inbounds i8, i8* %848, i64 2
  %849 = bitcast i8* %add.ptr1201 to i16*
  %arrayidx1202 = getelementptr inbounds i16, i16* %849, i64 0
  %850 = load i16, i16* %arrayidx1202, align 2, !tbaa !57
  %conv1203 = zext i16 %850 to i32
  %851 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1204 = shl i32 %conv1203, %851
  %add1205 = add nsw i32 %and1200, %shl1204
  br label %cond.end.1212

cond.false.1206:                                  ; preds = %if.then.1189
  %852 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1207 = getelementptr inbounds i8, i8* %852, i64 2
  %853 = load i8, i8* %add.ptr1207, align 1, !tbaa !9
  %conv1208 = zext i8 %853 to i16
  %conv1209 = zext i16 %conv1208 to i32
  %854 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1210 = shl i32 %conv1209, %854
  %and1211 = and i32 %shl1210, 65280
  br label %cond.end.1212

cond.end.1212:                                    ; preds = %cond.false.1206, %cond.true.1192
  %cond1213 = phi i32 [ %add1205, %cond.true.1192 ], [ %and1211, %cond.false.1206 ]
  %855 = load i32, i32* %bits, align 4, !tbaa !5
  %add1214 = add i32 %855, %cond1213
  store i32 %add1214, i32* %bits, align 4, !tbaa !5
  br label %if.end.1215

if.end.1215:                                      ; preds = %cond.end.1212, %cond.end.1185
  %856 = load i32, i32* %bits, align 4, !tbaa !5
  %857 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1216 = xor i32 %856, %857
  %858 = load i32, i32* %rmask845, align 4, !tbaa !5
  %and1217 = and i32 %xor1216, %858
  %859 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %860 = bitcast i8* %859 to i16*
  %arrayidx1218 = getelementptr inbounds i16, i16* %860, i64 1
  %861 = load i16, i16* %arrayidx1218, align 2, !tbaa !57
  %conv1219 = zext i16 %861 to i32
  %or1220 = or i32 %conv1219, %and1217
  %conv1221 = trunc i32 %or1220 to i16
  store i16 %conv1221, i16* %arrayidx1218, align 2, !tbaa !57
  br label %if.end.1222

if.end.1222:                                      ; preds = %if.end.1215, %while.end.1161
  %862 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec1223 = add nsw i32 %862, -1
  store i32 %dec1223, i32* %h.addr, align 4, !tbaa !5
  %cmp1224 = icmp eq i32 %dec1223, 0
  br i1 %cmp1224, label %if.then.1226, label %if.end.1227

if.then.1226:                                     ; preds = %if.end.1222
  store i32 55, i32* %cleanup.dest.slot
  br label %cleanup.1232

if.end.1227:                                      ; preds = %if.end.1222
  %863 = load i32, i32* %sskip, align 4, !tbaa !5
  %864 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext1228 = zext i32 %863 to i64
  %add.ptr1229 = getelementptr inbounds i8, i8* %864, i64 %idx.ext1228
  store i8* %add.ptr1229, i8** %bptr, align 8, !tbaa !1
  %865 = load i32, i32* %dskip, align 4, !tbaa !5
  %866 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext1230 = zext i32 %865 to i64
  %add.ptr1231 = getelementptr inbounds i8, i8* %866, i64 %idx.ext1230
  store i8* %add.ptr1231, i8** %dbptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1232

cleanup.1232:                                     ; preds = %if.end.1227, %if.then.1226
  %867 = bitcast i32* %count1031 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %867) #1
  %cleanup.dest.1233 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1233, label %unreachable [
    i32 0, label %cleanup.cont.1234
    i32 55, label %for.end.1235
  ]

cleanup.cont.1234:                                ; preds = %cleanup.1232
  br label %for.cond.1030

for.end.1235:                                     ; preds = %cleanup.1232
  br label %sw.epilog.1663

sw.bb.1236:                                       ; preds = %cond.end.1025
  br label %for.cond.1237

for.cond.1237:                                    ; preds = %cleanup.cont.1445, %sw.bb.1236
  %868 = bitcast i32* %count1238 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %868) #1
  %869 = load i32, i32* %wleft, align 4, !tbaa !5
  store i32 %869, i32* %count1238, align 4, !tbaa !5
  %870 = load i32, i32* %case_right, align 4, !tbaa !5
  %tobool1239 = icmp ne i32 %870, 0
  br i1 %tobool1239, label %cond.true.1240, label %cond.false.1262

cond.true.1240:                                   ; preds = %for.cond.1237
  %871 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1241 = icmp slt i32 %871, 8
  br i1 %cmp1241, label %cond.true.1243, label %cond.false.1255

cond.true.1243:                                   ; preds = %cond.true.1240
  %872 = load i8*, i8** %bptr, align 8, !tbaa !1
  %873 = bitcast i8* %872 to i16*
  %arrayidx1244 = getelementptr inbounds i16, i16* %873, i64 0
  %874 = load i16, i16* %arrayidx1244, align 2, !tbaa !57
  %conv1245 = zext i16 %874 to i32
  %875 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1246 = ashr i32 %conv1245, %875
  %876 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1247 = sext i32 %876 to i64
  %arrayidx1248 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1247
  %877 = load i16, i16* %arrayidx1248, align 2, !tbaa !57
  %conv1249 = zext i16 %877 to i32
  %and1250 = and i32 %shr1246, %conv1249
  %878 = load i8*, i8** %bptr, align 8, !tbaa !1
  %879 = bitcast i8* %878 to i16*
  %arrayidx1251 = getelementptr inbounds i16, i16* %879, i64 0
  %880 = load i16, i16* %arrayidx1251, align 2, !tbaa !57
  %conv1252 = zext i16 %880 to i32
  %881 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1253 = shl i32 %conv1252, %881
  %add1254 = add nsw i32 %and1250, %shl1253
  br label %cond.end.1260

cond.false.1255:                                  ; preds = %cond.true.1240
  %882 = load i8*, i8** %bptr, align 8, !tbaa !1
  %883 = load i8, i8* %882, align 1, !tbaa !9
  %conv1256 = zext i8 %883 to i16
  %conv1257 = zext i16 %conv1256 to i32
  %884 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1258 = shl i32 %conv1257, %884
  %and1259 = and i32 %shl1258, 65280
  br label %cond.end.1260

cond.end.1260:                                    ; preds = %cond.false.1255, %cond.true.1243
  %cond1261 = phi i32 [ %add1254, %cond.true.1243 ], [ %and1259, %cond.false.1255 ]
  br label %cond.end.1309

cond.false.1262:                                  ; preds = %for.cond.1237
  %885 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1263 = icmp slt i32 %885, 8
  br i1 %cmp1263, label %cond.true.1265, label %cond.false.1286

cond.true.1265:                                   ; preds = %cond.false.1262
  %886 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1266 = getelementptr inbounds i8, i8* %886, i64 -2
  %887 = bitcast i8* %add.ptr1266 to i16*
  %arrayidx1267 = getelementptr inbounds i16, i16* %887, i64 0
  %888 = load i16, i16* %arrayidx1267, align 2, !tbaa !57
  %conv1268 = zext i16 %888 to i32
  %889 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1269 = shl i32 %conv1268, %889
  %890 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1270 = sext i32 %890 to i64
  %arrayidx1271 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1270
  %891 = load i16, i16* %arrayidx1271, align 2, !tbaa !57
  %conv1272 = zext i16 %891 to i32
  %and1273 = and i32 %shl1269, %conv1272
  %892 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1274 = getelementptr inbounds i8, i8* %892, i64 -2
  %893 = bitcast i8* %add.ptr1274 to i16*
  %arrayidx1275 = getelementptr inbounds i16, i16* %893, i64 0
  %894 = load i16, i16* %arrayidx1275, align 2, !tbaa !57
  %conv1276 = zext i16 %894 to i32
  %895 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1277 = ashr i32 %conv1276, %895
  %add1278 = add nsw i32 %and1273, %shr1277
  %896 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1279 = getelementptr inbounds i8, i8* %896, i64 -2
  %arrayidx1280 = getelementptr inbounds i8, i8* %add.ptr1279, i64 2
  %897 = load i8, i8* %arrayidx1280, align 1, !tbaa !9
  %conv1281 = zext i8 %897 to i16
  %conv1282 = zext i16 %conv1281 to i32
  %898 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1283 = shl i32 %conv1282, %898
  %and1284 = and i32 %shl1283, 65280
  %add1285 = add nsw i32 %add1278, %and1284
  br label %cond.end.1307

cond.false.1286:                                  ; preds = %cond.false.1262
  %899 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1287 = getelementptr inbounds i8, i8* %899, i64 -2
  %900 = bitcast i8* %add.ptr1287 to i16*
  %arrayidx1288 = getelementptr inbounds i16, i16* %900, i64 0
  %901 = load i16, i16* %arrayidx1288, align 2, !tbaa !57
  %conv1289 = zext i16 %901 to i32
  %and1290 = and i32 %conv1289, 65280
  %902 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1291 = ashr i32 %and1290, %902
  %and1292 = and i32 %shr1291, 255
  %903 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1293 = getelementptr inbounds i8, i8* %903, i64 -2
  %904 = bitcast i8* %add.ptr1293 to i16*
  %arrayidx1294 = getelementptr inbounds i16, i16* %904, i64 1
  %905 = load i16, i16* %arrayidx1294, align 2, !tbaa !57
  %conv1295 = zext i16 %905 to i32
  %906 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1296 = ashr i32 %conv1295, %906
  %907 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1297 = sext i32 %907 to i64
  %arrayidx1298 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1297
  %908 = load i16, i16* %arrayidx1298, align 2, !tbaa !57
  %conv1299 = zext i16 %908 to i32
  %and1300 = and i32 %shr1296, %conv1299
  %add1301 = add nsw i32 %and1292, %and1300
  %909 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1302 = getelementptr inbounds i8, i8* %909, i64 -2
  %910 = bitcast i8* %add.ptr1302 to i16*
  %arrayidx1303 = getelementptr inbounds i16, i16* %910, i64 1
  %911 = load i16, i16* %arrayidx1303, align 2, !tbaa !57
  %conv1304 = zext i16 %911 to i32
  %912 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1305 = shl i32 %conv1304, %912
  %add1306 = add nsw i32 %add1301, %shl1305
  br label %cond.end.1307

cond.end.1307:                                    ; preds = %cond.false.1286, %cond.true.1265
  %cond1308 = phi i32 [ %add1285, %cond.true.1265 ], [ %add1306, %cond.false.1286 ]
  br label %cond.end.1309

cond.end.1309:                                    ; preds = %cond.end.1307, %cond.end.1260
  %cond1310 = phi i32 [ %cond1261, %cond.end.1260 ], [ %cond1308, %cond.end.1307 ]
  store i32 %cond1310, i32* %bits, align 4, !tbaa !5
  %913 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %914 = bitcast i8* %913 to i16*
  %arrayidx1311 = getelementptr inbounds i16, i16* %914, i64 0
  %915 = load i16, i16* %arrayidx1311, align 2, !tbaa !57
  %conv1312 = zext i16 %915 to i32
  %916 = load i32, i32* %mask, align 4, !tbaa !5
  %neg1313 = xor i32 %916, -1
  %and1314 = and i32 %conv1312, %neg1313
  %917 = load i32, i32* %bits, align 4, !tbaa !5
  %918 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1315 = xor i32 %917, %918
  %919 = load i32, i32* %mask, align 4, !tbaa !5
  %and1316 = and i32 %xor1315, %919
  %or1317 = or i32 %and1314, %and1316
  %conv1318 = trunc i32 %or1317 to i16
  %920 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %921 = bitcast i8* %920 to i16*
  %arrayidx1319 = getelementptr inbounds i16, i16* %921, i64 0
  store i16 %conv1318, i16* %arrayidx1319, align 2, !tbaa !57
  br label %while.cond.1320

while.cond.1320:                                  ; preds = %cond.end.1362, %cond.end.1309
  %922 = load i32, i32* %count1238, align 4, !tbaa !5
  %cmp1321 = icmp sge i32 %922, 16
  br i1 %cmp1321, label %while.body.1323, label %while.end.1369

while.body.1323:                                  ; preds = %while.cond.1320
  %923 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1324 = icmp slt i32 %923, 8
  br i1 %cmp1324, label %cond.true.1326, label %cond.false.1344

cond.true.1326:                                   ; preds = %while.body.1323
  %924 = load i8*, i8** %bptr, align 8, !tbaa !1
  %925 = bitcast i8* %924 to i16*
  %arrayidx1327 = getelementptr inbounds i16, i16* %925, i64 0
  %926 = load i16, i16* %arrayidx1327, align 2, !tbaa !57
  %conv1328 = zext i16 %926 to i32
  %927 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1329 = shl i32 %conv1328, %927
  %928 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1330 = sext i32 %928 to i64
  %arrayidx1331 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1330
  %929 = load i16, i16* %arrayidx1331, align 2, !tbaa !57
  %conv1332 = zext i16 %929 to i32
  %and1333 = and i32 %shl1329, %conv1332
  %930 = load i8*, i8** %bptr, align 8, !tbaa !1
  %931 = bitcast i8* %930 to i16*
  %arrayidx1334 = getelementptr inbounds i16, i16* %931, i64 0
  %932 = load i16, i16* %arrayidx1334, align 2, !tbaa !57
  %conv1335 = zext i16 %932 to i32
  %933 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1336 = ashr i32 %conv1335, %933
  %add1337 = add nsw i32 %and1333, %shr1336
  %934 = load i8*, i8** %bptr, align 8, !tbaa !1
  %arrayidx1338 = getelementptr inbounds i8, i8* %934, i64 2
  %935 = load i8, i8* %arrayidx1338, align 1, !tbaa !9
  %conv1339 = zext i8 %935 to i16
  %conv1340 = zext i16 %conv1339 to i32
  %936 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1341 = shl i32 %conv1340, %936
  %and1342 = and i32 %shl1341, 65280
  %add1343 = add nsw i32 %add1337, %and1342
  br label %cond.end.1362

cond.false.1344:                                  ; preds = %while.body.1323
  %937 = load i8*, i8** %bptr, align 8, !tbaa !1
  %938 = bitcast i8* %937 to i16*
  %arrayidx1345 = getelementptr inbounds i16, i16* %938, i64 0
  %939 = load i16, i16* %arrayidx1345, align 2, !tbaa !57
  %conv1346 = zext i16 %939 to i32
  %and1347 = and i32 %conv1346, 65280
  %940 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1348 = ashr i32 %and1347, %940
  %and1349 = and i32 %shr1348, 255
  %941 = load i8*, i8** %bptr, align 8, !tbaa !1
  %942 = bitcast i8* %941 to i16*
  %arrayidx1350 = getelementptr inbounds i16, i16* %942, i64 1
  %943 = load i16, i16* %arrayidx1350, align 2, !tbaa !57
  %conv1351 = zext i16 %943 to i32
  %944 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1352 = ashr i32 %conv1351, %944
  %945 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1353 = sext i32 %945 to i64
  %arrayidx1354 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1353
  %946 = load i16, i16* %arrayidx1354, align 2, !tbaa !57
  %conv1355 = zext i16 %946 to i32
  %and1356 = and i32 %shr1352, %conv1355
  %add1357 = add nsw i32 %and1349, %and1356
  %947 = load i8*, i8** %bptr, align 8, !tbaa !1
  %948 = bitcast i8* %947 to i16*
  %arrayidx1358 = getelementptr inbounds i16, i16* %948, i64 1
  %949 = load i16, i16* %arrayidx1358, align 2, !tbaa !57
  %conv1359 = zext i16 %949 to i32
  %950 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1360 = shl i32 %conv1359, %950
  %add1361 = add nsw i32 %add1357, %shl1360
  br label %cond.end.1362

cond.end.1362:                                    ; preds = %cond.false.1344, %cond.true.1326
  %cond1363 = phi i32 [ %add1343, %cond.true.1326 ], [ %add1361, %cond.false.1344 ]
  store i32 %cond1363, i32* %bits, align 4, !tbaa !5
  %951 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1364 = getelementptr inbounds i8, i8* %951, i64 2
  store i8* %add.ptr1364, i8** %bptr, align 8, !tbaa !1
  %952 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %add.ptr1365 = getelementptr inbounds i8, i8* %952, i64 2
  store i8* %add.ptr1365, i8** %dbptr, align 8, !tbaa !1
  %953 = load i32, i32* %bits, align 4, !tbaa !5
  %954 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1366 = xor i32 %953, %954
  %conv1367 = trunc i32 %xor1366 to i16
  %955 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %956 = bitcast i8* %955 to i16*
  store i16 %conv1367, i16* %956, align 2, !tbaa !57
  %957 = load i32, i32* %count1238, align 4, !tbaa !5
  %sub1368 = sub nsw i32 %957, 16
  store i32 %sub1368, i32* %count1238, align 4, !tbaa !5
  br label %while.cond.1320

while.end.1369:                                   ; preds = %while.cond.1320
  %958 = load i32, i32* %count1238, align 4, !tbaa !5
  %cmp1370 = icmp sgt i32 %958, 0
  br i1 %cmp1370, label %if.then.1372, label %if.end.1433

if.then.1372:                                     ; preds = %while.end.1369
  %959 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1373 = icmp slt i32 %959, 8
  br i1 %cmp1373, label %cond.true.1375, label %cond.false.1387

cond.true.1375:                                   ; preds = %if.then.1372
  %960 = load i8*, i8** %bptr, align 8, !tbaa !1
  %961 = bitcast i8* %960 to i16*
  %arrayidx1376 = getelementptr inbounds i16, i16* %961, i64 0
  %962 = load i16, i16* %arrayidx1376, align 2, !tbaa !57
  %conv1377 = zext i16 %962 to i32
  %963 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1378 = shl i32 %conv1377, %963
  %964 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1379 = sext i32 %964 to i64
  %arrayidx1380 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1379
  %965 = load i16, i16* %arrayidx1380, align 2, !tbaa !57
  %conv1381 = zext i16 %965 to i32
  %and1382 = and i32 %shl1378, %conv1381
  %966 = load i8*, i8** %bptr, align 8, !tbaa !1
  %967 = bitcast i8* %966 to i16*
  %arrayidx1383 = getelementptr inbounds i16, i16* %967, i64 0
  %968 = load i16, i16* %arrayidx1383, align 2, !tbaa !57
  %conv1384 = zext i16 %968 to i32
  %969 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1385 = ashr i32 %conv1384, %969
  %add1386 = add nsw i32 %and1382, %shr1385
  br label %cond.end.1393

cond.false.1387:                                  ; preds = %if.then.1372
  %970 = load i8*, i8** %bptr, align 8, !tbaa !1
  %971 = bitcast i8* %970 to i16*
  %arrayidx1388 = getelementptr inbounds i16, i16* %971, i64 0
  %972 = load i16, i16* %arrayidx1388, align 2, !tbaa !57
  %conv1389 = zext i16 %972 to i32
  %and1390 = and i32 %conv1389, 65280
  %973 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1391 = ashr i32 %and1390, %973
  %and1392 = and i32 %shr1391, 255
  br label %cond.end.1393

cond.end.1393:                                    ; preds = %cond.false.1387, %cond.true.1375
  %cond1394 = phi i32 [ %add1386, %cond.true.1375 ], [ %and1392, %cond.false.1387 ]
  store i32 %cond1394, i32* %bits, align 4, !tbaa !5
  %974 = load i32, i32* %count1238, align 4, !tbaa !5
  %975 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1395 = icmp sgt i32 %974, %975
  br i1 %cmp1395, label %if.then.1397, label %if.end.1423

if.then.1397:                                     ; preds = %cond.end.1393
  %976 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1398 = icmp slt i32 %976, 8
  br i1 %cmp1398, label %cond.true.1400, label %cond.false.1414

cond.true.1400:                                   ; preds = %if.then.1397
  %977 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1401 = getelementptr inbounds i8, i8* %977, i64 2
  %978 = bitcast i8* %add.ptr1401 to i16*
  %arrayidx1402 = getelementptr inbounds i16, i16* %978, i64 0
  %979 = load i16, i16* %arrayidx1402, align 2, !tbaa !57
  %conv1403 = zext i16 %979 to i32
  %980 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1404 = ashr i32 %conv1403, %980
  %981 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1405 = sext i32 %981 to i64
  %arrayidx1406 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1405
  %982 = load i16, i16* %arrayidx1406, align 2, !tbaa !57
  %conv1407 = zext i16 %982 to i32
  %and1408 = and i32 %shr1404, %conv1407
  %983 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1409 = getelementptr inbounds i8, i8* %983, i64 2
  %984 = bitcast i8* %add.ptr1409 to i16*
  %arrayidx1410 = getelementptr inbounds i16, i16* %984, i64 0
  %985 = load i16, i16* %arrayidx1410, align 2, !tbaa !57
  %conv1411 = zext i16 %985 to i32
  %986 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1412 = shl i32 %conv1411, %986
  %add1413 = add nsw i32 %and1408, %shl1412
  br label %cond.end.1420

cond.false.1414:                                  ; preds = %if.then.1397
  %987 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1415 = getelementptr inbounds i8, i8* %987, i64 2
  %988 = load i8, i8* %add.ptr1415, align 1, !tbaa !9
  %conv1416 = zext i8 %988 to i16
  %conv1417 = zext i16 %conv1416 to i32
  %989 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1418 = shl i32 %conv1417, %989
  %and1419 = and i32 %shl1418, 65280
  br label %cond.end.1420

cond.end.1420:                                    ; preds = %cond.false.1414, %cond.true.1400
  %cond1421 = phi i32 [ %add1413, %cond.true.1400 ], [ %and1419, %cond.false.1414 ]
  %990 = load i32, i32* %bits, align 4, !tbaa !5
  %add1422 = add i32 %990, %cond1421
  store i32 %add1422, i32* %bits, align 4, !tbaa !5
  br label %if.end.1423

if.end.1423:                                      ; preds = %cond.end.1420, %cond.end.1393
  %991 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %992 = bitcast i8* %991 to i16*
  %arrayidx1424 = getelementptr inbounds i16, i16* %992, i64 1
  %993 = load i16, i16* %arrayidx1424, align 2, !tbaa !57
  %conv1425 = zext i16 %993 to i32
  %994 = load i32, i32* %rmask845, align 4, !tbaa !5
  %neg1426 = xor i32 %994, -1
  %and1427 = and i32 %conv1425, %neg1426
  %995 = load i32, i32* %bits, align 4, !tbaa !5
  %996 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1428 = xor i32 %995, %996
  %997 = load i32, i32* %rmask845, align 4, !tbaa !5
  %and1429 = and i32 %xor1428, %997
  %or1430 = or i32 %and1427, %and1429
  %conv1431 = trunc i32 %or1430 to i16
  %998 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %999 = bitcast i8* %998 to i16*
  %arrayidx1432 = getelementptr inbounds i16, i16* %999, i64 1
  store i16 %conv1431, i16* %arrayidx1432, align 2, !tbaa !57
  br label %if.end.1433

if.end.1433:                                      ; preds = %if.end.1423, %while.end.1369
  %1000 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec1434 = add nsw i32 %1000, -1
  store i32 %dec1434, i32* %h.addr, align 4, !tbaa !5
  %cmp1435 = icmp eq i32 %dec1434, 0
  br i1 %cmp1435, label %if.then.1437, label %if.end.1438

if.then.1437:                                     ; preds = %if.end.1433
  store i32 59, i32* %cleanup.dest.slot
  br label %cleanup.1443

if.end.1438:                                      ; preds = %if.end.1433
  %1001 = load i32, i32* %sskip, align 4, !tbaa !5
  %1002 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext1439 = zext i32 %1001 to i64
  %add.ptr1440 = getelementptr inbounds i8, i8* %1002, i64 %idx.ext1439
  store i8* %add.ptr1440, i8** %bptr, align 8, !tbaa !1
  %1003 = load i32, i32* %dskip, align 4, !tbaa !5
  %1004 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext1441 = zext i32 %1003 to i64
  %add.ptr1442 = getelementptr inbounds i8, i8* %1004, i64 %idx.ext1441
  store i8* %add.ptr1442, i8** %dbptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1443

cleanup.1443:                                     ; preds = %if.end.1438, %if.then.1437
  %1005 = bitcast i32* %count1238 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1005) #1
  %cleanup.dest.1444 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1444, label %unreachable [
    i32 0, label %cleanup.cont.1445
    i32 59, label %for.end.1446
  ]

cleanup.cont.1445:                                ; preds = %cleanup.1443
  br label %for.cond.1237

for.end.1446:                                     ; preds = %cleanup.1443
  br label %sw.epilog.1663

sw.bb.1447:                                       ; preds = %cond.end.1025
  br label %for.cond.1448

for.cond.1448:                                    ; preds = %cleanup.cont.1654, %sw.bb.1447
  %1006 = bitcast i32* %count1449 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1006) #1
  %1007 = load i32, i32* %wleft, align 4, !tbaa !5
  store i32 %1007, i32* %count1449, align 4, !tbaa !5
  %1008 = load i32, i32* %case_right, align 4, !tbaa !5
  %tobool1450 = icmp ne i32 %1008, 0
  br i1 %tobool1450, label %cond.true.1451, label %cond.false.1473

cond.true.1451:                                   ; preds = %for.cond.1448
  %1009 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1452 = icmp slt i32 %1009, 8
  br i1 %cmp1452, label %cond.true.1454, label %cond.false.1466

cond.true.1454:                                   ; preds = %cond.true.1451
  %1010 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1011 = bitcast i8* %1010 to i16*
  %arrayidx1455 = getelementptr inbounds i16, i16* %1011, i64 0
  %1012 = load i16, i16* %arrayidx1455, align 2, !tbaa !57
  %conv1456 = zext i16 %1012 to i32
  %1013 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1457 = ashr i32 %conv1456, %1013
  %1014 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1458 = sext i32 %1014 to i64
  %arrayidx1459 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1458
  %1015 = load i16, i16* %arrayidx1459, align 2, !tbaa !57
  %conv1460 = zext i16 %1015 to i32
  %and1461 = and i32 %shr1457, %conv1460
  %1016 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1017 = bitcast i8* %1016 to i16*
  %arrayidx1462 = getelementptr inbounds i16, i16* %1017, i64 0
  %1018 = load i16, i16* %arrayidx1462, align 2, !tbaa !57
  %conv1463 = zext i16 %1018 to i32
  %1019 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1464 = shl i32 %conv1463, %1019
  %add1465 = add nsw i32 %and1461, %shl1464
  br label %cond.end.1471

cond.false.1466:                                  ; preds = %cond.true.1451
  %1020 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1021 = load i8, i8* %1020, align 1, !tbaa !9
  %conv1467 = zext i8 %1021 to i16
  %conv1468 = zext i16 %conv1467 to i32
  %1022 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1469 = shl i32 %conv1468, %1022
  %and1470 = and i32 %shl1469, 65280
  br label %cond.end.1471

cond.end.1471:                                    ; preds = %cond.false.1466, %cond.true.1454
  %cond1472 = phi i32 [ %add1465, %cond.true.1454 ], [ %and1470, %cond.false.1466 ]
  br label %cond.end.1520

cond.false.1473:                                  ; preds = %for.cond.1448
  %1023 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1474 = icmp slt i32 %1023, 8
  br i1 %cmp1474, label %cond.true.1476, label %cond.false.1497

cond.true.1476:                                   ; preds = %cond.false.1473
  %1024 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1477 = getelementptr inbounds i8, i8* %1024, i64 -2
  %1025 = bitcast i8* %add.ptr1477 to i16*
  %arrayidx1478 = getelementptr inbounds i16, i16* %1025, i64 0
  %1026 = load i16, i16* %arrayidx1478, align 2, !tbaa !57
  %conv1479 = zext i16 %1026 to i32
  %1027 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1480 = shl i32 %conv1479, %1027
  %1028 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1481 = sext i32 %1028 to i64
  %arrayidx1482 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1481
  %1029 = load i16, i16* %arrayidx1482, align 2, !tbaa !57
  %conv1483 = zext i16 %1029 to i32
  %and1484 = and i32 %shl1480, %conv1483
  %1030 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1485 = getelementptr inbounds i8, i8* %1030, i64 -2
  %1031 = bitcast i8* %add.ptr1485 to i16*
  %arrayidx1486 = getelementptr inbounds i16, i16* %1031, i64 0
  %1032 = load i16, i16* %arrayidx1486, align 2, !tbaa !57
  %conv1487 = zext i16 %1032 to i32
  %1033 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1488 = ashr i32 %conv1487, %1033
  %add1489 = add nsw i32 %and1484, %shr1488
  %1034 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1490 = getelementptr inbounds i8, i8* %1034, i64 -2
  %arrayidx1491 = getelementptr inbounds i8, i8* %add.ptr1490, i64 2
  %1035 = load i8, i8* %arrayidx1491, align 1, !tbaa !9
  %conv1492 = zext i8 %1035 to i16
  %conv1493 = zext i16 %conv1492 to i32
  %1036 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1494 = shl i32 %conv1493, %1036
  %and1495 = and i32 %shl1494, 65280
  %add1496 = add nsw i32 %add1489, %and1495
  br label %cond.end.1518

cond.false.1497:                                  ; preds = %cond.false.1473
  %1037 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1498 = getelementptr inbounds i8, i8* %1037, i64 -2
  %1038 = bitcast i8* %add.ptr1498 to i16*
  %arrayidx1499 = getelementptr inbounds i16, i16* %1038, i64 0
  %1039 = load i16, i16* %arrayidx1499, align 2, !tbaa !57
  %conv1500 = zext i16 %1039 to i32
  %and1501 = and i32 %conv1500, 65280
  %1040 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1502 = ashr i32 %and1501, %1040
  %and1503 = and i32 %shr1502, 255
  %1041 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1504 = getelementptr inbounds i8, i8* %1041, i64 -2
  %1042 = bitcast i8* %add.ptr1504 to i16*
  %arrayidx1505 = getelementptr inbounds i16, i16* %1042, i64 1
  %1043 = load i16, i16* %arrayidx1505, align 2, !tbaa !57
  %conv1506 = zext i16 %1043 to i32
  %1044 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1507 = ashr i32 %conv1506, %1044
  %1045 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1508 = sext i32 %1045 to i64
  %arrayidx1509 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1508
  %1046 = load i16, i16* %arrayidx1509, align 2, !tbaa !57
  %conv1510 = zext i16 %1046 to i32
  %and1511 = and i32 %shr1507, %conv1510
  %add1512 = add nsw i32 %and1503, %and1511
  %1047 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1513 = getelementptr inbounds i8, i8* %1047, i64 -2
  %1048 = bitcast i8* %add.ptr1513 to i16*
  %arrayidx1514 = getelementptr inbounds i16, i16* %1048, i64 1
  %1049 = load i16, i16* %arrayidx1514, align 2, !tbaa !57
  %conv1515 = zext i16 %1049 to i32
  %1050 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1516 = shl i32 %conv1515, %1050
  %add1517 = add nsw i32 %add1512, %shl1516
  br label %cond.end.1518

cond.end.1518:                                    ; preds = %cond.false.1497, %cond.true.1476
  %cond1519 = phi i32 [ %add1496, %cond.true.1476 ], [ %add1517, %cond.false.1497 ]
  br label %cond.end.1520

cond.end.1520:                                    ; preds = %cond.end.1518, %cond.end.1471
  %cond1521 = phi i32 [ %cond1472, %cond.end.1471 ], [ %cond1519, %cond.end.1518 ]
  store i32 %cond1521, i32* %bits, align 4, !tbaa !5
  %1051 = load i32, i32* %bits, align 4, !tbaa !5
  %1052 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1522 = xor i32 %1051, %1052
  %1053 = load i32, i32* %mask, align 4, !tbaa !5
  %neg1523 = xor i32 %1053, -1
  %or1524 = or i32 %xor1522, %neg1523
  %1054 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %1055 = bitcast i8* %1054 to i16*
  %arrayidx1525 = getelementptr inbounds i16, i16* %1055, i64 0
  %1056 = load i16, i16* %arrayidx1525, align 2, !tbaa !57
  %conv1526 = zext i16 %1056 to i32
  %and1527 = and i32 %conv1526, %or1524
  %conv1528 = trunc i32 %and1527 to i16
  store i16 %conv1528, i16* %arrayidx1525, align 2, !tbaa !57
  br label %while.cond.1529

while.cond.1529:                                  ; preds = %cond.end.1571, %cond.end.1520
  %1057 = load i32, i32* %count1449, align 4, !tbaa !5
  %cmp1530 = icmp sge i32 %1057, 16
  br i1 %cmp1530, label %while.body.1532, label %while.end.1580

while.body.1532:                                  ; preds = %while.cond.1529
  %1058 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1533 = icmp slt i32 %1058, 8
  br i1 %cmp1533, label %cond.true.1535, label %cond.false.1553

cond.true.1535:                                   ; preds = %while.body.1532
  %1059 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1060 = bitcast i8* %1059 to i16*
  %arrayidx1536 = getelementptr inbounds i16, i16* %1060, i64 0
  %1061 = load i16, i16* %arrayidx1536, align 2, !tbaa !57
  %conv1537 = zext i16 %1061 to i32
  %1062 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1538 = shl i32 %conv1537, %1062
  %1063 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1539 = sext i32 %1063 to i64
  %arrayidx1540 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1539
  %1064 = load i16, i16* %arrayidx1540, align 2, !tbaa !57
  %conv1541 = zext i16 %1064 to i32
  %and1542 = and i32 %shl1538, %conv1541
  %1065 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1066 = bitcast i8* %1065 to i16*
  %arrayidx1543 = getelementptr inbounds i16, i16* %1066, i64 0
  %1067 = load i16, i16* %arrayidx1543, align 2, !tbaa !57
  %conv1544 = zext i16 %1067 to i32
  %1068 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1545 = ashr i32 %conv1544, %1068
  %add1546 = add nsw i32 %and1542, %shr1545
  %1069 = load i8*, i8** %bptr, align 8, !tbaa !1
  %arrayidx1547 = getelementptr inbounds i8, i8* %1069, i64 2
  %1070 = load i8, i8* %arrayidx1547, align 1, !tbaa !9
  %conv1548 = zext i8 %1070 to i16
  %conv1549 = zext i16 %conv1548 to i32
  %1071 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1550 = shl i32 %conv1549, %1071
  %and1551 = and i32 %shl1550, 65280
  %add1552 = add nsw i32 %add1546, %and1551
  br label %cond.end.1571

cond.false.1553:                                  ; preds = %while.body.1532
  %1072 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1073 = bitcast i8* %1072 to i16*
  %arrayidx1554 = getelementptr inbounds i16, i16* %1073, i64 0
  %1074 = load i16, i16* %arrayidx1554, align 2, !tbaa !57
  %conv1555 = zext i16 %1074 to i32
  %and1556 = and i32 %conv1555, 65280
  %1075 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1557 = ashr i32 %and1556, %1075
  %and1558 = and i32 %shr1557, 255
  %1076 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1077 = bitcast i8* %1076 to i16*
  %arrayidx1559 = getelementptr inbounds i16, i16* %1077, i64 1
  %1078 = load i16, i16* %arrayidx1559, align 2, !tbaa !57
  %conv1560 = zext i16 %1078 to i32
  %1079 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1561 = ashr i32 %conv1560, %1079
  %1080 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1562 = sext i32 %1080 to i64
  %arrayidx1563 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1562
  %1081 = load i16, i16* %arrayidx1563, align 2, !tbaa !57
  %conv1564 = zext i16 %1081 to i32
  %and1565 = and i32 %shr1561, %conv1564
  %add1566 = add nsw i32 %and1558, %and1565
  %1082 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1083 = bitcast i8* %1082 to i16*
  %arrayidx1567 = getelementptr inbounds i16, i16* %1083, i64 1
  %1084 = load i16, i16* %arrayidx1567, align 2, !tbaa !57
  %conv1568 = zext i16 %1084 to i32
  %1085 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1569 = shl i32 %conv1568, %1085
  %add1570 = add nsw i32 %add1566, %shl1569
  br label %cond.end.1571

cond.end.1571:                                    ; preds = %cond.false.1553, %cond.true.1535
  %cond1572 = phi i32 [ %add1552, %cond.true.1535 ], [ %add1570, %cond.false.1553 ]
  store i32 %cond1572, i32* %bits, align 4, !tbaa !5
  %1086 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1573 = getelementptr inbounds i8, i8* %1086, i64 2
  store i8* %add.ptr1573, i8** %bptr, align 8, !tbaa !1
  %1087 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %add.ptr1574 = getelementptr inbounds i8, i8* %1087, i64 2
  store i8* %add.ptr1574, i8** %dbptr, align 8, !tbaa !1
  %1088 = load i32, i32* %bits, align 4, !tbaa !5
  %1089 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1575 = xor i32 %1088, %1089
  %1090 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %1091 = bitcast i8* %1090 to i16*
  %1092 = load i16, i16* %1091, align 2, !tbaa !57
  %conv1576 = zext i16 %1092 to i32
  %and1577 = and i32 %conv1576, %xor1575
  %conv1578 = trunc i32 %and1577 to i16
  store i16 %conv1578, i16* %1091, align 2, !tbaa !57
  %1093 = load i32, i32* %count1449, align 4, !tbaa !5
  %sub1579 = sub nsw i32 %1093, 16
  store i32 %sub1579, i32* %count1449, align 4, !tbaa !5
  br label %while.cond.1529

while.end.1580:                                   ; preds = %while.cond.1529
  %1094 = load i32, i32* %count1449, align 4, !tbaa !5
  %cmp1581 = icmp sgt i32 %1094, 0
  br i1 %cmp1581, label %if.then.1583, label %if.end.1642

if.then.1583:                                     ; preds = %while.end.1580
  %1095 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %cmp1584 = icmp slt i32 %1095, 8
  br i1 %cmp1584, label %cond.true.1586, label %cond.false.1598

cond.true.1586:                                   ; preds = %if.then.1583
  %1096 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1097 = bitcast i8* %1096 to i16*
  %arrayidx1587 = getelementptr inbounds i16, i16* %1097, i64 0
  %1098 = load i16, i16* %arrayidx1587, align 2, !tbaa !57
  %conv1588 = zext i16 %1098 to i32
  %1099 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1589 = shl i32 %conv1588, %1099
  %1100 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %idxprom1590 = sext i32 %1100 to i64
  %arrayidx1591 = getelementptr inbounds [9 x i16], [9 x i16]* @left_masks2, i32 0, i64 %idxprom1590
  %1101 = load i16, i16* %arrayidx1591, align 2, !tbaa !57
  %conv1592 = zext i16 %1101 to i32
  %and1593 = and i32 %shl1589, %conv1592
  %1102 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1103 = bitcast i8* %1102 to i16*
  %arrayidx1594 = getelementptr inbounds i16, i16* %1103, i64 0
  %1104 = load i16, i16* %arrayidx1594, align 2, !tbaa !57
  %conv1595 = zext i16 %1104 to i32
  %1105 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1596 = ashr i32 %conv1595, %1105
  %add1597 = add nsw i32 %and1593, %shr1596
  br label %cond.end.1604

cond.false.1598:                                  ; preds = %if.then.1583
  %1106 = load i8*, i8** %bptr, align 8, !tbaa !1
  %1107 = bitcast i8* %1106 to i16*
  %arrayidx1599 = getelementptr inbounds i16, i16* %1107, i64 0
  %1108 = load i16, i16* %arrayidx1599, align 2, !tbaa !57
  %conv1600 = zext i16 %1108 to i32
  %and1601 = and i32 %conv1600, 65280
  %1109 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1602 = ashr i32 %and1601, %1109
  %and1603 = and i32 %shr1602, 255
  br label %cond.end.1604

cond.end.1604:                                    ; preds = %cond.false.1598, %cond.true.1586
  %cond1605 = phi i32 [ %add1597, %cond.true.1586 ], [ %and1603, %cond.false.1598 ]
  store i32 %cond1605, i32* %bits, align 4, !tbaa !5
  %1110 = load i32, i32* %count1449, align 4, !tbaa !5
  %1111 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1606 = icmp sgt i32 %1110, %1111
  br i1 %cmp1606, label %if.then.1608, label %if.end.1634

if.then.1608:                                     ; preds = %cond.end.1604
  %1112 = load i32, i32* %skew, align 4, !tbaa !5
  %cmp1609 = icmp slt i32 %1112, 8
  br i1 %cmp1609, label %cond.true.1611, label %cond.false.1625

cond.true.1611:                                   ; preds = %if.then.1608
  %1113 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1612 = getelementptr inbounds i8, i8* %1113, i64 2
  %1114 = bitcast i8* %add.ptr1612 to i16*
  %arrayidx1613 = getelementptr inbounds i16, i16* %1114, i64 0
  %1115 = load i16, i16* %arrayidx1613, align 2, !tbaa !57
  %conv1614 = zext i16 %1115 to i32
  %1116 = load i32, i32* %skew, align 4, !tbaa !5
  %shr1615 = ashr i32 %conv1614, %1116
  %1117 = load i32, i32* %skew, align 4, !tbaa !5
  %idxprom1616 = sext i32 %1117 to i64
  %arrayidx1617 = getelementptr inbounds [9 x i16], [9 x i16]* @right_masks2, i32 0, i64 %idxprom1616
  %1118 = load i16, i16* %arrayidx1617, align 2, !tbaa !57
  %conv1618 = zext i16 %1118 to i32
  %and1619 = and i32 %shr1615, %conv1618
  %1119 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1620 = getelementptr inbounds i8, i8* %1119, i64 2
  %1120 = bitcast i8* %add.ptr1620 to i16*
  %arrayidx1621 = getelementptr inbounds i16, i16* %1120, i64 0
  %1121 = load i16, i16* %arrayidx1621, align 2, !tbaa !57
  %conv1622 = zext i16 %1121 to i32
  %1122 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1623 = shl i32 %conv1622, %1122
  %add1624 = add nsw i32 %and1619, %shl1623
  br label %cond.end.1631

cond.false.1625:                                  ; preds = %if.then.1608
  %1123 = load i8*, i8** %bptr, align 8, !tbaa !1
  %add.ptr1626 = getelementptr inbounds i8, i8* %1123, i64 2
  %1124 = load i8, i8* %add.ptr1626, align 1, !tbaa !9
  %conv1627 = zext i8 %1124 to i16
  %conv1628 = zext i16 %conv1627 to i32
  %1125 = load i32, i32* %cskew1017, align 4, !tbaa !5
  %shl1629 = shl i32 %conv1628, %1125
  %and1630 = and i32 %shl1629, 65280
  br label %cond.end.1631

cond.end.1631:                                    ; preds = %cond.false.1625, %cond.true.1611
  %cond1632 = phi i32 [ %add1624, %cond.true.1611 ], [ %and1630, %cond.false.1625 ]
  %1126 = load i32, i32* %bits, align 4, !tbaa !5
  %add1633 = add i32 %1126, %cond1632
  store i32 %add1633, i32* %bits, align 4, !tbaa !5
  br label %if.end.1634

if.end.1634:                                      ; preds = %cond.end.1631, %cond.end.1604
  %1127 = load i32, i32* %bits, align 4, !tbaa !5
  %1128 = load i32, i32* %invert, align 4, !tbaa !5
  %xor1635 = xor i32 %1127, %1128
  %1129 = load i32, i32* %rmask845, align 4, !tbaa !5
  %neg1636 = xor i32 %1129, -1
  %or1637 = or i32 %xor1635, %neg1636
  %1130 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %1131 = bitcast i8* %1130 to i16*
  %arrayidx1638 = getelementptr inbounds i16, i16* %1131, i64 1
  %1132 = load i16, i16* %arrayidx1638, align 2, !tbaa !57
  %conv1639 = zext i16 %1132 to i32
  %and1640 = and i32 %conv1639, %or1637
  %conv1641 = trunc i32 %and1640 to i16
  store i16 %conv1641, i16* %arrayidx1638, align 2, !tbaa !57
  br label %if.end.1642

if.end.1642:                                      ; preds = %if.end.1634, %while.end.1580
  %1133 = load i32, i32* %h.addr, align 4, !tbaa !5
  %dec1643 = add nsw i32 %1133, -1
  store i32 %dec1643, i32* %h.addr, align 4, !tbaa !5
  %cmp1644 = icmp eq i32 %dec1643, 0
  br i1 %cmp1644, label %if.then.1646, label %if.end.1647

if.then.1646:                                     ; preds = %if.end.1642
  store i32 63, i32* %cleanup.dest.slot
  br label %cleanup.1652

if.end.1647:                                      ; preds = %if.end.1642
  %1134 = load i32, i32* %sskip, align 4, !tbaa !5
  %1135 = load i8*, i8** %bptr, align 8, !tbaa !1
  %idx.ext1648 = zext i32 %1134 to i64
  %add.ptr1649 = getelementptr inbounds i8, i8* %1135, i64 %idx.ext1648
  store i8* %add.ptr1649, i8** %bptr, align 8, !tbaa !1
  %1136 = load i32, i32* %dskip, align 4, !tbaa !5
  %1137 = load i8*, i8** %dbptr, align 8, !tbaa !1
  %idx.ext1650 = zext i32 %1136 to i64
  %add.ptr1651 = getelementptr inbounds i8, i8* %1137, i64 %idx.ext1650
  store i8* %add.ptr1651, i8** %dbptr, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1652

cleanup.1652:                                     ; preds = %if.end.1647, %if.then.1646
  %1138 = bitcast i32* %count1449 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1138) #1
  %cleanup.dest.1653 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1653, label %unreachable [
    i32 0, label %cleanup.cont.1654
    i32 63, label %for.end.1655
  ]

cleanup.cont.1654:                                ; preds = %cleanup.1652
  br label %for.cond.1448

for.end.1655:                                     ; preds = %cleanup.1652
  br label %sw.epilog.1663

sw.default.1656:                                  ; preds = %cond.end.1025
  %1139 = load i32, i32* %invert, align 4, !tbaa !5
  %tobool1657 = icmp ne i32 %1139, 0
  br i1 %tobool1657, label %cond.true.1658, label %cond.false.1659

cond.true.1658:                                   ; preds = %sw.default.1656
  br label %cond.end.1661

cond.false.1659:                                  ; preds = %sw.default.1656
  %1140 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1141 = load i32, i32* %x.addr, align 4, !tbaa !5
  %1142 = load i32, i32* %y.addr, align 4, !tbaa !5
  %1143 = load i32, i32* %w.addr, align 4, !tbaa !5
  %1144 = load i32, i32* %h.addr, align 4, !tbaa !5
  %1145 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %call1660 = call i32 @mem_mono_fill_rectangle(%struct.gx_device_s* %1140, i32 %1141, i32 %1142, i32 %1143, i32 %1144, i64 %1145) #3
  br label %cond.end.1661

cond.end.1661:                                    ; preds = %cond.false.1659, %cond.true.1658
  %cond1662 = phi i32 [ -1, %cond.true.1658 ], [ %call1660, %cond.false.1659 ]
  store i32 %cond1662, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1664

sw.epilog.1663:                                   ; preds = %for.end.1655, %for.end.1446, %for.end.1235
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1664

cleanup.1664:                                     ; preds = %sw.epilog.1663, %cond.end.1661
  %1146 = bitcast i32* %case_right to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1146) #1
  %1147 = bitcast i32* %cskew1017 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1147) #1
  %cleanup.dest.1666 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1666, label %cleanup.1669 [
    i32 0, label %cleanup.cont.1667
  ]

cleanup.cont.1667:                                ; preds = %cleanup.1664
  br label %if.end.1668

if.end.1668:                                      ; preds = %cleanup.cont.1667, %sw.epilog.1015
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.1669

cleanup.1669:                                     ; preds = %if.end.1668, %cleanup.1664, %cond.end.1013
  %1148 = bitcast i32* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1148) #1
  %1149 = bitcast i32* %dskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1149) #1
  %1150 = bitcast i32* %sskip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1150) #1
  %1151 = bitcast i32* %words to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1151) #1
  %1152 = bitcast i32* %rmask845 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1152) #1
  %cleanup.dest.1674 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.1674, label %cleanup.1678 [
    i32 0, label %cleanup.cont.1675
  ]

cleanup.cont.1675:                                ; preds = %cleanup.1669
  br label %if.end.1676

if.end.1676:                                      ; preds = %cleanup.cont.1675, %cleanup.cont.843
  br label %if.end.1677

if.end.1677:                                      ; preds = %if.end.1676, %if.end.608
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.1678

cleanup.1678:                                     ; preds = %if.end.1677, %cleanup.1669, %cleanup.840, %cleanup.604, %cleanup.410, %cleanup, %cond.end.136, %cond.end.37, %if.then.23
  %1153 = bitcast i32* %invert to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1153) #1
  %1154 = bitcast i32* %skew to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1154) #1
  %1155 = bitcast i32* %dest_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1155) #1
  %1156 = bitcast i8** %dbptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1156) #1
  %1157 = bitcast %struct.copy_mode* %mode to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1157) #1
  %1158 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1158) #1
  %1159 = bitcast i32* %wleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1159) #1
  %1160 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %1160) #1
  %1161 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1161) #1
  %1162 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1162) #1
  %1163 = load i32, i32* %retval
  ret i32 %1163

unreachable:                                      ; preds = %cleanup.1652, %cleanup.1443, %cleanup.1232, %cleanup.1004, %cleanup.954, %cleanup.902
  unreachable
}

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #2

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #2

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #2

declare i32 @gx_default_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gx_default_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i64 @gx_default_map_cmyk_color(%struct.gx_device_s*, i16*) #2

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #2

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #2

declare i64 @gx_default_map_rgb_alpha_color(%struct.gx_device_s*, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext) #2

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #2

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #2

declare i32 @gx_no_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #2

declare i32 @gx_default_get_band(%struct.gx_device_s*, i32, i32*) #2

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #2

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @mem_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #2

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #2

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @mem_mono_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %tx, i32 %y, i32 %tw, i32 %th, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tx.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tw.addr = alloca i32, align 4
  %th.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %rop = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %tx, i32* %tx.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %tw, i32* %tw.addr, align 4, !tbaa !5
  store i32 %th, i32* %th.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp1 = icmp eq i64 %2, 0
  %cond = select i1 %cmp1, i32 0, i32 255
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 170, %cond.true ], [ %cond, %cond.false ]
  %and = and i32 %cond2, -241
  %3 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp3 = icmp eq i64 %3, -1
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  br label %cond.end.8

cond.false.5:                                     ; preds = %cond.end
  %4 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp6 = icmp eq i64 %4, 0
  %cond7 = select i1 %cmp6, i32 0, i32 255
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.false.5, %cond.true.4
  %cond9 = phi i32 [ 170, %cond.true.4 ], [ %cond7, %cond.false.5 ]
  %and10 = and i32 %cond9, 240
  %or = or i32 %and, %and10
  store i32 %or, i32* %rop, align 4, !tbaa !5
  %5 = load i32, i32* %rop, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %5, 170
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.8
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %8 = load i32, i32* %tx.addr, align 4, !tbaa !5
  %9 = load i32, i32* %y.addr, align 4, !tbaa !5
  %10 = load i32, i32* %tw.addr, align 4, !tbaa !5
  %11 = load i32, i32* %th.addr, align 4, !tbaa !5
  %12 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %13 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %14 = load i32, i32* %px.addr, align 4, !tbaa !5
  %15 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %6, %struct.gx_strip_bitmap_s* %7, i32 %8, i32 %9, i32 %10, i32 %11, i64 %12, i64 %13, i32 %14, i32 %15) #3
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.8
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %17 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %17, i32 0, i32 3
  %18 = load i64, i64* %id, align 8, !tbaa !59
  %19 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %20 = load i32, i32* %tx.addr, align 4, !tbaa !5
  %21 = load i32, i32* %y.addr, align 4, !tbaa !5
  %22 = load i32, i32* %tw.addr, align 4, !tbaa !5
  %23 = load i32, i32* %th.addr, align 4, !tbaa !5
  %24 = load i32, i32* %px.addr, align 4, !tbaa !5
  %25 = load i32, i32* %py.addr, align 4, !tbaa !5
  %26 = load i32, i32* %rop, align 4, !tbaa !5
  %call12 = call i32 @mem_mono_strip_copy_rop_dev(%struct.gx_device_s* %16, i8* null, i32 0, i32 0, i64 %18, i64* null, %struct.gx_strip_bitmap_s* %19, i64* null, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26) #3
  store i32 %call12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %27 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @mem_mono_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare void @gx_default_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #2

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #2

declare i32 @mem_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

declare i32 @gx_default_map_color_rgb_alpha(%struct.gx_device_s*, i64, i16*) #2

declare i32 @gx_default_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #2

declare i32 @gx_default_get_hardware_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

declare i32 @gx_default_text_begin(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**) #2

declare i32 @gx_default_finish_copydevice(%struct.gx_device_s*, %struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mem1_word_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
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
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
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
  %15 = load i32, i32* %width, align 4, !tbaa !33
  %16 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %16
  %cmp11 = icmp sgt i32 %13, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width13, align 4, !tbaa !33
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
  %22 = load i32, i32* %height, align 4, !tbaa !34
  %23 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %22, %23
  %cmp20 = icmp sgt i32 %20, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height22, align 4, !tbaa !34
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
  %31 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 %idxprom
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %32, i8** %base, align 8, !tbaa !1
  %33 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %33, i32 0, i32 44
  %34 = load i32, i32* %raster35, align 4, !tbaa !10
  store i32 %34, i32* %raster, align 4, !tbaa !5
  %35 = load i8*, i8** %base, align 8, !tbaa !1
  %36 = load i32, i32* %raster, align 4, !tbaa !5
  %37 = load i32, i32* %x.addr, align 4, !tbaa !5
  %38 = load i32, i32* %w.addr, align 4, !tbaa !5
  %39 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 1) #3
  %40 = load i8*, i8** %base, align 8, !tbaa !1
  %41 = load i32, i32* %x.addr, align 4, !tbaa !5
  %42 = load i32, i32* %raster, align 4, !tbaa !5
  %43 = load i64, i64* %color.addr, align 8, !tbaa !7
  %conv = trunc i64 %43 to i32
  %sub36 = sub nsw i32 0, %conv
  %44 = load i32, i32* %w.addr, align 4, !tbaa !5
  %45 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @bits_fill_rectangle(i8* %40, i32 %41, i32 %42, i32 %sub36, i32 %44, i32 %45) #3
  %46 = load i8*, i8** %base, align 8, !tbaa !1
  %47 = load i32, i32* %raster, align 4, !tbaa !5
  %48 = load i32, i32* %x.addr, align 4, !tbaa !5
  %49 = load i32, i32* %w.addr, align 4, !tbaa !5
  %50 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 1) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.34, %if.then.31
  %51 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i8** %base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #1
  %53 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define internal i32 @mem1_word_copy_mono(%struct.gx_device_s* %dev, i8* %source_data, i32 %source_x, i32 %source_raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %source_data.addr = alloca i8*, align 8
  %source_x.addr = alloca i32, align 4
  %source_raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %mdev = alloca %struct.gx_device_memory_s*, align 8
  %row = alloca i8*, align 8
  %raster = alloca i32, align 4
  %store = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %source_data, i8** %source_data.addr, align 8, !tbaa !1
  store i32 %source_x, i32* %source_x.addr, align 4, !tbaa !5
  store i32 %source_raster, i32* %source_raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !7
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !5
  store i32 %h, i32* %h.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !7
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !7
  %0 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %3 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %store to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
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
  %12 = load i32, i32* %source_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %source_x.addr, align 4, !tbaa !5
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
  %17 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %17
  %18 = load i8*, i8** %source_data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.neg
  store i8* %add.ptr, i8** %source_data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !7
  store i32 0, i32* %y.addr, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body.1
  %19 = load i32, i32* %w.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 13
  %21 = load i32, i32* %width, align 4, !tbaa !33
  %22 = load i32, i32* %x.addr, align 4, !tbaa !5
  %sub9 = sub nsw i32 %21, %22
  %cmp10 = icmp sgt i32 %19, %sub9
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %23, i32 0, i32 13
  %24 = load i32, i32* %width12, align 4, !tbaa !33
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
  %28 = load i32, i32* %height, align 4, !tbaa !34
  %29 = load i32, i32* %y.addr, align 4, !tbaa !5
  %sub15 = sub nsw i32 %28, %29
  %cmp16 = icmp sgt i32 %26, %sub15
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %do.end
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 14
  %31 = load i32, i32* %height18, align 4, !tbaa !34
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
  %37 = load i8**, i8*** %line_ptrs, align 8, !tbaa !35
  %arrayidx = getelementptr inbounds i8*, i8** %37, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %38, i8** %row, align 8, !tbaa !1
  %39 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev, align 8, !tbaa !1
  %raster27 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %39, i32 0, i32 44
  %40 = load i32, i32* %raster27, align 4, !tbaa !10
  store i32 %40, i32* %raster, align 4, !tbaa !5
  %41 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %cmp28 = icmp ne i64 %41, -1
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end.26
  %42 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %cmp29 = icmp ne i64 %42, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end.26
  %43 = phi i1 [ false, %do.end.26 ], [ %cmp29, %land.rhs ]
  %land.ext = zext i1 %43 to i32
  store i32 %land.ext, i32* %store, align 4, !tbaa !5
  %44 = load i8*, i8** %row, align 8, !tbaa !1
  %45 = load i32, i32* %raster, align 4, !tbaa !5
  %46 = load i32, i32* %x.addr, align 4, !tbaa !5
  %47 = load i32, i32* %w.addr, align 4, !tbaa !5
  %48 = load i32, i32* %h.addr, align 4, !tbaa !5
  %49 = load i32, i32* %store, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49) #3
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %source_data.addr, align 8, !tbaa !1
  %52 = load i32, i32* %source_x.addr, align 4, !tbaa !5
  %53 = load i32, i32* %source_raster.addr, align 4, !tbaa !5
  %54 = load i64, i64* %id.addr, align 8, !tbaa !7
  %55 = load i32, i32* %x.addr, align 4, !tbaa !5
  %56 = load i32, i32* %y.addr, align 4, !tbaa !5
  %57 = load i32, i32* %w.addr, align 4, !tbaa !5
  %58 = load i32, i32* %h.addr, align 4, !tbaa !5
  %59 = load i64, i64* %color0.addr, align 8, !tbaa !7
  %60 = load i64, i64* %color1.addr, align 8, !tbaa !7
  %call = call i32 @mem_mono_copy_mono(%struct.gx_device_s* %50, i8* %51, i32 %52, i32 %53, i64 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60) #3
  %61 = load i8*, i8** %row, align 8, !tbaa !1
  %62 = load i32, i32* %raster, align 4, !tbaa !5
  %63 = load i32, i32* %x.addr, align 4, !tbaa !5
  %64 = load i32, i32* %w.addr, align 4, !tbaa !5
  %65 = load i32, i32* %h.addr, align 4, !tbaa !5
  call void @mem_swap_byte_rect(i8* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 0) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then.23
  %66 = bitcast i32* %store to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast %struct.gx_device_memory_s** %mdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = load i32, i32* %retval
  ret i32 %70
}

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

declare i32 @gx_no_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #2

declare i32 @mem_word_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #2

declare i64 @gx_default_w_b_map_rgb_color(%struct.gx_device_s*, i16*) #2

declare i32 @gx_default_w_b_map_color_rgb(%struct.gx_device_s*, i64, i16*) #2

declare void @bits_fill_rectangle(i8*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare void @mem_swap_byte_rect(i8*, i32, i32, i32, i32, i32) #2

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
!9 = !{!3, !3, i64 0}
!10 = !{!11, !6, i64 1736}
!11 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !22, i64 2548, !2, i64 2576, !24, i64 2584, !25, i64 2600, !26, i64 2624, !27, i64 2656, !28, i64 2680, !29, i64 2720, !30, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !8, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
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
!22 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!23 = !{!"float", !3, i64 0}
!24 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!25 = !{!"_c24", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!26 = !{!"_c40", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!27 = !{!"_c48", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!28 = !{!"_c56", !8, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!29 = !{!"_c64", !8, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!31 = !{!32, !2, i64 1200}
!32 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !12, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !13, i64 96, !16, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !8, i64 928, !8, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !8, i64 968, !8, i64 976, !17, i64 984, !6, i64 1052, !6, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!33 = !{!32, !6, i64 832}
!34 = !{!32, !6, i64 836}
!35 = !{!11, !2, i64 2576}
!36 = !{!11, !2, i64 1744}
!37 = !{!38, !6, i64 8}
!38 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !39, i64 12, !8, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !6, i64 40}
!39 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!40 = !{!41, !2, i64 0}
!41 = !{!"", !2, i64 0, !6, i64 8}
!42 = !{!41, !6, i64 8}
!43 = !{!44, !3, i64 54}
!44 = !{!"rop_run_op_s", !2, i64 0, !2, i64 8, !3, i64 16, !3, i64 32, !6, i64 48, !3, i64 52, !3, i64 53, !3, i64 54, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!45 = !{!44, !2, i64 0}
!46 = !{!44, !2, i64 72}
!47 = !{!38, !14, i64 32}
!48 = !{!38, !2, i64 0}
!49 = !{!38, !14, i64 34}
!50 = !{!38, !14, i64 38}
!51 = !{!38, !14, i64 36}
!52 = !{!38, !6, i64 12}
!53 = !{!11, !2, i64 2584}
!54 = !{i64 0, i64 4, !5, i64 4, i64 4, !9}
!55 = !{!56, !6, i64 0}
!56 = !{!"", !6, i64 0, !3, i64 4}
!57 = !{!14, !14, i64 0}
!58 = !{!56, !3, i64 4}
!59 = !{!38, !8, i64 24}
