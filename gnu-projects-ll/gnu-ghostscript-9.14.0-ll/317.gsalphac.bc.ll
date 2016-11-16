; ModuleID = './gsalphac.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { {}*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
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
%struct.gs_imager_state_s = type opaque
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
%struct.gx_device_clist_writer_s = type opaque
%struct.gx_device_composite_alpha_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gs_composite_alpha_params_s }
%struct.gs_composite_alpha_params_s = type { i32, float }
%struct.gs_composite_alpha_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s*, %struct.gs_composite_alpha_params_s }
%struct.gx_device_forward_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s* }
%struct.pixel_row_s = type { i8*, i32, i32, i32 }
%struct.const_pixel_row_s = type { i8*, i32, i32, i32 }
%struct.gs_composite_params_s = type { i32, float, i32, [4 x i32] }

@gs_composite_alpha_type = constant { i8, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } } { i8 1, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* @c_alpha_create_default_compositor, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)* @c_alpha_equal, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)* @c_alpha_write, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)* @c_alpha_read, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)* @gx_default_composite_adjust_ctm, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)* @gx_default_composite_is_closing, i32 (%struct.gs_composite_s*, i8, i8)* @gx_default_composite_is_friendly, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* @gx_default_composite_clist_write_update, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* @gx_default_composite_clist_read_update, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* @gx_default_composite_get_cropping } }, align 8
@st_composite_alpha = internal constant %struct.gs_memory_struct_type_s { i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str = private unnamed_addr constant [26 x i8] c"gs_create_composite_alpha\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"gs_composite_alpha_t\00", align 1
@st_device_composite_alpha = internal constant %struct.gs_memory_struct_type_s { i32 1744, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_c_alpha_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @device_c_alpha_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @gx_device_finalize, i8* null }, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"create default alpha compositor\00", align 1
@gs_composite_alpha_device = internal constant %struct.gx_device_composite_alpha_s { i32 1744, %struct.gx_device_procs_s* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* null, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gx_default_open_device, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_forward_get_initial_matrix, i32 (%struct.gx_device_s*)* @gx_default_sync_output, i32 (%struct.gx_device_s*, i32, i32)* @gx_default_output_page, i32 (%struct.gx_device_s*)* @dca_close, i64 (%struct.gx_device_s*, i16*)* @dca_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @dca_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @dca_fill_rectangle, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* @dca_copy_mono, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* @dca_copy_color, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* @gx_default_draw_line, i32 (%struct.gx_device_s*, i32, i8*, i8**)* @gx_default_get_bits, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_forward_put_params, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_procs, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_xfont_device, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* @dca_map_rgb_alpha_color, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_forward_get_page_device, i32 (%struct.gx_device_s*, i32)* @gx_default_get_alpha_bits, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* @dca_copy_alpha, i32 (%struct.gx_device_s*, i32, i32*)* @gx_forward_get_band, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_copy_rop, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_fill_path, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* @gx_default_stroke_path, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* @gx_default_fill_mask, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_trapezoid, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_parallelogram, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* @gx_default_fill_triangle, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* @gx_default_draw_thin_line, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_image, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* @gx_default_image_data, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* @gx_default_end_image, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* @gx_default_strip_tile_rectangle, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* @gx_default_strip_copy_rop, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* @gx_forward_get_clipping_box, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_default_begin_typed_image, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* @gx_forward_get_bits_rectangle, i32 (%struct.gx_device_s*, i64, i16*)* @dca_map_color_rgb_alpha, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* @gx_no_create_compositor, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, %struct.gx_device_s* null, %struct.gs_composite_alpha_params_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"gx_device_composite_alpha\00", align 1
@st_device_forward = external constant %struct.gs_memory_struct_type_s, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"alpha compositor\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"dca_close\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"dca_fill_rectangle(std)\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"dca_fill_rectangle(native)\00", align 1

; Function Attrs: nounwind uwtable
define internal i32 @c_alpha_create_default_compositor(%struct.gs_composite_s* %pcte, %struct.gx_device_s** %pcdev, %struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pcdev.addr = alloca %struct.gx_device_s**, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %cdev = alloca %struct.gx_device_composite_alpha_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gx_device_s** %pcdev, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_composite_alpha_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gs_composite_s* %1 to %struct.gs_composite_alpha_s*
  %params = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %2, i32 0, i32 5
  %op = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  %3 = load i32, i32* %op, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %4, %struct.gx_device_s** %5, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %alloc_struct_immovable = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 9
  %7 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct_immovable, align 8, !tbaa !11
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %7(%struct.gs_memory_s* %8, %struct.gs_memory_struct_type_s* @st_device_composite_alpha, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0)) #4
  %9 = bitcast i8* %call to %struct.gx_device_composite_alpha_s*
  store %struct.gx_device_composite_alpha_s* %9, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %10 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_composite_alpha_s* %10 to %struct.gx_device_s*
  %12 = load %struct.gx_device_s**, %struct.gx_device_s*** %pcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %11, %struct.gx_device_s** %12, align 8, !tbaa !1
  %13 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.gx_device_composite_alpha_s* %13, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.3:                                         ; preds = %if.end
  %14 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_composite_alpha_s* %14 to %struct.gx_device_s*
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @gx_device_init(%struct.gx_device_s* %15, %struct.gx_device_s* bitcast (%struct.gx_device_composite_alpha_s* @gs_composite_alpha_device to %struct.gx_device_s*), %struct.gs_memory_s* %16, i32 1) #4
  %17 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %18 = bitcast %struct.gx_device_composite_alpha_s* %17 to %struct.gx_device_s*
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_copy_params(%struct.gx_device_s* %18, %struct.gx_device_s* %19) #4
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %21 = load i32, i32* %num_components, align 4, !tbaa !14
  %cmp4 = icmp eq i32 %21, 4
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %num_components6 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info5, i32 0, i32 1
  %23 = load i32, i32* %num_components6, align 4, !tbaa !14
  %add = add nsw i32 %23, 1
  %mul = mul nsw i32 %add, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 32, %cond.true ], [ %mul, %cond.false ]
  %conv = trunc i32 %cond to i16
  %24 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %24, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !26
  %25 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %25, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 6
  store i32 255, i32* %max_color, align 4, !tbaa !28
  %26 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %26, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 5
  store i32 255, i32* %max_gray, align 4, !tbaa !29
  %27 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %27, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 8
  store i32 256, i32* %dither_colors, align 4, !tbaa !30
  %28 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %28, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 7
  store i32 256, i32* %dither_grays, align 4, !tbaa !31
  %29 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %30 = bitcast %struct.gx_device_composite_alpha_s* %29 to %struct.gx_device_forward_s*
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void @gx_device_set_target(%struct.gx_device_forward_s* %30, %struct.gx_device_s* %31) #4
  %32 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %cdev, align 8, !tbaa !1
  %params12 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %32, i32 0, i32 44
  %33 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %34 = bitcast %struct.gs_composite_s* %33 to %struct.gs_composite_alpha_s*
  %params13 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %34, i32 0, i32 5
  %35 = bitcast %struct.gs_composite_alpha_params_s* %params12 to i8*
  %36 = bitcast %struct.gs_composite_alpha_params_s* %params13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %36, i64 8, i32 4, i1 false), !tbaa.struct !32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.2, %if.then
  %37 = bitcast %struct.gx_device_composite_alpha_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #2
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @c_alpha_equal(%struct.gs_composite_s* %pcte, %struct.gs_composite_s* %pcte2) #0 {
entry:
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %pcte2.addr = alloca %struct.gs_composite_s*, align 8
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %pcte2, %struct.gs_composite_s** %pcte2.addr, align 8, !tbaa !1
  %0 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte2.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %0, i32 0, i32 0
  %1 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type, align 8, !tbaa !35
  %2 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %type1 = getelementptr inbounds %struct.gs_composite_s, %struct.gs_composite_s* %2, i32 0, i32 0
  %3 = load %struct.gs_composite_type_s*, %struct.gs_composite_type_s** %type1, align 8, !tbaa !35
  %cmp = icmp eq %struct.gs_composite_type_s* %1, %3
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte2.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_composite_s* %4 to %struct.gs_composite_alpha_s*
  %params = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %5, i32 0, i32 5
  %op = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  %6 = load i32, i32* %op, align 4, !tbaa !5
  %7 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gs_composite_s* %7 to %struct.gs_composite_alpha_s*
  %params2 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %8, i32 0, i32 5
  %op3 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params2, i32 0, i32 0
  %9 = load i32, i32* %op3, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %6, %9
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %10 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_composite_s* %10 to %struct.gs_composite_alpha_s*
  %params5 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %11, i32 0, i32 5
  %op6 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params5, i32 0, i32 0
  %12 = load i32, i32* %op6, align 4, !tbaa !5
  %cmp7 = icmp ne i32 %12, 14
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %13 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte2.addr, align 8, !tbaa !1
  %14 = bitcast %struct.gs_composite_s* %13 to %struct.gs_composite_alpha_s*
  %params8 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %14, i32 0, i32 5
  %delta = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params8, i32 0, i32 1
  %15 = load float, float* %delta, align 4, !tbaa !37
  %16 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_composite_s* %16 to %struct.gs_composite_alpha_s*
  %params9 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %17, i32 0, i32 5
  %delta10 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params9, i32 0, i32 1
  %18 = load float, float* %delta10, align 4, !tbaa !37
  %cmp11 = fcmp oeq float %15, %18
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %19 = phi i1 [ true, %land.rhs ], [ %cmp11, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %entry
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %19, %lor.end ]
  %land.ext = zext i1 %20 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @c_alpha_write(%struct.gs_composite_s* %pcte, i8* %data, i32* %psize, %struct.gx_device_clist_writer_s* %cdev) #0 {
entry:
  %retval = alloca i32, align 4
  %pcte.addr = alloca %struct.gs_composite_s*, align 8
  %data.addr = alloca i8*, align 8
  %psize.addr = alloca i32*, align 8
  %cdev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %size = alloca i32, align 4
  %used = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s* %pcte, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !1
  store %struct.gx_device_clist_writer_s* %cdev, %struct.gx_device_clist_writer_s** %cdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !38
  store i32 %2, i32* %size, align 4, !tbaa !38
  %3 = bitcast i32* %used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %4 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gs_composite_s* %4 to %struct.gs_composite_alpha_s*
  %params = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %5, i32 0, i32 5
  %op = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  %6 = load i32, i32* %op, align 4, !tbaa !5
  %cmp = icmp eq i32 %6, 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end
  store i32 5, i32* %used, align 4, !tbaa !38
  %7 = load i32, i32* %size, align 4, !tbaa !38
  %8 = load i32, i32* %used, align 4, !tbaa !38
  %cmp1 = icmp ult i32 %7, %8
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %9 = load i32, i32* %used, align 4, !tbaa !38
  %10 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %9, i32* %10, align 4, !tbaa !38
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_composite_s* %12 to %struct.gs_composite_alpha_s*
  %params3 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %13, i32 0, i32 5
  %delta = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params3, i32 0, i32 1
  %14 = bitcast float* %delta to i8*
  %call = call i8* @memcpy(i8* %add.ptr, i8* %14, i64 4) #5
  br label %if.end.7

if.else:                                          ; preds = %do.end
  store i32 1, i32* %used, align 4, !tbaa !38
  %15 = load i32, i32* %size, align 4, !tbaa !38
  %16 = load i32, i32* %used, align 4, !tbaa !38
  %cmp4 = icmp ult i32 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.else
  %17 = load i32, i32* %used, align 4, !tbaa !38
  %18 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %17, i32* %18, align 4, !tbaa !38
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.else
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %19 = load %struct.gs_composite_s*, %struct.gs_composite_s** %pcte.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_composite_s* %19 to %struct.gs_composite_alpha_s*
  %params8 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %20, i32 0, i32 5
  %op9 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params8, i32 0, i32 0
  %21 = load i32, i32* %op9, align 4, !tbaa !5
  %conv = trunc i32 %21 to i8
  %22 = load i8*, i8** %data.addr, align 8, !tbaa !1
  store i8 %conv, i8* %22, align 1, !tbaa !33
  %23 = load i32, i32* %used, align 4, !tbaa !38
  %24 = load i32*, i32** %psize.addr, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !38
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.2
  %25 = bitcast i32* %used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @c_alpha_read(%struct.gs_composite_s** %ppcte, i8* %data, i32 %size, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcte.addr = alloca %struct.gs_composite_s**, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %params = alloca %struct.gs_composite_alpha_params_s, align 4
  %code = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s** %ppcte, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_composite_alpha_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 1, i32* %nbytes, align 4, !tbaa !38
  %3 = load i32, i32* %size.addr, align 4, !tbaa !38
  %cmp = icmp ult i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !33
  %conv = zext i8 %5 to i32
  %cmp1 = icmp sgt i32 %conv, 14
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !33
  %conv3 = zext i8 %7 to i32
  %op = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  store i32 %conv3, i32* %op, align 4, !tbaa !39
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %op4 = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  %8 = load i32, i32* %op4, align 4, !tbaa !39
  %cmp5 = icmp eq i32 %8, 14
  br i1 %cmp5, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %do.end
  %9 = load i32, i32* %size.addr, align 4, !tbaa !38
  %conv8 = zext i32 %9 to i64
  %cmp9 = icmp ult i64 %conv8, 5
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %if.then.7
  %delta = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 1
  %10 = bitcast float* %delta to i8*
  %11 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 1
  %call = call i8* @memcpy(i8* %10, i8* %add.ptr, i64 4) #5
  %12 = load i32, i32* %nbytes, align 4, !tbaa !38
  %conv13 = sext i32 %12 to i64
  %add = add i64 %conv13, 4
  %conv14 = trunc i64 %add to i32
  store i32 %conv14, i32* %nbytes, align 4, !tbaa !38
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.12, %do.end
  %13 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call16 = call i32 @gs_create_composite_alpha(%struct.gs_composite_s** %13, %struct.gs_composite_alpha_params_s* %params, %struct.gs_memory_s* %14) #4
  store i32 %call16, i32* %code, align 4, !tbaa !38
  %15 = load i32, i32* %code, align 4, !tbaa !38
  %cmp17 = icmp slt i32 %15, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  %16 = load i32, i32* %code, align 4, !tbaa !38
  br label %cond.end

cond.false:                                       ; preds = %if.end.15
  %17 = load i32, i32* %nbytes, align 4, !tbaa !38
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then.11, %if.then
  %18 = bitcast i32* %nbytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast %struct.gs_composite_alpha_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @gx_default_composite_adjust_ctm(%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*) #1

declare i32 @gx_default_composite_is_closing(%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*) #1

declare i32 @gx_default_composite_is_friendly(%struct.gs_composite_s*, i8 zeroext, i8 zeroext) #1

declare i32 @gx_default_composite_clist_write_update(%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*) #1

declare i32 @gx_default_composite_clist_read_update(%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*) #1

declare i32 @gx_default_composite_get_cropping(%struct.gs_composite_s*, i32*, i32*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @gs_create_composite_alpha(%struct.gs_composite_s** %ppcte, %struct.gs_composite_alpha_params_s* %params, %struct.gs_memory_s* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %ppcte.addr = alloca %struct.gs_composite_s**, align 8
  %params.addr = alloca %struct.gs_composite_alpha_params_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcte = alloca %struct.gs_composite_alpha_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_composite_s** %ppcte, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  store %struct.gs_composite_alpha_params_s* %params, %struct.gs_composite_alpha_params_s** %params.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_composite_alpha_s** %pcte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %2 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !40
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %2(%struct.gs_memory_s* %3, %struct.gs_memory_struct_type_s* @st_composite_alpha, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0)) #4
  %4 = bitcast i8* %call to %struct.gs_composite_alpha_s*
  store %struct.gs_composite_alpha_s* %4, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %5 = load %struct.gs_composite_alpha_s*, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_composite_alpha_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gs_composite_alpha_s*, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %6, i32 0, i32 0
  store %struct.gs_composite_type_s* bitcast ({ i8, { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* } }* @gs_composite_alpha_type to %struct.gs_composite_type_s*), %struct.gs_composite_type_s** %type, align 8, !tbaa !41
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call1 = call i64 @gs_next_ids(%struct.gs_memory_s* %7, i32 1) #4
  %8 = load %struct.gs_composite_alpha_s*, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %8, i32 0, i32 1
  store i64 %call1, i64* %id, align 8, !tbaa !42
  %9 = load %struct.gs_composite_alpha_s*, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %params2 = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %9, i32 0, i32 5
  %10 = load %struct.gs_composite_alpha_params_s*, %struct.gs_composite_alpha_params_s** %params.addr, align 8, !tbaa !1
  %11 = bitcast %struct.gs_composite_alpha_params_s* %params2 to i8*
  %12 = bitcast %struct.gs_composite_alpha_params_s* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 4, i1 false), !tbaa.struct !32
  %13 = load %struct.gs_composite_alpha_s*, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %idle = getelementptr inbounds %struct.gs_composite_alpha_s, %struct.gs_composite_alpha_s* %13, i32 0, i32 2
  store i32 0, i32* %idle, align 4, !tbaa !43
  %14 = load %struct.gs_composite_alpha_s*, %struct.gs_composite_alpha_s** %pcte, align 8, !tbaa !1
  %15 = bitcast %struct.gs_composite_alpha_s* %14 to %struct.gs_composite_s*
  %16 = load %struct.gs_composite_s**, %struct.gs_composite_s*** %ppcte.addr, align 8, !tbaa !1
  store %struct.gs_composite_s* %15, %struct.gs_composite_s** %16, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %17 = bitcast %struct.gs_composite_alpha_s** %pcte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @composite_values(%struct.pixel_row_s* %pdest, %struct.const_pixel_row_s* %psource, i32 %values_per_pixel, i32 %num_pixels, %struct.gs_composite_params_s* %pcp) #0 {
entry:
  %retval = alloca i32, align 4
  %pdest.addr = alloca %struct.pixel_row_s*, align 8
  %psource.addr = alloca %struct.const_pixel_row_s*, align 8
  %values_per_pixel.addr = alloca i32, align 4
  %num_pixels.addr = alloca i32, align 4
  %pcp.addr = alloca %struct.gs_composite_params_s*, align 8
  %dest_bpv = alloca i32, align 4
  %source_bpv = alloca i32, align 4
  %source_alpha_j = alloca i32, align 4
  %dest_alpha_j = alloca i32, align 4
  %dest_vpp = alloca i32, align 4
  %source_vpp = alloca i32, align 4
  %constant_colors = alloca i32, align 4
  %highlight_value = alloca i32, align 4
  %sptr = alloca i8*, align 8
  %sbit = alloca i32, align 4
  %dptr = alloca i8*, align 8
  %dbit = alloca i32, align 4
  %dbyte = alloca i8, align 1
  %xbit = alloca i32, align 4
  %xbit22 = alloca i32, align 4
  %source_max = alloca i32, align 4
  %dest_max = alloca i32, align 4
  %source_delta = alloca float, align 4
  %dest_delta = alloca float, align 4
  %source_alpha = alloca i32, align 4
  %dest_alpha = alloca i32, align 4
  %x = alloca i32, align 4
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %j = alloca i32, align 4
  %result_alpha = alloca i32, align 4
  %dabit = alloca i32, align 4
  %daptr = alloca i8*, align 8
  %sabit = alloca i32, align 4
  %saptr = alloca i8*, align 8
  %dest_v = alloca i32, align 4
  %source_v = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.pixel_row_s* %pdest, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  store %struct.const_pixel_row_s* %psource, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  store i32 %values_per_pixel, i32* %values_per_pixel.addr, align 4, !tbaa !38
  store i32 %num_pixels, i32* %num_pixels.addr, align 4, !tbaa !38
  store %struct.gs_composite_params_s* %pcp, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dest_bpv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.pixel_row_s*, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  %bits_per_value = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %1, i32 0, i32 1
  %2 = load i32, i32* %bits_per_value, align 4, !tbaa !44
  store i32 %2, i32* %dest_bpv, align 4, !tbaa !38
  %3 = bitcast i32* %source_bpv to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %bits_per_value1 = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %4, i32 0, i32 1
  %5 = load i32, i32* %bits_per_value1, align 4, !tbaa !46
  store i32 %5, i32* %source_bpv, align 4, !tbaa !38
  %6 = bitcast i32* %source_alpha_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %alpha = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %7, i32 0, i32 3
  %8 = load i32, i32* %alpha, align 4, !tbaa !48
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i32, i32* %values_per_pixel.addr, align 4, !tbaa !38
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %alpha2 = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %10, i32 0, i32 3
  %11 = load i32, i32* %alpha2, align 4, !tbaa !48
  %cmp3 = icmp eq i32 %11, 1
  %cond = select i1 %cmp3, i32 0, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ %9, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond4, i32* %source_alpha_j, align 4, !tbaa !38
  %12 = bitcast i32* %dest_alpha_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.pixel_row_s*, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  %alpha5 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %13, i32 0, i32 3
  %14 = load i32, i32* %alpha5, align 4, !tbaa !49
  %cmp6 = icmp eq i32 %14, 2
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %15 = load i32, i32* %values_per_pixel.addr, align 4, !tbaa !38
  br label %cond.end.12

cond.false.8:                                     ; preds = %cond.end
  %16 = load %struct.pixel_row_s*, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  %alpha9 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %16, i32 0, i32 3
  %17 = load i32, i32* %alpha9, align 4, !tbaa !49
  %cmp10 = icmp eq i32 %17, 1
  %cond11 = select i1 %cmp10, i32 0, i32 -1
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.8, %cond.true.7
  %cond13 = phi i32 [ %15, %cond.true.7 ], [ %cond11, %cond.false.8 ]
  store i32 %cond13, i32* %dest_alpha_j, align 4, !tbaa !38
  %18 = bitcast i32* %dest_vpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #2
  %19 = load i32, i32* %values_per_pixel.addr, align 4, !tbaa !38
  %20 = load i32, i32* %dest_alpha_j, align 4, !tbaa !38
  %cmp14 = icmp sge i32 %20, 0
  %conv = zext i1 %cmp14 to i32
  %add = add nsw i32 %19, %conv
  store i32 %add, i32* %dest_vpp, align 4, !tbaa !38
  %21 = bitcast i32* %source_vpp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = load i32, i32* %values_per_pixel.addr, align 4, !tbaa !38
  %23 = load i32, i32* %source_alpha_j, align 4, !tbaa !38
  %cmp15 = icmp sge i32 %23, 0
  %conv16 = zext i1 %cmp15 to i32
  %add17 = add nsw i32 %22, %conv16
  store i32 %add17, i32* %source_vpp, align 4, !tbaa !38
  %24 = bitcast i32* %constant_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %25, i32 0, i32 0
  %26 = load i8*, i8** %data, align 8, !tbaa !50
  %cmp18 = icmp eq i8* %26, null
  %conv19 = zext i1 %cmp18 to i32
  store i32 %conv19, i32* %constant_colors, align 4, !tbaa !38
  %27 = bitcast i32* %highlight_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #2
  %28 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %shl = shl i32 1, %28
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %highlight_value, align 4, !tbaa !38
  %29 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #2
  %30 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #2
  %31 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %31) #2
  %32 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #2
  call void @llvm.lifetime.start(i64 1, i8* %dbyte) #2
  %33 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #2
  %34 = load %struct.pixel_row_s*, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  %initial_x = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %34, i32 0, i32 2
  %35 = load i32, i32* %initial_x, align 4, !tbaa !51
  %36 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %mul = mul nsw i32 %35, %36
  %37 = load i32, i32* %dest_vpp, align 4, !tbaa !38
  %mul20 = mul nsw i32 %mul, %37
  store i32 %mul20, i32* %xbit, align 4, !tbaa !38
  %38 = load i32, i32* %xbit, align 4, !tbaa !38
  %and = and i32 %38, 7
  store i32 %and, i32* %dbit, align 4, !tbaa !38
  %39 = load %struct.pixel_row_s*, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  %data21 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %39, i32 0, i32 0
  %40 = load i8*, i8** %data21, align 8, !tbaa !52
  %41 = load i32, i32* %xbit, align 4, !tbaa !38
  %shr = lshr i32 %41, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  store i8* %add.ptr, i8** %dptr, align 8, !tbaa !1
  %42 = bitcast i32* %xbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %xbit22 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %initial_x23 = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %44, i32 0, i32 2
  %45 = load i32, i32* %initial_x23, align 4, !tbaa !53
  %46 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %mul24 = mul nsw i32 %45, %46
  %47 = load i32, i32* %source_vpp, align 4, !tbaa !38
  %mul25 = mul nsw i32 %mul24, %47
  store i32 %mul25, i32* %xbit22, align 4, !tbaa !38
  %48 = load i32, i32* %xbit22, align 4, !tbaa !38
  %and26 = and i32 %48, 7
  store i32 %and26, i32* %sbit, align 4, !tbaa !38
  %49 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %data27 = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %49, i32 0, i32 0
  %50 = load i8*, i8** %data27, align 8, !tbaa !50
  %51 = load i32, i32* %xbit22, align 4, !tbaa !38
  %shr28 = lshr i32 %51, 3
  %idx.ext29 = zext i32 %shr28 to i64
  %add.ptr30 = getelementptr inbounds i8, i8* %50, i64 %idx.ext29
  store i8* %add.ptr30, i8** %sptr, align 8, !tbaa !1
  %52 = bitcast i32* %xbit22 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #2
  %53 = bitcast i32* %source_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %shl31 = shl i32 1, %54
  %sub32 = sub nsw i32 %shl31, 1
  store i32 %sub32, i32* %source_max, align 4, !tbaa !38
  %55 = bitcast i32* %dest_max to i8*
  call void @llvm.lifetime.start(i64 4, i8* %55) #2
  %56 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %shl33 = shl i32 1, %56
  %sub34 = sub nsw i32 %shl33, 1
  store i32 %sub34, i32* %dest_max, align 4, !tbaa !38
  %57 = bitcast float* %source_delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load %struct.gs_composite_params_s*, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %delta = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %58, i32 0, i32 1
  %59 = load float, float* %delta, align 4, !tbaa !54
  %60 = load i32, i32* %dest_max, align 4, !tbaa !38
  %conv35 = uitofp i32 %60 to float
  %mul36 = fmul float %59, %conv35
  %61 = load i32, i32* %source_max, align 4, !tbaa !38
  %conv37 = uitofp i32 %61 to float
  %div = fdiv float %mul36, %conv37
  store float %div, float* %source_delta, align 4, !tbaa !34
  %62 = bitcast float* %dest_delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %62) #2
  %63 = load %struct.gs_composite_params_s*, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %delta38 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %63, i32 0, i32 1
  %64 = load float, float* %delta38, align 4, !tbaa !54
  %conv39 = fpext float %64 to double
  %sub40 = fsub double 1.000000e+00, %conv39
  %conv41 = fptrunc double %sub40 to float
  store float %conv41, float* %dest_delta, align 4, !tbaa !34
  %65 = bitcast i32* %source_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load %struct.gs_composite_params_s*, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %source_alpha42 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %66, i32 0, i32 2
  %67 = load i32, i32* %source_alpha42, align 4, !tbaa !56
  store i32 %67, i32* %source_alpha, align 4, !tbaa !38
  %68 = bitcast i32* %dest_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #2
  %69 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %69, i32* %dest_alpha, align 4, !tbaa !38
  %70 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #2
  %71 = load %struct.pixel_row_s*, %struct.pixel_row_s** %pdest.addr, align 8, !tbaa !1
  %alpha43 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %71, i32 0, i32 3
  %72 = load i32, i32* %alpha43, align 4, !tbaa !49
  %tobool = icmp ne i32 %72, 0
  br i1 %tobool, label %if.end.53, label %if.then

if.then:                                          ; preds = %cond.end.12
  %73 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %73) #2
  %74 = load %struct.const_pixel_row_s*, %struct.const_pixel_row_s** %psource.addr, align 8, !tbaa !1
  %alpha44 = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %74, i32 0, i32 3
  %75 = load i32, i32* %alpha44, align 4, !tbaa !48
  %tobool45 = icmp ne i32 %75, 0
  br i1 %tobool45, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %76 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %77 = load i32, i32* %source_max, align 4, !tbaa !38
  %cmp46 = icmp ne i32 %76, %77
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %78 = phi i1 [ true, %if.then ], [ %cmp46, %lor.rhs ]
  %cond48 = select i1 %78, i32 24486, i32 16384
  store i32 %cond48, i32* %mask, align 4, !tbaa !38
  %79 = load i32, i32* %mask, align 4, !tbaa !38
  %80 = load %struct.gs_composite_params_s*, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %cop = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %80, i32 0, i32 0
  %81 = load i32, i32* %cop, align 4, !tbaa !57
  %shr49 = lshr i32 %79, %81
  %and50 = and i32 %shr49, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %lor.end
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.52
  %82 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.601 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.53

if.end.53:                                        ; preds = %cleanup.cont, %cond.end.12
  %83 = load i32, i32* %dbit, align 4, !tbaa !38
  %tobool54 = icmp ne i32 %83, 0
  br i1 %tobool54, label %cond.true.55, label %cond.false.61

cond.true.55:                                     ; preds = %if.end.53
  %84 = load i8*, i8** %dptr, align 8, !tbaa !1
  %85 = load i8, i8* %84, align 1, !tbaa !33
  %conv56 = zext i8 %85 to i32
  %86 = load i32, i32* %dbit, align 4, !tbaa !38
  %shr57 = ashr i32 65280, %86
  %and58 = and i32 %conv56, %shr57
  %conv59 = trunc i32 %and58 to i8
  %conv60 = zext i8 %conv59 to i32
  br label %cond.end.62

cond.false.61:                                    ; preds = %if.end.53
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.55
  %cond63 = phi i32 [ %conv60, %cond.true.55 ], [ 0, %cond.false.61 ]
  %conv64 = trunc i32 %cond63 to i8
  store i8 %conv64, i8* %dbyte, align 1, !tbaa !33
  store i32 0, i32* %x, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc.588, %cond.end.62
  %87 = load i32, i32* %x, align 4, !tbaa !38
  %88 = load i32, i32* %num_pixels.addr, align 4, !tbaa !38
  %cmp65 = icmp ult i32 %87, %88
  br i1 %cmp65, label %for.body, label %for.end.590

for.body:                                         ; preds = %for.cond
  %89 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %89) #2
  %90 = bitcast i32* %result_alpha to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  %91 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  store i32 %91, i32* %result_alpha, align 4, !tbaa !38
  %92 = load i32, i32* %dest_alpha_j, align 4, !tbaa !38
  %cmp67 = icmp sge i32 %92, 0
  br i1 %cmp67, label %if.then.69, label %if.end.118

if.then.69:                                       ; preds = %for.body
  %93 = bitcast i32* %dabit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load i32, i32* %dbit, align 4, !tbaa !38
  %95 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %96 = load i32, i32* %dest_alpha_j, align 4, !tbaa !38
  %mul70 = mul nsw i32 %95, %96
  %add71 = add nsw i32 %94, %mul70
  store i32 %add71, i32* %dabit, align 4, !tbaa !38
  %97 = bitcast i8** %daptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %97) #2
  %98 = load i8*, i8** %dptr, align 8, !tbaa !1
  %99 = load i32, i32* %dabit, align 4, !tbaa !38
  %shr72 = ashr i32 %99, 3
  %idx.ext73 = sext i32 %shr72 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %98, i64 %idx.ext73
  store i8* %add.ptr74, i8** %daptr, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.then.69
  %100 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %shr75 = ashr i32 %100, 2
  switch i32 %shr75, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.82
    i32 2, label %sw.bb.88
    i32 3, label %sw.bb.90
    i32 4, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %do.body
  %101 = load i8*, i8** %daptr, align 8, !tbaa !1
  %102 = load i8, i8* %101, align 1, !tbaa !33
  %conv76 = zext i8 %102 to i32
  %103 = load i32, i32* %dabit, align 4, !tbaa !38
  %and77 = and i32 %103, 7
  %sub78 = sub nsw i32 8, %and77
  %104 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %sub79 = sub nsw i32 %sub78, %104
  %shr80 = ashr i32 %conv76, %sub79
  %105 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %or = or i32 %105, 1
  %and81 = and i32 %shr80, %or
  store i32 %and81, i32* %dest_alpha, align 4, !tbaa !38
  br label %sw.epilog

sw.bb.82:                                         ; preds = %do.body
  %106 = load i8*, i8** %daptr, align 8, !tbaa !1
  %107 = load i8, i8* %106, align 1, !tbaa !33
  %conv83 = zext i8 %107 to i32
  %108 = load i32, i32* %dabit, align 4, !tbaa !38
  %and84 = and i32 %108, 7
  %sub85 = sub nsw i32 4, %and84
  %shr86 = ashr i32 %conv83, %sub85
  %and87 = and i32 %shr86, 15
  store i32 %and87, i32* %dest_alpha, align 4, !tbaa !38
  br label %sw.epilog

sw.bb.88:                                         ; preds = %do.body
  %109 = load i8*, i8** %daptr, align 8, !tbaa !1
  %110 = load i8, i8* %109, align 1, !tbaa !33
  %conv89 = zext i8 %110 to i32
  store i32 %conv89, i32* %dest_alpha, align 4, !tbaa !38
  br label %sw.epilog

sw.bb.90:                                         ; preds = %do.body
  %111 = load i32, i32* %dabit, align 4, !tbaa !38
  %and91 = and i32 %111, 7
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.true.93, label %cond.false.99

cond.true.93:                                     ; preds = %sw.bb.90
  %112 = load i8*, i8** %daptr, align 8, !tbaa !1
  %113 = load i8, i8* %112, align 1, !tbaa !33
  %conv94 = zext i8 %113 to i32
  %and95 = and i32 %conv94, 15
  %shl96 = shl i32 %and95, 8
  %114 = load i8*, i8** %daptr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx, align 1, !tbaa !33
  %conv97 = zext i8 %115 to i32
  %or98 = or i32 %shl96, %conv97
  br label %cond.end.106

cond.false.99:                                    ; preds = %sw.bb.90
  %116 = load i8*, i8** %daptr, align 8, !tbaa !1
  %117 = load i8, i8* %116, align 1, !tbaa !33
  %conv100 = zext i8 %117 to i32
  %shl101 = shl i32 %conv100, 4
  %118 = load i8*, i8** %daptr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds i8, i8* %118, i64 1
  %119 = load i8, i8* %arrayidx102, align 1, !tbaa !33
  %conv103 = zext i8 %119 to i32
  %shr104 = ashr i32 %conv103, 4
  %or105 = or i32 %shl101, %shr104
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.99, %cond.true.93
  %cond107 = phi i32 [ %or98, %cond.true.93 ], [ %or105, %cond.false.99 ]
  store i32 %cond107, i32* %dest_alpha, align 4, !tbaa !38
  br label %sw.epilog

sw.bb.108:                                        ; preds = %do.body
  %120 = load i8*, i8** %daptr, align 8, !tbaa !1
  %121 = load i8, i8* %120, align 1, !tbaa !33
  %conv109 = zext i8 %121 to i32
  %shl110 = shl i32 %conv109, 8
  %122 = load i8*, i8** %daptr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx111, align 1, !tbaa !33
  %conv112 = zext i8 %123 to i32
  %or113 = or i32 %shl110, %conv112
  store i32 %or113, i32* %dest_alpha, align 4, !tbaa !38
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.114

sw.epilog:                                        ; preds = %sw.bb.108, %cond.end.106, %sw.bb.88, %sw.bb.82, %sw.bb
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.114

cleanup.114:                                      ; preds = %do.end, %sw.default
  %124 = bitcast i8** %daptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = bitcast i32* %dabit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %cleanup.dest.116 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.116, label %cleanup.584 [
    i32 0, label %cleanup.cont.117
  ]

cleanup.cont.117:                                 ; preds = %cleanup.114
  br label %if.end.118

if.end.118:                                       ; preds = %cleanup.cont.117, %for.body
  %126 = load i32, i32* %source_alpha_j, align 4, !tbaa !38
  %cmp119 = icmp sge i32 %126, 0
  br i1 %cmp119, label %if.then.121, label %if.end.191

if.then.121:                                      ; preds = %if.end.118
  %127 = bitcast i32* %sabit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #2
  %128 = load i32, i32* %sbit, align 4, !tbaa !38
  store i32 %128, i32* %sabit, align 4, !tbaa !38
  %129 = bitcast i8** %saptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %129) #2
  %130 = load i8*, i8** %sptr, align 8, !tbaa !1
  store i8* %130, i8** %saptr, align 8, !tbaa !1
  %131 = load i32, i32* %source_alpha_j, align 4, !tbaa !38
  %cmp122 = icmp eq i32 %131, 0
  br i1 %cmp122, label %if.then.124, label %if.else

if.then.124:                                      ; preds = %if.then.121
  br label %do.body.125

do.body.125:                                      ; preds = %if.then.124
  %132 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %133 = load i32, i32* %sbit, align 4, !tbaa !38
  %add126 = add nsw i32 %133, %132
  store i32 %add126, i32* %sbit, align 4, !tbaa !38
  %134 = load i32, i32* %sbit, align 4, !tbaa !38
  %shr127 = ashr i32 %134, 3
  %135 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext128 = sext i32 %shr127 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %135, i64 %idx.ext128
  store i8* %add.ptr129, i8** %sptr, align 8, !tbaa !1
  %136 = load i32, i32* %sbit, align 4, !tbaa !38
  %and130 = and i32 %136, 7
  store i32 %and130, i32* %sbit, align 4, !tbaa !38
  br label %do.cond.131

do.cond.131:                                      ; preds = %do.body.125
  br label %do.end.132

do.end.132:                                       ; preds = %do.cond.131
  br label %if.end.142

if.else:                                          ; preds = %if.then.121
  br label %do.body.133

do.body.133:                                      ; preds = %if.else
  %137 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %138 = load i32, i32* %source_alpha_j, align 4, !tbaa !38
  %mul134 = mul nsw i32 %137, %138
  %139 = load i32, i32* %sabit, align 4, !tbaa !38
  %add135 = add nsw i32 %139, %mul134
  store i32 %add135, i32* %sabit, align 4, !tbaa !38
  %140 = load i32, i32* %sabit, align 4, !tbaa !38
  %shr136 = ashr i32 %140, 3
  %141 = load i8*, i8** %saptr, align 8, !tbaa !1
  %idx.ext137 = sext i32 %shr136 to i64
  %add.ptr138 = getelementptr inbounds i8, i8* %141, i64 %idx.ext137
  store i8* %add.ptr138, i8** %saptr, align 8, !tbaa !1
  %142 = load i32, i32* %sabit, align 4, !tbaa !38
  %and139 = and i32 %142, 7
  store i32 %and139, i32* %sabit, align 4, !tbaa !38
  br label %do.cond.140

do.cond.140:                                      ; preds = %do.body.133
  br label %do.end.141

do.end.141:                                       ; preds = %do.cond.140
  br label %if.end.142

if.end.142:                                       ; preds = %do.end.141, %do.end.132
  br label %do.body.143

do.body.143:                                      ; preds = %if.end.142
  %143 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %shr144 = ashr i32 %143, 2
  switch i32 %shr144, label %sw.default.183 [
    i32 0, label %sw.bb.145
    i32 1, label %sw.bb.152
    i32 2, label %sw.bb.157
    i32 3, label %sw.bb.159
    i32 4, label %sw.bb.177
  ]

sw.bb.145:                                        ; preds = %do.body.143
  %144 = load i8*, i8** %saptr, align 8, !tbaa !1
  %145 = load i8, i8* %144, align 1, !tbaa !33
  %conv146 = zext i8 %145 to i32
  %146 = load i32, i32* %sabit, align 4, !tbaa !38
  %sub147 = sub nsw i32 8, %146
  %147 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %sub148 = sub nsw i32 %sub147, %147
  %shr149 = ashr i32 %conv146, %sub148
  %148 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %or150 = or i32 %148, 1
  %and151 = and i32 %shr149, %or150
  store i32 %and151, i32* %source_alpha, align 4, !tbaa !38
  br label %sw.epilog.184

sw.bb.152:                                        ; preds = %do.body.143
  %149 = load i8*, i8** %saptr, align 8, !tbaa !1
  %150 = load i8, i8* %149, align 1, !tbaa !33
  %conv153 = zext i8 %150 to i32
  %151 = load i32, i32* %sabit, align 4, !tbaa !38
  %sub154 = sub nsw i32 4, %151
  %shr155 = ashr i32 %conv153, %sub154
  %and156 = and i32 %shr155, 15
  store i32 %and156, i32* %source_alpha, align 4, !tbaa !38
  br label %sw.epilog.184

sw.bb.157:                                        ; preds = %do.body.143
  %152 = load i8*, i8** %saptr, align 8, !tbaa !1
  %153 = load i8, i8* %152, align 1, !tbaa !33
  %conv158 = zext i8 %153 to i32
  store i32 %conv158, i32* %source_alpha, align 4, !tbaa !38
  br label %sw.epilog.184

sw.bb.159:                                        ; preds = %do.body.143
  %154 = load i32, i32* %sabit, align 4, !tbaa !38
  %tobool160 = icmp ne i32 %154, 0
  br i1 %tobool160, label %cond.true.161, label %cond.false.168

cond.true.161:                                    ; preds = %sw.bb.159
  %155 = load i8*, i8** %saptr, align 8, !tbaa !1
  %156 = load i8, i8* %155, align 1, !tbaa !33
  %conv162 = zext i8 %156 to i32
  %and163 = and i32 %conv162, 15
  %shl164 = shl i32 %and163, 8
  %157 = load i8*, i8** %saptr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %157, i64 1
  %158 = load i8, i8* %arrayidx165, align 1, !tbaa !33
  %conv166 = zext i8 %158 to i32
  %or167 = or i32 %shl164, %conv166
  br label %cond.end.175

cond.false.168:                                   ; preds = %sw.bb.159
  %159 = load i8*, i8** %saptr, align 8, !tbaa !1
  %160 = load i8, i8* %159, align 1, !tbaa !33
  %conv169 = zext i8 %160 to i32
  %shl170 = shl i32 %conv169, 4
  %161 = load i8*, i8** %saptr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds i8, i8* %161, i64 1
  %162 = load i8, i8* %arrayidx171, align 1, !tbaa !33
  %conv172 = zext i8 %162 to i32
  %shr173 = ashr i32 %conv172, 4
  %or174 = or i32 %shl170, %shr173
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.168, %cond.true.161
  %cond176 = phi i32 [ %or167, %cond.true.161 ], [ %or174, %cond.false.168 ]
  store i32 %cond176, i32* %source_alpha, align 4, !tbaa !38
  br label %sw.epilog.184

sw.bb.177:                                        ; preds = %do.body.143
  %163 = load i8*, i8** %saptr, align 8, !tbaa !1
  %164 = load i8, i8* %163, align 1, !tbaa !33
  %conv178 = zext i8 %164 to i32
  %shl179 = shl i32 %conv178, 8
  %165 = load i8*, i8** %saptr, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds i8, i8* %165, i64 1
  %166 = load i8, i8* %arrayidx180, align 1, !tbaa !33
  %conv181 = zext i8 %166 to i32
  %or182 = or i32 %shl179, %conv181
  store i32 %or182, i32* %source_alpha, align 4, !tbaa !38
  br label %sw.epilog.184

sw.default.183:                                   ; preds = %do.body.143
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.187

sw.epilog.184:                                    ; preds = %sw.bb.177, %cond.end.175, %sw.bb.157, %sw.bb.152, %sw.bb.145
  br label %do.cond.185

do.cond.185:                                      ; preds = %sw.epilog.184
  br label %do.end.186

do.end.186:                                       ; preds = %do.cond.185
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.187

cleanup.187:                                      ; preds = %do.end.186, %sw.default.183
  %167 = bitcast i8** %saptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #2
  %168 = bitcast i32* %sabit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #2
  %cleanup.dest.189 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.189, label %cleanup.584 [
    i32 0, label %cleanup.cont.190
  ]

cleanup.cont.190:                                 ; preds = %cleanup.187
  br label %if.end.191

if.end.191:                                       ; preds = %cleanup.cont.190, %if.end.118
  store i32 0, i32* %j, align 4, !tbaa !38
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc, %if.end.191
  %169 = load i32, i32* %j, align 4, !tbaa !38
  %170 = load i32, i32* %values_per_pixel.addr, align 4, !tbaa !38
  %cmp193 = icmp sle i32 %169, %170
  br i1 %cmp193, label %for.body.195, label %for.end

for.body.195:                                     ; preds = %for.cond.192
  %171 = bitcast i32* %dest_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #2
  %172 = bitcast i32* %source_v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #2
  %173 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %173) #2
  %174 = load i32, i32* %j, align 4, !tbaa !38
  %cmp196 = icmp eq i32 %174, 0
  br i1 %cmp196, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %for.body.195
  %175 = load i32, i32* %source_alpha, align 4, !tbaa !38
  store i32 %175, i32* %source_v, align 4, !tbaa !38
  %176 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  store i32 %176, i32* %dest_v, align 4, !tbaa !38
  br label %if.end.302

if.else.199:                                      ; preds = %for.body.195
  %177 = load i32, i32* %constant_colors, align 4, !tbaa !38
  %tobool200 = icmp ne i32 %177, 0
  br i1 %tobool200, label %if.then.201, label %if.else.204

if.then.201:                                      ; preds = %if.else.199
  %178 = load i32, i32* %j, align 4, !tbaa !38
  %sub202 = sub nsw i32 %178, 1
  %idxprom = sext i32 %sub202 to i64
  %179 = load %struct.gs_composite_params_s*, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %source_values = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %179, i32 0, i32 3
  %arrayidx203 = getelementptr inbounds [4 x i32], [4 x i32]* %source_values, i32 0, i64 %idxprom
  %180 = load i32, i32* %arrayidx203, align 4, !tbaa !38
  store i32 %180, i32* %source_v, align 4, !tbaa !38
  br label %if.end.257

if.else.204:                                      ; preds = %if.else.199
  br label %do.body.205

do.body.205:                                      ; preds = %if.else.204
  %181 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %shr206 = ashr i32 %181, 2
  switch i32 %shr206, label %sw.default.245 [
    i32 0, label %sw.bb.207
    i32 1, label %sw.bb.214
    i32 2, label %sw.bb.219
    i32 3, label %sw.bb.221
    i32 4, label %sw.bb.239
  ]

sw.bb.207:                                        ; preds = %do.body.205
  %182 = load i8*, i8** %sptr, align 8, !tbaa !1
  %183 = load i8, i8* %182, align 1, !tbaa !33
  %conv208 = zext i8 %183 to i32
  %184 = load i32, i32* %sbit, align 4, !tbaa !38
  %sub209 = sub nsw i32 8, %184
  %185 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %sub210 = sub nsw i32 %sub209, %185
  %shr211 = ashr i32 %conv208, %sub210
  %186 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %or212 = or i32 %186, 1
  %and213 = and i32 %shr211, %or212
  store i32 %and213, i32* %source_v, align 4, !tbaa !38
  br label %sw.epilog.246

sw.bb.214:                                        ; preds = %do.body.205
  %187 = load i8*, i8** %sptr, align 8, !tbaa !1
  %188 = load i8, i8* %187, align 1, !tbaa !33
  %conv215 = zext i8 %188 to i32
  %189 = load i32, i32* %sbit, align 4, !tbaa !38
  %sub216 = sub nsw i32 4, %189
  %shr217 = ashr i32 %conv215, %sub216
  %and218 = and i32 %shr217, 15
  store i32 %and218, i32* %source_v, align 4, !tbaa !38
  br label %sw.epilog.246

sw.bb.219:                                        ; preds = %do.body.205
  %190 = load i8*, i8** %sptr, align 8, !tbaa !1
  %191 = load i8, i8* %190, align 1, !tbaa !33
  %conv220 = zext i8 %191 to i32
  store i32 %conv220, i32* %source_v, align 4, !tbaa !38
  br label %sw.epilog.246

sw.bb.221:                                        ; preds = %do.body.205
  %192 = load i32, i32* %sbit, align 4, !tbaa !38
  %tobool222 = icmp ne i32 %192, 0
  br i1 %tobool222, label %cond.true.223, label %cond.false.230

cond.true.223:                                    ; preds = %sw.bb.221
  %193 = load i8*, i8** %sptr, align 8, !tbaa !1
  %194 = load i8, i8* %193, align 1, !tbaa !33
  %conv224 = zext i8 %194 to i32
  %and225 = and i32 %conv224, 15
  %shl226 = shl i32 %and225, 8
  %195 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds i8, i8* %195, i64 1
  %196 = load i8, i8* %arrayidx227, align 1, !tbaa !33
  %conv228 = zext i8 %196 to i32
  %or229 = or i32 %shl226, %conv228
  br label %cond.end.237

cond.false.230:                                   ; preds = %sw.bb.221
  %197 = load i8*, i8** %sptr, align 8, !tbaa !1
  %198 = load i8, i8* %197, align 1, !tbaa !33
  %conv231 = zext i8 %198 to i32
  %shl232 = shl i32 %conv231, 4
  %199 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds i8, i8* %199, i64 1
  %200 = load i8, i8* %arrayidx233, align 1, !tbaa !33
  %conv234 = zext i8 %200 to i32
  %shr235 = ashr i32 %conv234, 4
  %or236 = or i32 %shl232, %shr235
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.230, %cond.true.223
  %cond238 = phi i32 [ %or229, %cond.true.223 ], [ %or236, %cond.false.230 ]
  store i32 %cond238, i32* %source_v, align 4, !tbaa !38
  br label %sw.epilog.246

sw.bb.239:                                        ; preds = %do.body.205
  %201 = load i8*, i8** %sptr, align 8, !tbaa !1
  %202 = load i8, i8* %201, align 1, !tbaa !33
  %conv240 = zext i8 %202 to i32
  %shl241 = shl i32 %conv240, 8
  %203 = load i8*, i8** %sptr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds i8, i8* %203, i64 1
  %204 = load i8, i8* %arrayidx242, align 1, !tbaa !33
  %conv243 = zext i8 %204 to i32
  %or244 = or i32 %shl241, %conv243
  store i32 %or244, i32* %source_v, align 4, !tbaa !38
  br label %sw.epilog.246

sw.default.245:                                   ; preds = %do.body.205
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.496

sw.epilog.246:                                    ; preds = %sw.bb.239, %cond.end.237, %sw.bb.219, %sw.bb.214, %sw.bb.207
  br label %do.cond.247

do.cond.247:                                      ; preds = %sw.epilog.246
  br label %do.end.248

do.end.248:                                       ; preds = %do.cond.247
  br label %do.body.249

do.body.249:                                      ; preds = %do.end.248
  %205 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %206 = load i32, i32* %sbit, align 4, !tbaa !38
  %add250 = add nsw i32 %206, %205
  store i32 %add250, i32* %sbit, align 4, !tbaa !38
  %207 = load i32, i32* %sbit, align 4, !tbaa !38
  %shr251 = ashr i32 %207, 3
  %208 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext252 = sext i32 %shr251 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %208, i64 %idx.ext252
  store i8* %add.ptr253, i8** %sptr, align 8, !tbaa !1
  %209 = load i32, i32* %sbit, align 4, !tbaa !38
  %and254 = and i32 %209, 7
  store i32 %and254, i32* %sbit, align 4, !tbaa !38
  br label %do.cond.255

do.cond.255:                                      ; preds = %do.body.249
  br label %do.end.256

do.end.256:                                       ; preds = %do.cond.255
  br label %if.end.257

if.end.257:                                       ; preds = %do.end.256, %if.then.201
  br label %do.body.258

do.body.258:                                      ; preds = %if.end.257
  %210 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %shr259 = ashr i32 %210, 2
  switch i32 %shr259, label %sw.default.298 [
    i32 0, label %sw.bb.260
    i32 1, label %sw.bb.267
    i32 2, label %sw.bb.272
    i32 3, label %sw.bb.274
    i32 4, label %sw.bb.292
  ]

sw.bb.260:                                        ; preds = %do.body.258
  %211 = load i8*, i8** %dptr, align 8, !tbaa !1
  %212 = load i8, i8* %211, align 1, !tbaa !33
  %conv261 = zext i8 %212 to i32
  %213 = load i32, i32* %dbit, align 4, !tbaa !38
  %sub262 = sub nsw i32 8, %213
  %214 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %sub263 = sub nsw i32 %sub262, %214
  %shr264 = ashr i32 %conv261, %sub263
  %215 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %or265 = or i32 %215, 1
  %and266 = and i32 %shr264, %or265
  store i32 %and266, i32* %dest_v, align 4, !tbaa !38
  br label %sw.epilog.299

sw.bb.267:                                        ; preds = %do.body.258
  %216 = load i8*, i8** %dptr, align 8, !tbaa !1
  %217 = load i8, i8* %216, align 1, !tbaa !33
  %conv268 = zext i8 %217 to i32
  %218 = load i32, i32* %dbit, align 4, !tbaa !38
  %sub269 = sub nsw i32 4, %218
  %shr270 = ashr i32 %conv268, %sub269
  %and271 = and i32 %shr270, 15
  store i32 %and271, i32* %dest_v, align 4, !tbaa !38
  br label %sw.epilog.299

sw.bb.272:                                        ; preds = %do.body.258
  %219 = load i8*, i8** %dptr, align 8, !tbaa !1
  %220 = load i8, i8* %219, align 1, !tbaa !33
  %conv273 = zext i8 %220 to i32
  store i32 %conv273, i32* %dest_v, align 4, !tbaa !38
  br label %sw.epilog.299

sw.bb.274:                                        ; preds = %do.body.258
  %221 = load i32, i32* %dbit, align 4, !tbaa !38
  %tobool275 = icmp ne i32 %221, 0
  br i1 %tobool275, label %cond.true.276, label %cond.false.283

cond.true.276:                                    ; preds = %sw.bb.274
  %222 = load i8*, i8** %dptr, align 8, !tbaa !1
  %223 = load i8, i8* %222, align 1, !tbaa !33
  %conv277 = zext i8 %223 to i32
  %and278 = and i32 %conv277, 15
  %shl279 = shl i32 %and278, 8
  %224 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx280 = getelementptr inbounds i8, i8* %224, i64 1
  %225 = load i8, i8* %arrayidx280, align 1, !tbaa !33
  %conv281 = zext i8 %225 to i32
  %or282 = or i32 %shl279, %conv281
  br label %cond.end.290

cond.false.283:                                   ; preds = %sw.bb.274
  %226 = load i8*, i8** %dptr, align 8, !tbaa !1
  %227 = load i8, i8* %226, align 1, !tbaa !33
  %conv284 = zext i8 %227 to i32
  %shl285 = shl i32 %conv284, 4
  %228 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i8, i8* %228, i64 1
  %229 = load i8, i8* %arrayidx286, align 1, !tbaa !33
  %conv287 = zext i8 %229 to i32
  %shr288 = ashr i32 %conv287, 4
  %or289 = or i32 %shl285, %shr288
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.283, %cond.true.276
  %cond291 = phi i32 [ %or282, %cond.true.276 ], [ %or289, %cond.false.283 ]
  store i32 %cond291, i32* %dest_v, align 4, !tbaa !38
  br label %sw.epilog.299

sw.bb.292:                                        ; preds = %do.body.258
  %230 = load i8*, i8** %dptr, align 8, !tbaa !1
  %231 = load i8, i8* %230, align 1, !tbaa !33
  %conv293 = zext i8 %231 to i32
  %shl294 = shl i32 %conv293, 8
  %232 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds i8, i8* %232, i64 1
  %233 = load i8, i8* %arrayidx295, align 1, !tbaa !33
  %conv296 = zext i8 %233 to i32
  %or297 = or i32 %shl294, %conv296
  store i32 %or297, i32* %dest_v, align 4, !tbaa !38
  br label %sw.epilog.299

sw.default.298:                                   ; preds = %do.body.258
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.496

sw.epilog.299:                                    ; preds = %sw.bb.292, %cond.end.290, %sw.bb.272, %sw.bb.267, %sw.bb.260
  br label %do.cond.300

do.cond.300:                                      ; preds = %sw.epilog.299
  br label %do.end.301

do.end.301:                                       ; preds = %do.cond.300
  br label %if.end.302

if.end.302:                                       ; preds = %do.end.301, %if.then.198
  %234 = load %struct.gs_composite_params_s*, %struct.gs_composite_params_s** %pcp.addr, align 8, !tbaa !1
  %cop303 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %234, i32 0, i32 0
  %235 = load i32, i32* %cop303, align 4, !tbaa !57
  switch i32 %235, label %sw.default.421 [
    i32 0, label %sw.bb.304
    i32 1, label %sw.bb.305
    i32 11, label %sw.bb.306
    i32 12, label %sw.bb.315
    i32 2, label %sw.bb.324
    i32 6, label %sw.bb.336
    i32 3, label %sw.bb.348
    i32 7, label %sw.bb.351
    i32 4, label %sw.bb.354
    i32 8, label %sw.bb.358
    i32 5, label %sw.bb.362
    i32 9, label %sw.bb.376
    i32 10, label %sw.bb.390
    i32 13, label %sw.bb.405
    i32 14, label %sw.bb.414
  ]

sw.bb.304:                                        ; preds = %if.end.302
  store i32 0, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.305:                                        ; preds = %if.end.302
  %236 = load i32, i32* %source_v, align 4, !tbaa !38
  store i32 %236, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.306:                                        ; preds = %if.end.302
  %237 = load i32, i32* %source_v, align 4, !tbaa !38
  %238 = load i32, i32* %dest_v, align 4, !tbaa !38
  %add307 = add i32 %237, %238
  store i32 %add307, i32* %result, align 4, !tbaa !38
  %239 = load i32, i32* %result, align 4, !tbaa !38
  %240 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp308 = icmp ult i32 %239, %240
  br i1 %cmp308, label %cond.true.310, label %cond.false.311

cond.true.310:                                    ; preds = %sw.bb.306
  br label %cond.end.313

cond.false.311:                                   ; preds = %sw.bb.306
  %241 = load i32, i32* %result, align 4, !tbaa !38
  %242 = load i32, i32* %dest_max, align 4, !tbaa !38
  %sub312 = sub i32 %241, %242
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.311, %cond.true.310
  %cond314 = phi i32 [ 0, %cond.true.310 ], [ %sub312, %cond.false.311 ]
  store i32 %cond314, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.315:                                        ; preds = %if.end.302
  br label %do.body.316

do.body.316:                                      ; preds = %sw.bb.315
  %243 = load i32, i32* %source_v, align 4, !tbaa !38
  %244 = load i32, i32* %dest_v, align 4, !tbaa !38
  %add317 = add i32 %243, %244
  store i32 %add317, i32* %result, align 4, !tbaa !38
  %245 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp318 = icmp ugt i32 %add317, %245
  br i1 %cmp318, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %do.body.316
  %246 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %246, i32* %result, align 4, !tbaa !38
  br label %if.end.321

if.end.321:                                       ; preds = %if.then.320, %do.body.316
  br label %do.cond.322

do.cond.322:                                      ; preds = %if.end.321
  br label %do.end.323

do.end.323:                                       ; preds = %do.cond.322
  br label %sw.epilog.422

sw.bb.324:                                        ; preds = %if.end.302
  br label %do.body.325

do.body.325:                                      ; preds = %sw.bb.324
  %247 = load i32, i32* %source_v, align 4, !tbaa !38
  %248 = load i32, i32* %dest_v, align 4, !tbaa !38
  %249 = load i32, i32* %source_max, align 4, !tbaa !38
  %250 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %sub326 = sub i32 %249, %250
  %mul327 = mul i32 %248, %sub326
  %251 = load i32, i32* %source_max, align 4, !tbaa !38
  %div328 = udiv i32 %mul327, %251
  %add329 = add i32 %247, %div328
  store i32 %add329, i32* %result, align 4, !tbaa !38
  %252 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp330 = icmp ugt i32 %add329, %252
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %do.body.325
  %253 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %253, i32* %result, align 4, !tbaa !38
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.332, %do.body.325
  br label %do.cond.334

do.cond.334:                                      ; preds = %if.end.333
  br label %do.end.335

do.end.335:                                       ; preds = %do.cond.334
  br label %sw.epilog.422

sw.bb.336:                                        ; preds = %if.end.302
  br label %do.body.337

do.body.337:                                      ; preds = %sw.bb.336
  %254 = load i32, i32* %source_v, align 4, !tbaa !38
  %255 = load i32, i32* %dest_max, align 4, !tbaa !38
  %256 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  %sub338 = sub i32 %255, %256
  %mul339 = mul i32 %254, %sub338
  %257 = load i32, i32* %source_max, align 4, !tbaa !38
  %div340 = udiv i32 %mul339, %257
  %258 = load i32, i32* %dest_v, align 4, !tbaa !38
  %add341 = add i32 %div340, %258
  store i32 %add341, i32* %result, align 4, !tbaa !38
  %259 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp342 = icmp ugt i32 %add341, %259
  br i1 %cmp342, label %if.then.344, label %if.end.345

if.then.344:                                      ; preds = %do.body.337
  %260 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %260, i32* %result, align 4, !tbaa !38
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.344, %do.body.337
  br label %do.cond.346

do.cond.346:                                      ; preds = %if.end.345
  br label %do.end.347

do.end.347:                                       ; preds = %do.cond.346
  br label %sw.epilog.422

sw.bb.348:                                        ; preds = %if.end.302
  %261 = load i32, i32* %source_v, align 4, !tbaa !38
  %262 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  %mul349 = mul i32 %261, %262
  %263 = load i32, i32* %source_max, align 4, !tbaa !38
  %div350 = udiv i32 %mul349, %263
  store i32 %div350, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.351:                                        ; preds = %if.end.302
  %264 = load i32, i32* %dest_v, align 4, !tbaa !38
  %265 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %mul352 = mul i32 %264, %265
  %266 = load i32, i32* %source_max, align 4, !tbaa !38
  %div353 = udiv i32 %mul352, %266
  store i32 %div353, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.354:                                        ; preds = %if.end.302
  %267 = load i32, i32* %source_v, align 4, !tbaa !38
  %268 = load i32, i32* %dest_max, align 4, !tbaa !38
  %269 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  %sub355 = sub i32 %268, %269
  %mul356 = mul i32 %267, %sub355
  %270 = load i32, i32* %source_max, align 4, !tbaa !38
  %div357 = udiv i32 %mul356, %270
  store i32 %div357, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.358:                                        ; preds = %if.end.302
  %271 = load i32, i32* %dest_v, align 4, !tbaa !38
  %272 = load i32, i32* %source_max, align 4, !tbaa !38
  %273 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %sub359 = sub i32 %272, %273
  %mul360 = mul i32 %271, %sub359
  %274 = load i32, i32* %source_max, align 4, !tbaa !38
  %div361 = udiv i32 %mul360, %274
  store i32 %div361, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.bb.362:                                        ; preds = %if.end.302
  br label %do.body.363

do.body.363:                                      ; preds = %sw.bb.362
  %275 = load i32, i32* %source_v, align 4, !tbaa !38
  %276 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  %mul364 = mul i32 %275, %276
  %277 = load i32, i32* %source_max, align 4, !tbaa !38
  %div365 = udiv i32 %mul364, %277
  %278 = load i32, i32* %dest_v, align 4, !tbaa !38
  %279 = load i32, i32* %source_max, align 4, !tbaa !38
  %280 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %sub366 = sub i32 %279, %280
  %mul367 = mul i32 %278, %sub366
  %281 = load i32, i32* %source_max, align 4, !tbaa !38
  %div368 = udiv i32 %mul367, %281
  %add369 = add i32 %div365, %div368
  store i32 %add369, i32* %result, align 4, !tbaa !38
  %282 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp370 = icmp ugt i32 %add369, %282
  br i1 %cmp370, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %do.body.363
  %283 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %283, i32* %result, align 4, !tbaa !38
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.372, %do.body.363
  br label %do.cond.374

do.cond.374:                                      ; preds = %if.end.373
  br label %do.end.375

do.end.375:                                       ; preds = %do.cond.374
  br label %sw.epilog.422

sw.bb.376:                                        ; preds = %if.end.302
  br label %do.body.377

do.body.377:                                      ; preds = %sw.bb.376
  %284 = load i32, i32* %source_v, align 4, !tbaa !38
  %285 = load i32, i32* %dest_max, align 4, !tbaa !38
  %286 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  %sub378 = sub i32 %285, %286
  %mul379 = mul i32 %284, %sub378
  %287 = load i32, i32* %source_max, align 4, !tbaa !38
  %div380 = udiv i32 %mul379, %287
  %288 = load i32, i32* %dest_v, align 4, !tbaa !38
  %289 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %mul381 = mul i32 %288, %289
  %290 = load i32, i32* %source_max, align 4, !tbaa !38
  %div382 = udiv i32 %mul381, %290
  %add383 = add i32 %div380, %div382
  store i32 %add383, i32* %result, align 4, !tbaa !38
  %291 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp384 = icmp ugt i32 %add383, %291
  br i1 %cmp384, label %if.then.386, label %if.end.387

if.then.386:                                      ; preds = %do.body.377
  %292 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %292, i32* %result, align 4, !tbaa !38
  br label %if.end.387

if.end.387:                                       ; preds = %if.then.386, %do.body.377
  br label %do.cond.388

do.cond.388:                                      ; preds = %if.end.387
  br label %do.end.389

do.end.389:                                       ; preds = %do.cond.388
  br label %sw.epilog.422

sw.bb.390:                                        ; preds = %if.end.302
  br label %do.body.391

do.body.391:                                      ; preds = %sw.bb.390
  %293 = load i32, i32* %source_v, align 4, !tbaa !38
  %294 = load i32, i32* %dest_max, align 4, !tbaa !38
  %295 = load i32, i32* %dest_alpha, align 4, !tbaa !38
  %sub392 = sub i32 %294, %295
  %mul393 = mul i32 %293, %sub392
  %296 = load i32, i32* %source_max, align 4, !tbaa !38
  %div394 = udiv i32 %mul393, %296
  %297 = load i32, i32* %dest_v, align 4, !tbaa !38
  %298 = load i32, i32* %source_max, align 4, !tbaa !38
  %299 = load i32, i32* %source_alpha, align 4, !tbaa !38
  %sub395 = sub i32 %298, %299
  %mul396 = mul i32 %297, %sub395
  %300 = load i32, i32* %source_max, align 4, !tbaa !38
  %div397 = udiv i32 %mul396, %300
  %add398 = add i32 %div394, %div397
  store i32 %add398, i32* %result, align 4, !tbaa !38
  %301 = load i32, i32* %dest_max, align 4, !tbaa !38
  %cmp399 = icmp ugt i32 %add398, %301
  br i1 %cmp399, label %if.then.401, label %if.end.402

if.then.401:                                      ; preds = %do.body.391
  %302 = load i32, i32* %dest_max, align 4, !tbaa !38
  store i32 %302, i32* %result, align 4, !tbaa !38
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.401, %do.body.391
  br label %do.cond.403

do.cond.403:                                      ; preds = %if.end.402
  br label %do.end.404

do.end.404:                                       ; preds = %do.cond.403
  br label %sw.epilog.422

sw.bb.405:                                        ; preds = %if.end.302
  %303 = load i32, i32* %j, align 4, !tbaa !38
  %cmp406 = icmp ne i32 %303, 0
  br i1 %cmp406, label %land.lhs.true, label %if.else.412

land.lhs.true:                                    ; preds = %sw.bb.405
  %304 = load i32, i32* %source_v, align 4, !tbaa !38
  %305 = load i32, i32* %highlight_value, align 4, !tbaa !38
  %xor = xor i32 %304, %305
  %and408 = and i32 %xor, -2
  %tobool409 = icmp ne i32 %and408, 0
  br i1 %tobool409, label %if.else.412, label %if.then.410

if.then.410:                                      ; preds = %land.lhs.true
  %306 = load i32, i32* %source_v, align 4, !tbaa !38
  %xor411 = xor i32 %306, 1
  store i32 %xor411, i32* %result, align 4, !tbaa !38
  br label %if.end.413

if.else.412:                                      ; preds = %land.lhs.true, %sw.bb.405
  %307 = load i32, i32* %source_v, align 4, !tbaa !38
  store i32 %307, i32* %result, align 4, !tbaa !38
  br label %if.end.413

if.end.413:                                       ; preds = %if.else.412, %if.then.410
  br label %sw.epilog.422

sw.bb.414:                                        ; preds = %if.end.302
  %308 = load i32, i32* %source_v, align 4, !tbaa !38
  %conv415 = uitofp i32 %308 to float
  %309 = load float, float* %source_delta, align 4, !tbaa !34
  %mul416 = fmul float %conv415, %309
  %310 = load i32, i32* %dest_v, align 4, !tbaa !38
  %conv417 = uitofp i32 %310 to float
  %311 = load float, float* %dest_delta, align 4, !tbaa !34
  %mul418 = fmul float %conv417, %311
  %add419 = fadd float %mul416, %mul418
  %conv420 = fptoui float %add419 to i32
  store i32 %conv420, i32* %result, align 4, !tbaa !38
  br label %sw.epilog.422

sw.default.421:                                   ; preds = %if.end.302
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.496

sw.epilog.422:                                    ; preds = %sw.bb.414, %if.end.413, %do.end.404, %do.end.389, %do.end.375, %sw.bb.358, %sw.bb.354, %sw.bb.351, %sw.bb.348, %do.end.347, %do.end.335, %do.end.323, %cond.end.313, %sw.bb.305, %sw.bb.304
  %312 = load i32, i32* %j, align 4, !tbaa !38
  %cmp423 = icmp eq i32 %312, 0
  br i1 %cmp423, label %land.lhs.true.425, label %if.end.429

land.lhs.true.425:                                ; preds = %sw.epilog.422
  %313 = load i32, i32* %dest_alpha_j, align 4, !tbaa !38
  %cmp426 = icmp ne i32 %313, 0
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %land.lhs.true.425
  %314 = load i32, i32* %result, align 4, !tbaa !38
  store i32 %314, i32* %result_alpha, align 4, !tbaa !38
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.496

if.end.429:                                       ; preds = %land.lhs.true.425, %sw.epilog.422
  br label %do.body.430

do.body.430:                                      ; preds = %if.end.429
  %315 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %shr431 = ashr i32 %315, 2
  switch i32 %shr431, label %sw.default.492 [
    i32 0, label %sw.bb.432
    i32 1, label %sw.bb.451
    i32 3, label %sw.bb.465
    i32 4, label %sw.bb.485
    i32 2, label %sw.bb.489
  ]

sw.bb.432:                                        ; preds = %do.body.430
  %316 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %317 = load i32, i32* %dbit, align 4, !tbaa !38
  %add433 = add nsw i32 %317, %316
  store i32 %add433, i32* %dbit, align 4, !tbaa !38
  %cmp434 = icmp eq i32 %add433, 8
  br i1 %cmp434, label %if.then.436, label %if.else.442

if.then.436:                                      ; preds = %sw.bb.432
  %318 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv437 = zext i8 %318 to i32
  %319 = load i32, i32* %result, align 4, !tbaa !38
  %conv438 = trunc i32 %319 to i8
  %conv439 = zext i8 %conv438 to i32
  %or440 = or i32 %conv437, %conv439
  %conv441 = trunc i32 %or440 to i8
  %320 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %incdec.ptr, i8** %dptr, align 8, !tbaa !1
  store i8 %conv441, i8* %320, align 1, !tbaa !33
  store i8 0, i8* %dbyte, align 1, !tbaa !33
  store i32 0, i32* %dbit, align 4, !tbaa !38
  br label %if.end.450

if.else.442:                                      ; preds = %sw.bb.432
  %321 = load i32, i32* %result, align 4, !tbaa !38
  %322 = load i32, i32* %dbit, align 4, !tbaa !38
  %sub443 = sub nsw i32 8, %322
  %shl444 = shl i32 %321, %sub443
  %conv445 = trunc i32 %shl444 to i8
  %conv446 = zext i8 %conv445 to i32
  %323 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv447 = zext i8 %323 to i32
  %or448 = or i32 %conv447, %conv446
  %conv449 = trunc i32 %or448 to i8
  store i8 %conv449, i8* %dbyte, align 1, !tbaa !33
  br label %if.end.450

if.end.450:                                       ; preds = %if.else.442, %if.then.436
  br label %sw.epilog.493

sw.bb.451:                                        ; preds = %do.body.430
  %324 = load i32, i32* %dbit, align 4, !tbaa !38
  %xor452 = xor i32 %324, 4
  store i32 %xor452, i32* %dbit, align 4, !tbaa !38
  %tobool453 = icmp ne i32 %xor452, 0
  br i1 %tobool453, label %if.then.454, label %if.else.457

if.then.454:                                      ; preds = %sw.bb.451
  %325 = load i32, i32* %result, align 4, !tbaa !38
  %shl455 = shl i32 %325, 4
  %conv456 = trunc i32 %shl455 to i8
  store i8 %conv456, i8* %dbyte, align 1, !tbaa !33
  br label %if.end.464

if.else.457:                                      ; preds = %sw.bb.451
  %326 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv458 = zext i8 %326 to i32
  %327 = load i32, i32* %result, align 4, !tbaa !38
  %conv459 = trunc i32 %327 to i8
  %conv460 = zext i8 %conv459 to i32
  %or461 = or i32 %conv458, %conv460
  %conv462 = trunc i32 %or461 to i8
  %328 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr463 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %incdec.ptr463, i8** %dptr, align 8, !tbaa !1
  store i8 %conv462, i8* %328, align 1, !tbaa !33
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.457, %if.then.454
  br label %sw.epilog.493

sw.bb.465:                                        ; preds = %do.body.430
  %329 = load i32, i32* %dbit, align 4, !tbaa !38
  %xor466 = xor i32 %329, 4
  store i32 %xor466, i32* %dbit, align 4, !tbaa !38
  %tobool467 = icmp ne i32 %xor466, 0
  br i1 %tobool467, label %if.then.468, label %if.else.474

if.then.468:                                      ; preds = %sw.bb.465
  %330 = load i32, i32* %result, align 4, !tbaa !38
  %shr469 = lshr i32 %330, 4
  %conv470 = trunc i32 %shr469 to i8
  %331 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr471 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %incdec.ptr471, i8** %dptr, align 8, !tbaa !1
  store i8 %conv470, i8* %331, align 1, !tbaa !33
  %332 = load i32, i32* %result, align 4, !tbaa !38
  %shl472 = shl i32 %332, 4
  %conv473 = trunc i32 %shl472 to i8
  store i8 %conv473, i8* %dbyte, align 1, !tbaa !33
  br label %if.end.484

if.else.474:                                      ; preds = %sw.bb.465
  %333 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv475 = zext i8 %333 to i32
  %334 = load i32, i32* %result, align 4, !tbaa !38
  %shr476 = lshr i32 %334, 8
  %conv477 = trunc i32 %shr476 to i8
  %conv478 = zext i8 %conv477 to i32
  %or479 = or i32 %conv475, %conv478
  %conv480 = trunc i32 %or479 to i8
  %335 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv480, i8* %335, align 1, !tbaa !33
  %336 = load i32, i32* %result, align 4, !tbaa !38
  %conv481 = trunc i32 %336 to i8
  %337 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx482 = getelementptr inbounds i8, i8* %337, i64 1
  store i8 %conv481, i8* %arrayidx482, align 1, !tbaa !33
  %338 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr483 = getelementptr inbounds i8, i8* %338, i64 2
  store i8* %add.ptr483, i8** %dptr, align 8, !tbaa !1
  br label %if.end.484

if.end.484:                                       ; preds = %if.else.474, %if.then.468
  br label %sw.epilog.493

sw.bb.485:                                        ; preds = %do.body.430
  %339 = load i32, i32* %result, align 4, !tbaa !38
  %shr486 = lshr i32 %339, 8
  %conv487 = trunc i32 %shr486 to i8
  %340 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr488 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr488, i8** %dptr, align 8, !tbaa !1
  store i8 %conv487, i8* %340, align 1, !tbaa !33
  br label %sw.bb.489

sw.bb.489:                                        ; preds = %do.body.430, %sw.bb.485
  %341 = load i32, i32* %result, align 4, !tbaa !38
  %conv490 = trunc i32 %341 to i8
  %342 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr491 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %incdec.ptr491, i8** %dptr, align 8, !tbaa !1
  store i8 %conv490, i8* %342, align 1, !tbaa !33
  br label %sw.epilog.493

sw.default.492:                                   ; preds = %do.body.430
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.496

sw.epilog.493:                                    ; preds = %sw.bb.489, %if.end.484, %if.end.464, %if.end.450
  br label %do.cond.494

do.cond.494:                                      ; preds = %sw.epilog.493
  br label %do.end.495

do.end.495:                                       ; preds = %do.cond.494
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.496

cleanup.496:                                      ; preds = %do.end.495, %sw.default.492, %if.then.428, %sw.default.421, %sw.default.298, %sw.default.245
  %343 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %343) #2
  %344 = bitcast i32* %source_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %344) #2
  %345 = bitcast i32* %dest_v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %345) #2
  %cleanup.dest.499 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.499, label %cleanup.584 [
    i32 0, label %cleanup.cont.500
    i32 17, label %for.inc
  ]

cleanup.cont.500:                                 ; preds = %cleanup.496
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont.500, %cleanup.496
  %346 = load i32, i32* %j, align 4, !tbaa !38
  %inc = add nsw i32 %346, 1
  store i32 %inc, i32* %j, align 4, !tbaa !38
  br label %for.cond.192

for.end:                                          ; preds = %for.cond.192
  %347 = load i32, i32* %source_alpha_j, align 4, !tbaa !38
  %cmp501 = icmp sgt i32 %347, 0
  br i1 %cmp501, label %if.then.503, label %if.end.512

if.then.503:                                      ; preds = %for.end
  br label %do.body.504

do.body.504:                                      ; preds = %if.then.503
  %348 = load i32, i32* %source_bpv, align 4, !tbaa !38
  %349 = load i32, i32* %sbit, align 4, !tbaa !38
  %add505 = add nsw i32 %349, %348
  store i32 %add505, i32* %sbit, align 4, !tbaa !38
  %350 = load i32, i32* %sbit, align 4, !tbaa !38
  %shr506 = ashr i32 %350, 3
  %351 = load i8*, i8** %sptr, align 8, !tbaa !1
  %idx.ext507 = sext i32 %shr506 to i64
  %add.ptr508 = getelementptr inbounds i8, i8* %351, i64 %idx.ext507
  store i8* %add.ptr508, i8** %sptr, align 8, !tbaa !1
  %352 = load i32, i32* %sbit, align 4, !tbaa !38
  %and509 = and i32 %352, 7
  store i32 %and509, i32* %sbit, align 4, !tbaa !38
  br label %do.cond.510

do.cond.510:                                      ; preds = %do.body.504
  br label %do.end.511

do.end.511:                                       ; preds = %do.cond.510
  br label %if.end.512

if.end.512:                                       ; preds = %do.end.511, %for.end
  %353 = load i32, i32* %dest_alpha_j, align 4, !tbaa !38
  %cmp513 = icmp sgt i32 %353, 0
  br i1 %cmp513, label %if.then.515, label %if.end.583

if.then.515:                                      ; preds = %if.end.512
  br label %do.body.516

do.body.516:                                      ; preds = %if.then.515
  %354 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %shr517 = ashr i32 %354, 2
  switch i32 %shr517, label %sw.default.579 [
    i32 0, label %sw.bb.518
    i32 1, label %sw.bb.538
    i32 3, label %sw.bb.552
    i32 4, label %sw.bb.572
    i32 2, label %sw.bb.576
  ]

sw.bb.518:                                        ; preds = %do.body.516
  %355 = load i32, i32* %dest_bpv, align 4, !tbaa !38
  %356 = load i32, i32* %dbit, align 4, !tbaa !38
  %add519 = add nsw i32 %356, %355
  store i32 %add519, i32* %dbit, align 4, !tbaa !38
  %cmp520 = icmp eq i32 %add519, 8
  br i1 %cmp520, label %if.then.522, label %if.else.529

if.then.522:                                      ; preds = %sw.bb.518
  %357 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv523 = zext i8 %357 to i32
  %358 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %conv524 = trunc i32 %358 to i8
  %conv525 = zext i8 %conv524 to i32
  %or526 = or i32 %conv523, %conv525
  %conv527 = trunc i32 %or526 to i8
  %359 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr528 = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %incdec.ptr528, i8** %dptr, align 8, !tbaa !1
  store i8 %conv527, i8* %359, align 1, !tbaa !33
  store i8 0, i8* %dbyte, align 1, !tbaa !33
  store i32 0, i32* %dbit, align 4, !tbaa !38
  br label %if.end.537

if.else.529:                                      ; preds = %sw.bb.518
  %360 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %361 = load i32, i32* %dbit, align 4, !tbaa !38
  %sub530 = sub nsw i32 8, %361
  %shl531 = shl i32 %360, %sub530
  %conv532 = trunc i32 %shl531 to i8
  %conv533 = zext i8 %conv532 to i32
  %362 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv534 = zext i8 %362 to i32
  %or535 = or i32 %conv534, %conv533
  %conv536 = trunc i32 %or535 to i8
  store i8 %conv536, i8* %dbyte, align 1, !tbaa !33
  br label %if.end.537

if.end.537:                                       ; preds = %if.else.529, %if.then.522
  br label %sw.epilog.580

sw.bb.538:                                        ; preds = %do.body.516
  %363 = load i32, i32* %dbit, align 4, !tbaa !38
  %xor539 = xor i32 %363, 4
  store i32 %xor539, i32* %dbit, align 4, !tbaa !38
  %tobool540 = icmp ne i32 %xor539, 0
  br i1 %tobool540, label %if.then.541, label %if.else.544

if.then.541:                                      ; preds = %sw.bb.538
  %364 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %shl542 = shl i32 %364, 4
  %conv543 = trunc i32 %shl542 to i8
  store i8 %conv543, i8* %dbyte, align 1, !tbaa !33
  br label %if.end.551

if.else.544:                                      ; preds = %sw.bb.538
  %365 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv545 = zext i8 %365 to i32
  %366 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %conv546 = trunc i32 %366 to i8
  %conv547 = zext i8 %conv546 to i32
  %or548 = or i32 %conv545, %conv547
  %conv549 = trunc i32 %or548 to i8
  %367 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr550 = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %incdec.ptr550, i8** %dptr, align 8, !tbaa !1
  store i8 %conv549, i8* %367, align 1, !tbaa !33
  br label %if.end.551

if.end.551:                                       ; preds = %if.else.544, %if.then.541
  br label %sw.epilog.580

sw.bb.552:                                        ; preds = %do.body.516
  %368 = load i32, i32* %dbit, align 4, !tbaa !38
  %xor553 = xor i32 %368, 4
  store i32 %xor553, i32* %dbit, align 4, !tbaa !38
  %tobool554 = icmp ne i32 %xor553, 0
  br i1 %tobool554, label %if.then.555, label %if.else.561

if.then.555:                                      ; preds = %sw.bb.552
  %369 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %shr556 = lshr i32 %369, 4
  %conv557 = trunc i32 %shr556 to i8
  %370 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr558 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %incdec.ptr558, i8** %dptr, align 8, !tbaa !1
  store i8 %conv557, i8* %370, align 1, !tbaa !33
  %371 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %shl559 = shl i32 %371, 4
  %conv560 = trunc i32 %shl559 to i8
  store i8 %conv560, i8* %dbyte, align 1, !tbaa !33
  br label %if.end.571

if.else.561:                                      ; preds = %sw.bb.552
  %372 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv562 = zext i8 %372 to i32
  %373 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %shr563 = lshr i32 %373, 8
  %conv564 = trunc i32 %shr563 to i8
  %conv565 = zext i8 %conv564 to i32
  %or566 = or i32 %conv562, %conv565
  %conv567 = trunc i32 %or566 to i8
  %374 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv567, i8* %374, align 1, !tbaa !33
  %375 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %conv568 = trunc i32 %375 to i8
  %376 = load i8*, i8** %dptr, align 8, !tbaa !1
  %arrayidx569 = getelementptr inbounds i8, i8* %376, i64 1
  store i8 %conv568, i8* %arrayidx569, align 1, !tbaa !33
  %377 = load i8*, i8** %dptr, align 8, !tbaa !1
  %add.ptr570 = getelementptr inbounds i8, i8* %377, i64 2
  store i8* %add.ptr570, i8** %dptr, align 8, !tbaa !1
  br label %if.end.571

if.end.571:                                       ; preds = %if.else.561, %if.then.555
  br label %sw.epilog.580

sw.bb.572:                                        ; preds = %do.body.516
  %378 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %shr573 = lshr i32 %378, 8
  %conv574 = trunc i32 %shr573 to i8
  %379 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr575 = getelementptr inbounds i8, i8* %379, i32 1
  store i8* %incdec.ptr575, i8** %dptr, align 8, !tbaa !1
  store i8 %conv574, i8* %379, align 1, !tbaa !33
  br label %sw.bb.576

sw.bb.576:                                        ; preds = %do.body.516, %sw.bb.572
  %380 = load i32, i32* %result_alpha, align 4, !tbaa !38
  %conv577 = trunc i32 %380 to i8
  %381 = load i8*, i8** %dptr, align 8, !tbaa !1
  %incdec.ptr578 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %incdec.ptr578, i8** %dptr, align 8, !tbaa !1
  store i8 %conv577, i8* %381, align 1, !tbaa !33
  br label %sw.epilog.580

sw.default.579:                                   ; preds = %do.body.516
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.584

sw.epilog.580:                                    ; preds = %sw.bb.576, %if.end.571, %if.end.551, %if.end.537
  br label %do.cond.581

do.cond.581:                                      ; preds = %sw.epilog.580
  br label %do.end.582

do.end.582:                                       ; preds = %do.cond.581
  br label %if.end.583

if.end.583:                                       ; preds = %do.end.582, %if.end.512
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.584

cleanup.584:                                      ; preds = %if.end.583, %sw.default.579, %cleanup.496, %cleanup.187, %cleanup.114
  %382 = bitcast i32* %result_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %382) #2
  %383 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %383) #2
  %cleanup.dest.586 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.586, label %cleanup.601 [
    i32 0, label %cleanup.cont.587
  ]

cleanup.cont.587:                                 ; preds = %cleanup.584
  br label %for.inc.588

for.inc.588:                                      ; preds = %cleanup.cont.587
  %384 = load i32, i32* %x, align 4, !tbaa !38
  %inc589 = add i32 %384, 1
  store i32 %inc589, i32* %x, align 4, !tbaa !38
  br label %for.cond

for.end.590:                                      ; preds = %for.cond
  %385 = load i32, i32* %dbit, align 4, !tbaa !38
  %cmp591 = icmp ne i32 %385, 0
  br i1 %cmp591, label %if.then.593, label %if.end.600

if.then.593:                                      ; preds = %for.end.590
  %386 = load i8, i8* %dbyte, align 1, !tbaa !33
  %conv594 = zext i8 %386 to i32
  %387 = load i8*, i8** %dptr, align 8, !tbaa !1
  %388 = load i8, i8* %387, align 1, !tbaa !33
  %conv595 = zext i8 %388 to i32
  %389 = load i32, i32* %dbit, align 4, !tbaa !38
  %shr596 = ashr i32 255, %389
  %and597 = and i32 %conv595, %shr596
  %or598 = or i32 %conv594, %and597
  %conv599 = trunc i32 %or598 to i8
  %390 = load i8*, i8** %dptr, align 8, !tbaa !1
  store i8 %conv599, i8* %390, align 1, !tbaa !33
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.593, %for.end.590
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.601

cleanup.601:                                      ; preds = %if.end.600, %cleanup.584, %cleanup
  %391 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %391) #2
  %392 = bitcast i32* %dest_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %392) #2
  %393 = bitcast i32* %source_alpha to i8*
  call void @llvm.lifetime.end(i64 4, i8* %393) #2
  %394 = bitcast float* %dest_delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %394) #2
  %395 = bitcast float* %source_delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %395) #2
  %396 = bitcast i32* %dest_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %396) #2
  %397 = bitcast i32* %source_max to i8*
  call void @llvm.lifetime.end(i64 4, i8* %397) #2
  %cleanup.dest.608 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.608, label %cleanup.610 [
    i32 0, label %cleanup.cont.609
  ]

cleanup.cont.609:                                 ; preds = %cleanup.601
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.610

cleanup.610:                                      ; preds = %cleanup.cont.609, %cleanup.601
  call void @llvm.lifetime.end(i64 1, i8* %dbyte) #2
  %398 = bitcast i32* %dbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %398) #2
  %399 = bitcast i8** %dptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %399) #2
  %400 = bitcast i32* %sbit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %400) #2
  %401 = bitcast i8** %sptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %401) #2
  %402 = bitcast i32* %highlight_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %402) #2
  %403 = bitcast i32* %constant_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %403) #2
  %404 = bitcast i32* %source_vpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %404) #2
  %405 = bitcast i32* %dest_vpp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %405) #2
  %406 = bitcast i32* %dest_alpha_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %406) #2
  %407 = bitcast i32* %source_alpha_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %407) #2
  %408 = bitcast i32* %source_bpv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %408) #2
  %409 = bitcast i32* %dest_bpv to i8*
  call void @llvm.lifetime.end(i64 4, i8* %409) #2
  %410 = load i32, i32* %retval
  ret i32 %410
}

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #1

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

declare void @gx_device_init(%struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i32) #1

declare void @gx_device_copy_params(%struct.gx_device_s*, %struct.gx_device_s*) #1

declare void @gx_device_set_target(%struct.gx_device_forward_s*, %struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @device_c_alpha_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store i32 %index, i32* %index.addr, align 4, !tbaa !38
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 4), align 8, !tbaa !58
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %3 = load i32, i32* %size.addr, align 4, !tbaa !38
  %4 = load i32, i32* %index.addr, align 4, !tbaa !38
  %sub = sub nsw i32 %4, 0
  %5 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %0(%struct.gs_memory_s* %1, i8* %2, i32 %3, i32 %sub, %struct.enum_ptr_s* %5, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %6) #4
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @device_c_alpha_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !38
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_forward, i32 0, i32 5), align 8, !tbaa !60
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !38
  %3 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %0(i8* %1, i32 %2, %struct.gs_memory_struct_type_s* @st_device_forward, %struct.gc_state_s* %3) #4
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #1

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #1

declare i32 @gx_default_open_device(%struct.gx_device_s*) #1

declare void @gx_forward_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #1

declare i32 @gx_default_sync_output(%struct.gx_device_s*) #1

declare i32 @gx_default_output_page(%struct.gx_device_s*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @dca_close(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  store i32 (%struct.gx_device_s*)* @gx_default_close_device, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !61
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 3
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !62
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %3 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !62
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_s* %6 to i8*
  call void %3(%struct.gs_memory_s* %5, i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0)) #4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @dca_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2, !tbaa !64
  %3 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx1, align 2, !tbaa !64
  %5 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 2
  %6 = load i16, i16* %arrayidx2, align 2, !tbaa !64
  %call = call i64 @dca_map_rgb_alpha_color(%struct.gx_device_s* %0, i16 zeroext %2, i16 zeroext %4, i16 zeroext %6, i16 zeroext -1) #4
  ret i64 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dca_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %red = alloca i16, align 2
  %a = alloca i8, align 1
  %green = alloca i16, align 2
  %blue = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !65
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %red to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr = lshr i64 %1, 24
  %conv = trunc i64 %shr to i8
  %conv1 = zext i8 %conv to i32
  %shl = shl i32 %conv1, 8
  %2 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr2 = lshr i64 %2, 24
  %conv3 = trunc i64 %shr2 to i8
  %conv4 = zext i8 %conv3 to i32
  %shr5 = ashr i32 %conv4, 0
  %add = add nsw i32 %shl, %shr5
  %conv6 = trunc i32 %add to i16
  store i16 %conv6, i16* %red, align 2, !tbaa !64
  call void @llvm.lifetime.start(i64 1, i8* %a) #2
  %3 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv7 = trunc i64 %3 to i8
  store i8 %conv7, i8* %a, align 1, !tbaa !33
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !14
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else.26

if.then:                                          ; preds = %entry
  %6 = load i8, i8* %a, align 1, !tbaa !33
  %conv9 = zext i8 %6 to i32
  %cmp10 = icmp ne i32 %conv9, 255
  br i1 %cmp10, label %if.then.12, label %if.end.23

if.then.12:                                       ; preds = %if.then
  %7 = load i8, i8* %a, align 1, !tbaa !33
  %conv13 = zext i8 %7 to i32
  %cmp14 = icmp eq i32 %conv13, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.12
  store i16 0, i16* %red, align 2, !tbaa !64
  br label %if.end

if.else:                                          ; preds = %if.then.12
  %8 = load i16, i16* %red, align 2, !tbaa !64
  %conv17 = zext i16 %8 to i32
  %mul = mul nsw i32 %conv17, 255
  %9 = load i8, i8* %a, align 1, !tbaa !33
  %conv18 = zext i8 %9 to i32
  %div = sdiv i32 %conv18, 2
  %add19 = add nsw i32 %mul, %div
  %10 = load i8, i8* %a, align 1, !tbaa !33
  %conv20 = zext i8 %10 to i32
  %div21 = sdiv i32 %add19, %conv20
  %conv22 = trunc i32 %div21 to i16
  store i16 %conv22, i16* %red, align 2, !tbaa !64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then
  %11 = load i16, i16* %red, align 2, !tbaa !64
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %11, i16* %arrayidx, align 2, !tbaa !64
  %13 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %13, i64 1
  store i16 %11, i16* %arrayidx24, align 2, !tbaa !64
  %14 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %11, i16* %arrayidx25, align 2, !tbaa !64
  br label %if.end.85

if.else.26:                                       ; preds = %entry
  %15 = bitcast i16* %green to i8*
  call void @llvm.lifetime.start(i64 2, i8* %15) #2
  %16 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr27 = lshr i64 %16, 16
  %conv28 = trunc i64 %shr27 to i8
  %conv29 = zext i8 %conv28 to i32
  %shl30 = shl i32 %conv29, 8
  %17 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr31 = lshr i64 %17, 16
  %conv32 = trunc i64 %shr31 to i8
  %conv33 = zext i8 %conv32 to i32
  %shr34 = ashr i32 %conv33, 0
  %add35 = add nsw i32 %shl30, %shr34
  %conv36 = trunc i32 %add35 to i16
  store i16 %conv36, i16* %green, align 2, !tbaa !64
  %18 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.start(i64 2, i8* %18) #2
  %19 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr37 = lshr i64 %19, 8
  %conv38 = trunc i64 %shr37 to i8
  %conv39 = zext i8 %conv38 to i32
  %shl40 = shl i32 %conv39, 8
  %20 = load i64, i64* %color.addr, align 8, !tbaa !65
  %shr41 = lshr i64 %20, 8
  %conv42 = trunc i64 %shr41 to i8
  %conv43 = zext i8 %conv42 to i32
  %shr44 = ashr i32 %conv43, 0
  %add45 = add nsw i32 %shl40, %shr44
  %conv46 = trunc i32 %add45 to i16
  store i16 %conv46, i16* %blue, align 2, !tbaa !64
  %21 = load i8, i8* %a, align 1, !tbaa !33
  %conv47 = zext i8 %21 to i32
  %cmp48 = icmp ne i32 %conv47, 255
  br i1 %cmp48, label %if.then.50, label %if.end.81

if.then.50:                                       ; preds = %if.else.26
  %22 = load i8, i8* %a, align 1, !tbaa !33
  %conv51 = zext i8 %22 to i32
  %cmp52 = icmp eq i32 %conv51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.50
  store i16 0, i16* %blue, align 2, !tbaa !64
  store i16 0, i16* %green, align 2, !tbaa !64
  store i16 0, i16* %red, align 2, !tbaa !64
  br label %if.end.80

if.else.55:                                       ; preds = %if.then.50
  %23 = load i16, i16* %red, align 2, !tbaa !64
  %conv56 = zext i16 %23 to i32
  %mul57 = mul nsw i32 %conv56, 255
  %24 = load i8, i8* %a, align 1, !tbaa !33
  %conv58 = zext i8 %24 to i32
  %div59 = sdiv i32 %conv58, 2
  %add60 = add nsw i32 %mul57, %div59
  %25 = load i8, i8* %a, align 1, !tbaa !33
  %conv61 = zext i8 %25 to i32
  %div62 = sdiv i32 %add60, %conv61
  %conv63 = trunc i32 %div62 to i16
  store i16 %conv63, i16* %red, align 2, !tbaa !64
  %26 = load i16, i16* %green, align 2, !tbaa !64
  %conv64 = zext i16 %26 to i32
  %mul65 = mul nsw i32 %conv64, 255
  %27 = load i8, i8* %a, align 1, !tbaa !33
  %conv66 = zext i8 %27 to i32
  %div67 = sdiv i32 %conv66, 2
  %add68 = add nsw i32 %mul65, %div67
  %28 = load i8, i8* %a, align 1, !tbaa !33
  %conv69 = zext i8 %28 to i32
  %div70 = sdiv i32 %add68, %conv69
  %conv71 = trunc i32 %div70 to i16
  store i16 %conv71, i16* %green, align 2, !tbaa !64
  %29 = load i16, i16* %blue, align 2, !tbaa !64
  %conv72 = zext i16 %29 to i32
  %mul73 = mul nsw i32 %conv72, 255
  %30 = load i8, i8* %a, align 1, !tbaa !33
  %conv74 = zext i8 %30 to i32
  %div75 = sdiv i32 %conv74, 2
  %add76 = add nsw i32 %mul73, %div75
  %31 = load i8, i8* %a, align 1, !tbaa !33
  %conv77 = zext i8 %31 to i32
  %div78 = sdiv i32 %add76, %conv77
  %conv79 = trunc i32 %div78 to i16
  store i16 %conv79, i16* %blue, align 2, !tbaa !64
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.else.26
  %32 = load i16, i16* %red, align 2, !tbaa !64
  %33 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds i16, i16* %33, i64 0
  store i16 %32, i16* %arrayidx82, align 2, !tbaa !64
  %34 = load i16, i16* %green, align 2, !tbaa !64
  %35 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i16, i16* %35, i64 1
  store i16 %34, i16* %arrayidx83, align 2, !tbaa !64
  %36 = load i16, i16* %blue, align 2, !tbaa !64
  %37 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds i16, i16* %37, i64 2
  store i16 %36, i16* %arrayidx84, align 2, !tbaa !64
  %38 = bitcast i16* %blue to i8*
  call void @llvm.lifetime.end(i64 2, i8* %38) #2
  %39 = bitcast i16* %green to i8*
  call void @llvm.lifetime.end(i64 2, i8* %39) #2
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.81, %if.end.23
  call void @llvm.lifetime.end(i64 1, i8* %a) #2
  %40 = bitcast i16* %red to i8*
  call void @llvm.lifetime.end(i64 2, i8* %40) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @dca_fill_rectangle(%struct.gx_device_s* %dev, i32 %x, i32 %y, i32 %w, i32 %h, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %adev = alloca %struct.gx_device_composite_alpha_s*, align 8
  %target = alloca %struct.gx_device_s*, align 8
  %std_row = alloca i8*, align 8
  %native_row = alloca i8*, align 8
  %rect = alloca %struct.gs_int_rect_s, align 4
  %std_params = alloca %struct.gs_get_bits_params_s, align 8
  %native_params = alloca %struct.gs_get_bits_params_s, align 8
  %code = alloca i32, align 4
  %yi = alloca i32, align 4
  %cp = alloca %struct.gs_composite_params_s, align 4
  %source = alloca %struct.const_pixel_row_s, align 8
  %dest = alloca %struct.pixel_row_s, align 8
  %cleanup.dest.slot = alloca i32
  %rgba = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x, i32* %x.addr, align 4, !tbaa !38
  store i32 %y, i32* %y.addr, align 4, !tbaa !38
  store i32 %w, i32* %w.addr, align 4, !tbaa !38
  store i32 %h, i32* %h.addr, align 4, !tbaa !38
  store i64 %color, i64* %color.addr, align 8, !tbaa !65
  %0 = bitcast %struct.gx_device_composite_alpha_s** %adev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_composite_alpha_s*
  store %struct.gx_device_composite_alpha_s* %2, %struct.gx_device_composite_alpha_s** %adev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %adev, align 8, !tbaa !1
  %target1 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %4, i32 0, i32 43
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %target1, align 8, !tbaa !66
  store %struct.gx_device_s* %5, %struct.gx_device_s** %target, align 8, !tbaa !1
  %6 = bitcast i8** %std_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %native_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %9 = bitcast %struct.gs_get_bits_params_s* %std_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %9) #2
  %10 = bitcast %struct.gs_get_bits_params_s* %native_params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %10) #2
  %11 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %code, align 4, !tbaa !38
  %12 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast %struct.gs_composite_params_s* %cp to i8*
  call void @llvm.lifetime.start(i64 28, i8* %13) #2
  %14 = bitcast %struct.const_pixel_row_s* %source to i8*
  call void @llvm.lifetime.start(i64 24, i8* %14) #2
  %15 = bitcast %struct.pixel_row_s* %dest to i8*
  call void @llvm.lifetime.start(i64 24, i8* %15) #2
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %do.body.2
  %16 = load i32, i32* %x.addr, align 4, !tbaa !38
  %17 = load i32, i32* %y.addr, align 4, !tbaa !38
  %or = or i32 %16, %17
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %do.body.3
  %18 = load i32, i32* %x.addr, align 4, !tbaa !38
  %cmp4 = icmp slt i32 %18, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %19 = load i32, i32* %x.addr, align 4, !tbaa !38
  %20 = load i32, i32* %w.addr, align 4, !tbaa !38
  %add = add nsw i32 %20, %19
  store i32 %add, i32* %w.addr, align 4, !tbaa !38
  store i32 0, i32* %x.addr, align 4, !tbaa !38
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %21 = load i32, i32* %y.addr, align 4, !tbaa !38
  %cmp6 = icmp slt i32 %21, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %22 = load i32, i32* %y.addr, align 4, !tbaa !38
  %23 = load i32, i32* %h.addr, align 4, !tbaa !38
  %add8 = add nsw i32 %23, %22
  store i32 %add8, i32* %h.addr, align 4, !tbaa !38
  store i32 0, i32* %y.addr, align 4, !tbaa !38
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %24 = load i32, i32* %w.addr, align 4, !tbaa !38
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width, align 4, !tbaa !67
  %27 = load i32, i32* %x.addr, align 4, !tbaa !38
  %sub = sub nsw i32 %26, %27
  %cmp12 = icmp sgt i32 %24, %sub
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.body.11
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width14, align 4, !tbaa !67
  %30 = load i32, i32* %x.addr, align 4, !tbaa !38
  %sub15 = sub nsw i32 %29, %30
  store i32 %sub15, i32* %w.addr, align 4, !tbaa !38
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.body.11
  br label %do.cond.17

do.cond.17:                                       ; preds = %if.end.16
  br label %do.end.18

do.end.18:                                        ; preds = %do.cond.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %31 = load i32, i32* %h.addr, align 4, !tbaa !38
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 14
  %33 = load i32, i32* %height, align 4, !tbaa !68
  %34 = load i32, i32* %y.addr, align 4, !tbaa !38
  %sub20 = sub nsw i32 %33, %34
  %cmp21 = icmp sgt i32 %31, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.body.19
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height23, align 4, !tbaa !68
  %37 = load i32, i32* %y.addr, align 4, !tbaa !38
  %sub24 = sub nsw i32 %36, %37
  store i32 %sub24, i32* %h.addr, align 4, !tbaa !38
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.body.19
  br label %do.cond.26

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %do.cond.28

do.cond.28:                                       ; preds = %do.end.27
  br label %do.end.29

do.end.29:                                        ; preds = %do.cond.28
  %38 = load i32, i32* %w.addr, align 4, !tbaa !38
  %cmp30 = icmp sle i32 %38, 0
  br i1 %cmp30, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.29
  %39 = load i32, i32* %h.addr, align 4, !tbaa !38
  %cmp31 = icmp sle i32 %39, 0
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %do.end.29
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %lor.lhs.false
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !62
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %42 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !69
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !62
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %46 = load i16, i16* %depth, align 2, !tbaa !70
  %conv = zext i16 %46 to i32
  %47 = load i32, i32* %w.addr, align 4, !tbaa !38
  %mul = mul nsw i32 %conv, %47
  %add37 = add nsw i32 %mul, 7
  %shr = ashr i32 %add37, 3
  %call = call i8* %42(%struct.gs_memory_s* %44, i32 %shr, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #4
  store i8* %call, i8** %std_row, align 8, !tbaa !1
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory38 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory38, align 8, !tbaa !62
  %procs39 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %alloc_bytes40 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs39, i32 0, i32 7
  %50 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes40, align 8, !tbaa !69
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory41, align 8, !tbaa !62
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %color_info42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 11
  %depth43 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info42, i32 0, i32 3
  %54 = load i16, i16* %depth43, align 2, !tbaa !70
  %conv44 = zext i16 %54 to i32
  %55 = load i32, i32* %w.addr, align 4, !tbaa !38
  %mul45 = mul nsw i32 %conv44, %55
  %add46 = add nsw i32 %mul45, 7
  %shr47 = ashr i32 %add46, 3
  %call48 = call i8* %50(%struct.gs_memory_s* %52, i32 %shr47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #4
  store i8* %call48, i8** %native_row, align 8, !tbaa !1
  %56 = load i8*, i8** %std_row, align 8, !tbaa !1
  %cmp49 = icmp eq i8* %56, null
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %do.end.35
  %57 = load i8*, i8** %native_row, align 8, !tbaa !1
  %cmp52 = icmp eq i8* %57, null
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.51, %do.end.35
  store i32 -25, i32* %code, align 4, !tbaa !38
  br label %out

if.end.55:                                        ; preds = %lor.lhs.false.51
  %58 = load i32, i32* %x.addr, align 4, !tbaa !38
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %58, i32* %x56, align 4, !tbaa !71
  %59 = load i32, i32* %x.addr, align 4, !tbaa !38
  %60 = load i32, i32* %w.addr, align 4, !tbaa !38
  %add57 = add nsw i32 %59, %60
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %add57, i32* %x58, align 4, !tbaa !74
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 0
  store i64 1437665345, i64* %options, align 8, !tbaa !75
  %61 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %adev, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %61, i32 0, i32 44
  %op = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params, i32 0, i32 0
  %62 = load i32, i32* %op, align 4, !tbaa !77
  %cop = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 0
  store i32 %62, i32* %cop, align 4, !tbaa !57
  %cop59 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 0
  %63 = load i32, i32* %cop59, align 4, !tbaa !57
  %cmp60 = icmp eq i32 %63, 14
  br i1 %cmp60, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.55
  %64 = load %struct.gx_device_composite_alpha_s*, %struct.gx_device_composite_alpha_s** %adev, align 8, !tbaa !1
  %params63 = getelementptr inbounds %struct.gx_device_composite_alpha_s, %struct.gx_device_composite_alpha_s* %64, i32 0, i32 44
  %delta = getelementptr inbounds %struct.gs_composite_alpha_params_s, %struct.gs_composite_alpha_params_s* %params63, i32 0, i32 1
  %65 = load float, float* %delta, align 4, !tbaa !78
  %delta64 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 1
  store float %65, float* %delta64, align 4, !tbaa !54
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.55
  %66 = bitcast [4 x i16]* %rgba to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #2
  %67 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %67, i32 0, i32 42
  %map_color_rgb_alpha = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs66, i32 0, i32 39
  %68 = load i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)** %map_color_rgb_alpha, align 8, !tbaa !79
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %70 = load i64, i64* %color.addr, align 8, !tbaa !65
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i32 0
  %call67 = call i32 %68(%struct.gx_device_s* %69, i64 %70, i16* %arraydecay) #4
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 0
  %71 = load i16, i16* %arrayidx, align 2, !tbaa !64
  %conv68 = zext i16 %71 to i32
  %mul69 = mul i32 %conv68, 65281
  %add70 = add i32 %mul69, 8388608
  %shr71 = lshr i32 %add70, 24
  %conv72 = trunc i32 %shr71 to i16
  %conv73 = zext i16 %conv72 to i32
  %source_values = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %source_values, i32 0, i64 0
  store i32 %conv73, i32* %arrayidx74, align 4, !tbaa !38
  %arrayidx75 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 1
  %72 = load i16, i16* %arrayidx75, align 2, !tbaa !64
  %conv76 = zext i16 %72 to i32
  %mul77 = mul i32 %conv76, 65281
  %add78 = add i32 %mul77, 8388608
  %shr79 = lshr i32 %add78, 24
  %conv80 = trunc i32 %shr79 to i16
  %conv81 = zext i16 %conv80 to i32
  %source_values82 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 3
  %arrayidx83 = getelementptr inbounds [4 x i32], [4 x i32]* %source_values82, i32 0, i64 1
  store i32 %conv81, i32* %arrayidx83, align 4, !tbaa !38
  %arrayidx84 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 2
  %73 = load i16, i16* %arrayidx84, align 2, !tbaa !64
  %conv85 = zext i16 %73 to i32
  %mul86 = mul i32 %conv85, 65281
  %add87 = add i32 %mul86, 8388608
  %shr88 = lshr i32 %add87, 24
  %conv89 = trunc i32 %shr88 to i16
  %conv90 = zext i16 %conv89 to i32
  %source_values91 = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 3
  %arrayidx92 = getelementptr inbounds [4 x i32], [4 x i32]* %source_values91, i32 0, i64 2
  store i32 %conv90, i32* %arrayidx92, align 4, !tbaa !38
  %arrayidx93 = getelementptr inbounds [4 x i16], [4 x i16]* %rgba, i32 0, i64 3
  %74 = load i16, i16* %arrayidx93, align 2, !tbaa !64
  %conv94 = zext i16 %74 to i32
  %mul95 = mul i32 %conv94, 65281
  %add96 = add i32 %mul95, 8388608
  %shr97 = lshr i32 %add96, 24
  %conv98 = trunc i32 %shr97 to i16
  %conv99 = zext i16 %conv98 to i32
  %source_alpha = getelementptr inbounds %struct.gs_composite_params_s, %struct.gs_composite_params_s* %cp, i32 0, i32 2
  store i32 %conv99, i32* %source_alpha, align 4, !tbaa !56
  %75 = bitcast [4 x i16]* %rgba to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %data = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %source, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !50
  %bits_per_value = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %source, i32 0, i32 1
  store i32 8, i32* %bits_per_value, align 4, !tbaa !46
  %alpha = getelementptr inbounds %struct.const_pixel_row_s, %struct.const_pixel_row_s* %source, i32 0, i32 3
  store i32 0, i32* %alpha, align 4, !tbaa !48
  %76 = load i32, i32* %y.addr, align 4, !tbaa !38
  store i32 %76, i32* %yi, align 4, !tbaa !38
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.65
  %77 = load i32, i32* %yi, align 4, !tbaa !38
  %78 = load i32, i32* %y.addr, align 4, !tbaa !38
  %79 = load i32, i32* %h.addr, align 4, !tbaa !38
  %add100 = add nsw i32 %78, %79
  %cmp101 = icmp slt i32 %77, %add100
  br i1 %cmp101, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %80 = load i32, i32* %yi, align 4, !tbaa !38
  %p103 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y104 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p103, i32 0, i32 1
  store i32 %80, i32* %y104, align 4, !tbaa !80
  %81 = load i32, i32* %yi, align 4, !tbaa !38
  %add105 = add nsw i32 %81, 1
  %q106 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y107 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q106, i32 0, i32 1
  store i32 %add105, i32* %y107, align 4, !tbaa !81
  %82 = load i8*, i8** %std_row, align 8, !tbaa !1
  %data108 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data108, i32 0, i64 0
  store i8* %82, i8** %arrayidx109, align 8, !tbaa !1
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %procs110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs110, i32 0, i32 38
  %84 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !82
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %call111 = call i32 %84(%struct.gx_device_s* %85, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %std_params, %struct.gs_int_rect_s** null) #4
  store i32 %call111, i32* %code, align 4, !tbaa !38
  %86 = load i32, i32* %code, align 4, !tbaa !38
  %cmp112 = icmp slt i32 %86, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %for.body
  br label %for.end

if.end.115:                                       ; preds = %for.body
  %data116 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data116, i32 0, i64 0
  %87 = load i8*, i8** %arrayidx117, align 8, !tbaa !1
  %data118 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %dest, i32 0, i32 0
  store i8* %87, i8** %data118, align 8, !tbaa !52
  %bits_per_value119 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %dest, i32 0, i32 1
  store i32 8, i32* %bits_per_value119, align 4, !tbaa !44
  %options120 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 0
  %88 = load i64, i64* %options120, align 8, !tbaa !75
  %and = and i64 %88, 67108864
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.115
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 2
  %89 = load i32, i32* %x_offset, align 4, !tbaa !83
  br label %cond.end

cond.false:                                       ; preds = %if.end.115
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %89, %cond.true ], [ 0, %cond.false ]
  %initial_x = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %dest, i32 0, i32 2
  store i32 %cond, i32* %initial_x, align 4, !tbaa !51
  %options121 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 0
  %90 = load i64, i64* %options121, align 8, !tbaa !75
  %and122 = and i64 %90, 32
  %tobool123 = icmp ne i64 %and122, 0
  br i1 %tobool123, label %cond.true.124, label %cond.false.125

cond.true.124:                                    ; preds = %cond.end
  br label %cond.end.130

cond.false.125:                                   ; preds = %cond.end
  %options126 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 0
  %91 = load i64, i64* %options126, align 8, !tbaa !75
  %and127 = and i64 %91, 64
  %tobool128 = icmp ne i64 %and127, 0
  %cond129 = select i1 %tobool128, i32 2, i32 0
  br label %cond.end.130

cond.end.130:                                     ; preds = %cond.false.125, %cond.true.124
  %cond131 = phi i32 [ 1, %cond.true.124 ], [ %cond129, %cond.false.125 ]
  %alpha132 = getelementptr inbounds %struct.pixel_row_s, %struct.pixel_row_s* %dest, i32 0, i32 3
  store i32 %cond131, i32* %alpha132, align 4, !tbaa !49
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info133 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info133, i32 0, i32 1
  %93 = load i32, i32* %num_components, align 4, !tbaa !14
  %94 = load i32, i32* %w.addr, align 4, !tbaa !38
  %call134 = call i32 @composite_values(%struct.pixel_row_s* %dest, %struct.const_pixel_row_s* %source, i32 %93, i32 %94, %struct.gs_composite_params_s* %cp) #4
  store i32 %call134, i32* %code, align 4, !tbaa !38
  %95 = load i32, i32* %code, align 4, !tbaa !38
  %cmp135 = icmp slt i32 %95, 0
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %cond.end.130
  br label %for.end

if.end.138:                                       ; preds = %cond.end.130
  %data139 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %std_params, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data139, i32 0, i64 0
  %96 = load i8*, i8** %arrayidx140, align 8, !tbaa !1
  %97 = load i8*, i8** %std_row, align 8, !tbaa !1
  %cmp141 = icmp eq i8* %96, %97
  br i1 %cmp141, label %if.then.143, label %if.end.158

if.then.143:                                      ; preds = %if.end.138
  %options144 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %native_params, i32 0, i32 0
  store i64 1901133825, i64* %options144, align 8, !tbaa !75
  %98 = load i8*, i8** %native_row, align 8, !tbaa !1
  %data145 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %native_params, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data145, i32 0, i64 0
  store i8* %98, i8** %arrayidx146, align 8, !tbaa !1
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %100 = load i32, i32* %w.addr, align 4, !tbaa !38
  %101 = load i8*, i8** %std_row, align 8, !tbaa !1
  %call147 = call i32 @gx_get_bits_copy(%struct.gx_device_s* %99, i32 0, i32 %100, i32 1, %struct.gs_get_bits_params_s* %native_params, %struct.gs_get_bits_params_s* %std_params, i8* %101, i32 0) #4
  store i32 %call147, i32* %code, align 4, !tbaa !38
  %102 = load i32, i32* %code, align 4, !tbaa !38
  %cmp148 = icmp slt i32 %102, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.143
  br label %for.end

if.end.151:                                       ; preds = %if.then.143
  %103 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %procs152 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %103, i32 0, i32 42
  %copy_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs152, i32 0, i32 10
  %104 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)** %copy_color, align 8, !tbaa !84
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !1
  %106 = load i8*, i8** %native_row, align 8, !tbaa !1
  %107 = load i32, i32* %x.addr, align 4, !tbaa !38
  %108 = load i32, i32* %yi, align 4, !tbaa !38
  %109 = load i32, i32* %w.addr, align 4, !tbaa !38
  %call153 = call i32 %104(%struct.gx_device_s* %105, i8* %106, i32 0, i32 0, i64 0, i32 %107, i32 %108, i32 %109, i32 1) #4
  store i32 %call153, i32* %code, align 4, !tbaa !38
  %110 = load i32, i32* %code, align 4, !tbaa !38
  %cmp154 = icmp slt i32 %110, 0
  br i1 %cmp154, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.151
  br label %for.end

if.end.157:                                       ; preds = %if.end.151
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.end.138
  br label %for.inc

for.inc:                                          ; preds = %if.end.158
  %111 = load i32, i32* %yi, align 4, !tbaa !38
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %yi, align 4, !tbaa !38
  br label %for.cond

for.end:                                          ; preds = %if.then.156, %if.then.150, %if.then.137, %if.then.114, %for.cond
  br label %out

out:                                              ; preds = %for.end, %if.then.54
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory159 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory159, align 8, !tbaa !62
  %procs160 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %113, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs160, i32 0, i32 2
  %114 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !63
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !62
  %117 = load i8*, i8** %native_row, align 8, !tbaa !1
  call void %114(%struct.gs_memory_s* %116, i8* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0)) #4
  %118 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory162 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory162, align 8, !tbaa !62
  %procs163 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %free_object164 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs163, i32 0, i32 2
  %120 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object164, align 8, !tbaa !63
  %121 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory165 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory165, align 8, !tbaa !62
  %123 = load i8*, i8** %std_row, align 8, !tbaa !1
  call void %120(%struct.gs_memory_s* %122, i8* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0)) #4
  %124 = load i32, i32* %code, align 4, !tbaa !38
  store i32 %124, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then.32
  %125 = bitcast %struct.pixel_row_s* %dest to i8*
  call void @llvm.lifetime.end(i64 24, i8* %125) #2
  %126 = bitcast %struct.const_pixel_row_s* %source to i8*
  call void @llvm.lifetime.end(i64 24, i8* %126) #2
  %127 = bitcast %struct.gs_composite_params_s* %cp to i8*
  call void @llvm.lifetime.end(i64 28, i8* %127) #2
  %128 = bitcast i32* %yi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast %struct.gs_get_bits_params_s* %native_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %130) #2
  %131 = bitcast %struct.gs_get_bits_params_s* %std_params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %131) #2
  %132 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %132) #2
  %133 = bitcast i8** %native_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #2
  %134 = bitcast i8** %std_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = bitcast %struct.gx_device_s** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #2
  %136 = bitcast %struct.gx_device_composite_alpha_s** %adev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #2
  %137 = load i32, i32* %retval
  ret i32 %137
}

declare i32 @gx_default_tile_rectangle(%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @dca_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h, i64 %zero, i64 %one) #0 {
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
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !38
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !38
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %x, i32* %x.addr, align 4, !tbaa !38
  store i32 %y, i32* %y.addr, align 4, !tbaa !38
  store i32 %w, i32* %w.addr, align 4, !tbaa !38
  store i32 %h, i32* %h.addr, align 4, !tbaa !38
  store i64 %zero, i64* %zero.addr, align 8, !tbaa !65
  store i64 %one, i64* %one.addr, align 8, !tbaa !65
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %dx.addr, align 4, !tbaa !38
  %3 = load i32, i32* %raster.addr, align 4, !tbaa !38
  %4 = load i64, i64* %id.addr, align 8, !tbaa !65
  %5 = load i32, i32* %x.addr, align 4, !tbaa !38
  %6 = load i32, i32* %y.addr, align 4, !tbaa !38
  %7 = load i32, i32* %w.addr, align 4, !tbaa !38
  %8 = load i32, i32* %h.addr, align 4, !tbaa !38
  %9 = load i64, i64* %zero.addr, align 8, !tbaa !65
  %10 = load i64, i64* %one.addr, align 8, !tbaa !65
  %call = call i32 @gx_default_copy_mono(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9, i64 %10) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @dca_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %dx, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %w, i32 %h) #0 {
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
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %dx, i32* %dx.addr, align 4, !tbaa !38
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !38
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %x, i32* %x.addr, align 4, !tbaa !38
  store i32 %y, i32* %y.addr, align 4, !tbaa !38
  store i32 %w, i32* %w.addr, align 4, !tbaa !38
  store i32 %h, i32* %h.addr, align 4, !tbaa !38
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %dx.addr, align 4, !tbaa !38
  %3 = load i32, i32* %raster.addr, align 4, !tbaa !38
  %4 = load i64, i64* %id.addr, align 8, !tbaa !65
  %5 = load i32, i32* %x.addr, align 4, !tbaa !38
  %6 = load i32, i32* %y.addr, align 4, !tbaa !38
  %7 = load i32, i32* %w.addr, align 4, !tbaa !38
  %8 = load i32, i32* %h.addr, align 4, !tbaa !38
  %call = call i32 @gx_default_copy_color(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #4
  ret i32 %call
}

declare i32 @gx_default_draw_line(%struct.gx_device_s*, i32, i32, i32, i32, i64) #1

declare i32 @gx_default_get_bits(%struct.gx_device_s*, i32, i8*, i8**) #1

declare i32 @gx_forward_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i32 @gx_forward_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #1

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #1

declare %struct.gx_xfont_procs_s* @gx_forward_get_xfont_procs(%struct.gx_device_s*) #1

declare %struct.gx_device_s* @gx_forward_get_xfont_device(%struct.gx_device_s*) #1

; Function Attrs: nounwind uwtable
define internal i64 @dca_map_rgb_alpha_color(%struct.gx_device_s* %dev, i16 zeroext %red, i16 zeroext %green, i16 zeroext %blue, i16 zeroext %alpha) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %red.addr = alloca i16, align 2
  %green.addr = alloca i16, align 2
  %blue.addr = alloca i16, align 2
  %alpha.addr = alloca i16, align 2
  %a = alloca i8, align 1
  %color = alloca i64, align 8
  %lum = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %red, i16* %red.addr, align 2, !tbaa !64
  store i16 %green, i16* %green.addr, align 2, !tbaa !64
  store i16 %blue, i16* %blue.addr, align 2, !tbaa !64
  store i16 %alpha, i16* %alpha.addr, align 2, !tbaa !64
  call void @llvm.lifetime.start(i64 1, i8* %a) #2
  %0 = load i16, i16* %alpha.addr, align 2, !tbaa !64
  %conv = zext i16 %0 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = trunc i16 %conv1 to i8
  store i8 %conv2, i8* %a, align 1, !tbaa !33
  %1 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !14
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else.27

if.then:                                          ; preds = %entry
  %4 = bitcast i32* %lum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i16, i16* %red.addr, align 2, !tbaa !64
  %conv4 = zext i16 %5 to i32
  %mul5 = mul nsw i32 %conv4, 30
  %6 = load i16, i16* %green.addr, align 2, !tbaa !64
  %conv6 = zext i16 %6 to i32
  %mul7 = mul nsw i32 %conv6, 59
  %add8 = add nsw i32 %mul5, %mul7
  %7 = load i16, i16* %blue.addr, align 2, !tbaa !64
  %conv9 = zext i16 %7 to i32
  %mul10 = mul nsw i32 %conv9, 11
  %add11 = add nsw i32 %add8, %mul10
  %add12 = add nsw i32 %add11, 50
  %div = sdiv i32 %add12, 100
  store i32 %div, i32* %lum, align 4, !tbaa !38
  %8 = load i8, i8* %a, align 1, !tbaa !33
  %conv13 = zext i8 %8 to i32
  %cmp14 = icmp eq i32 %conv13, 255
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  %9 = load i32, i32* %lum, align 4, !tbaa !38
  %mul17 = mul i32 %9, 65281
  %add18 = add i32 %mul17, 8388608
  %shr19 = lshr i32 %add18, 24
  %conv20 = trunc i32 %shr19 to i16
  %conv21 = zext i16 %conv20 to i64
  store i64 %conv21, i64* %color, align 8, !tbaa !65
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %lum, align 4, !tbaa !38
  %11 = load i8, i8* %a, align 1, !tbaa !33
  %conv22 = zext i8 %11 to i32
  %mul23 = mul i32 %10, %conv22
  %add24 = add i32 %mul23, 32767
  %div25 = udiv i32 %add24, 65535
  %conv26 = zext i32 %div25 to i64
  store i64 %conv26, i64* %color, align 8, !tbaa !65
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  %12 = bitcast i32* %lum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  br label %if.end.76

if.else.27:                                       ; preds = %entry
  %13 = load i8, i8* %a, align 1, !tbaa !33
  %conv28 = zext i8 %13 to i32
  %cmp29 = icmp eq i32 %conv28, 255
  br i1 %cmp29, label %if.then.31, label %if.else.54

if.then.31:                                       ; preds = %if.else.27
  %14 = load i16, i16* %red.addr, align 2, !tbaa !64
  %conv32 = zext i16 %14 to i32
  %mul33 = mul i32 %conv32, 65281
  %add34 = add i32 %mul33, 8388608
  %shr35 = lshr i32 %add34, 24
  %conv36 = trunc i32 %shr35 to i16
  %conv37 = zext i16 %conv36 to i32
  %shl = shl i32 %conv37, 16
  %15 = load i16, i16* %green.addr, align 2, !tbaa !64
  %conv38 = zext i16 %15 to i32
  %mul39 = mul i32 %conv38, 65281
  %add40 = add i32 %mul39, 8388608
  %shr41 = lshr i32 %add40, 24
  %conv42 = trunc i32 %shr41 to i16
  %conv43 = zext i16 %conv42 to i32
  %shl44 = shl i32 %conv43, 8
  %add45 = add i32 %shl, %shl44
  %16 = load i16, i16* %blue.addr, align 2, !tbaa !64
  %conv46 = zext i16 %16 to i32
  %mul47 = mul i32 %conv46, 65281
  %add48 = add i32 %mul47, 8388608
  %shr49 = lshr i32 %add48, 24
  %conv50 = trunc i32 %shr49 to i16
  %conv51 = zext i16 %conv50 to i32
  %add52 = add i32 %add45, %conv51
  %conv53 = zext i32 %add52 to i64
  store i64 %conv53, i64* %color, align 8, !tbaa !65
  br label %if.end.75

if.else.54:                                       ; preds = %if.else.27
  %17 = load i16, i16* %red.addr, align 2, !tbaa !64
  %conv55 = zext i16 %17 to i32
  %18 = load i8, i8* %a, align 1, !tbaa !33
  %conv56 = zext i8 %18 to i32
  %mul57 = mul nsw i32 %conv55, %conv56
  %add58 = add nsw i32 %mul57, 32767
  %div59 = sdiv i32 %add58, 65535
  %shl60 = shl i32 %div59, 16
  %19 = load i16, i16* %green.addr, align 2, !tbaa !64
  %conv61 = zext i16 %19 to i32
  %20 = load i8, i8* %a, align 1, !tbaa !33
  %conv62 = zext i8 %20 to i32
  %mul63 = mul nsw i32 %conv61, %conv62
  %add64 = add nsw i32 %mul63, 32767
  %div65 = sdiv i32 %add64, 65535
  %shl66 = shl i32 %div65, 8
  %add67 = add nsw i32 %shl60, %shl66
  %21 = load i16, i16* %blue.addr, align 2, !tbaa !64
  %conv68 = zext i16 %21 to i32
  %22 = load i8, i8* %a, align 1, !tbaa !33
  %conv69 = zext i8 %22 to i32
  %mul70 = mul nsw i32 %conv68, %conv69
  %add71 = add nsw i32 %mul70, 32767
  %div72 = sdiv i32 %add71, 65535
  %add73 = add nsw i32 %add67, %div72
  %conv74 = sext i32 %add73 to i64
  store i64 %conv74, i64* %color, align 8, !tbaa !65
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.54, %if.then.31
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end
  %23 = load i64, i64* %color, align 8, !tbaa !65
  %shl77 = shl i64 %23, 8
  %24 = load i8, i8* %a, align 1, !tbaa !33
  %conv78 = zext i8 %24 to i64
  %add79 = add i64 %shl77, %conv78
  %25 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  call void @llvm.lifetime.end(i64 1, i8* %a) #2
  ret i64 %add79
}

declare %struct.gx_device_s* @gx_forward_get_page_device(%struct.gx_device_s*) #1

declare i32 @gx_default_get_alpha_bits(%struct.gx_device_s*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @dca_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %x, i32 %y, i32 %width, i32 %height, i64 %color, i32 %depth) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !38
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !38
  store i64 %id, i64* %id.addr, align 8, !tbaa !65
  store i32 %x, i32* %x.addr, align 4, !tbaa !38
  store i32 %y, i32* %y.addr, align 4, !tbaa !38
  store i32 %width, i32* %width.addr, align 4, !tbaa !38
  store i32 %height, i32* %height.addr, align 4, !tbaa !38
  store i64 %color, i64* %color.addr, align 8, !tbaa !65
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !38
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %data_x.addr, align 4, !tbaa !38
  %3 = load i32, i32* %raster.addr, align 4, !tbaa !38
  %4 = load i64, i64* %id.addr, align 8, !tbaa !65
  %5 = load i32, i32* %x.addr, align 4, !tbaa !38
  %6 = load i32, i32* %y.addr, align 4, !tbaa !38
  %7 = load i32, i32* %width.addr, align 4, !tbaa !38
  %8 = load i32, i32* %height.addr, align 4, !tbaa !38
  %9 = load i64, i64* %color.addr, align 8, !tbaa !65
  %10 = load i32, i32* %depth.addr, align 4, !tbaa !38
  %call = call i32 @gx_default_copy_alpha(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9, i32 %10) #4
  ret i32 %call
}

declare i32 @gx_forward_get_band(%struct.gx_device_s*, i32, i32*) #1

declare i32 @gx_default_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare i32 @gx_default_fill_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_stroke_path(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_mask(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*) #1

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_parallelogram(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_fill_triangle(%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32) #1

declare i32 @gx_default_draw_thin_line(%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32) #1

declare i32 @gx_default_begin_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_default_image_data(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #1

declare i32 @gx_default_end_image(%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32) #1

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #1

declare i32 @gx_default_strip_copy_rop(%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare void @gx_forward_get_clipping_box(%struct.gx_device_s*, %struct.gs_fixed_rect_s*) #1

declare i32 @gx_default_begin_typed_image(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #1

declare i32 @gx_forward_get_bits_rectangle(%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**) #1

; Function Attrs: nounwind uwtable
define internal i32 @dca_map_color_rgb_alpha(%struct.gx_device_s* %dev, i64 %color, i16* %prgba) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgba.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !65
  store i16* %prgba, i16** %prgba.addr, align 8, !tbaa !1
  %0 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv = trunc i64 %0 to i8
  %conv1 = zext i8 %conv to i32
  %shl = shl i32 %conv1, 8
  %1 = load i64, i64* %color.addr, align 8, !tbaa !65
  %conv2 = trunc i64 %1 to i8
  %conv3 = zext i8 %conv2 to i32
  %shr = ashr i32 %conv3, 0
  %add = add nsw i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  %2 = load i16*, i16** %prgba.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %2, i64 3
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !64
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i64, i64* %color.addr, align 8, !tbaa !65
  %5 = load i16*, i16** %prgba.addr, align 8, !tbaa !1
  %call = call i32 @dca_map_color_rgb(%struct.gx_device_s* %3, i64 %4, i16* %5) #4
  ret i32 %call
}

declare i32 @gx_no_create_compositor(%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*) #1

declare i32 @gx_default_close_device(%struct.gx_device_s*) #1

declare i32 @gx_get_bits_copy(%struct.gx_device_s*, i32, i32, i32, %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s*, i8*, i32) #1

declare i32 @gx_default_copy_mono(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64) #1

declare i32 @gx_default_copy_color(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32) #1

declare i32 @gx_default_copy_alpha(%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !3, i64 40}
!6 = !{!"gs_composite_alpha_s", !2, i64 0, !7, i64 8, !8, i64 16, !2, i64 24, !2, i64 32, !9, i64 40}
!7 = !{!"long", !3, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!"gs_composite_alpha_params_s", !3, i64 0, !10, i64 4}
!10 = !{!"float", !3, i64 0}
!11 = !{!12, !2, i64 80}
!12 = !{!"gs_memory_s", !2, i64 0, !13, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!13 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!14 = !{!15, !8, i64 100}
!15 = !{!"gx_device_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !16, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !17, i64 96, !20, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !21, i64 984, !8, i64 1052, !8, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144}
!16 = !{!"rc_header_s", !7, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !19, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !7, i64 704, !8, i64 712}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!20 = !{!"gx_device_cached_colors_s", !7, i64 0, !7, i64 8}
!21 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!22 = !{!"gdev_space_params_s", !7, i64 0, !7, i64 8, !23, i64 16, !8, i64 32, !3, i64 36}
!23 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !7, i64 8}
!24 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!26 = !{!27, !18, i64 108}
!27 = !{!"gx_device_composite_alpha_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !16, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !17, i64 96, !20, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !7, i64 928, !7, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !7, i64 968, !7, i64 976, !21, i64 984, !8, i64 1052, !8, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144, !2, i64 1728, !9, i64 1736}
!28 = !{!27, !8, i64 116}
!29 = !{!27, !8, i64 112}
!30 = !{!27, !8, i64 124}
!31 = !{!27, !8, i64 120}
!32 = !{i64 0, i64 4, !33, i64 4, i64 4, !34}
!33 = !{!3, !3, i64 0}
!34 = !{!10, !10, i64 0}
!35 = !{!36, !2, i64 0}
!36 = !{!"gs_composite_s", !2, i64 0, !7, i64 8, !8, i64 16, !2, i64 24, !2, i64 32}
!37 = !{!6, !10, i64 44}
!38 = !{!8, !8, i64 0}
!39 = !{!9, !3, i64 0}
!40 = !{!12, !2, i64 72}
!41 = !{!6, !2, i64 0}
!42 = !{!6, !7, i64 8}
!43 = !{!6, !8, i64 16}
!44 = !{!45, !8, i64 8}
!45 = !{!"pixel_row_s", !2, i64 0, !8, i64 8, !8, i64 12, !3, i64 16}
!46 = !{!47, !8, i64 8}
!47 = !{!"const_pixel_row_s", !2, i64 0, !8, i64 8, !8, i64 12, !3, i64 16}
!48 = !{!47, !3, i64 16}
!49 = !{!45, !3, i64 16}
!50 = !{!47, !2, i64 0}
!51 = !{!45, !8, i64 12}
!52 = !{!45, !2, i64 0}
!53 = !{!47, !8, i64 12}
!54 = !{!55, !10, i64 4}
!55 = !{!"gs_composite_params_s", !3, i64 0, !10, i64 4, !8, i64 8, !3, i64 12}
!56 = !{!55, !8, i64 8}
!57 = !{!55, !3, i64 0}
!58 = !{!59, !2, i64 32}
!59 = !{!"gs_memory_struct_type_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!60 = !{!59, !2, i64 40}
!61 = !{!15, !2, i64 1176}
!62 = !{!15, !2, i64 24}
!63 = !{!12, !2, i64 24}
!64 = !{!18, !18, i64 0}
!65 = !{!7, !7, i64 0}
!66 = !{!27, !2, i64 1728}
!67 = !{!15, !8, i64 832}
!68 = !{!15, !8, i64 836}
!69 = !{!12, !2, i64 64}
!70 = !{!15, !18, i64 108}
!71 = !{!72, !8, i64 0}
!72 = !{!"gs_int_rect_s", !73, i64 0, !73, i64 8}
!73 = !{!"gs_int_point_s", !8, i64 0, !8, i64 4}
!74 = !{!72, !8, i64 8}
!75 = !{!76, !7, i64 0}
!76 = !{!"gs_get_bits_params_s", !7, i64 0, !3, i64 8, !8, i64 520, !8, i64 524, !8, i64 528}
!77 = !{!27, !3, i64 1736}
!78 = !{!27, !10, i64 1740}
!79 = !{!15, !2, i64 1456}
!80 = !{!72, !8, i64 4}
!81 = !{!72, !8, i64 12}
!82 = !{!15, !2, i64 1448}
!83 = !{!76, !8, i64 520}
!84 = !{!15, !2, i64 1224}
