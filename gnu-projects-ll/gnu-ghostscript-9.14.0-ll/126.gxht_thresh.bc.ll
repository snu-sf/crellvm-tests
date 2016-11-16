; ModuleID = './gxht_thresh.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht_landscape_info_s = type { i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_enum_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32], i32, i32, i8, i8, i8, i8, i32, %struct.mc_, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.anon, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i8* (i8*, i32*, i8*, i32, i32, %struct.sample_map_s*, i32, i32)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*, i8*, i32, i8*, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i32, i32, i32, %struct.gx_device_clip_s*, %struct.gx_device_rop_texture_s*, %struct.stream_image_scale_state_s*, i32, %struct.gs_int_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, i32, [65 x %struct.sample_map_s], %struct.gx_image_clue_s*, %struct.gx_device_color_s, %struct.gx_device_color_s, %struct.gx_device_color_s*, %struct.gx_device_color_s*, %struct.gsicc_link_s*, %struct.gx_image_color_cache_s*, i8*, i32, i32, i32, i8*, i32, i32, %struct.ht_landscape_info_s, %struct.gx_image_icc_setup_s, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_clip_path_s = type opaque
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.stream_s = type opaque
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
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
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, {}*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type { i8*, i32, %struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s, i32, i32, i32, i64, %struct.gx_ht_tile_s* (%struct.gx_ht_cache_s*, i32)* }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
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
%struct.mc_ = type { [130 x i32], i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], float, i32, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.1 }
%union.anon.1 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_device_clip_s = type opaque
%struct.gx_device_rop_texture_s = type opaque
%struct.stream_image_scale_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], %struct.stream_image_scale_params_s }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_image_scale_params_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i32, i32 }
%struct._e = type { i32, i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_image_color_cache_s = type { i32*, i8* }
%struct.gx_image_icc_setup_s = type { i32, i32, i32, i32 }
%struct.__loadu_si128 = type { <2 x i64> }

@__func__.gxht_thresh_image_init = private unnamed_addr constant [23 x i8] c"gxht_thresh_image_init\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"./base/gxht_thresh.c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"threshold creation failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"gxht_thresh\00", align 1
@__func__.gxht_thresh_planes = private unnamed_addr constant [19 x i8] c"gxht_thresh_planes\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid orientation for thresholding\00", align 1
@bitreverse = internal constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\5C\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16

; Function Attrs: nounwind uwtable
define void @gx_ht_threshold_row_bit_sub(i8* %contone, i8* %threshold_strip, i32 %contone_stride, i8* %halftone, i32 %dithered_stride, i32 %width, i32 %num_rows, i32 %offset_bits) #0 {
entry:
  %contone.addr = alloca i8*, align 8
  %threshold_strip.addr = alloca i8*, align 8
  %contone_stride.addr = alloca i32, align 4
  %halftone.addr = alloca i8*, align 8
  %dithered_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %offset_bits.addr = alloca i32, align 4
  %contone_ptr = alloca i8*, align 8
  %thresh_ptr = alloca i8*, align 8
  %halftone_ptr = alloca i8*, align 8
  %num_tiles = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %contone, i8** %contone.addr, align 8, !tbaa !1
  store i8* %threshold_strip, i8** %threshold_strip.addr, align 8, !tbaa !1
  store i32 %contone_stride, i32* %contone_stride.addr, align 4, !tbaa !5
  store i8* %halftone, i8** %halftone.addr, align 8, !tbaa !1
  store i32 %dithered_stride, i32* %dithered_stride.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !5
  store i32 %offset_bits, i32* %offset_bits.addr, align 4, !tbaa !5
  %0 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %5 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %5
  %add = add nsw i32 %sub, 15
  %shr = ashr i32 %add, 4
  store i32 %shr, i32* %num_tiles, align 4, !tbaa !5
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %8 = load i32, i32* %j, align 4, !tbaa !5
  %9 = load i32, i32* %num_rows.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %contone.addr, align 8, !tbaa !1
  store i8* %10, i8** %contone_ptr, align 8, !tbaa !1
  %11 = load i8*, i8** %threshold_strip.addr, align 8, !tbaa !1
  %12 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %13
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %thresh_ptr, align 8, !tbaa !1
  %14 = load i8*, i8** %halftone.addr, align 8, !tbaa !1
  %15 = load i32, i32* %dithered_stride.addr, align 4, !tbaa !5
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %mul1 = mul nsw i32 %15, %16
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %14, i64 %idx.ext2
  store i8* %add.ptr3, i8** %halftone_ptr, align 8, !tbaa !1
  %17 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %17, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %19 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %20 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  call void @threshold_16_SSE_unaligned(i8* %18, i8* %19, i8* %20) #7
  %21 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr5, i8** %halftone_ptr, align 8, !tbaa !1
  %22 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %23 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %idx.ext6 = sext i32 %22 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %23, i64 %idx.ext6
  store i8* %add.ptr7, i8** %thresh_ptr, align 8, !tbaa !1
  %24 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %idx.ext8 = sext i32 %24 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %25, i64 %idx.ext8
  store i8* %add.ptr9, i8** %contone_ptr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %27 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %28 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %29 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %30 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  call void @threshold_16_SSE(i8* %28, i8* %29, i8* %30) #7
  %31 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %31, i64 16
  store i8* %add.ptr13, i8** %thresh_ptr, align 8, !tbaa !1
  %32 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %32, i64 16
  store i8* %add.ptr14, i8** %contone_ptr, align 8, !tbaa !1
  %33 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr15, i8** %halftone_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %34 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %inc17 = add nsw i32 %35, 1
  store i32 %inc17, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @threshold_16_SSE_unaligned(i8* %contone_ptr, i8* %thresh_ptr, i8* %ht_data) #0 {
entry:
  %contone_ptr.addr = alloca i8*, align 8
  %thresh_ptr.addr = alloca i8*, align 8
  %ht_data.addr = alloca i8*, align 8
  %input1 = alloca <2 x i64>, align 16
  %input2 = alloca <2 x i64>, align 16
  %result_int = alloca i32, align 4
  %sse_data = alloca i8*, align 8
  %mask1 = alloca i32, align 4
  %sign_fix = alloca <2 x i64>, align 16
  store i8* %contone_ptr, i8** %contone_ptr.addr, align 8, !tbaa !1
  store i8* %thresh_ptr, i8** %thresh_ptr.addr, align 8, !tbaa !1
  store i8* %ht_data, i8** %ht_data.addr, align 8, !tbaa !1
  %0 = bitcast <2 x i64>* %input1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast <2 x i64>* %input2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %result_int to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %sse_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 -2139062144, i32* %mask1, align 4, !tbaa !5
  %5 = bitcast <2 x i64>* %sign_fix to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %call = call <2 x i64> @_mm_set_epi32(i32 -2139062144, i32 -2139062144, i32 -2139062144, i32 -2139062144) #7
  store <2 x i64> %call, <2 x i64>* %sign_fix, align 16, !tbaa !7
  %6 = bitcast i32* %result_int to i8*
  store i8* %6, i8** %sse_data, align 8, !tbaa !1
  %7 = load i8*, i8** %contone_ptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to <2 x i64>*
  %call1 = call <2 x i64> @_mm_loadu_si128(<2 x i64>* %8) #7
  store <2 x i64> %call1, <2 x i64>* %input1, align 16, !tbaa !7
  %9 = load i8*, i8** %thresh_ptr.addr, align 8, !tbaa !1
  %10 = bitcast i8* %9 to <2 x i64>*
  %call2 = call <2 x i64> @_mm_loadu_si128(<2 x i64>* %10) #7
  store <2 x i64> %call2, <2 x i64>* %input2, align 16, !tbaa !7
  %11 = load <2 x i64>, <2 x i64>* %input1, align 16, !tbaa !7
  %12 = load <2 x i64>, <2 x i64>* %sign_fix, align 16, !tbaa !7
  %call3 = call <2 x i64> @_mm_xor_si128(<2 x i64> %11, <2 x i64> %12) #7
  store <2 x i64> %call3, <2 x i64>* %input1, align 16, !tbaa !7
  %13 = load <2 x i64>, <2 x i64>* %input2, align 16, !tbaa !7
  %14 = load <2 x i64>, <2 x i64>* %sign_fix, align 16, !tbaa !7
  %call4 = call <2 x i64> @_mm_xor_si128(<2 x i64> %13, <2 x i64> %14) #7
  store <2 x i64> %call4, <2 x i64>* %input2, align 16, !tbaa !7
  %15 = load <2 x i64>, <2 x i64>* %input1, align 16, !tbaa !7
  %16 = load <2 x i64>, <2 x i64>* %input2, align 16, !tbaa !7
  %call5 = call <2 x i64> @_mm_subs_epi8(<2 x i64> %15, <2 x i64> %16) #7
  store <2 x i64> %call5, <2 x i64>* %input2, align 16, !tbaa !7
  %17 = load <2 x i64>, <2 x i64>* %input2, align 16, !tbaa !7
  %call6 = call i32 @_mm_movemask_epi8(<2 x i64> %17) #7
  store i32 %call6, i32* %result_int, align 4, !tbaa !5
  %18 = load i8*, i8** %sse_data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %idxprom = zext i8 %19 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @bitreverse, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx7, align 1, !tbaa !7
  %21 = load i8*, i8** %ht_data.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 %20, i8* %arrayidx8, align 1, !tbaa !7
  %22 = load i8*, i8** %sse_data, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx9, align 1, !tbaa !7
  %idxprom10 = zext i8 %23 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* @bitreverse, i32 0, i64 %idxprom10
  %24 = load i8, i8* %arrayidx11, align 1, !tbaa !7
  %25 = load i8*, i8** %ht_data.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  store i8 %24, i8* %arrayidx12, align 1, !tbaa !7
  %26 = bitcast <2 x i64>* %sign_fix to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #1
  %27 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = bitcast i8** %sse_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #1
  %29 = bitcast i32* %result_int to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  %30 = bitcast <2 x i64>* %input2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #1
  %31 = bitcast <2 x i64>* %input1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @threshold_16_SSE(i8* %contone_ptr, i8* %thresh_ptr, i8* %ht_data) #0 {
entry:
  %contone_ptr.addr = alloca i8*, align 8
  %thresh_ptr.addr = alloca i8*, align 8
  %ht_data.addr = alloca i8*, align 8
  %input1 = alloca <2 x i64>, align 16
  %input2 = alloca <2 x i64>, align 16
  %result_int = alloca i32, align 4
  %mask1 = alloca i32, align 4
  %sign_fix = alloca <2 x i64>, align 16
  store i8* %contone_ptr, i8** %contone_ptr.addr, align 8, !tbaa !1
  store i8* %thresh_ptr, i8** %thresh_ptr.addr, align 8, !tbaa !1
  store i8* %ht_data, i8** %ht_data.addr, align 8, !tbaa !1
  %0 = bitcast <2 x i64>* %input1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast <2 x i64>* %input2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %result_int to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 -2139062144, i32* %mask1, align 4, !tbaa !5
  %4 = bitcast <2 x i64>* %sign_fix to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %call = call <2 x i64> @_mm_set_epi32(i32 -2139062144, i32 -2139062144, i32 -2139062144, i32 -2139062144) #7
  store <2 x i64> %call, <2 x i64>* %sign_fix, align 16, !tbaa !7
  %5 = load i8*, i8** %contone_ptr.addr, align 8, !tbaa !1
  %6 = bitcast i8* %5 to <2 x i64>*
  %call1 = call <2 x i64> @_mm_load_si128(<2 x i64>* %6) #7
  store <2 x i64> %call1, <2 x i64>* %input1, align 16, !tbaa !7
  %7 = load i8*, i8** %thresh_ptr.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to <2 x i64>*
  %call2 = call <2 x i64> @_mm_load_si128(<2 x i64>* %8) #7
  store <2 x i64> %call2, <2 x i64>* %input2, align 16, !tbaa !7
  %9 = load <2 x i64>, <2 x i64>* %input1, align 16, !tbaa !7
  %10 = load <2 x i64>, <2 x i64>* %sign_fix, align 16, !tbaa !7
  %call3 = call <2 x i64> @_mm_xor_si128(<2 x i64> %9, <2 x i64> %10) #7
  store <2 x i64> %call3, <2 x i64>* %input1, align 16, !tbaa !7
  %11 = load <2 x i64>, <2 x i64>* %input2, align 16, !tbaa !7
  %12 = load <2 x i64>, <2 x i64>* %sign_fix, align 16, !tbaa !7
  %call4 = call <2 x i64> @_mm_xor_si128(<2 x i64> %11, <2 x i64> %12) #7
  store <2 x i64> %call4, <2 x i64>* %input2, align 16, !tbaa !7
  %13 = load <2 x i64>, <2 x i64>* %input1, align 16, !tbaa !7
  %14 = load <2 x i64>, <2 x i64>* %input2, align 16, !tbaa !7
  %call5 = call <2 x i64> @_mm_subs_epi8(<2 x i64> %13, <2 x i64> %14) #7
  store <2 x i64> %call5, <2 x i64>* %input2, align 16, !tbaa !7
  %15 = load <2 x i64>, <2 x i64>* %input2, align 16, !tbaa !7
  %call6 = call i32 @_mm_movemask_epi8(<2 x i64> %15) #7
  store i32 %call6, i32* %result_int, align 4, !tbaa !5
  %16 = load i32, i32* %result_int, align 4, !tbaa !5
  %and = and i32 %16, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @bitreverse, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %18 = load i8*, i8** %ht_data.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 %17, i8* %arrayidx7, align 1, !tbaa !7
  %19 = load i32, i32* %result_int, align 4, !tbaa !5
  %shr = ashr i32 %19, 8
  %and8 = and i32 %shr, 255
  %idxprom9 = sext i32 %and8 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @bitreverse, i32 0, i64 %idxprom9
  %20 = load i8, i8* %arrayidx10, align 1, !tbaa !7
  %21 = load i8*, i8** %ht_data.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %arrayidx11, align 1, !tbaa !7
  %22 = bitcast <2 x i64>* %sign_fix to i8*
  call void @llvm.lifetime.end(i64 16, i8* %22) #1
  %23 = bitcast i32* %mask1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %result_int to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast <2 x i64>* %input2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  %26 = bitcast <2 x i64>* %input1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @gx_ht_threshold_row_bit(i8* %contone, i8* %threshold_strip, i32 %contone_stride, i8* %halftone, i32 %dithered_stride, i32 %width, i32 %num_rows, i32 %offset_bits) #0 {
entry:
  %contone.addr = alloca i8*, align 8
  %threshold_strip.addr = alloca i8*, align 8
  %contone_stride.addr = alloca i32, align 4
  %halftone.addr = alloca i8*, align 8
  %dithered_stride.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %num_rows.addr = alloca i32, align 4
  %offset_bits.addr = alloca i32, align 4
  %contone_ptr = alloca i8*, align 8
  %thresh_ptr = alloca i8*, align 8
  %halftone_ptr = alloca i8*, align 8
  %num_tiles = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %contone, i8** %contone.addr, align 8, !tbaa !1
  store i8* %threshold_strip, i8** %threshold_strip.addr, align 8, !tbaa !1
  store i32 %contone_stride, i32* %contone_stride.addr, align 4, !tbaa !5
  store i8* %halftone, i8** %halftone.addr, align 8, !tbaa !1
  store i32 %dithered_stride, i32* %dithered_stride.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %num_rows, i32* %num_rows.addr, align 4, !tbaa !5
  store i32 %offset_bits, i32* %offset_bits.addr, align 4, !tbaa !5
  %0 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %width.addr, align 4, !tbaa !5
  %5 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %5
  %add = add nsw i32 %sub, 15
  %shr = ashr i32 %add, 4
  store i32 %shr, i32* %num_tiles, align 4, !tbaa !5
  %6 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %8 = load i32, i32* %j, align 4, !tbaa !5
  %9 = load i32, i32* %num_rows.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %contone.addr, align 8, !tbaa !1
  store i8* %10, i8** %contone_ptr, align 8, !tbaa !1
  %11 = load i8*, i8** %threshold_strip.addr, align 8, !tbaa !1
  %12 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %13
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %thresh_ptr, align 8, !tbaa !1
  %14 = load i8*, i8** %halftone.addr, align 8, !tbaa !1
  %15 = load i32, i32* %dithered_stride.addr, align 4, !tbaa !5
  %16 = load i32, i32* %j, align 4, !tbaa !5
  %mul1 = mul nsw i32 %15, %16
  %idx.ext2 = sext i32 %mul1 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %14, i64 %idx.ext2
  store i8* %add.ptr3, i8** %halftone_ptr, align 8, !tbaa !1
  %17 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %17, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %19 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %20 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  call void @threshold_16_SSE_unaligned(i8* %18, i8* %19, i8* %20) #7
  %21 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr5, i8** %halftone_ptr, align 8, !tbaa !1
  %22 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %23 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %idx.ext6 = sext i32 %22 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %23, i64 %idx.ext6
  store i8* %add.ptr7, i8** %thresh_ptr, align 8, !tbaa !1
  %24 = load i32, i32* %offset_bits.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %idx.ext8 = sext i32 %24 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %25, i64 %idx.ext8
  store i8* %add.ptr9, i8** %contone_ptr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %27 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %26, %27
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %28 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %29 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %30 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  call void @threshold_16_SSE(i8* %28, i8* %29, i8* %30) #7
  %31 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %31, i64 16
  store i8* %add.ptr13, i8** %thresh_ptr, align 8, !tbaa !1
  %32 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %add.ptr14 = getelementptr inbounds i8, i8* %32, i64 16
  store i8* %add.ptr14, i8** %contone_ptr, align 8, !tbaa !1
  %33 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %add.ptr15, i8** %halftone_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %34 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %inc17 = add nsw i32 %35, 1
  store i32 %inc17, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %36 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ht_threshold_landscape_sub(i8* %contone_align, i8* %thresh_align, %struct.ht_landscape_info_s* byval align 8 %ht_landscape, i8* %halftone, i32 %data_length) #0 {
entry:
  %contone_align.addr = alloca i8*, align 8
  %thresh_align.addr = alloca i8*, align 8
  %halftone.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %contone = alloca [64 x i8], align 16
  %position_start = alloca i32, align 4
  %position = alloca i32, align 4
  %curr_position = alloca i32, align 4
  %widths = alloca i32*, align 8
  %local_widths = alloca [64 x i32], align 16
  %num_contone = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %w = alloca i32, align 4
  %contone_out_posit = alloca i32, align 4
  %contone_ptr = alloca i8*, align 8
  %thresh_ptr = alloca i8*, align 8
  %halftone_ptr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %contone_align, i8** %contone_align.addr, align 8, !tbaa !1
  store i8* %thresh_align, i8** %thresh_align.addr, align 8, !tbaa !1
  store i8* %halftone, i8** %halftone.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  %0 = bitcast [64 x i8]* %contone to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast i32* %position_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %curr_position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32** %widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %widths1 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %widths1, i32 0, i64 0
  store i32* %arrayidx, i32** %widths, align 8, !tbaa !1
  %5 = bitcast [64 x i32]* %local_widths to i8*
  call void @llvm.lifetime.start(i64 256, i8* %5) #1
  %6 = bitcast i32* %num_contone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 5
  %7 = load i32, i32* %num_contones, align 4, !tbaa !8
  store i32 %7, i32* %num_contone, align 4, !tbaa !5
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %contone_out_posit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 4
  %15 = load i32, i32* %index, align 4, !tbaa !10
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %position_start, align 4, !tbaa !5
  store i32 0, i32* %position, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 3
  %16 = load i32, i32* %curr_pos, align 4, !tbaa !11
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %position_start, align 4, !tbaa !5
  store i32 %add, i32* %position, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  store i8* %17, i8** %thresh_ptr, align 8, !tbaa !1
  %18 = load i8*, i8** %halftone.addr, align 8, !tbaa !1
  store i8* %18, i8** %halftone_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %j, align 4, !tbaa !5
  %20 = load i32, i32* %num_contone, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %19, %20
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %position_start, align 4, !tbaa !5
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %add3 = add nsw i32 %21, %22
  %idxprom = sext i32 %add3 to i64
  %23 = load i32*, i32** %widths, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %25 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %25 to i64
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 %idxprom5
  store i32 %24, i32* %arrayidx6, align 4, !tbaa !5
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %add7 = add nsw i32 %26, %24
  store i32 %add7, i32* %k, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %28, 64
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %for.end
  %index10 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 4
  %29 = load i32, i32* %index10, align 4, !tbaa !10
  %cmp11 = icmp sgt i32 %29, 0
  br i1 %cmp11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.then.9
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %sub = sub nsw i32 %30, 64
  %31 = load i32, i32* %num_contone, align 4, !tbaa !5
  %sub13 = sub nsw i32 %31, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 %idxprom14
  %32 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %sub16 = sub nsw i32 %32, %sub
  store i32 %sub16, i32* %arrayidx15, align 4, !tbaa !5
  br label %if.end.21

if.else.17:                                       ; preds = %if.then.9
  %33 = load i32, i32* %k, align 4, !tbaa !5
  %sub18 = sub nsw i32 %33, 64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 0
  %34 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %sub20 = sub nsw i32 %34, %sub18
  store i32 %sub20, i32* %arrayidx19, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.17, %if.then.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.end
  %35 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  store i32 %35, i32* %k, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.49, %if.end.22
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %36, 0
  br i1 %cmp24, label %for.body.25, label %for.end.51

for.body.25:                                      ; preds = %for.cond.23
  %37 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom26 = sext i32 %37 to i64
  %38 = load i8*, i8** %contone_align.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %38, i64 %idxprom26
  store i8* %arrayidx27, i8** %contone_ptr, align 8, !tbaa !1
  store i32 0, i32* %curr_position, align 4, !tbaa !5
  store i32 0, i32* %contone_out_posit, align 4, !tbaa !5
  %39 = load i32, i32* %num_contone, align 4, !tbaa !5
  store i32 %39, i32* %j, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %for.body.25
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %40, 0
  br i1 %cmp29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.28
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %41 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !7
  store i8 %42, i8* %c, align 1, !tbaa !7
  %43 = load i32, i32* %curr_position, align 4, !tbaa !5
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 %idxprom31
  %44 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  store i32 %44, i32* %w, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.30
  %45 = load i8, i8* %c, align 1, !tbaa !7
  %46 = load i32, i32* %contone_out_posit, align 4, !tbaa !5
  %idxprom33 = sext i32 %46 to i64
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %contone, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds i8, i8* %arraydecay, i64 %idxprom33
  store volatile i8 %45, i8* %arrayidx34, align 1, !tbaa !7
  %47 = load i32, i32* %contone_out_posit, align 4, !tbaa !5
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %contone_out_posit, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %48 = load i32, i32* %w, align 4, !tbaa !5
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %w, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, i32* %curr_position, align 4, !tbaa !5
  %inc36 = add nsw i32 %49, 1
  store i32 %inc36, i32* %curr_position, align 4, !tbaa !5
  %50 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %contone_ptr, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %for.inc.37

for.inc.37:                                       ; preds = %do.end
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %dec38 = add nsw i32 %51, -1
  store i32 %dec38, i32* %j, align 4, !tbaa !5
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  %arrayidx40 = getelementptr inbounds [64 x i8], [64 x i8]* %contone, i32 0, i64 0
  store i8* %arrayidx40, i8** %contone_ptr, align 8, !tbaa !1
  store i32 64, i32* %j, align 4, !tbaa !5
  br label %do.body.41

do.body.41:                                       ; preds = %do.cond.46, %for.end.39
  %52 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %53 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %54 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  call void @threshold_16_SSE(i8* %52, i8* %53, i8* %54) #7
  %55 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 16
  store i8* %add.ptr, i8** %thresh_ptr, align 8, !tbaa !1
  %56 = load i32, i32* %position, align 4, !tbaa !5
  %add42 = add nsw i32 %56, 16
  store i32 %add42, i32* %position, align 4, !tbaa !5
  %57 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %add.ptr43, i8** %halftone_ptr, align 8, !tbaa !1
  %58 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %58, i64 16
  store i8* %add.ptr44, i8** %contone_ptr, align 8, !tbaa !1
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %sub45 = sub nsw i32 %59, 16
  store i32 %sub45, i32* %j, align 4, !tbaa !5
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.41
  %60 = load i32, i32* %j, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %60, 0
  br i1 %cmp47, label %do.body.41, label %do.end.48

do.end.48:                                        ; preds = %do.cond.46
  br label %for.inc.49

for.inc.49:                                       ; preds = %do.end.48
  %61 = load i32, i32* %k, align 4, !tbaa !5
  %dec50 = add nsw i32 %61, -1
  store i32 %dec50, i32* %k, align 4, !tbaa !5
  br label %for.cond.23

for.end.51:                                       ; preds = %for.cond.23
  %62 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %contone_out_posit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %num_contone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [64 x i32]* %local_widths to i8*
  call void @llvm.lifetime.end(i64 256, i8* %70) #1
  %71 = bitcast i32** %widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %curr_position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %position_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [64 x i8]* %contone to i8*
  call void @llvm.lifetime.end(i64 64, i8* %75) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_ht_threshold_landscape(i8* %contone_align, i8* %thresh_align, %struct.ht_landscape_info_s* byval align 8 %ht_landscape, i8* %halftone, i32 %data_length) #0 {
entry:
  %contone_align.addr = alloca i8*, align 8
  %thresh_align.addr = alloca i8*, align 8
  %halftone.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %contone = alloca [64 x i8], align 16
  %position_start = alloca i32, align 4
  %position = alloca i32, align 4
  %curr_position = alloca i32, align 4
  %widths = alloca i32*, align 8
  %local_widths = alloca [64 x i32], align 16
  %num_contone = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %w = alloca i32, align 4
  %contone_out_posit = alloca i32, align 4
  %contone_ptr = alloca i8*, align 8
  %thresh_ptr = alloca i8*, align 8
  %halftone_ptr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %contone_align, i8** %contone_align.addr, align 8, !tbaa !1
  store i8* %thresh_align, i8** %thresh_align.addr, align 8, !tbaa !1
  store i8* %halftone, i8** %halftone.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  %0 = bitcast [64 x i8]* %contone to i8*
  call void @llvm.lifetime.start(i64 64, i8* %0) #1
  %1 = bitcast i32* %position_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %curr_position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32** %widths to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %widths1 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %widths1, i32 0, i64 0
  store i32* %arrayidx, i32** %widths, align 8, !tbaa !1
  %5 = bitcast [64 x i32]* %local_widths to i8*
  call void @llvm.lifetime.start(i64 256, i8* %5) #1
  %6 = bitcast i32* %num_contone to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 5
  %7 = load i32, i32* %num_contones, align 4, !tbaa !8
  store i32 %7, i32* %num_contone, align 4, !tbaa !5
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %contone_out_posit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 4
  %15 = load i32, i32* %index, align 4, !tbaa !10
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %position_start, align 4, !tbaa !5
  store i32 0, i32* %position, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 3
  %16 = load i32, i32* %curr_pos, align 4, !tbaa !11
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %position_start, align 4, !tbaa !5
  store i32 %add, i32* %position, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  store i8* %17, i8** %thresh_ptr, align 8, !tbaa !1
  %18 = load i8*, i8** %halftone.addr, align 8, !tbaa !1
  store i8* %18, i8** %halftone_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i32, i32* %j, align 4, !tbaa !5
  %20 = load i32, i32* %num_contone, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %19, %20
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %position_start, align 4, !tbaa !5
  %22 = load i32, i32* %j, align 4, !tbaa !5
  %add3 = add nsw i32 %21, %22
  %idxprom = sext i32 %add3 to i64
  %23 = load i32*, i32** %widths, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %24 = load i32, i32* %arrayidx4, align 4, !tbaa !5
  %25 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %25 to i64
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 %idxprom5
  store i32 %24, i32* %arrayidx6, align 4, !tbaa !5
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %add7 = add nsw i32 %26, %24
  store i32 %add7, i32* %k, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32, i32* %k, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %28, 64
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %for.end
  %index10 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 4
  %29 = load i32, i32* %index10, align 4, !tbaa !10
  %cmp11 = icmp sgt i32 %29, 0
  br i1 %cmp11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.then.9
  %30 = load i32, i32* %k, align 4, !tbaa !5
  %sub = sub nsw i32 %30, 64
  %31 = load i32, i32* %num_contone, align 4, !tbaa !5
  %sub13 = sub nsw i32 %31, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 %idxprom14
  %32 = load i32, i32* %arrayidx15, align 4, !tbaa !5
  %sub16 = sub nsw i32 %32, %sub
  store i32 %sub16, i32* %arrayidx15, align 4, !tbaa !5
  br label %if.end.21

if.else.17:                                       ; preds = %if.then.9
  %33 = load i32, i32* %k, align 4, !tbaa !5
  %sub18 = sub nsw i32 %33, 64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 0
  %34 = load i32, i32* %arrayidx19, align 4, !tbaa !5
  %sub20 = sub nsw i32 %34, %sub18
  store i32 %sub20, i32* %arrayidx19, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.17, %if.then.12
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.end
  %35 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  store i32 %35, i32* %k, align 4, !tbaa !5
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.49, %if.end.22
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %36, 0
  br i1 %cmp24, label %for.body.25, label %for.end.51

for.body.25:                                      ; preds = %for.cond.23
  %37 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom26 = sext i32 %37 to i64
  %38 = load i8*, i8** %contone_align.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %38, i64 %idxprom26
  store i8* %arrayidx27, i8** %contone_ptr, align 8, !tbaa !1
  store i32 0, i32* %curr_position, align 4, !tbaa !5
  store i32 0, i32* %contone_out_posit, align 4, !tbaa !5
  %39 = load i32, i32* %num_contone, align 4, !tbaa !5
  store i32 %39, i32* %j, align 4, !tbaa !5
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %for.body.25
  %40 = load i32, i32* %j, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %40, 0
  br i1 %cmp29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.28
  call void @llvm.lifetime.start(i64 1, i8* %c) #1
  %41 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %42 = load i8, i8* %41, align 1, !tbaa !7
  store i8 %42, i8* %c, align 1, !tbaa !7
  %43 = load i32, i32* %curr_position, align 4, !tbaa !5
  %idxprom31 = sext i32 %43 to i64
  %arrayidx32 = getelementptr inbounds [64 x i32], [64 x i32]* %local_widths, i32 0, i64 %idxprom31
  %44 = load i32, i32* %arrayidx32, align 4, !tbaa !5
  store i32 %44, i32* %w, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body.30
  %45 = load i8, i8* %c, align 1, !tbaa !7
  %46 = load i32, i32* %contone_out_posit, align 4, !tbaa !5
  %idxprom33 = sext i32 %46 to i64
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %contone, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds i8, i8* %arraydecay, i64 %idxprom33
  store volatile i8 %45, i8* %arrayidx34, align 1, !tbaa !7
  %47 = load i32, i32* %contone_out_posit, align 4, !tbaa !5
  %inc35 = add nsw i32 %47, 1
  store i32 %inc35, i32* %contone_out_posit, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %48 = load i32, i32* %w, align 4, !tbaa !5
  %dec = add nsw i32 %48, -1
  store i32 %dec, i32* %w, align 4, !tbaa !5
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, i32* %curr_position, align 4, !tbaa !5
  %inc36 = add nsw i32 %49, 1
  store i32 %inc36, i32* %curr_position, align 4, !tbaa !5
  %50 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %contone_ptr, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 1, i8* %c) #1
  br label %for.inc.37

for.inc.37:                                       ; preds = %do.end
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %dec38 = add nsw i32 %51, -1
  store i32 %dec38, i32* %j, align 4, !tbaa !5
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  %arrayidx40 = getelementptr inbounds [64 x i8], [64 x i8]* %contone, i32 0, i64 0
  store i8* %arrayidx40, i8** %contone_ptr, align 8, !tbaa !1
  store i32 64, i32* %j, align 4, !tbaa !5
  br label %do.body.41

do.body.41:                                       ; preds = %do.cond.46, %for.end.39
  %52 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %53 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %54 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  call void @threshold_16_SSE(i8* %52, i8* %53, i8* %54) #7
  %55 = load i8*, i8** %thresh_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 16
  store i8* %add.ptr, i8** %thresh_ptr, align 8, !tbaa !1
  %56 = load i32, i32* %position, align 4, !tbaa !5
  %add42 = add nsw i32 %56, 16
  store i32 %add42, i32* %position, align 4, !tbaa !5
  %57 = load i8*, i8** %halftone_ptr, align 8, !tbaa !1
  %add.ptr43 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %add.ptr43, i8** %halftone_ptr, align 8, !tbaa !1
  %58 = load i8*, i8** %contone_ptr, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %58, i64 16
  store i8* %add.ptr44, i8** %contone_ptr, align 8, !tbaa !1
  %59 = load i32, i32* %j, align 4, !tbaa !5
  %sub45 = sub nsw i32 %59, 16
  store i32 %sub45, i32* %j, align 4, !tbaa !5
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.body.41
  %60 = load i32, i32* %j, align 4, !tbaa !5
  %cmp47 = icmp sgt i32 %60, 0
  br i1 %cmp47, label %do.body.41, label %do.end.48

do.end.48:                                        ; preds = %do.cond.46
  br label %for.inc.49

for.inc.49:                                       ; preds = %do.end.48
  %61 = load i32, i32* %k, align 4, !tbaa !5
  %dec50 = add nsw i32 %61, -1
  store i32 %dec50, i32* %k, align 4, !tbaa !5
  br label %for.cond.23

for.end.51:                                       ; preds = %for.cond.23
  %62 = bitcast i8** %halftone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i8** %thresh_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #1
  %64 = bitcast i8** %contone_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i32* %contone_out_posit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %num_contone to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast [64 x i32]* %local_widths to i8*
  call void @llvm.lifetime.end(i64 256, i8* %70) #1
  %71 = bitcast i32** %widths to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast i32* %curr_position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %position_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast [64 x i8]* %contone to i8*
  call void @llvm.lifetime.end(i64 64, i8* %75) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gxht_thresh_image_init(%struct.gx_image_enum_s* %penum) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %code = alloca i32, align 4
  %ox = alloca i32, align 4
  %oy = alloca i32, align 4
  %temp = alloca i32, align 4
  %dev_width = alloca i32, align 4
  %max_height = alloca i32, align 4
  %spp_out = alloca i32, align 4
  %k = alloca i32, align 4
  %d_order = alloca %struct.gx_ht_order_s*, align 8
  %cleanup.dest.slot = alloca i32
  %col_length = alloca i32, align 4
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %1 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %dev_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %max_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.gx_ht_order_s** %d_order to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %9, i32 0, i32 2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !12
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !34
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %12 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %12, i32 0, i32 2
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !12
  %color_info2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %gray_index = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 4
  %14 = load i8, i8* %gray_index, align 1, !tbaa !46
  %conv = zext i8 %14 to i32
  %cmp3 = icmp eq i32 %conv, 255
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %15 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %15, i32 0, i32 2
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev5, align 8, !tbaa !12
  %color_info6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info6, i32 0, i32 6
  %17 = load i32, i32* %max_color, align 4, !tbaa !47
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %18 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev7 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %18, i32 0, i32 2
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %dev7, align 8, !tbaa !12
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %19, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 5
  %20 = load i32, i32* %max_gray, align 4, !tbaa !48
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %20, %cond.false ]
  %cmp9 = icmp ult i32 %cond, 31
  br i1 %cmp9, label %if.then, label %if.end.30

if.then:                                          ; preds = %cond.end
  %21 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %21, i32 0, i32 30
  %22 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !49
  %cmp11 = icmp ne %struct.gs_imager_state_s* %22, null
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %23 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis13 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %23, i32 0, i32 30
  %24 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis13, align 8, !tbaa !49
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %24, i32 0, i32 41
  %25 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !50
  %cmp14 = icmp ne %struct.gx_device_halftone_s* %25, null
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.16
  %26 = load i32, i32* %k, align 4, !tbaa !5
  %27 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis17 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %27, i32 0, i32 30
  %28 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis17, align 8, !tbaa !49
  %dev_ht18 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %28, i32 0, i32 41
  %29 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht18, align 8, !tbaa !50
  %num_comp = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %29, i32 0, i32 5
  %30 = load i32, i32* %num_comp, align 4, !tbaa !61
  %cmp19 = icmp ult i32 %26, %30
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis21 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 30
  %33 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis21, align 8, !tbaa !49
  %dev_ht22 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %33, i32 0, i32 41
  %34 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht22, align 8, !tbaa !50
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %34, i32 0, i32 4
  %35 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !66
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %35, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  store %struct.gx_ht_order_s* %corder, %struct.gx_ht_order_s** %d_order, align 8, !tbaa !1
  %36 = load %struct.gx_ht_order_s*, %struct.gx_ht_order_s** %d_order, align 8, !tbaa !1
  %37 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev23 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %37, i32 0, i32 2
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev23, align 8, !tbaa !12
  %39 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis24 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %39, i32 0, i32 30
  %40 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis24, align 8, !tbaa !49
  %41 = load i32, i32* %k, align 4, !tbaa !5
  %call = call i32 @gx_ht_construct_threshold(%struct.gx_ht_order_s* %36, %struct.gx_device_s* %38, %struct.gs_imager_state_s* %40, i32 %41) #7
  store i32 %call, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %42, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %for.body
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %call28 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gxht_thresh_image_init, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 592, i32 1, i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #7
  store i32 %call28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.343

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.29

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.343

if.end.29:                                        ; preds = %for.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %cond.end
  %45 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev31 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %45, i32 0, i32 2
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev31, align 8, !tbaa !12
  %color_info32 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 11
  %num_components33 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info32, i32 0, i32 1
  %47 = load i32, i32* %num_components33, align 4, !tbaa !34
  store i32 %47, i32* %spp_out, align 4, !tbaa !5
  %48 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %48, i32 0, i32 37
  %49 = load i32, i32* %posture, align 4, !tbaa !67
  %cmp34 = icmp eq i32 %49, 1
  br i1 %cmp34, label %if.then.36, label %if.else.213

if.then.36:                                       ; preds = %if.end.30
  %50 = bitcast i32* %col_length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %50) #1
  %51 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %51, i32 0, i32 26
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent, i32 0, i32 1
  %52 = load i32, i32* %y, align 4, !tbaa !68
  %cmp37 = icmp slt i32 %52, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %if.then.36
  %53 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent40 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %53, i32 0, i32 26
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent40, i32 0, i32 1
  %54 = load i32, i32* %y41, align 4, !tbaa !68
  %sub = sub nsw i32 0, %54
  br label %cond.end.45

cond.false.42:                                    ; preds = %if.then.36
  %55 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent43 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 26
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent43, i32 0, i32 1
  %56 = load i32, i32* %y44, align 4, !tbaa !68
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.39
  %cond46 = phi i32 [ %sub, %cond.true.39 ], [ %56, %cond.false.42 ]
  %add = add nsw i32 %cond46, 128
  %shr = ashr i32 %add, 8
  store i32 %shr, i32* %col_length, align 4, !tbaa !5
  %57 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %57, i32 0, i32 55
  %pixel0 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda, i32 0, i32 2
  %x = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0, i32 0, i32 0
  %state = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x, i32 0, i32 0
  %Q = getelementptr inbounds %struct._a, %struct._a* %state, i32 0, i32 0
  %58 = load i32, i32* %Q, align 4, !tbaa !69
  store i32 %58, i32* %ox, align 4, !tbaa !5
  %59 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda47 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %59, i32 0, i32 55
  %pixel048 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda47, i32 0, i32 2
  %y49 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel048, i32 0, i32 1
  %state50 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y49, i32 0, i32 0
  %Q51 = getelementptr inbounds %struct._a, %struct._a* %state50, i32 0, i32 0
  %60 = load i32, i32* %Q51, align 4, !tbaa !70
  store i32 %60, i32* %oy, align 4, !tbaa !5
  %61 = load i32, i32* %col_length, align 4, !tbaa !5
  %add52 = add nsw i32 %61, 64
  %sub53 = sub nsw i32 %add52, 1
  %div = sdiv i32 %sub53, 64
  store i32 %div, i32* %temp, align 4, !tbaa !5
  %62 = load i32, i32* %temp, align 4, !tbaa !5
  %mul = mul nsw i32 %62, 64
  %mul54 = mul nsw i32 %mul, 8
  %add55 = add nsw i32 %mul54, 63
  %shr56 = ashr i32 %add55, 6
  %shl = shl i32 %shr56, 3
  %63 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %63, i32 0, i32 35
  store i32 %shl, i32* %line_size, align 4, !tbaa !71
  %64 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !72
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %65, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %66 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !73
  %67 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory57 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory57, align 8, !tbaa !72
  %69 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size58 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %69, i32 0, i32 35
  %70 = load i32, i32* %line_size58, align 4, !tbaa !71
  %mul59 = mul i32 64, %70
  %71 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul60 = mul i32 %mul59, %71
  %add61 = add i32 %mul60, 16
  %call62 = call i8* %66(%struct.gs_memory_s* %68, i32 %add61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %72 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %72, i32 0, i32 34
  store i8* %call62, i8** %line, align 8, !tbaa !76
  %73 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory63 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %73, i32 0, i32 3
  %74 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory63, align 8, !tbaa !72
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %74, i32 0, i32 1
  %alloc_bytes65 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 7
  %75 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes65, align 8, !tbaa !73
  %76 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %76, i32 0, i32 3
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !72
  %78 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size67 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %78, i32 0, i32 35
  %79 = load i32, i32* %line_size67, align 4, !tbaa !71
  %mul68 = mul i32 %79, 64
  %add69 = add i32 %mul68, 16
  %call70 = call i8* %75(%struct.gs_memory_s* %77, i32 %add69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %80 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %thresh_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %80, i32 0, i32 76
  store i8* %call70, i8** %thresh_buffer, align 8, !tbaa !77
  %81 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory71 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %81, i32 0, i32 3
  %82 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory71, align 8, !tbaa !72
  %procs72 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %82, i32 0, i32 1
  %alloc_bytes73 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs72, i32 0, i32 7
  %83 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes73, align 8, !tbaa !73
  %84 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory74 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory74, align 8, !tbaa !72
  %86 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size75 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %86, i32 0, i32 35
  %87 = load i32, i32* %line_size75, align 4, !tbaa !71
  %mul76 = mul i32 %87, 8
  %88 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul77 = mul i32 %mul76, %88
  %call78 = call i8* %83(%struct.gs_memory_s* %85, i32 %mul77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %89 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %89, i32 0, i32 72
  store i8* %call78, i8** %ht_buffer, align 8, !tbaa !78
  %90 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size79 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %90, i32 0, i32 35
  %91 = load i32, i32* %line_size79, align 4, !tbaa !71
  %92 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_plane_height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %92, i32 0, i32 75
  store i32 %91, i32* %ht_plane_height, align 4, !tbaa !79
  %93 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size80 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %93, i32 0, i32 35
  %94 = load i32, i32* %line_size80, align 4, !tbaa !71
  %95 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_stride = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %95, i32 0, i32 73
  store i32 %94, i32* %ht_stride, align 4, !tbaa !80
  %96 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line81 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %96, i32 0, i32 34
  %97 = load i8*, i8** %line81, align 8, !tbaa !76
  %cmp82 = icmp eq i8* %97, null
  br i1 %cmp82, label %if.then.92, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %cond.end.45
  %98 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %thresh_buffer85 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %98, i32 0, i32 76
  %99 = load i8*, i8** %thresh_buffer85, align 8, !tbaa !77
  %cmp86 = icmp eq i8* %99, null
  br i1 %cmp86, label %if.then.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.84
  %100 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer89 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %100, i32 0, i32 72
  %101 = load i8*, i8** %ht_buffer89, align 8, !tbaa !78
  %cmp90 = icmp eq i8* %101, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %lor.lhs.false.88, %lor.lhs.false.84, %cond.end.45
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.93:                                        ; preds = %lor.lhs.false.88
  %102 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %102, i32 0, i32 79
  %count = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 0
  store i32 0, i32* %count, align 4, !tbaa !81
  %103 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape94 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %103, i32 0, i32 79
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape94, i32 0, i32 5
  store i32 0, i32* %num_contones, align 4, !tbaa !82
  %104 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %104, i32 0, i32 27
  %x95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 0
  %105 = load i32, i32* %x95, align 4, !tbaa !83
  %cmp96 = icmp slt i32 %105, 0
  br i1 %cmp96, label %if.then.98, label %if.else.101

if.then.98:                                       ; preds = %if.end.93
  %106 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape99 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %106, i32 0, i32 79
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape99, i32 0, i32 3
  store i32 63, i32* %curr_pos, align 4, !tbaa !84
  %107 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape100 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %107, i32 0, i32 79
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape100, i32 0, i32 4
  store i32 -1, i32* %index, align 4, !tbaa !85
  br label %if.end.106

if.else.101:                                      ; preds = %if.end.93
  %108 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape102 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %108, i32 0, i32 79
  %curr_pos103 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape102, i32 0, i32 3
  store i32 0, i32* %curr_pos103, align 4, !tbaa !84
  %109 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape104 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %109, i32 0, i32 79
  %index105 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape104, i32 0, i32 4
  store i32 1, i32* %index105, align 4, !tbaa !85
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.101, %if.then.98
  %110 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent107 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %110, i32 0, i32 26
  %y108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent107, i32 0, i32 1
  %111 = load i32, i32* %y108, align 4, !tbaa !68
  %cmp109 = icmp slt i32 %111, 0
  br i1 %cmp109, label %if.then.111, label %if.else.162

if.then.111:                                      ; preds = %if.end.106
  %112 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape112 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %112, i32 0, i32 79
  %flipy = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape112, i32 0, i32 7
  store i32 1, i32* %flipy, align 4, !tbaa !86
  %113 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda113 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %113, i32 0, i32 55
  %pixel0114 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda113, i32 0, i32 2
  %y115 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0114, i32 0, i32 1
  %state116 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y115, i32 0, i32 0
  %Q117 = getelementptr inbounds %struct._a, %struct._a* %state116, i32 0, i32 0
  %114 = load i32, i32* %Q117, align 4, !tbaa !70
  %115 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent118 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %115, i32 0, i32 26
  %y119 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent118, i32 0, i32 1
  %116 = load i32, i32* %y119, align 4, !tbaa !68
  %add120 = add nsw i32 %114, %116
  %cmp121 = icmp slt i32 %add120, 0
  br i1 %cmp121, label %land.lhs.true.123, label %cond.false.146

land.lhs.true.123:                                ; preds = %if.then.111
  %117 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda124 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %117, i32 0, i32 55
  %pixel0125 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda124, i32 0, i32 2
  %y126 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0125, i32 0, i32 1
  %state127 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y126, i32 0, i32 0
  %Q128 = getelementptr inbounds %struct._a, %struct._a* %state127, i32 0, i32 0
  %118 = load i32, i32* %Q128, align 4, !tbaa !70
  %119 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent129 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %119, i32 0, i32 26
  %y130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent129, i32 0, i32 1
  %120 = load i32, i32* %y130, align 4, !tbaa !68
  %add131 = add nsw i32 %118, %120
  %conv132 = sext i32 %add131 to i64
  %and = and i64 %conv132, 255
  %cmp133 = icmp eq i64 %and, 128
  br i1 %cmp133, label %cond.true.135, label %cond.false.146

cond.true.135:                                    ; preds = %land.lhs.true.123
  %121 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda136 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %121, i32 0, i32 55
  %pixel0137 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda136, i32 0, i32 2
  %y138 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0137, i32 0, i32 1
  %state139 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y138, i32 0, i32 0
  %Q140 = getelementptr inbounds %struct._a, %struct._a* %state139, i32 0, i32 0
  %122 = load i32, i32* %Q140, align 4, !tbaa !70
  %123 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent141 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %123, i32 0, i32 26
  %y142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent141, i32 0, i32 1
  %124 = load i32, i32* %y142, align 4, !tbaa !68
  %add143 = add nsw i32 %122, %124
  %shr144 = ashr i32 %add143, 8
  %add145 = add nsw i32 %shr144, 1
  br label %cond.end.159

cond.false.146:                                   ; preds = %land.lhs.true.123, %if.then.111
  %125 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda147 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %125, i32 0, i32 55
  %pixel0148 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda147, i32 0, i32 2
  %y149 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0148, i32 0, i32 1
  %state150 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y149, i32 0, i32 0
  %Q151 = getelementptr inbounds %struct._a, %struct._a* %state150, i32 0, i32 0
  %126 = load i32, i32* %Q151, align 4, !tbaa !70
  %127 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent152 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %127, i32 0, i32 26
  %y153 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent152, i32 0, i32 1
  %128 = load i32, i32* %y153, align 4, !tbaa !68
  %add154 = add nsw i32 %126, %128
  %conv155 = sext i32 %add154 to i64
  %add156 = add nsw i64 %conv155, 127
  %shr157 = ashr i64 %add156, 8
  %conv158 = trunc i64 %shr157 to i32
  br label %cond.end.159

cond.end.159:                                     ; preds = %cond.false.146, %cond.true.135
  %cond160 = phi i32 [ %add145, %cond.true.135 ], [ %conv158, %cond.false.146 ]
  %129 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape161 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %129, i32 0, i32 79
  %y_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape161, i32 0, i32 8
  store i32 %cond160, i32* %y_pos, align 4, !tbaa !87
  br label %if.end.204

if.else.162:                                      ; preds = %if.end.106
  %130 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape163 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %130, i32 0, i32 79
  %flipy164 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape163, i32 0, i32 7
  store i32 0, i32* %flipy164, align 4, !tbaa !86
  %131 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda165 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %131, i32 0, i32 55
  %pixel0166 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda165, i32 0, i32 2
  %y167 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0166, i32 0, i32 1
  %state168 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y167, i32 0, i32 0
  %Q169 = getelementptr inbounds %struct._a, %struct._a* %state168, i32 0, i32 0
  %132 = load i32, i32* %Q169, align 4, !tbaa !70
  %cmp170 = icmp slt i32 %132, 0
  br i1 %cmp170, label %land.lhs.true.172, label %cond.false.190

land.lhs.true.172:                                ; preds = %if.else.162
  %133 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda173 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %133, i32 0, i32 55
  %pixel0174 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda173, i32 0, i32 2
  %y175 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0174, i32 0, i32 1
  %state176 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y175, i32 0, i32 0
  %Q177 = getelementptr inbounds %struct._a, %struct._a* %state176, i32 0, i32 0
  %134 = load i32, i32* %Q177, align 4, !tbaa !70
  %conv178 = sext i32 %134 to i64
  %and179 = and i64 %conv178, 255
  %cmp180 = icmp eq i64 %and179, 128
  br i1 %cmp180, label %cond.true.182, label %cond.false.190

cond.true.182:                                    ; preds = %land.lhs.true.172
  %135 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda183 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %135, i32 0, i32 55
  %pixel0184 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda183, i32 0, i32 2
  %y185 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0184, i32 0, i32 1
  %state186 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y185, i32 0, i32 0
  %Q187 = getelementptr inbounds %struct._a, %struct._a* %state186, i32 0, i32 0
  %136 = load i32, i32* %Q187, align 4, !tbaa !70
  %shr188 = ashr i32 %136, 8
  %add189 = add nsw i32 %shr188, 1
  br label %cond.end.200

cond.false.190:                                   ; preds = %land.lhs.true.172, %if.else.162
  %137 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda191 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %137, i32 0, i32 55
  %pixel0192 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda191, i32 0, i32 2
  %y193 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0192, i32 0, i32 1
  %state194 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y193, i32 0, i32 0
  %Q195 = getelementptr inbounds %struct._a, %struct._a* %state194, i32 0, i32 0
  %138 = load i32, i32* %Q195, align 4, !tbaa !70
  %conv196 = sext i32 %138 to i64
  %add197 = add nsw i64 %conv196, 127
  %shr198 = ashr i64 %add197, 8
  %conv199 = trunc i64 %shr198 to i32
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.190, %cond.true.182
  %cond201 = phi i32 [ %add189, %cond.true.182 ], [ %conv199, %cond.false.190 ]
  %139 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape202 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %139, i32 0, i32 79
  %y_pos203 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape202, i32 0, i32 8
  store i32 %cond201, i32* %y_pos203, align 4, !tbaa !87
  br label %if.end.204

if.end.204:                                       ; preds = %cond.end.200, %cond.end.159
  %140 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape205 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %140, i32 0, i32 79
  %widths = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape205, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [64 x i32], [64 x i32]* %widths, i32 0, i64 0
  %141 = bitcast i32* %arrayidx206 to i8*
  %call207 = call i8* @memset(i8* %141, i32 0, i64 256) #8
  %142 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape208 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %142, i32 0, i32 79
  %offset_set = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape208, i32 0, i32 6
  store i32 0, i32* %offset_set, align 4, !tbaa !88
  %143 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_offset_bits = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %143, i32 0, i32 74
  store i32 0, i32* %ht_offset_bits, align 4, !tbaa !89
  %144 = load i32, i32* %code, align 4, !tbaa !5
  %cmp209 = icmp sge i32 %144, 0
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.204
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.211, %if.end.204
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.212, %if.then.92
  %145 = bitcast i32* %col_length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.343 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.338

if.else.213:                                      ; preds = %if.end.30
  %146 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape214 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %146, i32 0, i32 79
  %147 = bitcast %struct.ht_landscape_info_s* %ht_landscape214 to i8*
  %call215 = call i8* @memset(i8* %147, i32 0, i64 288) #8
  %148 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda216 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %148, i32 0, i32 55
  %pixel0217 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda216, i32 0, i32 2
  %x218 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0217, i32 0, i32 0
  %state219 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %x218, i32 0, i32 0
  %Q220 = getelementptr inbounds %struct._a, %struct._a* %state219, i32 0, i32 0
  %149 = load i32, i32* %Q220, align 4, !tbaa !69
  store i32 %149, i32* %ox, align 4, !tbaa !5
  %150 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dda221 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %150, i32 0, i32 55
  %pixel0222 = getelementptr inbounds %struct.dd_, %struct.dd_* %dda221, i32 0, i32 2
  %y223 = getelementptr inbounds %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s* %pixel0222, i32 0, i32 1
  %state224 = getelementptr inbounds %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s* %y223, i32 0, i32 0
  %Q225 = getelementptr inbounds %struct._a, %struct._a* %state224, i32 0, i32 0
  %151 = load i32, i32* %Q225, align 4, !tbaa !70
  store i32 %151, i32* %oy, align 4, !tbaa !5
  %152 = load i32, i32* %ox, align 4, !tbaa !5
  %153 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %x_extent226 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %153, i32 0, i32 26
  %x227 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %x_extent226, i32 0, i32 0
  %154 = load i32, i32* %x227, align 4, !tbaa !90
  %add228 = add nsw i32 %152, %154
  %conv229 = sext i32 %add228 to i64
  %add230 = add nsw i64 %conv229, 127
  %shr231 = ashr i64 %add230, 8
  %155 = load i32, i32* %ox, align 4, !tbaa !5
  %conv232 = sext i32 %155 to i64
  %add233 = add nsw i64 %conv232, 127
  %shr234 = ashr i64 %add233, 8
  %sub235 = sub nsw i64 %shr231, %shr234
  %conv236 = sitofp i64 %sub235 to double
  %call237 = call double @fabs(double %conv236) #9
  %conv238 = fptosi double %call237 to i32
  store i32 %conv238, i32* %dev_width, align 4, !tbaa !5
  %156 = load i32, i32* %ox, align 4, !tbaa !5
  %conv239 = sext i32 %156 to i64
  %add240 = add nsw i64 %conv239, 127
  %shr241 = ashr i64 %add240, 8
  %conv242 = trunc i64 %shr241 to i32
  %sub243 = sub nsw i32 0, %conv242
  %and244 = and i32 %sub243, 7
  %157 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_offset_bits245 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %157, i32 0, i32 74
  store i32 %and244, i32* %ht_offset_bits245, align 4, !tbaa !89
  %158 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_offset_bits246 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %158, i32 0, i32 74
  %159 = load i32, i32* %ht_offset_bits246, align 4, !tbaa !89
  %cmp247 = icmp sgt i32 %159, 0
  br i1 %cmp247, label %if.then.249, label %if.else.257

if.then.249:                                      ; preds = %if.else.213
  %160 = load i32, i32* %dev_width, align 4, !tbaa !5
  %add250 = add nsw i32 %160, 4
  %add251 = add nsw i32 7, %add250
  %add252 = add nsw i32 %add251, 64
  %add253 = add nsw i32 %add252, 63
  %shr254 = ashr i32 %add253, 6
  %shl255 = shl i32 %shr254, 3
  %161 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_stride256 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %161, i32 0, i32 73
  store i32 %shl255, i32* %ht_stride256, align 4, !tbaa !80
  br label %if.end.265

if.else.257:                                      ; preds = %if.else.213
  %162 = load i32, i32* %dev_width, align 4, !tbaa !5
  %add258 = add nsw i32 %162, 2
  %add259 = add nsw i32 7, %add258
  %add260 = add nsw i32 %add259, 64
  %add261 = add nsw i32 %add260, 63
  %shr262 = ashr i32 %add261, 6
  %shl263 = shl i32 %shr262, 3
  %163 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_stride264 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %163, i32 0, i32 73
  store i32 %shl263, i32* %ht_stride264, align 4, !tbaa !80
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.257, %if.then.249
  %164 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %164, i32 0, i32 24
  %165 = load i32, i32* %dst_height, align 4, !tbaa !91
  %cmp266 = icmp slt i32 %165, 0
  br i1 %cmp266, label %cond.true.268, label %cond.false.271

cond.true.268:                                    ; preds = %if.end.265
  %166 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height269 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %166, i32 0, i32 24
  %167 = load i32, i32* %dst_height269, align 4, !tbaa !91
  %sub270 = sub nsw i32 0, %167
  br label %cond.end.273

cond.false.271:                                   ; preds = %if.end.265
  %168 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dst_height272 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %168, i32 0, i32 24
  %169 = load i32, i32* %dst_height272, align 4, !tbaa !91
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.false.271, %cond.true.268
  %cond274 = phi i32 [ %sub270, %cond.true.268 ], [ %169, %cond.false.271 ]
  %conv275 = sitofp i32 %cond274 to double
  %mul276 = fmul double %conv275, 3.906250e-03
  %170 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %Height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %170, i32 0, i32 10
  %171 = load i32, i32* %Height, align 4, !tbaa !92
  %conv277 = sitofp i32 %171 to float
  %conv278 = fpext float %conv277 to double
  %div279 = fdiv double %mul276, %conv278
  %call280 = call double @ceil(double %div279) #9
  %conv281 = fptosi double %call280 to i32
  store i32 %conv281, i32* %max_height, align 4, !tbaa !5
  %172 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory282 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %172, i32 0, i32 3
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory282, align 8, !tbaa !72
  %procs283 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %173, i32 0, i32 1
  %alloc_bytes284 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs283, i32 0, i32 7
  %174 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes284, align 8, !tbaa !73
  %175 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory285 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %175, i32 0, i32 3
  %176 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory285, align 8, !tbaa !72
  %177 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_stride286 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %177, i32 0, i32 73
  %178 = load i32, i32* %ht_stride286, align 4, !tbaa !80
  %179 = load i32, i32* %max_height, align 4, !tbaa !5
  %mul287 = mul nsw i32 %178, %179
  %180 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul288 = mul nsw i32 %mul287, %180
  %call289 = call i8* %174(%struct.gs_memory_s* %176, i32 %mul288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %181 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer290 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %181, i32 0, i32 72
  store i8* %call289, i8** %ht_buffer290, align 8, !tbaa !78
  %182 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_stride291 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %182, i32 0, i32 73
  %183 = load i32, i32* %ht_stride291, align 4, !tbaa !80
  %184 = load i32, i32* %max_height, align 4, !tbaa !5
  %mul292 = mul nsw i32 %183, %184
  %185 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_plane_height293 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %185, i32 0, i32 75
  store i32 %mul292, i32* %ht_plane_height293, align 4, !tbaa !79
  %186 = load i32, i32* %dev_width, align 4, !tbaa !5
  %conv294 = sitofp i32 %186 to double
  %add295 = fadd double %conv294, 1.500000e+01
  %add296 = fadd double %add295, 1.500000e+01
  %conv297 = fptrunc double %add296 to float
  %conv298 = fpext float %conv297 to double
  %div299 = fdiv double %conv298, 1.600000e+01
  %call300 = call double @ceil(double %div299) #9
  %conv301 = fptosi double %call300 to i32
  store i32 %conv301, i32* %temp, align 4, !tbaa !5
  %187 = load i32, i32* %temp, align 4, !tbaa !5
  %mul302 = mul nsw i32 %187, 16
  %mul303 = mul nsw i32 %mul302, 8
  %add304 = add nsw i32 %mul303, 63
  %shr305 = ashr i32 %add304, 6
  %shl306 = shl i32 %shr305, 3
  %188 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size307 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %188, i32 0, i32 35
  store i32 %shl306, i32* %line_size307, align 4, !tbaa !71
  %189 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory308 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %189, i32 0, i32 3
  %190 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory308, align 8, !tbaa !72
  %procs309 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %190, i32 0, i32 1
  %alloc_bytes310 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs309, i32 0, i32 7
  %191 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes310, align 8, !tbaa !73
  %192 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory311 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %192, i32 0, i32 3
  %193 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory311, align 8, !tbaa !72
  %194 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size312 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %194, i32 0, i32 35
  %195 = load i32, i32* %line_size312, align 4, !tbaa !71
  %196 = load i32, i32* %spp_out, align 4, !tbaa !5
  %mul313 = mul i32 %195, %196
  %call314 = call i8* %191(%struct.gs_memory_s* %193, i32 %mul313, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %197 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line315 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %197, i32 0, i32 34
  store i8* %call314, i8** %line315, align 8, !tbaa !76
  %198 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory316 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %198, i32 0, i32 3
  %199 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory316, align 8, !tbaa !72
  %procs317 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %199, i32 0, i32 1
  %alloc_bytes318 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs317, i32 0, i32 7
  %200 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes318, align 8, !tbaa !73
  %201 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %memory319 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory319, align 8, !tbaa !72
  %203 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line_size320 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %203, i32 0, i32 35
  %204 = load i32, i32* %line_size320, align 4, !tbaa !71
  %205 = load i32, i32* %max_height, align 4, !tbaa !5
  %mul321 = mul i32 %204, %205
  %call322 = call i8* %200(%struct.gs_memory_s* %202, i32 %mul321, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)) #7
  %206 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %thresh_buffer323 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %206, i32 0, i32 76
  store i8* %call322, i8** %thresh_buffer323, align 8, !tbaa !77
  %207 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line324 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %207, i32 0, i32 34
  %208 = load i8*, i8** %line324, align 8, !tbaa !76
  %cmp325 = icmp eq i8* %208, null
  br i1 %cmp325, label %if.then.335, label %lor.lhs.false.327

lor.lhs.false.327:                                ; preds = %cond.end.273
  %209 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %thresh_buffer328 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %209, i32 0, i32 76
  %210 = load i8*, i8** %thresh_buffer328, align 8, !tbaa !77
  %cmp329 = icmp eq i8* %210, null
  br i1 %cmp329, label %if.then.335, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %lor.lhs.false.327
  %211 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer332 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %211, i32 0, i32 72
  %212 = load i8*, i8** %ht_buffer332, align 8, !tbaa !78
  %cmp333 = icmp eq i8* %212, null
  br i1 %cmp333, label %if.then.335, label %if.else.336

if.then.335:                                      ; preds = %lor.lhs.false.331, %lor.lhs.false.327, %cond.end.273
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.343

if.else.336:                                      ; preds = %lor.lhs.false.331
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.336
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %cleanup.cont
  %213 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %213, i32 0, i32 21
  %xx = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %matrix, i32 0, i32 0
  %214 = load float, float* %xx, align 4, !tbaa !93
  %conv339 = fpext float %214 to double
  %add340 = fadd double %conv339, 1.953125e-03
  %mul341 = fmul double %add340, 2.560000e+02
  %conv342 = fptosi double %mul341 to i32
  %215 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dxx = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %215, i32 0, i32 46
  store i32 %conv342, i32* %dxx, align 4, !tbaa !94
  %216 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %216, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.343

cleanup.343:                                      ; preds = %if.end.338, %if.then.335, %cleanup, %if.else, %if.then.27
  %217 = bitcast %struct.gx_ht_order_s** %d_order to i8*
  call void @llvm.lifetime.end(i64 8, i8* %217) #1
  %218 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %max_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %dev_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %oy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32* %ox to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = load i32, i32* %retval
  ret i32 %226
}

declare i32 @gx_ht_construct_threshold(%struct.gx_ht_order_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, i32) #2

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind uwtable
define i32 @gxht_thresh_planes(%struct.gx_image_enum_s* %penum, i32 %xrun, i32 %dest_width, i32 %dest_height, i8* %thresh_align, %struct.gx_device_s* %dev, i32* %offset_contone, i32 %contone_stride) #0 {
entry:
  %retval = alloca i32, align 4
  %penum.addr = alloca %struct.gx_image_enum_s*, align 8
  %xrun.addr = alloca i32, align 4
  %dest_width.addr = alloca i32, align 4
  %dest_height.addr = alloca i32, align 4
  %thresh_align.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %offset_contone.addr = alloca i32*, align 8
  %contone_stride.addr = alloca i32, align 4
  %thresh_width = alloca i32, align 4
  %thresh_height = alloca i32, align 4
  %dx = alloca i32, align 4
  %left_rem_end = alloca i32, align 4
  %left_width = alloca i32, align 4
  %vdi = alloca i32, align 4
  %num_full_tiles = alloca i32, align 4
  %right_tile_width = alloca i32, align 4
  %k = alloca i32, align 4
  %jj = alloca i32, align 4
  %dy = alloca i32, align 4
  %j = alloca i32, align 4
  %thresh_tile = alloca i8*, align 8
  %position = alloca i32, align 4
  %replicate_tile = alloca i32, align 4
  %posture = alloca i32, align 4
  %y_pos = alloca i32, align 4
  %width = alloca i32, align 4
  %ptr_out = alloca i8*, align 8
  %row_ptr = alloca i8*, align 8
  %ptr_out_temp = alloca i8*, align 8
  %threshold = alloca i8*, align 8
  %init_tile = alloca i32, align 4
  %in_row_offset = alloca i32, align 4
  %ii = alloca i32, align 4
  %num_tiles = alloca i32, align 4
  %tile_remainder = alloca i32, align 4
  %offset_bits = alloca i32, align 4
  %halftone = alloca i8*, align 8
  %dithered_stride = alloca i32, align 4
  %is_planar_dev = alloca i32, align 4
  %dev_white = alloca i64, align 8
  %dev_black = alloca i64, align 8
  %spp_out = alloca i32, align 4
  %contone_align = alloca i8*, align 8
  %x_pos = alloca i32, align 4
  %curr_width = alloca i32, align 4
  %x_pos106 = alloca i32, align 4
  %xoffs = alloca i32, align 4
  %tmp = alloca %struct.ht_landscape_info_s, align 8
  %tmp320 = alloca %struct.ht_landscape_info_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_image_enum_s* %penum, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  store i32 %xrun, i32* %xrun.addr, align 4, !tbaa !5
  store i32 %dest_width, i32* %dest_width.addr, align 4, !tbaa !5
  store i32 %dest_height, i32* %dest_height.addr, align 4, !tbaa !5
  store i8* %thresh_align, i8** %thresh_align.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32* %offset_contone, i32** %offset_contone.addr, align 8, !tbaa !1
  store i32 %contone_stride, i32* %contone_stride.addr, align 4, !tbaa !5
  %0 = bitcast i32* %thresh_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %thresh_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %left_rem_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %left_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %num_full_tiles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %right_tile_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i8** %thresh_tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i32* %position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %replicate_tile to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %posture1 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %16, i32 0, i32 37
  %17 = load i32, i32* %posture1, align 4, !tbaa !67
  store i32 %17, i32* %posture, align 4, !tbaa !7
  %18 = bitcast i32* %y_pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %19, i32 0, i32 60
  %20 = load i32, i32* %yci, align 4, !tbaa !95
  store i32 %20, i32* %y_pos, align 4, !tbaa !5
  %21 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %width, align 4, !tbaa !5
  %22 = bitcast i8** %ptr_out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast i8** %row_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %24 = bitcast i8** %ptr_out_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = bitcast i8** %threshold to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i32* %init_tile to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast i32* %in_row_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = bitcast i32* %tile_remainder to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_offset_bits = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %32, i32 0, i32 74
  %33 = load i32, i32* %ht_offset_bits, align 4, !tbaa !89
  store i32 %33, i32* %offset_bits, align 4, !tbaa !5
  %34 = bitcast i8** %halftone to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = bitcast i32* %dithered_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_stride = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %36, i32 0, i32 73
  %37 = load i32, i32* %ht_stride, align 4, !tbaa !80
  store i32 %37, i32* %dithered_stride, align 4, !tbaa !5
  %38 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %is_planar = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 17
  %40 = load i32, i32* %is_planar, align 4, !tbaa !96
  store i32 %40, i32* %is_planar_dev, align 4, !tbaa !5
  %41 = bitcast i64* %dev_white to i8*
  call void @llvm.lifetime.start(i64 8, i8* %41) #1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i64 @gx_device_white(%struct.gx_device_s* %42) #7
  store i64 %call, i64* %dev_white, align 8, !tbaa !97
  %43 = bitcast i64* %dev_black to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call2 = call i64 @gx_device_black(%struct.gx_device_s* %44) #7
  store i64 %call2, i64* %dev_black, align 8, !tbaa !97
  %45 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %47 = load i32, i32* %num_components, align 4, !tbaa !34
  store i32 %47, i32* %spp_out, align 4, !tbaa !5
  %48 = bitcast i8** %contone_align to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  store i8* null, i8** %contone_align, align 8, !tbaa !1
  %49 = load i32, i32* %posture, align 4, !tbaa !7
  switch i32 %49, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.125
  ]

sw.bb:                                            ; preds = %entry
  %50 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %hci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %50, i32 0, i32 61
  %51 = load i32, i32* %hci, align 4, !tbaa !98
  store i32 %51, i32* %vdi, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.84, %sw.bb
  %52 = load i32, i32* %j, align 4, !tbaa !5
  %53 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp = icmp slt i32 %52, %53
  br i1 %cmp, label %for.body, label %for.end.86

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %55, i32 0, i32 30
  %56 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !49
  %dev_ht = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %56, i32 0, i32 41
  %57 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht, align 8, !tbaa !50
  %components = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %57, i32 0, i32 4
  %58 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components, align 8, !tbaa !66
  %arrayidx = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %58, i64 %idxprom
  %corder = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx, i32 0, i32 0
  %width3 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder, i32 0, i32 1
  %59 = load i16, i16* %width3, align 2, !tbaa !99
  %conv = zext i16 %59 to i32
  store i32 %conv, i32* %thresh_width, align 4, !tbaa !5
  %60 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %60 to i64
  %61 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis5 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %61, i32 0, i32 30
  %62 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis5, align 8, !tbaa !49
  %dev_ht6 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %62, i32 0, i32 41
  %63 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht6, align 8, !tbaa !50
  %components7 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %63, i32 0, i32 4
  %64 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components7, align 8, !tbaa !66
  %arrayidx8 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %64, i64 %idxprom4
  %corder9 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx8, i32 0, i32 0
  %full_height = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder9, i32 0, i32 7
  %65 = load i32, i32* %full_height, align 4, !tbaa !101
  store i32 %65, i32* %thresh_height, align 4, !tbaa !5
  %66 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %66, i32 0, i32 72
  %67 = load i8*, i8** %ht_buffer, align 8, !tbaa !78
  %68 = load i32, i32* %j, align 4, !tbaa !5
  %69 = load i32, i32* %vdi, align 4, !tbaa !5
  %mul = mul nsw i32 %68, %69
  %70 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %mul10 = mul nsw i32 %mul, %70
  %idx.ext = sext i32 %mul10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %67, i64 %idx.ext
  store i8* %add.ptr, i8** %halftone, align 8, !tbaa !1
  %71 = load i32, i32* %xrun.addr, align 4, !tbaa !5
  %shr = ashr i32 %71, 8
  %72 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %rem = srem i32 %shr, %72
  store i32 %rem, i32* %dx, align 4, !tbaa !5
  %73 = load i32, i32* %dx, align 4, !tbaa !5
  %74 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %add = add nsw i32 %73, %74
  %75 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %add, %75
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %76 = load i32, i32* %dx, align 4, !tbaa !5
  %77 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %add13 = add nsw i32 %76, %77
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %78 = load i32, i32* %thresh_width, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add13, %cond.true ], [ %78, %cond.false ]
  store i32 %cond, i32* %left_rem_end, align 4, !tbaa !5
  %79 = load i32, i32* %left_rem_end, align 4, !tbaa !5
  %80 = load i32, i32* %dx, align 4, !tbaa !5
  %sub = sub nsw i32 %79, %80
  store i32 %sub, i32* %left_width, align 4, !tbaa !5
  %81 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %82 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub14 = sub nsw i32 %81, %82
  %conv15 = sitofp i32 %sub14 to float
  %83 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %conv16 = sitofp i32 %83 to float
  %div = fdiv float %conv15, %conv16
  %conv17 = fptosi float %div to i32
  %84 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %85 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub18 = sub nsw i32 %84, %85
  %conv19 = sitofp i32 %sub18 to float
  %86 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %conv20 = sitofp i32 %86 to float
  %div21 = fdiv float %conv19, %conv20
  %cmp22 = fcmp olt float %div21, 0.000000e+00
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %87 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %88 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub24 = sub nsw i32 %87, %88
  %conv25 = sitofp i32 %sub24 to float
  %89 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %conv26 = sitofp i32 %89 to float
  %div27 = fdiv float %conv25, %conv26
  %90 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %91 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub28 = sub nsw i32 %90, %91
  %conv29 = sitofp i32 %sub28 to float
  %92 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %conv30 = sitofp i32 %92 to float
  %div31 = fdiv float %conv29, %conv30
  %conv32 = fptosi float %div31 to i32
  %conv33 = sitofp i32 %conv32 to float
  %cmp34 = fcmp une float %div27, %conv33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %93 = phi i1 [ false, %cond.end ], [ %cmp34, %land.rhs ]
  %land.ext = zext i1 %93 to i32
  %sub36 = sub nsw i32 %conv17, %land.ext
  store i32 %sub36, i32* %num_full_tiles, align 4, !tbaa !5
  %94 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %95 = load i32, i32* %num_full_tiles, align 4, !tbaa !5
  %96 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %mul37 = mul nsw i32 %95, %96
  %sub38 = sub nsw i32 %94, %mul37
  %97 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub39 = sub nsw i32 %sub38, %97
  store i32 %sub39, i32* %right_tile_width, align 4, !tbaa !5
  %98 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom40 = sext i32 %98 to i64
  %99 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis41 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %99, i32 0, i32 30
  %100 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis41, align 8, !tbaa !49
  %dev_ht42 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %100, i32 0, i32 41
  %101 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht42, align 8, !tbaa !50
  %components43 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %101, i32 0, i32 4
  %102 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components43, align 8, !tbaa !66
  %arrayidx44 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %102, i64 %idxprom40
  %corder45 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx44, i32 0, i32 0
  %threshold46 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder45, i32 0, i32 17
  %103 = load i8*, i8** %threshold46, align 8, !tbaa !102
  store i8* %103, i8** %threshold, align 8, !tbaa !1
  %104 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %104, i32 0, i32 34
  %105 = load i8*, i8** %line, align 8, !tbaa !76
  %106 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %107 = load i32, i32* %j, align 4, !tbaa !5
  %mul47 = mul nsw i32 %106, %107
  %idx.ext48 = sext i32 %mul47 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %105, i64 %idx.ext48
  %108 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom50 = sext i32 %108 to i64
  %109 = load i32*, i32** %offset_contone.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i32, i32* %109, i64 %idxprom50
  %110 = load i32, i32* %arrayidx51, align 4, !tbaa !5
  %idx.ext52 = sext i32 %110 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %add.ptr49, i64 %idx.ext52
  store i8* %add.ptr53, i8** %contone_align, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc, %land.end
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %112 = load i32, i32* %vdi, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %111, %112
  br i1 %cmp55, label %for.body.57, label %for.end

for.body.57:                                      ; preds = %for.cond.54
  %113 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %yci58 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %113, i32 0, i32 60
  %114 = load i32, i32* %yci58, align 4, !tbaa !95
  %115 = load i32, i32* %k, align 4, !tbaa !5
  %add59 = add nsw i32 %114, %115
  %conv60 = sext i32 %add59 to i64
  %116 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev61 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %116, i32 0, i32 2
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %dev61, align 8, !tbaa !12
  %band_offset_y = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 34
  %118 = load i64, i64* %band_offset_y, align 8, !tbaa !103
  %add62 = add nsw i64 %conv60, %118
  %119 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %conv63 = sext i32 %119 to i64
  %rem64 = srem i64 %add62, %conv63
  %conv65 = trunc i64 %rem64 to i32
  store i32 %conv65, i32* %dy, align 4, !tbaa !5
  %120 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %120, 0
  br i1 %cmp66, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.57
  %121 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %122 = load i32, i32* %dy, align 4, !tbaa !5
  %add68 = add nsw i32 %122, %121
  store i32 %add68, i32* %dy, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.57
  %123 = load i8*, i8** %threshold, align 8, !tbaa !1
  %124 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %125 = load i32, i32* %dy, align 4, !tbaa !5
  %mul69 = mul nsw i32 %124, %125
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %123, i64 %idx.ext70
  store i8* %add.ptr71, i8** %thresh_tile, align 8, !tbaa !1
  %126 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %127 = load i32, i32* %k, align 4, !tbaa !5
  %mul72 = mul nsw i32 %126, %127
  store i32 %mul72, i32* %position, align 4, !tbaa !5
  %128 = load i32, i32* %position, align 4, !tbaa !5
  %idxprom73 = sext i32 %128 to i64
  %129 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds i8, i8* %129, i64 %idxprom73
  %130 = load i8*, i8** %thresh_tile, align 8, !tbaa !1
  %131 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %132 = load i32, i32* %dx, align 4, !tbaa !5
  %133 = load i32, i32* %left_width, align 4, !tbaa !5
  %134 = load i32, i32* %num_full_tiles, align 4, !tbaa !5
  %135 = load i32, i32* %right_tile_width, align 4, !tbaa !5
  call void @fill_threshhold_buffer(i8* %arrayidx74, i8* %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %136 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.54

for.end:                                          ; preds = %for.cond.54
  %137 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %138 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %cmp75 = icmp sgt i32 %137, %138
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %for.end
  %139 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  store i32 %139, i32* %offset_bits, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %for.end
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info79 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %140, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info79, i32 0, i32 2
  %141 = load i32, i32* %polarity, align 4, !tbaa !104
  %cmp80 = icmp eq i32 %141, 0
  br i1 %cmp80, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.78
  %142 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool = icmp ne i32 %142, 0
  br i1 %tobool, label %if.then.82, label %if.else

if.then.82:                                       ; preds = %land.lhs.true
  %143 = load i8*, i8** %contone_align, align 8, !tbaa !1
  %144 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %145 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %146 = load i8*, i8** %halftone, align 8, !tbaa !1
  %147 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %148 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %149 = load i32, i32* %vdi, align 4, !tbaa !5
  %150 = load i32, i32* %offset_bits, align 4, !tbaa !5
  call void @gx_ht_threshold_row_bit_sub(i8* %143, i8* %144, i32 %145, i8* %146, i32 %147, i32 %148, i32 %149, i32 %150) #7
  br label %if.end.83

if.else:                                          ; preds = %land.lhs.true, %if.end.78
  %151 = load i8*, i8** %contone_align, align 8, !tbaa !1
  %152 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %153 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %154 = load i8*, i8** %halftone, align 8, !tbaa !1
  %155 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %156 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %157 = load i32, i32* %vdi, align 4, !tbaa !5
  %158 = load i32, i32* %offset_bits, align 4, !tbaa !5
  call void @gx_ht_threshold_row_bit(i8* %151, i8* %152, i32 %153, i8* %154, i32 %155, i32 %156, i32 %157, i32 %158) #7
  br label %if.end.83

if.end.83:                                        ; preds = %if.else, %if.then.82
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %159 = load i32, i32* %j, align 4, !tbaa !5
  %inc85 = add nsw i32 %159, 1
  store i32 %inc85, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end.86:                                       ; preds = %for.cond
  %160 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %160, 0
  br i1 %cmp87, label %if.then.89, label %if.end.100

if.then.89:                                       ; preds = %for.end.86
  %161 = bitcast i32* %x_pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = load i32, i32* %xrun.addr, align 4, !tbaa !5
  %shr90 = ashr i32 %162, 8
  store i32 %shr90, i32* %x_pos, align 4, !tbaa !5
  %163 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool91 = icmp ne i32 %163, 0
  br i1 %tobool91, label %if.else.95, label %if.then.92

if.then.92:                                       ; preds = %if.then.89
  %164 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %164, i32 0, i32 42
  %copy_mono = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 9
  %165 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono, align 8, !tbaa !105
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %167 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer93 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %167, i32 0, i32 72
  %168 = load i8*, i8** %ht_buffer93, align 8, !tbaa !78
  %169 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %170 = load i32, i32* %x_pos, align 4, !tbaa !5
  %171 = load i32, i32* %y_pos, align 4, !tbaa !5
  %172 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %173 = load i32, i32* %vdi, align 4, !tbaa !5
  %174 = load i64, i64* %dev_white, align 8, !tbaa !97
  %175 = load i64, i64* %dev_black, align 8, !tbaa !97
  %call94 = call i32 %165(%struct.gx_device_s* %166, i8* %168, i32 0, i32 %169, i64 0, i32 %170, i32 %171, i32 %172, i32 %173, i64 %174, i64 %175) #7
  br label %if.end.99

if.else.95:                                       ; preds = %if.then.89
  %176 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs96 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %176, i32 0, i32 42
  %copy_planes = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs96, i32 0, i32 66
  %177 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes, align 8, !tbaa !106
  %178 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %179 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer97 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %179, i32 0, i32 72
  %180 = load i8*, i8** %ht_buffer97, align 8, !tbaa !78
  %181 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %182 = load i32, i32* %x_pos, align 4, !tbaa !5
  %183 = load i32, i32* %y_pos, align 4, !tbaa !5
  %184 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %185 = load i32, i32* %vdi, align 4, !tbaa !5
  %186 = load i32, i32* %vdi, align 4, !tbaa !5
  %call98 = call i32 %177(%struct.gx_device_s* %178, i8* %180, i32 0, i32 %181, i64 0, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186) #7
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.95, %if.then.92
  %187 = bitcast i32* %x_pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %for.end.86
  %188 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %189 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %sub101 = sub nsw i32 %188, %189
  %cmp102 = icmp sgt i32 %sub101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.124

if.then.104:                                      ; preds = %if.end.100
  %190 = bitcast i32* %curr_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %dest_width.addr, align 4, !tbaa !5
  %192 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %sub105 = sub nsw i32 %191, %192
  store i32 %sub105, i32* %curr_width, align 4, !tbaa !5
  %193 = bitcast i32* %x_pos106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %193) #1
  %194 = load i32, i32* %xrun.addr, align 4, !tbaa !5
  %shr107 = ashr i32 %194, 8
  %195 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %add108 = add nsw i32 %shr107, %195
  store i32 %add108, i32* %x_pos106, align 4, !tbaa !5
  %196 = bitcast i32* %xoffs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %196) #1
  %197 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp109 = icmp sgt i32 %197, 0
  %cond111 = select i1 %cmp109, i32 16, i32 0
  store i32 %cond111, i32* %xoffs, align 4, !tbaa !5
  %198 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool112 = icmp ne i32 %198, 0
  br i1 %tobool112, label %if.else.118, label %if.then.113

if.then.113:                                      ; preds = %if.then.104
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %199, i32 0, i32 42
  %copy_mono115 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs114, i32 0, i32 9
  %200 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono115, align 8, !tbaa !105
  %201 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %202 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer116 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %202, i32 0, i32 72
  %203 = load i8*, i8** %ht_buffer116, align 8, !tbaa !78
  %204 = load i32, i32* %xoffs, align 4, !tbaa !5
  %205 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %206 = load i32, i32* %x_pos106, align 4, !tbaa !5
  %207 = load i32, i32* %y_pos, align 4, !tbaa !5
  %208 = load i32, i32* %curr_width, align 4, !tbaa !5
  %209 = load i32, i32* %vdi, align 4, !tbaa !5
  %210 = load i64, i64* %dev_white, align 8, !tbaa !97
  %211 = load i64, i64* %dev_black, align 8, !tbaa !97
  %call117 = call i32 %200(%struct.gx_device_s* %201, i8* %203, i32 %204, i32 %205, i64 0, i32 %206, i32 %207, i32 %208, i32 %209, i64 %210, i64 %211) #7
  br label %if.end.123

if.else.118:                                      ; preds = %if.then.104
  %212 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs119 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %212, i32 0, i32 42
  %copy_planes120 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs119, i32 0, i32 66
  %213 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes120, align 8, !tbaa !106
  %214 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %215 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer121 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %215, i32 0, i32 72
  %216 = load i8*, i8** %ht_buffer121, align 8, !tbaa !78
  %217 = load i32, i32* %xoffs, align 4, !tbaa !5
  %218 = load i32, i32* %dithered_stride, align 4, !tbaa !5
  %219 = load i32, i32* %x_pos106, align 4, !tbaa !5
  %220 = load i32, i32* %y_pos, align 4, !tbaa !5
  %221 = load i32, i32* %curr_width, align 4, !tbaa !5
  %222 = load i32, i32* %vdi, align 4, !tbaa !5
  %223 = load i32, i32* %vdi, align 4, !tbaa !5
  %call122 = call i32 %213(%struct.gx_device_s* %214, i8* %216, i32 %217, i32 %218, i64 0, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223) #7
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.118, %if.then.113
  %224 = bitcast i32* %xoffs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %x_pos106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %curr_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.end.100
  br label %sw.epilog

sw.bb.125:                                        ; preds = %entry
  %227 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %wci = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %227, i32 0, i32 63
  %228 = load i32, i32* %wci, align 4, !tbaa !107
  store i32 %228, i32* %vdi, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.409, %sw.bb.125
  %229 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %229, i32 0, i32 79
  %count = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape, i32 0, i32 0
  %230 = load i32, i32* %count, align 4, !tbaa !81
  %cmp126 = icmp sge i32 %230, 64
  br i1 %cmp126, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %231 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape128 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %231, i32 0, i32 79
  %count129 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape128, i32 0, i32 0
  %232 = load i32, i32* %count129, align 4, !tbaa !81
  %233 = load i32, i32* %offset_bits, align 4, !tbaa !5
  %cmp130 = icmp sge i32 %232, %233
  br i1 %cmp130, label %land.rhs.132, label %land.end.135

land.rhs.132:                                     ; preds = %lor.rhs
  %234 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape133 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %234, i32 0, i32 79
  %offset_set = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape133, i32 0, i32 6
  %235 = load i32, i32* %offset_set, align 4, !tbaa !88
  %tobool134 = icmp ne i32 %235, 0
  br label %land.end.135

land.end.135:                                     ; preds = %land.rhs.132, %lor.rhs
  %236 = phi i1 [ false, %lor.rhs ], [ %tobool134, %land.rhs.132 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.135, %while.cond
  %237 = phi i1 [ true, %while.cond ], [ %236, %land.end.135 ]
  br i1 %237, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.329, %while.body
  %238 = load i32, i32* %j, align 4, !tbaa !5
  %239 = load i32, i32* %spp_out, align 4, !tbaa !5
  %cmp138 = icmp slt i32 %238, %239
  br i1 %cmp138, label %for.body.140, label %for.end.331

for.body.140:                                     ; preds = %for.cond.137
  %240 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer141 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %240, i32 0, i32 72
  %241 = load i8*, i8** %ht_buffer141, align 8, !tbaa !78
  %242 = load i32, i32* %j, align 4, !tbaa !5
  %243 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_plane_height = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %243, i32 0, i32 75
  %244 = load i32, i32* %ht_plane_height, align 4, !tbaa !79
  %mul142 = mul nsw i32 %242, %244
  %mul143 = mul nsw i32 %mul142, 8
  %idx.ext144 = sext i32 %mul143 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %241, i64 %idx.ext144
  store i8* %add.ptr145, i8** %halftone, align 8, !tbaa !1
  %245 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom146 = sext i32 %245 to i64
  %246 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis147 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %246, i32 0, i32 30
  %247 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis147, align 8, !tbaa !49
  %dev_ht148 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %247, i32 0, i32 41
  %248 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht148, align 8, !tbaa !50
  %components149 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %248, i32 0, i32 4
  %249 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components149, align 8, !tbaa !66
  %arrayidx150 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %249, i64 %idxprom146
  %corder151 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx150, i32 0, i32 0
  %width152 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder151, i32 0, i32 1
  %250 = load i16, i16* %width152, align 2, !tbaa !99
  %conv153 = zext i16 %250 to i32
  store i32 %conv153, i32* %thresh_width, align 4, !tbaa !5
  %251 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom154 = sext i32 %251 to i64
  %252 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis155 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %252, i32 0, i32 30
  %253 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis155, align 8, !tbaa !49
  %dev_ht156 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %253, i32 0, i32 41
  %254 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht156, align 8, !tbaa !50
  %components157 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %254, i32 0, i32 4
  %255 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components157, align 8, !tbaa !66
  %arrayidx158 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %255, i64 %idxprom154
  %corder159 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx158, i32 0, i32 0
  %full_height160 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder159, i32 0, i32 7
  %256 = load i32, i32* %full_height160, align 4, !tbaa !101
  store i32 %256, i32* %thresh_height, align 4, !tbaa !5
  %257 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom161 = sext i32 %257 to i64
  %258 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %pis162 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %258, i32 0, i32 30
  %259 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis162, align 8, !tbaa !49
  %dev_ht163 = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %259, i32 0, i32 41
  %260 = load %struct.gx_device_halftone_s*, %struct.gx_device_halftone_s** %dev_ht163, align 8, !tbaa !50
  %components164 = getelementptr inbounds %struct.gx_device_halftone_s, %struct.gx_device_halftone_s* %260, i32 0, i32 4
  %261 = load %struct.gx_ht_order_component_s*, %struct.gx_ht_order_component_s** %components164, align 8, !tbaa !66
  %arrayidx165 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %261, i64 %idxprom161
  %corder166 = getelementptr inbounds %struct.gx_ht_order_component_s, %struct.gx_ht_order_component_s* %arrayidx165, i32 0, i32 0
  %threshold167 = getelementptr inbounds %struct.gx_ht_order_s, %struct.gx_ht_order_s* %corder166, i32 0, i32 17
  %262 = load i8*, i8** %threshold167, align 8, !tbaa !102
  store i8* %262, i8** %threshold, align 8, !tbaa !1
  %263 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %line168 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %263, i32 0, i32 34
  %264 = load i8*, i8** %line168, align 8, !tbaa !76
  %265 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom169 = sext i32 %265 to i64
  %266 = load i32*, i32** %offset_contone.addr, align 8, !tbaa !1
  %arrayidx170 = getelementptr inbounds i32, i32* %266, i64 %idxprom169
  %267 = load i32, i32* %arrayidx170, align 4, !tbaa !5
  %idx.ext171 = sext i32 %267 to i64
  %add.ptr172 = getelementptr inbounds i8, i8* %264, i64 %idx.ext171
  %268 = load i32, i32* %j, align 4, !tbaa !5
  %mul173 = mul nsw i32 64, %268
  %269 = load i32, i32* %contone_stride.addr, align 4, !tbaa !5
  %mul174 = mul nsw i32 %mul173, %269
  %idx.ext175 = sext i32 %mul174 to i64
  %add.ptr176 = getelementptr inbounds i8, i8* %add.ptr172, i64 %idx.ext175
  store i8* %add.ptr176, i8** %contone_align, align 8, !tbaa !1
  %270 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape177 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %270, i32 0, i32 79
  %offset_set178 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape177, i32 0, i32 6
  %271 = load i32, i32* %offset_set178, align 4, !tbaa !88
  %tobool179 = icmp ne i32 %271, 0
  br i1 %tobool179, label %if.then.180, label %if.else.181

if.then.180:                                      ; preds = %for.body.140
  %272 = load i32, i32* %offset_bits, align 4, !tbaa !5
  store i32 %272, i32* %width, align 4, !tbaa !5
  br label %if.end.182

if.else.181:                                      ; preds = %for.body.140
  store i32 64, i32* %width, align 4, !tbaa !5
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.181, %if.then.180
  %273 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %y_extent = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %273, i32 0, i32 27
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %y_extent, i32 0, i32 0
  %274 = load i32, i32* %x, align 4, !tbaa !83
  %cmp183 = icmp slt i32 %274, 0
  br i1 %cmp183, label %if.then.185, label %if.else.190

if.then.185:                                      ; preds = %if.end.182
  %275 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape186 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %275, i32 0, i32 79
  %xstart = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape186, i32 0, i32 2
  %276 = load i32, i32* %xstart, align 4, !tbaa !108
  %277 = load i32, i32* %width, align 4, !tbaa !5
  %sub187 = sub nsw i32 %276, %277
  %add188 = add nsw i32 %sub187, 1
  %278 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %rem189 = srem i32 %add188, %278
  store i32 %rem189, i32* %dx, align 4, !tbaa !5
  br label %if.end.194

if.else.190:                                      ; preds = %if.end.182
  %279 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape191 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %279, i32 0, i32 79
  %xstart192 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape191, i32 0, i32 2
  %280 = load i32, i32* %xstart192, align 4, !tbaa !108
  %281 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %rem193 = srem i32 %280, %281
  store i32 %rem193, i32* %dx, align 4, !tbaa !5
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.190, %if.then.185
  %282 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %dev195 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %282, i32 0, i32 2
  %283 = load %struct.gx_device_s*, %struct.gx_device_s** %dev195, align 8, !tbaa !12
  %band_offset_y196 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %283, i32 0, i32 34
  %284 = load i64, i64* %band_offset_y196, align 8, !tbaa !103
  %285 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape197 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %285, i32 0, i32 79
  %y_pos198 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape197, i32 0, i32 8
  %286 = load i32, i32* %y_pos198, align 4, !tbaa !87
  %conv199 = sext i32 %286 to i64
  %add200 = add nsw i64 %284, %conv199
  %287 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %conv201 = sext i32 %287 to i64
  %rem202 = srem i64 %add200, %conv201
  %conv203 = trunc i64 %rem202 to i32
  store i32 %conv203, i32* %dy, align 4, !tbaa !5
  %288 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp204 = icmp slt i32 %288, 0
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.194
  %289 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %290 = load i32, i32* %dy, align 4, !tbaa !5
  %add207 = add nsw i32 %290, %289
  store i32 %add207, i32* %dy, align 4, !tbaa !5
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %if.end.194
  %291 = load i32, i32* %dx, align 4, !tbaa !5
  %add209 = add nsw i32 %291, 64
  %292 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %cmp210 = icmp slt i32 %add209, %292
  br i1 %cmp210, label %cond.true.212, label %cond.false.214

cond.true.212:                                    ; preds = %if.end.208
  %293 = load i32, i32* %dx, align 4, !tbaa !5
  %add213 = add nsw i32 %293, 64
  br label %cond.end.215

cond.false.214:                                   ; preds = %if.end.208
  %294 = load i32, i32* %thresh_width, align 4, !tbaa !5
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.false.214, %cond.true.212
  %cond216 = phi i32 [ %add213, %cond.true.212 ], [ %294, %cond.false.214 ]
  store i32 %cond216, i32* %left_rem_end, align 4, !tbaa !5
  %295 = load i32, i32* %left_rem_end, align 4, !tbaa !5
  %296 = load i32, i32* %dx, align 4, !tbaa !5
  %sub217 = sub nsw i32 %295, %296
  store i32 %sub217, i32* %left_width, align 4, !tbaa !5
  %297 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub218 = sub nsw i32 64, %297
  %298 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %div219 = sdiv i32 %sub218, %298
  store i32 %div219, i32* %num_full_tiles, align 4, !tbaa !5
  %299 = load i32, i32* %num_full_tiles, align 4, !tbaa !5
  %300 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %mul220 = mul nsw i32 %299, %300
  %sub221 = sub nsw i32 64, %mul220
  %301 = load i32, i32* %left_width, align 4, !tbaa !5
  %sub222 = sub nsw i32 %sub221, %301
  store i32 %sub222, i32* %right_tile_width, align 4, !tbaa !5
  %302 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  store i8* %302, i8** %ptr_out, align 8, !tbaa !1
  %303 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %304 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %mul223 = mul nsw i32 2, %304
  %cmp224 = icmp sle i32 %303, %mul223
  br i1 %cmp224, label %if.then.226, label %if.else.227

if.then.226:                                      ; preds = %cond.end.215
  %305 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  store i32 %305, i32* %init_tile, align 4, !tbaa !5
  store i32 0, i32* %replicate_tile, align 4, !tbaa !5
  br label %if.end.228

if.else.227:                                      ; preds = %cond.end.215
  %306 = load i32, i32* %thresh_height, align 4, !tbaa !5
  store i32 %306, i32* %init_tile, align 4, !tbaa !5
  store i32 1, i32* %replicate_tile, align 4, !tbaa !5
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.227, %if.then.226
  store i32 0, i32* %jj, align 4, !tbaa !5
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.258, %if.end.228
  %307 = load i32, i32* %jj, align 4, !tbaa !5
  %308 = load i32, i32* %init_tile, align 4, !tbaa !5
  %cmp230 = icmp slt i32 %307, %308
  br i1 %cmp230, label %for.body.232, label %for.end.260

for.body.232:                                     ; preds = %for.cond.229
  %309 = load i32, i32* %jj, align 4, !tbaa !5
  %310 = load i32, i32* %dy, align 4, !tbaa !5
  %add233 = add nsw i32 %309, %310
  %311 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %rem234 = srem i32 %add233, %311
  store i32 %rem234, i32* %in_row_offset, align 4, !tbaa !5
  %312 = load i8*, i8** %threshold, align 8, !tbaa !1
  %313 = load i32, i32* %in_row_offset, align 4, !tbaa !5
  %314 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %mul235 = mul nsw i32 %313, %314
  %idx.ext236 = sext i32 %mul235 to i64
  %add.ptr237 = getelementptr inbounds i8, i8* %312, i64 %idx.ext236
  store i8* %add.ptr237, i8** %row_ptr, align 8, !tbaa !1
  %315 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  store i8* %315, i8** %ptr_out_temp, align 8, !tbaa !1
  %316 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %317 = load i8*, i8** %row_ptr, align 8, !tbaa !1
  %318 = load i32, i32* %dx, align 4, !tbaa !5
  %idx.ext238 = sext i32 %318 to i64
  %add.ptr239 = getelementptr inbounds i8, i8* %317, i64 %idx.ext238
  %319 = load i32, i32* %left_width, align 4, !tbaa !5
  %conv240 = sext i32 %319 to i64
  %call241 = call i8* @memcpy(i8* %316, i8* %add.ptr239, i64 %conv240) #8
  %320 = load i32, i32* %left_width, align 4, !tbaa !5
  %321 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %idx.ext242 = sext i32 %320 to i64
  %add.ptr243 = getelementptr inbounds i8, i8* %321, i64 %idx.ext242
  store i8* %add.ptr243, i8** %ptr_out_temp, align 8, !tbaa !1
  store i32 0, i32* %ii, align 4, !tbaa !5
  br label %for.cond.244

for.cond.244:                                     ; preds = %for.inc.252, %for.body.232
  %322 = load i32, i32* %ii, align 4, !tbaa !5
  %323 = load i32, i32* %num_full_tiles, align 4, !tbaa !5
  %cmp245 = icmp slt i32 %322, %323
  br i1 %cmp245, label %for.body.247, label %for.end.254

for.body.247:                                     ; preds = %for.cond.244
  %324 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %325 = load i8*, i8** %row_ptr, align 8, !tbaa !1
  %326 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %conv248 = sext i32 %326 to i64
  %call249 = call i8* @memcpy(i8* %324, i8* %325, i64 %conv248) #8
  %327 = load i32, i32* %thresh_width, align 4, !tbaa !5
  %328 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %idx.ext250 = sext i32 %327 to i64
  %add.ptr251 = getelementptr inbounds i8, i8* %328, i64 %idx.ext250
  store i8* %add.ptr251, i8** %ptr_out_temp, align 8, !tbaa !1
  br label %for.inc.252

for.inc.252:                                      ; preds = %for.body.247
  %329 = load i32, i32* %ii, align 4, !tbaa !5
  %inc253 = add nsw i32 %329, 1
  store i32 %inc253, i32* %ii, align 4, !tbaa !5
  br label %for.cond.244

for.end.254:                                      ; preds = %for.cond.244
  %330 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %331 = load i8*, i8** %row_ptr, align 8, !tbaa !1
  %332 = load i32, i32* %right_tile_width, align 4, !tbaa !5
  %conv255 = sext i32 %332 to i64
  %call256 = call i8* @memcpy(i8* %330, i8* %331, i64 %conv255) #8
  %333 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %add.ptr257 = getelementptr inbounds i8, i8* %333, i64 64
  store i8* %add.ptr257, i8** %ptr_out, align 8, !tbaa !1
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.end.254
  %334 = load i32, i32* %jj, align 4, !tbaa !5
  %inc259 = add nsw i32 %334, 1
  store i32 %inc259, i32* %jj, align 4, !tbaa !5
  br label %for.cond.229

for.end.260:                                      ; preds = %for.cond.229
  %335 = load i32, i32* %replicate_tile, align 4, !tbaa !5
  %tobool261 = icmp ne i32 %335, 0
  br i1 %tobool261, label %if.then.262, label %if.end.309

if.then.262:                                      ; preds = %for.end.260
  %336 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %337 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %sub263 = sub nsw i32 %336, %337
  %conv264 = sitofp i32 %sub263 to float
  %338 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %conv265 = sitofp i32 %338 to float
  %div266 = fdiv float %conv264, %conv265
  %conv267 = fptosi float %div266 to i32
  %339 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %340 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %sub268 = sub nsw i32 %339, %340
  %conv269 = sitofp i32 %sub268 to float
  %341 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %conv270 = sitofp i32 %341 to float
  %div271 = fdiv float %conv269, %conv270
  %cmp272 = fcmp olt float %div271, 0.000000e+00
  br i1 %cmp272, label %land.rhs.274, label %land.end.287

land.rhs.274:                                     ; preds = %if.then.262
  %342 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %343 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %sub275 = sub nsw i32 %342, %343
  %conv276 = sitofp i32 %sub275 to float
  %344 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %conv277 = sitofp i32 %344 to float
  %div278 = fdiv float %conv276, %conv277
  %345 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %346 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %sub279 = sub nsw i32 %345, %346
  %conv280 = sitofp i32 %sub279 to float
  %347 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %conv281 = sitofp i32 %347 to float
  %div282 = fdiv float %conv280, %conv281
  %conv283 = fptosi float %div282 to i32
  %conv284 = sitofp i32 %conv283 to float
  %cmp285 = fcmp une float %div278, %conv284
  br label %land.end.287

land.end.287:                                     ; preds = %land.rhs.274, %if.then.262
  %348 = phi i1 [ false, %if.then.262 ], [ %cmp285, %land.rhs.274 ]
  %land.ext288 = zext i1 %348 to i32
  %sub289 = sub nsw i32 %conv267, %land.ext288
  store i32 %sub289, i32* %num_tiles, align 4, !tbaa !5
  %349 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %350 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %add290 = add nsw i32 %350, 1
  %351 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %mul291 = mul nsw i32 %add290, %351
  %sub292 = sub nsw i32 %349, %mul291
  store i32 %sub292, i32* %tile_remainder, align 4, !tbaa !5
  store i32 0, i32* %jj, align 4, !tbaa !5
  br label %for.cond.293

for.cond.293:                                     ; preds = %for.inc.303, %land.end.287
  %352 = load i32, i32* %jj, align 4, !tbaa !5
  %353 = load i32, i32* %num_tiles, align 4, !tbaa !5
  %cmp294 = icmp slt i32 %352, %353
  br i1 %cmp294, label %for.body.296, label %for.end.305

for.body.296:                                     ; preds = %for.cond.293
  %354 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %355 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %356 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %mul297 = mul nsw i32 64, %356
  %conv298 = sext i32 %mul297 to i64
  %call299 = call i8* @memcpy(i8* %354, i8* %355, i64 %conv298) #8
  %357 = load i32, i32* %thresh_height, align 4, !tbaa !5
  %mul300 = mul nsw i32 64, %357
  %358 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %idx.ext301 = sext i32 %mul300 to i64
  %add.ptr302 = getelementptr inbounds i8, i8* %358, i64 %idx.ext301
  store i8* %add.ptr302, i8** %ptr_out, align 8, !tbaa !1
  br label %for.inc.303

for.inc.303:                                      ; preds = %for.body.296
  %359 = load i32, i32* %jj, align 4, !tbaa !5
  %inc304 = add nsw i32 %359, 1
  store i32 %inc304, i32* %jj, align 4, !tbaa !5
  br label %for.cond.293

for.end.305:                                      ; preds = %for.cond.293
  %360 = load i8*, i8** %ptr_out, align 8, !tbaa !1
  %361 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %362 = load i32, i32* %tile_remainder, align 4, !tbaa !5
  %mul306 = mul nsw i32 64, %362
  %conv307 = sext i32 %mul306 to i64
  %call308 = call i8* @memcpy(i8* %360, i8* %361, i64 %conv307) #8
  br label %if.end.309

if.end.309:                                       ; preds = %for.end.305, %for.end.260
  %363 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info310 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %363, i32 0, i32 11
  %polarity311 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info310, i32 0, i32 2
  %364 = load i32, i32* %polarity311, align 4, !tbaa !104
  %cmp312 = icmp eq i32 %364, 0
  br i1 %cmp312, label %land.lhs.true.314, label %if.else.318

land.lhs.true.314:                                ; preds = %if.end.309
  %365 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool315 = icmp ne i32 %365, 0
  br i1 %tobool315, label %if.then.316, label %if.else.318

if.then.316:                                      ; preds = %land.lhs.true.314
  %366 = load i8*, i8** %contone_align, align 8, !tbaa !1
  %367 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %368 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape317 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %368, i32 0, i32 79
  %369 = load i8*, i8** %halftone, align 8, !tbaa !1
  %370 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %371 = bitcast %struct.ht_landscape_info_s* %tmp to i8*
  %372 = bitcast %struct.ht_landscape_info_s* %ht_landscape317 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %371, i8* %372, i64 288, i32 4, i1 false), !tbaa.struct !109
  call void @gx_ht_threshold_landscape_sub(i8* %366, i8* %367, %struct.ht_landscape_info_s* byval align 8 %tmp, i8* %369, i32 %370) #7
  br label %if.end.321

if.else.318:                                      ; preds = %land.lhs.true.314, %if.end.309
  %373 = load i8*, i8** %contone_align, align 8, !tbaa !1
  %374 = load i8*, i8** %thresh_align.addr, align 8, !tbaa !1
  %375 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape319 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %375, i32 0, i32 79
  %376 = load i8*, i8** %halftone, align 8, !tbaa !1
  %377 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %378 = bitcast %struct.ht_landscape_info_s* %tmp320 to i8*
  %379 = bitcast %struct.ht_landscape_info_s* %ht_landscape319 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %378, i8* %379, i64 288, i32 4, i1 false), !tbaa.struct !109
  call void @gx_ht_threshold_landscape(i8* %373, i8* %374, %struct.ht_landscape_info_s* byval align 8 %tmp320, i8* %376, i32 %377) #7
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.then.316
  %380 = load i32, i32* %width, align 4, !tbaa !5
  %381 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape322 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %381, i32 0, i32 79
  %count323 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape322, i32 0, i32 0
  %382 = load i32, i32* %count323, align 4, !tbaa !81
  %cmp324 = icmp ne i32 %380, %382
  br i1 %cmp324, label %if.then.326, label %if.end.328

if.then.326:                                      ; preds = %if.end.321
  %383 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape327 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %383, i32 0, i32 79
  %384 = load i8*, i8** %contone_align, align 8, !tbaa !1
  %385 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  call void @move_landscape_buffer(%struct.ht_landscape_info_s* %ht_landscape327, i8* %384, i32 %385) #7
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.326, %if.end.321
  br label %for.inc.329

for.inc.329:                                      ; preds = %if.end.328
  %386 = load i32, i32* %j, align 4, !tbaa !5
  %inc330 = add nsw i32 %386, 1
  store i32 %inc330, i32* %j, align 4, !tbaa !5
  br label %for.cond.137

for.end.331:                                      ; preds = %for.cond.137
  %387 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape332 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %387, i32 0, i32 79
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape332, i32 0, i32 4
  %388 = load i32, i32* %index, align 4, !tbaa !85
  %cmp333 = icmp slt i32 %388, 0
  br i1 %cmp333, label %if.then.335, label %if.else.361

if.then.335:                                      ; preds = %for.end.331
  %389 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool336 = icmp ne i32 %389, 0
  br i1 %tobool336, label %if.else.348, label %if.then.337

if.then.337:                                      ; preds = %if.then.335
  %390 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs338 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %390, i32 0, i32 42
  %copy_mono339 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs338, i32 0, i32 9
  %391 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono339, align 8, !tbaa !105
  %392 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %393 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer340 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %393, i32 0, i32 72
  %394 = load i8*, i8** %ht_buffer340, align 8, !tbaa !78
  %395 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape341 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %395, i32 0, i32 79
  %xstart342 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape341, i32 0, i32 2
  %396 = load i32, i32* %xstart342, align 4, !tbaa !108
  %397 = load i32, i32* %width, align 4, !tbaa !5
  %sub343 = sub nsw i32 %396, %397
  %add344 = add nsw i32 %sub343, 1
  %398 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape345 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %398, i32 0, i32 79
  %y_pos346 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape345, i32 0, i32 8
  %399 = load i32, i32* %y_pos346, align 4, !tbaa !87
  %400 = load i32, i32* %width, align 4, !tbaa !5
  %401 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %402 = load i64, i64* %dev_white, align 8, !tbaa !97
  %403 = load i64, i64* %dev_black, align 8, !tbaa !97
  %call347 = call i32 %391(%struct.gx_device_s* %392, i8* %394, i32 0, i32 8, i64 0, i32 %add344, i32 %399, i32 %400, i32 %401, i64 %402, i64 %403) #7
  br label %if.end.360

if.else.348:                                      ; preds = %if.then.335
  %404 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs349 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %404, i32 0, i32 42
  %copy_planes350 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs349, i32 0, i32 66
  %405 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes350, align 8, !tbaa !106
  %406 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %407 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer351 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %407, i32 0, i32 72
  %408 = load i8*, i8** %ht_buffer351, align 8, !tbaa !78
  %409 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape352 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %409, i32 0, i32 79
  %xstart353 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape352, i32 0, i32 2
  %410 = load i32, i32* %xstart353, align 4, !tbaa !108
  %411 = load i32, i32* %width, align 4, !tbaa !5
  %sub354 = sub nsw i32 %410, %411
  %add355 = add nsw i32 %sub354, 1
  %412 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape356 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %412, i32 0, i32 79
  %y_pos357 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape356, i32 0, i32 8
  %413 = load i32, i32* %y_pos357, align 4, !tbaa !87
  %414 = load i32, i32* %width, align 4, !tbaa !5
  %415 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %416 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_plane_height358 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %416, i32 0, i32 75
  %417 = load i32, i32* %ht_plane_height358, align 4, !tbaa !79
  %call359 = call i32 %405(%struct.gx_device_s* %406, i8* %408, i32 0, i32 8, i64 0, i32 %add355, i32 %413, i32 %414, i32 %415, i32 %417) #7
  br label %if.end.360

if.end.360:                                       ; preds = %if.else.348, %if.then.337
  br label %if.end.383

if.else.361:                                      ; preds = %for.end.331
  %418 = load i32, i32* %is_planar_dev, align 4, !tbaa !5
  %tobool362 = icmp ne i32 %418, 0
  br i1 %tobool362, label %if.else.372, label %if.then.363

if.then.363:                                      ; preds = %if.else.361
  %419 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs364 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %419, i32 0, i32 42
  %copy_mono365 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs364, i32 0, i32 9
  %420 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)** %copy_mono365, align 8, !tbaa !105
  %421 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %422 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer366 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %422, i32 0, i32 72
  %423 = load i8*, i8** %ht_buffer366, align 8, !tbaa !78
  %424 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape367 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %424, i32 0, i32 79
  %xstart368 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape367, i32 0, i32 2
  %425 = load i32, i32* %xstart368, align 4, !tbaa !108
  %426 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape369 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %426, i32 0, i32 79
  %y_pos370 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape369, i32 0, i32 8
  %427 = load i32, i32* %y_pos370, align 4, !tbaa !87
  %428 = load i32, i32* %width, align 4, !tbaa !5
  %429 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %430 = load i64, i64* %dev_white, align 8, !tbaa !97
  %431 = load i64, i64* %dev_black, align 8, !tbaa !97
  %call371 = call i32 %420(%struct.gx_device_s* %421, i8* %423, i32 0, i32 8, i64 0, i32 %425, i32 %427, i32 %428, i32 %429, i64 %430, i64 %431) #7
  br label %if.end.382

if.else.372:                                      ; preds = %if.else.361
  %432 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs373 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %432, i32 0, i32 42
  %copy_planes374 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs373, i32 0, i32 66
  %433 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)** %copy_planes374, align 8, !tbaa !106
  %434 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %435 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_buffer375 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %435, i32 0, i32 72
  %436 = load i8*, i8** %ht_buffer375, align 8, !tbaa !78
  %437 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape376 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %437, i32 0, i32 79
  %xstart377 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape376, i32 0, i32 2
  %438 = load i32, i32* %xstart377, align 4, !tbaa !108
  %439 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape378 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %439, i32 0, i32 79
  %y_pos379 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape378, i32 0, i32 8
  %440 = load i32, i32* %y_pos379, align 4, !tbaa !87
  %441 = load i32, i32* %width, align 4, !tbaa !5
  %442 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %443 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_plane_height380 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %443, i32 0, i32 75
  %444 = load i32, i32* %ht_plane_height380, align 4, !tbaa !79
  %call381 = call i32 %433(%struct.gx_device_s* %434, i8* %436, i32 0, i32 8, i64 0, i32 %438, i32 %440, i32 %441, i32 %442, i32 %444) #7
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.372, %if.then.363
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %if.end.360
  %445 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape384 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %445, i32 0, i32 79
  %offset_set385 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape384, i32 0, i32 6
  store i32 0, i32* %offset_set385, align 4, !tbaa !88
  %446 = load i32, i32* %width, align 4, !tbaa !5
  %447 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape386 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %447, i32 0, i32 79
  %count387 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape386, i32 0, i32 0
  %448 = load i32, i32* %count387, align 4, !tbaa !81
  %cmp388 = icmp ne i32 %446, %448
  br i1 %cmp388, label %if.then.390, label %if.else.392

if.then.390:                                      ; preds = %if.end.383
  %449 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape391 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %449, i32 0, i32 79
  %450 = load i8*, i8** %contone_align, align 8, !tbaa !1
  %451 = load i32, i32* %dest_height.addr, align 4, !tbaa !5
  %452 = load i32, i32* %width, align 4, !tbaa !5
  call void @reset_landscape_buffer(%struct.ht_landscape_info_s* %ht_landscape391, i8* %450, i32 %451, i32 %452) #7
  br label %if.end.409

if.else.392:                                      ; preds = %if.end.383
  %453 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape393 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %453, i32 0, i32 79
  %count394 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape393, i32 0, i32 0
  store i32 0, i32* %count394, align 4, !tbaa !81
  %454 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape395 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %454, i32 0, i32 79
  %index396 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape395, i32 0, i32 4
  %455 = load i32, i32* %index396, align 4, !tbaa !85
  %cmp397 = icmp slt i32 %455, 0
  br i1 %cmp397, label %if.then.399, label %if.else.401

if.then.399:                                      ; preds = %if.else.392
  %456 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape400 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %456, i32 0, i32 79
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape400, i32 0, i32 3
  store i32 63, i32* %curr_pos, align 4, !tbaa !84
  br label %if.end.404

if.else.401:                                      ; preds = %if.else.392
  %457 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape402 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %457, i32 0, i32 79
  %curr_pos403 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape402, i32 0, i32 3
  store i32 0, i32* %curr_pos403, align 4, !tbaa !84
  br label %if.end.404

if.end.404:                                       ; preds = %if.else.401, %if.then.399
  %458 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape405 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %458, i32 0, i32 79
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape405, i32 0, i32 5
  store i32 0, i32* %num_contones, align 4, !tbaa !82
  %459 = load %struct.gx_image_enum_s*, %struct.gx_image_enum_s** %penum.addr, align 8, !tbaa !1
  %ht_landscape406 = getelementptr inbounds %struct.gx_image_enum_s, %struct.gx_image_enum_s* %459, i32 0, i32 79
  %widths = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %ht_landscape406, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [64 x i32], [64 x i32]* %widths, i32 0, i64 0
  %460 = bitcast i32* %arrayidx407 to i8*
  %call408 = call i8* @memset(i8* %460, i32 0, i64 256) #8
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.404, %if.then.390
  br label %while.cond

while.end:                                        ; preds = %lor.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %call410 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gxht_thresh_planes, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 1128, i32 1, i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0)) #7
  store i32 %call410, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %while.end, %if.end.124
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default
  %461 = bitcast i8** %contone_align to i8*
  call void @llvm.lifetime.end(i64 8, i8* %461) #1
  %462 = bitcast i32* %spp_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %462) #1
  %463 = bitcast i64* %dev_black to i8*
  call void @llvm.lifetime.end(i64 8, i8* %463) #1
  %464 = bitcast i64* %dev_white to i8*
  call void @llvm.lifetime.end(i64 8, i8* %464) #1
  %465 = bitcast i32* %is_planar_dev to i8*
  call void @llvm.lifetime.end(i64 4, i8* %465) #1
  %466 = bitcast i32* %dithered_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %466) #1
  %467 = bitcast i8** %halftone to i8*
  call void @llvm.lifetime.end(i64 8, i8* %467) #1
  %468 = bitcast i32* %offset_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %468) #1
  %469 = bitcast i32* %tile_remainder to i8*
  call void @llvm.lifetime.end(i64 4, i8* %469) #1
  %470 = bitcast i32* %num_tiles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %470) #1
  %471 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %471) #1
  %472 = bitcast i32* %in_row_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %472) #1
  %473 = bitcast i32* %init_tile to i8*
  call void @llvm.lifetime.end(i64 4, i8* %473) #1
  %474 = bitcast i8** %threshold to i8*
  call void @llvm.lifetime.end(i64 8, i8* %474) #1
  %475 = bitcast i8** %ptr_out_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %475) #1
  %476 = bitcast i8** %row_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %476) #1
  %477 = bitcast i8** %ptr_out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %477) #1
  %478 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %478) #1
  %479 = bitcast i32* %y_pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %479) #1
  %480 = bitcast i32* %posture to i8*
  call void @llvm.lifetime.end(i64 4, i8* %480) #1
  %481 = bitcast i32* %replicate_tile to i8*
  call void @llvm.lifetime.end(i64 4, i8* %481) #1
  %482 = bitcast i32* %position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %482) #1
  %483 = bitcast i8** %thresh_tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %483) #1
  %484 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %484) #1
  %485 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %485) #1
  %486 = bitcast i32* %jj to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %487) #1
  %488 = bitcast i32* %right_tile_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %488) #1
  %489 = bitcast i32* %num_full_tiles to i8*
  call void @llvm.lifetime.end(i64 4, i8* %489) #1
  %490 = bitcast i32* %vdi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %490) #1
  %491 = bitcast i32* %left_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %491) #1
  %492 = bitcast i32* %left_rem_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %492) #1
  %493 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %493) #1
  %494 = bitcast i32* %thresh_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %494) #1
  %495 = bitcast i32* %thresh_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %495) #1
  %496 = load i32, i32* %retval
  ret i32 %496
}

declare i64 @gx_device_white(%struct.gx_device_s*) #2

declare i64 @gx_device_black(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal void @fill_threshhold_buffer(i8* %dest_strip, i8* %src_strip, i32 %src_width, i32 %left_offset, i32 %left_width, i32 %num_tiles, i32 %right_width) #0 {
entry:
  %dest_strip.addr = alloca i8*, align 8
  %src_strip.addr = alloca i8*, align 8
  %src_width.addr = alloca i32, align 4
  %left_offset.addr = alloca i32, align 4
  %left_width.addr = alloca i32, align 4
  %num_tiles.addr = alloca i32, align 4
  %right_width.addr = alloca i32, align 4
  %ptr_out_temp = alloca i8*, align 8
  %ii = alloca i32, align 4
  store i8* %dest_strip, i8** %dest_strip.addr, align 8, !tbaa !1
  store i8* %src_strip, i8** %src_strip.addr, align 8, !tbaa !1
  store i32 %src_width, i32* %src_width.addr, align 4, !tbaa !5
  store i32 %left_offset, i32* %left_offset.addr, align 4, !tbaa !5
  store i32 %left_width, i32* %left_width.addr, align 4, !tbaa !5
  store i32 %num_tiles, i32* %num_tiles.addr, align 4, !tbaa !5
  store i32 %right_width, i32* %right_width.addr, align 4, !tbaa !5
  %0 = bitcast i8** %ptr_out_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %dest_strip.addr, align 8, !tbaa !1
  store i8* %1, i8** %ptr_out_temp, align 8, !tbaa !1
  %2 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %dest_strip.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %src_strip.addr, align 8, !tbaa !1
  %5 = load i32, i32* %left_offset.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i32, i32* %left_width.addr, align 4, !tbaa !5
  %conv = sext i32 %6 to i64
  %call = call i8* @memcpy(i8* %3, i8* %add.ptr, i64 %conv) #8
  %7 = load i32, i32* %left_width.addr, align 4, !tbaa !5
  %8 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %8, i64 %idx.ext1
  store i8* %add.ptr2, i8** %ptr_out_temp, align 8, !tbaa !1
  store i32 0, i32* %ii, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %ii, align 4, !tbaa !5
  %10 = load i32, i32* %num_tiles.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %12 = load i8*, i8** %src_strip.addr, align 8, !tbaa !1
  %13 = load i32, i32* %src_width.addr, align 4, !tbaa !5
  %conv4 = sext i32 %13 to i64
  %call5 = call i8* @memcpy(i8* %11, i8* %12, i64 %conv4) #8
  %14 = load i32, i32* %src_width.addr, align 4, !tbaa !5
  %15 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %idx.ext6 = sext i32 %14 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %idx.ext6
  store i8* %add.ptr7, i8** %ptr_out_temp, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %ii, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %ii, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %ptr_out_temp, align 8, !tbaa !1
  %18 = load i8*, i8** %src_strip.addr, align 8, !tbaa !1
  %19 = load i32, i32* %right_width.addr, align 4, !tbaa !5
  %conv8 = sext i32 %19 to i64
  %call9 = call i8* @memcpy(i8* %17, i8* %18, i64 %conv8) #8
  %20 = bitcast i32* %ii to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  %21 = bitcast i8** %ptr_out_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @move_landscape_buffer(%struct.ht_landscape_info_s* %ht_landscape, i8* %contone_align, i32 %data_length) #0 {
entry:
  %ht_landscape.addr = alloca %struct.ht_landscape_info_s*, align 8
  %contone_align.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %position_curr = alloca i32, align 4
  %position_new = alloca i32, align 4
  store %struct.ht_landscape_info_s* %ht_landscape, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  store i8* %contone_align, i8** %contone_align.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %position_curr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %position_new to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %3, i32 0, i32 4
  %4 = load i32, i32* %index, align 4, !tbaa !10
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %5, i32 0, i32 3
  %6 = load i32, i32* %curr_pos, align 4, !tbaa !11
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %position_curr, align 4, !tbaa !5
  store i32 63, i32* %position_new, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %curr_pos1 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %7, i32 0, i32 3
  %8 = load i32, i32* %curr_pos1, align 4, !tbaa !11
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %position_curr, align 4, !tbaa !5
  store i32 0, i32* %position_new, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %position_curr, align 4, !tbaa !5
  %10 = load i32, i32* %position_new, align 4, !tbaa !5
  %cmp2 = icmp ne i32 %9, %10
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load i32, i32* %data_length.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %position_curr, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %contone_align.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  %15 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %16 = load i32, i32* %position_new, align 4, !tbaa !5
  %idxprom5 = sext i32 %16 to i64
  %17 = load i8*, i8** %contone_align.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i8, i8* %17, i64 %idxprom5
  store i8 %15, i8* %arrayidx6, align 1, !tbaa !7
  %18 = load i32, i32* %position_curr, align 4, !tbaa !5
  %add7 = add nsw i32 %18, 64
  store i32 %add7, i32* %position_curr, align 4, !tbaa !5
  %19 = load i32, i32* %position_new, align 4, !tbaa !5
  %add8 = add nsw i32 %19, 64
  store i32 %add8, i32* %position_new, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %21 = bitcast i32* %position_new to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %position_curr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_landscape_buffer(%struct.ht_landscape_info_s* %ht_landscape, i8* %contone_align, i32 %data_length, i32 %num_used) #0 {
entry:
  %ht_landscape.addr = alloca %struct.ht_landscape_info_s*, align 8
  %contone_align.addr = alloca i8*, align 8
  %data_length.addr = alloca i32, align 4
  %num_used.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %delta = alloca i32, align 4
  %curr_x_pos = alloca i32, align 4
  store %struct.ht_landscape_info_s* %ht_landscape, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  store i8* %contone_align, i8** %contone_align.addr, align 8, !tbaa !1
  store i32 %data_length, i32* %data_length.addr, align 4, !tbaa !5
  store i32 %num_used, i32* %num_used.addr, align 4, !tbaa !5
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %curr_x_pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %xstart = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %3, i32 0, i32 2
  %4 = load i32, i32* %xstart, align 4, !tbaa !110
  store i32 %4, i32* %curr_x_pos, align 4, !tbaa !5
  %5 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %index = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %5, i32 0, i32 4
  %6 = load i32, i32* %index, align 4, !tbaa !10
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %count = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %7, i32 0, i32 0
  %8 = load i32, i32* %count, align 4, !tbaa !111
  %9 = load i32, i32* %num_used.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %delta, align 4, !tbaa !5
  %10 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %widths = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %widths, i32 0, i64 0
  %11 = bitcast i32* %arrayidx to i8*
  %call = call i8* @memset(i8* %11, i32 0, i64 256) #8
  %12 = load i32, i32* %delta, align 4, !tbaa !5
  %13 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %widths1 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %13, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [64 x i32], [64 x i32]* %widths1, i32 0, i64 63
  store i32 %12, i32* %arrayidx2, align 4, !tbaa !5
  %14 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %curr_pos = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %14, i32 0, i32 3
  store i32 62, i32* %curr_pos, align 4, !tbaa !11
  %15 = load i32, i32* %curr_x_pos, align 4, !tbaa !5
  %16 = load i32, i32* %num_used.addr, align 4, !tbaa !5
  %sub3 = sub nsw i32 %15, %16
  %17 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %xstart4 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %17, i32 0, i32 2
  store i32 %sub3, i32* %xstart4, align 4, !tbaa !110
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %count5 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %18, i32 0, i32 0
  %19 = load i32, i32* %count5, align 4, !tbaa !111
  %20 = load i32, i32* %num_used.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 %19, %20
  store i32 %sub6, i32* %delta, align 4, !tbaa !5
  %21 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %widths7 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %21, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [64 x i32], [64 x i32]* %widths7, i32 0, i64 0
  %22 = bitcast i32* %arrayidx8 to i8*
  %call9 = call i8* @memset(i8* %22, i32 0, i64 256) #8
  %23 = load i32, i32* %delta, align 4, !tbaa !5
  %24 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %widths10 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %24, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [64 x i32], [64 x i32]* %widths10, i32 0, i64 0
  store i32 %23, i32* %arrayidx11, align 4, !tbaa !5
  %25 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %curr_pos12 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %25, i32 0, i32 3
  store i32 1, i32* %curr_pos12, align 4, !tbaa !11
  %26 = load i32, i32* %curr_x_pos, align 4, !tbaa !5
  %27 = load i32, i32* %num_used.addr, align 4, !tbaa !5
  %add = add nsw i32 %26, %27
  %28 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %xstart13 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %28, i32 0, i32 2
  store i32 %add, i32* %xstart13, align 4, !tbaa !110
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load i32, i32* %delta, align 4, !tbaa !5
  %30 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %count14 = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %30, i32 0, i32 0
  store i32 %29, i32* %count14, align 4, !tbaa !111
  %31 = load %struct.ht_landscape_info_s*, %struct.ht_landscape_info_s** %ht_landscape.addr, align 8, !tbaa !1
  %num_contones = getelementptr inbounds %struct.ht_landscape_info_s, %struct.ht_landscape_info_s* %31, i32 0, i32 5
  store i32 1, i32* %num_contones, align 4, !tbaa !8
  %32 = bitcast i32* %curr_x_pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %delta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_set_epi32(i32 %i3, i32 %i2, i32 %i1, i32 %i0) #5 {
entry:
  %i3.addr = alloca i32, align 4
  %i2.addr = alloca i32, align 4
  %i1.addr = alloca i32, align 4
  %i0.addr = alloca i32, align 4
  %.compoundliteral = alloca <4 x i32>, align 16
  store i32 %i3, i32* %i3.addr, align 4, !tbaa !5
  store i32 %i2, i32* %i2.addr, align 4, !tbaa !5
  store i32 %i1, i32* %i1.addr, align 4, !tbaa !5
  store i32 %i0, i32* %i0.addr, align 4, !tbaa !5
  %0 = load i32, i32* %i0.addr, align 4, !tbaa !5
  %vecinit = insertelement <4 x i32> undef, i32 %0, i32 0
  %1 = load i32, i32* %i1.addr, align 4, !tbaa !5
  %vecinit1 = insertelement <4 x i32> %vecinit, i32 %1, i32 1
  %2 = load i32, i32* %i2.addr, align 4, !tbaa !5
  %vecinit2 = insertelement <4 x i32> %vecinit1, i32 %2, i32 2
  %3 = load i32, i32* %i3.addr, align 4, !tbaa !5
  %vecinit3 = insertelement <4 x i32> %vecinit2, i32 %3, i32 3
  store <4 x i32> %vecinit3, <4 x i32>* %.compoundliteral, !tbaa !7
  %4 = load <4 x i32>, <4 x i32>* %.compoundliteral, !tbaa !7
  %5 = bitcast <4 x i32> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_loadu_si128(<2 x i64>* %__p) #5 {
entry:
  %__p.addr = alloca <2 x i64>*, align 8
  store <2 x i64>* %__p, <2 x i64>** %__p.addr, align 8, !tbaa !1
  %0 = load <2 x i64>*, <2 x i64>** %__p.addr, align 8, !tbaa !1
  %1 = bitcast <2 x i64>* %0 to %struct.__loadu_si128*
  %__v = getelementptr inbounds %struct.__loadu_si128, %struct.__loadu_si128* %1, i32 0, i32 0
  %2 = load <2 x i64>, <2 x i64>* %__v, align 1, !tbaa !7
  ret <2 x i64> %2
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_xor_si128(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !7
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !7
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !7
  %1 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !7
  %xor = xor <2 x i64> %0, %1
  ret <2 x i64> %xor
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_subs_epi8(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !7
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !7
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !7
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !7
  %3 = bitcast <2 x i64> %2 to <16 x i8>
  %4 = call <16 x i8> @llvm.x86.sse2.psubs.b(<16 x i8> %1, <16 x i8> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @_mm_movemask_epi8(<2 x i64> %__a) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !7
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !7
  %1 = bitcast <2 x i64> %0 to <16 x i8>
  %2 = call i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8> %1)
  ret i32 %2
}

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.sse2.psubs.b(<16 x i8>, <16 x i8>) #6

; Function Attrs: nounwind readnone
declare i32 @llvm.x86.sse2.pmovmskb.128(<16 x i8>) #6

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_load_si128(<2 x i64>* %__p) #5 {
entry:
  %__p.addr = alloca <2 x i64>*, align 8
  store <2 x i64>* %__p, <2 x i64>** %__p.addr, align 8, !tbaa !1
  %0 = load <2 x i64>*, <2 x i64>** %__p.addr, align 8, !tbaa !1
  %1 = load <2 x i64>, <2 x i64>* %0, align 16, !tbaa !7
  ret <2 x i64> %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !6, i64 272}
!9 = !{!"ht_landscape_info_s", !6, i64 0, !3, i64 4, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!10 = !{!9, !6, i64 268}
!11 = !{!9, !6, i64 264}
!12 = !{!13, !2, i64 16}
!13 = !{!"gx_image_enum_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !14, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308, !6, i64 568, !6, i64 572, !3, i64 576, !3, i64 577, !3, i64 578, !3, i64 579, !3, i64 580, !15, i64 584, !3, i64 1116, !3, i64 1117, !3, i64 1118, !3, i64 1119, !16, i64 1120, !18, i64 1144, !19, i64 1160, !6, i64 1176, !6, i64 1180, !20, i64 1184, !20, i64 1192, !2, i64 1200, !2, i64 1208, !2, i64 1216, !2, i64 1224, !2, i64 1232, !6, i64 1240, !2, i64 1248, !6, i64 1256, !6, i64 1260, !3, i64 1264, !3, i64 1268, !3, i64 1269, !3, i64 1270, !3, i64 1271, !21, i64 1272, !21, i64 1288, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !2, i64 1320, !2, i64 1328, !2, i64 1336, !6, i64 1344, !22, i64 1348, !20, i64 1356, !20, i64 1364, !23, i64 1372, !6, i64 1492, !6, i64 1496, !22, i64 1500, !6, i64 1508, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !3, i64 1528, !2, i64 23112, !28, i64 23120, !28, i64 23776, !2, i64 24432, !2, i64 24440, !2, i64 24448, !2, i64 24456, !2, i64 24464, !6, i64 24472, !6, i64 24476, !6, i64 24480, !2, i64 24488, !6, i64 24496, !3, i64 24500, !9, i64 24504, !33, i64 24792, !6, i64 24808}
!14 = !{!"long", !3, i64 0}
!15 = !{!"mc_", !3, i64 0, !6, i64 520, !6, i64 524, !6, i64 528}
!16 = !{!"gs_matrix_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!17 = !{!"float", !3, i64 0}
!18 = !{!"r_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!19 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!20 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!21 = !{!"gs_fixed_rect_s", !20, i64 0, !20, i64 8}
!22 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!23 = !{!"dd_", !24, i64 0, !24, i64 40, !24, i64 80}
!24 = !{!"gx_dda_fixed_point_s", !25, i64 0, !25, i64 20}
!25 = !{!"gx_dda_fixed_s", !26, i64 0, !27, i64 8}
!26 = !{!"_a", !6, i64 0, !6, i64 4}
!27 = !{!"_e", !6, i64 0, !6, i64 4, !6, i64 8}
!28 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !22, i64 352, !6, i64 360, !29, i64 368, !31, i64 632}
!29 = !{!"gs_client_color_s", !2, i64 0, !30, i64 8}
!30 = !{!"gs_paint_color_s", !3, i64 0}
!31 = !{!"_mask", !32, i64 0, !14, i64 8, !2, i64 16}
!32 = !{!"mp_", !6, i64 0, !6, i64 4}
!33 = !{!"gx_image_icc_setup_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!34 = !{!35, !6, i64 100}
!35 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !36, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !37, i64 96, !40, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !14, i64 928, !14, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !14, i64 968, !14, i64 976, !41, i64 984, !6, i64 1052, !6, i64 1056, !42, i64 1064, !2, i64 1104, !3, i64 1112, !44, i64 1120, !45, i64 1144}
!36 = !{!"rc_header_s", !14, i64 0, !2, i64 8, !2, i64 16}
!37 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !38, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !39, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !14, i64 704, !6, i64 712}
!38 = !{!"short", !3, i64 0}
!39 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!40 = !{!"gx_device_cached_colors_s", !14, i64 0, !14, i64 8}
!41 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!42 = !{!"gdev_space_params_s", !14, i64 0, !14, i64 8, !43, i64 16, !6, i64 32, !3, i64 36}
!43 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !14, i64 8}
!44 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!45 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!46 = !{!35, !3, i64 110}
!47 = !{!35, !6, i64 116}
!48 = !{!35, !6, i64 112}
!49 = !{!13, !2, i64 1216}
!50 = !{!51, !2, i64 392}
!51 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !52, i64 24, !6, i64 128, !54, i64 132, !6, i64 168, !55, i64 176, !55, i64 192, !6, i64 208, !6, i64 212, !38, i64 216, !3, i64 220, !57, i64 224, !57, i64 228, !58, i64 232, !14, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !17, i64 296, !20, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !17, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !59, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !60, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !60, i64 1336}
!52 = !{!"gx_line_params_s", !17, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !17, i64 24, !17, i64 28, !17, i64 32, !6, i64 36, !16, i64 40, !53, i64 64}
!53 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !17, i64 12, !6, i64 16, !17, i64 20, !6, i64 24, !6, i64 28, !17, i64 32}
!54 = !{!"gs_matrix_fixed_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!55 = !{!"gs_point_s", !56, i64 0, !56, i64 8}
!56 = !{!"double", !3, i64 0}
!57 = !{!"gs_transparency_source_s", !17, i64 0}
!58 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!59 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!60 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !14, i64 16, !3, i64 24}
!61 = !{!62, !6, i64 208}
!62 = !{!"gx_device_halftone_s", !63, i64 0, !36, i64 160, !14, i64 184, !3, i64 192, !2, i64 200, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220}
!63 = !{!"gx_ht_order_s", !64, i64 0, !38, i64 40, !38, i64 42, !38, i64 44, !38, i64 46, !38, i64 48, !38, i64 50, !6, i64 52, !6, i64 56, !6, i64 60, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !65, i64 112, !2, i64 144, !6, i64 152}
!64 = !{!"gx_ht_cell_params_s", !38, i64 0, !38, i64 2, !38, i64 4, !38, i64 6, !38, i64 8, !38, i64 10, !14, i64 16, !38, i64 24, !38, i64 26, !6, i64 28, !6, i64 32, !6, i64 36}
!65 = !{!"gx_ht_order_screen_params_s", !16, i64 0, !14, i64 24}
!66 = !{!62, !2, i64 200}
!67 = !{!13, !3, i64 1264}
!68 = !{!13, !6, i64 1188}
!69 = !{!13, !6, i64 1452}
!70 = !{!13, !6, i64 1472}
!71 = !{!13, !6, i64 1256}
!72 = !{!13, !2, i64 24}
!73 = !{!74, !2, i64 64}
!74 = !{!"gs_memory_s", !2, i64 0, !75, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!75 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!76 = !{!13, !2, i64 1248}
!77 = !{!13, !2, i64 24488}
!78 = !{!13, !2, i64 24464}
!79 = !{!13, !6, i64 24480}
!80 = !{!13, !6, i64 24472}
!81 = !{!13, !6, i64 24504}
!82 = !{!13, !6, i64 24776}
!83 = !{!13, !6, i64 1192}
!84 = !{!13, !6, i64 24768}
!85 = !{!13, !6, i64 24772}
!86 = !{!13, !6, i64 24784}
!87 = !{!13, !6, i64 24788}
!88 = !{!13, !6, i64 24780}
!89 = !{!13, !6, i64 24476}
!90 = !{!13, !6, i64 1184}
!91 = !{!13, !6, i64 1176}
!92 = !{!13, !6, i64 572}
!93 = !{!13, !17, i64 1120}
!94 = !{!13, !6, i64 1312}
!95 = !{!13, !6, i64 1512}
!96 = !{!35, !6, i64 848}
!97 = !{!14, !14, i64 0}
!98 = !{!13, !6, i64 1516}
!99 = !{!100, !38, i64 40}
!100 = !{!"gx_ht_order_component_s", !63, i64 0, !6, i64 160, !6, i64 164}
!101 = !{!100, !6, i64 52}
!102 = !{!100, !2, i64 144}
!103 = !{!35, !14, i64 976}
!104 = !{!35, !3, i64 104}
!105 = !{!35, !2, i64 1216}
!106 = !{!35, !2, i64 1672}
!107 = !{!13, !6, i64 1524}
!108 = !{!13, !6, i64 24764}
!109 = !{i64 0, i64 4, !5, i64 4, i64 256, !7, i64 260, i64 4, !5, i64 264, i64 4, !5, i64 268, i64 4, !5, i64 272, i64 4, !5, i64 276, i64 4, !5, i64 280, i64 4, !5, i64 284, i64 4, !5}
!110 = !{!9, !6, i64 260}
!111 = !{!9, !6, i64 0}
