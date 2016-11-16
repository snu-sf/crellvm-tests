; ModuleID = './gdevmrun.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_run_s = type { %struct.gx_device_memory_s, i32, i32, i32, i32, i32, %struct.sp_ }
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
%struct.sp_ = type { i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* }
%struct.run_line_s = type { i64, i32, %struct.run_ptr_s, i32 }
%struct.run_ptr_s = type { %struct.run_s*, i32 }
%struct.run_s = type { i64, i32 }
%struct.const_run_ptr_s = type { %struct.run_s*, i32 }

; Function Attrs: nounwind uwtable
define i32 @gdev_run_from_mem(%struct.gx_device_run_s* %rdev, %struct.gx_device_memory_s* %mdev) #0 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.gx_device_run_s*, align 8
  %mdev.addr = alloca %struct.gx_device_memory_s*, align 8
  %runs_per_line = alloca i32, align 4
  %min_runs = alloca i32, align 4
  %i = alloca i32, align 4
  %white = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %line = alloca %struct.run_line_s*, align 8
  store %struct.gx_device_run_s* %rdev, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  store %struct.gx_device_memory_s* %mdev, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %runs_per_line to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !5
  %3 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %3, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %4 = load i16, i16* %depth, align 2, !tbaa !28
  %conv = zext i16 %4 to i32
  %mul = mul nsw i32 %2, %conv
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  %conv1 = zext i32 %shl to i64
  %sub = sub i64 %conv1, 40
  %div = udiv i64 %sub, 16
  %conv2 = trunc i64 %div to i32
  store i32 %conv2, i32* %runs_per_line, align 4, !tbaa !29
  %5 = bitcast i32* %min_runs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width3, align 4, !tbaa !5
  %add4 = add nsw i32 %7, 4094
  %div5 = sdiv i32 %add4, 4095
  %add6 = add nsw i32 %div5, 2
  store i32 %add6, i32* %min_runs, align 4, !tbaa !29
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i64* %white to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_memory_s* %10 to %struct.gx_device_s*
  %call = call i64 @gx_device_white(%struct.gx_device_s* %11) #3
  store i64 %call, i64* %white, align 8, !tbaa !30
  %12 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %12, i32 0, i32 0
  %13 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gx_device_memory_s* %md to i8*
  %15 = bitcast %struct.gx_device_memory_s* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 2792, i32 8, i1 false), !tbaa.struct !31
  %16 = load i32, i32* %runs_per_line, align 4, !tbaa !29
  %cmp = icmp sgt i32 %16, 1024
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1024, i32* %runs_per_line, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* %runs_per_line, align 4, !tbaa !29
  %18 = load i32, i32* %min_runs, align 4, !tbaa !29
  %cmp8 = icmp slt i32 %17, %18
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %19 = load i32, i32* %i, align 4, !tbaa !29
  %20 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %20, i32 0, i32 14
  %21 = load i32, i32* %height, align 4, !tbaa !35
  %cmp12 = icmp slt i32 %19, %21
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load i32, i32* %i, align 4, !tbaa !29
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md14 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %24, i32 0, i32 0
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md14, i32 0, i32 52
  %25 = load i8**, i8*** %line_ptrs, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 %idxprom
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.run_line_s*
  store %struct.run_line_s* %27, %struct.run_line_s** %line, align 8, !tbaa !1
  %28 = load i64, i64* %white, align 8, !tbaa !30
  %29 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %zero = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %29, i32 0, i32 0
  store i64 %28, i64* %zero, align 8, !tbaa !37
  %30 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4, !tbaa !29
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %runs_per_line, align 4, !tbaa !29
  %33 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %runs_per_line15 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %33, i32 0, i32 1
  store i32 %32, i32* %runs_per_line15, align 4, !tbaa !40
  %34 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umin = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %34, i32 0, i32 2
  store i32 0, i32* %umin, align 4, !tbaa !43
  %35 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height16 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height16, align 4, !tbaa !35
  %37 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umax1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %37, i32 0, i32 3
  store i32 %36, i32* %umax1, align 4, !tbaa !44
  %38 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %mdev.addr, align 8, !tbaa !1
  %height17 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height17, align 4, !tbaa !35
  %40 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smin = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %40, i32 0, i32 4
  store i32 %39, i32* %smin, align 4, !tbaa !45
  %41 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %41, i32 0, i32 5
  store i32 0, i32* %smax1, align 4, !tbaa !46
  %42 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md18 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %42, i32 0, i32 0
  %procs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md18, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %43 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !47
  %44 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %44, i32 0, i32 6
  %copy_mono19 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 0
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* %43, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono19, align 8, !tbaa !48
  %45 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md20 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %45, i32 0, i32 0
  %procs21 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md20, i32 0, i32 42
  %copy_mono22 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs21, i32 0, i32 9
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @run_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono22, align 8, !tbaa !47
  %46 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md23 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %46, i32 0, i32 0
  %procs24 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md23, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs24, i32 0, i32 10
  %47 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !49
  %48 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs25 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %48, i32 0, i32 6
  %copy_color26 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs25, i32 0, i32 1
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* %47, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color26, align 8, !tbaa !50
  %49 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md27 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %49, i32 0, i32 0
  %procs28 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md27, i32 0, i32 42
  %copy_color29 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs28, i32 0, i32 10
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @run_copy_color, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color29, align 8, !tbaa !49
  %50 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md30 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %50, i32 0, i32 0
  %procs31 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md30, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs31, i32 0, i32 7
  %51 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !51
  %52 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs32 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %52, i32 0, i32 6
  %fill_rectangle33 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs32, i32 0, i32 2
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %51, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle33, align 8, !tbaa !52
  %53 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md34 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %53, i32 0, i32 0
  %procs35 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md34, i32 0, i32 42
  %fill_rectangle36 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs35, i32 0, i32 7
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @run_fill_rectangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle36, align 8, !tbaa !51
  %54 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md37 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %54, i32 0, i32 0
  %procs38 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md37, i32 0, i32 42
  %copy_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs38, i32 0, i32 21
  %55 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !53
  %56 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs39 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %56, i32 0, i32 6
  %copy_alpha40 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs39, i32 0, i32 3
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* %55, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha40, align 8, !tbaa !54
  %57 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md41 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %57, i32 0, i32 0
  %procs42 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md41, i32 0, i32 42
  %copy_alpha43 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs42, i32 0, i32 21
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @run_copy_alpha, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha43, align 8, !tbaa !53
  %58 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md44 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %58, i32 0, i32 0
  %procs45 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md44, i32 0, i32 42
  %strip_tile_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs45, i32 0, i32 34
  %59 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !55
  %60 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs46 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %60, i32 0, i32 6
  %strip_tile_rectangle47 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs46, i32 0, i32 4
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* %59, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle47, align 8, !tbaa !56
  %61 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md48 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %61, i32 0, i32 0
  %procs49 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md48, i32 0, i32 42
  %strip_tile_rectangle50 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs49, i32 0, i32 34
  store i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @run_strip_tile_rectangle, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle50, align 8, !tbaa !55
  %62 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md51 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %62, i32 0, i32 0
  %procs52 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md51, i32 0, i32 42
  %strip_copy_rop = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs52, i32 0, i32 35
  %63 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !57
  %64 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs53 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %64, i32 0, i32 6
  %strip_copy_rop54 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs53, i32 0, i32 5
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* %63, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop54, align 8, !tbaa !58
  %65 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md55 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %65, i32 0, i32 0
  %procs56 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md55, i32 0, i32 42
  %strip_copy_rop57 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs56, i32 0, i32 35
  store i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @run_strip_copy_rop, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop57, align 8, !tbaa !57
  %66 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md58 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %66, i32 0, i32 0
  %procs59 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md58, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs59, i32 0, i32 38
  %67 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !59
  %68 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs60 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %68, i32 0, i32 6
  %get_bits_rectangle61 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs60, i32 0, i32 6
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* %67, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle61, align 8, !tbaa !60
  %69 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md62 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %69, i32 0, i32 0
  %procs63 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md62, i32 0, i32 42
  %get_bits_rectangle64 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs63, i32 0, i32 38
  store i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @run_get_bits_rectangle, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle64, align 8, !tbaa !59
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.10
  %70 = bitcast i64* %white to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %min_runs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %runs_per_line to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i64 @gx_device_white(%struct.gx_device_s*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @run_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %dx.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %zero.addr = alloca i64, align 8
  %one.addr = alloca i64, align 8
  %rdev = alloca %struct.gx_device_run_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !29
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !29
  store i64 %id, i64* %id.addr, align 8, !tbaa !30
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !30
  store i64 %one, i64* %one.addr, align 8, !tbaa !30
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !29
  %5 = load i32, i32* %h.addr, align 4, !tbaa !29
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %3, i32 %4, i32 %5) #3
  %6 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %6, i32 0, i32 6
  %copy_mono = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 0
  %7 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !48
  %8 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gx_device_memory_s* %md to %struct.gx_device_s*
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %dx.addr, align 4, !tbaa !29
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %13 = load i64, i64* %id.addr, align 8, !tbaa !30
  %14 = load i32, i32* %x.addr, align 4, !tbaa !29
  %15 = load i32, i32* %y.addr, align 4, !tbaa !29
  %16 = load i32, i32* %w.addr, align 4, !tbaa !29
  %17 = load i32, i32* %h.addr, align 4, !tbaa !29
  %18 = load i64, i64* %zero.addr, align 8, !tbaa !30
  %19 = load i64, i64* %one.addr, align 8, !tbaa !30
  %call1 = call i32 %7(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i64 %19) #3
  %20 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @run_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_run_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !29
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !29
  store i64 %id, i64* %id.addr, align 8, !tbaa !30
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !29
  %5 = load i32, i32* %h.addr, align 4, !tbaa !29
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %3, i32 %4, i32 %5) #3
  %6 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %6, i32 0, i32 6
  %copy_color = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 1
  %7 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !50
  %8 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gx_device_memory_s* %md to %struct.gx_device_s*
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %13 = load i64, i64* %id.addr, align 8, !tbaa !30
  %14 = load i32, i32* %x.addr, align 4, !tbaa !29
  %15 = load i32, i32* %y.addr, align 4, !tbaa !29
  %16 = load i32, i32* %w.addr, align 4, !tbaa !29
  %17 = load i32, i32* %h.addr, align 4, !tbaa !29
  %call1 = call i32 %7(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17) #3
  %18 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @run_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %rdev = alloca %struct.gx_device_run_s*, align 8
  %xe = alloca i32, align 4
  %ye = alloca i32, align 4
  %iy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %line = alloca %struct.run_line_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store i64 %color, i64* %color.addr, align 8, !tbaa !30
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  %6 = load i32, i32* %x.addr, align 4, !tbaa !29
  %7 = load i32, i32* %y.addr, align 4, !tbaa !29
  %or = or i32 %6, %7
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %do.body.2
  %8 = load i32, i32* %x.addr, align 4, !tbaa !29
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %9 = load i32, i32* %x.addr, align 4, !tbaa !29
  %10 = load i32, i32* %w.addr, align 4, !tbaa !29
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %w.addr, align 4, !tbaa !29
  store i32 0, i32* %x.addr, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %11 = load i32, i32* %y.addr, align 4, !tbaa !29
  %cmp5 = icmp slt i32 %11, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %y.addr, align 4, !tbaa !29
  %13 = load i32, i32* %h.addr, align 4, !tbaa !29
  %add7 = add nsw i32 %13, %12
  store i32 %add7, i32* %h.addr, align 4, !tbaa !29
  store i32 0, i32* %y.addr, align 4, !tbaa !29
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
  %14 = load i32, i32* %w.addr, align 4, !tbaa !29
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !61
  %17 = load i32, i32* %x.addr, align 4, !tbaa !29
  %sub = sub nsw i32 %16, %17
  %cmp11 = icmp sgt i32 %14, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.10
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 13
  %19 = load i32, i32* %width13, align 4, !tbaa !61
  %20 = load i32, i32* %x.addr, align 4, !tbaa !29
  %sub14 = sub nsw i32 %19, %20
  store i32 %sub14, i32* %w.addr, align 4, !tbaa !29
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.10
  br label %do.cond.16

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17

do.end.17:                                        ; preds = %do.cond.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %21 = load i32, i32* %h.addr, align 4, !tbaa !29
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 14
  %23 = load i32, i32* %height, align 4, !tbaa !63
  %24 = load i32, i32* %y.addr, align 4, !tbaa !29
  %sub19 = sub nsw i32 %23, %24
  %cmp20 = icmp sgt i32 %21, %sub19
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %do.body.18
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 14
  %26 = load i32, i32* %height22, align 4, !tbaa !63
  %27 = load i32, i32* %y.addr, align 4, !tbaa !29
  %sub23 = sub nsw i32 %26, %27
  store i32 %sub23, i32* %h.addr, align 4, !tbaa !29
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
  %28 = load i32, i32* %w.addr, align 4, !tbaa !29
  %cmp29 = icmp sle i32 %28, 0
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.28
  %29 = load i32, i32* %h.addr, align 4, !tbaa !29
  %cmp30 = icmp sle i32 %29, 0
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
  %30 = load i32, i32* %y.addr, align 4, !tbaa !29
  %31 = load i32, i32* %h.addr, align 4, !tbaa !29
  %add35 = add nsw i32 %30, %31
  store i32 %add35, i32* %ye, align 4, !tbaa !29
  %32 = load i32, i32* %y.addr, align 4, !tbaa !29
  %33 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %umin = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %33, i32 0, i32 2
  %34 = load i32, i32* %umin, align 4, !tbaa !43
  %cmp36 = icmp sge i32 %32, %34
  br i1 %cmp36, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %do.end.34
  %35 = load i32, i32* %ye, align 4, !tbaa !29
  %36 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %umax1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %36, i32 0, i32 3
  %37 = load i32, i32* %umax1, align 4, !tbaa !44
  %cmp37 = icmp sle i32 %35, %37
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.41

land.lhs.true.38:                                 ; preds = %land.lhs.true
  %38 = load i64, i64* %color.addr, align 8, !tbaa !30
  %39 = load i32, i32* %y.addr, align 4, !tbaa !29
  %idxprom = sext i32 %39 to i64
  %40 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %40, i32 0, i32 0
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md, i32 0, i32 52
  %41 = load i8**, i8*** %line_ptrs, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %43 = bitcast i8* %42 to %struct.run_line_s*
  %zero = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %43, i32 0, i32 0
  %44 = load i64, i64* %zero, align 8, !tbaa !37
  %cmp39 = icmp eq i64 %38, %44
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %land.lhs.true.38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %land.lhs.true.38, %land.lhs.true, %do.end.34
  %45 = load i32, i32* %y.addr, align 4, !tbaa !29
  %46 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smax1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %46, i32 0, i32 5
  %47 = load i32, i32* %smax1, align 4, !tbaa !46
  %cmp42 = icmp slt i32 %45, %47
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.64

land.lhs.true.43:                                 ; preds = %if.end.41
  %48 = load i32, i32* %ye, align 4, !tbaa !29
  %49 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smin = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %49, i32 0, i32 4
  %50 = load i32, i32* %smin, align 4, !tbaa !45
  %cmp44 = icmp sgt i32 %48, %50
  br i1 %cmp44, label %if.then.45, label %if.end.64

if.then.45:                                       ; preds = %land.lhs.true.43
  %51 = load i32, i32* %y.addr, align 4, !tbaa !29
  %52 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smin46 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %52, i32 0, i32 4
  %53 = load i32, i32* %smin46, align 4, !tbaa !45
  %cmp47 = icmp slt i32 %51, %53
  br i1 %cmp47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.then.45
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %55 = load i32, i32* %x.addr, align 4, !tbaa !29
  %56 = load i32, i32* %y.addr, align 4, !tbaa !29
  %57 = load i32, i32* %w.addr, align 4, !tbaa !29
  %58 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smin49 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %58, i32 0, i32 4
  %59 = load i32, i32* %smin49, align 4, !tbaa !45
  %60 = load i32, i32* %y.addr, align 4, !tbaa !29
  %sub50 = sub nsw i32 %59, %60
  %61 = load i64, i64* %color.addr, align 8, !tbaa !30
  %call = call i32 @run_fill_rectangle(%struct.gx_device_s* %54, i32 %55, i32 %56, i32 %57, i32 %sub50, i64 %61) #3
  %62 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smin51 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %62, i32 0, i32 4
  %63 = load i32, i32* %smin51, align 4, !tbaa !45
  store i32 %63, i32* %y.addr, align 4, !tbaa !29
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.then.45
  %64 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %64, i32 0, i32 6
  %fill_rectangle = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 2
  %65 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !52
  %66 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md53 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %66, i32 0, i32 0
  %67 = bitcast %struct.gx_device_memory_s* %md53 to %struct.gx_device_s*
  %68 = load i32, i32* %x.addr, align 4, !tbaa !29
  %69 = load i32, i32* %y.addr, align 4, !tbaa !29
  %70 = load i32, i32* %w.addr, align 4, !tbaa !29
  %71 = load i32, i32* %ye, align 4, !tbaa !29
  %72 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smax154 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %72, i32 0, i32 5
  %73 = load i32, i32* %smax154, align 4, !tbaa !46
  %cmp55 = icmp slt i32 %71, %73
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.52
  %74 = load i32, i32* %ye, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %if.end.52
  %75 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smax156 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %75, i32 0, i32 5
  %76 = load i32, i32* %smax156, align 4, !tbaa !46
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %74, %cond.true ], [ %76, %cond.false ]
  %77 = load i32, i32* %y.addr, align 4, !tbaa !29
  %sub57 = sub nsw i32 %cond, %77
  %78 = load i64, i64* %color.addr, align 8, !tbaa !30
  %call58 = call i32 %65(%struct.gx_device_s* %67, i32 %68, i32 %69, i32 %70, i32 %sub57, i64 %78) #3
  %79 = load i32, i32* %ye, align 4, !tbaa !29
  %80 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smax159 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %80, i32 0, i32 5
  %81 = load i32, i32* %smax159, align 4, !tbaa !46
  %cmp60 = icmp sle i32 %79, %81
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %cond.end
  %82 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %smax163 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %82, i32 0, i32 5
  %83 = load i32, i32* %smax163, align 4, !tbaa !46
  store i32 %83, i32* %y.addr, align 4, !tbaa !29
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %land.lhs.true.43, %if.end.41
  %84 = load i32, i32* %x.addr, align 4, !tbaa !29
  %85 = load i32, i32* %w.addr, align 4, !tbaa !29
  %add65 = add nsw i32 %84, %85
  store i32 %add65, i32* %xe, align 4, !tbaa !29
  %86 = load i32, i32* %y.addr, align 4, !tbaa !29
  store i32 %86, i32* %iy, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.64
  %87 = load i32, i32* %iy, align 4, !tbaa !29
  %88 = load i32, i32* %ye, align 4, !tbaa !29
  %cmp66 = icmp slt i32 %87, %88
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %89 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #1
  %90 = load i32, i32* %iy, align 4, !tbaa !29
  %idxprom67 = sext i32 %90 to i64
  %91 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md68 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %91, i32 0, i32 0
  %line_ptrs69 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md68, i32 0, i32 52
  %92 = load i8**, i8*** %line_ptrs69, align 8, !tbaa !36
  %arrayidx70 = getelementptr inbounds i8*, i8** %92, i64 %idxprom67
  %93 = load i8*, i8** %arrayidx70, align 8, !tbaa !1
  %94 = bitcast i8* %93 to %struct.run_line_s*
  store %struct.run_line_s* %94, %struct.run_line_s** %line, align 8, !tbaa !1
  %95 = load i64, i64* %color.addr, align 8, !tbaa !30
  %96 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %zero71 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %96, i32 0, i32 0
  %97 = load i64, i64* %zero71, align 8, !tbaa !37
  %cmp72 = icmp ne i64 %95, %97
  br i1 %cmp72, label %if.then.73, label %if.end.87

if.then.73:                                       ; preds = %for.body
  %98 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %zero74 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %98, i32 0, i32 0
  %99 = load i64, i64* %zero74, align 8, !tbaa !37
  %cmp75 = icmp ne i64 %99, -1
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.73
  %100 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %101 = load i32, i32* %iy, align 4, !tbaa !29
  call void @run_line_initialize(%struct.gx_device_run_s* %100, i32 %101) #3
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.73
  %102 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %103 = load i32, i32* %x.addr, align 4, !tbaa !29
  %104 = load i32, i32* %xe, align 4, !tbaa !29
  %105 = load i64, i64* %color.addr, align 8, !tbaa !30
  %call78 = call i32 @run_fill_interval(%struct.run_line_s* %102, i32 %103, i32 %104, i64 %105) #3
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %if.end.77
  %106 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %107 = load i32, i32* %iy, align 4, !tbaa !29
  %call81 = call i32 @run_standardize(%struct.gx_device_run_s* %106, i32 %107, i32 1) #3
  %108 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs82 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %108, i32 0, i32 6
  %fill_rectangle83 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs82, i32 0, i32 2
  %109 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle83, align 8, !tbaa !52
  %110 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md84 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %110, i32 0, i32 0
  %111 = bitcast %struct.gx_device_memory_s* %md84 to %struct.gx_device_s*
  %112 = load i32, i32* %x.addr, align 4, !tbaa !29
  %113 = load i32, i32* %iy, align 4, !tbaa !29
  %114 = load i32, i32* %w.addr, align 4, !tbaa !29
  %115 = load i64, i64* %color.addr, align 8, !tbaa !30
  %call85 = call i32 %109(%struct.gx_device_s* %111, i32 %112, i32 %113, i32 %114, i32 1, i64 %115) #3
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %if.end.77
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %for.body
  %116 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %117 = load i32, i32* %iy, align 4, !tbaa !29
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.61, %if.then.40, %if.then.31
  %118 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %xe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define internal i32 @run_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_run_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !29
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !29
  store i64 %id, i64* %id.addr, align 8, !tbaa !30
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store i64 %color, i64* %color.addr, align 8, !tbaa !30
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !29
  %5 = load i32, i32* %h.addr, align 4, !tbaa !29
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %3, i32 %4, i32 %5) #3
  %6 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %6, i32 0, i32 6
  %copy_alpha = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 3
  %7 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)** %copy_alpha, align 8, !tbaa !54
  %8 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gx_device_memory_s* %md to %struct.gx_device_s*
  %10 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %11 = load i32, i32* %data_x.addr, align 4, !tbaa !29
  %12 = load i32, i32* %raster.addr, align 4, !tbaa !29
  %13 = load i64, i64* %id.addr, align 8, !tbaa !30
  %14 = load i32, i32* %x.addr, align 4, !tbaa !29
  %15 = load i32, i32* %y.addr, align 4, !tbaa !29
  %16 = load i32, i32* %w.addr, align 4, !tbaa !29
  %17 = load i32, i32* %h.addr, align 4, !tbaa !29
  %18 = load i64, i64* %color.addr, align 8, !tbaa !30
  %19 = load i32, i32* %depth.addr, align 4, !tbaa !29
  %call1 = call i32 %7(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i32 %14, i32 %15, i32 %16, i32 %17, i64 %18, i32 %19) #3
  %20 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @run_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tiles, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_run_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !30
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !30
  store i32 %px, i32* %px.addr, align 4, !tbaa !29
  store i32 %py, i32* %py.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !29
  %5 = load i32, i32* %h.addr, align 4, !tbaa !29
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %3, i32 %4, i32 %5) #3
  %6 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %6, i32 0, i32 6
  %strip_tile_rectangle = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 4
  %7 = load i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)** %strip_tile_rectangle, align 8, !tbaa !56
  %8 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gx_device_memory_s* %md to %struct.gx_device_s*
  %10 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !1
  %11 = load i32, i32* %x.addr, align 4, !tbaa !29
  %12 = load i32, i32* %y.addr, align 4, !tbaa !29
  %13 = load i32, i32* %w.addr, align 4, !tbaa !29
  %14 = load i32, i32* %h.addr, align 4, !tbaa !29
  %15 = load i64, i64* %color0.addr, align 8, !tbaa !30
  %16 = load i64, i64* %color1.addr, align 8, !tbaa !30
  %17 = load i32, i32* %px.addr, align 4, !tbaa !29
  %18 = load i32, i32* %py.addr, align 4, !tbaa !29
  %call1 = call i32 %7(%struct.gx_device_s* %9, %struct.gx_strip_bitmap_s* %10, i32 %11, i32 %12, i32 %13, i32 %14, i64 %15, i64 %16, i32 %17, i32 %18) #3
  %19 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @run_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %x, i32 %y, i32 %w, i32 %h, i32 %px, i32 %py, i32 %lop) #0 {
entry:
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
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %rdev = alloca %struct.gx_device_run_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !29
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !29
  store i64 %id, i64* %id.addr, align 8, !tbaa !30
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !29
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %w, i32* %w.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  store i32 %px, i32* %px.addr, align 4, !tbaa !29
  store i32 %py, i32* %py.addr, align 4, !tbaa !29
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !29
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %4 = load i32, i32* %y.addr, align 4, !tbaa !29
  %5 = load i32, i32* %h.addr, align 4, !tbaa !29
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %3, i32 %4, i32 %5) #3
  %6 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %6, i32 0, i32 6
  %strip_copy_rop = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 5
  %7 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)** %strip_copy_rop, align 8, !tbaa !58
  %8 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %8, i32 0, i32 0
  %9 = bitcast %struct.gx_device_memory_s* %md to %struct.gx_device_s*
  %10 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %11 = load i32, i32* %sourcex.addr, align 4, !tbaa !29
  %12 = load i32, i32* %sraster.addr, align 4, !tbaa !29
  %13 = load i64, i64* %id.addr, align 8, !tbaa !30
  %14 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %15 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %16 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %17 = load i32, i32* %x.addr, align 4, !tbaa !29
  %18 = load i32, i32* %y.addr, align 4, !tbaa !29
  %19 = load i32, i32* %w.addr, align 4, !tbaa !29
  %20 = load i32, i32* %h.addr, align 4, !tbaa !29
  %21 = load i32, i32* %px.addr, align 4, !tbaa !29
  %22 = load i32, i32* %py.addr, align 4, !tbaa !29
  %23 = load i32, i32* %lop.addr, align 4, !tbaa !29
  %call1 = call i32 %7(%struct.gx_device_s* %9, i8* %10, i32 %11, i32 %12, i64 %13, i64* %14, %struct.gx_strip_bitmap_s* %15, i64* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23) #3
  %24 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @run_get_bits_rectangle(%struct.gx_device_s* %dev, %struct.gs_int_rect_s* %prect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** %unread) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %unread.addr = alloca %struct.gs_int_rect_s**, align 8
  %rdev = alloca %struct.gx_device_run_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s** %unread, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_run_s*
  store %struct.gx_device_run_s* %2, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %4 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %4, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 1
  %5 = load i32, i32* %y, align 4, !tbaa !64
  %6 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %6, i32 0, i32 1
  %y1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 1
  %7 = load i32, i32* %y1, align 4, !tbaa !67
  %8 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %p2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %8, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p2, i32 0, i32 1
  %9 = load i32, i32* %y3, align 4, !tbaa !64
  %sub = sub nsw i32 %7, %9
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %3, i32 %5, i32 %sub) #3
  %10 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %10, i32 0, i32 6
  %get_bits_rectangle = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 6
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !60
  %12 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %12, i32 0, i32 0
  %13 = bitcast %struct.gx_device_memory_s* %md to %struct.gx_device_s*
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %15 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !1
  %16 = load %struct.gs_int_rect_s**, %struct.gs_int_rect_s*** %unread.addr, align 8, !tbaa !1
  %call4 = call i32 %11(%struct.gx_device_s* %13, %struct.gs_int_rect_s* %14, %struct.gs_get_bits_params_s* %15, %struct.gs_int_rect_s** %16) #3
  %17 = bitcast %struct.gx_device_run_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret i32 %call4
}

; Function Attrs: nounwind uwtable
define internal i32 @run_standardize(%struct.gx_device_run_s* %rdev, i32 %y, i32 %h) #0 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.gx_device_run_s*, align 8
  %y.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %ye = alloca i32, align 4
  %iy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_run_s* %rdev, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  store i32 %h, i32* %h.addr, align 4, !tbaa !29
  %0 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4, !tbaa !29
  %cmp = icmp slt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %y.addr, align 4, !tbaa !29
  %4 = load i32, i32* %h.addr, align 4, !tbaa !29
  %add = add nsw i32 %4, %3
  store i32 %add, i32* %h.addr, align 4, !tbaa !29
  store i32 0, i32* %y.addr, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %5 = load i32, i32* %h.addr, align 4, !tbaa !29
  %6 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %6, i32 0, i32 0
  %height = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md, i32 0, i32 14
  %7 = load i32, i32* %height, align 4, !tbaa !35
  %8 = load i32, i32* %y.addr, align 4, !tbaa !29
  %sub = sub nsw i32 %7, %8
  %cmp2 = icmp sgt i32 %5, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %do.body.1
  %9 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md4 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %9, i32 0, i32 0
  %height5 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md4, i32 0, i32 14
  %10 = load i32, i32* %height5, align 4, !tbaa !35
  %11 = load i32, i32* %y.addr, align 4, !tbaa !29
  %sub6 = sub nsw i32 %10, %11
  store i32 %sub6, i32* %h.addr, align 4, !tbaa !29
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %do.body.1
  br label %do.cond.8

do.cond.8:                                        ; preds = %if.end.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %12 = load i32, i32* %y.addr, align 4, !tbaa !29
  %13 = load i32, i32* %h.addr, align 4, !tbaa !29
  %add10 = add nsw i32 %12, %13
  store i32 %add10, i32* %ye, align 4, !tbaa !29
  %14 = load i32, i32* %y.addr, align 4, !tbaa !29
  %15 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smin = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %15, i32 0, i32 4
  %16 = load i32, i32* %smin, align 4, !tbaa !45
  %cmp11 = icmp slt i32 %14, %16
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.end.9
  %17 = load i32, i32* %ye, align 4, !tbaa !29
  %18 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %18, i32 0, i32 5
  %19 = load i32, i32* %smax1, align 4, !tbaa !46
  %cmp13 = icmp sgt i32 %17, %19
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %if.then.12
  %20 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %21 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax115 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %21, i32 0, i32 5
  %22 = load i32, i32* %smax115, align 4, !tbaa !46
  %23 = load i32, i32* %ye, align 4, !tbaa !29
  %24 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax116 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %24, i32 0, i32 5
  %25 = load i32, i32* %smax116, align 4, !tbaa !46
  %sub17 = sub nsw i32 %23, %25
  %call = call i32 @run_standardize(%struct.gx_device_run_s* %20, i32 %22, i32 %sub17) #3
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %if.then.12
  %26 = load i32, i32* %ye, align 4, !tbaa !29
  %27 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smin19 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %27, i32 0, i32 4
  %28 = load i32, i32* %smin19, align 4, !tbaa !45
  %cmp20 = icmp slt i32 %26, %28
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %29 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smin22 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %29, i32 0, i32 4
  %30 = load i32, i32* %smin22, align 4, !tbaa !45
  store i32 %30, i32* %ye, align 4, !tbaa !29
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.18
  %31 = load i32, i32* %y.addr, align 4, !tbaa !29
  %32 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smin24 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %32, i32 0, i32 4
  store i32 %31, i32* %smin24, align 4, !tbaa !45
  br label %if.end.36

if.else:                                          ; preds = %do.end.9
  %33 = load i32, i32* %ye, align 4, !tbaa !29
  %34 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax125 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %34, i32 0, i32 5
  %35 = load i32, i32* %smax125, align 4, !tbaa !46
  %cmp26 = icmp sgt i32 %33, %35
  br i1 %cmp26, label %if.then.27, label %if.else.34

if.then.27:                                       ; preds = %if.else
  %36 = load i32, i32* %y.addr, align 4, !tbaa !29
  %37 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax128 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %37, i32 0, i32 5
  %38 = load i32, i32* %smax128, align 4, !tbaa !46
  %cmp29 = icmp sgt i32 %36, %38
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.then.27
  %39 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax131 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %39, i32 0, i32 5
  %40 = load i32, i32* %smax131, align 4, !tbaa !46
  store i32 %40, i32* %y.addr, align 4, !tbaa !29
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.then.27
  %41 = load i32, i32* %ye, align 4, !tbaa !29
  %42 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %smax133 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %42, i32 0, i32 5
  store i32 %41, i32* %smax133, align 4, !tbaa !46
  br label %if.end.35

if.else.34:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.end.32
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.23
  %43 = load i32, i32* %y.addr, align 4, !tbaa !29
  store i32 %43, i32* %iy, align 4, !tbaa !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.36
  %44 = load i32, i32* %iy, align 4, !tbaa !29
  %45 = load i32, i32* %ye, align 4, !tbaa !29
  %cmp37 = icmp slt i32 %44, %45
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %47 = load i32, i32* %iy, align 4, !tbaa !29
  %call38 = call i32 @run_expand(%struct.gx_device_run_s* %46, i32 %47) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %iy, align 4, !tbaa !29
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.34
  %49 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %ye to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @run_expand(%struct.gx_device_run_s* %rdev, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.gx_device_run_s*, align 8
  %y.addr = alloca i32, align 4
  %line = alloca %struct.run_line_s*, align 8
  %data = alloca %struct.run_s*, align 8
  %rp = alloca %struct.const_run_ptr_s, align 8
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %w = alloca i32, align 4
  %length = alloca [1024 x i16], align 16
  %value = alloca [1024 x i64], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_run_s* %rdev, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  %0 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %y.addr, align 4, !tbaa !29
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %2, i32 0, i32 0
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md, i32 0, i32 52
  %3 = load i8**, i8*** %line_ptrs, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.run_line_s*
  store %struct.run_line_s* %5, %struct.run_line_s** %line, align 8, !tbaa !1
  %6 = bitcast %struct.run_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %7, i64 1
  %8 = bitcast %struct.run_line_s* %add.ptr to %struct.run_s*
  store %struct.run_s* %8, %struct.run_s** %data, align 8, !tbaa !1
  %9 = bitcast %struct.const_run_ptr_s* %rp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast [1024 x i16]* %length to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %13) #1
  %14 = bitcast [1024 x i64]* %value to i8*
  call void @llvm.lifetime.start(i64 8192, i8* %14) #1
  %15 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %zero = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %15, i32 0, i32 0
  %16 = load i64, i64* %zero, align 8, !tbaa !37
  %cmp = icmp ne i64 %16, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %17, i32 0, i32 6
  %fill_rectangle = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs, i32 0, i32 2
  %18 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !52
  %19 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %19, i32 0, i32 0
  %20 = bitcast %struct.gx_device_memory_s* %md1 to %struct.gx_device_s*
  %21 = load i32, i32* %y.addr, align 4, !tbaa !29
  %22 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md2 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %22, i32 0, i32 0
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md2, i32 0, i32 13
  %23 = load i32, i32* %width, align 4, !tbaa !68
  %24 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %zero3 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %24, i32 0, i32 0
  %25 = load i64, i64* %zero3, align 8, !tbaa !37
  %call = call i32 %18(%struct.gx_device_s* %20, i32 0, i32 %21, i32 %23, i32 1, i64 %25) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %n, align 4, !tbaa !29
  %26 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.run_s, %struct.run_s* %26, i64 1
  %next = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx4, i32 0, i32 1
  %bf.load = load i32, i32* %next, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %index = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 1
  store i32 %bf.clear, i32* %index, align 4, !tbaa !69
  %27 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %index5 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 1
  %28 = load i32, i32* %index5, align 4, !tbaa !69
  %idx.ext = zext i32 %28 to i64
  %add.ptr6 = getelementptr inbounds %struct.run_s, %struct.run_s* %27, i64 %idx.ext
  %ptr = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 0
  store %struct.run_s* %add.ptr6, %struct.run_s** %ptr, align 8, !tbaa !71
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %index7 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 1
  %29 = load i32, i32* %index7, align 4, !tbaa !69
  %cmp8 = icmp eq i32 %29, 0
  %lnot = xor i1 %cmp8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %ptr9 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 0
  %30 = load %struct.run_s*, %struct.run_s** %ptr9, align 8, !tbaa !71
  %length10 = getelementptr inbounds %struct.run_s, %struct.run_s* %30, i32 0, i32 1
  %bf.load11 = load i32, i32* %length10, align 8
  %bf.clear12 = and i32 %bf.load11, 4095
  %conv = trunc i32 %bf.clear12 to i16
  %31 = load i32, i32* %n, align 4, !tbaa !29
  %idxprom13 = sext i32 %31 to i64
  %arrayidx14 = getelementptr inbounds [1024 x i16], [1024 x i16]* %length, i32 0, i64 %idxprom13
  store i16 %conv, i16* %arrayidx14, align 2, !tbaa !33
  %ptr15 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 0
  %32 = load %struct.run_s*, %struct.run_s** %ptr15, align 8, !tbaa !71
  %value16 = getelementptr inbounds %struct.run_s, %struct.run_s* %32, i32 0, i32 0
  %33 = load i64, i64* %value16, align 8, !tbaa !72
  %34 = load i32, i32* %n, align 4, !tbaa !29
  %idxprom17 = sext i32 %34 to i64
  %arrayidx18 = getelementptr inbounds [1024 x i64], [1024 x i64]* %value, i32 0, i64 %idxprom17
  store i64 %33, i64* %arrayidx18, align 8, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %n, align 4, !tbaa !29
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %n, align 4, !tbaa !29
  %36 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr19 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 0
  %37 = load %struct.run_s*, %struct.run_s** %ptr19, align 8, !tbaa !71
  %next20 = getelementptr inbounds %struct.run_s, %struct.run_s* %37, i32 0, i32 1
  %bf.load21 = load i32, i32* %next20, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 12
  %bf.clear23 = and i32 %bf.lshr22, 1023
  %index24 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 1
  store i32 %bf.clear23, i32* %index24, align 4, !tbaa !69
  %idx.ext25 = zext i32 %bf.clear23 to i64
  %add.ptr26 = getelementptr inbounds %struct.run_s, %struct.run_s* %36, i64 %idx.ext25
  %ptr27 = getelementptr inbounds %struct.const_run_ptr_s, %struct.const_run_ptr_s* %rp, i32 0, i32 0
  store %struct.run_s* %add.ptr26, %struct.run_s** %ptr27, align 8, !tbaa !71
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4, !tbaa !29
  store i32 0, i32* %n, align 4, !tbaa !29
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.43, %for.end
  %38 = load i32, i32* %x, align 4, !tbaa !29
  %39 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md29 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %39, i32 0, i32 0
  %width30 = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md29, i32 0, i32 13
  %40 = load i32, i32* %width30, align 4, !tbaa !68
  %cmp31 = icmp slt i32 %38, %40
  br i1 %cmp31, label %for.body.33, label %for.end.45

for.body.33:                                      ; preds = %for.cond.28
  %41 = load i32, i32* %n, align 4, !tbaa !29
  %idxprom34 = sext i32 %41 to i64
  %arrayidx35 = getelementptr inbounds [1024 x i16], [1024 x i16]* %length, i32 0, i64 %idxprom34
  %42 = load i16, i16* %arrayidx35, align 2, !tbaa !33
  %conv36 = zext i16 %42 to i32
  store i32 %conv36, i32* %w, align 4, !tbaa !29
  %43 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %save_procs37 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %43, i32 0, i32 6
  %fill_rectangle38 = getelementptr inbounds %struct.sp_, %struct.sp_* %save_procs37, i32 0, i32 2
  %44 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle38, align 8, !tbaa !52
  %45 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md39 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %45, i32 0, i32 0
  %46 = bitcast %struct.gx_device_memory_s* %md39 to %struct.gx_device_s*
  %47 = load i32, i32* %x, align 4, !tbaa !29
  %48 = load i32, i32* %y.addr, align 4, !tbaa !29
  %49 = load i32, i32* %w, align 4, !tbaa !29
  %50 = load i32, i32* %n, align 4, !tbaa !29
  %idxprom40 = sext i32 %50 to i64
  %arrayidx41 = getelementptr inbounds [1024 x i64], [1024 x i64]* %value, i32 0, i64 %idxprom40
  %51 = load i64, i64* %arrayidx41, align 8, !tbaa !30
  %call42 = call i32 %44(%struct.gx_device_s* %46, i32 %47, i32 %48, i32 %49, i32 1, i64 %51) #3
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.33
  %52 = load i32, i32* %w, align 4, !tbaa !29
  %53 = load i32, i32* %x, align 4, !tbaa !29
  %add = add nsw i32 %53, %52
  store i32 %add, i32* %x, align 4, !tbaa !29
  %54 = load i32, i32* %n, align 4, !tbaa !29
  %inc44 = add nsw i32 %54, 1
  store i32 %inc44, i32* %n, align 4, !tbaa !29
  br label %for.cond.28

for.end.45:                                       ; preds = %for.cond.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.45, %if.then
  %55 = bitcast [1024 x i64]* %value to i8*
  call void @llvm.lifetime.end(i64 8192, i8* %55) #1
  %56 = bitcast [1024 x i16]* %length to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %56) #1
  %57 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast %struct.const_run_ptr_s* %rp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  %61 = bitcast %struct.run_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %62 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal void @run_line_initialize(%struct.gx_device_run_s* %rdev, i32 %y) #0 {
entry:
  %rdev.addr = alloca %struct.gx_device_run_s*, align 8
  %y.addr = alloca i32, align 4
  %line = alloca %struct.run_line_s*, align 8
  %data = alloca %struct.run_s*, align 8
  %left = alloca i32, align 4
  %index = alloca i32, align 4
  %rcur = alloca %struct.run_s*, align 8
  store %struct.gx_device_run_s* %rdev, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !29
  %0 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %y.addr, align 4, !tbaa !29
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %2, i32 0, i32 0
  %line_ptrs = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md, i32 0, i32 52
  %3 = load i8**, i8*** %line_ptrs, align 8, !tbaa !36
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %5 = bitcast i8* %4 to %struct.run_line_s*
  store %struct.run_line_s* %5, %struct.run_line_s** %line, align 8, !tbaa !1
  %6 = bitcast %struct.run_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %7, i64 1
  %8 = bitcast %struct.run_line_s* %add.ptr to %struct.run_s*
  store %struct.run_s* %8, %struct.run_s** %data, align 8, !tbaa !1
  %9 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %md1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %10, i32 0, i32 0
  %width = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %md1, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !68
  store i32 %11, i32* %left, align 4, !tbaa !29
  %12 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  store i32 2, i32* %index, align 4, !tbaa !29
  %13 = bitcast %struct.run_s** %rcur to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %zero = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %14, i32 0, i32 0
  store i64 -1, i64* %zero, align 8, !tbaa !37
  %15 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.run_s, %struct.run_s* %15, i64 0
  %length = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx2, i32 0, i32 1
  %bf.load = load i32, i32* %length, align 8
  %bf.clear = and i32 %bf.load, -4096
  %bf.set = or i32 %bf.clear, 4095
  store i32 %bf.set, i32* %length, align 8
  %16 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.run_s, %struct.run_s* %16, i64 0
  %value = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx3, i32 0, i32 0
  store i64 -1, i64* %value, align 8, !tbaa !72
  %17 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.run_s, %struct.run_s* %17, i64 1
  %length5 = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx4, i32 0, i32 1
  %bf.load6 = load i32, i32* %length5, align 8
  %bf.clear7 = and i32 %bf.load6, -4096
  %bf.set8 = or i32 %bf.clear7, 4095
  store i32 %bf.set8, i32* %length5, align 8
  %18 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.run_s, %struct.run_s* %18, i64 1
  %value10 = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx9, i32 0, i32 0
  store i64 -1, i64* %value10, align 8, !tbaa !72
  %19 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.run_s, %struct.run_s* %19, i64 1
  %next = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx11, i32 0, i32 1
  %bf.load12 = load i32, i32* %next, align 8
  %bf.clear13 = and i32 %bf.load12, -4190209
  %bf.set14 = or i32 %bf.clear13, 8192
  store i32 %bf.set14, i32* %next, align 8
  %20 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %21 = load i32, i32* %index, align 4, !tbaa !29
  %idx.ext = zext i32 %21 to i64
  %add.ptr15 = getelementptr inbounds %struct.run_s, %struct.run_s* %20, i64 %idx.ext
  store %struct.run_s* %add.ptr15, %struct.run_s** %rcur, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %left, align 4, !tbaa !29
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %left, align 4, !tbaa !29
  %cmp16 = icmp slt i32 %23, 4095
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %left, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ 4095, %cond.false ]
  %25 = load %struct.run_s*, %struct.run_s** %rcur, align 8, !tbaa !1
  %length17 = getelementptr inbounds %struct.run_s, %struct.run_s* %25, i32 0, i32 1
  %bf.load18 = load i32, i32* %length17, align 8
  %bf.value = and i32 %cond, 4095
  %bf.clear19 = and i32 %bf.load18, -4096
  %bf.set20 = or i32 %bf.clear19, %bf.value
  store i32 %bf.set20, i32* %length17, align 8
  %26 = load %struct.run_s*, %struct.run_s** %rcur, align 8, !tbaa !1
  %value21 = getelementptr inbounds %struct.run_s, %struct.run_s* %26, i32 0, i32 0
  store i64 0, i64* %value21, align 8, !tbaa !72
  %27 = load i32, i32* %index, align 4, !tbaa !29
  %sub = sub i32 %27, 1
  %28 = load %struct.run_s*, %struct.run_s** %rcur, align 8, !tbaa !1
  %prev = getelementptr inbounds %struct.run_s, %struct.run_s* %28, i32 0, i32 1
  %bf.load22 = load i32, i32* %prev, align 8
  %bf.value23 = and i32 %sub, 1023
  %bf.shl = shl i32 %bf.value23, 22
  %bf.clear24 = and i32 %bf.load22, 4194303
  %bf.set25 = or i32 %bf.clear24, %bf.shl
  store i32 %bf.set25, i32* %prev, align 8
  %29 = load i32, i32* %index, align 4, !tbaa !29
  %add = add i32 %29, 1
  %30 = load %struct.run_s*, %struct.run_s** %rcur, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.run_s, %struct.run_s* %30, i32 0, i32 1
  %bf.load27 = load i32, i32* %next26, align 8
  %bf.value28 = and i32 %add, 1023
  %bf.shl29 = shl i32 %bf.value28, 12
  %bf.clear30 = and i32 %bf.load27, -4190209
  %bf.set31 = or i32 %bf.clear30, %bf.shl29
  store i32 %bf.set31, i32* %next26, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %31 = load i32, i32* %index, align 4, !tbaa !29
  %inc = add i32 %31, 1
  store i32 %inc, i32* %index, align 4, !tbaa !29
  %32 = load %struct.run_s*, %struct.run_s** %rcur, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.run_s, %struct.run_s* %32, i32 1
  store %struct.run_s* %incdec.ptr, %struct.run_s** %rcur, align 8, !tbaa !1
  %33 = load i32, i32* %left, align 4, !tbaa !29
  %sub32 = sub nsw i32 %33, 4095
  store i32 %sub32, i32* %left, align 4, !tbaa !29
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.run_s*, %struct.run_s** %rcur, align 8, !tbaa !1
  %next33 = getelementptr inbounds %struct.run_s, %struct.run_s* %34, i32 0, i32 1
  %bf.load34 = load i32, i32* %next33, align 8
  %bf.clear35 = and i32 %bf.load34, -4190209
  store i32 %bf.clear35, i32* %next33, align 8
  %35 = load i32, i32* %index, align 4, !tbaa !29
  %sub36 = sub i32 %35, 1
  %36 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds %struct.run_s, %struct.run_s* %36, i64 0
  %prev38 = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx37, i32 0, i32 1
  %bf.load39 = load i32, i32* %prev38, align 8
  %bf.value40 = and i32 %sub36, 1023
  %bf.shl41 = shl i32 %bf.value40, 22
  %bf.clear42 = and i32 %bf.load39, 4194303
  %bf.set43 = or i32 %bf.clear42, %bf.shl41
  store i32 %bf.set43, i32* %prev38, align 8
  %37 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %xcur = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %37, i32 0, i32 1
  store i32 0, i32* %xcur, align 4, !tbaa !74
  %38 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds %struct.run_s, %struct.run_s* %38, i64 2
  %39 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %rpcur = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %39, i32 0, i32 2
  %ptr = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpcur, i32 0, i32 0
  store %struct.run_s* %add.ptr44, %struct.run_s** %ptr, align 8, !tbaa !75
  %40 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %rpcur45 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %40, i32 0, i32 2
  %index46 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpcur45, i32 0, i32 1
  store i32 2, i32* %index46, align 4, !tbaa !76
  %41 = load i32, i32* %index, align 4, !tbaa !29
  %42 = load %struct.run_line_s*, %struct.run_line_s** %line, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %42, i32 0, i32 3
  store i32 %41, i32* %free, align 4, !tbaa !77
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.59, %for.end
  %43 = load i32, i32* %index, align 4, !tbaa !29
  %44 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %runs_per_line = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %44, i32 0, i32 1
  %45 = load i32, i32* %runs_per_line, align 4, !tbaa !40
  %cmp48 = icmp ult i32 %43, %45
  br i1 %cmp48, label %for.body.49, label %for.end.61

for.body.49:                                      ; preds = %for.cond.47
  %46 = load i32, i32* %index, align 4, !tbaa !29
  %add50 = add i32 %46, 1
  %47 = load i32, i32* %index, align 4, !tbaa !29
  %idxprom51 = zext i32 %47 to i64
  %48 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds %struct.run_s, %struct.run_s* %48, i64 %idxprom51
  %next53 = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx52, i32 0, i32 1
  %bf.load54 = load i32, i32* %next53, align 8
  %bf.value55 = and i32 %add50, 1023
  %bf.shl56 = shl i32 %bf.value55, 12
  %bf.clear57 = and i32 %bf.load54, -4190209
  %bf.set58 = or i32 %bf.clear57, %bf.shl56
  store i32 %bf.set58, i32* %next53, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.49
  %49 = load i32, i32* %index, align 4, !tbaa !29
  %inc60 = add i32 %49, 1
  store i32 %inc60, i32* %index, align 4, !tbaa !29
  br label %for.cond.47

for.end.61:                                       ; preds = %for.cond.47
  %50 = load i32, i32* %index, align 4, !tbaa !29
  %sub62 = sub i32 %50, 1
  %idxprom63 = zext i32 %sub62 to i64
  %51 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds %struct.run_s, %struct.run_s* %51, i64 %idxprom63
  %next65 = getelementptr inbounds %struct.run_s, %struct.run_s* %arrayidx64, i32 0, i32 1
  %bf.load66 = load i32, i32* %next65, align 8
  %bf.clear67 = and i32 %bf.load66, -4190209
  store i32 %bf.clear67, i32* %next65, align 8
  %52 = load i32, i32* %y.addr, align 4, !tbaa !29
  %53 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umin = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %53, i32 0, i32 2
  %54 = load i32, i32* %umin, align 4, !tbaa !43
  %cmp68 = icmp sge i32 %52, %54
  br i1 %cmp68, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %for.end.61
  %55 = load i32, i32* %y.addr, align 4, !tbaa !29
  %56 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umax1 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %56, i32 0, i32 3
  %57 = load i32, i32* %umax1, align 4, !tbaa !44
  %cmp69 = icmp slt i32 %55, %57
  br i1 %cmp69, label %if.then, label %if.end.78

if.then:                                          ; preds = %land.lhs.true
  %58 = load i32, i32* %y.addr, align 4, !tbaa !29
  %59 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umin70 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %59, i32 0, i32 2
  %60 = load i32, i32* %umin70, align 4, !tbaa !43
  %61 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umax171 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %61, i32 0, i32 3
  %62 = load i32, i32* %umax171, align 4, !tbaa !44
  %add72 = add nsw i32 %60, %62
  %shr = ashr i32 %add72, 1
  %cmp73 = icmp sgt i32 %58, %shr
  br i1 %cmp73, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %if.then
  %63 = load i32, i32* %y.addr, align 4, !tbaa !29
  %64 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umax175 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %64, i32 0, i32 3
  store i32 %63, i32* %umax175, align 4, !tbaa !44
  br label %if.end

if.else:                                          ; preds = %if.then
  %65 = load i32, i32* %y.addr, align 4, !tbaa !29
  %add76 = add nsw i32 %65, 1
  %66 = load %struct.gx_device_run_s*, %struct.gx_device_run_s** %rdev.addr, align 8, !tbaa !1
  %umin77 = getelementptr inbounds %struct.gx_device_run_s, %struct.gx_device_run_s* %66, i32 0, i32 2
  store i32 %add76, i32* %umin77, align 4, !tbaa !43
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.74
  br label %if.end.78

if.end.78:                                        ; preds = %if.end, %land.lhs.true, %for.end.61
  %67 = bitcast %struct.run_s** %rcur to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.run_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.run_line_s** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @run_fill_interval(%struct.run_line_s* %line, i32 %xo, i32 %xe, i64 %new) #0 {
entry:
  %retval = alloca i32, align 4
  %line.addr = alloca %struct.run_line_s*, align 8
  %xo.addr = alloca i32, align 4
  %xe.addr = alloca i32, align 4
  %new.addr = alloca i64, align 8
  %data = alloca %struct.run_s*, align 8
  %xc = alloca i32, align 4
  %rpc = alloca %struct.run_ptr_s, align 8
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %rp0 = alloca %struct.run_ptr_s, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %diff = alloca i32, align 4
  %v0 = alloca i64, align 8
  %rpp = alloca %struct.run_ptr_s, align 8
  %diff161 = alloca i32, align 4
  %vc = alloca i64, align 8
  %rpn = alloca %struct.run_ptr_s, align 8
  %left = alloca i32, align 4
  %len = alloca i32, align 4
  %pieces = alloca i32, align 4
  %rpn276 = alloca %struct.run_ptr_s, align 8
  store %struct.run_line_s* %line, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  store i32 %xo, i32* %xo.addr, align 4, !tbaa !29
  store i32 %xe, i32* %xe.addr, align 4, !tbaa !29
  store i64 %new, i64* %new.addr, align 8, !tbaa !30
  %0 = bitcast %struct.run_s** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %1, i64 1
  %2 = bitcast %struct.run_line_s* %add.ptr to %struct.run_s*
  store %struct.run_s* %2, %struct.run_s** %data, align 8, !tbaa !1
  %3 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %xcur = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %4, i32 0, i32 1
  %5 = load i32, i32* %xcur, align 4, !tbaa !74
  store i32 %5, i32* %xc, align 4, !tbaa !29
  %6 = bitcast %struct.run_ptr_s* %rpc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.run_ptr_s* %rp0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %9) #1
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %rpcur = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %11, i32 0, i32 2
  %12 = bitcast %struct.run_ptr_s* %rpc to i8*
  %13 = bitcast %struct.run_ptr_s* %rpcur to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 16, i32 8, i1 false), !tbaa.struct !78
  %14 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %15 = load i32, i32* %xc, align 4, !tbaa !29
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %16 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %17 = load i32, i32* %xc, align 4, !tbaa !29
  %cmp1 = icmp slt i32 %16, %17
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %19 = load %struct.run_s*, %struct.run_s** %ptr, align 8, !tbaa !79
  %prev = getelementptr inbounds %struct.run_s, %struct.run_s* %19, i32 0, i32 1
  %bf.load = load i32, i32* %prev, align 8
  %bf.lshr = lshr i32 %bf.load, 22
  %index = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  store i32 %bf.lshr, i32* %index, align 4, !tbaa !80
  %idx.ext = zext i32 %bf.lshr to i64
  %add.ptr2 = getelementptr inbounds %struct.run_s, %struct.run_s* %18, i64 %idx.ext
  %ptr3 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  store %struct.run_s* %add.ptr2, %struct.run_s** %ptr3, align 8, !tbaa !79
  %ptr4 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %20 = load %struct.run_s*, %struct.run_s** %ptr4, align 8, !tbaa !79
  %length = getelementptr inbounds %struct.run_s, %struct.run_s* %20, i32 0, i32 1
  %bf.load5 = load i32, i32* %length, align 8
  %bf.clear = and i32 %bf.load5, 4095
  %21 = load i32, i32* %xc, align 4, !tbaa !29
  %sub = sub nsw i32 %21, %bf.clear
  store i32 %sub, i32* %xc, align 4, !tbaa !29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %entry
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.12, %if.else
  %22 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %23 = load i32, i32* %xc, align 4, !tbaa !29
  %ptr7 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %24 = load %struct.run_s*, %struct.run_s** %ptr7, align 8, !tbaa !79
  %length8 = getelementptr inbounds %struct.run_s, %struct.run_s* %24, i32 0, i32 1
  %bf.load9 = load i32, i32* %length8, align 8
  %bf.clear10 = and i32 %bf.load9, 4095
  %add = add nsw i32 %23, %bf.clear10
  %cmp11 = icmp sge i32 %22, %add
  br i1 %cmp11, label %while.body.12, label %while.end.26

while.body.12:                                    ; preds = %while.cond.6
  %ptr13 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %25 = load %struct.run_s*, %struct.run_s** %ptr13, align 8, !tbaa !79
  %length14 = getelementptr inbounds %struct.run_s, %struct.run_s* %25, i32 0, i32 1
  %bf.load15 = load i32, i32* %length14, align 8
  %bf.clear16 = and i32 %bf.load15, 4095
  %26 = load i32, i32* %xc, align 4, !tbaa !29
  %add17 = add nsw i32 %26, %bf.clear16
  store i32 %add17, i32* %xc, align 4, !tbaa !29
  %27 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr18 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %28 = load %struct.run_s*, %struct.run_s** %ptr18, align 8, !tbaa !79
  %next = getelementptr inbounds %struct.run_s, %struct.run_s* %28, i32 0, i32 1
  %bf.load19 = load i32, i32* %next, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 12
  %bf.clear21 = and i32 %bf.lshr20, 1023
  %index22 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  store i32 %bf.clear21, i32* %index22, align 4, !tbaa !80
  %idx.ext23 = zext i32 %bf.clear21 to i64
  %add.ptr24 = getelementptr inbounds %struct.run_s, %struct.run_s* %27, i64 %idx.ext23
  %ptr25 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  store %struct.run_s* %add.ptr24, %struct.run_s** %ptr25, align 8, !tbaa !79
  br label %while.cond.6

while.end.26:                                     ; preds = %while.cond.6
  br label %if.end

if.end:                                           ; preds = %while.end.26, %while.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %index27 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  %29 = load i32, i32* %index27, align 4, !tbaa !80
  %cmp28 = icmp eq i32 %29, 0
  br i1 %cmp28, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %ptr29 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %30 = load %struct.run_s*, %struct.run_s** %ptr29, align 8, !tbaa !79
  %value = getelementptr inbounds %struct.run_s, %struct.run_s* %30, i32 0, i32 0
  %31 = load i64, i64* %value, align 8, !tbaa !72
  %32 = load i64, i64* %new.addr, align 8, !tbaa !30
  %cmp30 = icmp eq i64 %31, %32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %33 = phi i1 [ false, %for.cond ], [ %cmp30, %land.rhs ]
  br i1 %33, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %ptr31 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %34 = load %struct.run_s*, %struct.run_s** %ptr31, align 8, !tbaa !79
  %length32 = getelementptr inbounds %struct.run_s, %struct.run_s* %34, i32 0, i32 1
  %bf.load33 = load i32, i32* %length32, align 8
  %bf.clear34 = and i32 %bf.load33, 4095
  %35 = load i32, i32* %xc, align 4, !tbaa !29
  %add35 = add nsw i32 %35, %bf.clear34
  store i32 %add35, i32* %xc, align 4, !tbaa !29
  store i32 %add35, i32* %xo.addr, align 4, !tbaa !29
  %36 = load i32, i32* %xe.addr, align 4, !tbaa !29
  %cmp36 = icmp sge i32 %add35, %36
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.290

if.end.38:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %37 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr39 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %38 = load %struct.run_s*, %struct.run_s** %ptr39, align 8, !tbaa !79
  %next40 = getelementptr inbounds %struct.run_s, %struct.run_s* %38, i32 0, i32 1
  %bf.load41 = load i32, i32* %next40, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 12
  %bf.clear43 = and i32 %bf.lshr42, 1023
  %index44 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  store i32 %bf.clear43, i32* %index44, align 4, !tbaa !80
  %idx.ext45 = zext i32 %bf.clear43 to i64
  %add.ptr46 = getelementptr inbounds %struct.run_s, %struct.run_s* %37, i64 %idx.ext45
  %ptr47 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  store %struct.run_s* %add.ptr46, %struct.run_s** %ptr47, align 8, !tbaa !79
  br label %for.cond

for.end:                                          ; preds = %land.end
  %39 = load i32, i32* %xc, align 4, !tbaa !29
  store i32 %39, i32* %x0, align 4, !tbaa !29
  %40 = bitcast %struct.run_ptr_s* %rp0 to i8*
  %41 = bitcast %struct.run_ptr_s* %rpc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !tbaa.struct !78
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.55, %for.end
  %42 = load i32, i32* %xe.addr, align 4, !tbaa !29
  %43 = load i32, i32* %xc, align 4, !tbaa !29
  %ptr49 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %44 = load %struct.run_s*, %struct.run_s** %ptr49, align 8, !tbaa !79
  %length50 = getelementptr inbounds %struct.run_s, %struct.run_s* %44, i32 0, i32 1
  %bf.load51 = load i32, i32* %length50, align 8
  %bf.clear52 = and i32 %bf.load51, 4095
  %add53 = add nsw i32 %43, %bf.clear52
  %cmp54 = icmp sgt i32 %42, %add53
  br i1 %cmp54, label %while.body.55, label %while.end.70

while.body.55:                                    ; preds = %while.cond.48
  %ptr56 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %45 = load %struct.run_s*, %struct.run_s** %ptr56, align 8, !tbaa !79
  %length57 = getelementptr inbounds %struct.run_s, %struct.run_s* %45, i32 0, i32 1
  %bf.load58 = load i32, i32* %length57, align 8
  %bf.clear59 = and i32 %bf.load58, 4095
  %46 = load i32, i32* %xc, align 4, !tbaa !29
  %add60 = add nsw i32 %46, %bf.clear59
  store i32 %add60, i32* %xc, align 4, !tbaa !29
  %47 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr61 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %48 = load %struct.run_s*, %struct.run_s** %ptr61, align 8, !tbaa !79
  %next62 = getelementptr inbounds %struct.run_s, %struct.run_s* %48, i32 0, i32 1
  %bf.load63 = load i32, i32* %next62, align 8
  %bf.lshr64 = lshr i32 %bf.load63, 12
  %bf.clear65 = and i32 %bf.lshr64, 1023
  %index66 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  store i32 %bf.clear65, i32* %index66, align 4, !tbaa !80
  %idx.ext67 = zext i32 %bf.clear65 to i64
  %add.ptr68 = getelementptr inbounds %struct.run_s, %struct.run_s* %47, i64 %idx.ext67
  %ptr69 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  store %struct.run_s* %add.ptr68, %struct.run_s** %ptr69, align 8, !tbaa !79
  br label %while.cond.48

while.end.70:                                     ; preds = %while.cond.48
  br label %while.cond.71

while.cond.71:                                    ; preds = %while.body.83, %while.end.70
  %49 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr72 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %50 = load %struct.run_s*, %struct.run_s** %ptr72, align 8, !tbaa !79
  %prev73 = getelementptr inbounds %struct.run_s, %struct.run_s* %50, i32 0, i32 1
  %bf.load74 = load i32, i32* %prev73, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 22
  %index76 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  store i32 %bf.lshr75, i32* %index76, align 4, !tbaa !80
  %idx.ext77 = zext i32 %bf.lshr75 to i64
  %add.ptr78 = getelementptr inbounds %struct.run_s, %struct.run_s* %49, i64 %idx.ext77
  %ptr79 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  store %struct.run_s* %add.ptr78, %struct.run_s** %ptr79, align 8, !tbaa !79
  %ptr80 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %51 = load %struct.run_s*, %struct.run_s** %ptr80, align 8, !tbaa !79
  %value81 = getelementptr inbounds %struct.run_s, %struct.run_s* %51, i32 0, i32 0
  %52 = load i64, i64* %value81, align 8, !tbaa !72
  %53 = load i64, i64* %new.addr, align 8, !tbaa !30
  %cmp82 = icmp eq i64 %52, %53
  br i1 %cmp82, label %while.body.83, label %while.end.89

while.body.83:                                    ; preds = %while.cond.71
  %ptr84 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %54 = load %struct.run_s*, %struct.run_s** %ptr84, align 8, !tbaa !79
  %length85 = getelementptr inbounds %struct.run_s, %struct.run_s* %54, i32 0, i32 1
  %bf.load86 = load i32, i32* %length85, align 8
  %bf.clear87 = and i32 %bf.load86, 4095
  %55 = load i32, i32* %xc, align 4, !tbaa !29
  %sub88 = sub nsw i32 %55, %bf.clear87
  store i32 %sub88, i32* %xc, align 4, !tbaa !29
  store i32 %sub88, i32* %xe.addr, align 4, !tbaa !29
  br label %while.cond.71

while.end.89:                                     ; preds = %while.cond.71
  %56 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr90 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %57 = load %struct.run_s*, %struct.run_s** %ptr90, align 8, !tbaa !79
  %next91 = getelementptr inbounds %struct.run_s, %struct.run_s* %57, i32 0, i32 1
  %bf.load92 = load i32, i32* %next91, align 8
  %bf.lshr93 = lshr i32 %bf.load92, 12
  %bf.clear94 = and i32 %bf.lshr93, 1023
  %index95 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 1
  store i32 %bf.clear94, i32* %index95, align 4, !tbaa !80
  %idx.ext96 = zext i32 %bf.clear94 to i64
  %add.ptr97 = getelementptr inbounds %struct.run_s, %struct.run_s* %56, i64 %idx.ext96
  %ptr98 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  store %struct.run_s* %add.ptr97, %struct.run_s** %ptr98, align 8, !tbaa !79
  %58 = load i32, i32* %x0, align 4, !tbaa !29
  %59 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %cmp99 = icmp slt i32 %58, %59
  br i1 %cmp99, label %if.then.100, label %if.end.153

if.then.100:                                      ; preds = %while.end.89
  %60 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  %61 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %62 = load i32, i32* %x0, align 4, !tbaa !29
  %sub101 = sub nsw i32 %61, %62
  store i32 %sub101, i32* %diff, align 4, !tbaa !29
  %63 = bitcast i64* %v0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #1
  %ptr102 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %64 = load %struct.run_s*, %struct.run_s** %ptr102, align 8, !tbaa !79
  %value103 = getelementptr inbounds %struct.run_s, %struct.run_s* %64, i32 0, i32 0
  %65 = load i64, i64* %value103, align 8, !tbaa !72
  store i64 %65, i64* %v0, align 8, !tbaa !30
  %66 = bitcast %struct.run_ptr_s* %rpp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %66) #1
  %67 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr104 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %68 = load %struct.run_s*, %struct.run_s** %ptr104, align 8, !tbaa !79
  %prev105 = getelementptr inbounds %struct.run_s, %struct.run_s* %68, i32 0, i32 1
  %bf.load106 = load i32, i32* %prev105, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 22
  %index108 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 1
  store i32 %bf.lshr107, i32* %index108, align 4, !tbaa !80
  %idx.ext109 = zext i32 %bf.lshr107 to i64
  %add.ptr110 = getelementptr inbounds %struct.run_s, %struct.run_s* %67, i64 %idx.ext109
  %ptr111 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 0
  store %struct.run_s* %add.ptr110, %struct.run_s** %ptr111, align 8, !tbaa !79
  %ptr112 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 0
  %69 = load %struct.run_s*, %struct.run_s** %ptr112, align 8, !tbaa !79
  %value113 = getelementptr inbounds %struct.run_s, %struct.run_s* %69, i32 0, i32 0
  %70 = load i64, i64* %value113, align 8, !tbaa !72
  %71 = load i64, i64* %v0, align 8, !tbaa !30
  %cmp114 = icmp eq i64 %70, %71
  br i1 %cmp114, label %land.lhs.true, label %if.else.129

land.lhs.true:                                    ; preds = %if.then.100
  %ptr115 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 0
  %72 = load %struct.run_s*, %struct.run_s** %ptr115, align 8, !tbaa !79
  %length116 = getelementptr inbounds %struct.run_s, %struct.run_s* %72, i32 0, i32 1
  %bf.load117 = load i32, i32* %length116, align 8
  %bf.clear118 = and i32 %bf.load117, 4095
  %73 = load i32, i32* %diff, align 4, !tbaa !29
  %add119 = add i32 %bf.clear118, %73
  %cmp120 = icmp ule i32 %add119, 4095
  br i1 %cmp120, label %if.then.121, label %if.else.129

if.then.121:                                      ; preds = %land.lhs.true
  %74 = load i32, i32* %diff, align 4, !tbaa !29
  %ptr122 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 0
  %75 = load %struct.run_s*, %struct.run_s** %ptr122, align 8, !tbaa !79
  %length123 = getelementptr inbounds %struct.run_s, %struct.run_s* %75, i32 0, i32 1
  %bf.load124 = load i32, i32* %length123, align 8
  %bf.clear125 = and i32 %bf.load124, 4095
  %add126 = add i32 %bf.clear125, %74
  %bf.load127 = load i32, i32* %length123, align 8
  %bf.value = and i32 %add126, 4095
  %bf.clear128 = and i32 %bf.load127, -4096
  %bf.set = or i32 %bf.clear128, %bf.value
  store i32 %bf.set, i32* %length123, align 8
  br label %if.end.141

if.else.129:                                      ; preds = %land.lhs.true, %if.then.100
  %76 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %77 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %call = call i32 @rp_insert_prev(%struct.run_ptr_s* %rp0, %struct.run_s* %76, %struct.run_line_s* %77, %struct.run_ptr_s* %rpp) #3
  store i32 %call, i32* %code, align 4, !tbaa !29
  %78 = load i32, i32* %code, align 4, !tbaa !29
  %cmp130 = icmp slt i32 %78, 0
  br i1 %cmp130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.else.129
  %79 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %79, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.132:                                       ; preds = %if.else.129
  %80 = load i32, i32* %diff, align 4, !tbaa !29
  %ptr133 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 0
  %81 = load %struct.run_s*, %struct.run_s** %ptr133, align 8, !tbaa !79
  %length134 = getelementptr inbounds %struct.run_s, %struct.run_s* %81, i32 0, i32 1
  %bf.load135 = load i32, i32* %length134, align 8
  %bf.value136 = and i32 %80, 4095
  %bf.clear137 = and i32 %bf.load135, -4096
  %bf.set138 = or i32 %bf.clear137, %bf.value136
  store i32 %bf.set138, i32* %length134, align 8
  %82 = load i64, i64* %v0, align 8, !tbaa !30
  %ptr139 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpp, i32 0, i32 0
  %83 = load %struct.run_s*, %struct.run_s** %ptr139, align 8, !tbaa !79
  %value140 = getelementptr inbounds %struct.run_s, %struct.run_s* %83, i32 0, i32 0
  store i64 %82, i64* %value140, align 8, !tbaa !72
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.132, %if.then.121
  %84 = load i32, i32* %diff, align 4, !tbaa !29
  %ptr142 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %85 = load %struct.run_s*, %struct.run_s** %ptr142, align 8, !tbaa !79
  %length143 = getelementptr inbounds %struct.run_s, %struct.run_s* %85, i32 0, i32 1
  %bf.load144 = load i32, i32* %length143, align 8
  %bf.clear145 = and i32 %bf.load144, 4095
  %sub146 = sub i32 %bf.clear145, %84
  %bf.load147 = load i32, i32* %length143, align 8
  %bf.value148 = and i32 %sub146, 4095
  %bf.clear149 = and i32 %bf.load147, -4096
  %bf.set150 = or i32 %bf.clear149, %bf.value148
  store i32 %bf.set150, i32* %length143, align 8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.141, %if.then.131
  %86 = bitcast %struct.run_ptr_s* %rpp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %86) #1
  %87 = bitcast i64* %v0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #1
  %88 = bitcast i32* %diff to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.290 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.153

if.end.153:                                       ; preds = %cleanup.cont, %while.end.89
  %89 = load i32, i32* %xc, align 4, !tbaa !29
  %ptr154 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %90 = load %struct.run_s*, %struct.run_s** %ptr154, align 8, !tbaa !79
  %length155 = getelementptr inbounds %struct.run_s, %struct.run_s* %90, i32 0, i32 1
  %bf.load156 = load i32, i32* %length155, align 8
  %bf.clear157 = and i32 %bf.load156, 4095
  %add158 = add nsw i32 %89, %bf.clear157
  store i32 %add158, i32* %x1, align 4, !tbaa !29
  %91 = load i32, i32* %x1, align 4, !tbaa !29
  %92 = load i32, i32* %xe.addr, align 4, !tbaa !29
  %cmp159 = icmp sgt i32 %91, %92
  br i1 %cmp159, label %if.then.160, label %if.end.222

if.then.160:                                      ; preds = %if.end.153
  %93 = bitcast i32* %diff161 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #1
  %94 = load i32, i32* %x1, align 4, !tbaa !29
  %95 = load i32, i32* %xe.addr, align 4, !tbaa !29
  %sub162 = sub nsw i32 %94, %95
  store i32 %sub162, i32* %diff161, align 4, !tbaa !29
  %96 = bitcast i64* %vc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %96) #1
  %ptr163 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %97 = load %struct.run_s*, %struct.run_s** %ptr163, align 8, !tbaa !79
  %value164 = getelementptr inbounds %struct.run_s, %struct.run_s* %97, i32 0, i32 0
  %98 = load i64, i64* %value164, align 8, !tbaa !72
  store i64 %98, i64* %vc, align 8, !tbaa !30
  %99 = bitcast %struct.run_ptr_s* %rpn to i8*
  call void @llvm.lifetime.start(i64 16, i8* %99) #1
  %100 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr165 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %101 = load %struct.run_s*, %struct.run_s** %ptr165, align 8, !tbaa !79
  %next166 = getelementptr inbounds %struct.run_s, %struct.run_s* %101, i32 0, i32 1
  %bf.load167 = load i32, i32* %next166, align 8
  %bf.lshr168 = lshr i32 %bf.load167, 12
  %bf.clear169 = and i32 %bf.lshr168, 1023
  %index170 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 1
  store i32 %bf.clear169, i32* %index170, align 4, !tbaa !80
  %idx.ext171 = zext i32 %bf.clear169 to i64
  %add.ptr172 = getelementptr inbounds %struct.run_s, %struct.run_s* %100, i64 %idx.ext171
  %ptr173 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  store %struct.run_s* %add.ptr172, %struct.run_s** %ptr173, align 8, !tbaa !79
  %ptr174 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %102 = load %struct.run_s*, %struct.run_s** %ptr174, align 8, !tbaa !79
  %value175 = getelementptr inbounds %struct.run_s, %struct.run_s* %102, i32 0, i32 0
  %103 = load i64, i64* %value175, align 8, !tbaa !72
  %104 = load i64, i64* %vc, align 8, !tbaa !30
  %cmp176 = icmp eq i64 %103, %104
  br i1 %cmp176, label %land.lhs.true.177, label %if.else.194

land.lhs.true.177:                                ; preds = %if.then.160
  %ptr178 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %105 = load %struct.run_s*, %struct.run_s** %ptr178, align 8, !tbaa !79
  %length179 = getelementptr inbounds %struct.run_s, %struct.run_s* %105, i32 0, i32 1
  %bf.load180 = load i32, i32* %length179, align 8
  %bf.clear181 = and i32 %bf.load180, 4095
  %106 = load i32, i32* %diff161, align 4, !tbaa !29
  %add182 = add i32 %bf.clear181, %106
  %cmp183 = icmp ule i32 %add182, 4095
  br i1 %cmp183, label %if.then.184, label %if.else.194

if.then.184:                                      ; preds = %land.lhs.true.177
  %107 = load i32, i32* %diff161, align 4, !tbaa !29
  %ptr185 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %108 = load %struct.run_s*, %struct.run_s** %ptr185, align 8, !tbaa !79
  %length186 = getelementptr inbounds %struct.run_s, %struct.run_s* %108, i32 0, i32 1
  %bf.load187 = load i32, i32* %length186, align 8
  %bf.clear188 = and i32 %bf.load187, 4095
  %add189 = add i32 %bf.clear188, %107
  %bf.load190 = load i32, i32* %length186, align 8
  %bf.value191 = and i32 %add189, 4095
  %bf.clear192 = and i32 %bf.load190, -4096
  %bf.set193 = or i32 %bf.clear192, %bf.value191
  store i32 %bf.set193, i32* %length186, align 8
  br label %if.end.207

if.else.194:                                      ; preds = %land.lhs.true.177, %if.then.160
  %109 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %110 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %call195 = call i32 @rp_insert_next(%struct.run_ptr_s* %rpc, %struct.run_s* %109, %struct.run_line_s* %110, %struct.run_ptr_s* %rpn) #3
  store i32 %call195, i32* %code, align 4, !tbaa !29
  %111 = load i32, i32* %code, align 4, !tbaa !29
  %cmp196 = icmp slt i32 %111, 0
  br i1 %cmp196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %if.else.194
  %112 = load i32, i32* %code, align 4, !tbaa !29
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.217

if.end.198:                                       ; preds = %if.else.194
  %113 = load i32, i32* %diff161, align 4, !tbaa !29
  %ptr199 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %114 = load %struct.run_s*, %struct.run_s** %ptr199, align 8, !tbaa !79
  %length200 = getelementptr inbounds %struct.run_s, %struct.run_s* %114, i32 0, i32 1
  %bf.load201 = load i32, i32* %length200, align 8
  %bf.value202 = and i32 %113, 4095
  %bf.clear203 = and i32 %bf.load201, -4096
  %bf.set204 = or i32 %bf.clear203, %bf.value202
  store i32 %bf.set204, i32* %length200, align 8
  %115 = load i64, i64* %vc, align 8, !tbaa !30
  %ptr205 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %116 = load %struct.run_s*, %struct.run_s** %ptr205, align 8, !tbaa !79
  %value206 = getelementptr inbounds %struct.run_s, %struct.run_s* %116, i32 0, i32 0
  store i64 %115, i64* %value206, align 8, !tbaa !72
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.198, %if.then.184
  %117 = load i32, i32* %diff161, align 4, !tbaa !29
  %ptr208 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %118 = load %struct.run_s*, %struct.run_s** %ptr208, align 8, !tbaa !79
  %length209 = getelementptr inbounds %struct.run_s, %struct.run_s* %118, i32 0, i32 1
  %bf.load210 = load i32, i32* %length209, align 8
  %bf.clear211 = and i32 %bf.load210, 4095
  %sub212 = sub i32 %bf.clear211, %117
  %bf.load213 = load i32, i32* %length209, align 8
  %bf.value214 = and i32 %sub212, 4095
  %bf.clear215 = and i32 %bf.load213, -4096
  %bf.set216 = or i32 %bf.clear215, %bf.value214
  store i32 %bf.set216, i32* %length209, align 8
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.217

cleanup.217:                                      ; preds = %if.end.207, %if.then.197
  %119 = bitcast %struct.run_ptr_s* %rpn to i8*
  call void @llvm.lifetime.end(i64 16, i8* %119) #1
  %120 = bitcast i64* %vc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %120) #1
  %121 = bitcast i32* %diff161 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %cleanup.dest.220 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.220, label %cleanup.290 [
    i32 0, label %cleanup.cont.221
  ]

cleanup.cont.221:                                 ; preds = %cleanup.217
  br label %if.end.222

if.end.222:                                       ; preds = %cleanup.cont.221, %if.end.153
  %122 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %ptr223 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %123 = load %struct.run_s*, %struct.run_s** %ptr223, align 8, !tbaa !79
  %prev224 = getelementptr inbounds %struct.run_s, %struct.run_s* %123, i32 0, i32 1
  %bf.load225 = load i32, i32* %prev224, align 8
  %bf.lshr226 = lshr i32 %bf.load225, 22
  %index227 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 1
  store i32 %bf.lshr226, i32* %index227, align 4, !tbaa !80
  %idx.ext228 = zext i32 %bf.lshr226 to i64
  %add.ptr229 = getelementptr inbounds %struct.run_s, %struct.run_s* %122, i64 %idx.ext228
  %ptr230 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  store %struct.run_s* %add.ptr229, %struct.run_s** %ptr230, align 8, !tbaa !79
  br label %while.cond.231

while.cond.231:                                   ; preds = %while.body.243, %if.end.222
  %ptr232 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %124 = load %struct.run_s*, %struct.run_s** %ptr232, align 8, !tbaa !79
  %next233 = getelementptr inbounds %struct.run_s, %struct.run_s* %124, i32 0, i32 1
  %bf.load234 = load i32, i32* %next233, align 8
  %bf.lshr235 = lshr i32 %bf.load234, 12
  %bf.clear236 = and i32 %bf.lshr235, 1023
  %ptr237 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpc, i32 0, i32 0
  %125 = load %struct.run_s*, %struct.run_s** %ptr237, align 8, !tbaa !79
  %next238 = getelementptr inbounds %struct.run_s, %struct.run_s* %125, i32 0, i32 1
  %bf.load239 = load i32, i32* %next238, align 8
  %bf.lshr240 = lshr i32 %bf.load239, 12
  %bf.clear241 = and i32 %bf.lshr240, 1023
  %cmp242 = icmp ne i32 %bf.clear236, %bf.clear241
  br i1 %cmp242, label %while.body.243, label %while.end.244

while.body.243:                                   ; preds = %while.cond.231
  %126 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %127 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  call void @rp_delete_next(%struct.run_ptr_s* %rp0, %struct.run_s* %126, %struct.run_line_s* %127) #3
  br label %while.cond.231

while.end.244:                                    ; preds = %while.cond.231
  %128 = bitcast i32* %left to i8*
  call void @llvm.lifetime.start(i64 4, i8* %128) #1
  %129 = load i32, i32* %xe.addr, align 4, !tbaa !29
  %130 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %sub245 = sub nsw i32 %129, %130
  store i32 %sub245, i32* %left, align 4, !tbaa !29
  %131 = load i32, i32* %xo.addr, align 4, !tbaa !29
  %132 = load i32, i32* %x0, align 4, !tbaa !29
  %cmp246 = icmp eq i32 %131, %132
  br i1 %cmp246, label %land.lhs.true.247, label %if.else.268

land.lhs.true.247:                                ; preds = %while.end.244
  %ptr248 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %133 = load %struct.run_s*, %struct.run_s** %ptr248, align 8, !tbaa !79
  %value249 = getelementptr inbounds %struct.run_s, %struct.run_s* %133, i32 0, i32 0
  %134 = load i64, i64* %value249, align 8, !tbaa !72
  %135 = load i64, i64* %new.addr, align 8, !tbaa !30
  %cmp250 = icmp eq i64 %134, %135
  br i1 %cmp250, label %land.lhs.true.251, label %if.else.268

land.lhs.true.251:                                ; preds = %land.lhs.true.247
  %ptr252 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %136 = load %struct.run_s*, %struct.run_s** %ptr252, align 8, !tbaa !79
  %length253 = getelementptr inbounds %struct.run_s, %struct.run_s* %136, i32 0, i32 1
  %bf.load254 = load i32, i32* %length253, align 8
  %bf.clear255 = and i32 %bf.load254, 4095
  %137 = load i32, i32* %left, align 4, !tbaa !29
  %add256 = add i32 %bf.clear255, %137
  %cmp257 = icmp ule i32 %add256, 4095
  br i1 %cmp257, label %if.then.258, label %if.else.268

if.then.258:                                      ; preds = %land.lhs.true.251
  %138 = load i32, i32* %left, align 4, !tbaa !29
  %ptr259 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rp0, i32 0, i32 0
  %139 = load %struct.run_s*, %struct.run_s** %ptr259, align 8, !tbaa !79
  %length260 = getelementptr inbounds %struct.run_s, %struct.run_s* %139, i32 0, i32 1
  %bf.load261 = load i32, i32* %length260, align 8
  %bf.clear262 = and i32 %bf.load261, 4095
  %add263 = add i32 %bf.clear262, %138
  %bf.load264 = load i32, i32* %length260, align 8
  %bf.value265 = and i32 %add263, 4095
  %bf.clear266 = and i32 %bf.load264, -4096
  %bf.set267 = or i32 %bf.clear266, %bf.value265
  store i32 %bf.set267, i32* %length260, align 8
  br label %if.end.289

if.else.268:                                      ; preds = %land.lhs.true.251, %land.lhs.true.247, %while.end.244
  %140 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %140) #1
  %141 = load i32, i32* %left, align 4, !tbaa !29
  %cmp269 = icmp ule i32 %141, 4095
  br i1 %cmp269, label %if.then.270, label %if.else.271

if.then.270:                                      ; preds = %if.else.268
  %142 = load i32, i32* %left, align 4, !tbaa !29
  store i32 %142, i32* %len, align 4, !tbaa !29
  br label %if.end.275

if.else.271:                                      ; preds = %if.else.268
  %143 = bitcast i32* %pieces to i8*
  call void @llvm.lifetime.start(i64 4, i8* %143) #1
  %144 = load i32, i32* %left, align 4, !tbaa !29
  %add272 = add i32 %144, 0
  store i32 %add272, i32* %pieces, align 4, !tbaa !29
  %145 = load i32, i32* %left, align 4, !tbaa !29
  %146 = load i32, i32* %pieces, align 4, !tbaa !29
  %add273 = add i32 %145, %146
  %sub274 = sub i32 %add273, 1
  %147 = load i32, i32* %pieces, align 4, !tbaa !29
  %div = udiv i32 %sub274, %147
  store i32 %div, i32* %len, align 4, !tbaa !29
  %148 = bitcast i32* %pieces to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.271, %if.then.270
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.275
  %149 = bitcast %struct.run_ptr_s* %rpn276 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %149) #1
  %150 = load %struct.run_s*, %struct.run_s** %data, align 8, !tbaa !1
  %151 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %call277 = call i32 @rp_insert_next(%struct.run_ptr_s* %rp0, %struct.run_s* %150, %struct.run_line_s* %151, %struct.run_ptr_s* %rpn276) #3
  %152 = load i32, i32* %left, align 4, !tbaa !29
  %153 = load i32, i32* %len, align 4, !tbaa !29
  %cmp278 = icmp ult i32 %152, %153
  br i1 %cmp278, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %154 = load i32, i32* %left, align 4, !tbaa !29
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %155 = load i32, i32* %len, align 4, !tbaa !29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %154, %cond.true ], [ %155, %cond.false ]
  %ptr279 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn276, i32 0, i32 0
  %156 = load %struct.run_s*, %struct.run_s** %ptr279, align 8, !tbaa !79
  %length280 = getelementptr inbounds %struct.run_s, %struct.run_s* %156, i32 0, i32 1
  %bf.load281 = load i32, i32* %length280, align 8
  %bf.value282 = and i32 %cond, 4095
  %bf.clear283 = and i32 %bf.load281, -4096
  %bf.set284 = or i32 %bf.clear283, %bf.value282
  store i32 %bf.set284, i32* %length280, align 8
  %157 = load i64, i64* %new.addr, align 8, !tbaa !30
  %ptr285 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn276, i32 0, i32 0
  %158 = load %struct.run_s*, %struct.run_s** %ptr285, align 8, !tbaa !79
  %value286 = getelementptr inbounds %struct.run_s, %struct.run_s* %158, i32 0, i32 0
  store i64 %157, i64* %value286, align 8, !tbaa !72
  %159 = bitcast %struct.run_ptr_s* %rpn276 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %159) #1
  br label %do.cond

do.cond:                                          ; preds = %cond.end
  %160 = load i32, i32* %len, align 4, !tbaa !29
  %161 = load i32, i32* %left, align 4, !tbaa !29
  %sub287 = sub i32 %161, %160
  store i32 %sub287, i32* %left, align 4, !tbaa !29
  %cmp288 = icmp ugt i32 %sub287, 0
  br i1 %cmp288, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %162 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  br label %if.end.289

if.end.289:                                       ; preds = %do.end, %if.then.258
  %163 = bitcast i32* %left to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.290

cleanup.290:                                      ; preds = %if.end.289, %cleanup.217, %cleanup, %if.then.37
  %164 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  %165 = bitcast %struct.run_ptr_s* %rp0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %165) #1
  %166 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast %struct.run_ptr_s* %rpc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %168) #1
  %169 = bitcast i32* %xc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast %struct.run_s** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %170) #1
  %171 = load i32, i32* %retval
  ret i32 %171
}

; Function Attrs: nounwind uwtable
define internal i32 @rp_insert_prev(%struct.run_ptr_s* %prpc, %struct.run_s* %data, %struct.run_line_s* %line, %struct.run_ptr_s* %prpp) #0 {
entry:
  %retval = alloca i32, align 4
  %prpc.addr = alloca %struct.run_ptr_s*, align 8
  %data.addr = alloca %struct.run_s*, align 8
  %line.addr = alloca %struct.run_line_s*, align 8
  %prpp.addr = alloca %struct.run_ptr_s*, align 8
  %new = alloca i32, align 4
  %prnew = alloca %struct.run_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.run_ptr_s* %prpc, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  store %struct.run_s* %data, %struct.run_s** %data.addr, align 8, !tbaa !1
  store %struct.run_line_s* %line, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  store %struct.run_ptr_s* %prpp, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %1, i32 0, i32 3
  %2 = load i32, i32* %free, align 4, !tbaa !77
  store i32 %2, i32* %new, align 4, !tbaa !29
  %3 = bitcast %struct.run_s** %prnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.run_s*, %struct.run_s** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %new, align 4, !tbaa !29
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.run_s, %struct.run_s* %4, i64 %idx.ext
  store %struct.run_s* %add.ptr, %struct.run_s** %prnew, align 8, !tbaa !1
  %6 = load i32, i32* %new, align 4, !tbaa !29
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.run_s*, %struct.run_s** %data.addr, align 8, !tbaa !1
  %8 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %8, i32 0, i32 0
  %9 = load %struct.run_s*, %struct.run_s** %ptr, align 8, !tbaa !79
  %prev = getelementptr inbounds %struct.run_s, %struct.run_s* %9, i32 0, i32 1
  %bf.load = load i32, i32* %prev, align 8
  %bf.lshr = lshr i32 %bf.load, 22
  %10 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %10, i32 0, i32 1
  store i32 %bf.lshr, i32* %index, align 4, !tbaa !80
  %idx.ext1 = zext i32 %bf.lshr to i64
  %add.ptr2 = getelementptr inbounds %struct.run_s, %struct.run_s* %7, i64 %idx.ext1
  %11 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %11, i32 0, i32 0
  store %struct.run_s* %add.ptr2, %struct.run_s** %ptr3, align 8, !tbaa !79
  %12 = load i32, i32* %new, align 4, !tbaa !29
  %13 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %13, i32 0, i32 0
  %14 = load %struct.run_s*, %struct.run_s** %ptr4, align 8, !tbaa !79
  %next = getelementptr inbounds %struct.run_s, %struct.run_s* %14, i32 0, i32 1
  %bf.load5 = load i32, i32* %next, align 8
  %bf.value = and i32 %12, 1023
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear = and i32 %bf.load5, -4190209
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %next, align 8
  %15 = load i32, i32* %new, align 4, !tbaa !29
  %16 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %ptr6 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %16, i32 0, i32 0
  %17 = load %struct.run_s*, %struct.run_s** %ptr6, align 8, !tbaa !79
  %prev7 = getelementptr inbounds %struct.run_s, %struct.run_s* %17, i32 0, i32 1
  %bf.load8 = load i32, i32* %prev7, align 8
  %bf.value9 = and i32 %15, 1023
  %bf.shl10 = shl i32 %bf.value9, 22
  %bf.clear11 = and i32 %bf.load8, 4194303
  %bf.set12 = or i32 %bf.clear11, %bf.shl10
  store i32 %bf.set12, i32* %prev7, align 8
  %18 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %next13 = getelementptr inbounds %struct.run_s, %struct.run_s* %18, i32 0, i32 1
  %bf.load14 = load i32, i32* %next13, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 12
  %bf.clear16 = and i32 %bf.lshr15, 1023
  %19 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %free17 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %19, i32 0, i32 3
  store i32 %bf.clear16, i32* %free17, align 4, !tbaa !77
  %20 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %index18 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %20, i32 0, i32 1
  %21 = load i32, i32* %index18, align 4, !tbaa !80
  %22 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %prev19 = getelementptr inbounds %struct.run_s, %struct.run_s* %22, i32 0, i32 1
  %bf.load20 = load i32, i32* %prev19, align 8
  %bf.value21 = and i32 %21, 1023
  %bf.shl22 = shl i32 %bf.value21, 22
  %bf.clear23 = and i32 %bf.load20, 4194303
  %bf.set24 = or i32 %bf.clear23, %bf.shl22
  store i32 %bf.set24, i32* %prev19, align 8
  %23 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %index25 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %23, i32 0, i32 1
  %24 = load i32, i32* %index25, align 4, !tbaa !80
  %25 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %next26 = getelementptr inbounds %struct.run_s, %struct.run_s* %25, i32 0, i32 1
  %bf.load27 = load i32, i32* %next26, align 8
  %bf.value28 = and i32 %24, 1023
  %bf.shl29 = shl i32 %bf.value28, 12
  %bf.clear30 = and i32 %bf.load27, -4190209
  %bf.set31 = or i32 %bf.clear30, %bf.shl29
  store i32 %bf.set31, i32* %next26, align 8
  %26 = load i32, i32* %new, align 4, !tbaa !29
  %27 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %index32 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %27, i32 0, i32 1
  store i32 %26, i32* %index32, align 4, !tbaa !80
  %28 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %29 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpp.addr, align 8, !tbaa !1
  %ptr33 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %29, i32 0, i32 0
  store %struct.run_s* %28, %struct.run_s** %ptr33, align 8, !tbaa !79
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast %struct.run_s** %prnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @rp_insert_next(%struct.run_ptr_s* %prpc, %struct.run_s* %data, %struct.run_line_s* %line, %struct.run_ptr_s* %prpn) #0 {
entry:
  %retval = alloca i32, align 4
  %prpc.addr = alloca %struct.run_ptr_s*, align 8
  %data.addr = alloca %struct.run_s*, align 8
  %line.addr = alloca %struct.run_line_s*, align 8
  %prpn.addr = alloca %struct.run_ptr_s*, align 8
  %new = alloca i32, align 4
  %prnew = alloca %struct.run_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.run_ptr_s* %prpc, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  store %struct.run_s* %data, %struct.run_s** %data.addr, align 8, !tbaa !1
  store %struct.run_line_s* %line, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  store %struct.run_ptr_s* %prpn, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %0 = bitcast i32* %new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %1, i32 0, i32 3
  %2 = load i32, i32* %free, align 4, !tbaa !77
  store i32 %2, i32* %new, align 4, !tbaa !29
  %3 = bitcast %struct.run_s** %prnew to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.run_s*, %struct.run_s** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %new, align 4, !tbaa !29
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds %struct.run_s, %struct.run_s* %4, i64 %idx.ext
  store %struct.run_s* %add.ptr, %struct.run_s** %prnew, align 8, !tbaa !1
  %6 = load i32, i32* %new, align 4, !tbaa !29
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.run_s*, %struct.run_s** %data.addr, align 8, !tbaa !1
  %8 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %8, i32 0, i32 0
  %9 = load %struct.run_s*, %struct.run_s** %ptr, align 8, !tbaa !79
  %next = getelementptr inbounds %struct.run_s, %struct.run_s* %9, i32 0, i32 1
  %bf.load = load i32, i32* %next, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %10 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %10, i32 0, i32 1
  store i32 %bf.clear, i32* %index, align 4, !tbaa !80
  %idx.ext1 = zext i32 %bf.clear to i64
  %add.ptr2 = getelementptr inbounds %struct.run_s, %struct.run_s* %7, i64 %idx.ext1
  %11 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %ptr3 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %11, i32 0, i32 0
  store %struct.run_s* %add.ptr2, %struct.run_s** %ptr3, align 8, !tbaa !79
  %12 = load i32, i32* %new, align 4, !tbaa !29
  %13 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %ptr4 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %13, i32 0, i32 0
  %14 = load %struct.run_s*, %struct.run_s** %ptr4, align 8, !tbaa !79
  %next5 = getelementptr inbounds %struct.run_s, %struct.run_s* %14, i32 0, i32 1
  %bf.load6 = load i32, i32* %next5, align 8
  %bf.value = and i32 %12, 1023
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear7 = and i32 %bf.load6, -4190209
  %bf.set = or i32 %bf.clear7, %bf.shl
  store i32 %bf.set, i32* %next5, align 8
  %15 = load i32, i32* %new, align 4, !tbaa !29
  %16 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %ptr8 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %16, i32 0, i32 0
  %17 = load %struct.run_s*, %struct.run_s** %ptr8, align 8, !tbaa !79
  %prev = getelementptr inbounds %struct.run_s, %struct.run_s* %17, i32 0, i32 1
  %bf.load9 = load i32, i32* %prev, align 8
  %bf.value10 = and i32 %15, 1023
  %bf.shl11 = shl i32 %bf.value10, 22
  %bf.clear12 = and i32 %bf.load9, 4194303
  %bf.set13 = or i32 %bf.clear12, %bf.shl11
  store i32 %bf.set13, i32* %prev, align 8
  %18 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %next14 = getelementptr inbounds %struct.run_s, %struct.run_s* %18, i32 0, i32 1
  %bf.load15 = load i32, i32* %next14, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 12
  %bf.clear17 = and i32 %bf.lshr16, 1023
  %19 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %free18 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %19, i32 0, i32 3
  store i32 %bf.clear17, i32* %free18, align 4, !tbaa !77
  %20 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %index19 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %20, i32 0, i32 1
  %21 = load i32, i32* %index19, align 4, !tbaa !80
  %22 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %prev20 = getelementptr inbounds %struct.run_s, %struct.run_s* %22, i32 0, i32 1
  %bf.load21 = load i32, i32* %prev20, align 8
  %bf.value22 = and i32 %21, 1023
  %bf.shl23 = shl i32 %bf.value22, 22
  %bf.clear24 = and i32 %bf.load21, 4194303
  %bf.set25 = or i32 %bf.clear24, %bf.shl23
  store i32 %bf.set25, i32* %prev20, align 8
  %23 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %index26 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %23, i32 0, i32 1
  %24 = load i32, i32* %index26, align 4, !tbaa !80
  %25 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %next27 = getelementptr inbounds %struct.run_s, %struct.run_s* %25, i32 0, i32 1
  %bf.load28 = load i32, i32* %next27, align 8
  %bf.value29 = and i32 %24, 1023
  %bf.shl30 = shl i32 %bf.value29, 12
  %bf.clear31 = and i32 %bf.load28, -4190209
  %bf.set32 = or i32 %bf.clear31, %bf.shl30
  store i32 %bf.set32, i32* %next27, align 8
  %26 = load i32, i32* %new, align 4, !tbaa !29
  %27 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %index33 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %27, i32 0, i32 1
  store i32 %26, i32* %index33, align 4, !tbaa !80
  %28 = load %struct.run_s*, %struct.run_s** %prnew, align 8, !tbaa !1
  %29 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpn.addr, align 8, !tbaa !1
  %ptr34 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %29, i32 0, i32 0
  store %struct.run_s* %28, %struct.run_s** %ptr34, align 8, !tbaa !79
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast %struct.run_s** %prnew to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #1
  %31 = bitcast i32* %new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @rp_delete_next(%struct.run_ptr_s* %prpc, %struct.run_s* %data, %struct.run_line_s* %line) #0 {
entry:
  %prpc.addr = alloca %struct.run_ptr_s*, align 8
  %data.addr = alloca %struct.run_s*, align 8
  %line.addr = alloca %struct.run_line_s*, align 8
  %rpn = alloca %struct.run_ptr_s, align 8
  %rpn2 = alloca %struct.run_ptr_s, align 8
  store %struct.run_ptr_s* %prpc, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  store %struct.run_s* %data, %struct.run_s** %data.addr, align 8, !tbaa !1
  store %struct.run_line_s* %line, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %0 = bitcast %struct.run_ptr_s* %rpn to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.run_ptr_s* %rpn2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = load %struct.run_s*, %struct.run_s** %data.addr, align 8, !tbaa !1
  %3 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %3, i32 0, i32 0
  %4 = load %struct.run_s*, %struct.run_s** %ptr, align 8, !tbaa !79
  %next = getelementptr inbounds %struct.run_s, %struct.run_s* %4, i32 0, i32 1
  %bf.load = load i32, i32* %next, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1023
  %index = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 1
  store i32 %bf.clear, i32* %index, align 4, !tbaa !80
  %idx.ext = zext i32 %bf.clear to i64
  %add.ptr = getelementptr inbounds %struct.run_s, %struct.run_s* %2, i64 %idx.ext
  %ptr1 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  store %struct.run_s* %add.ptr, %struct.run_s** %ptr1, align 8, !tbaa !79
  %5 = load %struct.run_s*, %struct.run_s** %data.addr, align 8, !tbaa !1
  %ptr2 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %6 = load %struct.run_s*, %struct.run_s** %ptr2, align 8, !tbaa !79
  %next3 = getelementptr inbounds %struct.run_s, %struct.run_s* %6, i32 0, i32 1
  %bf.load4 = load i32, i32* %next3, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 12
  %bf.clear6 = and i32 %bf.lshr5, 1023
  %index7 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn2, i32 0, i32 1
  store i32 %bf.clear6, i32* %index7, align 4, !tbaa !80
  %idx.ext8 = zext i32 %bf.clear6 to i64
  %add.ptr9 = getelementptr inbounds %struct.run_s, %struct.run_s* %5, i64 %idx.ext8
  %ptr10 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn2, i32 0, i32 0
  store %struct.run_s* %add.ptr9, %struct.run_s** %ptr10, align 8, !tbaa !79
  %index11 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn2, i32 0, i32 1
  %7 = load i32, i32* %index11, align 4, !tbaa !80
  %8 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %ptr12 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %8, i32 0, i32 0
  %9 = load %struct.run_s*, %struct.run_s** %ptr12, align 8, !tbaa !79
  %next13 = getelementptr inbounds %struct.run_s, %struct.run_s* %9, i32 0, i32 1
  %bf.load14 = load i32, i32* %next13, align 8
  %bf.value = and i32 %7, 1023
  %bf.shl = shl i32 %bf.value, 12
  %bf.clear15 = and i32 %bf.load14, -4190209
  %bf.set = or i32 %bf.clear15, %bf.shl
  store i32 %bf.set, i32* %next13, align 8
  %10 = load %struct.run_ptr_s*, %struct.run_ptr_s** %prpc.addr, align 8, !tbaa !1
  %index16 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %10, i32 0, i32 1
  %11 = load i32, i32* %index16, align 4, !tbaa !80
  %ptr17 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn2, i32 0, i32 0
  %12 = load %struct.run_s*, %struct.run_s** %ptr17, align 8, !tbaa !79
  %prev = getelementptr inbounds %struct.run_s, %struct.run_s* %12, i32 0, i32 1
  %bf.load18 = load i32, i32* %prev, align 8
  %bf.value19 = and i32 %11, 1023
  %bf.shl20 = shl i32 %bf.value19, 22
  %bf.clear21 = and i32 %bf.load18, 4194303
  %bf.set22 = or i32 %bf.clear21, %bf.shl20
  store i32 %bf.set22, i32* %prev, align 8
  %13 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %free = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %13, i32 0, i32 3
  %14 = load i32, i32* %free, align 4, !tbaa !77
  %ptr23 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %15 = load %struct.run_s*, %struct.run_s** %ptr23, align 8, !tbaa !79
  %next24 = getelementptr inbounds %struct.run_s, %struct.run_s* %15, i32 0, i32 1
  %bf.load25 = load i32, i32* %next24, align 8
  %bf.value26 = and i32 %14, 1023
  %bf.shl27 = shl i32 %bf.value26, 12
  %bf.clear28 = and i32 %bf.load25, -4190209
  %bf.set29 = or i32 %bf.clear28, %bf.shl27
  store i32 %bf.set29, i32* %next24, align 8
  %ptr30 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 0
  %16 = load %struct.run_s*, %struct.run_s** %ptr30, align 8, !tbaa !79
  %prev31 = getelementptr inbounds %struct.run_s, %struct.run_s* %16, i32 0, i32 1
  %bf.load32 = load i32, i32* %prev31, align 8
  %bf.clear33 = and i32 %bf.load32, 4194303
  store i32 %bf.clear33, i32* %prev31, align 8
  %index34 = getelementptr inbounds %struct.run_ptr_s, %struct.run_ptr_s* %rpn, i32 0, i32 1
  %17 = load i32, i32* %index34, align 4, !tbaa !80
  %18 = load %struct.run_line_s*, %struct.run_line_s** %line.addr, align 8, !tbaa !1
  %free35 = getelementptr inbounds %struct.run_line_s, %struct.run_line_s* %18, i32 0, i32 3
  store i32 %17, i32* %free35, align 4, !tbaa !77
  %19 = bitcast %struct.run_ptr_s* %rpn2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #1
  %20 = bitcast %struct.run_ptr_s* %rpn to i8*
  call void @llvm.lifetime.end(i64 16, i8* %20) #1
  ret void
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
!5 = !{!6, !7, i64 832}
!6 = !{!"gx_device_memory_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !2, i64 1728, !7, i64 1736, !2, i64 1744, !2, i64 1752, !7, i64 1760, !2, i64 1768, !7, i64 1776, !3, i64 1780, !19, i64 2548, !2, i64 2576, !21, i64 2584, !22, i64 2600, !23, i64 2624, !24, i64 2656, !25, i64 2680, !26, i64 2720, !27, i64 2736, !7, i64 2744, !7, i64 2748, !7, i64 2752, !7, i64 2756, !7, i64 2760, !9, i64 2768, !2, i64 2776, !7, i64 2784, !7, i64 2788}
!7 = !{!"int", !3, i64 0}
!8 = !{!"rc_header_s", !9, i64 0, !2, i64 8, !2, i64 16}
!9 = !{!"long", !3, i64 0}
!10 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !11, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !12, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !9, i64 704, !7, i64 712}
!11 = !{!"short", !3, i64 0}
!12 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!13 = !{!"gx_device_cached_colors_s", !9, i64 0, !9, i64 8}
!14 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!15 = !{!"gdev_space_params_s", !9, i64 0, !9, i64 8, !16, i64 16, !7, i64 32, !3, i64 36}
!16 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !9, i64 8}
!17 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!18 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!19 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!20 = !{!"float", !3, i64 0}
!21 = !{!"gs_const_string_s", !2, i64 0, !7, i64 8}
!22 = !{!"_c24", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!23 = !{!"_c40", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24}
!24 = !{!"_c48", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!25 = !{!"_c56", !9, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!26 = !{!"_c64", !9, i64 0, !7, i64 8, !7, i64 12}
!27 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!28 = !{!6, !11, i64 108}
!29 = !{!7, !7, i64 0}
!30 = !{!9, !9, i64 0}
!31 = !{i64 0, i64 4, !29, i64 8, i64 8, !1, i64 16, i64 8, !1, i64 24, i64 8, !1, i64 32, i64 8, !1, i64 40, i64 4, !29, i64 48, i64 8, !1, i64 56, i64 8, !30, i64 64, i64 8, !1, i64 72, i64 8, !1, i64 80, i64 4, !29, i64 84, i64 4, !29, i64 88, i64 4, !29, i64 96, i64 4, !29, i64 100, i64 4, !29, i64 104, i64 4, !32, i64 108, i64 2, !33, i64 110, i64 1, !32, i64 112, i64 4, !29, i64 116, i64 4, !29, i64 120, i64 4, !29, i64 124, i64 4, !29, i64 128, i64 4, !29, i64 132, i64 4, !29, i64 136, i64 4, !32, i64 140, i64 64, !32, i64 204, i64 64, !32, i64 272, i64 512, !32, i64 784, i64 8, !1, i64 792, i64 4, !32, i64 800, i64 8, !30, i64 808, i64 4, !29, i64 816, i64 8, !30, i64 824, i64 8, !30, i64 832, i64 4, !29, i64 836, i64 4, !29, i64 840, i64 4, !29, i64 844, i64 4, !29, i64 848, i64 4, !29, i64 852, i64 4, !29, i64 856, i64 8, !32, i64 864, i64 16, !32, i64 880, i64 4, !29, i64 884, i64 8, !32, i64 892, i64 8, !32, i64 900, i64 8, !32, i64 908, i64 16, !32, i64 928, i64 8, !30, i64 936, i64 8, !30, i64 944, i64 4, !29, i64 948, i64 4, !29, i64 952, i64 4, !29, i64 956, i64 4, !29, i64 960, i64 4, !29, i64 968, i64 8, !30, i64 976, i64 8, !30, i64 984, i64 4, !29, i64 988, i64 32, !32, i64 1020, i64 32, !32, i64 1052, i64 4, !29, i64 1056, i64 4, !29, i64 1064, i64 8, !30, i64 1072, i64 8, !30, i64 1080, i64 4, !29, i64 1084, i64 4, !29, i64 1088, i64 8, !30, i64 1096, i64 4, !29, i64 1100, i64 4, !32, i64 1104, i64 8, !1, i64 1112, i64 4, !32, i64 1120, i64 8, !1, i64 1128, i64 8, !1, i64 1136, i64 8, !1, i64 1144, i64 8, !1, i64 1152, i64 8, !1, i64 1160, i64 8, !1, i64 1168, i64 8, !1, i64 1176, i64 8, !1, i64 1184, i64 8, !1, i64 1192, i64 8, !1, i64 1200, i64 8, !1, i64 1208, i64 8, !1, i64 1216, i64 8, !1, i64 1224, i64 8, !1, i64 1232, i64 8, !1, i64 1240, i64 8, !1, i64 1248, i64 8, !1, i64 1256, i64 8, !1, i64 1264, i64 8, !1, i64 1272, i64 8, !1, i64 1280, i64 8, !1, i64 1288, i64 8, !1, i64 1296, i64 8, !1, i64 1304, i64 8, !1, i64 1312, i64 8, !1, i64 1320, i64 8, !1, i64 1328, i64 8, !1, i64 1336, i64 8, !1, i64 1344, i64 8, !1, i64 1352, i64 8, !1, i64 1360, i64 8, !1, i64 1368, i64 8, !1, i64 1376, i64 8, !1, i64 1384, i64 8, !1, i64 1392, i64 8, !1, i64 1400, i64 8, !1, i64 1408, i64 8, !1, i64 1416, i64 8, !1, i64 1424, i64 8, !1, i64 1432, i64 8, !1, i64 1440, i64 8, !1, i64 1448, i64 8, !1, i64 1456, i64 8, !1, i64 1464, i64 8, !1, i64 1472, i64 8, !1, i64 1480, i64 8, !1, i64 1488, i64 8, !1, i64 1496, i64 8, !1, i64 1504, i64 8, !1, i64 1512, i64 8, !1, i64 1520, i64 8, !1, i64 1528, i64 8, !1, i64 1536, i64 8, !1, i64 1544, i64 8, !1, i64 1552, i64 8, !1, i64 1560, i64 8, !1, i64 1568, i64 8, !1, i64 1576, i64 8, !1, i64 1584, i64 8, !1, i64 1592, i64 8, !1, i64 1600, i64 8, !1, i64 1608, i64 8, !1, i64 1616, i64 8, !1, i64 1624, i64 8, !1, i64 1632, i64 8, !1, i64 1640, i64 8, !1, i64 1648, i64 8, !1, i64 1656, i64 8, !1, i64 1664, i64 8, !1, i64 1672, i64 8, !1, i64 1680, i64 8, !1, i64 1688, i64 8, !1, i64 1696, i64 8, !1, i64 1704, i64 8, !1, i64 1712, i64 8, !1, i64 1720, i64 8, !1, i64 1728, i64 8, !1, i64 1736, i64 4, !29, i64 1744, i64 8, !1, i64 1752, i64 8, !1, i64 1760, i64 4, !29, i64 1768, i64 8, !1, i64 1776, i64 4, !29, i64 1780, i64 768, !32, i64 2548, i64 4, !34, i64 2552, i64 4, !34, i64 2556, i64 4, !34, i64 2560, i64 4, !34, i64 2564, i64 4, !34, i64 2568, i64 4, !34, i64 2576, i64 8, !1, i64 2584, i64 8, !1, i64 2592, i64 4, !29, i64 2600, i64 8, !30, i64 2608, i64 4, !29, i64 2612, i64 4, !29, i64 2616, i64 4, !29, i64 2624, i64 8, !30, i64 2632, i64 4, !29, i64 2636, i64 4, !29, i64 2640, i64 4, !29, i64 2644, i64 4, !29, i64 2648, i64 4, !29, i64 2656, i64 8, !30, i64 2664, i64 4, !29, i64 2668, i64 4, !29, i64 2672, i64 4, !29, i64 2680, i64 8, !30, i64 2688, i64 4, !29, i64 2692, i64 4, !29, i64 2696, i64 4, !29, i64 2700, i64 4, !29, i64 2704, i64 4, !29, i64 2708, i64 4, !29, i64 2712, i64 4, !29, i64 2720, i64 8, !30, i64 2728, i64 4, !29, i64 2732, i64 4, !29, i64 2736, i64 4, !29, i64 2740, i64 4, !29, i64 2744, i64 4, !29, i64 2748, i64 4, !29, i64 2752, i64 4, !29, i64 2756, i64 4, !29, i64 2760, i64 4, !29, i64 2768, i64 8, !30, i64 2776, i64 8, !1, i64 2784, i64 4, !29, i64 2788, i64 4, !29}
!32 = !{!3, !3, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!20, !20, i64 0}
!35 = !{!6, !7, i64 836}
!36 = !{!6, !2, i64 2576}
!37 = !{!38, !9, i64 0}
!38 = !{!"run_line_s", !9, i64 0, !7, i64 8, !39, i64 16, !7, i64 32}
!39 = !{!"run_ptr_s", !2, i64 0, !7, i64 8}
!40 = !{!41, !7, i64 2792}
!41 = !{!"gx_device_run_s", !6, i64 0, !7, i64 2792, !7, i64 2796, !7, i64 2800, !7, i64 2804, !7, i64 2808, !42, i64 2816}
!42 = !{!"sp_", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48}
!43 = !{!41, !7, i64 2796}
!44 = !{!41, !7, i64 2800}
!45 = !{!41, !7, i64 2804}
!46 = !{!41, !7, i64 2808}
!47 = !{!6, !2, i64 1216}
!48 = !{!41, !2, i64 2816}
!49 = !{!6, !2, i64 1224}
!50 = !{!41, !2, i64 2824}
!51 = !{!6, !2, i64 1200}
!52 = !{!41, !2, i64 2832}
!53 = !{!6, !2, i64 1312}
!54 = !{!41, !2, i64 2840}
!55 = !{!6, !2, i64 1416}
!56 = !{!41, !2, i64 2848}
!57 = !{!6, !2, i64 1424}
!58 = !{!41, !2, i64 2856}
!59 = !{!6, !2, i64 1448}
!60 = !{!41, !2, i64 2864}
!61 = !{!62, !7, i64 832}
!62 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!63 = !{!62, !7, i64 836}
!64 = !{!65, !7, i64 4}
!65 = !{!"gs_int_rect_s", !66, i64 0, !66, i64 8}
!66 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!67 = !{!65, !7, i64 12}
!68 = !{!41, !7, i64 832}
!69 = !{!70, !7, i64 8}
!70 = !{!"const_run_ptr_s", !2, i64 0, !7, i64 8}
!71 = !{!70, !2, i64 0}
!72 = !{!73, !9, i64 0}
!73 = !{!"run_s", !9, i64 0, !7, i64 8, !7, i64 9, !7, i64 10}
!74 = !{!38, !7, i64 8}
!75 = !{!38, !2, i64 16}
!76 = !{!38, !7, i64 24}
!77 = !{!38, !7, i64 32}
!78 = !{i64 0, i64 8, !1, i64 8, i64 4, !29}
!79 = !{!39, !2, i64 0}
!80 = !{!39, !7, i64 8}
