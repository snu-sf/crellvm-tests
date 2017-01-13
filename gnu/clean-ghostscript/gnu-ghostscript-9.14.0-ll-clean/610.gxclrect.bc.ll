; ModuleID = './gxclrect.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clist_select_color_t = type { i8, i8, i32, i32 }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
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
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.stream_s = type opaque
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
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
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
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
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
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
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
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
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon.2 }
%union.anon.2 = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, float (double, double)*, float, float }
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.cmd_rects_enum_s = type { i32, i32, i32, i32, i32, i32, %struct.gx_clist_state_s*, i32, i32 }
%struct.gx_device_clist_common_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s** }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16, i8 }
%struct.gx_cached_bits_head_s = type { i32, i32 }

@clist_select_color1 = external constant %struct.clist_select_color_t, align 4
@clist_select_color0 = external constant %struct.clist_select_color_t, align 4
@byte_reverse_bits = external constant [256 x i8], align 16
@rop_proc_table = external constant [256 x i64 (i64, i64, i64)*], align 16

; Function Attrs: nounwind uwtable
define i32 @cmd_write_rect_hl_cmd(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %op, i32 %x, i32 %y, i32 %width, i32 %height, i32 %extended_command) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %op.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %extended_command.addr = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %rcsize = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %extended_command, i32* %extended_command.addr, align 4, !tbaa !5
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %x.addr, align 4, !tbaa !5
  %4 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %4, i32 0, i32 8
  %x1 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %3, i32* %x1, align 4, !tbaa !7
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect2 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %6, i32 0, i32 8
  %y3 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2, i32 0, i32 1
  store i32 %5, i32* %y3, align 4, !tbaa !17
  %7 = load i32, i32* %width.addr, align 4, !tbaa !5
  %8 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect4 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %8, i32 0, i32 8
  %width5 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect4, i32 0, i32 2
  store i32 %7, i32* %width5, align 4, !tbaa !18
  %9 = load i32, i32* %height.addr, align 4, !tbaa !5
  %10 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect6 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %10, i32 0, i32 8
  %height7 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect6, i32 0, i32 3
  store i32 %9, i32* %height7, align 4, !tbaa !19
  %11 = load i32, i32* %extended_command.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %12 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect8 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %12, i32 0, i32 8
  %call = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect8) #4
  %add = add nsw i32 2, %call
  store i32 %add, i32* %rcsize, align 4, !tbaa !5
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %14 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %14, i32 0, i32 15
  %15 = load i32, i32* %rcsize, align 4, !tbaa !5
  %call9 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %13, %struct.cmd_list_s* %list, i32 %15) #4
  store i8* %call9, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call9, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 65
  %17 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %18 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 -33, i8* %18, align 1, !tbaa !51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %19 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv = trunc i32 %19 to i8
  %20 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 1
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !51
  %21 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect10 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %22, i32 0, i32 8
  %call11 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect10) #4
  %add12 = add nsw i32 1, %call11
  store i32 %add12, i32* %rcsize, align 4, !tbaa !5
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %24 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list13 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %24, i32 0, i32 15
  %25 = load i32, i32* %rcsize, align 4, !tbaa !5
  %call14 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %23, %struct.cmd_list_s* %list13, i32 %25) #4
  store i8* %call14, i8** %dp, align 8, !tbaa !1
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %cond.true.17, label %cond.false.19

cond.true.17:                                     ; preds = %if.else
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 65
  %27 = load i32, i32* %error_code18, align 4, !tbaa !20
  br label %cond.end.21

cond.false.19:                                    ; preds = %if.else
  %28 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv20 = trunc i32 %28 to i8
  %29 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv20, i8* %29, align 1, !tbaa !51
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.17
  %cond22 = phi i32 [ %27, %cond.true.17 ], [ 0, %cond.false.19 ]
  store i32 %cond22, i32* %code, align 4, !tbaa !5
  %30 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr23 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %add.ptr23, i8** %dp, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %cond.end.21, %cond.end
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %31, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.27
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %33 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect28 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %33, i32 0, i32 8
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  %call29 = call i8* @cmd_put_rect(%struct.gx_cmd_rect* %rect28, i8* %34) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.26
  %35 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal i32 @cmd_size_rect(%struct.gx_cmd_rect* %prect) #0 {
entry:
  %prect.addr = alloca %struct.gx_cmd_rect*, align 8
  store %struct.gx_cmd_rect* %prect, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %0 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !52
  %and = and i32 %1, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %2 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !52
  %and2 = and i32 %3, -16384
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %cond.false.5, label %cond.true.4

cond.true.4:                                      ; preds = %cond.false
  br label %cond.end

cond.false.5:                                     ; preds = %cond.false
  %4 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x6 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %4, i32 0, i32 0
  %5 = load i32, i32* %x6, align 4, !tbaa !52
  %call = call i32 @cmd_size_w(i32 %5) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.5, %cond.true.4
  %cond = phi i32 [ 2, %cond.true.4 ], [ %call, %cond.false.5 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %6 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !53
  %and9 = and i32 %7, -128
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %cond.false.12, label %cond.true.11

cond.true.11:                                     ; preds = %cond.end.7
  br label %cond.end.22

cond.false.12:                                    ; preds = %cond.end.7
  %8 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y13 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %8, i32 0, i32 1
  %9 = load i32, i32* %y13, align 4, !tbaa !53
  %and14 = and i32 %9, -16384
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.false.17, label %cond.true.16

cond.true.16:                                     ; preds = %cond.false.12
  br label %cond.end.20

cond.false.17:                                    ; preds = %cond.false.12
  %10 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y18 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %10, i32 0, i32 1
  %11 = load i32, i32* %y18, align 4, !tbaa !53
  %call19 = call i32 @cmd_size_w(i32 %11) #4
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.16
  %cond21 = phi i32 [ 2, %cond.true.16 ], [ %call19, %cond.false.17 ]
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.end.20, %cond.true.11
  %cond23 = phi i32 [ 1, %cond.true.11 ], [ %cond21, %cond.end.20 ]
  %add = add nsw i32 %cond8, %cond23
  %12 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %12, i32 0, i32 2
  %13 = load i32, i32* %width, align 4, !tbaa !54
  %and24 = and i32 %13, -128
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.false.27, label %cond.true.26

cond.true.26:                                     ; preds = %cond.end.22
  br label %cond.end.37

cond.false.27:                                    ; preds = %cond.end.22
  %14 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width28 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %14, i32 0, i32 2
  %15 = load i32, i32* %width28, align 4, !tbaa !54
  %and29 = and i32 %15, -16384
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %cond.false.32, label %cond.true.31

cond.true.31:                                     ; preds = %cond.false.27
  br label %cond.end.35

cond.false.32:                                    ; preds = %cond.false.27
  %16 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width33 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %16, i32 0, i32 2
  %17 = load i32, i32* %width33, align 4, !tbaa !54
  %call34 = call i32 @cmd_size_w(i32 %17) #4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.true.31
  %cond36 = phi i32 [ 2, %cond.true.31 ], [ %call34, %cond.false.32 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.true.26
  %cond38 = phi i32 [ 1, %cond.true.26 ], [ %cond36, %cond.end.35 ]
  %add39 = add nsw i32 %add, %cond38
  %18 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %18, i32 0, i32 3
  %19 = load i32, i32* %height, align 4, !tbaa !55
  %and40 = and i32 %19, -128
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %cond.false.43, label %cond.true.42

cond.true.42:                                     ; preds = %cond.end.37
  br label %cond.end.53

cond.false.43:                                    ; preds = %cond.end.37
  %20 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height44 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %20, i32 0, i32 3
  %21 = load i32, i32* %height44, align 4, !tbaa !55
  %and45 = and i32 %21, -16384
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %cond.false.48, label %cond.true.47

cond.true.47:                                     ; preds = %cond.false.43
  br label %cond.end.51

cond.false.48:                                    ; preds = %cond.false.43
  %22 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height49 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %22, i32 0, i32 3
  %23 = load i32, i32* %height49, align 4, !tbaa !55
  %call50 = call i32 @cmd_size_w(i32 %23) #4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.48, %cond.true.47
  %cond52 = phi i32 [ 2, %cond.true.47 ], [ %call50, %cond.false.48 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.42
  %cond54 = phi i32 [ 1, %cond.true.42 ], [ %cond52, %cond.end.51 ]
  %add55 = add nsw i32 %add39, %cond54
  ret i32 %add55
}

declare i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s*, %struct.cmd_list_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @cmd_put_rect(%struct.gx_cmd_rect* %prect, i8* %dp) #0 {
entry:
  %prect.addr = alloca %struct.gx_cmd_rect*, align 8
  %dp.addr = alloca i8*, align 8
  store %struct.gx_cmd_rect* %prect, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  %0 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %0, i32 0, i32 0
  %1 = load i32, i32* %x, align 4, !tbaa !52
  %and = and i32 %1, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %2 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %2, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !52
  %conv = trunc i32 %3 to i8
  %4 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv, i8* %4, align 1, !tbaa !51
  %5 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.12

cond.false:                                       ; preds = %entry
  %6 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %6, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4, !tbaa !52
  %and3 = and i32 %7, -16384
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.false.10, label %cond.true.5

cond.true.5:                                      ; preds = %cond.false
  %8 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x6 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %8, i32 0, i32 0
  %9 = load i32, i32* %x6, align 4, !tbaa !52
  %or = or i32 %9, 128
  %conv7 = trunc i32 %or to i8
  %10 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv7, i8* %10, align 1, !tbaa !51
  %11 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x8 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %11, i32 0, i32 0
  %12 = load i32, i32* %x8, align 4, !tbaa !52
  %shr = ashr i32 %12, 7
  %conv9 = trunc i32 %shr to i8
  %13 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %conv9, i8* %arrayidx, align 1, !tbaa !51
  %14 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %15 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %x11 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %15, i32 0, i32 0
  %16 = load i32, i32* %x11, align 4, !tbaa !52
  %17 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %call = call i8* @cmd_put_w(i32 %16, i8* %17) #4
  store i8* %call, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.5
  %cond = phi i8* [ %add.ptr, %cond.true.5 ], [ %call, %cond.false.10 ]
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.end, %cond.true
  %cond13 = phi i8* [ %incdec.ptr, %cond.true ], [ %cond, %cond.end ]
  %18 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %18, i32 0, i32 1
  %19 = load i32, i32* %y, align 4, !tbaa !53
  %and14 = and i32 %19, -128
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %cond.false.20, label %cond.true.16

cond.true.16:                                     ; preds = %cond.end.12
  %20 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y17 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %20, i32 0, i32 1
  %21 = load i32, i32* %y17, align 4, !tbaa !53
  %conv18 = trunc i32 %21 to i8
  %22 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv18, i8* %22, align 1, !tbaa !51
  %23 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr19, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.38

cond.false.20:                                    ; preds = %cond.end.12
  %24 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y21 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %24, i32 0, i32 1
  %25 = load i32, i32* %y21, align 4, !tbaa !53
  %and22 = and i32 %25, -16384
  %tobool23 = icmp ne i32 %and22, 0
  br i1 %tobool23, label %cond.false.33, label %cond.true.24

cond.true.24:                                     ; preds = %cond.false.20
  %26 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y25 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %26, i32 0, i32 1
  %27 = load i32, i32* %y25, align 4, !tbaa !53
  %or26 = or i32 %27, 128
  %conv27 = trunc i32 %or26 to i8
  %28 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv27, i8* %28, align 1, !tbaa !51
  %29 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y28 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %29, i32 0, i32 1
  %30 = load i32, i32* %y28, align 4, !tbaa !53
  %shr29 = ashr i32 %30, 7
  %conv30 = trunc i32 %shr29 to i8
  %31 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 %conv30, i8* %arrayidx31, align 1, !tbaa !51
  %32 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr32 = getelementptr inbounds i8, i8* %32, i64 2
  store i8* %add.ptr32, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.36

cond.false.33:                                    ; preds = %cond.false.20
  %33 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %y34 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %33, i32 0, i32 1
  %34 = load i32, i32* %y34, align 4, !tbaa !53
  %35 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %call35 = call i8* @cmd_put_w(i32 %34, i8* %35) #4
  store i8* %call35, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.33, %cond.true.24
  %cond37 = phi i8* [ %add.ptr32, %cond.true.24 ], [ %call35, %cond.false.33 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.16
  %cond39 = phi i8* [ %incdec.ptr19, %cond.true.16 ], [ %cond37, %cond.end.36 ]
  %36 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %36, i32 0, i32 2
  %37 = load i32, i32* %width, align 4, !tbaa !54
  %and40 = and i32 %37, -128
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %cond.false.46, label %cond.true.42

cond.true.42:                                     ; preds = %cond.end.38
  %38 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width43 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %38, i32 0, i32 2
  %39 = load i32, i32* %width43, align 4, !tbaa !54
  %conv44 = trunc i32 %39 to i8
  %40 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv44, i8* %40, align 1, !tbaa !51
  %41 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr45, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.64

cond.false.46:                                    ; preds = %cond.end.38
  %42 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width47 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %42, i32 0, i32 2
  %43 = load i32, i32* %width47, align 4, !tbaa !54
  %and48 = and i32 %43, -16384
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %cond.false.59, label %cond.true.50

cond.true.50:                                     ; preds = %cond.false.46
  %44 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width51 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %44, i32 0, i32 2
  %45 = load i32, i32* %width51, align 4, !tbaa !54
  %or52 = or i32 %45, 128
  %conv53 = trunc i32 %or52 to i8
  %46 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv53, i8* %46, align 1, !tbaa !51
  %47 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width54 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %47, i32 0, i32 2
  %48 = load i32, i32* %width54, align 4, !tbaa !54
  %shr55 = ashr i32 %48, 7
  %conv56 = trunc i32 %shr55 to i8
  %49 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %conv56, i8* %arrayidx57, align 1, !tbaa !51
  %50 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds i8, i8* %50, i64 2
  store i8* %add.ptr58, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.false.46
  %51 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %width60 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %51, i32 0, i32 2
  %52 = load i32, i32* %width60, align 4, !tbaa !54
  %53 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %call61 = call i8* @cmd_put_w(i32 %52, i8* %53) #4
  store i8* %call61, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.50
  %cond63 = phi i8* [ %add.ptr58, %cond.true.50 ], [ %call61, %cond.false.59 ]
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.end.62, %cond.true.42
  %cond65 = phi i8* [ %incdec.ptr45, %cond.true.42 ], [ %cond63, %cond.end.62 ]
  %54 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %54, i32 0, i32 3
  %55 = load i32, i32* %height, align 4, !tbaa !55
  %and66 = and i32 %55, -128
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.false.72, label %cond.true.68

cond.true.68:                                     ; preds = %cond.end.64
  %56 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height69 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %56, i32 0, i32 3
  %57 = load i32, i32* %height69, align 4, !tbaa !55
  %conv70 = trunc i32 %57 to i8
  %58 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv70, i8* %58, align 1, !tbaa !51
  %59 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr71, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.90

cond.false.72:                                    ; preds = %cond.end.64
  %60 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height73 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %60, i32 0, i32 3
  %61 = load i32, i32* %height73, align 4, !tbaa !55
  %and74 = and i32 %61, -16384
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %cond.false.85, label %cond.true.76

cond.true.76:                                     ; preds = %cond.false.72
  %62 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height77 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %62, i32 0, i32 3
  %63 = load i32, i32* %height77, align 4, !tbaa !55
  %or78 = or i32 %63, 128
  %conv79 = trunc i32 %or78 to i8
  %64 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  store i8 %conv79, i8* %64, align 1, !tbaa !51
  %65 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height80 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %65, i32 0, i32 3
  %66 = load i32, i32* %height80, align 4, !tbaa !55
  %shr81 = ashr i32 %66, 7
  %conv82 = trunc i32 %shr81 to i8
  %67 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 %conv82, i8* %arrayidx83, align 1, !tbaa !51
  %68 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %add.ptr84 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %add.ptr84, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.88

cond.false.85:                                    ; preds = %cond.false.72
  %69 = load %struct.gx_cmd_rect*, %struct.gx_cmd_rect** %prect.addr, align 8, !tbaa !1
  %height86 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %69, i32 0, i32 3
  %70 = load i32, i32* %height86, align 4, !tbaa !55
  %71 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %call87 = call i8* @cmd_put_w(i32 %70, i8* %71) #4
  store i8* %call87, i8** %dp.addr, align 8, !tbaa !1
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.85, %cond.true.76
  %cond89 = phi i8* [ %add.ptr84, %cond.true.76 ], [ %call87, %cond.false.85 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.88, %cond.true.68
  %cond91 = phi i8* [ %incdec.ptr71, %cond.true.68 ], [ %cond89, %cond.end.88 ]
  %72 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  ret i8* %72
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %op, i32 %x, i32 %y, i32 %width, i32 %height) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %op.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dwidth = alloca i32, align 4
  %dheight = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %op_tiny = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %dh = alloca i32, align 4
  %rcsize = alloca i32, align 4
  %rcsize217 = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %x.addr, align 4, !tbaa !5
  %2 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %2, i32 0, i32 8
  %x1 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  %3 = load i32, i32* %x1, align 4, !tbaa !7
  %sub = sub nsw i32 %1, %3
  store i32 %sub, i32* %dx, align 4, !tbaa !5
  %4 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %y.addr, align 4, !tbaa !5
  %6 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect2 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %6, i32 0, i32 8
  %y3 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect2, i32 0, i32 1
  %7 = load i32, i32* %y3, align 4, !tbaa !17
  %sub4 = sub nsw i32 %5, %7
  store i32 %sub4, i32* %dy, align 4, !tbaa !5
  %8 = bitcast i32* %dwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %10 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect5 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %10, i32 0, i32 8
  %width6 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect5, i32 0, i32 2
  %11 = load i32, i32* %width6, align 4, !tbaa !18
  %sub7 = sub nsw i32 %9, %11
  store i32 %sub7, i32* %dwidth, align 4, !tbaa !5
  %12 = bitcast i32* %dheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load i32, i32* %height.addr, align 4, !tbaa !5
  %14 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect8 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %14, i32 0, i32 8
  %height9 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect8, i32 0, i32 3
  %15 = load i32, i32* %height9, align 4, !tbaa !19
  %sub10 = sub nsw i32 %13, %15
  store i32 %sub10, i32* %dheight, align 4, !tbaa !5
  %16 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %x.addr, align 4, !tbaa !5
  %19 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect11 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %19, i32 0, i32 8
  %x12 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect11, i32 0, i32 0
  store i32 %18, i32* %x12, align 4, !tbaa !7
  %20 = load i32, i32* %y.addr, align 4, !tbaa !5
  %21 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect13 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %21, i32 0, i32 8
  %y14 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect13, i32 0, i32 1
  store i32 %20, i32* %y14, align 4, !tbaa !17
  %22 = load i32, i32* %width.addr, align 4, !tbaa !5
  %23 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect15 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %23, i32 0, i32 8
  %width16 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect15, i32 0, i32 2
  store i32 %22, i32* %width16, align 4, !tbaa !18
  %24 = load i32, i32* %height.addr, align 4, !tbaa !5
  %25 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect17 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %25, i32 0, i32 8
  %height18 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect17, i32 0, i32 3
  store i32 %24, i32* %height18, align 4, !tbaa !19
  %26 = load i32, i32* %dheight, align 4, !tbaa !5
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.61

land.lhs.true:                                    ; preds = %entry
  %27 = load i32, i32* %dwidth, align 4, !tbaa !5
  %sub19 = sub nsw i32 %27, -4
  %cmp20 = icmp ule i32 %sub19, 7
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.61

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %28 = load i32, i32* %dx, align 4, !tbaa !5
  %sub22 = sub nsw i32 %28, -8
  %cmp23 = icmp ule i32 %sub22, 15
  br i1 %cmp23, label %land.lhs.true.24, label %if.else.61

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %29 = load i32, i32* %dy, align 4, !tbaa !5
  %sub25 = sub nsw i32 %29, -8
  %cmp26 = icmp ule i32 %sub25, 15
  br i1 %cmp26, label %if.then, label %if.else.61

if.then:                                          ; preds = %land.lhs.true.24
  call void @llvm.lifetime.start(i64 1, i8* %op_tiny) #1
  %30 = load i32, i32* %op.addr, align 4, !tbaa !5
  %add = add nsw i32 %30, 32
  %31 = load i32, i32* %dwidth, align 4, !tbaa !5
  %add27 = add nsw i32 %add, %31
  %sub28 = sub nsw i32 %add27, -4
  %conv = trunc i32 %sub28 to i8
  store i8 %conv, i8* %op_tiny, align 1, !tbaa !51
  %32 = load i32, i32* %dx, align 4, !tbaa !5
  %33 = load i32, i32* %width.addr, align 4, !tbaa !5
  %34 = load i32, i32* %dwidth, align 4, !tbaa !5
  %sub29 = sub nsw i32 %33, %34
  %cmp30 = icmp eq i32 %32, %sub29
  br i1 %cmp30, label %land.lhs.true.32, label %if.else

land.lhs.true.32:                                 ; preds = %if.then
  %35 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %35, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %land.lhs.true.32
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %37 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %37, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %36, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call, i8** %dp, align 8, !tbaa !1
  %cmp36 = icmp eq i8* %call, null
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.35
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 65
  %39 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %if.then.35
  %40 = load i8, i8* %op_tiny, align 1, !tbaa !51
  %conv38 = zext i8 %40 to i32
  %add39 = add nsw i32 %conv38, 8
  %conv40 = trunc i32 %add39 to i8
  %41 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv40, i8* %41, align 1, !tbaa !51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %42 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %42, 0
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %cond.end
  %43 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %if.end.60

if.else:                                          ; preds = %land.lhs.true.32, %if.then
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %45 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list44 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %45, i32 0, i32 15
  %call45 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %44, %struct.cmd_list_s* %list44, i32 2) #4
  store i8* %call45, i8** %dp, align 8, !tbaa !1
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %cond.true.48, label %cond.false.50

cond.true.48:                                     ; preds = %if.else
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code49 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 65
  %47 = load i32, i32* %error_code49, align 4, !tbaa !20
  br label %cond.end.51

cond.false.50:                                    ; preds = %if.else
  %48 = load i8, i8* %op_tiny, align 1, !tbaa !51
  %49 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %48, i8* %49, align 1, !tbaa !51
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.50, %cond.true.48
  %cond52 = phi i32 [ %47, %cond.true.48 ], [ 0, %cond.false.50 ]
  store i32 %cond52, i32* %code, align 4, !tbaa !5
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %50, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %cond.end.51
  %51 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %51, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %cond.end.51
  %52 = load i32, i32* %dx, align 4, !tbaa !5
  %shl = shl i32 %52, 4
  %53 = load i32, i32* %dy, align 4, !tbaa !5
  %add57 = add nsw i32 %shl, %53
  %sub58 = sub nsw i32 %add57, -136
  %conv59 = trunc i32 %sub58 to i8
  %54 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %54, i64 1
  store i8 %conv59, i8* %arrayidx, align 1, !tbaa !51
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.56, %if.end
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.55, %if.then.43
  call void @llvm.lifetime.end(i64 1, i8* %op_tiny) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.247 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.246

if.else.61:                                       ; preds = %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true, %entry
  %55 = load i32, i32* %dx, align 4, !tbaa !5
  %sub62 = sub nsw i32 %55, -128
  %cmp63 = icmp ule i32 %sub62, 255
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.139

land.lhs.true.65:                                 ; preds = %if.else.61
  %56 = load i32, i32* %dy, align 4, !tbaa !5
  %sub66 = sub nsw i32 %56, -128
  %cmp67 = icmp ule i32 %sub66, 255
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.139

land.lhs.true.69:                                 ; preds = %land.lhs.true.65
  %57 = load i32, i32* %dwidth, align 4, !tbaa !5
  %sub70 = sub nsw i32 %57, -128
  %cmp71 = icmp ule i32 %sub70, 255
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.139

land.lhs.true.73:                                 ; preds = %land.lhs.true.69
  %58 = load i32, i32* %dheight, align 4, !tbaa !5
  %sub74 = sub nsw i32 %58, -128
  %cmp75 = icmp ule i32 %sub74, 255
  br i1 %cmp75, label %if.then.77, label %if.else.139

if.then.77:                                       ; preds = %land.lhs.true.73
  %59 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = load i32, i32* %dheight, align 4, !tbaa !5
  %sub78 = sub nsw i32 %60, -8
  store i32 %sub78, i32* %dh, align 4, !tbaa !5
  %61 = load i32, i32* %dh, align 4, !tbaa !5
  %cmp79 = icmp ule i32 %61, 15
  br i1 %cmp79, label %land.lhs.true.81, label %if.else.104

land.lhs.true.81:                                 ; preds = %if.then.77
  %62 = load i32, i32* %dh, align 4, !tbaa !5
  %cmp82 = icmp ne i32 %62, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.104

land.lhs.true.84:                                 ; preds = %land.lhs.true.81
  %63 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %63, 0
  br i1 %cmp85, label %if.then.87, label %if.else.104

if.then.87:                                       ; preds = %land.lhs.true.84
  %64 = load i32, i32* %dh, align 4, !tbaa !5
  %65 = load i32, i32* %op.addr, align 4, !tbaa !5
  %add88 = add nsw i32 %65, %64
  store i32 %add88, i32* %op.addr, align 4, !tbaa !5
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %67 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list89 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %67, i32 0, i32 15
  %call90 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %66, %struct.cmd_list_s* %list89, i32 3) #4
  store i8* %call90, i8** %dp, align 8, !tbaa !1
  %cmp91 = icmp eq i8* %call90, null
  br i1 %cmp91, label %cond.true.93, label %cond.false.95

cond.true.93:                                     ; preds = %if.then.87
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code94 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 65
  %69 = load i32, i32* %error_code94, align 4, !tbaa !20
  br label %cond.end.98

cond.false.95:                                    ; preds = %if.then.87
  %70 = load i32, i32* %op.addr, align 4, !tbaa !5
  %add96 = add nsw i32 %70, 16
  %conv97 = trunc i32 %add96 to i8
  %71 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv97, i8* %71, align 1, !tbaa !51
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.95, %cond.true.93
  %cond99 = phi i32 [ %69, %cond.true.93 ], [ 0, %cond.false.95 ]
  store i32 %cond99, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp slt i32 %72, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %cond.end.98
  %73 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %73, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.103:                                       ; preds = %cond.end.98
  br label %do.body

do.body:                                          ; preds = %if.end.103
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.129

if.else.104:                                      ; preds = %land.lhs.true.84, %land.lhs.true.81, %if.then.77
  %74 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %75 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list105 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %75, i32 0, i32 15
  %call106 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %74, %struct.cmd_list_s* %list105, i32 5) #4
  store i8* %call106, i8** %dp, align 8, !tbaa !1
  %cmp107 = icmp eq i8* %call106, null
  br i1 %cmp107, label %cond.true.109, label %cond.false.111

cond.true.109:                                    ; preds = %if.else.104
  %76 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code110 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %76, i32 0, i32 65
  %77 = load i32, i32* %error_code110, align 4, !tbaa !20
  br label %cond.end.114

cond.false.111:                                   ; preds = %if.else.104
  %78 = load i32, i32* %op.addr, align 4, !tbaa !5
  %add112 = add nsw i32 %78, 16
  %conv113 = trunc i32 %add112 to i8
  %79 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv113, i8* %79, align 1, !tbaa !51
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.111, %cond.true.109
  %cond115 = phi i32 [ %77, %cond.true.109 ], [ 0, %cond.false.111 ]
  store i32 %cond115, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp116 = icmp slt i32 %80, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %cond.end.114
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.136

if.end.119:                                       ; preds = %cond.end.114
  br label %do.body.120

do.body.120:                                      ; preds = %if.end.119
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.120
  br label %do.end.122

do.end.122:                                       ; preds = %do.cond.121
  %82 = load i32, i32* %dy, align 4, !tbaa !5
  %sub123 = sub nsw i32 %82, -128
  %conv124 = trunc i32 %sub123 to i8
  %83 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds i8, i8* %83, i64 3
  store i8 %conv124, i8* %arrayidx125, align 1, !tbaa !51
  %84 = load i32, i32* %dheight, align 4, !tbaa !5
  %sub126 = sub nsw i32 %84, -128
  %conv127 = trunc i32 %sub126 to i8
  %85 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds i8, i8* %85, i64 4
  store i8 %conv127, i8* %arrayidx128, align 1, !tbaa !51
  br label %if.end.129

if.end.129:                                       ; preds = %do.end.122, %do.end
  %86 = load i32, i32* %dx, align 4, !tbaa !5
  %sub130 = sub nsw i32 %86, -128
  %conv131 = trunc i32 %sub130 to i8
  %87 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %conv131, i8* %arrayidx132, align 1, !tbaa !51
  %88 = load i32, i32* %dwidth, align 4, !tbaa !5
  %sub133 = sub nsw i32 %88, -128
  %conv134 = trunc i32 %sub133 to i8
  %89 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx135 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %conv134, i8* %arrayidx135, align 1, !tbaa !51
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.136

cleanup.136:                                      ; preds = %if.end.129, %if.then.118, %if.then.102
  %90 = bitcast i32* %dh to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %cleanup.dest.137 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.137, label %cleanup.247 [
    i32 0, label %cleanup.cont.138
  ]

cleanup.cont.138:                                 ; preds = %cleanup.136
  br label %if.end.245

if.else.139:                                      ; preds = %land.lhs.true.73, %land.lhs.true.69, %land.lhs.true.65, %if.else.61
  %91 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp140 = icmp sge i32 %91, -2
  br i1 %cmp140, label %land.lhs.true.142, label %if.else.216

land.lhs.true.142:                                ; preds = %if.else.139
  %92 = load i32, i32* %dy, align 4, !tbaa !5
  %cmp143 = icmp sle i32 %92, 1
  br i1 %cmp143, label %land.lhs.true.145, label %if.else.216

land.lhs.true.145:                                ; preds = %land.lhs.true.142
  %93 = load i32, i32* %dheight, align 4, !tbaa !5
  %cmp146 = icmp sge i32 %93, -2
  br i1 %cmp146, label %land.lhs.true.148, label %if.else.216

land.lhs.true.148:                                ; preds = %land.lhs.true.145
  %94 = load i32, i32* %dheight, align 4, !tbaa !5
  %cmp149 = icmp sle i32 %94, 1
  br i1 %cmp149, label %land.lhs.true.151, label %if.else.216

land.lhs.true.151:                                ; preds = %land.lhs.true.148
  %95 = load i32, i32* %dy, align 4, !tbaa !5
  %96 = load i32, i32* %dheight, align 4, !tbaa !5
  %add152 = add nsw i32 %95, %96
  %cmp153 = icmp ne i32 %add152, -4
  br i1 %cmp153, label %if.then.155, label %if.else.216

if.then.155:                                      ; preds = %land.lhs.true.151
  %97 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #1
  %98 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and = and i32 %98, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false.157, label %cond.true.156

cond.true.156:                                    ; preds = %if.then.155
  br label %cond.end.165

cond.false.157:                                   ; preds = %if.then.155
  %99 = load i32, i32* %x.addr, align 4, !tbaa !5
  %and158 = and i32 %99, -16384
  %tobool159 = icmp ne i32 %and158, 0
  br i1 %tobool159, label %cond.false.161, label %cond.true.160

cond.true.160:                                    ; preds = %cond.false.157
  br label %cond.end.163

cond.false.161:                                   ; preds = %cond.false.157
  %100 = load i32, i32* %x.addr, align 4, !tbaa !5
  %call162 = call i32 @cmd_size_w(i32 %100) #4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.161, %cond.true.160
  %cond164 = phi i32 [ 2, %cond.true.160 ], [ %call162, %cond.false.161 ]
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.end.163, %cond.true.156
  %cond166 = phi i32 [ 1, %cond.true.156 ], [ %cond164, %cond.end.163 ]
  %add167 = add nsw i32 1, %cond166
  %101 = load i32, i32* %width.addr, align 4, !tbaa !5
  %and168 = and i32 %101, -128
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %cond.false.171, label %cond.true.170

cond.true.170:                                    ; preds = %cond.end.165
  br label %cond.end.179

cond.false.171:                                   ; preds = %cond.end.165
  %102 = load i32, i32* %width.addr, align 4, !tbaa !5
  %and172 = and i32 %102, -16384
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %cond.false.175, label %cond.true.174

cond.true.174:                                    ; preds = %cond.false.171
  br label %cond.end.177

cond.false.175:                                   ; preds = %cond.false.171
  %103 = load i32, i32* %width.addr, align 4, !tbaa !5
  %call176 = call i32 @cmd_size_w(i32 %103) #4
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.175, %cond.true.174
  %cond178 = phi i32 [ 2, %cond.true.174 ], [ %call176, %cond.false.175 ]
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.end.177, %cond.true.170
  %cond180 = phi i32 [ 1, %cond.true.170 ], [ %cond178, %cond.end.177 ]
  %add181 = add nsw i32 %add167, %cond180
  store i32 %add181, i32* %rcsize, align 4, !tbaa !5
  %104 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %105 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list182 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %105, i32 0, i32 15
  %106 = load i32, i32* %rcsize, align 4, !tbaa !5
  %call183 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %104, %struct.cmd_list_s* %list182, i32 %106) #4
  store i8* %call183, i8** %dp, align 8, !tbaa !1
  %cmp184 = icmp eq i8* %call183, null
  br i1 %cmp184, label %cond.true.186, label %cond.false.188

cond.true.186:                                    ; preds = %cond.end.179
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code187 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 65
  %108 = load i32, i32* %error_code187, align 4, !tbaa !20
  br label %cond.end.195

cond.false.188:                                   ; preds = %cond.end.179
  %109 = load i32, i32* %op.addr, align 4, !tbaa !5
  %110 = load i32, i32* %dy, align 4, !tbaa !5
  %add189 = add nsw i32 %110, 2
  %shl190 = shl i32 %add189, 2
  %add191 = add nsw i32 %109, %shl190
  %111 = load i32, i32* %dheight, align 4, !tbaa !5
  %add192 = add nsw i32 %add191, %111
  %add193 = add nsw i32 %add192, 2
  %conv194 = trunc i32 %add193 to i8
  %112 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv194, i8* %112, align 1, !tbaa !51
  br label %cond.end.195

cond.end.195:                                     ; preds = %cond.false.188, %cond.true.186
  %cond196 = phi i32 [ %108, %cond.true.186 ], [ 0, %cond.false.188 ]
  store i32 %cond196, i32* %code, align 4, !tbaa !5
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp197 = icmp slt i32 %113, 0
  br i1 %cmp197, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %cond.end.195
  %114 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.213

if.end.200:                                       ; preds = %cond.end.195
  %115 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  %116 = load i32, i32* %x.addr, align 4, !tbaa !5
  %117 = load i32, i32* %width.addr, align 4, !tbaa !5
  %or = or i32 %116, %117
  %and201 = and i32 %or, -128
  %tobool202 = icmp ne i32 %and201, 0
  br i1 %tobool202, label %cond.false.208, label %cond.true.203

cond.true.203:                                    ; preds = %if.end.200
  %118 = load i32, i32* %x.addr, align 4, !tbaa !5
  %conv204 = trunc i32 %118 to i8
  %119 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %conv204, i8* %arrayidx205, align 1, !tbaa !51
  %120 = load i32, i32* %width.addr, align 4, !tbaa !5
  %conv206 = trunc i32 %120 to i8
  %121 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds i8, i8* %121, i64 1
  store i8 %conv206, i8* %arrayidx207, align 1, !tbaa !51
  %122 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %122, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %cond.end.211

cond.false.208:                                   ; preds = %if.end.200
  %123 = load i32, i32* %width.addr, align 4, !tbaa !5
  %124 = load i32, i32* %x.addr, align 4, !tbaa !5
  %125 = load i8*, i8** %dp, align 8, !tbaa !1
  %call209 = call i8* @cmd_put_w(i32 %124, i8* %125) #4
  %call210 = call i8* @cmd_put_w(i32 %123, i8* %call209) #4
  store i8* %call210, i8** %dp, align 8, !tbaa !1
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.208, %cond.true.203
  %cond212 = phi i8* [ %add.ptr, %cond.true.203 ], [ %call210, %cond.false.208 ]
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.213

cleanup.213:                                      ; preds = %cond.end.211, %if.then.199
  %126 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %cleanup.dest.214 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.214, label %cleanup.247 [
    i32 0, label %cleanup.cont.215
  ]

cleanup.cont.215:                                 ; preds = %cleanup.213
  br label %if.end.244

if.else.216:                                      ; preds = %land.lhs.true.151, %land.lhs.true.148, %land.lhs.true.145, %land.lhs.true.142, %if.else.139
  %127 = bitcast i32* %rcsize217 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  %128 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect218 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %128, i32 0, i32 8
  %call219 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect218) #4
  %add220 = add nsw i32 1, %call219
  store i32 %add220, i32* %rcsize217, align 4, !tbaa !5
  %129 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %130 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list221 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %130, i32 0, i32 15
  %131 = load i32, i32* %rcsize217, align 4, !tbaa !5
  %call222 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %129, %struct.cmd_list_s* %list221, i32 %131) #4
  store i8* %call222, i8** %dp, align 8, !tbaa !1
  %cmp223 = icmp eq i8* %call222, null
  br i1 %cmp223, label %cond.true.225, label %cond.false.227

cond.true.225:                                    ; preds = %if.else.216
  %132 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code226 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %132, i32 0, i32 65
  %133 = load i32, i32* %error_code226, align 4, !tbaa !20
  br label %cond.end.229

cond.false.227:                                   ; preds = %if.else.216
  %134 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv228 = trunc i32 %134 to i8
  %135 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv228, i8* %135, align 1, !tbaa !51
  br label %cond.end.229

cond.end.229:                                     ; preds = %cond.false.227, %cond.true.225
  %cond230 = phi i32 [ %133, %cond.true.225 ], [ 0, %cond.false.227 ]
  store i32 %cond230, i32* %code, align 4, !tbaa !5
  %136 = load i32, i32* %code, align 4, !tbaa !5
  %cmp231 = icmp slt i32 %136, 0
  br i1 %cmp231, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %cond.end.229
  %137 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %137, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.241

if.end.234:                                       ; preds = %cond.end.229
  br label %do.body.235

do.body.235:                                      ; preds = %if.end.234
  br label %do.cond.236

do.cond.236:                                      ; preds = %do.body.235
  br label %do.end.237

do.end.237:                                       ; preds = %do.cond.236
  %138 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %rect238 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %138, i32 0, i32 8
  %139 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr239 = getelementptr inbounds i8, i8* %139, i64 1
  %call240 = call i8* @cmd_put_rect(%struct.gx_cmd_rect* %rect238, i8* %add.ptr239) #4
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.241

cleanup.241:                                      ; preds = %do.end.237, %if.then.233
  %140 = bitcast i32* %rcsize217 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %cleanup.dest.242 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.242, label %cleanup.247 [
    i32 0, label %cleanup.cont.243
  ]

cleanup.cont.243:                                 ; preds = %cleanup.241
  br label %if.end.244

if.end.244:                                       ; preds = %cleanup.cont.243, %cleanup.cont.215
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %cleanup.cont.138
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %cleanup.cont
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247

cleanup.247:                                      ; preds = %if.end.246, %cleanup.241, %cleanup.213, %cleanup.136, %cleanup
  %141 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32* %dheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %dwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %dy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = load i32, i32* %retval
  ret i32 %147
}

declare i32 @cmd_size_w(i32) #2

declare i8* @cmd_put_w(i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @cmd_write_page_rect_cmd(%struct.gx_device_clist_writer_s* %cldev, i32 %op) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %op.addr = alloca i32, align 4
  %rcsize = alloca i32, align 4
  %dp = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %pcls1 = alloca %struct.gx_clist_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  %0 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 5, i32* %rcsize, align 4, !tbaa !5
  %1 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %x, align 4, !tbaa !5
  %3 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %y, align 4, !tbaa !5
  %4 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %width, align 4, !tbaa !5
  %5 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %height, align 4, !tbaa !5
  %6 = bitcast %struct.gx_clist_state_s** %pcls1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 59
  %10 = load i32, i32* %nbands, align 4, !tbaa !56
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %rcsize, align 4, !tbaa !5
  %call = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %8, i32 0, i32 %sub, i32 %11) #4
  store i8* %call, i8** %dp, align 8, !tbaa !1
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 65
  %13 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %14 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv = trunc i32 %14 to i8
  %15 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv, i8* %15, align 1, !tbaa !51
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %16, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 66
  %19 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  store %struct.gx_clist_state_s* %19, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %states3 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 66
  %22 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states3, align 8, !tbaa !57
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %nbands4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 59
  %24 = load i32, i32* %nbands4, align 4, !tbaa !56
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %22, i64 %idx.ext
  %cmp5 = icmp ult %struct.gx_clist_state_s* %20, %add.ptr
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %x, align 4, !tbaa !5
  %26 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %rect = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %26, i32 0, i32 8
  %x7 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %25, i32* %x7, align 4, !tbaa !7
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %rect8 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %28, i32 0, i32 8
  %y9 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect8, i32 0, i32 1
  store i32 %27, i32* %y9, align 4, !tbaa !17
  %29 = load i32, i32* %width, align 4, !tbaa !5
  %30 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %rect10 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %30, i32 0, i32 8
  %width11 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect10, i32 0, i32 2
  store i32 %29, i32* %width11, align 4, !tbaa !18
  %31 = load i32, i32* %height, align 4, !tbaa !5
  %32 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %rect12 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %32, i32 0, i32 8
  %height13 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect12, i32 0, i32 3
  store i32 %31, i32* %height13, align 4, !tbaa !19
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %33, i32 1
  store %struct.gx_clist_state_s* %incdec.ptr, %struct.gx_clist_state_s** %pcls1, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr14, i8** %dp, align 8, !tbaa !1
  %35 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 0, i8* %35, align 1, !tbaa !51
  %36 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr15, i8** %dp, align 8, !tbaa !1
  %37 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 0, i8* %37, align 1, !tbaa !51
  %38 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr16, i8** %dp, align 8, !tbaa !1
  %39 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 0, i8* %39, align 1, !tbaa !51
  %40 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr17, i8** %dp, align 8, !tbaa !1
  %41 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 0, i8* %41, align 1, !tbaa !51
  %42 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr18, i8** %dp, align 8, !tbaa !1
  br label %do.body.19

do.body.19:                                       ; preds = %for.end
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.body.19
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.21, %if.then
  %43 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast %struct.gx_clist_state_s** %pcls1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

declare i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fillpage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %cldev = alloca %union.gx_device_clist_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls = alloca %struct.gx_clist_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %0 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  store %union.gx_device_clist_s* %2, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %writer = bitcast %union.gx_device_clist_s* %4 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %5 = bitcast %struct.gx_clist_state_s** %pcls to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %union.gx_device_clist_s*, %union.gx_device_clist_s** %cldev, align 8, !tbaa !1
  %call = call i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s* %7) #4
  %cmp = icmp slt i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %code, align 4, !tbaa !5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call1 = call i32 @clist_finish_page(%struct.gx_device_s* %8, i32 1) #4
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %9, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 66
  %11 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  store %struct.gx_clist_state_s* %11, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %13 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call4 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %12, %struct.gx_clist_state_s* %13, %struct.gx_device_color_s* %14, %struct.cmd_rects_enum_s* null, i32 0) #4
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %15 = load i32, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp sge i32 %15, 0
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.body
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call8 = call i32 @cmd_write_page_rect_cmd(%struct.gx_device_clist_writer_s* %16, i32 48) #4
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %17, 0
  br i1 %cmp10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %19 = load i32, i32* %code, align 4, !tbaa !5
  %call12 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %18, i32 %19) #4
  store i32 %call12, i32* %code, align 4, !tbaa !5
  %cmp13 = icmp sge i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %20 = phi i1 [ false, %do.cond ], [ %cmp13, %land.rhs ]
  br i1 %20, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %22 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.gx_clist_state_s** %pcls to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  %24 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast %union.gx_device_clist_s** %cldev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare i32 @clist_close_writer_and_init_reader(%union.gx_device_clist_s*) #2

declare i32 @clist_finish_page(%struct.gx_device_s*, i32) #2

declare i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, %struct.gx_device_color_s*, %struct.cmd_rects_enum_s*, i32) #2

declare i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fill_rectangle(%struct.gx_device_s* %dev, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i64 %color) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %color_usage = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !58
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #1
  %5 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %8 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.end
  %9 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width, align 4, !tbaa !59
  %12 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  %cmp2 = icmp sgt i32 %9, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %do.body.1
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 13
  %14 = load i32, i32* %width4, align 4, !tbaa !59
  %15 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 %14, %15
  store i32 %sub5, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %16 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 101
  %18 = load i32, i32* %cropping_min, align 4, !tbaa !60
  %cmp8 = icmp slt i32 %16, %18
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body.7
  %19 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %20 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %19, %20
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 101
  %22 = load i32, i32* %cropping_min11, align 4, !tbaa !60
  %sub12 = sub nsw i32 %add10, %22
  store i32 %sub12, i32* %rheight.addr, align 4, !tbaa !5
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 101
  %24 = load i32, i32* %cropping_min13, align 4, !tbaa !60
  store i32 %24, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %do.body.7
  %25 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %26 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %25, %26
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %27, i32 0, i32 102
  %28 = load i32, i32* %cropping_max, align 4, !tbaa !61
  %cmp16 = icmp sgt i32 %add15, %28
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 102
  %30 = load i32, i32* %cropping_max18, align 4, !tbaa !61
  %31 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %30, %31
  store i32 %sub19, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %32 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %32, 0
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.24
  %33 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp26 = icmp sle i32 %33, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %do.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.28:                                        ; preds = %lor.lhs.false
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 95
  %35 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp29 = icmp slt i32 %35, 0
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error31 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 95
  %37 = load i32, i32* %permanent_error31, align 4, !tbaa !62
  store i32 %37, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.32:                                        ; preds = %if.end.28
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 81
  %39 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.end.32
  %40 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %40) #1
  %41 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %41, i32* %x, align 4, !tbaa !64
  %42 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %43 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add34 = add nsw i32 %42, %43
  %sub35 = sub nsw i32 %add34, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub35, i32* %x36, align 4, !tbaa !65
  %44 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p37, i32 0, i32 1
  store i32 %44, i32* %y, align 4, !tbaa !66
  %45 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %46 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add38 = add nsw i32 %45, %46
  %sub39 = sub nsw i32 %add38, 1
  %q40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q40, i32 0, i32 1
  store i32 %sub39, i32* %y41, align 4, !tbaa !67
  %47 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %47, %struct.gs_int_rect_s* %bbox) #4
  %48 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.33, %if.end.32
  %49 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y43 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %49, i32* %y43, align 4, !tbaa !68
  %50 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %50, i32* %height, align 4, !tbaa !70
  %y44 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %51 = load i32, i32* %y44, align 4, !tbaa !68
  %height45 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %52 = load i32, i32* %height45, align 4, !tbaa !70
  %add46 = add nsw i32 %51, %52
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add46, i32* %yend, align 4, !tbaa !71
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %54 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %54, i32* %band_height, align 4, !tbaa !73
  %yend47 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %55 = load i32, i32* %yend47, align 4, !tbaa !71
  %y48 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %56 = load i32, i32* %y48, align 4, !tbaa !68
  %sub49 = sub nsw i32 %55, %56
  %band_height50 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %57 = load i32, i32* %band_height50, align 4, !tbaa !73
  %add51 = add nsw i32 %sub49, %57
  %sub52 = sub nsw i32 %add51, 1
  %band_height53 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %58 = load i32, i32* %band_height53, align 4, !tbaa !73
  %div = sdiv i32 %sub52, %58
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  %59 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %60 = load i64, i64* %color.addr, align 8, !tbaa !58
  %call = call i64 @gx_color_index2usage(%struct.gx_device_s* %59, i64 %60) #4
  store i64 %call, i64* %color_usage, align 8, !tbaa !58
  br label %do.body.54

do.body.54:                                       ; preds = %do.cond.135, %if.end.42
  %y55 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %61 = load i32, i32* %y55, align 4, !tbaa !68
  %band_height56 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %62 = load i32, i32* %band_height56, align 4, !tbaa !73
  %div57 = sdiv i32 %61, %62
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div57, i32* %band, align 4, !tbaa !75
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 66
  %64 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band58 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %65 = load i32, i32* %band58, align 4, !tbaa !75
  %idx.ext = sext i32 %65 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %64, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band59 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %66 = load i32, i32* %band59, align 4, !tbaa !75
  %add60 = add nsw i32 %66, 1
  %band_height61 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %67 = load i32, i32* %band_height61, align 4, !tbaa !73
  %mul = mul nsw i32 %add60, %67
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !77
  %band_end62 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %68 = load i32, i32* %band_end62, align 4, !tbaa !77
  %yend63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %69 = load i32, i32* %yend63, align 4, !tbaa !71
  %cmp64 = icmp slt i32 %68, %69
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.54
  %band_end65 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %70 = load i32, i32* %band_end65, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.54
  %yend66 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %71 = load i32, i32* %yend66, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %70, %cond.true ], [ %71, %cond.false ]
  %y67 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %72 = load i32, i32* %y67, align 4, !tbaa !68
  %sub68 = sub nsw i32 %cond, %72
  %height69 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub68, i32* %height69, align 4, !tbaa !70
  %73 = load i64, i64* %color_usage, align 8, !tbaa !58
  %pcls70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %74 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls70, align 8, !tbaa !76
  %color_usage71 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %74, i32 0, i32 16
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage71, i32 0, i32 0
  %75 = load i64, i64* %or, align 8, !tbaa !78
  %or72 = or i64 %75, %73
  store i64 %or72, i64* %or, align 8, !tbaa !78
  br label %do.body.73

do.body.73:                                       ; preds = %land.end, %cond.end
  %pcls74 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %76 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls74, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %76, i32 0, i32 10
  %77 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv = sext i16 %77 to i32
  %cmp75 = icmp eq i32 %conv, 1
  br i1 %cmp75, label %land.lhs.true, label %cond.false.82

land.lhs.true:                                    ; preds = %do.body.73
  %78 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls77 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %79 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls77, align 8, !tbaa !76
  %call78 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %78, %struct.gx_clist_state_s* %79, i32 0) #4
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %cond.true.81, label %cond.false.82

cond.true.81:                                     ; preds = %land.lhs.true
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 65
  %81 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.83

cond.false.82:                                    ; preds = %land.lhs.true, %do.body.73
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.81
  %cond84 = phi i32 [ %81, %cond.true.81 ], [ 0, %cond.false.82 ]
  store i32 %cond84, i32* %code, align 4, !tbaa !5
  %82 = load i32, i32* %code, align 4, !tbaa !5
  %cmp85 = icmp sge i32 %82, 0
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.97

land.lhs.true.87:                                 ; preds = %cond.end.83
  %83 = load i64, i64* %color.addr, align 8, !tbaa !58
  %pcls88 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %84 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls88, align 8, !tbaa !76
  %colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %84, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %colors, i32 0, i64 1
  %85 = load i64, i64* %arrayidx, align 8, !tbaa !58
  %cmp89 = icmp ne i64 %83, %85
  br i1 %cmp89, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %land.lhs.true.87
  %86 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %87 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls92, align 8, !tbaa !76
  %88 = load i64, i64* %color.addr, align 8, !tbaa !58
  %pcls93 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %89 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls93, align 8, !tbaa !76
  %colors94 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %89, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [2 x i64], [2 x i64]* %colors94, i32 0, i64 1
  %call96 = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %86, %struct.gx_clist_state_s* %87, %struct.clist_select_color_t* @clist_select_color1, i64 %88, i64* %arrayidx95) #4
  store i32 %call96, i32* %code, align 4, !tbaa !5
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.91, %land.lhs.true.87, %cond.end.83
  %90 = load i32, i32* %code, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %90, 0
  br i1 %cmp98, label %if.then.100, label %if.end.105

if.then.100:                                      ; preds = %if.end.97
  %91 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls101 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %92 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls101, align 8, !tbaa !76
  %93 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y102 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %94 = load i32, i32* %y102, align 4, !tbaa !68
  %95 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height103 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %96 = load i32, i32* %height103, align 4, !tbaa !70
  %call104 = call i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s* %91, %struct.gx_clist_state_s* %92, i32 48, i32 %93, i32 %94, i32 %95, i32 %96) #4
  store i32 %call104, i32* %code, align 4, !tbaa !5
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.100, %if.end.97
  br label %do.cond.106

do.cond.106:                                      ; preds = %if.end.105
  %97 = load i32, i32* %code, align 4, !tbaa !5
  %cmp107 = icmp slt i32 %97, 0
  br i1 %cmp107, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.106
  %98 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %call109 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %98, i32 %99) #4
  store i32 %call109, i32* %code, align 4, !tbaa !5
  %cmp110 = icmp sge i32 %call109, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.106
  %100 = phi i1 [ false, %do.cond.106 ], [ %cmp110, %land.rhs ]
  br i1 %100, label %do.body.73, label %do.end.112

do.end.112:                                       ; preds = %land.end
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %cmp113 = icmp slt i32 %101, 0
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.118

land.lhs.true.115:                                ; preds = %do.end.112
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %102, i32* %band_code, align 4, !tbaa !80
  %tobool116 = icmp ne i32 %102, 0
  br i1 %tobool116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %land.lhs.true.115
  br label %error_in_rect

if.end.118:                                       ; preds = %land.lhs.true.115, %do.end.112
  %height119 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %103 = load i32, i32* %height119, align 4, !tbaa !70
  %y120 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %104 = load i32, i32* %y120, align 4, !tbaa !68
  %add121 = add nsw i32 %104, %103
  store i32 %add121, i32* %y120, align 4, !tbaa !68
  br label %do.cond.135

error_in_rect:                                    ; preds = %if.then.117
  %105 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %105, i32 0, i32 94
  %106 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool122 = icmp ne i32 %106, 0
  br i1 %tobool122, label %land.lhs.true.123, label %if.then.132

land.lhs.true.123:                                ; preds = %error_in_rect
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 96
  %108 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %cmp124 = icmp eq i32 %108, 0
  br i1 %cmp124, label %land.lhs.true.126, label %if.then.132

land.lhs.true.126:                                ; preds = %land.lhs.true.123
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code127 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %110 = load i32, i32* %band_code127, align 4, !tbaa !80
  %call128 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %109, i32 %110) #4
  %band_code129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call128, i32* %band_code129, align 4, !tbaa !80
  %cmp130 = icmp sge i32 %call128, 0
  br i1 %cmp130, label %if.end.134, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.126, %land.lhs.true.123, %error_in_rect
  %band_code133 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %111 = load i32, i32* %band_code133, align 4, !tbaa !80
  store i32 %111, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.134:                                       ; preds = %land.lhs.true.126
  br label %do.cond.135

do.cond.135:                                      ; preds = %if.end.134, %if.end.118
  %y136 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %112 = load i32, i32* %y136, align 4, !tbaa !68
  %yend137 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %113 = load i32, i32* %yend137, align 4, !tbaa !71
  %cmp138 = icmp slt i32 %112, %113
  br i1 %cmp138, label %do.body.54, label %do.end.140

do.end.140:                                       ; preds = %do.cond.135
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.140, %if.then.132, %if.then.30, %if.then.27
  %114 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %115) #1
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = load i32, i32* %retval
  ret i32 %118
}

declare void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s*, %struct.gs_int_rect_s*) #2

declare i64 @gx_color_index2usage(%struct.gx_device_s*, i64) #2

declare i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @cmd_put_color(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, %struct.clist_select_color_t*, i64, i64*) #2

declare i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fill_rectangle_hl_color(%struct.gx_device_s* %dev, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_fixed_rect_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  %rwidth = alloca i32, align 4
  %rheight = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %color_usage = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_rect_s* %rect, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %8) #1
  %9 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %11 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s* %10, %struct.gx_device_color_s* %11) #4
  store i64 %call, i64* %color_usage, align 8, !tbaa !58
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %12, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %13 = load i32, i32* %x, align 4, !tbaa !83
  %shr = ashr i32 %13, 8
  store i32 %shr, i32* %rx, align 4, !tbaa !5
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 1
  %15 = load i32, i32* %y, align 4, !tbaa !85
  %shr2 = ashr i32 %15, 8
  store i32 %shr2, i32* %ry, align 4, !tbaa !5
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %17 = load i32, i32* %x3, align 4, !tbaa !86
  %shr4 = ashr i32 %17, 8
  %18 = load i32, i32* %rx, align 4, !tbaa !5
  %sub = sub nsw i32 %shr4, %18
  store i32 %sub, i32* %rwidth, align 4, !tbaa !5
  %19 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %rect.addr, align 8, !tbaa !1
  %q5 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %19, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q5, i32 0, i32 1
  %20 = load i32, i32* %y6, align 4, !tbaa !87
  %shr7 = ashr i32 %20, 8
  %21 = load i32, i32* %ry, align 4, !tbaa !5
  %sub8 = sub nsw i32 %shr7, %21
  store i32 %sub8, i32* %rheight, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  %22 = load i32, i32* %rx, align 4, !tbaa !5
  %cmp = icmp slt i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %23 = load i32, i32* %rx, align 4, !tbaa !5
  %24 = load i32, i32* %rwidth, align 4, !tbaa !5
  %add = add nsw i32 %24, %23
  store i32 %add, i32* %rwidth, align 4, !tbaa !5
  store i32 0, i32* %rx, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.body.9

do.body.9:                                        ; preds = %if.end
  %25 = load i32, i32* %rwidth, align 4, !tbaa !5
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width, align 4, !tbaa !59
  %28 = load i32, i32* %rx, align 4, !tbaa !5
  %sub10 = sub nsw i32 %27, %28
  %cmp11 = icmp sgt i32 %25, %sub10
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %do.body.9
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 13
  %30 = load i32, i32* %width13, align 4, !tbaa !59
  %31 = load i32, i32* %rx, align 4, !tbaa !5
  %sub14 = sub nsw i32 %30, %31
  store i32 %sub14, i32* %rwidth, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %do.body.9
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.16

do.body.16:                                       ; preds = %do.end
  %32 = load i32, i32* %ry, align 4, !tbaa !5
  %33 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %33, i32 0, i32 101
  %34 = load i32, i32* %cropping_min, align 4, !tbaa !60
  %cmp17 = icmp slt i32 %32, %34
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %do.body.16
  %35 = load i32, i32* %ry, align 4, !tbaa !5
  %36 = load i32, i32* %rheight, align 4, !tbaa !5
  %add19 = add nsw i32 %35, %36
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 101
  %38 = load i32, i32* %cropping_min20, align 4, !tbaa !60
  %sub21 = sub nsw i32 %add19, %38
  store i32 %sub21, i32* %rheight, align 4, !tbaa !5
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %39, i32 0, i32 101
  %40 = load i32, i32* %cropping_min22, align 4, !tbaa !60
  store i32 %40, i32* %ry, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %do.body.16
  %41 = load i32, i32* %ry, align 4, !tbaa !5
  %42 = load i32, i32* %rheight, align 4, !tbaa !5
  %add24 = add nsw i32 %41, %42
  %43 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %43, i32 0, i32 102
  %44 = load i32, i32* %cropping_max, align 4, !tbaa !61
  %cmp25 = icmp sgt i32 %add24, %44
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.23
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max27 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 102
  %46 = load i32, i32* %cropping_max27, align 4, !tbaa !61
  %47 = load i32, i32* %ry, align 4, !tbaa !5
  %sub28 = sub nsw i32 %46, %47
  store i32 %sub28, i32* %rheight, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.23
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.end.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %48 = load i32, i32* %rwidth, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %48, 0
  br i1 %cmp34, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.33
  %49 = load i32, i32* %rheight, align 4, !tbaa !5
  %cmp35 = icmp sle i32 %49, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false, %do.end.33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %lor.lhs.false
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 95
  %51 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp38 = icmp slt i32 %51, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error40 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %52, i32 0, i32 95
  %53 = load i32, i32* %permanent_error40, align 4, !tbaa !62
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %if.end.37
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 81
  %55 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %if.end.41
  %56 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %56) #1
  %57 = load i32, i32* %rx, align 4, !tbaa !5
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 0
  store i32 %57, i32* %x44, align 4, !tbaa !64
  %58 = load i32, i32* %rx, align 4, !tbaa !5
  %59 = load i32, i32* %rwidth, align 4, !tbaa !5
  %add45 = add nsw i32 %58, %59
  %sub46 = sub nsw i32 %add45, 1
  %q47 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x48 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q47, i32 0, i32 0
  store i32 %sub46, i32* %x48, align 4, !tbaa !65
  %60 = load i32, i32* %ry, align 4, !tbaa !5
  %p49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p49, i32 0, i32 1
  store i32 %60, i32* %y50, align 4, !tbaa !66
  %61 = load i32, i32* %ry, align 4, !tbaa !5
  %62 = load i32, i32* %rheight, align 4, !tbaa !5
  %add51 = add nsw i32 %61, %62
  %sub52 = sub nsw i32 %add51, 1
  %q53 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q53, i32 0, i32 1
  store i32 %sub52, i32* %y54, align 4, !tbaa !67
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %63, %struct.gs_int_rect_s* %bbox) #4
  %64 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %64) #1
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.42, %if.end.41
  %65 = load i32, i32* %ry, align 4, !tbaa !5
  %y56 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %65, i32* %y56, align 4, !tbaa !68
  %66 = load i32, i32* %rheight, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %66, i32* %height, align 4, !tbaa !70
  %y57 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %67 = load i32, i32* %y57, align 4, !tbaa !68
  %height58 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %68 = load i32, i32* %height58, align 4, !tbaa !70
  %add59 = add nsw i32 %67, %68
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add59, i32* %yend, align 4, !tbaa !71
  %69 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %69, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %70 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %70, i32* %band_height, align 4, !tbaa !73
  %yend60 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %71 = load i32, i32* %yend60, align 4, !tbaa !71
  %y61 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %72 = load i32, i32* %y61, align 4, !tbaa !68
  %sub62 = sub nsw i32 %71, %72
  %band_height63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %73 = load i32, i32* %band_height63, align 4, !tbaa !73
  %add64 = add nsw i32 %sub62, %73
  %sub65 = sub nsw i32 %add64, 1
  %band_height66 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %74 = load i32, i32* %band_height66, align 4, !tbaa !73
  %div = sdiv i32 %sub65, %74
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.67

do.body.67:                                       ; preds = %do.cond.137, %if.end.55
  %y68 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %75 = load i32, i32* %y68, align 4, !tbaa !68
  %band_height69 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %76 = load i32, i32* %band_height69, align 4, !tbaa !73
  %div70 = sdiv i32 %75, %76
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div70, i32* %band, align 4, !tbaa !75
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %77, i32 0, i32 66
  %78 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band71 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %79 = load i32, i32* %band71, align 4, !tbaa !75
  %idx.ext = sext i32 %79 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %78, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band72 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %80 = load i32, i32* %band72, align 4, !tbaa !75
  %add73 = add nsw i32 %80, 1
  %band_height74 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %81 = load i32, i32* %band_height74, align 4, !tbaa !73
  %mul = mul nsw i32 %add73, %81
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !77
  %band_end75 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %82 = load i32, i32* %band_end75, align 4, !tbaa !77
  %yend76 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %83 = load i32, i32* %yend76, align 4, !tbaa !71
  %cmp77 = icmp slt i32 %82, %83
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.67
  %band_end78 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %84 = load i32, i32* %band_end78, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.67
  %yend79 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %85 = load i32, i32* %yend79, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %84, %cond.true ], [ %85, %cond.false ]
  %y80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %86 = load i32, i32* %y80, align 4, !tbaa !68
  %sub81 = sub nsw i32 %cond, %86
  %height82 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub81, i32* %height82, align 4, !tbaa !70
  %87 = load i64, i64* %color_usage, align 8, !tbaa !58
  %pcls83 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %88 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls83, align 8, !tbaa !76
  %color_usage84 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %88, i32 0, i32 16
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage84, i32 0, i32 0
  %89 = load i64, i64* %or, align 8, !tbaa !78
  %or85 = or i64 %89, %87
  store i64 %or85, i64* %or, align 8, !tbaa !78
  br label %do.body.86

do.body.86:                                       ; preds = %land.end, %cond.end
  %pcls87 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %90 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls87, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %90, i32 0, i32 10
  %91 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv = sext i16 %91 to i32
  %cmp88 = icmp eq i32 %conv, 1
  br i1 %cmp88, label %land.lhs.true, label %cond.false.95

land.lhs.true:                                    ; preds = %do.body.86
  %92 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls90 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %93 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls90, align 8, !tbaa !76
  %call91 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %92, %struct.gx_clist_state_s* %93, i32 0) #4
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %land.lhs.true
  %94 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %94, i32 0, i32 65
  %95 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.96

cond.false.95:                                    ; preds = %land.lhs.true, %do.body.86
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i32 [ %95, %cond.true.94 ], [ 0, %cond.false.95 ]
  store i32 %cond97, i32* %code, align 4, !tbaa !5
  %96 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls98 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %97 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls98, align 8, !tbaa !76
  %98 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call99 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %96, %struct.gx_clist_state_s* %97, %struct.gx_device_color_s* %98, %struct.cmd_rects_enum_s* %re, i32 0) #4
  store i32 %call99, i32* %code, align 4, !tbaa !5
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %cmp100 = icmp sge i32 %99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %cond.end.96
  %100 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls103 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %101 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls103, align 8, !tbaa !76
  %102 = load i32, i32* %rx, align 4, !tbaa !5
  %y104 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %103 = load i32, i32* %y104, align 4, !tbaa !68
  %104 = load i32, i32* %rwidth, align 4, !tbaa !5
  %height105 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %105 = load i32, i32* %height105, align 4, !tbaa !70
  %call106 = call i32 @cmd_write_rect_hl_cmd(%struct.gx_device_clist_writer_s* %100, %struct.gx_clist_state_s* %101, i32 209, i32 %102, i32 %103, i32 %104, i32 %105, i32 0) #4
  store i32 %call106, i32* %code, align 4, !tbaa !5
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %cond.end.96
  br label %do.cond.108

do.cond.108:                                      ; preds = %if.end.107
  %106 = load i32, i32* %code, align 4, !tbaa !5
  %cmp109 = icmp slt i32 %106, 0
  br i1 %cmp109, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.108
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %call111 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %107, i32 %108) #4
  store i32 %call111, i32* %code, align 4, !tbaa !5
  %cmp112 = icmp sge i32 %call111, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.108
  %109 = phi i1 [ false, %do.cond.108 ], [ %cmp112, %land.rhs ]
  br i1 %109, label %do.body.86, label %do.end.114

do.end.114:                                       ; preds = %land.end
  %110 = load i32, i32* %code, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %110, 0
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.120

land.lhs.true.117:                                ; preds = %do.end.114
  %111 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %111, i32* %band_code, align 4, !tbaa !80
  %tobool118 = icmp ne i32 %111, 0
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %land.lhs.true.117
  br label %error_in_rect

if.end.120:                                       ; preds = %land.lhs.true.117, %do.end.114
  %height121 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %112 = load i32, i32* %height121, align 4, !tbaa !70
  %y122 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %113 = load i32, i32* %y122, align 4, !tbaa !68
  %add123 = add nsw i32 %113, %112
  store i32 %add123, i32* %y122, align 4, !tbaa !68
  br label %do.cond.137

error_in_rect:                                    ; preds = %if.then.119
  %114 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %114, i32 0, i32 94
  %115 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool124 = icmp ne i32 %115, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.then.134

land.lhs.true.125:                                ; preds = %error_in_rect
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %116, i32 0, i32 96
  %117 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %cmp126 = icmp eq i32 %117, 0
  br i1 %cmp126, label %land.lhs.true.128, label %if.then.134

land.lhs.true.128:                                ; preds = %land.lhs.true.125
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %119 = load i32, i32* %band_code129, align 4, !tbaa !80
  %call130 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %118, i32 %119) #4
  %band_code131 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call130, i32* %band_code131, align 4, !tbaa !80
  %cmp132 = icmp sge i32 %call130, 0
  br i1 %cmp132, label %if.end.136, label %if.then.134

if.then.134:                                      ; preds = %land.lhs.true.128, %land.lhs.true.125, %error_in_rect
  %band_code135 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %120 = load i32, i32* %band_code135, align 4, !tbaa !80
  store i32 %120, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.136:                                       ; preds = %land.lhs.true.128
  br label %do.cond.137

do.cond.137:                                      ; preds = %if.end.136, %if.end.120
  %y138 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %121 = load i32, i32* %y138, align 4, !tbaa !68
  %yend139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %122 = load i32, i32* %yend139, align 4, !tbaa !71
  %cmp140 = icmp slt i32 %121, %122
  br i1 %cmp140, label %do.body.67, label %do.end.142

do.end.142:                                       ; preds = %do.cond.137
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.142, %if.then.134, %if.then.39, %if.then.36
  %123 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %124) #1
  %125 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %rwidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s*, %struct.gx_device_color_s*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %swap_axes, %struct.gx_device_color_s* %pdcolor, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %swap_axes.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %swap_axes, i32* %swap_axes.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %2 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %3 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %4 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %5 = load i32, i32* %swap_axes.addr, align 4, !tbaa !5
  %6 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %7 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @clist_write_fill_trapezoid(%struct.gx_device_s* %0, %struct.gs_fixed_edge_s* %1, %struct.gs_fixed_edge_s* %2, i32 %3, i32 %4, i32 %5, %struct.gx_device_color_s* %6, i32 %7, %struct.gs_fill_attributes_s* null, i32* null, i32* null, i32* null, i32* null) #4
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clist_write_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %options, %struct.gx_device_color_s* %pdcolor, i32 %lop, %struct.gs_fill_attributes_s* %fa, i32* %c0, i32* %c1, i32* %c2, i32* %c3) #3 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %c3.addr = alloca i32*, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %code = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %ry = alloca i32, align 4
  %rheight = alloca i32, align 4
  %rx = alloca i32, align 4
  %rxe = alloca i32, align 4
  %swap_axes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32* %c3, i32** %c3.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %4) #1
  %5 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %rxe to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %swap_axes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and = and i32 %10, 1
  store i32 %and, i32* %swap_axes, align 4, !tbaa !5
  %11 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and1 = and i32 %11, 4
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.else.651

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %swap_axes, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %12, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %13 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %13, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %14 = load i32, i32* %y, align 4, !tbaa !88
  %15 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %15, i32 0, i32 1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %16 = load i32, i32* %y4, align 4, !tbaa !90
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %17 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start5 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %17, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start5, i32 0, i32 1
  %18 = load i32, i32* %y6, align 4, !tbaa !88
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end7 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end7, i32 0, i32 1
  %20 = load i32, i32* %y8, align 4, !tbaa !90
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %20, %cond.false ]
  %21 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start9 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %21, i32 0, i32 0
  %y10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start9, i32 0, i32 1
  %22 = load i32, i32* %y10, align 4, !tbaa !88
  %cmp11 = icmp slt i32 %cond, %22
  br i1 %cmp11, label %cond.true.12, label %cond.false.26

cond.true.12:                                     ; preds = %cond.end
  %23 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start13 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %23, i32 0, i32 0
  %y14 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start13, i32 0, i32 1
  %24 = load i32, i32* %y14, align 4, !tbaa !88
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end15, i32 0, i32 1
  %26 = load i32, i32* %y16, align 4, !tbaa !90
  %cmp17 = icmp slt i32 %24, %26
  br i1 %cmp17, label %cond.true.18, label %cond.false.21

cond.true.18:                                     ; preds = %cond.true.12
  %27 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start19 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %27, i32 0, i32 0
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start19, i32 0, i32 1
  %28 = load i32, i32* %y20, align 4, !tbaa !88
  br label %cond.end.24

cond.false.21:                                    ; preds = %cond.true.12
  %29 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %29, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end22, i32 0, i32 1
  %30 = load i32, i32* %y23, align 4, !tbaa !90
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.18
  %cond25 = phi i32 [ %28, %cond.true.18 ], [ %30, %cond.false.21 ]
  br label %cond.end.29

cond.false.26:                                    ; preds = %cond.end
  %31 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %31, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start27, i32 0, i32 1
  %32 = load i32, i32* %y28, align 4, !tbaa !88
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.26, %cond.end.24
  %cond30 = phi i32 [ %cond25, %cond.end.24 ], [ %32, %cond.false.26 ]
  %33 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %33, i32 0, i32 0
  %34 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !91
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %34, i32 0, i32 0
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %35 = load i32, i32* %y31, align 4, !tbaa !85
  %cmp32 = icmp sgt i32 %cond30, %35
  br i1 %cmp32, label %cond.true.33, label %cond.false.69

cond.true.33:                                     ; preds = %cond.end.29
  %36 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start34 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %36, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start34, i32 0, i32 1
  %37 = load i32, i32* %y35, align 4, !tbaa !88
  %38 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end36 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %38, i32 0, i32 1
  %y37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end36, i32 0, i32 1
  %39 = load i32, i32* %y37, align 4, !tbaa !90
  %cmp38 = icmp slt i32 %37, %39
  br i1 %cmp38, label %cond.true.39, label %cond.false.42

cond.true.39:                                     ; preds = %cond.true.33
  %40 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start40 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %40, i32 0, i32 0
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start40, i32 0, i32 1
  %41 = load i32, i32* %y41, align 4, !tbaa !88
  br label %cond.end.45

cond.false.42:                                    ; preds = %cond.true.33
  %42 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end43 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %42, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end43, i32 0, i32 1
  %43 = load i32, i32* %y44, align 4, !tbaa !90
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.42, %cond.true.39
  %cond46 = phi i32 [ %41, %cond.true.39 ], [ %43, %cond.false.42 ]
  %44 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start47 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %44, i32 0, i32 0
  %y48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start47, i32 0, i32 1
  %45 = load i32, i32* %y48, align 4, !tbaa !88
  %cmp49 = icmp slt i32 %cond46, %45
  br i1 %cmp49, label %cond.true.50, label %cond.false.64

cond.true.50:                                     ; preds = %cond.end.45
  %46 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start51 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %46, i32 0, i32 0
  %y52 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start51, i32 0, i32 1
  %47 = load i32, i32* %y52, align 4, !tbaa !88
  %48 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end53 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %48, i32 0, i32 1
  %y54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end53, i32 0, i32 1
  %49 = load i32, i32* %y54, align 4, !tbaa !90
  %cmp55 = icmp slt i32 %47, %49
  br i1 %cmp55, label %cond.true.56, label %cond.false.59

cond.true.56:                                     ; preds = %cond.true.50
  %50 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start57 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %50, i32 0, i32 0
  %y58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start57, i32 0, i32 1
  %51 = load i32, i32* %y58, align 4, !tbaa !88
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.true.50
  %52 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end60 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %52, i32 0, i32 1
  %y61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end60, i32 0, i32 1
  %53 = load i32, i32* %y61, align 4, !tbaa !90
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.true.56
  %cond63 = phi i32 [ %51, %cond.true.56 ], [ %53, %cond.false.59 ]
  br label %cond.end.67

cond.false.64:                                    ; preds = %cond.end.45
  %54 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start65 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %54, i32 0, i32 0
  %y66 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start65, i32 0, i32 1
  %55 = load i32, i32* %y66, align 4, !tbaa !88
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.64, %cond.end.62
  %cond68 = phi i32 [ %cond63, %cond.end.62 ], [ %55, %cond.false.64 ]
  br label %cond.end.73

cond.false.69:                                    ; preds = %cond.end.29
  %56 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip70 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %56, i32 0, i32 0
  %57 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip70, align 8, !tbaa !91
  %p71 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %57, i32 0, i32 0
  %y72 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p71, i32 0, i32 1
  %58 = load i32, i32* %y72, align 4, !tbaa !85
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.69, %cond.end.67
  %cond74 = phi i32 [ %cond68, %cond.end.67 ], [ %58, %cond.false.69 ]
  %shr = ashr i32 %cond74, 8
  store i32 %shr, i32* %rx, align 4, !tbaa !5
  %59 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start75 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %59, i32 0, i32 0
  %y76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start75, i32 0, i32 1
  %60 = load i32, i32* %y76, align 4, !tbaa !88
  %61 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end77 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %61, i32 0, i32 1
  %y78 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end77, i32 0, i32 1
  %62 = load i32, i32* %y78, align 4, !tbaa !90
  %cmp79 = icmp sgt i32 %60, %62
  br i1 %cmp79, label %cond.true.80, label %cond.false.83

cond.true.80:                                     ; preds = %cond.end.73
  %63 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start81 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %63, i32 0, i32 0
  %y82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start81, i32 0, i32 1
  %64 = load i32, i32* %y82, align 4, !tbaa !88
  br label %cond.end.86

cond.false.83:                                    ; preds = %cond.end.73
  %65 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end84 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %65, i32 0, i32 1
  %y85 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end84, i32 0, i32 1
  %66 = load i32, i32* %y85, align 4, !tbaa !90
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.false.83, %cond.true.80
  %cond87 = phi i32 [ %64, %cond.true.80 ], [ %66, %cond.false.83 ]
  %67 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start88 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %67, i32 0, i32 0
  %y89 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start88, i32 0, i32 1
  %68 = load i32, i32* %y89, align 4, !tbaa !88
  %cmp90 = icmp sgt i32 %cond87, %68
  br i1 %cmp90, label %cond.true.91, label %cond.false.105

cond.true.91:                                     ; preds = %cond.end.86
  %69 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start92 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %69, i32 0, i32 0
  %y93 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start92, i32 0, i32 1
  %70 = load i32, i32* %y93, align 4, !tbaa !88
  %71 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end94 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %71, i32 0, i32 1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end94, i32 0, i32 1
  %72 = load i32, i32* %y95, align 4, !tbaa !90
  %cmp96 = icmp sgt i32 %70, %72
  br i1 %cmp96, label %cond.true.97, label %cond.false.100

cond.true.97:                                     ; preds = %cond.true.91
  %73 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start98 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %73, i32 0, i32 0
  %y99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start98, i32 0, i32 1
  %74 = load i32, i32* %y99, align 4, !tbaa !88
  br label %cond.end.103

cond.false.100:                                   ; preds = %cond.true.91
  %75 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end101 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %75, i32 0, i32 1
  %y102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end101, i32 0, i32 1
  %76 = load i32, i32* %y102, align 4, !tbaa !90
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.100, %cond.true.97
  %cond104 = phi i32 [ %74, %cond.true.97 ], [ %76, %cond.false.100 ]
  br label %cond.end.108

cond.false.105:                                   ; preds = %cond.end.86
  %77 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start106 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %77, i32 0, i32 0
  %y107 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start106, i32 0, i32 1
  %78 = load i32, i32* %y107, align 4, !tbaa !88
  br label %cond.end.108

cond.end.108:                                     ; preds = %cond.false.105, %cond.end.103
  %cond109 = phi i32 [ %cond104, %cond.end.103 ], [ %78, %cond.false.105 ]
  %79 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip110 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %79, i32 0, i32 0
  %80 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip110, align 8, !tbaa !91
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %80, i32 0, i32 1
  %y111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %81 = load i32, i32* %y111, align 4, !tbaa !87
  %cmp112 = icmp slt i32 %cond109, %81
  br i1 %cmp112, label %cond.true.113, label %cond.false.149

cond.true.113:                                    ; preds = %cond.end.108
  %82 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start114 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %82, i32 0, i32 0
  %y115 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start114, i32 0, i32 1
  %83 = load i32, i32* %y115, align 4, !tbaa !88
  %84 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end116 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %84, i32 0, i32 1
  %y117 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end116, i32 0, i32 1
  %85 = load i32, i32* %y117, align 4, !tbaa !90
  %cmp118 = icmp sgt i32 %83, %85
  br i1 %cmp118, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.true.113
  %86 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start120 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %86, i32 0, i32 0
  %y121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start120, i32 0, i32 1
  %87 = load i32, i32* %y121, align 4, !tbaa !88
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.true.113
  %88 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end123 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %88, i32 0, i32 1
  %y124 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end123, i32 0, i32 1
  %89 = load i32, i32* %y124, align 4, !tbaa !90
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.119
  %cond126 = phi i32 [ %87, %cond.true.119 ], [ %89, %cond.false.122 ]
  %90 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start127 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %90, i32 0, i32 0
  %y128 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start127, i32 0, i32 1
  %91 = load i32, i32* %y128, align 4, !tbaa !88
  %cmp129 = icmp sgt i32 %cond126, %91
  br i1 %cmp129, label %cond.true.130, label %cond.false.144

cond.true.130:                                    ; preds = %cond.end.125
  %92 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start131 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %92, i32 0, i32 0
  %y132 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start131, i32 0, i32 1
  %93 = load i32, i32* %y132, align 4, !tbaa !88
  %94 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end133 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %94, i32 0, i32 1
  %y134 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end133, i32 0, i32 1
  %95 = load i32, i32* %y134, align 4, !tbaa !90
  %cmp135 = icmp sgt i32 %93, %95
  br i1 %cmp135, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %cond.true.130
  %96 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start137 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %96, i32 0, i32 0
  %y138 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start137, i32 0, i32 1
  %97 = load i32, i32* %y138, align 4, !tbaa !88
  br label %cond.end.142

cond.false.139:                                   ; preds = %cond.true.130
  %98 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end140 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %98, i32 0, i32 1
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end140, i32 0, i32 1
  %99 = load i32, i32* %y141, align 4, !tbaa !90
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.139, %cond.true.136
  %cond143 = phi i32 [ %97, %cond.true.136 ], [ %99, %cond.false.139 ]
  br label %cond.end.147

cond.false.144:                                   ; preds = %cond.end.125
  %100 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start145 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %100, i32 0, i32 0
  %y146 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start145, i32 0, i32 1
  %101 = load i32, i32* %y146, align 4, !tbaa !88
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.144, %cond.end.142
  %cond148 = phi i32 [ %cond143, %cond.end.142 ], [ %101, %cond.false.144 ]
  br label %cond.end.153

cond.false.149:                                   ; preds = %cond.end.108
  %102 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip150 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %102, i32 0, i32 0
  %103 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip150, align 8, !tbaa !91
  %q151 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %103, i32 0, i32 1
  %y152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q151, i32 0, i32 1
  %104 = load i32, i32* %y152, align 4, !tbaa !87
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.149, %cond.end.147
  %cond154 = phi i32 [ %cond148, %cond.end.147 ], [ %104, %cond.false.149 ]
  %add = add nsw i32 %cond154, 255
  %shr155 = ashr i32 %add, 8
  store i32 %shr155, i32* %rxe, align 4, !tbaa !5
  %105 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start156 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %105, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start156, i32 0, i32 0
  %106 = load i32, i32* %x, align 4, !tbaa !93
  %107 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end157 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %107, i32 0, i32 1
  %x158 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end157, i32 0, i32 0
  %108 = load i32, i32* %x158, align 4, !tbaa !94
  %cmp159 = icmp slt i32 %106, %108
  br i1 %cmp159, label %cond.true.160, label %cond.false.163

cond.true.160:                                    ; preds = %cond.end.153
  %109 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start161 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %109, i32 0, i32 0
  %x162 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start161, i32 0, i32 0
  %110 = load i32, i32* %x162, align 4, !tbaa !93
  br label %cond.end.166

cond.false.163:                                   ; preds = %cond.end.153
  %111 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end164 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %111, i32 0, i32 1
  %x165 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end164, i32 0, i32 0
  %112 = load i32, i32* %x165, align 4, !tbaa !94
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.false.163, %cond.true.160
  %cond167 = phi i32 [ %110, %cond.true.160 ], [ %112, %cond.false.163 ]
  %113 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start168 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %113, i32 0, i32 0
  %x169 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start168, i32 0, i32 0
  %114 = load i32, i32* %x169, align 4, !tbaa !93
  %cmp170 = icmp slt i32 %cond167, %114
  br i1 %cmp170, label %cond.true.171, label %cond.false.185

cond.true.171:                                    ; preds = %cond.end.166
  %115 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start172 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %115, i32 0, i32 0
  %x173 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start172, i32 0, i32 0
  %116 = load i32, i32* %x173, align 4, !tbaa !93
  %117 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end174 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %117, i32 0, i32 1
  %x175 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end174, i32 0, i32 0
  %118 = load i32, i32* %x175, align 4, !tbaa !94
  %cmp176 = icmp slt i32 %116, %118
  br i1 %cmp176, label %cond.true.177, label %cond.false.180

cond.true.177:                                    ; preds = %cond.true.171
  %119 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start178 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %119, i32 0, i32 0
  %x179 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start178, i32 0, i32 0
  %120 = load i32, i32* %x179, align 4, !tbaa !93
  br label %cond.end.183

cond.false.180:                                   ; preds = %cond.true.171
  %121 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end181 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %121, i32 0, i32 1
  %x182 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end181, i32 0, i32 0
  %122 = load i32, i32* %x182, align 4, !tbaa !94
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.180, %cond.true.177
  %cond184 = phi i32 [ %120, %cond.true.177 ], [ %122, %cond.false.180 ]
  br label %cond.end.188

cond.false.185:                                   ; preds = %cond.end.166
  %123 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start186 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %123, i32 0, i32 0
  %x187 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start186, i32 0, i32 0
  %124 = load i32, i32* %x187, align 4, !tbaa !93
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.185, %cond.end.183
  %cond189 = phi i32 [ %cond184, %cond.end.183 ], [ %124, %cond.false.185 ]
  %125 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip190 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %125, i32 0, i32 0
  %126 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip190, align 8, !tbaa !91
  %p191 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %126, i32 0, i32 0
  %x192 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p191, i32 0, i32 0
  %127 = load i32, i32* %x192, align 4, !tbaa !83
  %cmp193 = icmp sgt i32 %cond189, %127
  br i1 %cmp193, label %cond.true.194, label %cond.false.230

cond.true.194:                                    ; preds = %cond.end.188
  %128 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start195 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %128, i32 0, i32 0
  %x196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start195, i32 0, i32 0
  %129 = load i32, i32* %x196, align 4, !tbaa !93
  %130 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end197 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %130, i32 0, i32 1
  %x198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end197, i32 0, i32 0
  %131 = load i32, i32* %x198, align 4, !tbaa !94
  %cmp199 = icmp slt i32 %129, %131
  br i1 %cmp199, label %cond.true.200, label %cond.false.203

cond.true.200:                                    ; preds = %cond.true.194
  %132 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start201 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %132, i32 0, i32 0
  %x202 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start201, i32 0, i32 0
  %133 = load i32, i32* %x202, align 4, !tbaa !93
  br label %cond.end.206

cond.false.203:                                   ; preds = %cond.true.194
  %134 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end204 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %134, i32 0, i32 1
  %x205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end204, i32 0, i32 0
  %135 = load i32, i32* %x205, align 4, !tbaa !94
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.203, %cond.true.200
  %cond207 = phi i32 [ %133, %cond.true.200 ], [ %135, %cond.false.203 ]
  %136 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start208 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %136, i32 0, i32 0
  %x209 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start208, i32 0, i32 0
  %137 = load i32, i32* %x209, align 4, !tbaa !93
  %cmp210 = icmp slt i32 %cond207, %137
  br i1 %cmp210, label %cond.true.211, label %cond.false.225

cond.true.211:                                    ; preds = %cond.end.206
  %138 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start212 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %138, i32 0, i32 0
  %x213 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start212, i32 0, i32 0
  %139 = load i32, i32* %x213, align 4, !tbaa !93
  %140 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end214 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %140, i32 0, i32 1
  %x215 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end214, i32 0, i32 0
  %141 = load i32, i32* %x215, align 4, !tbaa !94
  %cmp216 = icmp slt i32 %139, %141
  br i1 %cmp216, label %cond.true.217, label %cond.false.220

cond.true.217:                                    ; preds = %cond.true.211
  %142 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start218 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %142, i32 0, i32 0
  %x219 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start218, i32 0, i32 0
  %143 = load i32, i32* %x219, align 4, !tbaa !93
  br label %cond.end.223

cond.false.220:                                   ; preds = %cond.true.211
  %144 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end221 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %144, i32 0, i32 1
  %x222 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end221, i32 0, i32 0
  %145 = load i32, i32* %x222, align 4, !tbaa !94
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.220, %cond.true.217
  %cond224 = phi i32 [ %143, %cond.true.217 ], [ %145, %cond.false.220 ]
  br label %cond.end.228

cond.false.225:                                   ; preds = %cond.end.206
  %146 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start226 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %146, i32 0, i32 0
  %x227 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start226, i32 0, i32 0
  %147 = load i32, i32* %x227, align 4, !tbaa !93
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.225, %cond.end.223
  %cond229 = phi i32 [ %cond224, %cond.end.223 ], [ %147, %cond.false.225 ]
  br label %cond.end.234

cond.false.230:                                   ; preds = %cond.end.188
  %148 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip231 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %148, i32 0, i32 0
  %149 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip231, align 8, !tbaa !91
  %p232 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %149, i32 0, i32 0
  %x233 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p232, i32 0, i32 0
  %150 = load i32, i32* %x233, align 4, !tbaa !83
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.230, %cond.end.228
  %cond235 = phi i32 [ %cond229, %cond.end.228 ], [ %150, %cond.false.230 ]
  %shr236 = ashr i32 %cond235, 8
  store i32 %shr236, i32* %ry, align 4, !tbaa !5
  %151 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start237 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %151, i32 0, i32 0
  %x238 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start237, i32 0, i32 0
  %152 = load i32, i32* %x238, align 4, !tbaa !93
  %153 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end239 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %153, i32 0, i32 1
  %x240 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end239, i32 0, i32 0
  %154 = load i32, i32* %x240, align 4, !tbaa !94
  %cmp241 = icmp sgt i32 %152, %154
  br i1 %cmp241, label %cond.true.242, label %cond.false.245

cond.true.242:                                    ; preds = %cond.end.234
  %155 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start243 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %155, i32 0, i32 0
  %x244 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start243, i32 0, i32 0
  %156 = load i32, i32* %x244, align 4, !tbaa !93
  br label %cond.end.248

cond.false.245:                                   ; preds = %cond.end.234
  %157 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end246 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %157, i32 0, i32 1
  %x247 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end246, i32 0, i32 0
  %158 = load i32, i32* %x247, align 4, !tbaa !94
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.245, %cond.true.242
  %cond249 = phi i32 [ %156, %cond.true.242 ], [ %158, %cond.false.245 ]
  %159 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start250 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %159, i32 0, i32 0
  %x251 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start250, i32 0, i32 0
  %160 = load i32, i32* %x251, align 4, !tbaa !93
  %cmp252 = icmp sgt i32 %cond249, %160
  br i1 %cmp252, label %cond.true.253, label %cond.false.267

cond.true.253:                                    ; preds = %cond.end.248
  %161 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start254 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %161, i32 0, i32 0
  %x255 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start254, i32 0, i32 0
  %162 = load i32, i32* %x255, align 4, !tbaa !93
  %163 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end256 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %163, i32 0, i32 1
  %x257 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end256, i32 0, i32 0
  %164 = load i32, i32* %x257, align 4, !tbaa !94
  %cmp258 = icmp sgt i32 %162, %164
  br i1 %cmp258, label %cond.true.259, label %cond.false.262

cond.true.259:                                    ; preds = %cond.true.253
  %165 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start260 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %165, i32 0, i32 0
  %x261 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start260, i32 0, i32 0
  %166 = load i32, i32* %x261, align 4, !tbaa !93
  br label %cond.end.265

cond.false.262:                                   ; preds = %cond.true.253
  %167 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end263 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %167, i32 0, i32 1
  %x264 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end263, i32 0, i32 0
  %168 = load i32, i32* %x264, align 4, !tbaa !94
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.262, %cond.true.259
  %cond266 = phi i32 [ %166, %cond.true.259 ], [ %168, %cond.false.262 ]
  br label %cond.end.270

cond.false.267:                                   ; preds = %cond.end.248
  %169 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start268 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %169, i32 0, i32 0
  %x269 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start268, i32 0, i32 0
  %170 = load i32, i32* %x269, align 4, !tbaa !93
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.false.267, %cond.end.265
  %cond271 = phi i32 [ %cond266, %cond.end.265 ], [ %170, %cond.false.267 ]
  %171 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip272 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %171, i32 0, i32 0
  %172 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip272, align 8, !tbaa !91
  %q273 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %172, i32 0, i32 1
  %x274 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q273, i32 0, i32 0
  %173 = load i32, i32* %x274, align 4, !tbaa !86
  %cmp275 = icmp slt i32 %cond271, %173
  br i1 %cmp275, label %cond.true.276, label %cond.false.312

cond.true.276:                                    ; preds = %cond.end.270
  %174 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start277 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %174, i32 0, i32 0
  %x278 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start277, i32 0, i32 0
  %175 = load i32, i32* %x278, align 4, !tbaa !93
  %176 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end279 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %176, i32 0, i32 1
  %x280 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end279, i32 0, i32 0
  %177 = load i32, i32* %x280, align 4, !tbaa !94
  %cmp281 = icmp sgt i32 %175, %177
  br i1 %cmp281, label %cond.true.282, label %cond.false.285

cond.true.282:                                    ; preds = %cond.true.276
  %178 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start283 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %178, i32 0, i32 0
  %x284 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start283, i32 0, i32 0
  %179 = load i32, i32* %x284, align 4, !tbaa !93
  br label %cond.end.288

cond.false.285:                                   ; preds = %cond.true.276
  %180 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end286 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %180, i32 0, i32 1
  %x287 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end286, i32 0, i32 0
  %181 = load i32, i32* %x287, align 4, !tbaa !94
  br label %cond.end.288

cond.end.288:                                     ; preds = %cond.false.285, %cond.true.282
  %cond289 = phi i32 [ %179, %cond.true.282 ], [ %181, %cond.false.285 ]
  %182 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start290 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %182, i32 0, i32 0
  %x291 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start290, i32 0, i32 0
  %183 = load i32, i32* %x291, align 4, !tbaa !93
  %cmp292 = icmp sgt i32 %cond289, %183
  br i1 %cmp292, label %cond.true.293, label %cond.false.307

cond.true.293:                                    ; preds = %cond.end.288
  %184 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start294 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %184, i32 0, i32 0
  %x295 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start294, i32 0, i32 0
  %185 = load i32, i32* %x295, align 4, !tbaa !93
  %186 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end296 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %186, i32 0, i32 1
  %x297 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end296, i32 0, i32 0
  %187 = load i32, i32* %x297, align 4, !tbaa !94
  %cmp298 = icmp sgt i32 %185, %187
  br i1 %cmp298, label %cond.true.299, label %cond.false.302

cond.true.299:                                    ; preds = %cond.true.293
  %188 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start300 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %188, i32 0, i32 0
  %x301 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start300, i32 0, i32 0
  %189 = load i32, i32* %x301, align 4, !tbaa !93
  br label %cond.end.305

cond.false.302:                                   ; preds = %cond.true.293
  %190 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end303 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %190, i32 0, i32 1
  %x304 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end303, i32 0, i32 0
  %191 = load i32, i32* %x304, align 4, !tbaa !94
  br label %cond.end.305

cond.end.305:                                     ; preds = %cond.false.302, %cond.true.299
  %cond306 = phi i32 [ %189, %cond.true.299 ], [ %191, %cond.false.302 ]
  br label %cond.end.310

cond.false.307:                                   ; preds = %cond.end.288
  %192 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start308 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %192, i32 0, i32 0
  %x309 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start308, i32 0, i32 0
  %193 = load i32, i32* %x309, align 4, !tbaa !93
  br label %cond.end.310

cond.end.310:                                     ; preds = %cond.false.307, %cond.end.305
  %cond311 = phi i32 [ %cond306, %cond.end.305 ], [ %193, %cond.false.307 ]
  br label %cond.end.316

cond.false.312:                                   ; preds = %cond.end.270
  %194 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip313 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %194, i32 0, i32 0
  %195 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip313, align 8, !tbaa !91
  %q314 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %195, i32 0, i32 1
  %x315 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q314, i32 0, i32 0
  %196 = load i32, i32* %x315, align 4, !tbaa !86
  br label %cond.end.316

cond.end.316:                                     ; preds = %cond.false.312, %cond.end.310
  %cond317 = phi i32 [ %cond311, %cond.end.310 ], [ %196, %cond.false.312 ]
  %add318 = add nsw i32 %cond317, 255
  %shr319 = ashr i32 %add318, 8
  %197 = load i32, i32* %ry, align 4, !tbaa !5
  %sub = sub nsw i32 %shr319, %197
  store i32 %sub, i32* %rheight, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %198 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start320 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %198, i32 0, i32 0
  %x321 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start320, i32 0, i32 0
  %199 = load i32, i32* %x321, align 4, !tbaa !93
  %200 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end322 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %200, i32 0, i32 1
  %x323 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end322, i32 0, i32 0
  %201 = load i32, i32* %x323, align 4, !tbaa !94
  %cmp324 = icmp slt i32 %199, %201
  br i1 %cmp324, label %cond.true.325, label %cond.false.328

cond.true.325:                                    ; preds = %if.else
  %202 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start326 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %202, i32 0, i32 0
  %x327 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start326, i32 0, i32 0
  %203 = load i32, i32* %x327, align 4, !tbaa !93
  br label %cond.end.331

cond.false.328:                                   ; preds = %if.else
  %204 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end329 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %204, i32 0, i32 1
  %x330 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end329, i32 0, i32 0
  %205 = load i32, i32* %x330, align 4, !tbaa !94
  br label %cond.end.331

cond.end.331:                                     ; preds = %cond.false.328, %cond.true.325
  %cond332 = phi i32 [ %203, %cond.true.325 ], [ %205, %cond.false.328 ]
  %206 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start333 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %206, i32 0, i32 0
  %x334 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start333, i32 0, i32 0
  %207 = load i32, i32* %x334, align 4, !tbaa !93
  %cmp335 = icmp slt i32 %cond332, %207
  br i1 %cmp335, label %cond.true.336, label %cond.false.350

cond.true.336:                                    ; preds = %cond.end.331
  %208 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start337 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %208, i32 0, i32 0
  %x338 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start337, i32 0, i32 0
  %209 = load i32, i32* %x338, align 4, !tbaa !93
  %210 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end339 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %210, i32 0, i32 1
  %x340 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end339, i32 0, i32 0
  %211 = load i32, i32* %x340, align 4, !tbaa !94
  %cmp341 = icmp slt i32 %209, %211
  br i1 %cmp341, label %cond.true.342, label %cond.false.345

cond.true.342:                                    ; preds = %cond.true.336
  %212 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start343 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %212, i32 0, i32 0
  %x344 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start343, i32 0, i32 0
  %213 = load i32, i32* %x344, align 4, !tbaa !93
  br label %cond.end.348

cond.false.345:                                   ; preds = %cond.true.336
  %214 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end346 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %214, i32 0, i32 1
  %x347 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end346, i32 0, i32 0
  %215 = load i32, i32* %x347, align 4, !tbaa !94
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.345, %cond.true.342
  %cond349 = phi i32 [ %213, %cond.true.342 ], [ %215, %cond.false.345 ]
  br label %cond.end.353

cond.false.350:                                   ; preds = %cond.end.331
  %216 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start351 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %216, i32 0, i32 0
  %x352 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start351, i32 0, i32 0
  %217 = load i32, i32* %x352, align 4, !tbaa !93
  br label %cond.end.353

cond.end.353:                                     ; preds = %cond.false.350, %cond.end.348
  %cond354 = phi i32 [ %cond349, %cond.end.348 ], [ %217, %cond.false.350 ]
  %218 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip355 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %218, i32 0, i32 0
  %219 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip355, align 8, !tbaa !91
  %p356 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %219, i32 0, i32 0
  %x357 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p356, i32 0, i32 0
  %220 = load i32, i32* %x357, align 4, !tbaa !83
  %cmp358 = icmp sgt i32 %cond354, %220
  br i1 %cmp358, label %cond.true.359, label %cond.false.395

cond.true.359:                                    ; preds = %cond.end.353
  %221 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start360 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %221, i32 0, i32 0
  %x361 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start360, i32 0, i32 0
  %222 = load i32, i32* %x361, align 4, !tbaa !93
  %223 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end362 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %223, i32 0, i32 1
  %x363 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end362, i32 0, i32 0
  %224 = load i32, i32* %x363, align 4, !tbaa !94
  %cmp364 = icmp slt i32 %222, %224
  br i1 %cmp364, label %cond.true.365, label %cond.false.368

cond.true.365:                                    ; preds = %cond.true.359
  %225 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start366 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %225, i32 0, i32 0
  %x367 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start366, i32 0, i32 0
  %226 = load i32, i32* %x367, align 4, !tbaa !93
  br label %cond.end.371

cond.false.368:                                   ; preds = %cond.true.359
  %227 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end369 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %227, i32 0, i32 1
  %x370 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end369, i32 0, i32 0
  %228 = load i32, i32* %x370, align 4, !tbaa !94
  br label %cond.end.371

cond.end.371:                                     ; preds = %cond.false.368, %cond.true.365
  %cond372 = phi i32 [ %226, %cond.true.365 ], [ %228, %cond.false.368 ]
  %229 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start373 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %229, i32 0, i32 0
  %x374 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start373, i32 0, i32 0
  %230 = load i32, i32* %x374, align 4, !tbaa !93
  %cmp375 = icmp slt i32 %cond372, %230
  br i1 %cmp375, label %cond.true.376, label %cond.false.390

cond.true.376:                                    ; preds = %cond.end.371
  %231 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start377 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %231, i32 0, i32 0
  %x378 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start377, i32 0, i32 0
  %232 = load i32, i32* %x378, align 4, !tbaa !93
  %233 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end379 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %233, i32 0, i32 1
  %x380 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end379, i32 0, i32 0
  %234 = load i32, i32* %x380, align 4, !tbaa !94
  %cmp381 = icmp slt i32 %232, %234
  br i1 %cmp381, label %cond.true.382, label %cond.false.385

cond.true.382:                                    ; preds = %cond.true.376
  %235 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start383 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %235, i32 0, i32 0
  %x384 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start383, i32 0, i32 0
  %236 = load i32, i32* %x384, align 4, !tbaa !93
  br label %cond.end.388

cond.false.385:                                   ; preds = %cond.true.376
  %237 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end386 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %237, i32 0, i32 1
  %x387 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end386, i32 0, i32 0
  %238 = load i32, i32* %x387, align 4, !tbaa !94
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.false.385, %cond.true.382
  %cond389 = phi i32 [ %236, %cond.true.382 ], [ %238, %cond.false.385 ]
  br label %cond.end.393

cond.false.390:                                   ; preds = %cond.end.371
  %239 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start391 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %239, i32 0, i32 0
  %x392 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start391, i32 0, i32 0
  %240 = load i32, i32* %x392, align 4, !tbaa !93
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.false.390, %cond.end.388
  %cond394 = phi i32 [ %cond389, %cond.end.388 ], [ %240, %cond.false.390 ]
  br label %cond.end.399

cond.false.395:                                   ; preds = %cond.end.353
  %241 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip396 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %241, i32 0, i32 0
  %242 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip396, align 8, !tbaa !91
  %p397 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %242, i32 0, i32 0
  %x398 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p397, i32 0, i32 0
  %243 = load i32, i32* %x398, align 4, !tbaa !83
  br label %cond.end.399

cond.end.399:                                     ; preds = %cond.false.395, %cond.end.393
  %cond400 = phi i32 [ %cond394, %cond.end.393 ], [ %243, %cond.false.395 ]
  %shr401 = ashr i32 %cond400, 8
  store i32 %shr401, i32* %rx, align 4, !tbaa !5
  %244 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start402 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %244, i32 0, i32 0
  %x403 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start402, i32 0, i32 0
  %245 = load i32, i32* %x403, align 4, !tbaa !93
  %246 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end404 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %246, i32 0, i32 1
  %x405 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end404, i32 0, i32 0
  %247 = load i32, i32* %x405, align 4, !tbaa !94
  %cmp406 = icmp sgt i32 %245, %247
  br i1 %cmp406, label %cond.true.407, label %cond.false.410

cond.true.407:                                    ; preds = %cond.end.399
  %248 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start408 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %248, i32 0, i32 0
  %x409 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start408, i32 0, i32 0
  %249 = load i32, i32* %x409, align 4, !tbaa !93
  br label %cond.end.413

cond.false.410:                                   ; preds = %cond.end.399
  %250 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end411 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %250, i32 0, i32 1
  %x412 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end411, i32 0, i32 0
  %251 = load i32, i32* %x412, align 4, !tbaa !94
  br label %cond.end.413

cond.end.413:                                     ; preds = %cond.false.410, %cond.true.407
  %cond414 = phi i32 [ %249, %cond.true.407 ], [ %251, %cond.false.410 ]
  %252 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start415 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %252, i32 0, i32 0
  %x416 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start415, i32 0, i32 0
  %253 = load i32, i32* %x416, align 4, !tbaa !93
  %cmp417 = icmp sgt i32 %cond414, %253
  br i1 %cmp417, label %cond.true.418, label %cond.false.432

cond.true.418:                                    ; preds = %cond.end.413
  %254 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start419 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %254, i32 0, i32 0
  %x420 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start419, i32 0, i32 0
  %255 = load i32, i32* %x420, align 4, !tbaa !93
  %256 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end421 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %256, i32 0, i32 1
  %x422 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end421, i32 0, i32 0
  %257 = load i32, i32* %x422, align 4, !tbaa !94
  %cmp423 = icmp sgt i32 %255, %257
  br i1 %cmp423, label %cond.true.424, label %cond.false.427

cond.true.424:                                    ; preds = %cond.true.418
  %258 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start425 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %258, i32 0, i32 0
  %x426 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start425, i32 0, i32 0
  %259 = load i32, i32* %x426, align 4, !tbaa !93
  br label %cond.end.430

cond.false.427:                                   ; preds = %cond.true.418
  %260 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end428 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %260, i32 0, i32 1
  %x429 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end428, i32 0, i32 0
  %261 = load i32, i32* %x429, align 4, !tbaa !94
  br label %cond.end.430

cond.end.430:                                     ; preds = %cond.false.427, %cond.true.424
  %cond431 = phi i32 [ %259, %cond.true.424 ], [ %261, %cond.false.427 ]
  br label %cond.end.435

cond.false.432:                                   ; preds = %cond.end.413
  %262 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start433 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %262, i32 0, i32 0
  %x434 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start433, i32 0, i32 0
  %263 = load i32, i32* %x434, align 4, !tbaa !93
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.432, %cond.end.430
  %cond436 = phi i32 [ %cond431, %cond.end.430 ], [ %263, %cond.false.432 ]
  %264 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip437 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %264, i32 0, i32 0
  %265 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip437, align 8, !tbaa !91
  %q438 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %265, i32 0, i32 1
  %x439 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q438, i32 0, i32 0
  %266 = load i32, i32* %x439, align 4, !tbaa !86
  %cmp440 = icmp slt i32 %cond436, %266
  br i1 %cmp440, label %cond.true.441, label %cond.false.477

cond.true.441:                                    ; preds = %cond.end.435
  %267 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start442 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %267, i32 0, i32 0
  %x443 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start442, i32 0, i32 0
  %268 = load i32, i32* %x443, align 4, !tbaa !93
  %269 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end444 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %269, i32 0, i32 1
  %x445 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end444, i32 0, i32 0
  %270 = load i32, i32* %x445, align 4, !tbaa !94
  %cmp446 = icmp sgt i32 %268, %270
  br i1 %cmp446, label %cond.true.447, label %cond.false.450

cond.true.447:                                    ; preds = %cond.true.441
  %271 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start448 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %271, i32 0, i32 0
  %x449 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start448, i32 0, i32 0
  %272 = load i32, i32* %x449, align 4, !tbaa !93
  br label %cond.end.453

cond.false.450:                                   ; preds = %cond.true.441
  %273 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end451 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %273, i32 0, i32 1
  %x452 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end451, i32 0, i32 0
  %274 = load i32, i32* %x452, align 4, !tbaa !94
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.false.450, %cond.true.447
  %cond454 = phi i32 [ %272, %cond.true.447 ], [ %274, %cond.false.450 ]
  %275 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start455 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %275, i32 0, i32 0
  %x456 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start455, i32 0, i32 0
  %276 = load i32, i32* %x456, align 4, !tbaa !93
  %cmp457 = icmp sgt i32 %cond454, %276
  br i1 %cmp457, label %cond.true.458, label %cond.false.472

cond.true.458:                                    ; preds = %cond.end.453
  %277 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start459 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %277, i32 0, i32 0
  %x460 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start459, i32 0, i32 0
  %278 = load i32, i32* %x460, align 4, !tbaa !93
  %279 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end461 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %279, i32 0, i32 1
  %x462 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end461, i32 0, i32 0
  %280 = load i32, i32* %x462, align 4, !tbaa !94
  %cmp463 = icmp sgt i32 %278, %280
  br i1 %cmp463, label %cond.true.464, label %cond.false.467

cond.true.464:                                    ; preds = %cond.true.458
  %281 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start465 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %281, i32 0, i32 0
  %x466 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start465, i32 0, i32 0
  %282 = load i32, i32* %x466, align 4, !tbaa !93
  br label %cond.end.470

cond.false.467:                                   ; preds = %cond.true.458
  %283 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end468 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %283, i32 0, i32 1
  %x469 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end468, i32 0, i32 0
  %284 = load i32, i32* %x469, align 4, !tbaa !94
  br label %cond.end.470

cond.end.470:                                     ; preds = %cond.false.467, %cond.true.464
  %cond471 = phi i32 [ %282, %cond.true.464 ], [ %284, %cond.false.467 ]
  br label %cond.end.475

cond.false.472:                                   ; preds = %cond.end.453
  %285 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start473 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %285, i32 0, i32 0
  %x474 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start473, i32 0, i32 0
  %286 = load i32, i32* %x474, align 4, !tbaa !93
  br label %cond.end.475

cond.end.475:                                     ; preds = %cond.false.472, %cond.end.470
  %cond476 = phi i32 [ %cond471, %cond.end.470 ], [ %286, %cond.false.472 ]
  br label %cond.end.481

cond.false.477:                                   ; preds = %cond.end.435
  %287 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip478 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %287, i32 0, i32 0
  %288 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip478, align 8, !tbaa !91
  %q479 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %288, i32 0, i32 1
  %x480 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q479, i32 0, i32 0
  %289 = load i32, i32* %x480, align 4, !tbaa !86
  br label %cond.end.481

cond.end.481:                                     ; preds = %cond.false.477, %cond.end.475
  %cond482 = phi i32 [ %cond476, %cond.end.475 ], [ %289, %cond.false.477 ]
  %add483 = add nsw i32 %cond482, 255
  %shr484 = ashr i32 %add483, 8
  store i32 %shr484, i32* %rxe, align 4, !tbaa !5
  %290 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start485 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %290, i32 0, i32 0
  %y486 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start485, i32 0, i32 1
  %291 = load i32, i32* %y486, align 4, !tbaa !88
  %292 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end487 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %292, i32 0, i32 1
  %y488 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end487, i32 0, i32 1
  %293 = load i32, i32* %y488, align 4, !tbaa !90
  %cmp489 = icmp slt i32 %291, %293
  br i1 %cmp489, label %cond.true.490, label %cond.false.493

cond.true.490:                                    ; preds = %cond.end.481
  %294 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start491 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %294, i32 0, i32 0
  %y492 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start491, i32 0, i32 1
  %295 = load i32, i32* %y492, align 4, !tbaa !88
  br label %cond.end.496

cond.false.493:                                   ; preds = %cond.end.481
  %296 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end494 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %296, i32 0, i32 1
  %y495 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end494, i32 0, i32 1
  %297 = load i32, i32* %y495, align 4, !tbaa !90
  br label %cond.end.496

cond.end.496:                                     ; preds = %cond.false.493, %cond.true.490
  %cond497 = phi i32 [ %295, %cond.true.490 ], [ %297, %cond.false.493 ]
  %298 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start498 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %298, i32 0, i32 0
  %y499 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start498, i32 0, i32 1
  %299 = load i32, i32* %y499, align 4, !tbaa !88
  %cmp500 = icmp slt i32 %cond497, %299
  br i1 %cmp500, label %cond.true.501, label %cond.false.515

cond.true.501:                                    ; preds = %cond.end.496
  %300 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start502 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %300, i32 0, i32 0
  %y503 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start502, i32 0, i32 1
  %301 = load i32, i32* %y503, align 4, !tbaa !88
  %302 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end504 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %302, i32 0, i32 1
  %y505 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end504, i32 0, i32 1
  %303 = load i32, i32* %y505, align 4, !tbaa !90
  %cmp506 = icmp slt i32 %301, %303
  br i1 %cmp506, label %cond.true.507, label %cond.false.510

cond.true.507:                                    ; preds = %cond.true.501
  %304 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start508 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %304, i32 0, i32 0
  %y509 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start508, i32 0, i32 1
  %305 = load i32, i32* %y509, align 4, !tbaa !88
  br label %cond.end.513

cond.false.510:                                   ; preds = %cond.true.501
  %306 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end511 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %306, i32 0, i32 1
  %y512 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end511, i32 0, i32 1
  %307 = load i32, i32* %y512, align 4, !tbaa !90
  br label %cond.end.513

cond.end.513:                                     ; preds = %cond.false.510, %cond.true.507
  %cond514 = phi i32 [ %305, %cond.true.507 ], [ %307, %cond.false.510 ]
  br label %cond.end.518

cond.false.515:                                   ; preds = %cond.end.496
  %308 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start516 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %308, i32 0, i32 0
  %y517 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start516, i32 0, i32 1
  %309 = load i32, i32* %y517, align 4, !tbaa !88
  br label %cond.end.518

cond.end.518:                                     ; preds = %cond.false.515, %cond.end.513
  %cond519 = phi i32 [ %cond514, %cond.end.513 ], [ %309, %cond.false.515 ]
  %310 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip520 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %310, i32 0, i32 0
  %311 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip520, align 8, !tbaa !91
  %p521 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %311, i32 0, i32 0
  %y522 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p521, i32 0, i32 1
  %312 = load i32, i32* %y522, align 4, !tbaa !85
  %cmp523 = icmp sgt i32 %cond519, %312
  br i1 %cmp523, label %cond.true.524, label %cond.false.560

cond.true.524:                                    ; preds = %cond.end.518
  %313 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start525 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %313, i32 0, i32 0
  %y526 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start525, i32 0, i32 1
  %314 = load i32, i32* %y526, align 4, !tbaa !88
  %315 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end527 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %315, i32 0, i32 1
  %y528 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end527, i32 0, i32 1
  %316 = load i32, i32* %y528, align 4, !tbaa !90
  %cmp529 = icmp slt i32 %314, %316
  br i1 %cmp529, label %cond.true.530, label %cond.false.533

cond.true.530:                                    ; preds = %cond.true.524
  %317 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start531 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %317, i32 0, i32 0
  %y532 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start531, i32 0, i32 1
  %318 = load i32, i32* %y532, align 4, !tbaa !88
  br label %cond.end.536

cond.false.533:                                   ; preds = %cond.true.524
  %319 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end534 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %319, i32 0, i32 1
  %y535 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end534, i32 0, i32 1
  %320 = load i32, i32* %y535, align 4, !tbaa !90
  br label %cond.end.536

cond.end.536:                                     ; preds = %cond.false.533, %cond.true.530
  %cond537 = phi i32 [ %318, %cond.true.530 ], [ %320, %cond.false.533 ]
  %321 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start538 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %321, i32 0, i32 0
  %y539 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start538, i32 0, i32 1
  %322 = load i32, i32* %y539, align 4, !tbaa !88
  %cmp540 = icmp slt i32 %cond537, %322
  br i1 %cmp540, label %cond.true.541, label %cond.false.555

cond.true.541:                                    ; preds = %cond.end.536
  %323 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start542 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %323, i32 0, i32 0
  %y543 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start542, i32 0, i32 1
  %324 = load i32, i32* %y543, align 4, !tbaa !88
  %325 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end544 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %325, i32 0, i32 1
  %y545 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end544, i32 0, i32 1
  %326 = load i32, i32* %y545, align 4, !tbaa !90
  %cmp546 = icmp slt i32 %324, %326
  br i1 %cmp546, label %cond.true.547, label %cond.false.550

cond.true.547:                                    ; preds = %cond.true.541
  %327 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start548 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %327, i32 0, i32 0
  %y549 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start548, i32 0, i32 1
  %328 = load i32, i32* %y549, align 4, !tbaa !88
  br label %cond.end.553

cond.false.550:                                   ; preds = %cond.true.541
  %329 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end551 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %329, i32 0, i32 1
  %y552 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end551, i32 0, i32 1
  %330 = load i32, i32* %y552, align 4, !tbaa !90
  br label %cond.end.553

cond.end.553:                                     ; preds = %cond.false.550, %cond.true.547
  %cond554 = phi i32 [ %328, %cond.true.547 ], [ %330, %cond.false.550 ]
  br label %cond.end.558

cond.false.555:                                   ; preds = %cond.end.536
  %331 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start556 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %331, i32 0, i32 0
  %y557 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start556, i32 0, i32 1
  %332 = load i32, i32* %y557, align 4, !tbaa !88
  br label %cond.end.558

cond.end.558:                                     ; preds = %cond.false.555, %cond.end.553
  %cond559 = phi i32 [ %cond554, %cond.end.553 ], [ %332, %cond.false.555 ]
  br label %cond.end.564

cond.false.560:                                   ; preds = %cond.end.518
  %333 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip561 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %333, i32 0, i32 0
  %334 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip561, align 8, !tbaa !91
  %p562 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %334, i32 0, i32 0
  %y563 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p562, i32 0, i32 1
  %335 = load i32, i32* %y563, align 4, !tbaa !85
  br label %cond.end.564

cond.end.564:                                     ; preds = %cond.false.560, %cond.end.558
  %cond565 = phi i32 [ %cond559, %cond.end.558 ], [ %335, %cond.false.560 ]
  %shr566 = ashr i32 %cond565, 8
  store i32 %shr566, i32* %ry, align 4, !tbaa !5
  %336 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start567 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %336, i32 0, i32 0
  %y568 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start567, i32 0, i32 1
  %337 = load i32, i32* %y568, align 4, !tbaa !88
  %338 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end569 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %338, i32 0, i32 1
  %y570 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end569, i32 0, i32 1
  %339 = load i32, i32* %y570, align 4, !tbaa !90
  %cmp571 = icmp sgt i32 %337, %339
  br i1 %cmp571, label %cond.true.572, label %cond.false.575

cond.true.572:                                    ; preds = %cond.end.564
  %340 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start573 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %340, i32 0, i32 0
  %y574 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start573, i32 0, i32 1
  %341 = load i32, i32* %y574, align 4, !tbaa !88
  br label %cond.end.578

cond.false.575:                                   ; preds = %cond.end.564
  %342 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end576 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %342, i32 0, i32 1
  %y577 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end576, i32 0, i32 1
  %343 = load i32, i32* %y577, align 4, !tbaa !90
  br label %cond.end.578

cond.end.578:                                     ; preds = %cond.false.575, %cond.true.572
  %cond579 = phi i32 [ %341, %cond.true.572 ], [ %343, %cond.false.575 ]
  %344 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start580 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %344, i32 0, i32 0
  %y581 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start580, i32 0, i32 1
  %345 = load i32, i32* %y581, align 4, !tbaa !88
  %cmp582 = icmp sgt i32 %cond579, %345
  br i1 %cmp582, label %cond.true.583, label %cond.false.597

cond.true.583:                                    ; preds = %cond.end.578
  %346 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start584 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %346, i32 0, i32 0
  %y585 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start584, i32 0, i32 1
  %347 = load i32, i32* %y585, align 4, !tbaa !88
  %348 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end586 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %348, i32 0, i32 1
  %y587 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end586, i32 0, i32 1
  %349 = load i32, i32* %y587, align 4, !tbaa !90
  %cmp588 = icmp sgt i32 %347, %349
  br i1 %cmp588, label %cond.true.589, label %cond.false.592

cond.true.589:                                    ; preds = %cond.true.583
  %350 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start590 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %350, i32 0, i32 0
  %y591 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start590, i32 0, i32 1
  %351 = load i32, i32* %y591, align 4, !tbaa !88
  br label %cond.end.595

cond.false.592:                                   ; preds = %cond.true.583
  %352 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end593 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %352, i32 0, i32 1
  %y594 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end593, i32 0, i32 1
  %353 = load i32, i32* %y594, align 4, !tbaa !90
  br label %cond.end.595

cond.end.595:                                     ; preds = %cond.false.592, %cond.true.589
  %cond596 = phi i32 [ %351, %cond.true.589 ], [ %353, %cond.false.592 ]
  br label %cond.end.600

cond.false.597:                                   ; preds = %cond.end.578
  %354 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start598 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %354, i32 0, i32 0
  %y599 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start598, i32 0, i32 1
  %355 = load i32, i32* %y599, align 4, !tbaa !88
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.false.597, %cond.end.595
  %cond601 = phi i32 [ %cond596, %cond.end.595 ], [ %355, %cond.false.597 ]
  %356 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip602 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %356, i32 0, i32 0
  %357 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip602, align 8, !tbaa !91
  %q603 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %357, i32 0, i32 1
  %y604 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q603, i32 0, i32 1
  %358 = load i32, i32* %y604, align 4, !tbaa !87
  %cmp605 = icmp slt i32 %cond601, %358
  br i1 %cmp605, label %cond.true.606, label %cond.false.642

cond.true.606:                                    ; preds = %cond.end.600
  %359 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start607 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %359, i32 0, i32 0
  %y608 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start607, i32 0, i32 1
  %360 = load i32, i32* %y608, align 4, !tbaa !88
  %361 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end609 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %361, i32 0, i32 1
  %y610 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end609, i32 0, i32 1
  %362 = load i32, i32* %y610, align 4, !tbaa !90
  %cmp611 = icmp sgt i32 %360, %362
  br i1 %cmp611, label %cond.true.612, label %cond.false.615

cond.true.612:                                    ; preds = %cond.true.606
  %363 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start613 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %363, i32 0, i32 0
  %y614 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start613, i32 0, i32 1
  %364 = load i32, i32* %y614, align 4, !tbaa !88
  br label %cond.end.618

cond.false.615:                                   ; preds = %cond.true.606
  %365 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end616 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %365, i32 0, i32 1
  %y617 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end616, i32 0, i32 1
  %366 = load i32, i32* %y617, align 4, !tbaa !90
  br label %cond.end.618

cond.end.618:                                     ; preds = %cond.false.615, %cond.true.612
  %cond619 = phi i32 [ %364, %cond.true.612 ], [ %366, %cond.false.615 ]
  %367 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start620 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %367, i32 0, i32 0
  %y621 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start620, i32 0, i32 1
  %368 = load i32, i32* %y621, align 4, !tbaa !88
  %cmp622 = icmp sgt i32 %cond619, %368
  br i1 %cmp622, label %cond.true.623, label %cond.false.637

cond.true.623:                                    ; preds = %cond.end.618
  %369 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start624 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %369, i32 0, i32 0
  %y625 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start624, i32 0, i32 1
  %370 = load i32, i32* %y625, align 4, !tbaa !88
  %371 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end626 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %371, i32 0, i32 1
  %y627 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end626, i32 0, i32 1
  %372 = load i32, i32* %y627, align 4, !tbaa !90
  %cmp628 = icmp sgt i32 %370, %372
  br i1 %cmp628, label %cond.true.629, label %cond.false.632

cond.true.629:                                    ; preds = %cond.true.623
  %373 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start630 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %373, i32 0, i32 0
  %y631 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start630, i32 0, i32 1
  %374 = load i32, i32* %y631, align 4, !tbaa !88
  br label %cond.end.635

cond.false.632:                                   ; preds = %cond.true.623
  %375 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end633 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %375, i32 0, i32 1
  %y634 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end633, i32 0, i32 1
  %376 = load i32, i32* %y634, align 4, !tbaa !90
  br label %cond.end.635

cond.end.635:                                     ; preds = %cond.false.632, %cond.true.629
  %cond636 = phi i32 [ %374, %cond.true.629 ], [ %376, %cond.false.632 ]
  br label %cond.end.640

cond.false.637:                                   ; preds = %cond.end.618
  %377 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start638 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %377, i32 0, i32 0
  %y639 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start638, i32 0, i32 1
  %378 = load i32, i32* %y639, align 4, !tbaa !88
  br label %cond.end.640

cond.end.640:                                     ; preds = %cond.false.637, %cond.end.635
  %cond641 = phi i32 [ %cond636, %cond.end.635 ], [ %378, %cond.false.637 ]
  br label %cond.end.646

cond.false.642:                                   ; preds = %cond.end.600
  %379 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip643 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %379, i32 0, i32 0
  %380 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip643, align 8, !tbaa !91
  %q644 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %380, i32 0, i32 1
  %y645 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q644, i32 0, i32 1
  %381 = load i32, i32* %y645, align 4, !tbaa !87
  br label %cond.end.646

cond.end.646:                                     ; preds = %cond.false.642, %cond.end.640
  %cond647 = phi i32 [ %cond641, %cond.end.640 ], [ %381, %cond.false.642 ]
  %add648 = add nsw i32 %cond647, 255
  %shr649 = ashr i32 %add648, 8
  %382 = load i32, i32* %ry, align 4, !tbaa !5
  %sub650 = sub nsw i32 %shr649, %382
  store i32 %sub650, i32* %rheight, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end.646, %cond.end.316
  br label %if.end.722

if.else.651:                                      ; preds = %entry
  %383 = load i32, i32* %swap_axes, align 4, !tbaa !5
  %tobool652 = icmp ne i32 %383, 0
  br i1 %tobool652, label %if.then.653, label %if.else.687

if.then.653:                                      ; preds = %if.else.651
  %384 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %shr654 = ashr i32 %384, 8
  store i32 %shr654, i32* %rx, align 4, !tbaa !5
  %385 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %add655 = add nsw i32 %385, 255
  %shr656 = ashr i32 %add655, 8
  store i32 %shr656, i32* %rxe, align 4, !tbaa !5
  %386 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start657 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %386, i32 0, i32 0
  %x658 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start657, i32 0, i32 0
  %387 = load i32, i32* %x658, align 4, !tbaa !93
  %388 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end659 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %388, i32 0, i32 1
  %x660 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end659, i32 0, i32 0
  %389 = load i32, i32* %x660, align 4, !tbaa !94
  %cmp661 = icmp slt i32 %387, %389
  br i1 %cmp661, label %cond.true.662, label %cond.false.665

cond.true.662:                                    ; preds = %if.then.653
  %390 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start663 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %390, i32 0, i32 0
  %x664 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start663, i32 0, i32 0
  %391 = load i32, i32* %x664, align 4, !tbaa !93
  br label %cond.end.668

cond.false.665:                                   ; preds = %if.then.653
  %392 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end666 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %392, i32 0, i32 1
  %x667 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end666, i32 0, i32 0
  %393 = load i32, i32* %x667, align 4, !tbaa !94
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.false.665, %cond.true.662
  %cond669 = phi i32 [ %391, %cond.true.662 ], [ %393, %cond.false.665 ]
  %shr670 = ashr i32 %cond669, 8
  store i32 %shr670, i32* %ry, align 4, !tbaa !5
  %394 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start671 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %394, i32 0, i32 0
  %x672 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start671, i32 0, i32 0
  %395 = load i32, i32* %x672, align 4, !tbaa !93
  %396 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end673 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %396, i32 0, i32 1
  %x674 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end673, i32 0, i32 0
  %397 = load i32, i32* %x674, align 4, !tbaa !94
  %cmp675 = icmp sgt i32 %395, %397
  br i1 %cmp675, label %cond.true.676, label %cond.false.679

cond.true.676:                                    ; preds = %cond.end.668
  %398 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start677 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %398, i32 0, i32 0
  %x678 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start677, i32 0, i32 0
  %399 = load i32, i32* %x678, align 4, !tbaa !93
  br label %cond.end.682

cond.false.679:                                   ; preds = %cond.end.668
  %400 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end680 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %400, i32 0, i32 1
  %x681 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end680, i32 0, i32 0
  %401 = load i32, i32* %x681, align 4, !tbaa !94
  br label %cond.end.682

cond.end.682:                                     ; preds = %cond.false.679, %cond.true.676
  %cond683 = phi i32 [ %399, %cond.true.676 ], [ %401, %cond.false.679 ]
  %add684 = add nsw i32 %cond683, 255
  %shr685 = ashr i32 %add684, 8
  %402 = load i32, i32* %ry, align 4, !tbaa !5
  %sub686 = sub nsw i32 %shr685, %402
  store i32 %sub686, i32* %rheight, align 4, !tbaa !5
  br label %if.end.721

if.else.687:                                      ; preds = %if.else.651
  %403 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start688 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %403, i32 0, i32 0
  %x689 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start688, i32 0, i32 0
  %404 = load i32, i32* %x689, align 4, !tbaa !93
  %405 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end690 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %405, i32 0, i32 1
  %x691 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end690, i32 0, i32 0
  %406 = load i32, i32* %x691, align 4, !tbaa !94
  %cmp692 = icmp slt i32 %404, %406
  br i1 %cmp692, label %cond.true.693, label %cond.false.696

cond.true.693:                                    ; preds = %if.else.687
  %407 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start694 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %407, i32 0, i32 0
  %x695 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start694, i32 0, i32 0
  %408 = load i32, i32* %x695, align 4, !tbaa !93
  br label %cond.end.699

cond.false.696:                                   ; preds = %if.else.687
  %409 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end697 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %409, i32 0, i32 1
  %x698 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end697, i32 0, i32 0
  %410 = load i32, i32* %x698, align 4, !tbaa !94
  br label %cond.end.699

cond.end.699:                                     ; preds = %cond.false.696, %cond.true.693
  %cond700 = phi i32 [ %408, %cond.true.693 ], [ %410, %cond.false.696 ]
  %shr701 = ashr i32 %cond700, 8
  store i32 %shr701, i32* %rx, align 4, !tbaa !5
  %411 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start702 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %411, i32 0, i32 0
  %x703 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start702, i32 0, i32 0
  %412 = load i32, i32* %x703, align 4, !tbaa !93
  %413 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end704 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %413, i32 0, i32 1
  %x705 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end704, i32 0, i32 0
  %414 = load i32, i32* %x705, align 4, !tbaa !94
  %cmp706 = icmp sgt i32 %412, %414
  br i1 %cmp706, label %cond.true.707, label %cond.false.710

cond.true.707:                                    ; preds = %cond.end.699
  %415 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start708 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %415, i32 0, i32 0
  %x709 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start708, i32 0, i32 0
  %416 = load i32, i32* %x709, align 4, !tbaa !93
  br label %cond.end.713

cond.false.710:                                   ; preds = %cond.end.699
  %417 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end711 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %417, i32 0, i32 1
  %x712 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end711, i32 0, i32 0
  %418 = load i32, i32* %x712, align 4, !tbaa !94
  br label %cond.end.713

cond.end.713:                                     ; preds = %cond.false.710, %cond.true.707
  %cond714 = phi i32 [ %416, %cond.true.707 ], [ %418, %cond.false.710 ]
  %add715 = add nsw i32 %cond714, 255
  %shr716 = ashr i32 %add715, 8
  store i32 %shr716, i32* %rxe, align 4, !tbaa !5
  %419 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %shr717 = ashr i32 %419, 8
  store i32 %shr717, i32* %ry, align 4, !tbaa !5
  %420 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %add718 = add nsw i32 %420, 255
  %shr719 = ashr i32 %add718, 8
  %421 = load i32, i32* %ry, align 4, !tbaa !5
  %sub720 = sub nsw i32 %shr719, %421
  store i32 %sub720, i32* %rheight, align 4, !tbaa !5
  br label %if.end.721

if.end.721:                                       ; preds = %cond.end.713, %cond.end.682
  br label %if.end.722

if.end.722:                                       ; preds = %if.end.721, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.722
  %422 = load i32, i32* %ry, align 4, !tbaa !5
  %423 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %423, i32 0, i32 101
  %424 = load i32, i32* %cropping_min, align 4, !tbaa !60
  %cmp723 = icmp slt i32 %422, %424
  br i1 %cmp723, label %if.then.724, label %if.end.729

if.then.724:                                      ; preds = %do.body
  %425 = load i32, i32* %ry, align 4, !tbaa !5
  %426 = load i32, i32* %rheight, align 4, !tbaa !5
  %add725 = add nsw i32 %425, %426
  %427 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min726 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %427, i32 0, i32 101
  %428 = load i32, i32* %cropping_min726, align 4, !tbaa !60
  %sub727 = sub nsw i32 %add725, %428
  store i32 %sub727, i32* %rheight, align 4, !tbaa !5
  %429 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min728 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %429, i32 0, i32 101
  %430 = load i32, i32* %cropping_min728, align 4, !tbaa !60
  store i32 %430, i32* %ry, align 4, !tbaa !5
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.724, %do.body
  %431 = load i32, i32* %ry, align 4, !tbaa !5
  %432 = load i32, i32* %rheight, align 4, !tbaa !5
  %add730 = add nsw i32 %431, %432
  %433 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %433, i32 0, i32 102
  %434 = load i32, i32* %cropping_max, align 4, !tbaa !61
  %cmp731 = icmp sgt i32 %add730, %434
  br i1 %cmp731, label %if.then.732, label %if.end.735

if.then.732:                                      ; preds = %if.end.729
  %435 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max733 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %435, i32 0, i32 102
  %436 = load i32, i32* %cropping_max733, align 4, !tbaa !61
  %437 = load i32, i32* %ry, align 4, !tbaa !5
  %sub734 = sub nsw i32 %436, %437
  store i32 %sub734, i32* %rheight, align 4, !tbaa !5
  br label %if.end.735

if.end.735:                                       ; preds = %if.then.732, %if.end.729
  br label %do.cond

do.cond:                                          ; preds = %if.end.735
  br label %do.end

do.end:                                           ; preds = %do.cond
  %438 = load i32, i32* %rheight, align 4, !tbaa !5
  %cmp736 = icmp sle i32 %438, 0
  br i1 %cmp736, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %do.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.738:                                       ; preds = %do.end
  %439 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %439, i32 0, i32 95
  %440 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp739 = icmp slt i32 %440, 0
  br i1 %cmp739, label %if.then.740, label %if.end.742

if.then.740:                                      ; preds = %if.end.738
  %441 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error741 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %441, i32 0, i32 95
  %442 = load i32, i32* %permanent_error741, align 4, !tbaa !62
  store i32 %442, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.742:                                       ; preds = %if.end.738
  %443 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %443, i32 0, i32 81
  %444 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool743 = icmp ne i32 %444, 0
  br i1 %tobool743, label %if.then.744, label %if.end.754

if.then.744:                                      ; preds = %if.end.742
  %445 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %445) #1
  %446 = load i32, i32* %rx, align 4, !tbaa !5
  %p745 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x746 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p745, i32 0, i32 0
  store i32 %446, i32* %x746, align 4, !tbaa !64
  %447 = load i32, i32* %rxe, align 4, !tbaa !5
  %q747 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x748 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q747, i32 0, i32 0
  store i32 %447, i32* %x748, align 4, !tbaa !65
  %448 = load i32, i32* %ry, align 4, !tbaa !5
  %p749 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y750 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p749, i32 0, i32 1
  store i32 %448, i32* %y750, align 4, !tbaa !66
  %449 = load i32, i32* %ry, align 4, !tbaa !5
  %450 = load i32, i32* %rheight, align 4, !tbaa !5
  %add751 = add nsw i32 %449, %450
  %q752 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y753 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q752, i32 0, i32 1
  store i32 %add751, i32* %y753, align 4, !tbaa !67
  %451 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %451, %struct.gs_int_rect_s* %bbox) #4
  %452 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %452) #1
  br label %if.end.754

if.end.754:                                       ; preds = %if.then.744, %if.end.742
  %453 = load i32, i32* %ry, align 4, !tbaa !5
  %y755 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %453, i32* %y755, align 4, !tbaa !68
  %454 = load i32, i32* %rheight, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %454, i32* %height, align 4, !tbaa !70
  %y756 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %455 = load i32, i32* %y756, align 4, !tbaa !68
  %height757 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %456 = load i32, i32* %height757, align 4, !tbaa !70
  %add758 = add nsw i32 %455, %456
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add758, i32* %yend, align 4, !tbaa !71
  %457 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %457, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %458 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %458, i32* %band_height, align 4, !tbaa !73
  %yend759 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %459 = load i32, i32* %yend759, align 4, !tbaa !71
  %y760 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %460 = load i32, i32* %y760, align 4, !tbaa !68
  %sub761 = sub nsw i32 %459, %460
  %band_height762 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %461 = load i32, i32* %band_height762, align 4, !tbaa !73
  %add763 = add nsw i32 %sub761, %461
  %sub764 = sub nsw i32 %add763, 1
  %band_height765 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %462 = load i32, i32* %band_height765, align 4, !tbaa !73
  %div = sdiv i32 %sub764, %462
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.766

do.body.766:                                      ; preds = %do.cond.829, %if.end.754
  %y767 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %463 = load i32, i32* %y767, align 4, !tbaa !68
  %band_height768 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %464 = load i32, i32* %band_height768, align 4, !tbaa !73
  %div769 = sdiv i32 %463, %464
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div769, i32* %band, align 4, !tbaa !75
  %465 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %465, i32 0, i32 66
  %466 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band770 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %467 = load i32, i32* %band770, align 4, !tbaa !75
  %idx.ext = sext i32 %467 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %466, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band771 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %468 = load i32, i32* %band771, align 4, !tbaa !75
  %add772 = add nsw i32 %468, 1
  %band_height773 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %469 = load i32, i32* %band_height773, align 4, !tbaa !73
  %mul = mul nsw i32 %add772, %469
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !77
  %band_end774 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %470 = load i32, i32* %band_end774, align 4, !tbaa !77
  %yend775 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %471 = load i32, i32* %yend775, align 4, !tbaa !71
  %cmp776 = icmp slt i32 %470, %471
  br i1 %cmp776, label %cond.true.777, label %cond.false.779

cond.true.777:                                    ; preds = %do.body.766
  %band_end778 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %472 = load i32, i32* %band_end778, align 4, !tbaa !77
  br label %cond.end.781

cond.false.779:                                   ; preds = %do.body.766
  %yend780 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %473 = load i32, i32* %yend780, align 4, !tbaa !71
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.false.779, %cond.true.777
  %cond782 = phi i32 [ %472, %cond.true.777 ], [ %473, %cond.false.779 ]
  %y783 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %474 = load i32, i32* %y783, align 4, !tbaa !68
  %sub784 = sub nsw i32 %cond782, %474
  %height785 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub784, i32* %height785, align 4, !tbaa !70
  br label %do.body.786

do.body.786:                                      ; preds = %land.end, %cond.end.781
  %475 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %cmp787 = icmp ne %struct.gx_device_color_s* %475, null
  br i1 %cmp787, label %if.then.788, label %if.else.799

if.then.788:                                      ; preds = %do.body.786
  %476 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls789 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %477 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls789, align 8, !tbaa !76
  %478 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %476, %struct.gx_clist_state_s* %477, %struct.gx_device_color_s* %478, %struct.cmd_rects_enum_s* %re, i32 0) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %479 = load i32, i32* %code, align 4, !tbaa !5
  %cmp790 = icmp eq i32 %479, -28
  br i1 %cmp790, label %if.then.791, label %if.end.792

if.then.791:                                      ; preds = %if.then.788
  %480 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %480, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.792:                                       ; preds = %if.then.788
  %481 = load i32, i32* %code, align 4, !tbaa !5
  %cmp793 = icmp slt i32 %481, 0
  br i1 %cmp793, label %if.then.794, label %if.end.796

if.then.794:                                      ; preds = %if.end.792
  %482 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %483 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %484 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %485 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %486 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %487 = load i32, i32* %swap_axes, align 4, !tbaa !5
  %488 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %489 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call795 = call i32 @gx_default_fill_trapezoid(%struct.gx_device_s* %482, %struct.gs_fixed_edge_s* %483, %struct.gs_fixed_edge_s* %484, i32 %485, i32 %486, i32 %487, %struct.gx_device_color_s* %488, i32 %489) #4
  store i32 %call795, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.796:                                       ; preds = %if.end.792
  %490 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls797 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %491 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls797, align 8, !tbaa !76
  %492 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call798 = call i32 @cmd_update_lop(%struct.gx_device_clist_writer_s* %490, %struct.gx_clist_state_s* %491, i32 %492) #4
  store i32 %call798, i32* %code, align 4, !tbaa !5
  br label %if.end.800

if.else.799:                                      ; preds = %do.body.786
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %if.end.800

if.end.800:                                       ; preds = %if.else.799, %if.end.796
  %493 = load i32, i32* %code, align 4, !tbaa !5
  %cmp801 = icmp sge i32 %493, 0
  br i1 %cmp801, label %if.then.802, label %if.end.805

if.then.802:                                      ; preds = %if.end.800
  %494 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls803 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %495 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls803, align 8, !tbaa !76
  %496 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %497 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %498 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %499 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %500 = load i32, i32* %options.addr, align 4, !tbaa !5
  %501 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %502 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %503 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %504 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %505 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %call804 = call i32 @cmd_write_trapezoid_cmd(%struct.gx_device_clist_writer_s* %494, %struct.gx_clist_state_s* %495, i32 252, %struct.gs_fixed_edge_s* %496, %struct.gs_fixed_edge_s* %497, i32 %498, i32 %499, i32 %500, %struct.gs_fill_attributes_s* %501, i32* %502, i32* %503, i32* %504, i32* %505) #4
  store i32 %call804, i32* %code, align 4, !tbaa !5
  br label %if.end.805

if.end.805:                                       ; preds = %if.then.802, %if.end.800
  br label %do.cond.806

do.cond.806:                                      ; preds = %if.end.805
  %506 = load i32, i32* %code, align 4, !tbaa !5
  %cmp807 = icmp slt i32 %506, 0
  br i1 %cmp807, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.806
  %507 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %508 = load i32, i32* %code, align 4, !tbaa !5
  %call808 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %507, i32 %508) #4
  store i32 %call808, i32* %code, align 4, !tbaa !5
  %cmp809 = icmp sge i32 %call808, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.806
  %509 = phi i1 [ false, %do.cond.806 ], [ %cmp809, %land.rhs ]
  br i1 %509, label %do.body.786, label %do.end.810

do.end.810:                                       ; preds = %land.end
  %510 = load i32, i32* %code, align 4, !tbaa !5
  %cmp811 = icmp slt i32 %510, 0
  br i1 %cmp811, label %land.lhs.true, label %if.end.814

land.lhs.true:                                    ; preds = %do.end.810
  %511 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %511, i32* %band_code, align 4, !tbaa !80
  %tobool812 = icmp ne i32 %511, 0
  br i1 %tobool812, label %if.then.813, label %if.end.814

if.then.813:                                      ; preds = %land.lhs.true
  br label %error_in_rect

if.end.814:                                       ; preds = %land.lhs.true, %do.end.810
  %height815 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %512 = load i32, i32* %height815, align 4, !tbaa !70
  %y816 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %513 = load i32, i32* %y816, align 4, !tbaa !68
  %add817 = add nsw i32 %513, %512
  store i32 %add817, i32* %y816, align 4, !tbaa !68
  br label %do.cond.829

error_in_rect:                                    ; preds = %if.then.813
  %514 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %514, i32 0, i32 94
  %515 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool818 = icmp ne i32 %515, 0
  br i1 %tobool818, label %land.lhs.true.819, label %if.then.826

land.lhs.true.819:                                ; preds = %error_in_rect
  %516 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %516, i32 0, i32 96
  %517 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %cmp820 = icmp eq i32 %517, 0
  br i1 %cmp820, label %land.lhs.true.821, label %if.then.826

land.lhs.true.821:                                ; preds = %land.lhs.true.819
  %518 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code822 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %519 = load i32, i32* %band_code822, align 4, !tbaa !80
  %call823 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %518, i32 %519) #4
  %band_code824 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call823, i32* %band_code824, align 4, !tbaa !80
  %cmp825 = icmp sge i32 %call823, 0
  br i1 %cmp825, label %if.end.828, label %if.then.826

if.then.826:                                      ; preds = %land.lhs.true.821, %land.lhs.true.819, %error_in_rect
  %band_code827 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %520 = load i32, i32* %band_code827, align 4, !tbaa !80
  store i32 %520, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.828:                                       ; preds = %land.lhs.true.821
  br label %do.cond.829

do.cond.829:                                      ; preds = %if.end.828, %if.end.814
  %y830 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %521 = load i32, i32* %y830, align 4, !tbaa !68
  %yend831 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %522 = load i32, i32* %yend831, align 4, !tbaa !71
  %cmp832 = icmp slt i32 %521, %522
  br i1 %cmp832, label %do.body.766, label %do.end.833

do.end.833:                                       ; preds = %do.cond.829
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.833, %if.then.826, %if.then.794, %if.then.791, %if.then.740, %if.then.737
  %523 = bitcast i32* %swap_axes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %523) #1
  %524 = bitcast i32* %rxe to i8*
  call void @llvm.lifetime.end(i64 4, i8* %524) #1
  %525 = bitcast i32* %rx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %525) #1
  %526 = bitcast i32* %rheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %526) #1
  %527 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %527) #1
  %528 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %528) #1
  %529 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %529) #1
  %530 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %530) #1
  %531 = load i32, i32* %retval
  ret i32 %531
}

; Function Attrs: nounwind uwtable
define i32 @clist_fill_linear_color_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s* %p3, i32* %c0, i32* %c1, i32* %c2, i32* %c3) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p3.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %c3.addr = alloca i32*, align 8
  %left = alloca %struct.gs_fixed_edge_s, align 4
  %right = alloca %struct.gs_fixed_edge_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p3, %struct.gs_fixed_point_s** %p3.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32* %c3, i32** %c3.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_fixed_point_s* %start to i8*
  %5 = bitcast %struct.gs_fixed_point_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false), !tbaa.struct !95
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_fixed_point_s* %end to i8*
  %8 = bitcast %struct.gs_fixed_point_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false), !tbaa.struct !95
  %start1 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_fixed_point_s* %start1 to i8*
  %11 = bitcast %struct.gs_fixed_point_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 4, i1 false), !tbaa.struct !95
  %end2 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %12 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p3.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gs_fixed_point_s* %end2 to i8*
  %14 = bitcast %struct.gs_fixed_point_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 8, i32 4, i1 false), !tbaa.struct !95
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %16 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %ystart = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %16, i32 0, i32 4
  %17 = load i32, i32* %ystart, align 4, !tbaa !96
  %18 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %yend = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %18, i32 0, i32 5
  %19 = load i32, i32* %yend, align 4, !tbaa !97
  %20 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %20, i32 0, i32 1
  %21 = load i32, i32* %swap_axes, align 4, !tbaa !98
  %or = or i32 %21, 2
  %22 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %22, i32 0, i32 3
  %23 = load i32, i32* %lop, align 4, !tbaa !99
  %24 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %25 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %26 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %27 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %28 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %call = call i32 @clist_write_fill_trapezoid(%struct.gx_device_s* %15, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %17, i32 %19, i32 %or, %struct.gx_device_color_s* null, i32 %23, %struct.gs_fill_attributes_s* %24, i32* %25, i32* %26, i32* %27, i32* %28) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %30 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %30, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.end(i64 16, i8* %32) #1
  %33 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.end(i64 16, i8* %33) #1
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @clist_fill_linear_color_triangle(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, i32* %c0, i32* %c1, i32* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %left = alloca %struct.gs_fixed_edge_s, align 4
  %right = alloca %struct.gs_fixed_edge_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gs_fixed_point_s* %start to i8*
  %5 = bitcast %struct.gs_fixed_point_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false), !tbaa.struct !95
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_fixed_point_s* %end to i8*
  %8 = bitcast %struct.gs_fixed_point_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 8, i32 4, i1 false), !tbaa.struct !95
  %start1 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %10 = bitcast %struct.gs_fixed_point_s* %start1 to i8*
  %11 = bitcast %struct.gs_fixed_point_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 8, i32 4, i1 false), !tbaa.struct !95
  %end2 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end2, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !90
  %end3 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end3, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !94
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %13, i32 0, i32 1
  %14 = load i32, i32* %swap_axes, align 4, !tbaa !98
  %or = or i32 %14, 2
  %or4 = or i32 %or, 4
  %15 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %lop = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %15, i32 0, i32 3
  %16 = load i32, i32* %lop, align 4, !tbaa !99
  %17 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %20 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %call = call i32 @clist_write_fill_trapezoid(%struct.gx_device_s* %12, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 0, i32 0, i32 %or4, %struct.gx_device_color_s* null, i32 %16, %struct.gs_fill_attributes_s* %17, i32* %18, i32* %19, i32* %20, i32* null) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #1
  %25 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #1
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @clist_dev_spec_op(%struct.gx_device_s* %pdev, i32 %dev_spec_op, i8* %data, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev_spec_op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_common_s*, align 8
  %cleanup.dest.slot = alloca i32
  %dev_profile = alloca %struct.cmm_dev_profile_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %dev_spec_op, i32* %dev_spec_op.addr, align 4, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %common = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_common_s*
  store %struct.gx_device_clist_common_s* %common, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %3 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %3, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %4, 6
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

if.end.3:                                         ; preds = %if.end
  %5 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %5, 11
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.3
  %6 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %8, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %9 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !100
  %10 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %11 = bitcast %struct.gx_device_clist_common_s* %10 to %struct.gx_device_s*
  %call = call i32 %9(%struct.gx_device_s* %11, %struct.cmm_dev_profile_s** %dev_profile) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %12 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %12, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then.5
  %13 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %dev_profile, align 8, !tbaa !1
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %13, i32 0, i32 9
  %14 = load i32, i32* %supports_devn, align 4, !tbaa !102
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.7
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast %struct.cmm_dev_profile_s** %dev_profile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  br label %cleanup.14

if.end.9:                                         ; preds = %if.end.3
  %17 = load %struct.gx_device_clist_common_s*, %struct.gx_device_clist_common_s** %cdev, align 8, !tbaa !1
  %is_printer = getelementptr inbounds %struct.gx_device_clist_common_s, %struct.gx_device_clist_common_s* %17, i32 0, i32 50
  %18 = load i32, i32* %is_printer, align 4, !tbaa !104
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.9
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %21 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %22 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call11 = call i32 @gdev_prn_forwarding_dev_spec_op(%struct.gx_device_s* %19, i32 %20, i8* %21, i32 %22) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

if.end.12:                                        ; preds = %if.end.9
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %24 = load i32, i32* %dev_spec_op.addr, align 4, !tbaa !5
  %25 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %26 = load i32, i32* %size.addr, align 4, !tbaa !5
  %call13 = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %23, i32 %24, i8* %25, i32 %26) #4
  store i32 %call13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14

cleanup.14:                                       ; preds = %if.end.12, %if.then.10, %cleanup, %if.then.2, %if.then
  %27 = bitcast %struct.gx_device_clist_common_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @gdev_prn_forwarding_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #2

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_strip_tile_rect_devn(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tile, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s* %pdcolor1, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %pdcolor0.addr = alloca %struct.gx_device_color_s*, align 8
  %pdcolor1.addr = alloca %struct.gx_device_color_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %depth = alloca i32, align 4
  %code = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %color_usage = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %offset_temp = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor0, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor1, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 1, i32* %depth, align 4, !tbaa !5
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %5) #1
  %6 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %8 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %call = call i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s* %7, %struct.gx_device_color_s* %8) #4
  store i64 %call, i64* %color_usage, align 8, !tbaa !58
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %10 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %11 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.end
  %12 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 13
  %14 = load i32, i32* %width, align 4, !tbaa !59
  %15 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %15
  %cmp2 = icmp sgt i32 %12, %sub
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %do.body.1
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 13
  %17 = load i32, i32* %width4, align 4, !tbaa !59
  %18 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 %17, %18
  store i32 %sub5, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %19 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %20, i32 0, i32 101
  %21 = load i32, i32* %cropping_min, align 4, !tbaa !60
  %cmp8 = icmp slt i32 %19, %21
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body.7
  %22 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %23 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %22, %23
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 101
  %25 = load i32, i32* %cropping_min11, align 4, !tbaa !60
  %sub12 = sub nsw i32 %add10, %25
  store i32 %sub12, i32* %rheight.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 101
  %27 = load i32, i32* %cropping_min13, align 4, !tbaa !60
  store i32 %27, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %do.body.7
  %28 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %29 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %28, %29
  %30 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %30, i32 0, i32 102
  %31 = load i32, i32* %cropping_max, align 4, !tbaa !61
  %cmp16 = icmp sgt i32 %add15, %31
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.14
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max18 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 102
  %33 = load i32, i32* %cropping_max18, align 4, !tbaa !61
  %34 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %33, %34
  store i32 %sub19, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.14
  br label %do.cond.21

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22

do.end.22:                                        ; preds = %do.cond.21
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end.22
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %35 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %35, 0
  br i1 %cmp25, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.24
  %36 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp26 = icmp sle i32 %36, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false, %do.end.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.28:                                        ; preds = %lor.lhs.false
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 95
  %38 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp29 = icmp slt i32 %38, 0
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error31 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %39, i32 0, i32 95
  %40 = load i32, i32* %permanent_error31, align 4, !tbaa !62
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

if.end.32:                                        ; preds = %if.end.28
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 81
  %42 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.end.32
  %43 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %43) #1
  %44 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %44, i32* %x, align 4, !tbaa !64
  %45 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %46 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add34 = add nsw i32 %45, %46
  %sub35 = sub nsw i32 %add34, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub35, i32* %x36, align 4, !tbaa !65
  %47 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p37, i32 0, i32 1
  store i32 %47, i32* %y, align 4, !tbaa !66
  %48 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %49 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add38 = add nsw i32 %48, %49
  %sub39 = sub nsw i32 %add38, 1
  %q40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q40, i32 0, i32 1
  store i32 %sub39, i32* %y41, align 4, !tbaa !67
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %50, %struct.gs_int_rect_s* %bbox) #4
  %51 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %51) #1
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.33, %if.end.32
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %53 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %call43 = call i64 @cmd_drawing_color_usage(%struct.gx_device_clist_writer_s* %52, %struct.gx_device_color_s* %53) #4
  %54 = load i64, i64* %color_usage, align 8, !tbaa !58
  %or = or i64 %54, %call43
  store i64 %or, i64* %color_usage, align 8, !tbaa !58
  %55 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y44 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %55, i32* %y44, align 4, !tbaa !68
  %56 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %56, i32* %height, align 4, !tbaa !70
  %y45 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %57 = load i32, i32* %y45, align 4, !tbaa !68
  %height46 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %58 = load i32, i32* %height46, align 4, !tbaa !70
  %add47 = add nsw i32 %57, %58
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add47, i32* %yend, align 4, !tbaa !71
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %59, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %60 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %60, i32* %band_height, align 4, !tbaa !73
  %yend48 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %61 = load i32, i32* %yend48, align 4, !tbaa !71
  %y49 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %62 = load i32, i32* %y49, align 4, !tbaa !68
  %sub50 = sub nsw i32 %61, %62
  %band_height51 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %63 = load i32, i32* %band_height51, align 4, !tbaa !73
  %add52 = add nsw i32 %sub50, %63
  %sub53 = sub nsw i32 %add52, 1
  %band_height54 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %64 = load i32, i32* %band_height54, align 4, !tbaa !73
  %div = sdiv i32 %sub53, %64
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.55

do.body.55:                                       ; preds = %do.cond.212, %if.end.42
  %65 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %65) #1
  %y56 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %66 = load i32, i32* %y56, align 4, !tbaa !68
  %band_height57 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %67 = load i32, i32* %band_height57, align 4, !tbaa !73
  %div58 = sdiv i32 %66, %67
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div58, i32* %band, align 4, !tbaa !75
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 66
  %69 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band59 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %70 = load i32, i32* %band59, align 4, !tbaa !75
  %idx.ext = sext i32 %70 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %69, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band60 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %71 = load i32, i32* %band60, align 4, !tbaa !75
  %add61 = add nsw i32 %71, 1
  %band_height62 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %72 = load i32, i32* %band_height62, align 4, !tbaa !73
  %mul = mul nsw i32 %add61, %72
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !77
  %band_end63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %73 = load i32, i32* %band_end63, align 4, !tbaa !77
  %yend64 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %74 = load i32, i32* %yend64, align 4, !tbaa !71
  %cmp65 = icmp slt i32 %73, %74
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.55
  %band_end66 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %75 = load i32, i32* %band_end66, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.55
  %yend67 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %76 = load i32, i32* %yend67, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %75, %cond.true ], [ %76, %cond.false ]
  %y68 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %77 = load i32, i32* %y68, align 4, !tbaa !68
  %sub69 = sub nsw i32 %cond, %77
  %height70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub69, i32* %height70, align 4, !tbaa !70
  %78 = load i64, i64* %color_usage, align 8, !tbaa !58
  %pcls71 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %79 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls71, align 8, !tbaa !76
  %color_usage72 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %79, i32 0, i32 16
  %or73 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage72, i32 0, i32 0
  %80 = load i64, i64* %or73, align 8, !tbaa !78
  %or74 = or i64 %80, %78
  store i64 %or74, i64* %or73, align 8, !tbaa !78
  br label %do.body.75

do.body.75:                                       ; preds = %land.end, %cond.end
  %pcls76 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %81 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls76, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %81, i32 0, i32 10
  %82 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv = sext i16 %82 to i32
  %cmp77 = icmp eq i32 %conv, 1
  br i1 %cmp77, label %land.lhs.true, label %cond.false.84

land.lhs.true:                                    ; preds = %do.body.75
  %83 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls79 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %84 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls79, align 8, !tbaa !76
  %call80 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %83, %struct.gx_clist_state_s* %84, i32 0) #4
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %land.lhs.true
  %85 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %85, i32 0, i32 65
  %86 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.85

cond.false.84:                                    ; preds = %land.lhs.true, %do.body.75
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i32 [ %86, %cond.true.83 ], [ 0, %cond.false.84 ]
  store i32 %cond86, i32* %code, align 4, !tbaa !5
  br label %do.cond.87

do.cond.87:                                       ; preds = %cond.end.85
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %87, 0
  br i1 %cmp88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.87
  %88 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %89 = load i32, i32* %code, align 4, !tbaa !5
  %call90 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %88, i32 %89) #4
  store i32 %call90, i32* %code, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %call90, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.87
  %90 = phi i1 [ false, %do.cond.87 ], [ %cmp91, %land.rhs ]
  br i1 %90, label %do.body.75, label %do.end.93

do.end.93:                                        ; preds = %land.end
  %91 = load i32, i32* %code, align 4, !tbaa !5
  %cmp94 = icmp slt i32 %91, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.99

land.lhs.true.96:                                 ; preds = %do.end.93
  %92 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %92, i32* %band_code, align 4, !tbaa !80
  %tobool97 = icmp ne i32 %92, 0
  br i1 %tobool97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %land.lhs.true.96
  br label %error_in_rect

if.end.99:                                        ; preds = %land.lhs.true.96, %do.end.93
  %pcls100 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %93 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls100, align 8, !tbaa !76
  %tile_id = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %93, i32 0, i32 3
  %94 = load i64, i64* %tile_id, align 8, !tbaa !105
  %95 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %95, i32 0, i32 3
  %96 = load i64, i64* %id, align 8, !tbaa !106
  %cmp101 = icmp eq i64 %94, %96
  br i1 %cmp101, label %land.lhs.true.103, label %if.then.113

land.lhs.true.103:                                ; preds = %if.end.99
  %pcls104 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %97 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls104, align 8, !tbaa !76
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %97, i32 0, i32 2
  %98 = load i32, i32* %tile_index, align 4, !tbaa !107
  %idxprom = zext i32 %98 to i64
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 55
  %100 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !108
  %arrayidx = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %100, i64 %idxprom
  %offset = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx, i32 0, i32 0
  %101 = load i64, i64* %offset, align 8, !tbaa !109
  store i64 %101, i64* %offset_temp, align 8, !tbaa !58
  %cmp105 = icmp ne i64 %101, 0
  br i1 %cmp105, label %land.lhs.true.107, label %if.then.113

land.lhs.true.107:                                ; preds = %land.lhs.true.103
  %102 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %102, i32 0, i32 46
  %103 = load i8*, i8** %data, align 8, !tbaa !111
  %104 = load i64, i64* %offset_temp, align 8, !tbaa !58
  %add.ptr108 = getelementptr inbounds i8, i8* %103, i64 %104
  %105 = bitcast i8* %add.ptr108 to %struct.tile_slot*
  %id109 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %105, i32 0, i32 5
  %106 = load i64, i64* %id109, align 8, !tbaa !112
  %107 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %id110 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %107, i32 0, i32 3
  %108 = load i64, i64* %id110, align 8, !tbaa !106
  %cmp111 = icmp eq i64 %106, %108
  br i1 %cmp111, label %if.end.147, label %if.then.113

if.then.113:                                      ; preds = %land.lhs.true.107, %land.lhs.true.103, %if.end.99
  %109 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %id114 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %109, i32 0, i32 3
  %110 = load i64, i64* %id114, align 8, !tbaa !106
  %cmp115 = icmp ne i64 %110, 0
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %if.then.113
  br label %do.body.118

do.body.118:                                      ; preds = %land.end.128, %if.then.117
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls119 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %112 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls119, align 8, !tbaa !76
  %113 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %114 = load i32, i32* %depth, align 4, !tbaa !5
  %call120 = call i32 @clist_change_tile(%struct.gx_device_clist_writer_s* %111, %struct.gx_clist_state_s* %112, %struct.gx_strip_bitmap_s* %113, i32 %114) #4
  store i32 %call120, i32* %code, align 4, !tbaa !5
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.118
  %115 = load i32, i32* %code, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %115, 0
  br i1 %cmp122, label %land.rhs.124, label %land.end.128

land.rhs.124:                                     ; preds = %do.cond.121
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %117 = load i32, i32* %code, align 4, !tbaa !5
  %call125 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %116, i32 %117) #4
  store i32 %call125, i32* %code, align 4, !tbaa !5
  %cmp126 = icmp sge i32 %call125, 0
  br label %land.end.128

land.end.128:                                     ; preds = %land.rhs.124, %do.cond.121
  %118 = phi i1 [ false, %do.cond.121 ], [ %cmp126, %land.rhs.124 ]
  br i1 %118, label %do.body.118, label %do.end.129

do.end.129:                                       ; preds = %land.end.128
  %119 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %119, 0
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.141

land.lhs.true.132:                                ; preds = %do.end.129
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp133 = icmp ne i32 %120, -25
  br i1 %cmp133, label %if.end.141, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %land.lhs.true.132
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %121, i32 0, i32 94
  %122 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool136 = icmp ne i32 %122, 0
  br i1 %tobool136, label %land.lhs.true.137, label %if.end.141

land.lhs.true.137:                                ; preds = %lor.lhs.false.135
  %123 = load i32, i32* %code, align 4, !tbaa !5
  %band_code138 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %123, i32* %band_code138, align 4, !tbaa !80
  %tobool139 = icmp ne i32 %123, 0
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %land.lhs.true.137
  br label %error_in_rect

if.end.141:                                       ; preds = %land.lhs.true.137, %lor.lhs.false.135, %land.lhs.true.132, %do.end.129
  br label %if.end.142

if.else:                                          ; preds = %if.then.113
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %if.end.142

if.end.142:                                       ; preds = %if.else, %if.end.141
  %124 = load i32, i32* %code, align 4, !tbaa !5
  %cmp143 = icmp slt i32 %124, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.142
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.146:                                       ; preds = %if.end.142
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %land.lhs.true.107
  br label %do.body.148

do.body.148:                                      ; preds = %land.end.186, %if.end.147
  store i32 0, i32* %code, align 4, !tbaa !5
  %125 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls149 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %126 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls149, align 8, !tbaa !76
  %127 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor0.addr, align 8, !tbaa !1
  %call150 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %125, %struct.gx_clist_state_s* %126, %struct.gx_device_color_s* %127, %struct.cmd_rects_enum_s* %re, i32 1) #4
  store i32 %call150, i32* %code, align 4, !tbaa !5
  %128 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls151 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %129 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls151, align 8, !tbaa !76
  %130 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor1.addr, align 8, !tbaa !1
  %call152 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %128, %struct.gx_clist_state_s* %129, %struct.gx_device_color_s* %130, %struct.cmd_rects_enum_s* %re, i32 2) #4
  store i32 %call152, i32* %code, align 4, !tbaa !5
  %131 = load i32, i32* %px.addr, align 4, !tbaa !5
  %pcls153 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %132 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls153, align 8, !tbaa !76
  %tile_phase = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %132, i32 0, i32 5
  %x154 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %133 = load i32, i32* %x154, align 4, !tbaa !115
  %cmp155 = icmp ne i32 %131, %133
  br i1 %cmp155, label %if.then.163, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %do.body.148
  %134 = load i32, i32* %py.addr, align 4, !tbaa !5
  %pcls158 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %135 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls158, align 8, !tbaa !76
  %tile_phase159 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %135, i32 0, i32 5
  %y160 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase159, i32 0, i32 1
  %136 = load i32, i32* %y160, align 4, !tbaa !116
  %cmp161 = icmp ne i32 %134, %136
  br i1 %cmp161, label %if.then.163, label %if.end.170

if.then.163:                                      ; preds = %lor.lhs.false.157, %do.body.148
  %137 = load i32, i32* %code, align 4, !tbaa !5
  %cmp164 = icmp sge i32 %137, 0
  br i1 %cmp164, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.then.163
  %138 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls167 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %139 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls167, align 8, !tbaa !76
  %140 = load i32, i32* %px.addr, align 4, !tbaa !5
  %141 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call168 = call i32 @cmd_set_tile_phase(%struct.gx_device_clist_writer_s* %138, %struct.gx_clist_state_s* %139, i32 %140, i32 %141) #4
  store i32 %call168, i32* %code, align 4, !tbaa !5
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %if.then.163
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %lor.lhs.false.157
  %142 = load i32, i32* %code, align 4, !tbaa !5
  %cmp171 = icmp sge i32 %142, 0
  br i1 %cmp171, label %if.then.173, label %if.end.178

if.then.173:                                      ; preds = %if.end.170
  %143 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls174 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %144 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls174, align 8, !tbaa !76
  %145 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y175 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %146 = load i32, i32* %y175, align 4, !tbaa !68
  %147 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height176 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %148 = load i32, i32* %height176, align 4, !tbaa !70
  %call177 = call i32 @cmd_write_rect_hl_cmd(%struct.gx_device_clist_writer_s* %143, %struct.gx_clist_state_s* %144, i32 5, i32 %145, i32 %146, i32 %147, i32 %148, i32 1) #4
  store i32 %call177, i32* %code, align 4, !tbaa !5
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.173, %if.end.170
  br label %do.cond.179

do.cond.179:                                      ; preds = %if.end.178
  %149 = load i32, i32* %code, align 4, !tbaa !5
  %cmp180 = icmp slt i32 %149, 0
  br i1 %cmp180, label %land.rhs.182, label %land.end.186

land.rhs.182:                                     ; preds = %do.cond.179
  %150 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %151 = load i32, i32* %code, align 4, !tbaa !5
  %call183 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %150, i32 %151) #4
  store i32 %call183, i32* %code, align 4, !tbaa !5
  %cmp184 = icmp sge i32 %call183, 0
  br label %land.end.186

land.end.186:                                     ; preds = %land.rhs.182, %do.cond.179
  %152 = phi i1 [ false, %do.cond.179 ], [ %cmp184, %land.rhs.182 ]
  br i1 %152, label %do.body.148, label %do.end.187

do.end.187:                                       ; preds = %land.end.186
  %153 = load i32, i32* %code, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %153, 0
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.194

land.lhs.true.190:                                ; preds = %do.end.187
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %band_code191 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %154, i32* %band_code191, align 4, !tbaa !80
  %tobool192 = icmp ne i32 %154, 0
  br i1 %tobool192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %land.lhs.true.190
  br label %error_in_rect

if.end.194:                                       ; preds = %land.lhs.true.190, %do.end.187
  %height195 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %155 = load i32, i32* %height195, align 4, !tbaa !70
  %y196 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %156 = load i32, i32* %y196, align 4, !tbaa !68
  %add197 = add nsw i32 %156, %155
  store i32 %add197, i32* %y196, align 4, !tbaa !68
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

error_in_rect:                                    ; preds = %if.then.193, %if.then.140, %if.then.98
  %157 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable198 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %157, i32 0, i32 94
  %158 = load i32, i32* %error_is_retryable198, align 4, !tbaa !81
  %tobool199 = icmp ne i32 %158, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.then.209

land.lhs.true.200:                                ; preds = %error_in_rect
  %159 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %159, i32 0, i32 96
  %160 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %cmp201 = icmp eq i32 %160, 0
  br i1 %cmp201, label %land.lhs.true.203, label %if.then.209

land.lhs.true.203:                                ; preds = %land.lhs.true.200
  %161 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code204 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %162 = load i32, i32* %band_code204, align 4, !tbaa !80
  %call205 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %161, i32 %162) #4
  %band_code206 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call205, i32* %band_code206, align 4, !tbaa !80
  %cmp207 = icmp sge i32 %call205, 0
  br i1 %cmp207, label %if.end.211, label %if.then.209

if.then.209:                                      ; preds = %land.lhs.true.203, %land.lhs.true.200, %error_in_rect
  %band_code210 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %163 = load i32, i32* %band_code210, align 4, !tbaa !80
  store i32 %163, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.211:                                       ; preds = %land.lhs.true.203
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.211, %if.then.209, %if.end.194, %if.then.145
  %164 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %164) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.218 [
    i32 0, label %cleanup.cont
    i32 9, label %do.cond.212
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.212

do.cond.212:                                      ; preds = %cleanup.cont, %cleanup
  %y213 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %165 = load i32, i32* %y213, align 4, !tbaa !68
  %yend214 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %166 = load i32, i32* %yend214, align 4, !tbaa !71
  %cmp215 = icmp slt i32 %165, %166
  br i1 %cmp215, label %do.body.55, label %do.end.217

do.end.217:                                       ; preds = %do.cond.212
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.218

cleanup.218:                                      ; preds = %do.end.217, %cleanup, %if.then.30, %if.then.27
  %167 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %168) #1
  %169 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %171) #1
  %172 = load i32, i32* %retval
  ret i32 %172
}

declare i32 @clist_change_tile(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, %struct.gx_strip_bitmap_s*, i32) #2

declare i32 @cmd_set_tile_phase(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_strip_tile_rectangle(%struct.gx_device_s* %dev, %struct.gx_strip_bitmap_s* %tile, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i64 %color0, i64 %color1, i32 %px, i32 %py) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %depth = alloca i32, align 4
  %color_usage = alloca i64, align 8
  %code = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %offset_temp = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !58
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !58
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %cmp = icmp eq i64 %4, -1
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %cmp1 = icmp eq i64 %5, -1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 113
  %depth2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  %7 = load i16, i16* %depth2, align 2, !tbaa !117
  %conv = zext i16 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* %depth, align 4, !tbaa !5
  %8 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %cmp3 = icmp eq i64 %9, -1
  br i1 %cmp3, label %land.lhs.true.5, label %cond.false.9

land.lhs.true.5:                                  ; preds = %cond.end
  %10 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %cmp6 = icmp eq i64 %10, -1
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %land.lhs.true.5
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %12 = load i32, i32* %num_components, align 4, !tbaa !118
  %sh_prom = zext i32 %12 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  br label %cond.end.23

cond.false.9:                                     ; preds = %land.lhs.true.5, %cond.end
  %13 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %cmp10 = icmp eq i64 %13, -1
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.false.9
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.false.9
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %call = call i64 @gx_color_index2usage(%struct.gx_device_s* %14, i64 %15) #4
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i64 [ 0, %cond.true.12 ], [ %call, %cond.false.13 ]
  %16 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %cmp16 = icmp eq i64 %16, -1
  br i1 %cmp16, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.14
  br label %cond.end.21

cond.false.19:                                    ; preds = %cond.end.14
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %call20 = call i64 @gx_color_index2usage(%struct.gx_device_s* %17, i64 %18) #4
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.false.19, %cond.true.18
  %cond22 = phi i64 [ 0, %cond.true.18 ], [ %call20, %cond.false.19 ]
  %or = or i64 %cond15, %cond22
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.end.21, %cond.true.8
  %cond24 = phi i64 [ %sub, %cond.true.8 ], [ %or, %cond.end.21 ]
  store i64 %cond24, i64* %color_usage, align 8, !tbaa !58
  %19 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  %20 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %20) #1
  br label %do.body

do.body:                                          ; preds = %cond.end.23
  %21 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %21, 0
  br i1 %cmp25, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %22 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %23 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %23, %22
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.body.27

do.body.27:                                       ; preds = %if.end
  %24 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %25 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width, align 4, !tbaa !59
  %27 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub28 = sub nsw i32 %26, %27
  %cmp29 = icmp sgt i32 %24, %sub28
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %do.body.27
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width32 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width32, align 4, !tbaa !59
  %30 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub33 = sub nsw i32 %29, %30
  store i32 %sub33, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %do.body.27
  br label %do.cond

do.cond:                                          ; preds = %if.end.34
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.35

do.body.35:                                       ; preds = %do.end
  %31 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 101
  %33 = load i32, i32* %cropping_min, align 4, !tbaa !60
  %cmp36 = icmp slt i32 %31, %33
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %do.body.35
  %34 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %35 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add39 = add nsw i32 %34, %35
  %36 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min40 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %36, i32 0, i32 101
  %37 = load i32, i32* %cropping_min40, align 4, !tbaa !60
  %sub41 = sub nsw i32 %add39, %37
  store i32 %sub41, i32* %rheight.addr, align 4, !tbaa !5
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 101
  %39 = load i32, i32* %cropping_min42, align 4, !tbaa !60
  store i32 %39, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %do.body.35
  %40 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %41 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add44 = add nsw i32 %40, %41
  %42 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %42, i32 0, i32 102
  %43 = load i32, i32* %cropping_max, align 4, !tbaa !61
  %cmp45 = icmp sgt i32 %add44, %43
  br i1 %cmp45, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.43
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 102
  %45 = load i32, i32* %cropping_max48, align 4, !tbaa !61
  %46 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub49 = sub nsw i32 %45, %46
  store i32 %sub49, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.43
  br label %do.cond.51

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52

do.end.52:                                        ; preds = %do.cond.51
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.end.52
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  %47 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp55 = icmp sle i32 %47, 0
  br i1 %cmp55, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.54
  %48 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp57 = icmp sle i32 %48, 0
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %do.end.54
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.277

if.end.60:                                        ; preds = %lor.lhs.false
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 95
  %50 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp61 = icmp slt i32 %50, 0
  br i1 %cmp61, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error64 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 95
  %52 = load i32, i32* %permanent_error64, align 4, !tbaa !62
  store i32 %52, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.277

if.end.65:                                        ; preds = %if.end.60
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 81
  %54 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %54, 0
  br i1 %tobool, label %if.then.66, label %if.end.75

if.then.66:                                       ; preds = %if.end.65
  %55 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %55) #1
  %56 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %56, i32* %x, align 4, !tbaa !64
  %57 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %58 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add67 = add nsw i32 %57, %58
  %sub68 = sub nsw i32 %add67, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x69 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub68, i32* %x69, align 4, !tbaa !65
  %59 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p70 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p70, i32 0, i32 1
  store i32 %59, i32* %y, align 4, !tbaa !66
  %60 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %61 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add71 = add nsw i32 %60, %61
  %sub72 = sub nsw i32 %add71, 1
  %q73 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y74 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q73, i32 0, i32 1
  store i32 %sub72, i32* %y74, align 4, !tbaa !67
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %62, %struct.gs_int_rect_s* %bbox) #4
  %63 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %63) #1
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.66, %if.end.65
  %64 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y76 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %64, i32* %y76, align 4, !tbaa !68
  %65 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %65, i32* %height, align 4, !tbaa !70
  %y77 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %66 = load i32, i32* %y77, align 4, !tbaa !68
  %height78 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %67 = load i32, i32* %height78, align 4, !tbaa !70
  %add79 = add nsw i32 %66, %67
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add79, i32* %yend, align 4, !tbaa !71
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %69 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %69, i32* %band_height, align 4, !tbaa !73
  %yend80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %70 = load i32, i32* %yend80, align 4, !tbaa !71
  %y81 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %71 = load i32, i32* %y81, align 4, !tbaa !68
  %sub82 = sub nsw i32 %70, %71
  %band_height83 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %72 = load i32, i32* %band_height83, align 4, !tbaa !73
  %add84 = add nsw i32 %sub82, %72
  %sub85 = sub nsw i32 %add84, 1
  %band_height86 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %73 = load i32, i32* %band_height86, align 4, !tbaa !73
  %div = sdiv i32 %sub85, %73
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.87

do.body.87:                                       ; preds = %do.cond.271, %if.end.75
  %74 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %y88 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %75 = load i32, i32* %y88, align 4, !tbaa !68
  %band_height89 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %76 = load i32, i32* %band_height89, align 4, !tbaa !73
  %div90 = sdiv i32 %75, %76
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div90, i32* %band, align 4, !tbaa !75
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %77, i32 0, i32 66
  %78 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band91 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %79 = load i32, i32* %band91, align 4, !tbaa !75
  %idx.ext = sext i32 %79 to i64
  %add.ptr = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %78, i64 %idx.ext
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %80 = load i32, i32* %band92, align 4, !tbaa !75
  %add93 = add nsw i32 %80, 1
  %band_height94 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %81 = load i32, i32* %band_height94, align 4, !tbaa !73
  %mul = mul nsw i32 %add93, %81
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul, i32* %band_end, align 4, !tbaa !77
  %band_end95 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %82 = load i32, i32* %band_end95, align 4, !tbaa !77
  %yend96 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %83 = load i32, i32* %yend96, align 4, !tbaa !71
  %cmp97 = icmp slt i32 %82, %83
  br i1 %cmp97, label %cond.true.99, label %cond.false.101

cond.true.99:                                     ; preds = %do.body.87
  %band_end100 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %84 = load i32, i32* %band_end100, align 4, !tbaa !77
  br label %cond.end.103

cond.false.101:                                   ; preds = %do.body.87
  %yend102 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %85 = load i32, i32* %yend102, align 4, !tbaa !71
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.99
  %cond104 = phi i32 [ %84, %cond.true.99 ], [ %85, %cond.false.101 ]
  %y105 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %86 = load i32, i32* %y105, align 4, !tbaa !68
  %sub106 = sub nsw i32 %cond104, %86
  %height107 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub106, i32* %height107, align 4, !tbaa !70
  %87 = load i64, i64* %color_usage, align 8, !tbaa !58
  %pcls108 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %88 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls108, align 8, !tbaa !76
  %color_usage109 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %88, i32 0, i32 16
  %or110 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage109, i32 0, i32 0
  %89 = load i64, i64* %or110, align 8, !tbaa !78
  %or111 = or i64 %89, %87
  store i64 %or111, i64* %or110, align 8, !tbaa !78
  br label %do.body.112

do.body.112:                                      ; preds = %land.end, %cond.end.103
  %pcls113 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %90 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls113, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %90, i32 0, i32 10
  %91 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv114 = sext i16 %91 to i32
  %cmp115 = icmp eq i32 %conv114, 1
  br i1 %cmp115, label %land.lhs.true.117, label %cond.false.123

land.lhs.true.117:                                ; preds = %do.body.112
  %92 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls118 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %93 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls118, align 8, !tbaa !76
  %call119 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %92, %struct.gx_clist_state_s* %93, i32 0) #4
  %cmp120 = icmp slt i32 %call119, 0
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %land.lhs.true.117
  %94 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %94, i32 0, i32 65
  %95 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.124

cond.false.123:                                   ; preds = %land.lhs.true.117, %do.body.112
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.123, %cond.true.122
  %cond125 = phi i32 [ %95, %cond.true.122 ], [ 0, %cond.false.123 ]
  store i32 %cond125, i32* %code, align 4, !tbaa !5
  br label %do.cond.126

do.cond.126:                                      ; preds = %cond.end.124
  %96 = load i32, i32* %code, align 4, !tbaa !5
  %cmp127 = icmp slt i32 %96, 0
  br i1 %cmp127, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.126
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %98 = load i32, i32* %code, align 4, !tbaa !5
  %call129 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %97, i32 %98) #4
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp sge i32 %call129, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.126
  %99 = phi i1 [ false, %do.cond.126 ], [ %cmp130, %land.rhs ]
  br i1 %99, label %do.body.112, label %do.end.132

do.end.132:                                       ; preds = %land.end
  %100 = load i32, i32* %code, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %100, 0
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.138

land.lhs.true.135:                                ; preds = %do.end.132
  %101 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %101, i32* %band_code, align 4, !tbaa !80
  %tobool136 = icmp ne i32 %101, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.135
  br label %error_in_rect

if.end.138:                                       ; preds = %land.lhs.true.135, %do.end.132
  %pcls139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %102 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls139, align 8, !tbaa !76
  %tile_id = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %102, i32 0, i32 3
  %103 = load i64, i64* %tile_id, align 8, !tbaa !105
  %104 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %104, i32 0, i32 3
  %105 = load i64, i64* %id, align 8, !tbaa !106
  %cmp140 = icmp eq i64 %103, %105
  br i1 %cmp140, label %land.lhs.true.142, label %if.then.152

land.lhs.true.142:                                ; preds = %if.end.138
  %pcls143 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %106 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls143, align 8, !tbaa !76
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %106, i32 0, i32 2
  %107 = load i32, i32* %tile_index, align 4, !tbaa !107
  %idxprom = zext i32 %107 to i64
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %108, i32 0, i32 55
  %109 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !108
  %arrayidx = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %109, i64 %idxprom
  %offset = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx, i32 0, i32 0
  %110 = load i64, i64* %offset, align 8, !tbaa !109
  store i64 %110, i64* %offset_temp, align 8, !tbaa !58
  %cmp144 = icmp ne i64 %110, 0
  br i1 %cmp144, label %land.lhs.true.146, label %if.then.152

land.lhs.true.146:                                ; preds = %land.lhs.true.142
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %111, i32 0, i32 46
  %112 = load i8*, i8** %data, align 8, !tbaa !111
  %113 = load i64, i64* %offset_temp, align 8, !tbaa !58
  %add.ptr147 = getelementptr inbounds i8, i8* %112, i64 %113
  %114 = bitcast i8* %add.ptr147 to %struct.tile_slot*
  %id148 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %114, i32 0, i32 5
  %115 = load i64, i64* %id148, align 8, !tbaa !112
  %116 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %id149 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %116, i32 0, i32 3
  %117 = load i64, i64* %id149, align 8, !tbaa !106
  %cmp150 = icmp eq i64 %115, %117
  br i1 %cmp150, label %if.end.196, label %if.then.152

if.then.152:                                      ; preds = %land.lhs.true.146, %land.lhs.true.142, %if.end.138
  %118 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %id153 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %118, i32 0, i32 3
  %119 = load i64, i64* %id153, align 8, !tbaa !106
  %cmp154 = icmp ne i64 %119, 0
  br i1 %cmp154, label %if.then.156, label %if.else

if.then.156:                                      ; preds = %if.then.152
  br label %do.body.157

do.body.157:                                      ; preds = %land.end.167, %if.then.156
  %120 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls158 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %121 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls158, align 8, !tbaa !76
  %122 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %123 = load i32, i32* %depth, align 4, !tbaa !5
  %call159 = call i32 @clist_change_tile(%struct.gx_device_clist_writer_s* %120, %struct.gx_clist_state_s* %121, %struct.gx_strip_bitmap_s* %122, i32 %123) #4
  store i32 %call159, i32* %code, align 4, !tbaa !5
  br label %do.cond.160

do.cond.160:                                      ; preds = %do.body.157
  %124 = load i32, i32* %code, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %124, 0
  br i1 %cmp161, label %land.rhs.163, label %land.end.167

land.rhs.163:                                     ; preds = %do.cond.160
  %125 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %call164 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %125, i32 %126) #4
  store i32 %call164, i32* %code, align 4, !tbaa !5
  %cmp165 = icmp sge i32 %call164, 0
  br label %land.end.167

land.end.167:                                     ; preds = %land.rhs.163, %do.cond.160
  %127 = phi i1 [ false, %do.cond.160 ], [ %cmp165, %land.rhs.163 ]
  br i1 %127, label %do.body.157, label %do.end.168

do.end.168:                                       ; preds = %land.end.167
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %cmp169 = icmp slt i32 %128, 0
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.180

land.lhs.true.171:                                ; preds = %do.end.168
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %cmp172 = icmp ne i32 %129, -25
  br i1 %cmp172, label %if.end.180, label %lor.lhs.false.174

lor.lhs.false.174:                                ; preds = %land.lhs.true.171
  %130 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %130, i32 0, i32 94
  %131 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool175 = icmp ne i32 %131, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.180

land.lhs.true.176:                                ; preds = %lor.lhs.false.174
  %132 = load i32, i32* %code, align 4, !tbaa !5
  %band_code177 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %132, i32* %band_code177, align 4, !tbaa !80
  %tobool178 = icmp ne i32 %132, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %land.lhs.true.176
  br label %error_in_rect

if.end.180:                                       ; preds = %land.lhs.true.176, %lor.lhs.false.174, %land.lhs.true.171, %do.end.168
  br label %if.end.181

if.else:                                          ; preds = %if.then.152
  store i32 -1, i32* %code, align 4, !tbaa !5
  br label %if.end.181

if.end.181:                                       ; preds = %if.else, %if.end.180
  %133 = load i32, i32* %code, align 4, !tbaa !5
  %cmp182 = icmp slt i32 %133, 0
  br i1 %cmp182, label %if.then.184, label %if.end.195

if.then.184:                                      ; preds = %if.end.181
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %135 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !1
  %136 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y185 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %137 = load i32, i32* %y185, align 4, !tbaa !68
  %138 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height186 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %139 = load i32, i32* %height186, align 4, !tbaa !70
  %140 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %141 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %142 = load i32, i32* %px.addr, align 4, !tbaa !5
  %143 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call187 = call i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s* %134, %struct.gx_strip_bitmap_s* %135, i32 %136, i32 %137, i32 %138, i32 %139, i64 %140, i64 %141, i32 %142, i32 %143) #4
  store i32 %call187, i32* %code, align 4, !tbaa !5
  %144 = load i32, i32* %code, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %144, 0
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.194

land.lhs.true.190:                                ; preds = %if.then.184
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %band_code191 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %145, i32* %band_code191, align 4, !tbaa !80
  %tobool192 = icmp ne i32 %145, 0
  br i1 %tobool192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %land.lhs.true.190
  br label %error_in_rect

if.end.194:                                       ; preds = %land.lhs.true.190, %if.then.184
  br label %endr

if.end.195:                                       ; preds = %if.end.181
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %land.lhs.true.146
  br label %do.body.197

do.body.197:                                      ; preds = %land.end.245, %if.end.196
  store i32 0, i32* %code, align 4, !tbaa !5
  %146 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %pcls198 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %147 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls198, align 8, !tbaa !76
  %tile_colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %147, i32 0, i32 6
  %arrayidx199 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors, i32 0, i64 0
  %148 = load i64, i64* %arrayidx199, align 8, !tbaa !58
  %cmp200 = icmp ne i64 %146, %148
  br i1 %cmp200, label %if.then.208, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %do.body.197
  %149 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %pcls203 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %150 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls203, align 8, !tbaa !76
  %tile_colors204 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %150, i32 0, i32 6
  %arrayidx205 = getelementptr inbounds [2 x i64], [2 x i64]* %tile_colors204, i32 0, i64 1
  %151 = load i64, i64* %arrayidx205, align 8, !tbaa !58
  %cmp206 = icmp ne i64 %149, %151
  br i1 %cmp206, label %if.then.208, label %if.end.211

if.then.208:                                      ; preds = %lor.lhs.false.202, %do.body.197
  %152 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls209 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %153 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls209, align 8, !tbaa !76
  %154 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %155 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %call210 = call i32 @cmd_set_tile_colors(%struct.gx_device_clist_writer_s* %152, %struct.gx_clist_state_s* %153, i64 %154, i64 %155) #4
  store i32 %call210, i32* %code, align 4, !tbaa !5
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.208, %lor.lhs.false.202
  %156 = load i32, i32* %px.addr, align 4, !tbaa !5
  %pcls212 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %157 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls212, align 8, !tbaa !76
  %tile_phase = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %157, i32 0, i32 5
  %x213 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %158 = load i32, i32* %x213, align 4, !tbaa !115
  %cmp214 = icmp ne i32 %156, %158
  br i1 %cmp214, label %if.then.222, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %if.end.211
  %159 = load i32, i32* %py.addr, align 4, !tbaa !5
  %pcls217 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %160 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls217, align 8, !tbaa !76
  %tile_phase218 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %160, i32 0, i32 5
  %y219 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase218, i32 0, i32 1
  %161 = load i32, i32* %y219, align 4, !tbaa !116
  %cmp220 = icmp ne i32 %159, %161
  br i1 %cmp220, label %if.then.222, label %if.end.229

if.then.222:                                      ; preds = %lor.lhs.false.216, %if.end.211
  %162 = load i32, i32* %code, align 4, !tbaa !5
  %cmp223 = icmp sge i32 %162, 0
  br i1 %cmp223, label %if.then.225, label %if.end.228

if.then.225:                                      ; preds = %if.then.222
  %163 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls226 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %164 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls226, align 8, !tbaa !76
  %165 = load i32, i32* %px.addr, align 4, !tbaa !5
  %166 = load i32, i32* %py.addr, align 4, !tbaa !5
  %call227 = call i32 @cmd_set_tile_phase(%struct.gx_device_clist_writer_s* %163, %struct.gx_clist_state_s* %164, i32 %165, i32 %166) #4
  store i32 %call227, i32* %code, align 4, !tbaa !5
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.225, %if.then.222
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %lor.lhs.false.216
  %167 = load i32, i32* %code, align 4, !tbaa !5
  %cmp230 = icmp sge i32 %167, 0
  br i1 %cmp230, label %if.then.232, label %if.end.237

if.then.232:                                      ; preds = %if.end.229
  %168 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls233 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %169 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls233, align 8, !tbaa !76
  %170 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y234 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %171 = load i32, i32* %y234, align 4, !tbaa !68
  %172 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height235 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %173 = load i32, i32* %height235, align 4, !tbaa !70
  %call236 = call i32 @cmd_write_rect_cmd(%struct.gx_device_clist_writer_s* %168, %struct.gx_clist_state_s* %169, i32 96, i32 %170, i32 %171, i32 %172, i32 %173) #4
  store i32 %call236, i32* %code, align 4, !tbaa !5
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.232, %if.end.229
  br label %do.cond.238

do.cond.238:                                      ; preds = %if.end.237
  %174 = load i32, i32* %code, align 4, !tbaa !5
  %cmp239 = icmp slt i32 %174, 0
  br i1 %cmp239, label %land.rhs.241, label %land.end.245

land.rhs.241:                                     ; preds = %do.cond.238
  %175 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %176 = load i32, i32* %code, align 4, !tbaa !5
  %call242 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %175, i32 %176) #4
  store i32 %call242, i32* %code, align 4, !tbaa !5
  %cmp243 = icmp sge i32 %call242, 0
  br label %land.end.245

land.end.245:                                     ; preds = %land.rhs.241, %do.cond.238
  %177 = phi i1 [ false, %do.cond.238 ], [ %cmp243, %land.rhs.241 ]
  br i1 %177, label %do.body.197, label %do.end.246

do.end.246:                                       ; preds = %land.end.245
  %178 = load i32, i32* %code, align 4, !tbaa !5
  %cmp247 = icmp slt i32 %178, 0
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.253

land.lhs.true.249:                                ; preds = %do.end.246
  %179 = load i32, i32* %code, align 4, !tbaa !5
  %band_code250 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %179, i32* %band_code250, align 4, !tbaa !80
  %tobool251 = icmp ne i32 %179, 0
  br i1 %tobool251, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %land.lhs.true.249
  br label %error_in_rect

if.end.253:                                       ; preds = %land.lhs.true.249, %do.end.246
  br label %endr

endr:                                             ; preds = %if.end.253, %if.end.194
  %height254 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %180 = load i32, i32* %height254, align 4, !tbaa !70
  %y255 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %181 = load i32, i32* %y255, align 4, !tbaa !68
  %add256 = add nsw i32 %181, %180
  store i32 %add256, i32* %y255, align 4, !tbaa !68
  store i32 9, i32* %cleanup.dest.slot
  br label %cleanup

error_in_rect:                                    ; preds = %if.then.252, %if.then.193, %if.then.179, %if.then.137
  %182 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable257 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %182, i32 0, i32 94
  %183 = load i32, i32* %error_is_retryable257, align 4, !tbaa !81
  %tobool258 = icmp ne i32 %183, 0
  br i1 %tobool258, label %land.lhs.true.259, label %if.then.268

land.lhs.true.259:                                ; preds = %error_in_rect
  %184 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %184, i32 0, i32 96
  %185 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %cmp260 = icmp eq i32 %185, 0
  br i1 %cmp260, label %land.lhs.true.262, label %if.then.268

land.lhs.true.262:                                ; preds = %land.lhs.true.259
  %186 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code263 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %187 = load i32, i32* %band_code263, align 4, !tbaa !80
  %call264 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %186, i32 %187) #4
  %band_code265 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call264, i32* %band_code265, align 4, !tbaa !80
  %cmp266 = icmp sge i32 %call264, 0
  br i1 %cmp266, label %if.end.270, label %if.then.268

if.then.268:                                      ; preds = %land.lhs.true.262, %land.lhs.true.259, %error_in_rect
  %band_code269 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %188 = load i32, i32* %band_code269, align 4, !tbaa !80
  store i32 %188, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.270:                                       ; preds = %land.lhs.true.262
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.270, %if.then.268, %endr
  %189 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.277 [
    i32 0, label %cleanup.cont
    i32 9, label %do.cond.271
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond.271

do.cond.271:                                      ; preds = %cleanup.cont, %cleanup
  %y272 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %190 = load i32, i32* %y272, align 4, !tbaa !68
  %yend273 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %191 = load i32, i32* %yend273, align 4, !tbaa !71
  %cmp274 = icmp slt i32 %190, %191
  br i1 %cmp274, label %do.body.87, label %do.end.276

do.end.276:                                       ; preds = %do.cond.271
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.277

cleanup.277:                                      ; preds = %do.end.276, %cleanup, %if.then.63, %if.then.59
  %192 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %192) #1
  %193 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = load i32, i32* %retval
  ret i32 %197
}

declare i32 @gx_default_strip_tile_rectangle(%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32) #2

declare i32 @cmd_set_tile_colors(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @clist_copy_mono(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i64 %color0, i64 %color1) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %color0.addr = alloca i64, align 8
  %color1.addr = alloca i64, align 8
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %y0 = alloca i32, align 4
  %orig_id = alloca i64, align 8
  %color_usage = alloca i64, align 8
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %dx = alloca i32, align 4
  %w1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %code = alloca i32, align 4
  %rect = alloca %struct.gx_cmd_rect, align 4
  %rsize = alloca i32, align 4
  %op = alloca i8, align 1
  %dp = alloca i8*, align 8
  %csize = alloca i32, align 4
  %compress = alloca i32, align 4
  %code167 = alloca i32, align 4
  %w2 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i64 %color0, i64* %color0.addr, align 8, !tbaa !58
  store i64 %color1, i64* %color1.addr, align 8, !tbaa !58
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %orig_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %id.addr, align 8, !tbaa !58
  store i64 %5, i64* %orig_id, align 8, !tbaa !58
  %6 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %cmp = icmp eq i64 %7, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %call = call i64 @gx_color_index2usage(%struct.gx_device_s* %8, i64 %9) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  %10 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %cmp1 = icmp eq i64 %10, -1
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.5

cond.false.3:                                     ; preds = %cond.end
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %call4 = call i64 @gx_color_index2usage(%struct.gx_device_s* %11, i64 %12) #4
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.3, %cond.true.2
  %cond6 = phi i64 [ 0, %cond.true.2 ], [ %call4, %cond.false.3 ]
  %or = or i64 %cond, %cond6
  store i64 %or, i64* %color_usage, align 8, !tbaa !58
  %13 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %13) #1
  br label %do.body

do.body:                                          ; preds = %cond.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.body
  %14 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %or8 = or i32 %14, %15
  %cmp9 = icmp slt i32 %or8, 0
  br i1 %cmp9, label %if.then, label %if.end.16

if.then:                                          ; preds = %do.body.7
  %16 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %16, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %17 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %18 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  %19 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %20 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %19
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %21 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %21, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %22 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %23 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add14 = add nsw i32 %23, %22
  store i32 %add14, i32* %rheight.addr, align 4, !tbaa !5
  %24 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %25
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !58
  store i32 0, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %do.body.7
  %27 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !120
  %30 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub17 = sub nsw i32 %29, %30
  %cmp18 = icmp sgt i32 %27, %sub17
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.16
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width20, align 4, !tbaa !120
  %33 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %32, %33
  store i32 %sub21, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.16
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height, align 4, !tbaa !121
  %37 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub23 = sub nsw i32 %36, %37
  %cmp24 = icmp sgt i32 %34, %sub23
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %do.end
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height26, align 4, !tbaa !121
  %40 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub27 = sub nsw i32 %39, %40
  store i32 %sub27, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %do.end
  %41 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp29 = icmp sle i32 %41, 0
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %42 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %42, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.28
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

if.end.32:                                        ; preds = %lor.lhs.false
  br label %do.cond.33

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34

do.end.34:                                        ; preds = %do.cond.33
  %43 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %43, i32* %y0, align 4, !tbaa !5
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 95
  %45 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp35 = icmp slt i32 %45, 0
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %do.end.34
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error37 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 95
  %47 = load i32, i32* %permanent_error37, align 4, !tbaa !62
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

if.end.38:                                        ; preds = %do.end.34
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 81
  %49 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.end.38
  %50 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %51, i32* %x, align 4, !tbaa !64
  %52 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %53 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add40 = add nsw i32 %52, %53
  %sub41 = sub nsw i32 %add40, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub41, i32* %x42, align 4, !tbaa !65
  %54 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 1
  store i32 %54, i32* %y, align 4, !tbaa !66
  %55 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %56 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add44 = add nsw i32 %55, %56
  %sub45 = sub nsw i32 %add44, 1
  %q46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y47 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q46, i32 0, i32 1
  store i32 %sub45, i32* %y47, align 4, !tbaa !67
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %57, %struct.gs_int_rect_s* %bbox) #4
  %58 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.39, %if.end.38
  %59 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y49 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %59, i32* %y49, align 4, !tbaa !68
  %60 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height50 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %60, i32* %height50, align 4, !tbaa !70
  %y51 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %61 = load i32, i32* %y51, align 4, !tbaa !68
  %height52 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %62 = load i32, i32* %height52, align 4, !tbaa !70
  %add53 = add nsw i32 %61, %62
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add53, i32* %yend, align 4, !tbaa !71
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %64 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %64, i32* %band_height, align 4, !tbaa !73
  %yend54 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %65 = load i32, i32* %yend54, align 4, !tbaa !71
  %y55 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %66 = load i32, i32* %y55, align 4, !tbaa !68
  %sub56 = sub nsw i32 %65, %66
  %band_height57 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %67 = load i32, i32* %band_height57, align 4, !tbaa !73
  %add58 = add nsw i32 %sub56, %67
  %sub59 = sub nsw i32 %add58, 1
  %band_height60 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %68 = load i32, i32* %band_height60, align 4, !tbaa !73
  %div = sdiv i32 %sub59, %68
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.61

do.body.61:                                       ; preds = %do.cond.312, %if.end.48
  %69 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %and = and i32 %70, 7
  store i32 %and, i32* %dx, align 4, !tbaa !5
  %71 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %dx, align 4, !tbaa !5
  %73 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add62 = add nsw i32 %72, %73
  store i32 %add62, i32* %w1, align 4, !tbaa !5
  %74 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %74) #1
  %75 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %y63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %76 = load i32, i32* %y63, align 4, !tbaa !68
  %77 = load i32, i32* %y0, align 4, !tbaa !5
  %sub64 = sub nsw i32 %76, %77
  %78 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul65 = mul nsw i32 %sub64, %78
  %idx.ext66 = sext i32 %mul65 to i64
  %add.ptr67 = getelementptr inbounds i8, i8* %75, i64 %idx.ext66
  %79 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %shr = ashr i32 %79, 3
  %idx.ext68 = sext i32 %shr to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr67, i64 %idx.ext68
  store i8* %add.ptr69, i8** %row, align 8, !tbaa !1
  %80 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %y70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %81 = load i32, i32* %y70, align 4, !tbaa !68
  %band_height71 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %82 = load i32, i32* %band_height71, align 4, !tbaa !73
  %div72 = sdiv i32 %81, %82
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div72, i32* %band, align 4, !tbaa !75
  %83 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %83, i32 0, i32 66
  %84 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band73 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %85 = load i32, i32* %band73, align 4, !tbaa !75
  %idx.ext74 = sext i32 %85 to i64
  %add.ptr75 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %84, i64 %idx.ext74
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr75, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band76 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %86 = load i32, i32* %band76, align 4, !tbaa !75
  %add77 = add nsw i32 %86, 1
  %band_height78 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %87 = load i32, i32* %band_height78, align 4, !tbaa !73
  %mul79 = mul nsw i32 %add77, %87
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul79, i32* %band_end, align 4, !tbaa !77
  %band_end80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %88 = load i32, i32* %band_end80, align 4, !tbaa !77
  %yend81 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %89 = load i32, i32* %yend81, align 4, !tbaa !71
  %cmp82 = icmp slt i32 %88, %89
  br i1 %cmp82, label %cond.true.83, label %cond.false.85

cond.true.83:                                     ; preds = %do.body.61
  %band_end84 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %90 = load i32, i32* %band_end84, align 4, !tbaa !77
  br label %cond.end.87

cond.false.85:                                    ; preds = %do.body.61
  %yend86 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %91 = load i32, i32* %yend86, align 4, !tbaa !71
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.83
  %cond88 = phi i32 [ %90, %cond.true.83 ], [ %91, %cond.false.85 ]
  %y89 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %92 = load i32, i32* %y89, align 4, !tbaa !68
  %sub90 = sub nsw i32 %cond88, %92
  %height91 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub90, i32* %height91, align 4, !tbaa !70
  %93 = load i64, i64* %color_usage, align 8, !tbaa !58
  %pcls92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %94 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls92, align 8, !tbaa !76
  %color_usage93 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %94, i32 0, i32 16
  %or94 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage93, i32 0, i32 0
  %95 = load i64, i64* %or94, align 8, !tbaa !78
  %or95 = or i64 %95, %93
  store i64 %or95, i64* %or94, align 8, !tbaa !78
  br label %do.body.96

do.body.96:                                       ; preds = %land.end, %cond.end.87
  %pcls97 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %96 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls97, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %96, i32 0, i32 10
  %97 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv = sext i16 %97 to i32
  %cmp98 = icmp eq i32 %conv, 1
  br i1 %cmp98, label %land.lhs.true, label %cond.false.105

land.lhs.true:                                    ; preds = %do.body.96
  %98 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls100 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %99 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls100, align 8, !tbaa !76
  %call101 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %98, %struct.gx_clist_state_s* %99, i32 0) #4
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %land.lhs.true
  %100 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %100, i32 0, i32 65
  %101 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.106

cond.false.105:                                   ; preds = %land.lhs.true, %do.body.96
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i32 [ %101, %cond.true.104 ], [ 0, %cond.false.105 ]
  store i32 %cond107, i32* %code, align 4, !tbaa !5
  %102 = load i32, i32* %code, align 4, !tbaa !5
  %cmp108 = icmp sge i32 %102, 0
  br i1 %cmp108, label %if.then.110, label %if.end.125

if.then.110:                                      ; preds = %cond.end.106
  %pcls111 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %103 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls111, align 8, !tbaa !76
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %103, i32 0, i32 11
  %104 = load i16, i16* %clip_enabled, align 2, !tbaa !122
  %conv112 = sext i16 %104 to i32
  %cmp113 = icmp eq i32 %conv112, 1
  br i1 %cmp113, label %land.lhs.true.115, label %cond.false.122

land.lhs.true.115:                                ; preds = %if.then.110
  %105 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls116 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %106 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls116, align 8, !tbaa !76
  %call117 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %105, %struct.gx_clist_state_s* %106, i32 0) #4
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.122

cond.true.120:                                    ; preds = %land.lhs.true.115
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code121 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %107, i32 0, i32 65
  %108 = load i32, i32* %error_code121, align 4, !tbaa !20
  br label %cond.end.123

cond.false.122:                                   ; preds = %land.lhs.true.115, %if.then.110
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.120
  %cond124 = phi i32 [ %108, %cond.true.120 ], [ 0, %cond.false.122 ]
  store i32 %cond124, i32* %code, align 4, !tbaa !5
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.123, %cond.end.106
  %109 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %pcls126 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %110 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls126, align 8, !tbaa !76
  %colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %110, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %colors, i32 0, i64 0
  %111 = load i64, i64* %arrayidx, align 8, !tbaa !58
  %cmp127 = icmp ne i64 %109, %111
  br i1 %cmp127, label %land.lhs.true.129, label %if.end.138

land.lhs.true.129:                                ; preds = %if.end.125
  %112 = load i32, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp sge i32 %112, 0
  br i1 %cmp130, label %if.then.132, label %if.end.138

if.then.132:                                      ; preds = %land.lhs.true.129
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls133 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %114 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls133, align 8, !tbaa !76
  %115 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %pcls134 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %116 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls134, align 8, !tbaa !76
  %colors135 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %116, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [2 x i64], [2 x i64]* %colors135, i32 0, i64 0
  %call137 = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %113, %struct.gx_clist_state_s* %114, %struct.clist_select_color_t* @clist_select_color0, i64 %115, i64* %arrayidx136) #4
  store i32 %call137, i32* %code, align 4, !tbaa !5
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.132, %land.lhs.true.129, %if.end.125
  %117 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %pcls139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %118 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls139, align 8, !tbaa !76
  %colors140 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %118, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [2 x i64], [2 x i64]* %colors140, i32 0, i64 1
  %119 = load i64, i64* %arrayidx141, align 8, !tbaa !58
  %cmp142 = icmp ne i64 %117, %119
  br i1 %cmp142, label %land.lhs.true.144, label %if.end.153

land.lhs.true.144:                                ; preds = %if.end.138
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp145 = icmp sge i32 %120, 0
  br i1 %cmp145, label %if.then.147, label %if.end.153

if.then.147:                                      ; preds = %land.lhs.true.144
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls148 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %122 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls148, align 8, !tbaa !76
  %123 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %pcls149 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %124 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls149, align 8, !tbaa !76
  %colors150 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %124, i32 0, i32 0
  %arrayidx151 = getelementptr inbounds [2 x i64], [2 x i64]* %colors150, i32 0, i64 1
  %call152 = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %121, %struct.gx_clist_state_s* %122, %struct.clist_select_color_t* @clist_select_color1, i64 %123, i64* %arrayidx151) #4
  store i32 %call152, i32* %code, align 4, !tbaa !5
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.147, %land.lhs.true.144, %if.end.138
  br label %do.cond.154

do.cond.154:                                      ; preds = %if.end.153
  %125 = load i32, i32* %code, align 4, !tbaa !5
  %cmp155 = icmp slt i32 %125, 0
  br i1 %cmp155, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.154
  %126 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %call157 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %126, i32 %127) #4
  store i32 %call157, i32* %code, align 4, !tbaa !5
  %cmp158 = icmp sge i32 %call157, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.154
  %128 = phi i1 [ false, %do.cond.154 ], [ %cmp158, %land.rhs ]
  br i1 %128, label %do.body.96, label %do.end.160

do.end.160:                                       ; preds = %land.end
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %129, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.166

land.lhs.true.163:                                ; preds = %do.end.160
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %130, i32* %band_code, align 4, !tbaa !80
  %tobool164 = icmp ne i32 %130, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %land.lhs.true.163
  br label %error_in_rect

if.end.166:                                       ; preds = %land.lhs.true.163, %do.end.160
  br label %copy

copy:                                             ; preds = %cleanup.282, %if.end.166
  %131 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %131) #1
  %132 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %132) #1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  store i8 -112, i8* %op, align 1, !tbaa !51
  %133 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %133) #1
  %134 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %134) #1
  %135 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %code167 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %x168 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %137, i32* %x168, align 4, !tbaa !52
  %y169 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %138 = load i32, i32* %y169, align 4, !tbaa !68
  %y170 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  store i32 %138, i32* %y170, align 4, !tbaa !53
  %139 = load i32, i32* %w1, align 4, !tbaa !5
  %width171 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 2
  store i32 %139, i32* %width171, align 4, !tbaa !54
  %height172 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %140 = load i32, i32* %height172, align 4, !tbaa !70
  %height173 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 3
  store i32 %140, i32* %height173, align 4, !tbaa !55
  %141 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool174 = icmp ne i32 %141, 0
  %cond175 = select i1 %tobool174, i32 3, i32 1
  %call176 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect) #4
  %add177 = add nsw i32 %cond175, %call176
  %add178 = add nsw i32 %add177, 1
  store i32 %add178, i32* %rsize, align 4, !tbaa !5
  br label %do.body.179

do.body.179:                                      ; preds = %land.end.193, %copy
  %142 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls180 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %143 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls180, align 8, !tbaa !76
  %144 = load i8*, i8** %row, align 8, !tbaa !1
  %145 = load i32, i32* %w1, align 4, !tbaa !5
  %height181 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %146 = load i32, i32* %height181, align 4, !tbaa !70
  %147 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %148 = load i32, i32* %rsize, align 4, !tbaa !5
  %149 = load i64, i64* %orig_id, align 8, !tbaa !58
  %cmp182 = icmp eq i64 %149, 0
  %cond184 = select i1 %cmp182, i32 2, i32 14
  %call185 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %142, %struct.gx_clist_state_s* %143, i8* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %cond184, i8** %dp, i32* %csize) #4
  store i32 %call185, i32* %code167, align 4, !tbaa !5
  br label %do.cond.186

do.cond.186:                                      ; preds = %do.body.179
  %150 = load i32, i32* %code167, align 4, !tbaa !5
  %cmp187 = icmp slt i32 %150, 0
  br i1 %cmp187, label %land.rhs.189, label %land.end.193

land.rhs.189:                                     ; preds = %do.cond.186
  %151 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %152 = load i32, i32* %code167, align 4, !tbaa !5
  %call190 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %151, i32 %152) #4
  store i32 %call190, i32* %code167, align 4, !tbaa !5
  %cmp191 = icmp sge i32 %call190, 0
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.189, %do.cond.186
  %153 = phi i1 [ false, %do.cond.186 ], [ %cmp191, %land.rhs.189 ]
  br i1 %153, label %do.body.179, label %do.end.194

do.end.194:                                       ; preds = %land.end.193
  %154 = load i32, i32* %code167, align 4, !tbaa !5
  %cmp195 = icmp slt i32 %154, 0
  br i1 %cmp195, label %land.lhs.true.197, label %if.end.204

land.lhs.true.197:                                ; preds = %do.end.194
  %155 = load i32, i32* %code167, align 4, !tbaa !5
  %cmp198 = icmp eq i32 %155, -13
  br i1 %cmp198, label %if.end.204, label %land.lhs.true.200

land.lhs.true.200:                                ; preds = %land.lhs.true.197
  %156 = load i32, i32* %code167, align 4, !tbaa !5
  %band_code201 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %156, i32* %band_code201, align 4, !tbaa !80
  %tobool202 = icmp ne i32 %156, 0
  br i1 %tobool202, label %if.then.203, label %if.end.204

if.then.203:                                      ; preds = %land.lhs.true.200
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.204:                                       ; preds = %land.lhs.true.200, %land.lhs.true.197, %do.end.194
  %157 = load i32, i32* %code167, align 4, !tbaa !5
  store i32 %157, i32* %compress, align 4, !tbaa !5
  %158 = load i32, i32* %code167, align 4, !tbaa !5
  %cmp205 = icmp slt i32 %158, 0
  br i1 %cmp205, label %if.then.207, label %if.end.234

if.then.207:                                      ; preds = %if.end.204
  %height208 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %159 = load i32, i32* %height208, align 4, !tbaa !70
  %cmp209 = icmp sgt i32 %159, 1
  br i1 %cmp209, label %if.then.211, label %if.else

if.then.211:                                      ; preds = %if.then.207
  %height212 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %160 = load i32, i32* %height212, align 4, !tbaa !70
  %shr213 = ashr i32 %160, 1
  store i32 %shr213, i32* %height212, align 4, !tbaa !70
  store i32 11, i32* %cleanup.dest.slot
  br label %cleanup.282

if.else:                                          ; preds = %if.then.207
  %161 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = load i32, i32* %w1, align 4, !tbaa !5
  %shr214 = ashr i32 %162, 1
  store i32 %shr214, i32* %w2, align 4, !tbaa !5
  %163 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %163, i32 0, i32 96
  %164 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !82
  %165 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %166 = load i8*, i8** %row, align 8, !tbaa !1
  %167 = load i32, i32* %dx, align 4, !tbaa !5
  %168 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %169 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y215 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %170 = load i32, i32* %y215, align 4, !tbaa !68
  %171 = load i32, i32* %w2, align 4, !tbaa !5
  %172 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %173 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %call216 = call i32 @clist_copy_mono(%struct.gx_device_s* %165, i8* %166, i32 %167, i32 %168, i64 0, i32 %169, i32 %170, i32 %171, i32 1, i64 %172, i64 %173) #4
  store i32 %call216, i32* %code167, align 4, !tbaa !5
  %174 = load i32, i32* %code167, align 4, !tbaa !5
  %cmp217 = icmp sge i32 %174, 0
  br i1 %cmp217, label %if.then.219, label %if.end.225

if.then.219:                                      ; preds = %if.else
  %175 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %176 = load i8*, i8** %row, align 8, !tbaa !1
  %177 = load i32, i32* %dx, align 4, !tbaa !5
  %178 = load i32, i32* %w2, align 4, !tbaa !5
  %add220 = add nsw i32 %177, %178
  %179 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %180 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %181 = load i32, i32* %w2, align 4, !tbaa !5
  %add221 = add nsw i32 %180, %181
  %y222 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %182 = load i32, i32* %y222, align 4, !tbaa !68
  %183 = load i32, i32* %w1, align 4, !tbaa !5
  %184 = load i32, i32* %w2, align 4, !tbaa !5
  %sub223 = sub nsw i32 %183, %184
  %185 = load i64, i64* %color0.addr, align 8, !tbaa !58
  %186 = load i64, i64* %color1.addr, align 8, !tbaa !58
  %call224 = call i32 @clist_copy_mono(%struct.gx_device_s* %175, i8* %176, i32 %add220, i32 %179, i64 0, i32 %add221, i32 %182, i32 %sub223, i32 1, i64 %185, i64 %186) #4
  store i32 %call224, i32* %code167, align 4, !tbaa !5
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.219, %if.else
  %187 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting226 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %187, i32 0, i32 96
  %188 = load i32, i32* %driver_call_nesting226, align 4, !tbaa !82
  %dec = add nsw i32 %188, -1
  store i32 %dec, i32* %driver_call_nesting226, align 4, !tbaa !82
  %189 = load i32, i32* %code167, align 4, !tbaa !5
  %cmp227 = icmp slt i32 %189, 0
  br i1 %cmp227, label %land.lhs.true.229, label %if.end.233

land.lhs.true.229:                                ; preds = %if.end.225
  %190 = load i32, i32* %code167, align 4, !tbaa !5
  %band_code230 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %190, i32* %band_code230, align 4, !tbaa !80
  %tobool231 = icmp ne i32 %190, 0
  br i1 %tobool231, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %land.lhs.true.229
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.233:                                       ; preds = %land.lhs.true.229, %if.end.225
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.232, %if.end.233
  %191 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  br label %cleanup.282

if.end.234:                                       ; preds = %if.end.204
  %192 = load i32, i32* %compress, align 4, !tbaa !5
  %193 = load i8, i8* %op, align 1, !tbaa !51
  %conv235 = zext i8 %193 to i32
  %add236 = add i32 %conv235, %192
  %conv237 = trunc i32 %add236 to i8
  store i8 %conv237, i8* %op, align 1, !tbaa !51
  %194 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool238 = icmp ne i32 %194, 0
  br i1 %tobool238, label %if.then.239, label %if.end.243

if.then.239:                                      ; preds = %if.end.234
  %195 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  store i8 6, i8* %195, align 1, !tbaa !51
  %196 = load i32, i32* %dx, align 4, !tbaa !5
  %add240 = add nsw i32 64, %196
  %conv241 = trunc i32 %add240 to i8
  %197 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr242 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr242, i8** %dp, align 8, !tbaa !1
  store i8 %conv241, i8* %197, align 1, !tbaa !51
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.239, %if.end.234
  %198 = load i8, i8* %op, align 1, !tbaa !51
  %199 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr244 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr244, i8** %dp, align 8, !tbaa !1
  store i8 %198, i8* %199, align 1, !tbaa !51
  %200 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 0, i8* %200, align 1, !tbaa !51
  %201 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr245 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %incdec.ptr245, i8** %dp, align 8, !tbaa !1
  %202 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y246 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %203 = load i32, i32* %y246, align 4, !tbaa !68
  %or247 = or i32 %202, %203
  %and248 = and i32 %or247, -128
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %cond.false.257, label %cond.true.250

cond.true.250:                                    ; preds = %if.end.243
  %204 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %conv251 = trunc i32 %204 to i8
  %205 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds i8, i8* %205, i64 0
  store i8 %conv251, i8* %arrayidx252, align 1, !tbaa !51
  %y253 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %206 = load i32, i32* %y253, align 4, !tbaa !68
  %conv254 = trunc i32 %206 to i8
  %207 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %conv254, i8* %arrayidx255, align 1, !tbaa !51
  %208 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %208, i64 2
  store i8* %add.ptr256, i8** %dp, align 8, !tbaa !1
  br label %cond.end.261

cond.false.257:                                   ; preds = %if.end.243
  %y258 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %209 = load i32, i32* %y258, align 4, !tbaa !68
  %210 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %211 = load i8*, i8** %dp, align 8, !tbaa !1
  %call259 = call i8* @cmd_put_w(i32 %210, i8* %211) #4
  %call260 = call i8* @cmd_put_w(i32 %209, i8* %call259) #4
  store i8* %call260, i8** %dp, align 8, !tbaa !1
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.257, %cond.true.250
  %cond262 = phi i8* [ %add.ptr256, %cond.true.250 ], [ %call260, %cond.false.257 ]
  %212 = load i32, i32* %w1, align 4, !tbaa !5
  %height263 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %213 = load i32, i32* %height263, align 4, !tbaa !70
  %or264 = or i32 %212, %213
  %and265 = and i32 %or264, -128
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %cond.false.274, label %cond.true.267

cond.true.267:                                    ; preds = %cond.end.261
  %214 = load i32, i32* %w1, align 4, !tbaa !5
  %conv268 = trunc i32 %214 to i8
  %215 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %215, i64 0
  store i8 %conv268, i8* %arrayidx269, align 1, !tbaa !51
  %height270 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %216 = load i32, i32* %height270, align 4, !tbaa !70
  %conv271 = trunc i32 %216 to i8
  %217 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i8, i8* %217, i64 1
  store i8 %conv271, i8* %arrayidx272, align 1, !tbaa !51
  %218 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr273 = getelementptr inbounds i8, i8* %218, i64 2
  store i8* %add.ptr273, i8** %dp, align 8, !tbaa !1
  br label %cond.end.278

cond.false.274:                                   ; preds = %cond.end.261
  %height275 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %219 = load i32, i32* %height275, align 4, !tbaa !70
  %220 = load i32, i32* %w1, align 4, !tbaa !5
  %221 = load i8*, i8** %dp, align 8, !tbaa !1
  %call276 = call i8* @cmd_put_w(i32 %220, i8* %221) #4
  %call277 = call i8* @cmd_put_w(i32 %219, i8* %call276) #4
  store i8* %call277, i8** %dp, align 8, !tbaa !1
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.274, %cond.true.267
  %cond279 = phi i8* [ %add.ptr273, %cond.true.267 ], [ %call277, %cond.false.274 ]
  %pcls280 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %222 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls280, align 8, !tbaa !76
  %rect281 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %222, i32 0, i32 8
  %223 = bitcast %struct.gx_cmd_rect* %rect281 to i8*
  %224 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %224, i64 16, i32 4, i1 false), !tbaa.struct !123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.282

cleanup.282:                                      ; preds = %if.then.203, %cond.end.278, %cleanup, %if.then.211
  %225 = bitcast i32* %code167 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %229 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %230) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.306 [
    i32 0, label %cleanup.cont
    i32 11, label %copy
    i32 10, label %error_in_rect
  ]

cleanup.cont:                                     ; preds = %cleanup.282
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.306

error_in_rect:                                    ; preds = %cleanup.282, %if.then.165
  %231 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %231, i32 0, i32 94
  %232 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool289 = icmp ne i32 %232, 0
  br i1 %tobool289, label %land.lhs.true.290, label %if.then.300

land.lhs.true.290:                                ; preds = %error_in_rect
  %233 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting291 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %233, i32 0, i32 96
  %234 = load i32, i32* %driver_call_nesting291, align 4, !tbaa !82
  %cmp292 = icmp eq i32 %234, 0
  br i1 %cmp292, label %land.lhs.true.294, label %if.then.300

land.lhs.true.294:                                ; preds = %land.lhs.true.290
  %235 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code295 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %236 = load i32, i32* %band_code295, align 4, !tbaa !80
  %call296 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %235, i32 %236) #4
  %band_code297 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call296, i32* %band_code297, align 4, !tbaa !80
  %cmp298 = icmp sge i32 %call296, 0
  br i1 %cmp298, label %if.end.302, label %if.then.300

if.then.300:                                      ; preds = %land.lhs.true.294, %land.lhs.true.290, %error_in_rect
  %band_code301 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %237 = load i32, i32* %band_code301, align 4, !tbaa !80
  store i32 %237, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.306

if.end.302:                                       ; preds = %land.lhs.true.294
  %height303 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %238 = load i32, i32* %height303, align 4, !tbaa !70
  %y304 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %239 = load i32, i32* %y304, align 4, !tbaa !68
  %sub305 = sub nsw i32 %239, %238
  store i32 %sub305, i32* %y304, align 4, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.306

cleanup.306:                                      ; preds = %if.end.302, %if.then.300, %cleanup.cont, %cleanup.282
  %240 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #1
  %241 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %cleanup.dest.310 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.310, label %cleanup.320 [
    i32 0, label %cleanup.cont.311
    i32 7, label %do.cond.312
  ]

cleanup.cont.311:                                 ; preds = %cleanup.306
  br label %do.cond.312

do.cond.312:                                      ; preds = %cleanup.cont.311, %cleanup.306
  %height313 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %244 = load i32, i32* %height313, align 4, !tbaa !70
  %y314 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %245 = load i32, i32* %y314, align 4, !tbaa !68
  %add315 = add nsw i32 %245, %244
  store i32 %add315, i32* %y314, align 4, !tbaa !68
  %yend316 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %246 = load i32, i32* %yend316, align 4, !tbaa !71
  %cmp317 = icmp slt i32 %add315, %246
  br i1 %cmp317, label %do.body.61, label %do.end.319

do.end.319:                                       ; preds = %do.cond.312
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.320

cleanup.320:                                      ; preds = %do.end.319, %cleanup.306, %if.then.36, %if.then.31
  %247 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %247) #1
  %248 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %248) #1
  %249 = bitcast i64* %orig_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %249) #1
  %250 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #1
  %251 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %251) #1
  %252 = load i32, i32* %retval
  ret i32 %252
}

declare i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @cmd_put_bits(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i8*, i32, i32, i32, i32, i32, i8**, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @clist_copy_planes(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i32 %plane_height) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %plane_height.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %y0 = alloca i32, align 4
  %orig_id = alloca i64, align 8
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %bpc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %code = alloca i32, align 4
  %rect = alloca %struct.gx_cmd_rect, align 4
  %rsize = alloca i32, align 4
  %dp = alloca i8*, align 8
  %dp2 = alloca i8*, align 8
  %csize = alloca i32, align 4
  %op = alloca i8, align 1
  %dx = alloca i32, align 4
  %w1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %bytes_row = alloca i32, align 4
  %maxheight = alloca i32, align 4
  %w2 = alloca i32, align 4
  %plane = alloca i32, align 4
  %dummy_dp = alloca i8*, align 8
  %csize2 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i32 %plane_height, i32* %plane_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i64* %orig_id to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64, i64* %id.addr, align 8, !tbaa !58
  store i64 %5, i64* %orig_id, align 8, !tbaa !58
  %6 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %6) #1
  %7 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %9 = load i16, i16* %depth, align 2, !tbaa !124
  %conv = zext i16 %9 to i32
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !118
  %div = sdiv i32 %conv, %11
  store i32 %div, i32* %bpc, align 4, !tbaa !5
  %12 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %12, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %13 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %13, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %do.body
  %14 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %or = or i32 %14, %15
  %cmp6 = icmp slt i32 %or, 0
  br i1 %cmp6, label %if.then.8, label %if.end.18

if.then.8:                                        ; preds = %do.body.5
  %16 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %16, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  %17 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %18 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  %19 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %20 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %19
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  %21 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %21, 0
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %22 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %23 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add16 = add nsw i32 %23, %22
  store i32 %add16, i32* %rheight.addr, align 4, !tbaa !5
  %24 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %25
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !58
  store i32 0, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.body.5
  %27 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !120
  %30 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %29, %30
  %cmp20 = icmp sgt i32 %27, %sub19
  br i1 %cmp20, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.18
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width23, align 4, !tbaa !120
  %33 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %32, %33
  store i32 %sub24, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.18
  br label %do.cond

do.cond:                                          ; preds = %if.end.25
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height, align 4, !tbaa !121
  %37 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub26 = sub nsw i32 %36, %37
  %cmp27 = icmp sgt i32 %34, %sub26
  br i1 %cmp27, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %do.end
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height30, align 4, !tbaa !121
  %40 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub31 = sub nsw i32 %39, %40
  store i32 %sub31, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %do.end
  %41 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp33 = icmp sle i32 %41, 0
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end.32
  %42 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp36 = icmp sle i32 %42, 0
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false.35, %if.end.32
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end.39:                                        ; preds = %lor.lhs.false.35
  br label %do.cond.40

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %43 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %43, i32* %y0, align 4, !tbaa !5
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 95
  %45 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp42 = icmp slt i32 %45, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %do.end.41
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error45 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 95
  %47 = load i32, i32* %permanent_error45, align 4, !tbaa !62
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

if.end.46:                                        ; preds = %do.end.41
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 81
  %49 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.47, label %if.end.56

if.then.47:                                       ; preds = %if.end.46
  %50 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %51, i32* %x, align 4, !tbaa !64
  %52 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %53 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add48 = add nsw i32 %52, %53
  %sub49 = sub nsw i32 %add48, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub49, i32* %x50, align 4, !tbaa !65
  %54 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p51, i32 0, i32 1
  store i32 %54, i32* %y, align 4, !tbaa !66
  %55 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %56 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add52 = add nsw i32 %55, %56
  %sub53 = sub nsw i32 %add52, 1
  %q54 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y55 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q54, i32 0, i32 1
  store i32 %sub53, i32* %y55, align 4, !tbaa !67
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %57, %struct.gs_int_rect_s* %bbox) #4
  %58 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.47, %if.end.46
  %59 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y57 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %59, i32* %y57, align 4, !tbaa !68
  %60 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height58 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %60, i32* %height58, align 4, !tbaa !70
  %y59 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %61 = load i32, i32* %y59, align 4, !tbaa !68
  %height60 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %62 = load i32, i32* %height60, align 4, !tbaa !70
  %add61 = add nsw i32 %61, %62
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add61, i32* %yend, align 4, !tbaa !71
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %64 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %64, i32* %band_height, align 4, !tbaa !73
  %yend62 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %65 = load i32, i32* %yend62, align 4, !tbaa !71
  %y63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %66 = load i32, i32* %y63, align 4, !tbaa !68
  %sub64 = sub nsw i32 %65, %66
  %band_height65 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %67 = load i32, i32* %band_height65, align 4, !tbaa !73
  %add66 = add nsw i32 %sub64, %67
  %sub67 = sub nsw i32 %add66, 1
  %band_height68 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %68 = load i32, i32* %band_height68, align 4, !tbaa !73
  %div69 = sdiv i32 %sub67, %68
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div69, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.70

do.body.70:                                       ; preds = %do.cond.387, %if.end.56
  %69 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %70) #1
  %71 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast i8** %dp2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  store i8 -112, i8* %op, align 1, !tbaa !51
  %75 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %77 = load i32, i32* %bpc, align 4, !tbaa !5
  %div71 = sdiv i32 8, %77
  %rem = srem i32 %76, %div71
  store i32 %rem, i32* %dx, align 4, !tbaa !5
  %78 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %78) #1
  %79 = load i32, i32* %dx, align 4, !tbaa !5
  %80 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add72 = add nsw i32 %79, %80
  store i32 %add72, i32* %w1, align 4, !tbaa !5
  %81 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %81) #1
  %82 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %y73 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %83 = load i32, i32* %y73, align 4, !tbaa !68
  %84 = load i32, i32* %y0, align 4, !tbaa !5
  %sub74 = sub nsw i32 %83, %84
  %85 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul75 = mul nsw i32 %sub74, %85
  %idx.ext76 = sext i32 %mul75 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %82, i64 %idx.ext76
  %86 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %87 = load i32, i32* %bpc, align 4, !tbaa !5
  %div78 = sdiv i32 8, %87
  %div79 = sdiv i32 %86, %div78
  %idx.ext80 = sext i32 %div79 to i64
  %add.ptr81 = getelementptr inbounds i8, i8* %add.ptr77, i64 %idx.ext80
  store i8* %add.ptr81, i8** %row, align 8, !tbaa !1
  %88 = bitcast i32* %bytes_row to i8*
  call void @llvm.lifetime.start(i64 4, i8* %88) #1
  %89 = load i32, i32* %w1, align 4, !tbaa !5
  %90 = load i32, i32* %bpc, align 4, !tbaa !5
  %mul82 = mul nsw i32 %89, %90
  %add83 = add nsw i32 %mul82, 7
  %div84 = sdiv i32 %add83, 8
  %add85 = add nsw i32 %div84, 7
  %and = and i32 %add85, -8
  store i32 %and, i32* %bytes_row, align 4, !tbaa !5
  %91 = bitcast i32* %maxheight to i8*
  call void @llvm.lifetime.start(i64 4, i8* %91) #1
  %92 = load i32, i32* %bytes_row, align 4, !tbaa !5
  %div86 = sdiv i32 4096, %92
  %93 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info87 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %93, i32 0, i32 11
  %num_components88 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info87, i32 0, i32 1
  %94 = load i32, i32* %num_components88, align 4, !tbaa !125
  %div89 = sdiv i32 %div86, %94
  store i32 %div89, i32* %maxheight, align 4, !tbaa !5
  %y90 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %95 = load i32, i32* %y90, align 4, !tbaa !68
  %band_height91 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %96 = load i32, i32* %band_height91, align 4, !tbaa !73
  %div92 = sdiv i32 %95, %96
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div92, i32* %band, align 4, !tbaa !75
  %97 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %97, i32 0, i32 66
  %98 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band93 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %99 = load i32, i32* %band93, align 4, !tbaa !75
  %idx.ext94 = sext i32 %99 to i64
  %add.ptr95 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %98, i64 %idx.ext94
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr95, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band96 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %100 = load i32, i32* %band96, align 4, !tbaa !75
  %add97 = add nsw i32 %100, 1
  %band_height98 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %101 = load i32, i32* %band_height98, align 4, !tbaa !73
  %mul99 = mul nsw i32 %add97, %101
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul99, i32* %band_end, align 4, !tbaa !77
  %band_end100 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %102 = load i32, i32* %band_end100, align 4, !tbaa !77
  %yend101 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %103 = load i32, i32* %yend101, align 4, !tbaa !71
  %cmp102 = icmp slt i32 %102, %103
  br i1 %cmp102, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.70
  %band_end104 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %104 = load i32, i32* %band_end104, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.70
  %yend105 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %105 = load i32, i32* %yend105, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %104, %cond.true ], [ %105, %cond.false ]
  %y106 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %106 = load i32, i32* %y106, align 4, !tbaa !68
  %sub107 = sub nsw i32 %cond, %106
  %height108 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub107, i32* %height108, align 4, !tbaa !70
  br label %do.body.109

do.body.109:                                      ; preds = %land.end, %cond.end
  %pcls110 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %107 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls110, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %107, i32 0, i32 10
  %108 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv111 = sext i16 %108 to i32
  %cmp112 = icmp eq i32 %conv111, 1
  br i1 %cmp112, label %land.lhs.true, label %cond.false.118

land.lhs.true:                                    ; preds = %do.body.109
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls114 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %110 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls114, align 8, !tbaa !76
  %call = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %109, %struct.gx_clist_state_s* %110, i32 0) #4
  %cmp115 = icmp slt i32 %call, 0
  br i1 %cmp115, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %land.lhs.true
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %111, i32 0, i32 65
  %112 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.119

cond.false.118:                                   ; preds = %land.lhs.true, %do.body.109
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi i32 [ %112, %cond.true.117 ], [ 0, %cond.false.118 ]
  store i32 %cond120, i32* %code, align 4, !tbaa !5
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %cmp121 = icmp sge i32 %113, 0
  br i1 %cmp121, label %if.then.123, label %if.end.138

if.then.123:                                      ; preds = %cond.end.119
  %pcls124 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %114 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls124, align 8, !tbaa !76
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %114, i32 0, i32 11
  %115 = load i16, i16* %clip_enabled, align 2, !tbaa !122
  %conv125 = sext i16 %115 to i32
  %cmp126 = icmp eq i32 %conv125, 1
  br i1 %cmp126, label %land.lhs.true.128, label %cond.false.135

land.lhs.true.128:                                ; preds = %if.then.123
  %116 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls129 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %117 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls129, align 8, !tbaa !76
  %call130 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %116, %struct.gx_clist_state_s* %117, i32 0) #4
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %cond.true.133, label %cond.false.135

cond.true.133:                                    ; preds = %land.lhs.true.128
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code134 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %118, i32 0, i32 65
  %119 = load i32, i32* %error_code134, align 4, !tbaa !20
  br label %cond.end.136

cond.false.135:                                   ; preds = %land.lhs.true.128, %if.then.123
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.135, %cond.true.133
  %cond137 = phi i32 [ %119, %cond.true.133 ], [ 0, %cond.false.135 ]
  store i32 %cond137, i32* %code, align 4, !tbaa !5
  br label %if.end.138

if.end.138:                                       ; preds = %cond.end.136, %cond.end.119
  br label %do.cond.139

do.cond.139:                                      ; preds = %if.end.138
  %120 = load i32, i32* %code, align 4, !tbaa !5
  %cmp140 = icmp slt i32 %120, 0
  br i1 %cmp140, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.139
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %122 = load i32, i32* %code, align 4, !tbaa !5
  %call142 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %121, i32 %122) #4
  store i32 %call142, i32* %code, align 4, !tbaa !5
  %cmp143 = icmp sge i32 %call142, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.139
  %123 = phi i1 [ false, %do.cond.139 ], [ %cmp143, %land.rhs ]
  br i1 %123, label %do.body.109, label %do.end.145

do.end.145:                                       ; preds = %land.end
  %124 = load i32, i32* %code, align 4, !tbaa !5
  %cmp146 = icmp slt i32 %124, 0
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.151

land.lhs.true.148:                                ; preds = %do.end.145
  %125 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %125, i32* %band_code, align 4, !tbaa !80
  %tobool149 = icmp ne i32 %125, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.148
  br label %error_in_rect

if.end.151:                                       ; preds = %land.lhs.true.148, %do.end.145
  %height152 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %126 = load i32, i32* %height152, align 4, !tbaa !70
  %127 = load i32, i32* %maxheight, align 4, !tbaa !5
  %cmp153 = icmp sgt i32 %126, %127
  br i1 %cmp153, label %if.then.155, label %if.end.157

if.then.155:                                      ; preds = %if.end.151
  %128 = load i32, i32* %maxheight, align 4, !tbaa !5
  %height156 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %128, i32* %height156, align 4, !tbaa !70
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %if.end.151
  %height158 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %129 = load i32, i32* %height158, align 4, !tbaa !70
  %cmp159 = icmp eq i32 %129, 0
  br i1 %cmp159, label %if.then.161, label %if.end.182

if.then.161:                                      ; preds = %if.end.157
  %130 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %130) #1
  %131 = load i32, i32* %w1, align 4, !tbaa !5
  %shr = ashr i32 %131, 1
  store i32 %shr, i32* %w2, align 4, !tbaa !5
  %height162 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 1, i32* %height162, align 4, !tbaa !70
  %132 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %132, i32 0, i32 96
  %133 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !82
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %135 = load i8*, i8** %row, align 8, !tbaa !1
  %136 = load i32, i32* %dx, align 4, !tbaa !5
  %137 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %138 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y163 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %139 = load i32, i32* %y163, align 4, !tbaa !68
  %140 = load i32, i32* %w2, align 4, !tbaa !5
  %141 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %call164 = call i32 @clist_copy_planes(%struct.gx_device_s* %134, i8* %135, i32 %136, i32 %137, i64 0, i32 %138, i32 %139, i32 %140, i32 1, i32 %141) #4
  store i32 %call164, i32* %code, align 4, !tbaa !5
  %142 = load i32, i32* %code, align 4, !tbaa !5
  %cmp165 = icmp sge i32 %142, 0
  br i1 %cmp165, label %if.then.167, label %if.end.173

if.then.167:                                      ; preds = %if.then.161
  %143 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %144 = load i8*, i8** %row, align 8, !tbaa !1
  %145 = load i32, i32* %dx, align 4, !tbaa !5
  %146 = load i32, i32* %w2, align 4, !tbaa !5
  %add168 = add nsw i32 %145, %146
  %147 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %148 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %149 = load i32, i32* %w2, align 4, !tbaa !5
  %add169 = add nsw i32 %148, %149
  %y170 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %150 = load i32, i32* %y170, align 4, !tbaa !68
  %151 = load i32, i32* %w1, align 4, !tbaa !5
  %152 = load i32, i32* %w2, align 4, !tbaa !5
  %sub171 = sub nsw i32 %151, %152
  %153 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %call172 = call i32 @clist_copy_planes(%struct.gx_device_s* %143, i8* %144, i32 %add168, i32 %147, i64 0, i32 %add169, i32 %150, i32 %sub171, i32 1, i32 %153) #4
  store i32 %call172, i32* %code, align 4, !tbaa !5
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.167, %if.then.161
  %154 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting174 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %154, i32 0, i32 96
  %155 = load i32, i32* %driver_call_nesting174, align 4, !tbaa !82
  %dec = add nsw i32 %155, -1
  store i32 %dec, i32* %driver_call_nesting174, align 4, !tbaa !82
  %156 = load i32, i32* %code, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %156, 0
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.181

land.lhs.true.177:                                ; preds = %if.end.173
  %157 = load i32, i32* %code, align 4, !tbaa !5
  %band_code178 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %157, i32* %band_code178, align 4, !tbaa !80
  %tobool179 = icmp ne i32 %157, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %land.lhs.true.177
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.181:                                       ; preds = %land.lhs.true.177, %if.end.173
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.180, %if.end.181
  %158 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %cleanup.dest355 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest355, label %cleanup.373 [
    i32 10, label %error_in_rect
  ]

if.end.182:                                       ; preds = %if.end.157
  %159 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cend = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %159, i32 0, i32 69
  %160 = load i8*, i8** %cend, align 8, !tbaa !126
  %161 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %161, i32 0, i32 68
  %162 = load i8*, i8** %cnext, align 8, !tbaa !127
  %sub.ptr.lhs.cast = ptrtoint i8* %160 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %162 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %height183 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %163 = load i32, i32* %height183, align 4, !tbaa !70
  %164 = load i32, i32* %bytes_row, align 4, !tbaa !5
  %mul184 = mul nsw i32 %163, %164
  %165 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info185 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %165, i32 0, i32 11
  %num_components186 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info185, i32 0, i32 1
  %166 = load i32, i32* %num_components186, align 4, !tbaa !125
  %mul187 = mul nsw i32 %mul184, %166
  %add188 = add nsw i32 256, %mul187
  %conv189 = sext i32 %add188 to i64
  %cmp190 = icmp slt i64 %sub.ptr.sub, %conv189
  br i1 %cmp190, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %if.end.182
  %167 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %call193 = call i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s* %167, i8 zeroext 0) #4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %if.end.182
  %168 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %x195 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %168, i32* %x195, align 4, !tbaa !52
  %y196 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %169 = load i32, i32* %y196, align 4, !tbaa !68
  %y197 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  store i32 %169, i32* %y197, align 4, !tbaa !53
  %170 = load i32, i32* %w1, align 4, !tbaa !5
  %width198 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 2
  store i32 %170, i32* %width198, align 4, !tbaa !54
  %height199 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %171 = load i32, i32* %height199, align 4, !tbaa !70
  %height200 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 3
  store i32 %171, i32* %height200, align 4, !tbaa !55
  %172 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool201 = icmp ne i32 %172, 0
  %cond202 = select i1 %tobool201, i32 3, i32 1
  %call203 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect) #4
  %add204 = add nsw i32 %cond202, %call203
  %173 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %and205 = and i32 %173, -128
  %tobool206 = icmp ne i32 %and205, 0
  br i1 %tobool206, label %cond.false.208, label %cond.true.207

cond.true.207:                                    ; preds = %if.end.194
  br label %cond.end.216

cond.false.208:                                   ; preds = %if.end.194
  %174 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %and209 = and i32 %174, -16384
  %tobool210 = icmp ne i32 %and209, 0
  br i1 %tobool210, label %cond.false.212, label %cond.true.211

cond.true.211:                                    ; preds = %cond.false.208
  br label %cond.end.214

cond.false.212:                                   ; preds = %cond.false.208
  %175 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %call213 = call i32 @cmd_size_w(i32 %175) #4
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.212, %cond.true.211
  %cond215 = phi i32 [ 2, %cond.true.211 ], [ %call213, %cond.false.212 ]
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.end.214, %cond.true.207
  %cond217 = phi i32 [ 1, %cond.true.207 ], [ %cond215, %cond.end.214 ]
  %add218 = add nsw i32 %add204, %cond217
  store i32 %add218, i32* %rsize, align 4, !tbaa !5
  br label %do.body.219

do.body.219:                                      ; preds = %land.end.341, %cond.end.216
  %176 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %176) #1
  %177 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls220 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %178 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls220, align 8, !tbaa !76
  %179 = load i8*, i8** %row, align 8, !tbaa !1
  %180 = load i32, i32* %w1, align 4, !tbaa !5
  %181 = load i32, i32* %bpc, align 4, !tbaa !5
  %mul221 = mul nsw i32 %180, %181
  %height222 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %182 = load i32, i32* %height222, align 4, !tbaa !70
  %183 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %184 = load i32, i32* %rsize, align 4, !tbaa !5
  %185 = load i32, i32* %bpc, align 4, !tbaa !5
  %cmp223 = icmp eq i32 %185, 1
  br i1 %cmp223, label %cond.true.225, label %cond.false.229

cond.true.225:                                    ; preds = %do.body.219
  %186 = load i64, i64* %orig_id, align 8, !tbaa !58
  %cmp226 = icmp eq i64 %186, 0
  %cond228 = select i1 %cmp226, i32 2, i32 14
  br label %cond.end.230

cond.false.229:                                   ; preds = %do.body.219
  br label %cond.end.230

cond.end.230:                                     ; preds = %cond.false.229, %cond.true.225
  %cond231 = phi i32 [ %cond228, %cond.true.225 ], [ 0, %cond.false.229 ]
  %call232 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %177, %struct.gx_clist_state_s* %178, i8* %179, i32 %mul221, i32 %182, i32 %183, i32 %184, i32 %cond231, i8** %dp, i32* %csize) #4
  store i32 %call232, i32* %code, align 4, !tbaa !5
  %187 = load i32, i32* %code, align 4, !tbaa !5
  %cmp233 = icmp slt i32 %187, 0
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %cond.end.230
  store i32 12, i32* %cleanup.dest.slot
  br label %cleanup.333

if.end.236:                                       ; preds = %cond.end.230
  %188 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8* %188, i8** %dp2, align 8, !tbaa !1
  %189 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool237 = icmp ne i32 %189, 0
  br i1 %tobool237, label %if.then.238, label %if.end.242

if.then.238:                                      ; preds = %if.end.236
  %190 = load i8*, i8** %dp2, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %incdec.ptr, i8** %dp2, align 8, !tbaa !1
  store i8 6, i8* %190, align 1, !tbaa !51
  %191 = load i32, i32* %dx, align 4, !tbaa !5
  %add239 = add nsw i32 64, %191
  %conv240 = trunc i32 %add239 to i8
  %192 = load i8*, i8** %dp2, align 8, !tbaa !1
  %incdec.ptr241 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %incdec.ptr241, i8** %dp2, align 8, !tbaa !1
  store i8 %conv240, i8* %192, align 1, !tbaa !51
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.238, %if.end.236
  %193 = load i8, i8* %op, align 1, !tbaa !51
  %conv243 = zext i8 %193 to i32
  %194 = load i32, i32* %code, align 4, !tbaa !5
  %add244 = add nsw i32 %conv243, %194
  %conv245 = trunc i32 %add244 to i8
  %195 = load i8*, i8** %dp2, align 8, !tbaa !1
  %incdec.ptr246 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr246, i8** %dp2, align 8, !tbaa !1
  store i8 %conv245, i8* %195, align 1, !tbaa !51
  %196 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %and247 = and i32 %196, -128
  %tobool248 = icmp ne i32 %and247, 0
  br i1 %tobool248, label %cond.false.252, label %cond.true.249

cond.true.249:                                    ; preds = %if.end.242
  %197 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %conv250 = trunc i32 %197 to i8
  %198 = load i8*, i8** %dp2, align 8, !tbaa !1
  store i8 %conv250, i8* %198, align 1, !tbaa !51
  %199 = load i8*, i8** %dp2, align 8, !tbaa !1
  %incdec.ptr251 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %incdec.ptr251, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.265

cond.false.252:                                   ; preds = %if.end.242
  %200 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %and253 = and i32 %200, -16384
  %tobool254 = icmp ne i32 %and253, 0
  br i1 %tobool254, label %cond.false.261, label %cond.true.255

cond.true.255:                                    ; preds = %cond.false.252
  %201 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %or256 = or i32 %201, 128
  %conv257 = trunc i32 %or256 to i8
  %202 = load i8*, i8** %dp2, align 8, !tbaa !1
  store i8 %conv257, i8* %202, align 1, !tbaa !51
  %203 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %shr258 = ashr i32 %203, 7
  %conv259 = trunc i32 %shr258 to i8
  %204 = load i8*, i8** %dp2, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %204, i64 1
  store i8 %conv259, i8* %arrayidx, align 1, !tbaa !51
  %205 = load i8*, i8** %dp2, align 8, !tbaa !1
  %add.ptr260 = getelementptr inbounds i8, i8* %205, i64 2
  store i8* %add.ptr260, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.263

cond.false.261:                                   ; preds = %cond.false.252
  %206 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %207 = load i8*, i8** %dp2, align 8, !tbaa !1
  %call262 = call i8* @cmd_put_w(i32 %206, i8* %207) #4
  store i8* %call262, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.false.261, %cond.true.255
  %cond264 = phi i8* [ %add.ptr260, %cond.true.255 ], [ %call262, %cond.false.261 ]
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.end.263, %cond.true.249
  %cond266 = phi i8* [ %incdec.ptr251, %cond.true.249 ], [ %cond264, %cond.end.263 ]
  %208 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y267 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %209 = load i32, i32* %y267, align 4, !tbaa !68
  %or268 = or i32 %208, %209
  %and269 = and i32 %or268, -128
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %cond.false.278, label %cond.true.271

cond.true.271:                                    ; preds = %cond.end.265
  %210 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %conv272 = trunc i32 %210 to i8
  %211 = load i8*, i8** %dp2, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds i8, i8* %211, i64 0
  store i8 %conv272, i8* %arrayidx273, align 1, !tbaa !51
  %y274 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %212 = load i32, i32* %y274, align 4, !tbaa !68
  %conv275 = trunc i32 %212 to i8
  %213 = load i8*, i8** %dp2, align 8, !tbaa !1
  %arrayidx276 = getelementptr inbounds i8, i8* %213, i64 1
  store i8 %conv275, i8* %arrayidx276, align 1, !tbaa !51
  %214 = load i8*, i8** %dp2, align 8, !tbaa !1
  %add.ptr277 = getelementptr inbounds i8, i8* %214, i64 2
  store i8* %add.ptr277, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.282

cond.false.278:                                   ; preds = %cond.end.265
  %y279 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %215 = load i32, i32* %y279, align 4, !tbaa !68
  %216 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %217 = load i8*, i8** %dp2, align 8, !tbaa !1
  %call280 = call i8* @cmd_put_w(i32 %216, i8* %217) #4
  %call281 = call i8* @cmd_put_w(i32 %215, i8* %call280) #4
  store i8* %call281, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.278, %cond.true.271
  %cond283 = phi i8* [ %add.ptr277, %cond.true.271 ], [ %call281, %cond.false.278 ]
  %218 = load i32, i32* %w1, align 4, !tbaa !5
  %height284 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %219 = load i32, i32* %height284, align 4, !tbaa !70
  %or285 = or i32 %218, %219
  %and286 = and i32 %or285, -128
  %tobool287 = icmp ne i32 %and286, 0
  br i1 %tobool287, label %cond.false.295, label %cond.true.288

cond.true.288:                                    ; preds = %cond.end.282
  %220 = load i32, i32* %w1, align 4, !tbaa !5
  %conv289 = trunc i32 %220 to i8
  %221 = load i8*, i8** %dp2, align 8, !tbaa !1
  %arrayidx290 = getelementptr inbounds i8, i8* %221, i64 0
  store i8 %conv289, i8* %arrayidx290, align 1, !tbaa !51
  %height291 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %222 = load i32, i32* %height291, align 4, !tbaa !70
  %conv292 = trunc i32 %222 to i8
  %223 = load i8*, i8** %dp2, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds i8, i8* %223, i64 1
  store i8 %conv292, i8* %arrayidx293, align 1, !tbaa !51
  %224 = load i8*, i8** %dp2, align 8, !tbaa !1
  %add.ptr294 = getelementptr inbounds i8, i8* %224, i64 2
  store i8* %add.ptr294, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.299

cond.false.295:                                   ; preds = %cond.end.282
  %height296 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %225 = load i32, i32* %height296, align 4, !tbaa !70
  %226 = load i32, i32* %w1, align 4, !tbaa !5
  %227 = load i8*, i8** %dp2, align 8, !tbaa !1
  %call297 = call i8* @cmd_put_w(i32 %226, i8* %227) #4
  %call298 = call i8* @cmd_put_w(i32 %225, i8* %call297) #4
  store i8* %call298, i8** %dp2, align 8, !tbaa !1
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.295, %cond.true.288
  %cond300 = phi i8* [ %add.ptr294, %cond.true.288 ], [ %call298, %cond.false.295 ]
  store i32 1, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.299
  %228 = load i32, i32* %plane, align 4, !tbaa !5
  %229 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info301 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %229, i32 0, i32 11
  %num_components302 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info301, i32 0, i32 1
  %230 = load i32, i32* %num_components302, align 4, !tbaa !125
  %cmp303 = icmp slt i32 %228, %230
  br i1 %cmp303, label %land.rhs.305, label %land.end.308

land.rhs.305:                                     ; preds = %for.cond
  %231 = load i32, i32* %code, align 4, !tbaa !5
  %cmp306 = icmp sge i32 %231, 0
  br label %land.end.308

land.end.308:                                     ; preds = %land.rhs.305, %for.cond
  %232 = phi i1 [ false, %for.cond ], [ %cmp306, %land.rhs.305 ]
  br i1 %232, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.308
  %233 = bitcast i8** %dummy_dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %233) #1
  %234 = bitcast i32* %csize2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %234) #1
  %235 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls309 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %236 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls309, align 8, !tbaa !76
  %237 = load i8*, i8** %row, align 8, !tbaa !1
  %238 = load i32, i32* %plane_height.addr, align 4, !tbaa !5
  %239 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul310 = mul nsw i32 %238, %239
  %240 = load i32, i32* %plane, align 4, !tbaa !5
  %mul311 = mul nsw i32 %mul310, %240
  %idx.ext312 = sext i32 %mul311 to i64
  %add.ptr313 = getelementptr inbounds i8, i8* %237, i64 %idx.ext312
  %241 = load i32, i32* %w1, align 4, !tbaa !5
  %242 = load i32, i32* %bpc, align 4, !tbaa !5
  %mul314 = mul nsw i32 %241, %242
  %height315 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %243 = load i32, i32* %height315, align 4, !tbaa !70
  %244 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %245 = load i32, i32* %bpc, align 4, !tbaa !5
  %cmp316 = icmp eq i32 %245, 1
  br i1 %cmp316, label %cond.true.318, label %cond.false.322

cond.true.318:                                    ; preds = %for.body
  %246 = load i64, i64* %orig_id, align 8, !tbaa !58
  %cmp319 = icmp eq i64 %246, 0
  %cond321 = select i1 %cmp319, i32 2, i32 14
  br label %cond.end.323

cond.false.322:                                   ; preds = %for.body
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.318
  %cond324 = phi i32 [ %cond321, %cond.true.318 ], [ 0, %cond.false.322 ]
  %call325 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %235, %struct.gx_clist_state_s* %236, i8* %add.ptr313, i32 %mul314, i32 %243, i32 %244, i32 1, i32 %cond324, i8** %dummy_dp, i32* %csize2) #4
  store i32 %call325, i32* %code, align 4, !tbaa !5
  %247 = load i32, i32* %code, align 4, !tbaa !5
  %cmp326 = icmp sge i32 %247, 0
  br i1 %cmp326, label %if.then.328, label %if.end.330

if.then.328:                                      ; preds = %cond.end.323
  %248 = load i32, i32* %code, align 4, !tbaa !5
  %conv329 = trunc i32 %248 to i8
  %249 = load i8*, i8** %dummy_dp, align 8, !tbaa !1
  store i8 %conv329, i8* %249, align 1, !tbaa !51
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.328, %cond.end.323
  %250 = load i32, i32* %csize2, align 4, !tbaa !5
  %251 = load i32, i32* %csize, align 4, !tbaa !5
  %add331 = add i32 %251, %250
  store i32 %add331, i32* %csize, align 4, !tbaa !5
  %252 = bitcast i32* %csize2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast i8** %dummy_dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.330
  %254 = load i32, i32* %plane, align 4, !tbaa !5
  %inc332 = add nsw i32 %254, 1
  store i32 %inc332, i32* %plane, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %land.end.308
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.333

cleanup.333:                                      ; preds = %for.end, %if.then.235
  %255 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %255) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 12, label %do.cond.334
  ]

cleanup.cont:                                     ; preds = %cleanup.333
  br label %do.cond.334

do.cond.334:                                      ; preds = %cleanup.cont, %cleanup.333
  %256 = load i32, i32* %code, align 4, !tbaa !5
  %cmp335 = icmp slt i32 %256, 0
  br i1 %cmp335, label %land.rhs.337, label %land.end.341

land.rhs.337:                                     ; preds = %do.cond.334
  %257 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %258 = load i32, i32* %code, align 4, !tbaa !5
  %call338 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %257, i32 %258) #4
  store i32 %call338, i32* %code, align 4, !tbaa !5
  %cmp339 = icmp sge i32 %call338, 0
  br label %land.end.341

land.end.341:                                     ; preds = %land.rhs.337, %do.cond.334
  %259 = phi i1 [ false, %do.cond.334 ], [ %cmp339, %land.rhs.337 ]
  br i1 %259, label %do.body.219, label %do.end.342

do.end.342:                                       ; preds = %land.end.341
  %260 = load i32, i32* %code, align 4, !tbaa !5
  %cmp343 = icmp slt i32 %260, 0
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.352

land.lhs.true.345:                                ; preds = %do.end.342
  %261 = load i32, i32* %code, align 4, !tbaa !5
  %cmp346 = icmp eq i32 %261, -13
  br i1 %cmp346, label %if.end.352, label %land.lhs.true.348

land.lhs.true.348:                                ; preds = %land.lhs.true.345
  %262 = load i32, i32* %code, align 4, !tbaa !5
  %band_code349 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %262, i32* %band_code349, align 4, !tbaa !80
  %tobool350 = icmp ne i32 %262, 0
  br i1 %tobool350, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %land.lhs.true.348
  br label %error_in_rect

if.end.352:                                       ; preds = %land.lhs.true.348, %land.lhs.true.345, %do.end.342
  %pcls353 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %263 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls353, align 8, !tbaa !76
  %rect354 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %263, i32 0, i32 8
  %264 = bitcast %struct.gx_cmd_rect* %rect354 to i8*
  %265 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %264, i8* %265, i64 16, i32 4, i1 false), !tbaa.struct !123
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.373

error_in_rect:                                    ; preds = %cleanup, %if.then.351, %if.then.150
  %266 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %266, i32 0, i32 94
  %267 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool356 = icmp ne i32 %267, 0
  br i1 %tobool356, label %land.lhs.true.357, label %if.then.367

land.lhs.true.357:                                ; preds = %error_in_rect
  %268 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting358 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %268, i32 0, i32 96
  %269 = load i32, i32* %driver_call_nesting358, align 4, !tbaa !82
  %cmp359 = icmp eq i32 %269, 0
  br i1 %cmp359, label %land.lhs.true.361, label %if.then.367

land.lhs.true.361:                                ; preds = %land.lhs.true.357
  %270 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code362 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %271 = load i32, i32* %band_code362, align 4, !tbaa !80
  %call363 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %270, i32 %271) #4
  %band_code364 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call363, i32* %band_code364, align 4, !tbaa !80
  %cmp365 = icmp sge i32 %call363, 0
  br i1 %cmp365, label %if.end.369, label %if.then.367

if.then.367:                                      ; preds = %land.lhs.true.361, %land.lhs.true.357, %error_in_rect
  %band_code368 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %272 = load i32, i32* %band_code368, align 4, !tbaa !80
  store i32 %272, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.373

if.end.369:                                       ; preds = %land.lhs.true.361
  %height370 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %273 = load i32, i32* %height370, align 4, !tbaa !70
  %y371 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %274 = load i32, i32* %y371, align 4, !tbaa !68
  %sub372 = sub nsw i32 %274, %273
  store i32 %sub372, i32* %y371, align 4, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.373

cleanup.373:                                      ; preds = %if.end.369, %if.then.367, %cleanup, %if.end.352
  %275 = bitcast i32* %maxheight to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %bytes_row to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %280 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i8** %dp2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %281) #1
  %282 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %284) #1
  %285 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %cleanup.dest.385 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.385, label %cleanup.395 [
    i32 0, label %cleanup.cont.386
    i32 7, label %do.cond.387
  ]

cleanup.cont.386:                                 ; preds = %cleanup.373
  br label %do.cond.387

do.cond.387:                                      ; preds = %cleanup.cont.386, %cleanup.373
  %height388 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %286 = load i32, i32* %height388, align 4, !tbaa !70
  %y389 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %287 = load i32, i32* %y389, align 4, !tbaa !68
  %add390 = add nsw i32 %287, %286
  store i32 %add390, i32* %y389, align 4, !tbaa !68
  %yend391 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %288 = load i32, i32* %yend391, align 4, !tbaa !71
  %cmp392 = icmp slt i32 %add390, %288
  br i1 %cmp392, label %do.body.70, label %do.end.394

do.end.394:                                       ; preds = %do.cond.387
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.395

cleanup.395:                                      ; preds = %do.end.394, %cleanup.373, %if.then.44, %if.then.38, %if.then
  %289 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %289) #1
  %290 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %290) #1
  %291 = bitcast i64* %orig_id to i8*
  call void @llvm.lifetime.end(i64 8, i8* %291) #1
  %292 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %293) #1
  %294 = load i32, i32* %retval
  ret i32 %294

unreachable:                                      ; preds = %cleanup.333
  unreachable
}

declare i32 @cmd_write_buffer(%struct.gx_device_clist_writer_s*, i8 zeroext) #2

; Function Attrs: nounwind uwtable
define i32 @clist_copy_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %depth = alloca i32, align 4
  %y0 = alloca i32, align 4
  %data_x_bit = alloca i32, align 4
  %all = alloca i64, align 8
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %dx = alloca i32, align 4
  %w1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %code = alloca i32, align 4
  %dp = alloca i8*, align 8
  %rect = alloca %struct.gx_cmd_rect, align 4
  %rsize = alloca i32, align 4
  %op = alloca i8, align 1
  %dp171 = alloca i8*, align 8
  %csize = alloca i32, align 4
  %compress = alloca i32, align 4
  %w2 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 113
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  %5 = load i16, i16* %depth1, align 2, !tbaa !117
  %conv = zext i16 %5 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %6 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %data_x_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i64* %all to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %10 = load i32, i32* %num_components, align 4, !tbaa !125
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %all, align 8, !tbaa !58
  %11 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %11) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %12 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %13 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %or = or i32 %12, %13
  %cmp = icmp slt i32 %or, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %do.body.2
  %14 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %14, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %15 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %16 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  %17 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %18 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 %18, %17
  store i32 %sub7, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %19 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %19, 0
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %20 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %21 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %21, %20
  store i32 %add11, i32* %rheight.addr, align 4, !tbaa !5
  %22 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %23 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %22, %23
  %24 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !58
  store i32 0, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.2
  %25 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width, align 4, !tbaa !120
  %28 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %27, %28
  %cmp15 = icmp sgt i32 %25, %sub14
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.end.13
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 13
  %30 = load i32, i32* %width18, align 4, !tbaa !120
  %31 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub19 = sub nsw i32 %30, %31
  store i32 %sub19, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  br label %do.end

do.end:                                           ; preds = %do.cond
  %32 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height, align 4, !tbaa !121
  %35 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub21 = sub nsw i32 %34, %35
  %cmp22 = icmp sgt i32 %32, %sub21
  br i1 %cmp22, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %do.end
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height25 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height25, align 4, !tbaa !121
  %38 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub26 = sub nsw i32 %37, %38
  store i32 %sub26, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %do.end
  %39 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp28 = icmp sle i32 %39, 0
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.27
  %40 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %40, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false, %if.end.27
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.33:                                        ; preds = %lor.lhs.false
  br label %do.cond.34

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35

do.end.35:                                        ; preds = %do.cond.34
  %41 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %41, i32* %y0, align 4, !tbaa !5
  %42 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %43 = load i32, i32* %depth, align 4, !tbaa !5
  %mul36 = mul nsw i32 %42, %43
  store i32 %mul36, i32* %data_x_bit, align 4, !tbaa !5
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 95
  %45 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp37 = icmp slt i32 %45, 0
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %do.end.35
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error40 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 95
  %47 = load i32, i32* %permanent_error40, align 4, !tbaa !62
  store i32 %47, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.41:                                        ; preds = %do.end.35
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 81
  %49 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %49, 0
  br i1 %tobool, label %if.then.42, label %if.end.51

if.then.42:                                       ; preds = %if.end.41
  %50 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %50) #1
  %51 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %51, i32* %x, align 4, !tbaa !64
  %52 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %53 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add43 = add nsw i32 %52, %53
  %sub44 = sub nsw i32 %add43, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x45 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub44, i32* %x45, align 4, !tbaa !65
  %54 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p46 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p46, i32 0, i32 1
  store i32 %54, i32* %y, align 4, !tbaa !66
  %55 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %56 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add47 = add nsw i32 %55, %56
  %sub48 = sub nsw i32 %add47, 1
  %q49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q49, i32 0, i32 1
  store i32 %sub48, i32* %y50, align 4, !tbaa !67
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %57, %struct.gs_int_rect_s* %bbox) #4
  %58 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %58) #1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.42, %if.end.41
  %59 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y52 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %59, i32* %y52, align 4, !tbaa !68
  %60 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height53 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %60, i32* %height53, align 4, !tbaa !70
  %y54 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %61 = load i32, i32* %y54, align 4, !tbaa !68
  %height55 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %62 = load i32, i32* %height55, align 4, !tbaa !70
  %add56 = add nsw i32 %61, %62
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add56, i32* %yend, align 4, !tbaa !71
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %64 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %64, i32* %band_height, align 4, !tbaa !73
  %yend57 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %65 = load i32, i32* %yend57, align 4, !tbaa !71
  %y58 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %66 = load i32, i32* %y58, align 4, !tbaa !68
  %sub59 = sub nsw i32 %65, %66
  %band_height60 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %67 = load i32, i32* %band_height60, align 4, !tbaa !73
  %add61 = add nsw i32 %sub59, %67
  %sub62 = sub nsw i32 %add61, 1
  %band_height63 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %68 = load i32, i32* %band_height63, align 4, !tbaa !73
  %div = sdiv i32 %sub62, %68
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.64

do.body.64:                                       ; preds = %do.cond.313, %if.end.51
  %69 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %data_x_bit, align 4, !tbaa !5
  %and = and i32 %70, 7
  %71 = load i32, i32* %depth, align 4, !tbaa !5
  %div65 = sdiv i32 %and, %71
  store i32 %div65, i32* %dx, align 4, !tbaa !5
  %72 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %72) #1
  %73 = load i32, i32* %dx, align 4, !tbaa !5
  %74 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add66 = add nsw i32 %73, %74
  store i32 %add66, i32* %w1, align 4, !tbaa !5
  %75 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %y67 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %77 = load i32, i32* %y67, align 4, !tbaa !68
  %78 = load i32, i32* %y0, align 4, !tbaa !5
  %sub68 = sub nsw i32 %77, %78
  %79 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul69 = mul nsw i32 %sub68, %79
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %76, i64 %idx.ext70
  %80 = load i32, i32* %data_x_bit, align 4, !tbaa !5
  %shr = ashr i32 %80, 3
  %idx.ext72 = sext i32 %shr to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %add.ptr71, i64 %idx.ext72
  store i8* %add.ptr73, i8** %row, align 8, !tbaa !1
  %81 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %y74 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %82 = load i32, i32* %y74, align 4, !tbaa !68
  %band_height75 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %83 = load i32, i32* %band_height75, align 4, !tbaa !73
  %div76 = sdiv i32 %82, %83
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div76, i32* %band, align 4, !tbaa !75
  %84 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %84, i32 0, i32 66
  %85 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band77 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %86 = load i32, i32* %band77, align 4, !tbaa !75
  %idx.ext78 = sext i32 %86 to i64
  %add.ptr79 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %85, i64 %idx.ext78
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr79, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %87 = load i32, i32* %band80, align 4, !tbaa !75
  %add81 = add nsw i32 %87, 1
  %band_height82 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %88 = load i32, i32* %band_height82, align 4, !tbaa !73
  %mul83 = mul nsw i32 %add81, %88
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul83, i32* %band_end, align 4, !tbaa !77
  %band_end84 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %89 = load i32, i32* %band_end84, align 4, !tbaa !77
  %yend85 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %90 = load i32, i32* %yend85, align 4, !tbaa !71
  %cmp86 = icmp slt i32 %89, %90
  br i1 %cmp86, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.64
  %band_end88 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %91 = load i32, i32* %band_end88, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.64
  %yend89 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %92 = load i32, i32* %yend89, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %91, %cond.true ], [ %92, %cond.false ]
  %y90 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %93 = load i32, i32* %y90, align 4, !tbaa !68
  %sub91 = sub nsw i32 %cond, %93
  %height92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub91, i32* %height92, align 4, !tbaa !70
  %94 = load i64, i64* %all, align 8, !tbaa !58
  %pcls93 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %95 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls93, align 8, !tbaa !76
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %95, i32 0, i32 16
  %or94 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  %96 = load i64, i64* %or94, align 8, !tbaa !78
  %or95 = or i64 %96, %94
  store i64 %or95, i64* %or94, align 8, !tbaa !78
  br label %do.body.96

do.body.96:                                       ; preds = %land.end, %cond.end
  %pcls97 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %97 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls97, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %97, i32 0, i32 10
  %98 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv98 = sext i16 %98 to i32
  %cmp99 = icmp eq i32 %conv98, 1
  br i1 %cmp99, label %land.lhs.true, label %cond.false.105

land.lhs.true:                                    ; preds = %do.body.96
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls101 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %100 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls101, align 8, !tbaa !76
  %call = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %99, %struct.gx_clist_state_s* %100, i32 0) #4
  %cmp102 = icmp slt i32 %call, 0
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %land.lhs.true
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %101, i32 0, i32 65
  %102 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.106

cond.false.105:                                   ; preds = %land.lhs.true, %do.body.96
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.105, %cond.true.104
  %cond107 = phi i32 [ %102, %cond.true.104 ], [ 0, %cond.false.105 ]
  store i32 %cond107, i32* %code, align 4, !tbaa !5
  %103 = load i32, i32* %code, align 4, !tbaa !5
  %cmp108 = icmp sge i32 %103, 0
  br i1 %cmp108, label %if.then.110, label %if.end.125

if.then.110:                                      ; preds = %cond.end.106
  %pcls111 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %104 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls111, align 8, !tbaa !76
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %104, i32 0, i32 11
  %105 = load i16, i16* %clip_enabled, align 2, !tbaa !122
  %conv112 = sext i16 %105 to i32
  %cmp113 = icmp eq i32 %conv112, 1
  br i1 %cmp113, label %land.lhs.true.115, label %cond.false.122

land.lhs.true.115:                                ; preds = %if.then.110
  %106 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls116 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %107 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls116, align 8, !tbaa !76
  %call117 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %106, %struct.gx_clist_state_s* %107, i32 0) #4
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %cond.true.120, label %cond.false.122

cond.true.120:                                    ; preds = %land.lhs.true.115
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code121 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %108, i32 0, i32 65
  %109 = load i32, i32* %error_code121, align 4, !tbaa !20
  br label %cond.end.123

cond.false.122:                                   ; preds = %land.lhs.true.115, %if.then.110
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.122, %cond.true.120
  %cond124 = phi i32 [ %109, %cond.true.120 ], [ 0, %cond.false.122 ]
  store i32 %cond124, i32* %code, align 4, !tbaa !5
  br label %if.end.125

if.end.125:                                       ; preds = %cond.end.123, %cond.end.106
  br label %do.cond.126

do.cond.126:                                      ; preds = %if.end.125
  %110 = load i32, i32* %code, align 4, !tbaa !5
  %cmp127 = icmp slt i32 %110, 0
  br i1 %cmp127, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.126
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %112 = load i32, i32* %code, align 4, !tbaa !5
  %call129 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %111, i32 %112) #4
  store i32 %call129, i32* %code, align 4, !tbaa !5
  %cmp130 = icmp sge i32 %call129, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.126
  %113 = phi i1 [ false, %do.cond.126 ], [ %cmp130, %land.rhs ]
  br i1 %113, label %do.body.96, label %do.end.132

do.end.132:                                       ; preds = %land.end
  %114 = load i32, i32* %code, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %114, 0
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.138

land.lhs.true.135:                                ; preds = %do.end.132
  %115 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %115, i32* %band_code, align 4, !tbaa !80
  %tobool136 = icmp ne i32 %115, 0
  br i1 %tobool136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %land.lhs.true.135
  br label %error_in_rect

if.end.138:                                       ; preds = %land.lhs.true.135, %do.end.132
  %pcls139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %116 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls139, align 8, !tbaa !76
  %color_is_alpha = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %116, i32 0, i32 12
  %117 = load i32, i32* %color_is_alpha, align 4, !tbaa !128
  %tobool140 = icmp ne i32 %117, 0
  br i1 %tobool140, label %if.then.141, label %if.end.170

if.then.141:                                      ; preds = %if.end.138
  %118 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %118) #1
  br label %do.body.142

do.body.142:                                      ; preds = %land.end.159, %if.then.141
  %119 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls143 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %120 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls143, align 8, !tbaa !76
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %120, i32 0, i32 15
  %call144 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %119, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call144, i8** %dp, align 8, !tbaa !1
  %cmp145 = icmp eq i8* %call144, null
  br i1 %cmp145, label %cond.true.147, label %cond.false.149

cond.true.147:                                    ; preds = %do.body.142
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code148 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %121, i32 0, i32 65
  %122 = load i32, i32* %error_code148, align 4, !tbaa !20
  br label %cond.end.150

cond.false.149:                                   ; preds = %do.body.142
  %123 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 14, i8* %123, align 1, !tbaa !51
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.149, %cond.true.147
  %cond151 = phi i32 [ %122, %cond.true.147 ], [ 0, %cond.false.149 ]
  store i32 %cond151, i32* %code, align 4, !tbaa !5
  br label %do.cond.152

do.cond.152:                                      ; preds = %cond.end.150
  %124 = load i32, i32* %code, align 4, !tbaa !5
  %cmp153 = icmp slt i32 %124, 0
  br i1 %cmp153, label %land.rhs.155, label %land.end.159

land.rhs.155:                                     ; preds = %do.cond.152
  %125 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %call156 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %125, i32 %126) #4
  store i32 %call156, i32* %code, align 4, !tbaa !5
  %cmp157 = icmp sge i32 %call156, 0
  br label %land.end.159

land.end.159:                                     ; preds = %land.rhs.155, %do.cond.152
  %127 = phi i1 [ false, %do.cond.152 ], [ %cmp157, %land.rhs.155 ]
  br i1 %127, label %do.body.142, label %do.end.160

do.end.160:                                       ; preds = %land.end.159
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %cmp161 = icmp slt i32 %128, 0
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.167

land.lhs.true.163:                                ; preds = %do.end.160
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %band_code164 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %129, i32* %band_code164, align 4, !tbaa !80
  %tobool165 = icmp ne i32 %129, 0
  br i1 %tobool165, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %land.lhs.true.163
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.167:                                       ; preds = %land.lhs.true.163, %do.end.160
  %pcls168 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %130 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls168, align 8, !tbaa !76
  %color_is_alpha169 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %130, i32 0, i32 12
  store i32 0, i32* %color_is_alpha169, align 4, !tbaa !128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.166, %if.end.167
  %131 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.307 [
    i32 0, label %cleanup.cont
    i32 10, label %error_in_rect
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.170

if.end.170:                                       ; preds = %cleanup.cont, %if.end.138
  br label %copy

copy:                                             ; preds = %cleanup.282, %if.end.170
  %132 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %132) #1
  %133 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %133) #1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  store i8 -96, i8* %op, align 1, !tbaa !51
  %134 = bitcast i8** %dp171 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %134) #1
  %135 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %135) #1
  %136 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %136) #1
  %137 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %x172 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %137, i32* %x172, align 4, !tbaa !52
  %y173 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %138 = load i32, i32* %y173, align 4, !tbaa !68
  %y174 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  store i32 %138, i32* %y174, align 4, !tbaa !53
  %139 = load i32, i32* %w1, align 4, !tbaa !5
  %width175 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 2
  store i32 %139, i32* %width175, align 4, !tbaa !54
  %height176 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %140 = load i32, i32* %height176, align 4, !tbaa !70
  %height177 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 3
  store i32 %140, i32* %height177, align 4, !tbaa !55
  %141 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool178 = icmp ne i32 %141, 0
  %cond179 = select i1 %tobool178, i32 3, i32 1
  %call180 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect) #4
  %add181 = add nsw i32 %cond179, %call180
  store i32 %add181, i32* %rsize, align 4, !tbaa !5
  br label %do.body.182

do.body.182:                                      ; preds = %land.end.194, %copy
  %142 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls183 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %143 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls183, align 8, !tbaa !76
  %144 = load i8*, i8** %row, align 8, !tbaa !1
  %145 = load i32, i32* %w1, align 4, !tbaa !5
  %146 = load i32, i32* %depth, align 4, !tbaa !5
  %mul184 = mul nsw i32 %145, %146
  %height185 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %147 = load i32, i32* %height185, align 4, !tbaa !70
  %148 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %149 = load i32, i32* %rsize, align 4, !tbaa !5
  %call186 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %142, %struct.gx_clist_state_s* %143, i8* %144, i32 %mul184, i32 %147, i32 %148, i32 %149, i32 2, i8** %dp171, i32* %csize) #4
  store i32 %call186, i32* %code, align 4, !tbaa !5
  br label %do.cond.187

do.cond.187:                                      ; preds = %do.body.182
  %150 = load i32, i32* %code, align 4, !tbaa !5
  %cmp188 = icmp slt i32 %150, 0
  br i1 %cmp188, label %land.rhs.190, label %land.end.194

land.rhs.190:                                     ; preds = %do.cond.187
  %151 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %152 = load i32, i32* %code, align 4, !tbaa !5
  %call191 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %151, i32 %152) #4
  store i32 %call191, i32* %code, align 4, !tbaa !5
  %cmp192 = icmp sge i32 %call191, 0
  br label %land.end.194

land.end.194:                                     ; preds = %land.rhs.190, %do.cond.187
  %153 = phi i1 [ false, %do.cond.187 ], [ %cmp192, %land.rhs.190 ]
  br i1 %153, label %do.body.182, label %do.end.195

do.end.195:                                       ; preds = %land.end.194
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %cmp196 = icmp slt i32 %154, 0
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.205

land.lhs.true.198:                                ; preds = %do.end.195
  %155 = load i32, i32* %code, align 4, !tbaa !5
  %cmp199 = icmp eq i32 %155, -13
  br i1 %cmp199, label %if.end.205, label %land.lhs.true.201

land.lhs.true.201:                                ; preds = %land.lhs.true.198
  %156 = load i32, i32* %code, align 4, !tbaa !5
  %band_code202 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %156, i32* %band_code202, align 4, !tbaa !80
  %tobool203 = icmp ne i32 %156, 0
  br i1 %tobool203, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %land.lhs.true.201
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.282

if.end.205:                                       ; preds = %land.lhs.true.201, %land.lhs.true.198, %do.end.195
  %157 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %157, i32* %compress, align 4, !tbaa !5
  %158 = load i32, i32* %code, align 4, !tbaa !5
  %cmp206 = icmp slt i32 %158, 0
  br i1 %cmp206, label %if.then.208, label %if.end.236

if.then.208:                                      ; preds = %if.end.205
  %height209 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %159 = load i32, i32* %height209, align 4, !tbaa !70
  %cmp210 = icmp sgt i32 %159, 1
  br i1 %cmp210, label %if.then.212, label %if.else

if.then.212:                                      ; preds = %if.then.208
  %height213 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %160 = load i32, i32* %height213, align 4, !tbaa !70
  %shr214 = ashr i32 %160, 1
  store i32 %shr214, i32* %height213, align 4, !tbaa !70
  store i32 13, i32* %cleanup.dest.slot
  br label %cleanup.282

if.else:                                          ; preds = %if.then.208
  %161 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = load i32, i32* %w1, align 4, !tbaa !5
  %shr215 = ashr i32 %162, 1
  store i32 %shr215, i32* %w2, align 4, !tbaa !5
  %163 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %163, i32 0, i32 96
  %164 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %inc = add nsw i32 %164, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !82
  %165 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %166 = load i8*, i8** %row, align 8, !tbaa !1
  %167 = load i32, i32* %dx, align 4, !tbaa !5
  %168 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %169 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y216 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %170 = load i32, i32* %y216, align 4, !tbaa !68
  %171 = load i32, i32* %w2, align 4, !tbaa !5
  %call217 = call i32 @clist_copy_color(%struct.gx_device_s* %165, i8* %166, i32 %167, i32 %168, i64 0, i32 %169, i32 %170, i32 %171, i32 1) #4
  store i32 %call217, i32* %code, align 4, !tbaa !5
  %172 = load i32, i32* %code, align 4, !tbaa !5
  %cmp218 = icmp sge i32 %172, 0
  br i1 %cmp218, label %if.then.220, label %if.end.226

if.then.220:                                      ; preds = %if.else
  %173 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %174 = load i8*, i8** %row, align 8, !tbaa !1
  %175 = load i32, i32* %dx, align 4, !tbaa !5
  %176 = load i32, i32* %w2, align 4, !tbaa !5
  %add221 = add nsw i32 %175, %176
  %177 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %178 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %179 = load i32, i32* %w2, align 4, !tbaa !5
  %add222 = add nsw i32 %178, %179
  %y223 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %180 = load i32, i32* %y223, align 4, !tbaa !68
  %181 = load i32, i32* %w1, align 4, !tbaa !5
  %182 = load i32, i32* %w2, align 4, !tbaa !5
  %sub224 = sub nsw i32 %181, %182
  %call225 = call i32 @clist_copy_color(%struct.gx_device_s* %173, i8* %174, i32 %add221, i32 %177, i64 0, i32 %add222, i32 %180, i32 %sub224, i32 1) #4
  store i32 %call225, i32* %code, align 4, !tbaa !5
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.220, %if.else
  %183 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting227 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %183, i32 0, i32 96
  %184 = load i32, i32* %driver_call_nesting227, align 4, !tbaa !82
  %dec = add nsw i32 %184, -1
  store i32 %dec, i32* %driver_call_nesting227, align 4, !tbaa !82
  %185 = load i32, i32* %code, align 4, !tbaa !5
  %cmp228 = icmp slt i32 %185, 0
  br i1 %cmp228, label %land.lhs.true.230, label %if.end.234

land.lhs.true.230:                                ; preds = %if.end.226
  %186 = load i32, i32* %code, align 4, !tbaa !5
  %band_code231 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %186, i32* %band_code231, align 4, !tbaa !80
  %tobool232 = icmp ne i32 %186, 0
  br i1 %tobool232, label %if.then.233, label %if.end.234

if.then.233:                                      ; preds = %land.lhs.true.230
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.235

if.end.234:                                       ; preds = %land.lhs.true.230, %if.end.226
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.235

cleanup.235:                                      ; preds = %if.then.233, %if.end.234
  %187 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  br label %cleanup.282

if.end.236:                                       ; preds = %if.end.205
  %188 = load i32, i32* %compress, align 4, !tbaa !5
  %189 = load i8, i8* %op, align 1, !tbaa !51
  %conv237 = zext i8 %189 to i32
  %add238 = add i32 %conv237, %188
  %conv239 = trunc i32 %add238 to i8
  store i8 %conv239, i8* %op, align 1, !tbaa !51
  %190 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool240 = icmp ne i32 %190, 0
  br i1 %tobool240, label %if.then.241, label %if.end.245

if.then.241:                                      ; preds = %if.end.236
  %191 = load i8*, i8** %dp171, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr, i8** %dp171, align 8, !tbaa !1
  store i8 6, i8* %191, align 1, !tbaa !51
  %192 = load i32, i32* %dx, align 4, !tbaa !5
  %add242 = add nsw i32 64, %192
  %conv243 = trunc i32 %add242 to i8
  %193 = load i8*, i8** %dp171, align 8, !tbaa !1
  %incdec.ptr244 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %incdec.ptr244, i8** %dp171, align 8, !tbaa !1
  store i8 %conv243, i8* %193, align 1, !tbaa !51
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.241, %if.end.236
  %194 = load i8, i8* %op, align 1, !tbaa !51
  %195 = load i8*, i8** %dp171, align 8, !tbaa !1
  %incdec.ptr246 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr246, i8** %dp171, align 8, !tbaa !1
  store i8 %194, i8* %195, align 1, !tbaa !51
  %196 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y247 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %197 = load i32, i32* %y247, align 4, !tbaa !68
  %or248 = or i32 %196, %197
  %and249 = and i32 %or248, -128
  %tobool250 = icmp ne i32 %and249, 0
  br i1 %tobool250, label %cond.false.257, label %cond.true.251

cond.true.251:                                    ; preds = %if.end.245
  %198 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %conv252 = trunc i32 %198 to i8
  %199 = load i8*, i8** %dp171, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %199, i64 0
  store i8 %conv252, i8* %arrayidx, align 1, !tbaa !51
  %y253 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %200 = load i32, i32* %y253, align 4, !tbaa !68
  %conv254 = trunc i32 %200 to i8
  %201 = load i8*, i8** %dp171, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %201, i64 1
  store i8 %conv254, i8* %arrayidx255, align 1, !tbaa !51
  %202 = load i8*, i8** %dp171, align 8, !tbaa !1
  %add.ptr256 = getelementptr inbounds i8, i8* %202, i64 2
  store i8* %add.ptr256, i8** %dp171, align 8, !tbaa !1
  br label %cond.end.261

cond.false.257:                                   ; preds = %if.end.245
  %y258 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %203 = load i32, i32* %y258, align 4, !tbaa !68
  %204 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %205 = load i8*, i8** %dp171, align 8, !tbaa !1
  %call259 = call i8* @cmd_put_w(i32 %204, i8* %205) #4
  %call260 = call i8* @cmd_put_w(i32 %203, i8* %call259) #4
  store i8* %call260, i8** %dp171, align 8, !tbaa !1
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.false.257, %cond.true.251
  %cond262 = phi i8* [ %add.ptr256, %cond.true.251 ], [ %call260, %cond.false.257 ]
  %206 = load i32, i32* %w1, align 4, !tbaa !5
  %height263 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %207 = load i32, i32* %height263, align 4, !tbaa !70
  %or264 = or i32 %206, %207
  %and265 = and i32 %or264, -128
  %tobool266 = icmp ne i32 %and265, 0
  br i1 %tobool266, label %cond.false.274, label %cond.true.267

cond.true.267:                                    ; preds = %cond.end.261
  %208 = load i32, i32* %w1, align 4, !tbaa !5
  %conv268 = trunc i32 %208 to i8
  %209 = load i8*, i8** %dp171, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds i8, i8* %209, i64 0
  store i8 %conv268, i8* %arrayidx269, align 1, !tbaa !51
  %height270 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %210 = load i32, i32* %height270, align 4, !tbaa !70
  %conv271 = trunc i32 %210 to i8
  %211 = load i8*, i8** %dp171, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds i8, i8* %211, i64 1
  store i8 %conv271, i8* %arrayidx272, align 1, !tbaa !51
  %212 = load i8*, i8** %dp171, align 8, !tbaa !1
  %add.ptr273 = getelementptr inbounds i8, i8* %212, i64 2
  store i8* %add.ptr273, i8** %dp171, align 8, !tbaa !1
  br label %cond.end.278

cond.false.274:                                   ; preds = %cond.end.261
  %height275 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %213 = load i32, i32* %height275, align 4, !tbaa !70
  %214 = load i32, i32* %w1, align 4, !tbaa !5
  %215 = load i8*, i8** %dp171, align 8, !tbaa !1
  %call276 = call i8* @cmd_put_w(i32 %214, i8* %215) #4
  %call277 = call i8* @cmd_put_w(i32 %213, i8* %call276) #4
  store i8* %call277, i8** %dp171, align 8, !tbaa !1
  br label %cond.end.278

cond.end.278:                                     ; preds = %cond.false.274, %cond.true.267
  %cond279 = phi i8* [ %add.ptr273, %cond.true.267 ], [ %call277, %cond.false.274 ]
  %pcls280 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %216 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls280, align 8, !tbaa !76
  %rect281 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %216, i32 0, i32 8
  %217 = bitcast %struct.gx_cmd_rect* %rect281 to i8*
  %218 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 16, i32 4, i1 false), !tbaa.struct !123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.282

cleanup.282:                                      ; preds = %if.then.204, %cond.end.278, %cleanup.235, %if.then.212
  %219 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i8** %dp171 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %221) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %222 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %223) #1
  %cleanup.dest.288 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.288, label %cleanup.307 [
    i32 0, label %cleanup.cont.289
    i32 13, label %copy
    i32 10, label %error_in_rect
  ]

cleanup.cont.289:                                 ; preds = %cleanup.282
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.307

error_in_rect:                                    ; preds = %cleanup.282, %cleanup, %if.then.137
  %224 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %224, i32 0, i32 94
  %225 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool290 = icmp ne i32 %225, 0
  br i1 %tobool290, label %land.lhs.true.291, label %if.then.301

land.lhs.true.291:                                ; preds = %error_in_rect
  %226 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting292 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %226, i32 0, i32 96
  %227 = load i32, i32* %driver_call_nesting292, align 4, !tbaa !82
  %cmp293 = icmp eq i32 %227, 0
  br i1 %cmp293, label %land.lhs.true.295, label %if.then.301

land.lhs.true.295:                                ; preds = %land.lhs.true.291
  %228 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code296 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %229 = load i32, i32* %band_code296, align 4, !tbaa !80
  %call297 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %228, i32 %229) #4
  %band_code298 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call297, i32* %band_code298, align 4, !tbaa !80
  %cmp299 = icmp sge i32 %call297, 0
  br i1 %cmp299, label %if.end.303, label %if.then.301

if.then.301:                                      ; preds = %land.lhs.true.295, %land.lhs.true.291, %error_in_rect
  %band_code302 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %230 = load i32, i32* %band_code302, align 4, !tbaa !80
  store i32 %230, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.307

if.end.303:                                       ; preds = %land.lhs.true.295
  %height304 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %231 = load i32, i32* %height304, align 4, !tbaa !70
  %y305 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %232 = load i32, i32* %y305, align 4, !tbaa !68
  %sub306 = sub nsw i32 %232, %231
  store i32 %sub306, i32* %y305, align 4, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.307

cleanup.307:                                      ; preds = %if.end.303, %if.then.301, %cleanup.cont.289, %cleanup.282, %cleanup
  %233 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #1
  %234 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %234) #1
  %235 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %cleanup.dest.311 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.311, label %cleanup.321 [
    i32 0, label %cleanup.cont.312
    i32 7, label %do.cond.313
  ]

cleanup.cont.312:                                 ; preds = %cleanup.307
  br label %do.cond.313

do.cond.313:                                      ; preds = %cleanup.cont.312, %cleanup.307
  %height314 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %237 = load i32, i32* %height314, align 4, !tbaa !70
  %y315 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %238 = load i32, i32* %y315, align 4, !tbaa !68
  %add316 = add nsw i32 %238, %237
  store i32 %add316, i32* %y315, align 4, !tbaa !68
  %yend317 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %239 = load i32, i32* %yend317, align 4, !tbaa !71
  %cmp318 = icmp slt i32 %add316, %239
  br i1 %cmp318, label %do.body.64, label %do.end.320

do.end.320:                                       ; preds = %do.cond.313
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %do.end.320, %cleanup.307, %if.then.39, %if.then.32
  %240 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %240) #1
  %241 = bitcast i64* %all to i8*
  call void @llvm.lifetime.end(i64 8, i8* %241) #1
  %242 = bitcast i32* %data_x_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #1
  %243 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %243) #1
  %244 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %244) #1
  %245 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %245) #1
  %246 = load i32, i32* %retval
  ret i32 %246
}

; Function Attrs: nounwind uwtable
define i32 @clist_copy_alpha_hl_color(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, %struct.gx_device_color_s* %pdcolor, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %depth.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %log2_depth = alloca i32, align 4
  %y0 = alloca i32, align 4
  %data_x_bit = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %all = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %dx = alloca i32, align 4
  %w1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %code = alloca i32, align 4
  %dp = alloca i8*, align 8
  %dp169 = alloca i8*, align 8
  %rect = alloca %struct.gx_cmd_rect, align 4
  %rsize = alloca i32, align 4
  %op = alloca i8, align 1
  %dp216 = alloca i8*, align 8
  %csize = alloca i32, align 4
  %compress = alloca i32, align 4
  %w2 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 @ilog2(i32 %4) #4
  store i32 %call, i32* %log2_depth, align 4, !tbaa !5
  %5 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %data_x_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %7) #1
  %8 = bitcast i64* %all to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %10 = load i32, i32* %num_components, align 4, !tbaa !125
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %all, align 8, !tbaa !58
  %11 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 99
  %13 = load i32, i32* %disable_mask, align 4, !tbaa !129
  %and = and i32 %13, 64
  %cmp1 = icmp ne i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.369

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.body
  %14 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %or = or i32 %14, %15
  %cmp3 = icmp slt i32 %or, 0
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %do.body.2
  %16 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %16, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.4
  %17 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %18 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  %19 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %20 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub7 = sub nsw i32 %20, %19
  store i32 %sub7, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.4
  %21 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %22 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %23 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %23, %22
  store i32 %add11, i32* %rheight.addr, align 4, !tbaa !5
  %24 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %25
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !58
  store i32 0, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.2
  %27 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !120
  %30 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %29, %30
  %cmp15 = icmp sgt i32 %27, %sub14
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width17, align 4, !tbaa !120
  %33 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %32, %33
  store i32 %sub18, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height, align 4, !tbaa !121
  %37 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub20 = sub nsw i32 %36, %37
  %cmp21 = icmp sgt i32 %34, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height23, align 4, !tbaa !121
  %40 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %39, %40
  store i32 %sub24, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.end
  %41 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp26 = icmp sle i32 %41, 0
  br i1 %cmp26, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %42 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %42, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.369

if.end.29:                                        ; preds = %lor.lhs.false
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %43 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %43, i32* %y0, align 4, !tbaa !5
  %44 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %45 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl32 = shl i32 %44, %45
  store i32 %shl32, i32* %data_x_bit, align 4, !tbaa !5
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 95
  %47 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp33 = icmp slt i32 %47, 0
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %do.end.31
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error35 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 95
  %49 = load i32, i32* %permanent_error35, align 4, !tbaa !62
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.369

if.end.36:                                        ; preds = %do.end.31
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 81
  %51 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then.37, label %if.end.46

if.then.37:                                       ; preds = %if.end.36
  %52 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %52) #1
  %53 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %53, i32* %x, align 4, !tbaa !64
  %54 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %55 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add38 = add nsw i32 %54, %55
  %sub39 = sub nsw i32 %add38, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x40 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub39, i32* %x40, align 4, !tbaa !65
  %56 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p41 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p41, i32 0, i32 1
  store i32 %56, i32* %y, align 4, !tbaa !66
  %57 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %58 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add42 = add nsw i32 %57, %58
  %sub43 = sub nsw i32 %add42, 1
  %q44 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y45 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q44, i32 0, i32 1
  store i32 %sub43, i32* %y45, align 4, !tbaa !67
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %59, %struct.gs_int_rect_s* %bbox) #4
  %60 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.37, %if.end.36
  %61 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y47 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %61, i32* %y47, align 4, !tbaa !68
  %62 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height48 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %62, i32* %height48, align 4, !tbaa !70
  %y49 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %63 = load i32, i32* %y49, align 4, !tbaa !68
  %height50 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %64 = load i32, i32* %height50, align 4, !tbaa !70
  %add51 = add nsw i32 %63, %64
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add51, i32* %yend, align 4, !tbaa !71
  %65 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %65, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %66 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %66, i32* %band_height, align 4, !tbaa !73
  %yend52 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %67 = load i32, i32* %yend52, align 4, !tbaa !71
  %y53 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %68 = load i32, i32* %y53, align 4, !tbaa !68
  %sub54 = sub nsw i32 %67, %68
  %band_height55 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %69 = load i32, i32* %band_height55, align 4, !tbaa !73
  %add56 = add nsw i32 %sub54, %69
  %sub57 = sub nsw i32 %add56, 1
  %band_height58 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %70 = load i32, i32* %band_height58, align 4, !tbaa !73
  %div = sdiv i32 %sub57, %70
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.59

do.body.59:                                       ; preds = %do.cond.361, %if.end.46
  %71 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %data_x_bit, align 4, !tbaa !5
  %and60 = and i32 %72, 7
  %73 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shr = ashr i32 %and60, %73
  store i32 %shr, i32* %dx, align 4, !tbaa !5
  %74 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %dx, align 4, !tbaa !5
  %76 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add61 = add nsw i32 %75, %76
  store i32 %add61, i32* %w1, align 4, !tbaa !5
  %77 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %y62 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %79 = load i32, i32* %y62, align 4, !tbaa !68
  %80 = load i32, i32* %y0, align 4, !tbaa !5
  %sub63 = sub nsw i32 %79, %80
  %81 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul64 = mul nsw i32 %sub63, %81
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %78, i64 %idx.ext65
  %82 = load i32, i32* %data_x_bit, align 4, !tbaa !5
  %shr67 = ashr i32 %82, 3
  %idx.ext68 = sext i32 %shr67 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %add.ptr66, i64 %idx.ext68
  store i8* %add.ptr69, i8** %row, align 8, !tbaa !1
  %83 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %y70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %84 = load i32, i32* %y70, align 4, !tbaa !68
  %band_height71 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %85 = load i32, i32* %band_height71, align 4, !tbaa !73
  %div72 = sdiv i32 %84, %85
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div72, i32* %band, align 4, !tbaa !75
  %86 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %86, i32 0, i32 66
  %87 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band73 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %88 = load i32, i32* %band73, align 4, !tbaa !75
  %idx.ext74 = sext i32 %88 to i64
  %add.ptr75 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %87, i64 %idx.ext74
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr75, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band76 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %89 = load i32, i32* %band76, align 4, !tbaa !75
  %add77 = add nsw i32 %89, 1
  %band_height78 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %90 = load i32, i32* %band_height78, align 4, !tbaa !73
  %mul79 = mul nsw i32 %add77, %90
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul79, i32* %band_end, align 4, !tbaa !77
  %band_end80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %91 = load i32, i32* %band_end80, align 4, !tbaa !77
  %yend81 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %92 = load i32, i32* %yend81, align 4, !tbaa !71
  %cmp82 = icmp slt i32 %91, %92
  br i1 %cmp82, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.59
  %band_end83 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %93 = load i32, i32* %band_end83, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.59
  %yend84 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %94 = load i32, i32* %yend84, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %93, %cond.true ], [ %94, %cond.false ]
  %y85 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %95 = load i32, i32* %y85, align 4, !tbaa !68
  %sub86 = sub nsw i32 %cond, %95
  %height87 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub86, i32* %height87, align 4, !tbaa !70
  %96 = load i64, i64* %all, align 8, !tbaa !58
  %pcls88 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %97 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls88, align 8, !tbaa !76
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %97, i32 0, i32 16
  %or89 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  store i64 %96, i64* %or89, align 8, !tbaa !78
  br label %do.body.90

do.body.90:                                       ; preds = %land.end, %cond.end
  %pcls91 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %98 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls91, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %98, i32 0, i32 10
  %99 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv = sext i16 %99 to i32
  %cmp92 = icmp eq i32 %conv, 1
  br i1 %cmp92, label %land.lhs.true.94, label %cond.false.100

land.lhs.true.94:                                 ; preds = %do.body.90
  %100 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls95 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %101 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls95, align 8, !tbaa !76
  %call96 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %100, %struct.gx_clist_state_s* %101, i32 0) #4
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %land.lhs.true.94
  %102 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %102, i32 0, i32 65
  %103 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.101

cond.false.100:                                   ; preds = %land.lhs.true.94, %do.body.90
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi i32 [ %103, %cond.true.99 ], [ 0, %cond.false.100 ]
  store i32 %cond102, i32* %code, align 4, !tbaa !5
  %104 = load i32, i32* %code, align 4, !tbaa !5
  %cmp103 = icmp sge i32 %104, 0
  br i1 %cmp103, label %if.then.105, label %if.end.120

if.then.105:                                      ; preds = %cond.end.101
  %pcls106 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %105 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls106, align 8, !tbaa !76
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %105, i32 0, i32 11
  %106 = load i16, i16* %clip_enabled, align 2, !tbaa !122
  %conv107 = sext i16 %106 to i32
  %cmp108 = icmp eq i32 %conv107, 1
  br i1 %cmp108, label %land.lhs.true.110, label %cond.false.117

land.lhs.true.110:                                ; preds = %if.then.105
  %107 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls111 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %108 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls111, align 8, !tbaa !76
  %call112 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %107, %struct.gx_clist_state_s* %108, i32 0) #4
  %cmp113 = icmp slt i32 %call112, 0
  br i1 %cmp113, label %cond.true.115, label %cond.false.117

cond.true.115:                                    ; preds = %land.lhs.true.110
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code116 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 65
  %110 = load i32, i32* %error_code116, align 4, !tbaa !20
  br label %cond.end.118

cond.false.117:                                   ; preds = %land.lhs.true.110, %if.then.105
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.117, %cond.true.115
  %cond119 = phi i32 [ %110, %cond.true.115 ], [ 0, %cond.false.117 ]
  store i32 %cond119, i32* %code, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %cond.end.118, %cond.end.101
  br label %do.cond.121

do.cond.121:                                      ; preds = %if.end.120
  %111 = load i32, i32* %code, align 4, !tbaa !5
  %cmp122 = icmp slt i32 %111, 0
  br i1 %cmp122, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.121
  %112 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %113 = load i32, i32* %code, align 4, !tbaa !5
  %call124 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %112, i32 %113) #4
  store i32 %call124, i32* %code, align 4, !tbaa !5
  %cmp125 = icmp sge i32 %call124, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.121
  %114 = phi i1 [ false, %do.cond.121 ], [ %cmp125, %land.rhs ]
  br i1 %114, label %do.body.90, label %do.end.127

do.end.127:                                       ; preds = %land.end
  %115 = load i32, i32* %code, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %115, 0
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.133

land.lhs.true.130:                                ; preds = %do.end.127
  %116 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %116, i32* %band_code, align 4, !tbaa !80
  %tobool131 = icmp ne i32 %116, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true.130
  br label %error_in_rect

if.end.133:                                       ; preds = %land.lhs.true.130, %do.end.127
  %pcls134 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %117 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls134, align 8, !tbaa !76
  %color_is_alpha = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %117, i32 0, i32 12
  %118 = load i32, i32* %color_is_alpha, align 4, !tbaa !128
  %tobool135 = icmp ne i32 %118, 0
  br i1 %tobool135, label %if.end.165, label %if.then.136

if.then.136:                                      ; preds = %if.end.133
  %119 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %119) #1
  br label %do.body.137

do.body.137:                                      ; preds = %land.end.154, %if.then.136
  %120 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls138 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %121 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls138, align 8, !tbaa !76
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %121, i32 0, i32 15
  %call139 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %120, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call139, i8** %dp, align 8, !tbaa !1
  %cmp140 = icmp eq i8* %call139, null
  br i1 %cmp140, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %do.body.137
  %122 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code143 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %122, i32 0, i32 65
  %123 = load i32, i32* %error_code143, align 4, !tbaa !20
  br label %cond.end.145

cond.false.144:                                   ; preds = %do.body.137
  %124 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 15, i8* %124, align 1, !tbaa !51
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.144, %cond.true.142
  %cond146 = phi i32 [ %123, %cond.true.142 ], [ 0, %cond.false.144 ]
  store i32 %cond146, i32* %code, align 4, !tbaa !5
  br label %do.cond.147

do.cond.147:                                      ; preds = %cond.end.145
  %125 = load i32, i32* %code, align 4, !tbaa !5
  %cmp148 = icmp slt i32 %125, 0
  br i1 %cmp148, label %land.rhs.150, label %land.end.154

land.rhs.150:                                     ; preds = %do.cond.147
  %126 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %call151 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %126, i32 %127) #4
  store i32 %call151, i32* %code, align 4, !tbaa !5
  %cmp152 = icmp sge i32 %call151, 0
  br label %land.end.154

land.end.154:                                     ; preds = %land.rhs.150, %do.cond.147
  %128 = phi i1 [ false, %do.cond.147 ], [ %cmp152, %land.rhs.150 ]
  br i1 %128, label %do.body.137, label %do.end.155

do.end.155:                                       ; preds = %land.end.154
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %cmp156 = icmp slt i32 %129, 0
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.162

land.lhs.true.158:                                ; preds = %do.end.155
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %band_code159 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %130, i32* %band_code159, align 4, !tbaa !80
  %tobool160 = icmp ne i32 %130, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %land.lhs.true.158
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.162:                                       ; preds = %land.lhs.true.158, %do.end.155
  %pcls163 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %131 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls163, align 8, !tbaa !76
  %color_is_alpha164 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %131, i32 0, i32 12
  store i32 1, i32* %color_is_alpha164, align 4, !tbaa !128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.161, %if.end.162
  %132 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.355 [
    i32 0, label %cleanup.cont
    i32 10, label %error_in_rect
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.165

if.end.165:                                       ; preds = %cleanup.cont, %if.end.133
  %pcls166 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %133 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls166, align 8, !tbaa !76
  %color_is_devn = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %133, i32 0, i32 13
  %134 = load i32, i32* %color_is_devn, align 4, !tbaa !130
  %tobool167 = icmp ne i32 %134, 0
  br i1 %tobool167, label %if.end.203, label %if.then.168

if.then.168:                                      ; preds = %if.end.165
  %135 = bitcast i8** %dp169 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #1
  br label %do.body.170

do.body.170:                                      ; preds = %land.end.189, %if.then.168
  %136 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls171 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %137 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls171, align 8, !tbaa !76
  %list172 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %137, i32 0, i32 15
  %call173 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %136, %struct.cmd_list_s* %list172, i32 2) #4
  store i8* %call173, i8** %dp169, align 8, !tbaa !1
  %cmp174 = icmp eq i8* %call173, null
  br i1 %cmp174, label %cond.true.176, label %cond.false.178

cond.true.176:                                    ; preds = %do.body.170
  %138 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code177 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %138, i32 0, i32 65
  %139 = load i32, i32* %error_code177, align 4, !tbaa !20
  br label %cond.end.179

cond.false.178:                                   ; preds = %do.body.170
  %140 = load i8*, i8** %dp169, align 8, !tbaa !1
  store i8 -33, i8* %140, align 1, !tbaa !51
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.178, %cond.true.176
  %cond180 = phi i32 [ %139, %cond.true.176 ], [ 0, %cond.false.178 ]
  store i32 %cond180, i32* %code, align 4, !tbaa !5
  %141 = load i8*, i8** %dp169, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %141, i64 1
  store i8 8, i8* %arrayidx, align 1, !tbaa !51
  %142 = load i8*, i8** %dp169, align 8, !tbaa !1
  %add.ptr181 = getelementptr inbounds i8, i8* %142, i64 2
  store i8* %add.ptr181, i8** %dp169, align 8, !tbaa !1
  br label %do.cond.182

do.cond.182:                                      ; preds = %cond.end.179
  %143 = load i32, i32* %code, align 4, !tbaa !5
  %cmp183 = icmp slt i32 %143, 0
  br i1 %cmp183, label %land.rhs.185, label %land.end.189

land.rhs.185:                                     ; preds = %do.cond.182
  %144 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %call186 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %144, i32 %145) #4
  store i32 %call186, i32* %code, align 4, !tbaa !5
  %cmp187 = icmp sge i32 %call186, 0
  br label %land.end.189

land.end.189:                                     ; preds = %land.rhs.185, %do.cond.182
  %146 = phi i1 [ false, %do.cond.182 ], [ %cmp187, %land.rhs.185 ]
  br i1 %146, label %do.body.170, label %do.end.190

do.end.190:                                       ; preds = %land.end.189
  %147 = load i32, i32* %code, align 4, !tbaa !5
  %cmp191 = icmp slt i32 %147, 0
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.197

land.lhs.true.193:                                ; preds = %do.end.190
  %148 = load i32, i32* %code, align 4, !tbaa !5
  %band_code194 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %148, i32* %band_code194, align 4, !tbaa !80
  %tobool195 = icmp ne i32 %148, 0
  br i1 %tobool195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %land.lhs.true.193
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.200

if.end.197:                                       ; preds = %land.lhs.true.193, %do.end.190
  %pcls198 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %149 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls198, align 8, !tbaa !76
  %color_is_alpha199 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %149, i32 0, i32 12
  store i32 1, i32* %color_is_alpha199, align 4, !tbaa !128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.200

cleanup.200:                                      ; preds = %if.then.196, %if.end.197
  %150 = bitcast i8** %dp169 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %cleanup.dest.201 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.201, label %cleanup.355 [
    i32 0, label %cleanup.cont.202
    i32 10, label %error_in_rect
  ]

cleanup.cont.202:                                 ; preds = %cleanup.200
  br label %if.end.203

if.end.203:                                       ; preds = %cleanup.cont.202, %if.end.165
  br label %do.body.204

do.body.204:                                      ; preds = %land.end.214, %if.end.203
  %151 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls205 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %152 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls205, align 8, !tbaa !76
  %153 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %call206 = call i32 @cmd_put_drawing_color(%struct.gx_device_clist_writer_s* %151, %struct.gx_clist_state_s* %152, %struct.gx_device_color_s* %153, %struct.cmd_rects_enum_s* %re, i32 0) #4
  store i32 %call206, i32* %code, align 4, !tbaa !5
  br label %do.cond.207

do.cond.207:                                      ; preds = %do.body.204
  %154 = load i32, i32* %code, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %154, 0
  br i1 %cmp208, label %land.rhs.210, label %land.end.214

land.rhs.210:                                     ; preds = %do.cond.207
  %155 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %156 = load i32, i32* %code, align 4, !tbaa !5
  %call211 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %155, i32 %156) #4
  store i32 %call211, i32* %code, align 4, !tbaa !5
  %cmp212 = icmp sge i32 %call211, 0
  br label %land.end.214

land.end.214:                                     ; preds = %land.rhs.210, %do.cond.207
  %157 = phi i1 [ false, %do.cond.207 ], [ %cmp212, %land.rhs.210 ]
  br i1 %157, label %do.body.204, label %do.end.215

do.end.215:                                       ; preds = %land.end.214
  br label %copy

copy:                                             ; preds = %cleanup.330, %do.end.215
  %158 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %158) #1
  %159 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  store i8 -96, i8* %op, align 1, !tbaa !51
  %160 = bitcast i8** %dp216 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  %161 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %161) #1
  %162 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %163 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %x217 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %163, i32* %x217, align 4, !tbaa !52
  %y218 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %164 = load i32, i32* %y218, align 4, !tbaa !68
  %y219 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  store i32 %164, i32* %y219, align 4, !tbaa !53
  %165 = load i32, i32* %w1, align 4, !tbaa !5
  %width220 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 2
  store i32 %165, i32* %width220, align 4, !tbaa !54
  %height221 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %166 = load i32, i32* %height221, align 4, !tbaa !70
  %height222 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 3
  store i32 %166, i32* %height222, align 4, !tbaa !55
  %167 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool223 = icmp ne i32 %167, 0
  %cond224 = select i1 %tobool223, i32 4, i32 2
  %call225 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect) #4
  %add226 = add nsw i32 %cond224, %call225
  store i32 %add226, i32* %rsize, align 4, !tbaa !5
  br label %do.body.227

do.body.227:                                      ; preds = %land.end.239, %copy
  %168 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls228 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %169 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls228, align 8, !tbaa !76
  %170 = load i8*, i8** %row, align 8, !tbaa !1
  %171 = load i32, i32* %w1, align 4, !tbaa !5
  %172 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl229 = shl i32 %171, %172
  %height230 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %173 = load i32, i32* %height230, align 4, !tbaa !70
  %174 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %175 = load i32, i32* %rsize, align 4, !tbaa !5
  %call231 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %168, %struct.gx_clist_state_s* %169, i8* %170, i32 %shl229, i32 %173, i32 %174, i32 %175, i32 2, i8** %dp216, i32* %csize) #4
  store i32 %call231, i32* %code, align 4, !tbaa !5
  br label %do.cond.232

do.cond.232:                                      ; preds = %do.body.227
  %176 = load i32, i32* %code, align 4, !tbaa !5
  %cmp233 = icmp slt i32 %176, 0
  br i1 %cmp233, label %land.rhs.235, label %land.end.239

land.rhs.235:                                     ; preds = %do.cond.232
  %177 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %178 = load i32, i32* %code, align 4, !tbaa !5
  %call236 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %177, i32 %178) #4
  store i32 %call236, i32* %code, align 4, !tbaa !5
  %cmp237 = icmp sge i32 %call236, 0
  br label %land.end.239

land.end.239:                                     ; preds = %land.rhs.235, %do.cond.232
  %179 = phi i1 [ false, %do.cond.232 ], [ %cmp237, %land.rhs.235 ]
  br i1 %179, label %do.body.227, label %do.end.240

do.end.240:                                       ; preds = %land.end.239
  %180 = load i32, i32* %code, align 4, !tbaa !5
  %cmp241 = icmp slt i32 %180, 0
  br i1 %cmp241, label %land.lhs.true.243, label %if.end.250

land.lhs.true.243:                                ; preds = %do.end.240
  %181 = load i32, i32* %code, align 4, !tbaa !5
  %cmp244 = icmp eq i32 %181, -13
  br i1 %cmp244, label %if.end.250, label %land.lhs.true.246

land.lhs.true.246:                                ; preds = %land.lhs.true.243
  %182 = load i32, i32* %code, align 4, !tbaa !5
  %band_code247 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %182, i32* %band_code247, align 4, !tbaa !80
  %tobool248 = icmp ne i32 %182, 0
  br i1 %tobool248, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %land.lhs.true.246
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.330

if.end.250:                                       ; preds = %land.lhs.true.246, %land.lhs.true.243, %do.end.240
  %183 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %183, i32* %compress, align 4, !tbaa !5
  %184 = load i32, i32* %code, align 4, !tbaa !5
  %cmp251 = icmp slt i32 %184, 0
  br i1 %cmp251, label %if.then.253, label %if.end.281

if.then.253:                                      ; preds = %if.end.250
  %height254 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %185 = load i32, i32* %height254, align 4, !tbaa !70
  %cmp255 = icmp sgt i32 %185, 1
  br i1 %cmp255, label %if.then.257, label %if.else

if.then.257:                                      ; preds = %if.then.253
  %height258 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %186 = load i32, i32* %height258, align 4, !tbaa !70
  %shr259 = ashr i32 %186, 1
  store i32 %shr259, i32* %height258, align 4, !tbaa !70
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.330

if.else:                                          ; preds = %if.then.253
  %187 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %187) #1
  %188 = load i32, i32* %w1, align 4, !tbaa !5
  %shr260 = ashr i32 %188, 1
  store i32 %shr260, i32* %w2, align 4, !tbaa !5
  %189 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %189, i32 0, i32 96
  %190 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %inc = add nsw i32 %190, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !82
  %191 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %192 = load i8*, i8** %row, align 8, !tbaa !1
  %193 = load i32, i32* %dx, align 4, !tbaa !5
  %194 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %195 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y261 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %196 = load i32, i32* %y261, align 4, !tbaa !68
  %197 = load i32, i32* %w2, align 4, !tbaa !5
  %198 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %199 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call262 = call i32 @clist_copy_alpha_hl_color(%struct.gx_device_s* %191, i8* %192, i32 %193, i32 %194, i64 0, i32 %195, i32 %196, i32 %197, i32 1, %struct.gx_device_color_s* %198, i32 %199) #4
  store i32 %call262, i32* %code, align 4, !tbaa !5
  %200 = load i32, i32* %code, align 4, !tbaa !5
  %cmp263 = icmp sge i32 %200, 0
  br i1 %cmp263, label %if.then.265, label %if.end.271

if.then.265:                                      ; preds = %if.else
  %201 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %202 = load i8*, i8** %row, align 8, !tbaa !1
  %203 = load i32, i32* %dx, align 4, !tbaa !5
  %204 = load i32, i32* %w2, align 4, !tbaa !5
  %add266 = add nsw i32 %203, %204
  %205 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %206 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %207 = load i32, i32* %w2, align 4, !tbaa !5
  %add267 = add nsw i32 %206, %207
  %y268 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %208 = load i32, i32* %y268, align 4, !tbaa !68
  %209 = load i32, i32* %w1, align 4, !tbaa !5
  %210 = load i32, i32* %w2, align 4, !tbaa !5
  %sub269 = sub nsw i32 %209, %210
  %211 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %212 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call270 = call i32 @clist_copy_alpha_hl_color(%struct.gx_device_s* %201, i8* %202, i32 %add266, i32 %205, i64 0, i32 %add267, i32 %208, i32 %sub269, i32 1, %struct.gx_device_color_s* %211, i32 %212) #4
  store i32 %call270, i32* %code, align 4, !tbaa !5
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.265, %if.else
  %213 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting272 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %213, i32 0, i32 96
  %214 = load i32, i32* %driver_call_nesting272, align 4, !tbaa !82
  %dec = add nsw i32 %214, -1
  store i32 %dec, i32* %driver_call_nesting272, align 4, !tbaa !82
  %215 = load i32, i32* %code, align 4, !tbaa !5
  %cmp273 = icmp slt i32 %215, 0
  br i1 %cmp273, label %land.lhs.true.275, label %if.end.279

land.lhs.true.275:                                ; preds = %if.end.271
  %216 = load i32, i32* %code, align 4, !tbaa !5
  %band_code276 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %216, i32* %band_code276, align 4, !tbaa !80
  %tobool277 = icmp ne i32 %216, 0
  br i1 %tobool277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %land.lhs.true.275
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.280

if.end.279:                                       ; preds = %land.lhs.true.275, %if.end.271
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.280

cleanup.280:                                      ; preds = %if.then.278, %if.end.279
  %217 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  br label %cleanup.330

if.end.281:                                       ; preds = %if.end.250
  %218 = load i32, i32* %compress, align 4, !tbaa !5
  %219 = load i8, i8* %op, align 1, !tbaa !51
  %conv282 = zext i8 %219 to i32
  %add283 = add i32 %conv282, %218
  %conv284 = trunc i32 %add283 to i8
  store i8 %conv284, i8* %op, align 1, !tbaa !51
  %220 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool285 = icmp ne i32 %220, 0
  br i1 %tobool285, label %if.then.286, label %if.end.290

if.then.286:                                      ; preds = %if.end.281
  %221 = load i8*, i8** %dp216, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %incdec.ptr, i8** %dp216, align 8, !tbaa !1
  store i8 6, i8* %221, align 1, !tbaa !51
  %222 = load i32, i32* %dx, align 4, !tbaa !5
  %add287 = add nsw i32 64, %222
  %conv288 = trunc i32 %add287 to i8
  %223 = load i8*, i8** %dp216, align 8, !tbaa !1
  %incdec.ptr289 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %incdec.ptr289, i8** %dp216, align 8, !tbaa !1
  store i8 %conv288, i8* %223, align 1, !tbaa !51
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.286, %if.end.281
  %224 = load i8, i8* %op, align 1, !tbaa !51
  %225 = load i8*, i8** %dp216, align 8, !tbaa !1
  %incdec.ptr291 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr291, i8** %dp216, align 8, !tbaa !1
  store i8 %224, i8* %225, align 1, !tbaa !51
  %226 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %conv292 = trunc i32 %226 to i8
  %227 = load i8*, i8** %dp216, align 8, !tbaa !1
  %incdec.ptr293 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr293, i8** %dp216, align 8, !tbaa !1
  store i8 %conv292, i8* %227, align 1, !tbaa !51
  %228 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y294 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %229 = load i32, i32* %y294, align 4, !tbaa !68
  %or295 = or i32 %228, %229
  %and296 = and i32 %or295, -128
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %cond.false.305, label %cond.true.298

cond.true.298:                                    ; preds = %if.end.290
  %230 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %conv299 = trunc i32 %230 to i8
  %231 = load i8*, i8** %dp216, align 8, !tbaa !1
  %arrayidx300 = getelementptr inbounds i8, i8* %231, i64 0
  store i8 %conv299, i8* %arrayidx300, align 1, !tbaa !51
  %y301 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %232 = load i32, i32* %y301, align 4, !tbaa !68
  %conv302 = trunc i32 %232 to i8
  %233 = load i8*, i8** %dp216, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds i8, i8* %233, i64 1
  store i8 %conv302, i8* %arrayidx303, align 1, !tbaa !51
  %234 = load i8*, i8** %dp216, align 8, !tbaa !1
  %add.ptr304 = getelementptr inbounds i8, i8* %234, i64 2
  store i8* %add.ptr304, i8** %dp216, align 8, !tbaa !1
  br label %cond.end.309

cond.false.305:                                   ; preds = %if.end.290
  %y306 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %235 = load i32, i32* %y306, align 4, !tbaa !68
  %236 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %237 = load i8*, i8** %dp216, align 8, !tbaa !1
  %call307 = call i8* @cmd_put_w(i32 %236, i8* %237) #4
  %call308 = call i8* @cmd_put_w(i32 %235, i8* %call307) #4
  store i8* %call308, i8** %dp216, align 8, !tbaa !1
  br label %cond.end.309

cond.end.309:                                     ; preds = %cond.false.305, %cond.true.298
  %cond310 = phi i8* [ %add.ptr304, %cond.true.298 ], [ %call308, %cond.false.305 ]
  %238 = load i32, i32* %w1, align 4, !tbaa !5
  %height311 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %239 = load i32, i32* %height311, align 4, !tbaa !70
  %or312 = or i32 %238, %239
  %and313 = and i32 %or312, -128
  %tobool314 = icmp ne i32 %and313, 0
  br i1 %tobool314, label %cond.false.322, label %cond.true.315

cond.true.315:                                    ; preds = %cond.end.309
  %240 = load i32, i32* %w1, align 4, !tbaa !5
  %conv316 = trunc i32 %240 to i8
  %241 = load i8*, i8** %dp216, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds i8, i8* %241, i64 0
  store i8 %conv316, i8* %arrayidx317, align 1, !tbaa !51
  %height318 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %242 = load i32, i32* %height318, align 4, !tbaa !70
  %conv319 = trunc i32 %242 to i8
  %243 = load i8*, i8** %dp216, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds i8, i8* %243, i64 1
  store i8 %conv319, i8* %arrayidx320, align 1, !tbaa !51
  %244 = load i8*, i8** %dp216, align 8, !tbaa !1
  %add.ptr321 = getelementptr inbounds i8, i8* %244, i64 2
  store i8* %add.ptr321, i8** %dp216, align 8, !tbaa !1
  br label %cond.end.326

cond.false.322:                                   ; preds = %cond.end.309
  %height323 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %245 = load i32, i32* %height323, align 4, !tbaa !70
  %246 = load i32, i32* %w1, align 4, !tbaa !5
  %247 = load i8*, i8** %dp216, align 8, !tbaa !1
  %call324 = call i8* @cmd_put_w(i32 %246, i8* %247) #4
  %call325 = call i8* @cmd_put_w(i32 %245, i8* %call324) #4
  store i8* %call325, i8** %dp216, align 8, !tbaa !1
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.322, %cond.true.315
  %cond327 = phi i8* [ %add.ptr321, %cond.true.315 ], [ %call325, %cond.false.322 ]
  %pcls328 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %248 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls328, align 8, !tbaa !76
  %rect329 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %248, i32 0, i32 8
  %249 = bitcast %struct.gx_cmd_rect* %rect329 to i8*
  %250 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %249, i8* %250, i64 16, i32 4, i1 false), !tbaa.struct !123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.330

cleanup.330:                                      ; preds = %if.then.249, %cond.end.326, %cleanup.280, %if.then.257
  %251 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #1
  %252 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %252) #1
  %253 = bitcast i8** %dp216 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %253) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %254 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %254) #1
  %255 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %255) #1
  %cleanup.dest.336 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.336, label %cleanup.355 [
    i32 0, label %cleanup.cont.337
    i32 17, label %copy
    i32 10, label %error_in_rect
  ]

cleanup.cont.337:                                 ; preds = %cleanup.330
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.355

error_in_rect:                                    ; preds = %cleanup.330, %cleanup.200, %cleanup, %if.then.132
  %256 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %256, i32 0, i32 94
  %257 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool338 = icmp ne i32 %257, 0
  br i1 %tobool338, label %land.lhs.true.339, label %if.then.349

land.lhs.true.339:                                ; preds = %error_in_rect
  %258 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting340 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %258, i32 0, i32 96
  %259 = load i32, i32* %driver_call_nesting340, align 4, !tbaa !82
  %cmp341 = icmp eq i32 %259, 0
  br i1 %cmp341, label %land.lhs.true.343, label %if.then.349

land.lhs.true.343:                                ; preds = %land.lhs.true.339
  %260 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code344 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %261 = load i32, i32* %band_code344, align 4, !tbaa !80
  %call345 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %260, i32 %261) #4
  %band_code346 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call345, i32* %band_code346, align 4, !tbaa !80
  %cmp347 = icmp sge i32 %call345, 0
  br i1 %cmp347, label %if.end.351, label %if.then.349

if.then.349:                                      ; preds = %land.lhs.true.343, %land.lhs.true.339, %error_in_rect
  %band_code350 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %262 = load i32, i32* %band_code350, align 4, !tbaa !80
  store i32 %262, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.355

if.end.351:                                       ; preds = %land.lhs.true.343
  %height352 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %263 = load i32, i32* %height352, align 4, !tbaa !70
  %y353 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %264 = load i32, i32* %y353, align 4, !tbaa !68
  %sub354 = sub nsw i32 %264, %263
  store i32 %sub354, i32* %y353, align 4, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.355

cleanup.355:                                      ; preds = %if.end.351, %if.then.349, %cleanup.cont.337, %cleanup.330, %cleanup.200, %cleanup
  %265 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %265) #1
  %266 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %266) #1
  %267 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %cleanup.dest.359 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.359, label %cleanup.369 [
    i32 0, label %cleanup.cont.360
    i32 7, label %do.cond.361
  ]

cleanup.cont.360:                                 ; preds = %cleanup.355
  br label %do.cond.361

do.cond.361:                                      ; preds = %cleanup.cont.360, %cleanup.355
  %height362 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %269 = load i32, i32* %height362, align 4, !tbaa !70
  %y363 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %270 = load i32, i32* %y363, align 4, !tbaa !68
  %add364 = add nsw i32 %270, %269
  store i32 %add364, i32* %y363, align 4, !tbaa !68
  %yend365 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %271 = load i32, i32* %yend365, align 4, !tbaa !71
  %cmp366 = icmp slt i32 %add364, %271
  br i1 %cmp366, label %do.body.59, label %do.end.368

do.end.368:                                       ; preds = %do.cond.361
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.369

cleanup.369:                                      ; preds = %do.end.368, %cleanup.355, %if.then.34, %if.then.28, %if.then
  %272 = bitcast i64* %all to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %273) #1
  %274 = bitcast i32* %data_x_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %277) #1
  %278 = load i32, i32* %retval
  ret i32 %278
}

declare i32 @ilog2(i32) #2

; Function Attrs: nounwind uwtable
define i32 @clist_copy_alpha(%struct.gx_device_s* %dev, i8* %data, i32 %data_x, i32 %raster, i64 %id, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i64 %color, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %data.addr = alloca i8*, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  %depth.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %log2_depth = alloca i32, align 4
  %y0 = alloca i32, align 4
  %data_x_bit = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %color_usage = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %dx = alloca i32, align 4
  %w1 = alloca i32, align 4
  %row = alloca i8*, align 8
  %code = alloca i32, align 4
  %dp = alloca i8*, align 8
  %dp170 = alloca i8*, align 8
  %rect = alloca %struct.gx_cmd_rect, align 4
  %rsize = alloca i32, align 4
  %op = alloca i8, align 1
  %dp241 = alloca i8*, align 8
  %csize = alloca i32, align 4
  %compress = alloca i32, align 4
  %w2 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !58
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call = call i32 @ilog2(i32 %4) #4
  store i32 %call, i32* %log2_depth, align 4, !tbaa !5
  %5 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %data_x_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %7) #1
  %8 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %10 = load i64, i64* %color.addr, align 8, !tbaa !58
  %call1 = call i64 @gx_color_index2usage(%struct.gx_device_s* %9, i64 %10) #4
  store i64 %call1, i64* %color_usage, align 8, !tbaa !58
  %11 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %disable_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %12, i32 0, i32 99
  %13 = load i32, i32* %disable_mask, align 4, !tbaa !129
  %and = and i32 %13, 64
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.394

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  %14 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %or = or i32 %14, %15
  %cmp4 = icmp slt i32 %or, 0
  br i1 %cmp4, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %do.body.3
  %16 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %16, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  %17 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %18 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %18, %17
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  %19 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %20 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %19
  store i32 %sub, i32* %data_x.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.5
  %21 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %21, 0
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %22 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %23 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %23, %22
  store i32 %add11, i32* %rheight.addr, align 4, !tbaa !5
  %24 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %25 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %25
  %26 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %26, i64 %idx.neg
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !58
  store i32 0, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %do.body.3
  %27 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %28, i32 0, i32 13
  %29 = load i32, i32* %width, align 4, !tbaa !120
  %30 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 %29, %30
  %cmp15 = icmp sgt i32 %27, %sub14
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.13
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 13
  %32 = load i32, i32* %width17, align 4, !tbaa !120
  %33 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub18 = sub nsw i32 %32, %33
  store i32 %sub18, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.13
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  br label %do.end

do.end:                                           ; preds = %do.cond
  %34 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 14
  %36 = load i32, i32* %height, align 4, !tbaa !121
  %37 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub20 = sub nsw i32 %36, %37
  %cmp21 = icmp sgt i32 %34, %sub20
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %do.end
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 14
  %39 = load i32, i32* %height23, align 4, !tbaa !121
  %40 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub24 = sub nsw i32 %39, %40
  store i32 %sub24, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %do.end
  %41 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp26 = icmp sle i32 %41, 0
  br i1 %cmp26, label %if.then.28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %42 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %42, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %lor.lhs.false, %if.end.25
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.394

if.end.29:                                        ; preds = %lor.lhs.false
  br label %do.cond.30

do.cond.30:                                       ; preds = %if.end.29
  br label %do.end.31

do.end.31:                                        ; preds = %do.cond.30
  %43 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %43, i32* %y0, align 4, !tbaa !5
  %44 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %45 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl = shl i32 %44, %45
  store i32 %shl, i32* %data_x_bit, align 4, !tbaa !5
  %46 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %46, i32 0, i32 95
  %47 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp32 = icmp slt i32 %47, 0
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %do.end.31
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %48, i32 0, i32 95
  %49 = load i32, i32* %permanent_error34, align 4, !tbaa !62
  store i32 %49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.394

if.end.35:                                        ; preds = %do.end.31
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 81
  %51 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool = icmp ne i32 %51, 0
  br i1 %tobool, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %if.end.35
  %52 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %52) #1
  %53 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %53, i32* %x, align 4, !tbaa !64
  %54 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %55 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add37 = add nsw i32 %54, %55
  %sub38 = sub nsw i32 %add37, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x39 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub38, i32* %x39, align 4, !tbaa !65
  %56 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p40 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p40, i32 0, i32 1
  store i32 %56, i32* %y, align 4, !tbaa !66
  %57 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %58 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add41 = add nsw i32 %57, %58
  %sub42 = sub nsw i32 %add41, 1
  %q43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q43, i32 0, i32 1
  store i32 %sub42, i32* %y44, align 4, !tbaa !67
  %59 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %59, %struct.gs_int_rect_s* %bbox) #4
  %60 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #1
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.36, %if.end.35
  %61 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y46 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %61, i32* %y46, align 4, !tbaa !68
  %62 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height47 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %62, i32* %height47, align 4, !tbaa !70
  %y48 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %63 = load i32, i32* %y48, align 4, !tbaa !68
  %height49 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %64 = load i32, i32* %height49, align 4, !tbaa !70
  %add50 = add nsw i32 %63, %64
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add50, i32* %yend, align 4, !tbaa !71
  %65 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %65, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %66 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %66, i32* %band_height, align 4, !tbaa !73
  %yend51 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %67 = load i32, i32* %yend51, align 4, !tbaa !71
  %y52 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %68 = load i32, i32* %y52, align 4, !tbaa !68
  %sub53 = sub nsw i32 %67, %68
  %band_height54 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %69 = load i32, i32* %band_height54, align 4, !tbaa !73
  %add55 = add nsw i32 %sub53, %69
  %sub56 = sub nsw i32 %add55, 1
  %band_height57 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %70 = load i32, i32* %band_height57, align 4, !tbaa !73
  %div = sdiv i32 %sub56, %70
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.58

do.body.58:                                       ; preds = %do.cond.386, %if.end.45
  %71 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #1
  %72 = load i32, i32* %data_x_bit, align 4, !tbaa !5
  %and59 = and i32 %72, 7
  %73 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shr = ashr i32 %and59, %73
  store i32 %shr, i32* %dx, align 4, !tbaa !5
  %74 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %dx, align 4, !tbaa !5
  %76 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %75, %76
  store i32 %add60, i32* %w1, align 4, !tbaa !5
  %77 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %77) #1
  %78 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %y61 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %79 = load i32, i32* %y61, align 4, !tbaa !68
  %80 = load i32, i32* %y0, align 4, !tbaa !5
  %sub62 = sub nsw i32 %79, %80
  %81 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %mul63 = mul nsw i32 %sub62, %81
  %idx.ext64 = sext i32 %mul63 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %78, i64 %idx.ext64
  %82 = load i32, i32* %data_x_bit, align 4, !tbaa !5
  %shr66 = ashr i32 %82, 3
  %idx.ext67 = sext i32 %shr66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr65, i64 %idx.ext67
  store i8* %add.ptr68, i8** %row, align 8, !tbaa !1
  %83 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %83) #1
  %y69 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %84 = load i32, i32* %y69, align 4, !tbaa !68
  %band_height70 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %85 = load i32, i32* %band_height70, align 4, !tbaa !73
  %div71 = sdiv i32 %84, %85
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div71, i32* %band, align 4, !tbaa !75
  %86 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %86, i32 0, i32 66
  %87 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band72 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %88 = load i32, i32* %band72, align 4, !tbaa !75
  %idx.ext73 = sext i32 %88 to i64
  %add.ptr74 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %87, i64 %idx.ext73
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr74, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band75 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %89 = load i32, i32* %band75, align 4, !tbaa !75
  %add76 = add nsw i32 %89, 1
  %band_height77 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %90 = load i32, i32* %band_height77, align 4, !tbaa !73
  %mul78 = mul nsw i32 %add76, %90
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul78, i32* %band_end, align 4, !tbaa !77
  %band_end79 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %91 = load i32, i32* %band_end79, align 4, !tbaa !77
  %yend80 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %92 = load i32, i32* %yend80, align 4, !tbaa !71
  %cmp81 = icmp slt i32 %91, %92
  br i1 %cmp81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.58
  %band_end82 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %93 = load i32, i32* %band_end82, align 4, !tbaa !77
  br label %cond.end

cond.false:                                       ; preds = %do.body.58
  %yend83 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %94 = load i32, i32* %yend83, align 4, !tbaa !71
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %93, %cond.true ], [ %94, %cond.false ]
  %y84 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %95 = load i32, i32* %y84, align 4, !tbaa !68
  %sub85 = sub nsw i32 %cond, %95
  %height86 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub85, i32* %height86, align 4, !tbaa !70
  %96 = load i64, i64* %color_usage, align 8, !tbaa !58
  %pcls87 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %97 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls87, align 8, !tbaa !76
  %color_usage88 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %97, i32 0, i32 16
  %or89 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage88, i32 0, i32 0
  %98 = load i64, i64* %or89, align 8, !tbaa !78
  %or90 = or i64 %98, %96
  store i64 %or90, i64* %or89, align 8, !tbaa !78
  br label %do.body.91

do.body.91:                                       ; preds = %land.end, %cond.end
  %pcls92 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %99 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls92, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %99, i32 0, i32 10
  %100 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv = sext i16 %100 to i32
  %cmp93 = icmp eq i32 %conv, 1
  br i1 %cmp93, label %land.lhs.true.95, label %cond.false.101

land.lhs.true.95:                                 ; preds = %do.body.91
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls96 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %102 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls96, align 8, !tbaa !76
  %call97 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %101, %struct.gx_clist_state_s* %102, i32 0) #4
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %cond.true.100, label %cond.false.101

cond.true.100:                                    ; preds = %land.lhs.true.95
  %103 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %103, i32 0, i32 65
  %104 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.102

cond.false.101:                                   ; preds = %land.lhs.true.95, %do.body.91
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.100
  %cond103 = phi i32 [ %104, %cond.true.100 ], [ 0, %cond.false.101 ]
  store i32 %cond103, i32* %code, align 4, !tbaa !5
  %105 = load i32, i32* %code, align 4, !tbaa !5
  %cmp104 = icmp sge i32 %105, 0
  br i1 %cmp104, label %if.then.106, label %if.end.121

if.then.106:                                      ; preds = %cond.end.102
  %pcls107 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %106 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls107, align 8, !tbaa !76
  %clip_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %106, i32 0, i32 11
  %107 = load i16, i16* %clip_enabled, align 2, !tbaa !122
  %conv108 = sext i16 %107 to i32
  %cmp109 = icmp eq i32 %conv108, 1
  br i1 %cmp109, label %land.lhs.true.111, label %cond.false.118

land.lhs.true.111:                                ; preds = %if.then.106
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls112 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %109 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls112, align 8, !tbaa !76
  %call113 = call i32 @cmd_put_enable_clip(%struct.gx_device_clist_writer_s* %108, %struct.gx_clist_state_s* %109, i32 0) #4
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %land.lhs.true.111
  %110 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code117 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %110, i32 0, i32 65
  %111 = load i32, i32* %error_code117, align 4, !tbaa !20
  br label %cond.end.119

cond.false.118:                                   ; preds = %land.lhs.true.111, %if.then.106
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.116
  %cond120 = phi i32 [ %111, %cond.true.116 ], [ 0, %cond.false.118 ]
  store i32 %cond120, i32* %code, align 4, !tbaa !5
  br label %if.end.121

if.end.121:                                       ; preds = %cond.end.119, %cond.end.102
  br label %do.cond.122

do.cond.122:                                      ; preds = %if.end.121
  %112 = load i32, i32* %code, align 4, !tbaa !5
  %cmp123 = icmp slt i32 %112, 0
  br i1 %cmp123, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.122
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %114 = load i32, i32* %code, align 4, !tbaa !5
  %call125 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %113, i32 %114) #4
  store i32 %call125, i32* %code, align 4, !tbaa !5
  %cmp126 = icmp sge i32 %call125, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.122
  %115 = phi i1 [ false, %do.cond.122 ], [ %cmp126, %land.rhs ]
  br i1 %115, label %do.body.91, label %do.end.128

do.end.128:                                       ; preds = %land.end
  %116 = load i32, i32* %code, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %116, 0
  br i1 %cmp129, label %land.lhs.true.131, label %if.end.134

land.lhs.true.131:                                ; preds = %do.end.128
  %117 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %117, i32* %band_code, align 4, !tbaa !80
  %tobool132 = icmp ne i32 %117, 0
  br i1 %tobool132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %land.lhs.true.131
  br label %error_in_rect

if.end.134:                                       ; preds = %land.lhs.true.131, %do.end.128
  %pcls135 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %118 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls135, align 8, !tbaa !76
  %color_is_alpha = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %118, i32 0, i32 12
  %119 = load i32, i32* %color_is_alpha, align 4, !tbaa !128
  %tobool136 = icmp ne i32 %119, 0
  br i1 %tobool136, label %if.end.166, label %if.then.137

if.then.137:                                      ; preds = %if.end.134
  %120 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %120) #1
  br label %do.body.138

do.body.138:                                      ; preds = %land.end.155, %if.then.137
  %121 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls139 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %122 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls139, align 8, !tbaa !76
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %122, i32 0, i32 15
  %call140 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %121, %struct.cmd_list_s* %list, i32 1) #4
  store i8* %call140, i8** %dp, align 8, !tbaa !1
  %cmp141 = icmp eq i8* %call140, null
  br i1 %cmp141, label %cond.true.143, label %cond.false.145

cond.true.143:                                    ; preds = %do.body.138
  %123 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code144 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %123, i32 0, i32 65
  %124 = load i32, i32* %error_code144, align 4, !tbaa !20
  br label %cond.end.146

cond.false.145:                                   ; preds = %do.body.138
  %125 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 15, i8* %125, align 1, !tbaa !51
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.145, %cond.true.143
  %cond147 = phi i32 [ %124, %cond.true.143 ], [ 0, %cond.false.145 ]
  store i32 %cond147, i32* %code, align 4, !tbaa !5
  br label %do.cond.148

do.cond.148:                                      ; preds = %cond.end.146
  %126 = load i32, i32* %code, align 4, !tbaa !5
  %cmp149 = icmp slt i32 %126, 0
  br i1 %cmp149, label %land.rhs.151, label %land.end.155

land.rhs.151:                                     ; preds = %do.cond.148
  %127 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %128 = load i32, i32* %code, align 4, !tbaa !5
  %call152 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %127, i32 %128) #4
  store i32 %call152, i32* %code, align 4, !tbaa !5
  %cmp153 = icmp sge i32 %call152, 0
  br label %land.end.155

land.end.155:                                     ; preds = %land.rhs.151, %do.cond.148
  %129 = phi i1 [ false, %do.cond.148 ], [ %cmp153, %land.rhs.151 ]
  br i1 %129, label %do.body.138, label %do.end.156

do.end.156:                                       ; preds = %land.end.155
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %cmp157 = icmp slt i32 %130, 0
  br i1 %cmp157, label %land.lhs.true.159, label %if.end.163

land.lhs.true.159:                                ; preds = %do.end.156
  %131 = load i32, i32* %code, align 4, !tbaa !5
  %band_code160 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %131, i32* %band_code160, align 4, !tbaa !80
  %tobool161 = icmp ne i32 %131, 0
  br i1 %tobool161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %land.lhs.true.159
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup

if.end.163:                                       ; preds = %land.lhs.true.159, %do.end.156
  %pcls164 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %132 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls164, align 8, !tbaa !76
  %color_is_alpha165 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %132, i32 0, i32 12
  store i32 1, i32* %color_is_alpha165, align 4, !tbaa !128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.162, %if.end.163
  %133 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.380 [
    i32 0, label %cleanup.cont
    i32 10, label %error_in_rect
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.166

if.end.166:                                       ; preds = %cleanup.cont, %if.end.134
  %pcls167 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %134 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls167, align 8, !tbaa !76
  %color_is_devn = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %134, i32 0, i32 13
  %135 = load i32, i32* %color_is_devn, align 4, !tbaa !130
  %tobool168 = icmp ne i32 %135, 0
  br i1 %tobool168, label %if.then.169, label %if.end.213

if.then.169:                                      ; preds = %if.end.166
  %136 = bitcast i8** %dp170 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %136) #1
  br label %do.body.171

do.body.171:                                      ; preds = %land.end.199, %if.then.169
  %137 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls172 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %138 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls172, align 8, !tbaa !76
  %list173 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %138, i32 0, i32 15
  %call174 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %137, %struct.cmd_list_s* %list173, i32 1) #4
  store i8* %call174, i8** %dp170, align 8, !tbaa !1
  %cmp175 = icmp eq i8* %call174, null
  br i1 %cmp175, label %cond.true.177, label %cond.false.179

cond.true.177:                                    ; preds = %do.body.171
  %139 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code178 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %139, i32 0, i32 65
  %140 = load i32, i32* %error_code178, align 4, !tbaa !20
  br label %cond.end.180

cond.false.179:                                   ; preds = %do.body.171
  %141 = load i8*, i8** %dp170, align 8, !tbaa !1
  store i8 -33, i8* %141, align 1, !tbaa !51
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.179, %cond.true.177
  %cond181 = phi i32 [ %140, %cond.true.177 ], [ 0, %cond.false.179 ]
  store i32 %cond181, i32* %code, align 4, !tbaa !5
  %142 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls182 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %143 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls182, align 8, !tbaa !76
  %list183 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %143, i32 0, i32 15
  %call184 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %142, %struct.cmd_list_s* %list183, i32 1) #4
  store i8* %call184, i8** %dp170, align 8, !tbaa !1
  %cmp185 = icmp eq i8* %call184, null
  br i1 %cmp185, label %cond.true.187, label %cond.false.189

cond.true.187:                                    ; preds = %cond.end.180
  %144 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code188 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %144, i32 0, i32 65
  %145 = load i32, i32* %error_code188, align 4, !tbaa !20
  br label %cond.end.190

cond.false.189:                                   ; preds = %cond.end.180
  %146 = load i8*, i8** %dp170, align 8, !tbaa !1
  store i8 9, i8* %146, align 1, !tbaa !51
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.189, %cond.true.187
  %cond191 = phi i32 [ %145, %cond.true.187 ], [ 0, %cond.false.189 ]
  store i32 %cond191, i32* %code, align 4, !tbaa !5
  br label %do.cond.192

do.cond.192:                                      ; preds = %cond.end.190
  %147 = load i32, i32* %code, align 4, !tbaa !5
  %cmp193 = icmp slt i32 %147, 0
  br i1 %cmp193, label %land.rhs.195, label %land.end.199

land.rhs.195:                                     ; preds = %do.cond.192
  %148 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %149 = load i32, i32* %code, align 4, !tbaa !5
  %call196 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %148, i32 %149) #4
  store i32 %call196, i32* %code, align 4, !tbaa !5
  %cmp197 = icmp sge i32 %call196, 0
  br label %land.end.199

land.end.199:                                     ; preds = %land.rhs.195, %do.cond.192
  %150 = phi i1 [ false, %do.cond.192 ], [ %cmp197, %land.rhs.195 ]
  br i1 %150, label %do.body.171, label %do.end.200

do.end.200:                                       ; preds = %land.end.199
  %151 = load i32, i32* %code, align 4, !tbaa !5
  %cmp201 = icmp slt i32 %151, 0
  br i1 %cmp201, label %land.lhs.true.203, label %if.end.207

land.lhs.true.203:                                ; preds = %do.end.200
  %152 = load i32, i32* %code, align 4, !tbaa !5
  %band_code204 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %152, i32* %band_code204, align 4, !tbaa !80
  %tobool205 = icmp ne i32 %152, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %land.lhs.true.203
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.210

if.end.207:                                       ; preds = %land.lhs.true.203, %do.end.200
  %pcls208 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %153 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls208, align 8, !tbaa !76
  %color_is_alpha209 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %153, i32 0, i32 12
  store i32 1, i32* %color_is_alpha209, align 4, !tbaa !128
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.210

cleanup.210:                                      ; preds = %if.then.206, %if.end.207
  %154 = bitcast i8** %dp170 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %cleanup.dest.211 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.211, label %cleanup.380 [
    i32 0, label %cleanup.cont.212
    i32 10, label %error_in_rect
  ]

cleanup.cont.212:                                 ; preds = %cleanup.210
  br label %if.end.213

if.end.213:                                       ; preds = %cleanup.cont.212, %if.end.166
  %155 = load i64, i64* %color.addr, align 8, !tbaa !58
  %pcls214 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %156 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls214, align 8, !tbaa !76
  %colors = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %156, i32 0, i32 0
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %colors, i32 0, i64 1
  %157 = load i64, i64* %arrayidx, align 8, !tbaa !58
  %cmp215 = icmp ne i64 %155, %157
  br i1 %cmp215, label %if.then.217, label %if.end.240

if.then.217:                                      ; preds = %if.end.213
  br label %do.body.218

do.body.218:                                      ; preds = %land.end.231, %if.then.217
  %158 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls219 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %159 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls219, align 8, !tbaa !76
  %160 = load i64, i64* %color.addr, align 8, !tbaa !58
  %pcls220 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %161 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls220, align 8, !tbaa !76
  %colors221 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %161, i32 0, i32 0
  %arrayidx222 = getelementptr inbounds [2 x i64], [2 x i64]* %colors221, i32 0, i64 1
  %call223 = call i32 @cmd_put_color(%struct.gx_device_clist_writer_s* %158, %struct.gx_clist_state_s* %159, %struct.clist_select_color_t* @clist_select_color1, i64 %160, i64* %arrayidx222) #4
  store i32 %call223, i32* %code, align 4, !tbaa !5
  br label %do.cond.224

do.cond.224:                                      ; preds = %do.body.218
  %162 = load i32, i32* %code, align 4, !tbaa !5
  %cmp225 = icmp slt i32 %162, 0
  br i1 %cmp225, label %land.rhs.227, label %land.end.231

land.rhs.227:                                     ; preds = %do.cond.224
  %163 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %164 = load i32, i32* %code, align 4, !tbaa !5
  %call228 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %163, i32 %164) #4
  store i32 %call228, i32* %code, align 4, !tbaa !5
  %cmp229 = icmp sge i32 %call228, 0
  br label %land.end.231

land.end.231:                                     ; preds = %land.rhs.227, %do.cond.224
  %165 = phi i1 [ false, %do.cond.224 ], [ %cmp229, %land.rhs.227 ]
  br i1 %165, label %do.body.218, label %do.end.232

do.end.232:                                       ; preds = %land.end.231
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp233 = icmp slt i32 %166, 0
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.239

land.lhs.true.235:                                ; preds = %do.end.232
  %167 = load i32, i32* %code, align 4, !tbaa !5
  %band_code236 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %167, i32* %band_code236, align 4, !tbaa !80
  %tobool237 = icmp ne i32 %167, 0
  br i1 %tobool237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %land.lhs.true.235
  br label %error_in_rect

if.end.239:                                       ; preds = %land.lhs.true.235, %do.end.232
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.end.213
  br label %copy

copy:                                             ; preds = %cleanup.355, %if.end.240
  %168 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %168) #1
  %169 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  call void @llvm.lifetime.start(i64 1, i8* %op) #1
  store i8 -96, i8* %op, align 1, !tbaa !51
  %170 = bitcast i8** %dp241 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %170) #1
  %171 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %171) #1
  %172 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %x242 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 0
  store i32 %173, i32* %x242, align 4, !tbaa !52
  %y243 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %174 = load i32, i32* %y243, align 4, !tbaa !68
  %y244 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 1
  store i32 %174, i32* %y244, align 4, !tbaa !53
  %175 = load i32, i32* %w1, align 4, !tbaa !5
  %width245 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 2
  store i32 %175, i32* %width245, align 4, !tbaa !54
  %height246 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %176 = load i32, i32* %height246, align 4, !tbaa !70
  %height247 = getelementptr inbounds %struct.gx_cmd_rect, %struct.gx_cmd_rect* %rect, i32 0, i32 3
  store i32 %176, i32* %height247, align 4, !tbaa !55
  %177 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool248 = icmp ne i32 %177, 0
  %cond249 = select i1 %tobool248, i32 4, i32 2
  %call250 = call i32 @cmd_size_rect(%struct.gx_cmd_rect* %rect) #4
  %add251 = add nsw i32 %cond249, %call250
  store i32 %add251, i32* %rsize, align 4, !tbaa !5
  br label %do.body.252

do.body.252:                                      ; preds = %land.end.264, %copy
  %178 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls253 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %179 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls253, align 8, !tbaa !76
  %180 = load i8*, i8** %row, align 8, !tbaa !1
  %181 = load i32, i32* %w1, align 4, !tbaa !5
  %182 = load i32, i32* %log2_depth, align 4, !tbaa !5
  %shl254 = shl i32 %181, %182
  %height255 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %183 = load i32, i32* %height255, align 4, !tbaa !70
  %184 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %185 = load i32, i32* %rsize, align 4, !tbaa !5
  %call256 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %178, %struct.gx_clist_state_s* %179, i8* %180, i32 %shl254, i32 %183, i32 %184, i32 %185, i32 2, i8** %dp241, i32* %csize) #4
  store i32 %call256, i32* %code, align 4, !tbaa !5
  br label %do.cond.257

do.cond.257:                                      ; preds = %do.body.252
  %186 = load i32, i32* %code, align 4, !tbaa !5
  %cmp258 = icmp slt i32 %186, 0
  br i1 %cmp258, label %land.rhs.260, label %land.end.264

land.rhs.260:                                     ; preds = %do.cond.257
  %187 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %188 = load i32, i32* %code, align 4, !tbaa !5
  %call261 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %187, i32 %188) #4
  store i32 %call261, i32* %code, align 4, !tbaa !5
  %cmp262 = icmp sge i32 %call261, 0
  br label %land.end.264

land.end.264:                                     ; preds = %land.rhs.260, %do.cond.257
  %189 = phi i1 [ false, %do.cond.257 ], [ %cmp262, %land.rhs.260 ]
  br i1 %189, label %do.body.252, label %do.end.265

do.end.265:                                       ; preds = %land.end.264
  %190 = load i32, i32* %code, align 4, !tbaa !5
  %cmp266 = icmp slt i32 %190, 0
  br i1 %cmp266, label %land.lhs.true.268, label %if.end.275

land.lhs.true.268:                                ; preds = %do.end.265
  %191 = load i32, i32* %code, align 4, !tbaa !5
  %cmp269 = icmp eq i32 %191, -13
  br i1 %cmp269, label %if.end.275, label %land.lhs.true.271

land.lhs.true.271:                                ; preds = %land.lhs.true.268
  %192 = load i32, i32* %code, align 4, !tbaa !5
  %band_code272 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %192, i32* %band_code272, align 4, !tbaa !80
  %tobool273 = icmp ne i32 %192, 0
  br i1 %tobool273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %land.lhs.true.271
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.355

if.end.275:                                       ; preds = %land.lhs.true.271, %land.lhs.true.268, %do.end.265
  %193 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %193, i32* %compress, align 4, !tbaa !5
  %194 = load i32, i32* %code, align 4, !tbaa !5
  %cmp276 = icmp slt i32 %194, 0
  br i1 %cmp276, label %if.then.278, label %if.end.306

if.then.278:                                      ; preds = %if.end.275
  %height279 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %195 = load i32, i32* %height279, align 4, !tbaa !70
  %cmp280 = icmp sgt i32 %195, 1
  br i1 %cmp280, label %if.then.282, label %if.else

if.then.282:                                      ; preds = %if.then.278
  %height283 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %196 = load i32, i32* %height283, align 4, !tbaa !70
  %shr284 = ashr i32 %196, 1
  store i32 %shr284, i32* %height283, align 4, !tbaa !70
  store i32 17, i32* %cleanup.dest.slot
  br label %cleanup.355

if.else:                                          ; preds = %if.then.278
  %197 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %197) #1
  %198 = load i32, i32* %w1, align 4, !tbaa !5
  %shr285 = ashr i32 %198, 1
  store i32 %shr285, i32* %w2, align 4, !tbaa !5
  %199 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %199, i32 0, i32 96
  %200 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %inc = add nsw i32 %200, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !82
  %201 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %202 = load i8*, i8** %row, align 8, !tbaa !1
  %203 = load i32, i32* %dx, align 4, !tbaa !5
  %204 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %205 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y286 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %206 = load i32, i32* %y286, align 4, !tbaa !68
  %207 = load i32, i32* %w2, align 4, !tbaa !5
  %208 = load i64, i64* %color.addr, align 8, !tbaa !58
  %209 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call287 = call i32 @clist_copy_alpha(%struct.gx_device_s* %201, i8* %202, i32 %203, i32 %204, i64 0, i32 %205, i32 %206, i32 %207, i32 1, i64 %208, i32 %209) #4
  store i32 %call287, i32* %code, align 4, !tbaa !5
  %210 = load i32, i32* %code, align 4, !tbaa !5
  %cmp288 = icmp sge i32 %210, 0
  br i1 %cmp288, label %if.then.290, label %if.end.296

if.then.290:                                      ; preds = %if.else
  %211 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %212 = load i8*, i8** %row, align 8, !tbaa !1
  %213 = load i32, i32* %dx, align 4, !tbaa !5
  %214 = load i32, i32* %w2, align 4, !tbaa !5
  %add291 = add nsw i32 %213, %214
  %215 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %216 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %217 = load i32, i32* %w2, align 4, !tbaa !5
  %add292 = add nsw i32 %216, %217
  %y293 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %218 = load i32, i32* %y293, align 4, !tbaa !68
  %219 = load i32, i32* %w1, align 4, !tbaa !5
  %220 = load i32, i32* %w2, align 4, !tbaa !5
  %sub294 = sub nsw i32 %219, %220
  %221 = load i64, i64* %color.addr, align 8, !tbaa !58
  %222 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %call295 = call i32 @clist_copy_alpha(%struct.gx_device_s* %211, i8* %212, i32 %add291, i32 %215, i64 0, i32 %add292, i32 %218, i32 %sub294, i32 1, i64 %221, i32 %222) #4
  store i32 %call295, i32* %code, align 4, !tbaa !5
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.290, %if.else
  %223 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting297 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %223, i32 0, i32 96
  %224 = load i32, i32* %driver_call_nesting297, align 4, !tbaa !82
  %dec = add nsw i32 %224, -1
  store i32 %dec, i32* %driver_call_nesting297, align 4, !tbaa !82
  %225 = load i32, i32* %code, align 4, !tbaa !5
  %cmp298 = icmp slt i32 %225, 0
  br i1 %cmp298, label %land.lhs.true.300, label %if.end.304

land.lhs.true.300:                                ; preds = %if.end.296
  %226 = load i32, i32* %code, align 4, !tbaa !5
  %band_code301 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %226, i32* %band_code301, align 4, !tbaa !80
  %tobool302 = icmp ne i32 %226, 0
  br i1 %tobool302, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %land.lhs.true.300
  store i32 10, i32* %cleanup.dest.slot
  br label %cleanup.305

if.end.304:                                       ; preds = %land.lhs.true.300, %if.end.296
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.305

cleanup.305:                                      ; preds = %if.then.303, %if.end.304
  %227 = bitcast i32* %w2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  br label %cleanup.355

if.end.306:                                       ; preds = %if.end.275
  %228 = load i32, i32* %compress, align 4, !tbaa !5
  %229 = load i8, i8* %op, align 1, !tbaa !51
  %conv307 = zext i8 %229 to i32
  %add308 = add i32 %conv307, %228
  %conv309 = trunc i32 %add308 to i8
  store i8 %conv309, i8* %op, align 1, !tbaa !51
  %230 = load i32, i32* %dx, align 4, !tbaa !5
  %tobool310 = icmp ne i32 %230, 0
  br i1 %tobool310, label %if.then.311, label %if.end.315

if.then.311:                                      ; preds = %if.end.306
  %231 = load i8*, i8** %dp241, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %incdec.ptr, i8** %dp241, align 8, !tbaa !1
  store i8 6, i8* %231, align 1, !tbaa !51
  %232 = load i32, i32* %dx, align 4, !tbaa !5
  %add312 = add nsw i32 64, %232
  %conv313 = trunc i32 %add312 to i8
  %233 = load i8*, i8** %dp241, align 8, !tbaa !1
  %incdec.ptr314 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr314, i8** %dp241, align 8, !tbaa !1
  store i8 %conv313, i8* %233, align 1, !tbaa !51
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.311, %if.end.306
  %234 = load i8, i8* %op, align 1, !tbaa !51
  %235 = load i8*, i8** %dp241, align 8, !tbaa !1
  %incdec.ptr316 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr316, i8** %dp241, align 8, !tbaa !1
  store i8 %234, i8* %235, align 1, !tbaa !51
  %236 = load i32, i32* %depth.addr, align 4, !tbaa !5
  %conv317 = trunc i32 %236 to i8
  %237 = load i8*, i8** %dp241, align 8, !tbaa !1
  %incdec.ptr318 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %incdec.ptr318, i8** %dp241, align 8, !tbaa !1
  store i8 %conv317, i8* %237, align 1, !tbaa !51
  %238 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y319 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %239 = load i32, i32* %y319, align 4, !tbaa !68
  %or320 = or i32 %238, %239
  %and321 = and i32 %or320, -128
  %tobool322 = icmp ne i32 %and321, 0
  br i1 %tobool322, label %cond.false.330, label %cond.true.323

cond.true.323:                                    ; preds = %if.end.315
  %240 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %conv324 = trunc i32 %240 to i8
  %241 = load i8*, i8** %dp241, align 8, !tbaa !1
  %arrayidx325 = getelementptr inbounds i8, i8* %241, i64 0
  store i8 %conv324, i8* %arrayidx325, align 1, !tbaa !51
  %y326 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %242 = load i32, i32* %y326, align 4, !tbaa !68
  %conv327 = trunc i32 %242 to i8
  %243 = load i8*, i8** %dp241, align 8, !tbaa !1
  %arrayidx328 = getelementptr inbounds i8, i8* %243, i64 1
  store i8 %conv327, i8* %arrayidx328, align 1, !tbaa !51
  %244 = load i8*, i8** %dp241, align 8, !tbaa !1
  %add.ptr329 = getelementptr inbounds i8, i8* %244, i64 2
  store i8* %add.ptr329, i8** %dp241, align 8, !tbaa !1
  br label %cond.end.334

cond.false.330:                                   ; preds = %if.end.315
  %y331 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %245 = load i32, i32* %y331, align 4, !tbaa !68
  %246 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %247 = load i8*, i8** %dp241, align 8, !tbaa !1
  %call332 = call i8* @cmd_put_w(i32 %246, i8* %247) #4
  %call333 = call i8* @cmd_put_w(i32 %245, i8* %call332) #4
  store i8* %call333, i8** %dp241, align 8, !tbaa !1
  br label %cond.end.334

cond.end.334:                                     ; preds = %cond.false.330, %cond.true.323
  %cond335 = phi i8* [ %add.ptr329, %cond.true.323 ], [ %call333, %cond.false.330 ]
  %248 = load i32, i32* %w1, align 4, !tbaa !5
  %height336 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %249 = load i32, i32* %height336, align 4, !tbaa !70
  %or337 = or i32 %248, %249
  %and338 = and i32 %or337, -128
  %tobool339 = icmp ne i32 %and338, 0
  br i1 %tobool339, label %cond.false.347, label %cond.true.340

cond.true.340:                                    ; preds = %cond.end.334
  %250 = load i32, i32* %w1, align 4, !tbaa !5
  %conv341 = trunc i32 %250 to i8
  %251 = load i8*, i8** %dp241, align 8, !tbaa !1
  %arrayidx342 = getelementptr inbounds i8, i8* %251, i64 0
  store i8 %conv341, i8* %arrayidx342, align 1, !tbaa !51
  %height343 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %252 = load i32, i32* %height343, align 4, !tbaa !70
  %conv344 = trunc i32 %252 to i8
  %253 = load i8*, i8** %dp241, align 8, !tbaa !1
  %arrayidx345 = getelementptr inbounds i8, i8* %253, i64 1
  store i8 %conv344, i8* %arrayidx345, align 1, !tbaa !51
  %254 = load i8*, i8** %dp241, align 8, !tbaa !1
  %add.ptr346 = getelementptr inbounds i8, i8* %254, i64 2
  store i8* %add.ptr346, i8** %dp241, align 8, !tbaa !1
  br label %cond.end.351

cond.false.347:                                   ; preds = %cond.end.334
  %height348 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %255 = load i32, i32* %height348, align 4, !tbaa !70
  %256 = load i32, i32* %w1, align 4, !tbaa !5
  %257 = load i8*, i8** %dp241, align 8, !tbaa !1
  %call349 = call i8* @cmd_put_w(i32 %256, i8* %257) #4
  %call350 = call i8* @cmd_put_w(i32 %255, i8* %call349) #4
  store i8* %call350, i8** %dp241, align 8, !tbaa !1
  br label %cond.end.351

cond.end.351:                                     ; preds = %cond.false.347, %cond.true.340
  %cond352 = phi i8* [ %add.ptr346, %cond.true.340 ], [ %call350, %cond.false.347 ]
  %pcls353 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %258 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls353, align 8, !tbaa !76
  %rect354 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %258, i32 0, i32 8
  %259 = bitcast %struct.gx_cmd_rect* %rect354 to i8*
  %260 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %260, i64 16, i32 4, i1 false), !tbaa.struct !123
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.355

cleanup.355:                                      ; preds = %if.then.274, %cond.end.351, %cleanup.305, %if.then.282
  %261 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %261) #1
  %262 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #1
  %263 = bitcast i8** %dp241 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %263) #1
  call void @llvm.lifetime.end(i64 1, i8* %op) #1
  %264 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #1
  %265 = bitcast %struct.gx_cmd_rect* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %265) #1
  %cleanup.dest.361 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.361, label %cleanup.380 [
    i32 0, label %cleanup.cont.362
    i32 17, label %copy
    i32 10, label %error_in_rect
  ]

cleanup.cont.362:                                 ; preds = %cleanup.355
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.380

error_in_rect:                                    ; preds = %cleanup.355, %cleanup.210, %cleanup, %if.then.238, %if.then.133
  %266 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %266, i32 0, i32 94
  %267 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool363 = icmp ne i32 %267, 0
  br i1 %tobool363, label %land.lhs.true.364, label %if.then.374

land.lhs.true.364:                                ; preds = %error_in_rect
  %268 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting365 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %268, i32 0, i32 96
  %269 = load i32, i32* %driver_call_nesting365, align 4, !tbaa !82
  %cmp366 = icmp eq i32 %269, 0
  br i1 %cmp366, label %land.lhs.true.368, label %if.then.374

land.lhs.true.368:                                ; preds = %land.lhs.true.364
  %270 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code369 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %271 = load i32, i32* %band_code369, align 4, !tbaa !80
  %call370 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %270, i32 %271) #4
  %band_code371 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call370, i32* %band_code371, align 4, !tbaa !80
  %cmp372 = icmp sge i32 %call370, 0
  br i1 %cmp372, label %if.end.376, label %if.then.374

if.then.374:                                      ; preds = %land.lhs.true.368, %land.lhs.true.364, %error_in_rect
  %band_code375 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %272 = load i32, i32* %band_code375, align 4, !tbaa !80
  store i32 %272, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.380

if.end.376:                                       ; preds = %land.lhs.true.368
  %height377 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %273 = load i32, i32* %height377, align 4, !tbaa !70
  %y378 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %274 = load i32, i32* %y378, align 4, !tbaa !68
  %sub379 = sub nsw i32 %274, %273
  store i32 %sub379, i32* %y378, align 4, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.380

cleanup.380:                                      ; preds = %if.end.376, %if.then.374, %cleanup.cont.362, %cleanup.355, %cleanup.210, %cleanup
  %275 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %276) #1
  %277 = bitcast i32* %w1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %dx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %cleanup.dest.384 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.384, label %cleanup.394 [
    i32 0, label %cleanup.cont.385
    i32 7, label %do.cond.386
  ]

cleanup.cont.385:                                 ; preds = %cleanup.380
  br label %do.cond.386

do.cond.386:                                      ; preds = %cleanup.cont.385, %cleanup.380
  %height387 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %279 = load i32, i32* %height387, align 4, !tbaa !70
  %y388 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %280 = load i32, i32* %y388, align 4, !tbaa !68
  %add389 = add nsw i32 %280, %279
  store i32 %add389, i32* %y388, align 4, !tbaa !68
  %yend390 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %281 = load i32, i32* %yend390, align 4, !tbaa !71
  %cmp391 = icmp slt i32 %add389, %281
  br i1 %cmp391, label %do.body.58, label %do.end.393

do.end.393:                                       ; preds = %do.cond.386
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.394

cleanup.394:                                      ; preds = %do.end.393, %cleanup.380, %if.then.33, %if.then.28, %if.then
  %282 = bitcast i64* %color_usage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %282) #1
  %283 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %283) #1
  %284 = bitcast i32* %data_x_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #1
  %285 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %log2_depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = load i32, i32* %retval
  ret i32 %288
}

; Function Attrs: nounwind uwtable
define i32 @clist_strip_copy_rop(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i32 %phase_x, i32 %phase_y, i32 %lop) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %sdata.addr = alloca i8*, align 8
  %sourcex.addr = alloca i32, align 4
  %sraster.addr = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %scolors.addr = alloca i64*, align 8
  %textures.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tcolors.addr = alloca i64*, align 8
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %2 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %3 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %4 = load i64, i64* %id.addr, align 8, !tbaa !58
  %5 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %6 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %7 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %8 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %9 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %10 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %11 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %12 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %13 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %14 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @clist_strip_copy_rop2(%struct.gx_device_s* %0, i8* %1, i32 %2, i32 %3, i64 %4, i64* %5, %struct.gx_strip_bitmap_s* %6, i64* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 0) #4
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clist_strip_copy_rop2(%struct.gx_device_s* %dev, i8* %sdata, i32 %sourcex, i32 %sraster, i64 %id, i64* %scolors, %struct.gx_strip_bitmap_s* %textures, i64* %tcolors, i32 %rx, i32 %ry, i32 %rwidth, i32 %rheight, i32 %phase_x, i32 %phase_y, i32 %lop, i32 %planar_height) #0 {
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
  %rx.addr = alloca i32, align 4
  %ry.addr = alloca i32, align 4
  %rwidth.addr = alloca i32, align 4
  %rheight.addr = alloca i32, align 4
  %phase_x.addr = alloca i32, align 4
  %phase_y.addr = alloca i32, align 4
  %lop.addr = alloca i32, align 4
  %planar_height.addr = alloca i32, align 4
  %cdev = alloca %struct.gx_device_clist_writer_s*, align 8
  %rop = alloca i32, align 4
  %tile_with_id = alloca %struct.gx_strip_bitmap_s, align 8
  %tiles = alloca %struct.gx_strip_bitmap_s*, align 8
  %y0 = alloca i32, align 4
  %all = alloca i64, align 8
  %subtractive = alloca i32, align 4
  %S = alloca i64, align 8
  %T = alloca i64, align 8
  %color_rop = alloca i32, align 4
  %slow_rop = alloca i32, align 4
  %re = alloca %struct.cmd_rects_enum_s, align 8
  %cleanup.dest.slot = alloca i32
  %bbox = alloca %struct.gs_int_rect_s, align 4
  %rop_used = alloca i32, align 4
  %bbox208 = alloca %struct.gs_int_rect_s, align 4
  %row = alloca i8*, align 8
  %code = alloca i32, align 4
  %D = alloca i64, align 8
  %offset_temp = alloca i64, align 8
  %rep_height = alloca i32, align 4
  %ids = alloca i64, align 8
  %line_tile = alloca %struct.gx_strip_bitmap_s, align 8
  %data_shift = alloca i32, align 4
  %phase_shift = alloca i32, align 4
  %raster = alloca i32, align 4
  %new_phase = alloca i32, align 4
  %tile_space_phase = alloca i32, align 4
  %iy = alloca i32, align 4
  %depth382 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %sdata, i8** %sdata.addr, align 8, !tbaa !1
  store i32 %sourcex, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !58
  store i64* %scolors, i64** %scolors.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %textures, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store i64* %tcolors, i64** %tcolors.addr, align 8, !tbaa !1
  store i32 %rx, i32* %rx.addr, align 4, !tbaa !5
  store i32 %ry, i32* %ry.addr, align 4, !tbaa !5
  store i32 %rwidth, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 %rheight, i32* %rheight.addr, align 4, !tbaa !5
  store i32 %phase_x, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %phase_y, i32* %phase_y.addr, align 4, !tbaa !5
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %planar_height, i32* %planar_height.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %union.gx_device_clist_s*
  %writer = bitcast %union.gx_device_clist_s* %2 to %struct.gx_device_clist_writer_s*
  store %struct.gx_device_clist_writer_s* %writer, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %3 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %4, 255
  store i32 %and, i32* %rop, align 4, !tbaa !51
  %5 = bitcast %struct.gx_strip_bitmap_s* %tile_with_id to i8*
  call void @llvm.lifetime.start(i64 48, i8* %5) #1
  %6 = bitcast %struct.gx_strip_bitmap_s** %tiles to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  store %struct.gx_strip_bitmap_s* %7, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %8 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i64* %all to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !125
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  store i64 %sub, i64* %all, align 8, !tbaa !58
  %12 = bitcast i32* %subtractive to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 11
  %num_components2 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 1
  %14 = load i32, i32* %num_components2, align 4, !tbaa !118
  %cmp = icmp sge i32 %14, 4
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %subtractive, align 4, !tbaa !5
  %15 = bitcast i64* %S to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool = icmp ne i64* %16, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %18 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 0
  %19 = load i64, i64* %arrayidx, align 8, !tbaa !58
  %20 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i64, i64* %20, i64 1
  %21 = load i64, i64* %arrayidx3, align 8, !tbaa !58
  %or = or i64 %19, %21
  %call = call i64 @gx_color_index2usage(%struct.gx_device_s* %17, i64 %or) #4
  br label %cond.end.7

cond.false:                                       ; preds = %entry
  %22 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %tobool4 = icmp ne i8* %22, null
  br i1 %tobool4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  %23 = load i64, i64* %all, align 8, !tbaa !58
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i64 [ %23, %cond.true.5 ], [ 0, %cond.false.6 ]
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.end, %cond.true
  %cond8 = phi i64 [ %call, %cond.true ], [ %cond, %cond.end ]
  store i64 %cond8, i64* %S, align 8, !tbaa !58
  %24 = bitcast i64* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool9 = icmp ne i64* %25, null
  br i1 %tobool9, label %cond.true.10, label %cond.false.15

cond.true.10:                                     ; preds = %cond.end.7
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %27 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i64, i64* %27, i64 0
  %28 = load i64, i64* %arrayidx11, align 8, !tbaa !58
  %29 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i64, i64* %29, i64 1
  %30 = load i64, i64* %arrayidx12, align 8, !tbaa !58
  %or13 = or i64 %28, %30
  %call14 = call i64 @gx_color_index2usage(%struct.gx_device_s* %26, i64 %or13) #4
  br label %cond.end.21

cond.false.15:                                    ; preds = %cond.end.7
  %31 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %textures.addr, align 8, !tbaa !1
  %tobool16 = icmp ne %struct.gx_strip_bitmap_s* %31, null
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.false.15
  %32 = load i64, i64* %all, align 8, !tbaa !58
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.false.15
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i64 [ %32, %cond.true.17 ], [ 0, %cond.false.18 ]
  br label %cond.end.21

cond.end.21:                                      ; preds = %cond.end.19, %cond.true.10
  %cond22 = phi i64 [ %call14, %cond.true.10 ], [ %cond20, %cond.end.19 ]
  store i64 %cond22, i64* %T, align 8, !tbaa !58
  %33 = bitcast i32* %color_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %subtractive, align 4, !tbaa !5
  %tobool23 = icmp ne i32 %34, 0
  br i1 %tobool23, label %cond.true.24, label %cond.false.27

cond.true.24:                                     ; preds = %cond.end.21
  %35 = load i32, i32* %rop, align 4, !tbaa !51
  %xor = xor i32 %35, 255
  %idxprom = zext i32 %xor to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @byte_reverse_bits, i32 0, i64 %idxprom
  %36 = load i8, i8* %arrayidx25, align 1, !tbaa !51
  %conv26 = zext i8 %36 to i32
  br label %cond.end.28

cond.false.27:                                    ; preds = %cond.end.21
  %37 = load i32, i32* %rop, align 4, !tbaa !51
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.24
  %cond29 = phi i32 [ %conv26, %cond.true.24 ], [ %37, %cond.false.27 ]
  store i32 %cond29, i32* %color_rop, align 4, !tbaa !51
  %38 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %39) #1
  %40 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp30 = icmp ne i64* %40, null
  br i1 %cmp30, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.28
  %41 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i64, i64* %41, i64 0
  %42 = load i64, i64* %arrayidx32, align 8, !tbaa !58
  %43 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds i64, i64* %43, i64 1
  %44 = load i64, i64* %arrayidx33, align 8, !tbaa !58
  %cmp34 = icmp ne i64 %42, %44
  br i1 %cmp34, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then
  %45 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %45, 0
  br i1 %cmp36, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %do.body
  %46 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %47 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add = add nsw i32 %47, %46
  store i32 %add, i32* %rwidth.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.38, %do.body
  br label %do.body.39

do.body.39:                                       ; preds = %if.end
  %48 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %49, i32 0, i32 13
  %50 = load i32, i32* %width, align 4, !tbaa !59
  %51 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub40 = sub nsw i32 %50, %51
  %cmp41 = icmp sgt i32 %48, %sub40
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %do.body.39
  %52 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width44 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %52, i32 0, i32 13
  %53 = load i32, i32* %width44, align 4, !tbaa !59
  %54 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub45 = sub nsw i32 %53, %54
  store i32 %sub45, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %do.body.39
  br label %do.cond

do.cond:                                          ; preds = %if.end.46
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.47

do.body.47:                                       ; preds = %do.end
  %55 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %56 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %56, i32 0, i32 101
  %57 = load i32, i32* %cropping_min, align 4, !tbaa !60
  %cmp48 = icmp slt i32 %55, %57
  br i1 %cmp48, label %if.then.50, label %if.end.55

if.then.50:                                       ; preds = %do.body.47
  %58 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %59 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add51 = add nsw i32 %58, %59
  %60 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min52 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %60, i32 0, i32 101
  %61 = load i32, i32* %cropping_min52, align 4, !tbaa !60
  %sub53 = sub nsw i32 %add51, %61
  store i32 %sub53, i32* %rheight.addr, align 4, !tbaa !5
  %62 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min54 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %62, i32 0, i32 101
  %63 = load i32, i32* %cropping_min54, align 4, !tbaa !60
  store i32 %63, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.50, %do.body.47
  %64 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %65 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add56 = add nsw i32 %64, %65
  %66 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %66, i32 0, i32 102
  %67 = load i32, i32* %cropping_max, align 4, !tbaa !61
  %cmp57 = icmp sgt i32 %add56, %67
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %if.end.55
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max60 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 102
  %69 = load i32, i32* %cropping_max60, align 4, !tbaa !61
  %70 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub61 = sub nsw i32 %69, %70
  store i32 %sub61, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %if.end.55
  br label %do.cond.63

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  br label %do.cond.65

do.cond.65:                                       ; preds = %do.end.64
  br label %do.end.66

do.end.66:                                        ; preds = %do.cond.65
  br label %if.end.109

if.else:                                          ; preds = %land.lhs.true, %cond.end.28
  br label %do.body.67

do.body.67:                                       ; preds = %if.else
  %71 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %cmp68 = icmp slt i32 %71, 0
  br i1 %cmp68, label %if.then.70, label %if.end.73

if.then.70:                                       ; preds = %do.body.67
  %72 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %73 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add71 = add nsw i32 %73, %72
  store i32 %add71, i32* %rwidth.addr, align 4, !tbaa !5
  %74 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %75 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %sub72 = sub nsw i32 %75, %74
  store i32 %sub72, i32* %sourcex.addr, align 4, !tbaa !5
  store i32 0, i32* %rx.addr, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.70, %do.body.67
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.73
  %76 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %77 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width75 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %77, i32 0, i32 13
  %78 = load i32, i32* %width75, align 4, !tbaa !59
  %79 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub76 = sub nsw i32 %78, %79
  %cmp77 = icmp sgt i32 %76, %sub76
  br i1 %cmp77, label %if.then.79, label %if.end.82

if.then.79:                                       ; preds = %do.body.74
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %width80 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 13
  %81 = load i32, i32* %width80, align 4, !tbaa !59
  %82 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %sub81 = sub nsw i32 %81, %82
  store i32 %sub81, i32* %rwidth.addr, align 4, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.79, %do.body.74
  br label %do.cond.83

do.cond.83:                                       ; preds = %if.end.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  br label %do.body.85

do.body.85:                                       ; preds = %do.end.84
  %83 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %84 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %84, i32 0, i32 101
  %85 = load i32, i32* %cropping_min86, align 4, !tbaa !60
  %cmp87 = icmp slt i32 %83, %85
  br i1 %cmp87, label %if.then.89, label %if.end.96

if.then.89:                                       ; preds = %do.body.85
  %86 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %87 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %86, %87
  %88 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min91 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %88, i32 0, i32 101
  %89 = load i32, i32* %cropping_min91, align 4, !tbaa !60
  %sub92 = sub nsw i32 %add90, %89
  store i32 %sub92, i32* %rheight.addr, align 4, !tbaa !5
  %90 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min93 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %90, i32 0, i32 101
  %91 = load i32, i32* %cropping_min93, align 4, !tbaa !60
  %92 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub94 = sub nsw i32 %91, %92
  %93 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul = mul i32 %sub94, %93
  %94 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %94, i64 %idx.ext
  store i8* %add.ptr, i8** %sdata.addr, align 8, !tbaa !1
  store i64 0, i64* %id.addr, align 8, !tbaa !58
  %95 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_min95 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %95, i32 0, i32 101
  %96 = load i32, i32* %cropping_min95, align 4, !tbaa !60
  store i32 %96, i32* %ry.addr, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.89, %do.body.85
  %97 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %98 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add97 = add nsw i32 %97, %98
  %99 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max98 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %99, i32 0, i32 102
  %100 = load i32, i32* %cropping_max98, align 4, !tbaa !61
  %cmp99 = icmp sgt i32 %add97, %100
  br i1 %cmp99, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.96
  %101 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %cropping_max102 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %101, i32 0, i32 102
  %102 = load i32, i32* %cropping_max102, align 4, !tbaa !61
  %103 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %sub103 = sub nsw i32 %102, %103
  store i32 %sub103, i32* %rheight.addr, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.96
  br label %do.cond.105

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106

do.end.106:                                       ; preds = %do.cond.105
  br label %do.cond.107

do.cond.107:                                      ; preds = %do.end.106
  br label %do.end.108

do.end.108:                                       ; preds = %do.cond.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.end.66
  %104 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %cmp110 = icmp sle i32 %104, 0
  br i1 %cmp110, label %if.then.114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.109
  %105 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %cmp112 = icmp sle i32 %105, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %lor.lhs.false, %if.end.109
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.115:                                       ; preds = %lor.lhs.false
  %106 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %106, i32 0, i32 81
  %107 = load i32, i32* %pdf14_needed, align 4, !tbaa !63
  %tobool116 = icmp ne i32 %107, 0
  br i1 %tobool116, label %if.then.117, label %if.end.126

if.then.117:                                      ; preds = %if.end.115
  %108 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.start(i64 16, i8* %108) #1
  %109 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %109, i32* %x, align 4, !tbaa !64
  %110 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %111 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add118 = add nsw i32 %110, %111
  %sub119 = sub nsw i32 %add118, 1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %x120 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %sub119, i32* %x120, align 4, !tbaa !65
  %112 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p121 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p121, i32 0, i32 1
  store i32 %112, i32* %y, align 4, !tbaa !66
  %113 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %114 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add122 = add nsw i32 %113, %114
  %sub123 = sub nsw i32 %add122, 1
  %q124 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox, i32 0, i32 1
  %y125 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q124, i32 0, i32 1
  store i32 %sub123, i32* %y125, align 4, !tbaa !67
  %115 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %115, %struct.gs_int_rect_s* %bbox) #4
  %116 = bitcast %struct.gs_int_rect_s* %bbox to i8*
  call void @llvm.lifetime.end(i64 16, i8* %116) #1
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.117, %if.end.115
  %117 = bitcast i32* %rop_used to i8*
  call void @llvm.lifetime.start(i64 4, i8* %117) #1
  %118 = load i32, i32* %rop, align 4, !tbaa !51
  store i32 %118, i32* %rop_used, align 4, !tbaa !51
  %119 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %tobool127 = icmp ne i64* %119, null
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.157

land.lhs.true.128:                                ; preds = %if.end.126
  %120 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i64, i64* %120, i64 0
  %121 = load i64, i64* %arrayidx129, align 8, !tbaa !58
  %122 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds i64, i64* %122, i64 1
  %123 = load i64, i64* %arrayidx130, align 8, !tbaa !58
  %cmp131 = icmp eq i64 %121, %123
  br i1 %cmp131, label %if.then.133, label %if.end.157

if.then.133:                                      ; preds = %land.lhs.true.128
  %124 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds i64, i64* %124, i64 0
  %125 = load i64, i64* %arrayidx134, align 8, !tbaa !58
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call135 = call i64 @gx_device_black(%struct.gx_device_s* %126) #4
  %cmp136 = icmp eq i64 %125, %call135
  br i1 %cmp136, label %cond.true.138, label %cond.false.143

cond.true.138:                                    ; preds = %if.then.133
  %127 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and139 = and i32 %127, 51
  %shl140 = shl i32 %and139, 2
  %128 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and141 = and i32 %128, -205
  %or142 = or i32 %shl140, %and141
  br label %cond.end.155

cond.false.143:                                   ; preds = %if.then.133
  %129 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds i64, i64* %129, i64 0
  %130 = load i64, i64* %arrayidx144, align 8, !tbaa !58
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call145 = call i64 @gx_device_white(%struct.gx_device_s* %131) #4
  %cmp146 = icmp eq i64 %130, %call145
  br i1 %cmp146, label %cond.true.148, label %cond.false.152

cond.true.148:                                    ; preds = %cond.false.143
  %132 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and149 = and i32 %132, 204
  %shr = lshr i32 %and149, 2
  %133 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and150 = and i32 %133, -52
  %or151 = or i32 %shr, %and150
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.false.143
  %134 = load i32, i32* %rop_used, align 4, !tbaa !51
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.148
  %cond154 = phi i32 [ %or151, %cond.true.148 ], [ %134, %cond.false.152 ]
  br label %cond.end.155

cond.end.155:                                     ; preds = %cond.end.153, %cond.true.138
  %cond156 = phi i32 [ %or142, %cond.true.138 ], [ %cond154, %cond.end.153 ]
  store i32 %cond156, i32* %rop_used, align 4, !tbaa !51
  br label %if.end.157

if.end.157:                                       ; preds = %cond.end.155, %land.lhs.true.128, %if.end.126
  %135 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %tobool158 = icmp ne i64* %135, null
  br i1 %tobool158, label %land.lhs.true.159, label %if.end.189

land.lhs.true.159:                                ; preds = %if.end.157
  %136 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i64, i64* %136, i64 0
  %137 = load i64, i64* %arrayidx160, align 8, !tbaa !58
  %138 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i64, i64* %138, i64 1
  %139 = load i64, i64* %arrayidx161, align 8, !tbaa !58
  %cmp162 = icmp eq i64 %137, %139
  br i1 %cmp162, label %if.then.164, label %if.end.189

if.then.164:                                      ; preds = %land.lhs.true.159
  %140 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i64, i64* %140, i64 0
  %141 = load i64, i64* %arrayidx165, align 8, !tbaa !58
  %142 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call166 = call i64 @gx_device_black(%struct.gx_device_s* %142) #4
  %cmp167 = icmp eq i64 %141, %call166
  br i1 %cmp167, label %cond.true.169, label %cond.false.174

cond.true.169:                                    ; preds = %if.then.164
  %143 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and170 = and i32 %143, 15
  %shl171 = shl i32 %and170, 4
  %144 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and172 = and i32 %144, -241
  %or173 = or i32 %shl171, %and172
  br label %cond.end.187

cond.false.174:                                   ; preds = %if.then.164
  %145 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i64, i64* %145, i64 0
  %146 = load i64, i64* %arrayidx175, align 8, !tbaa !58
  %147 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call176 = call i64 @gx_device_white(%struct.gx_device_s* %147) #4
  %cmp177 = icmp eq i64 %146, %call176
  br i1 %cmp177, label %cond.true.179, label %cond.false.184

cond.true.179:                                    ; preds = %cond.false.174
  %148 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and180 = and i32 %148, 240
  %shr181 = lshr i32 %and180, 4
  %149 = load i32, i32* %rop_used, align 4, !tbaa !51
  %and182 = and i32 %149, -16
  %or183 = or i32 %shr181, %and182
  br label %cond.end.185

cond.false.184:                                   ; preds = %cond.false.174
  %150 = load i32, i32* %rop_used, align 4, !tbaa !51
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.184, %cond.true.179
  %cond186 = phi i32 [ %or183, %cond.true.179 ], [ %150, %cond.false.184 ]
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.185, %cond.true.169
  %cond188 = phi i32 [ %or173, %cond.true.169 ], [ %cond186, %cond.end.185 ]
  store i32 %cond188, i32* %rop_used, align 4, !tbaa !51
  br label %if.end.189

if.end.189:                                       ; preds = %cond.end.187, %land.lhs.true.159, %if.end.157
  %151 = load i32, i32* %rop, align 4, !tbaa !51
  %cmp190 = icmp eq i32 %151, 0
  br i1 %cmp190, label %lor.end, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %if.end.189
  %152 = load i32, i32* %rop, align 4, !tbaa !51
  %cmp193 = icmp eq i32 %152, 255
  br i1 %cmp193, label %lor.end, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %lor.lhs.false.192
  %153 = load i32, i32* %rop, align 4, !tbaa !51
  %cmp196 = icmp eq i32 %153, 204
  br i1 %cmp196, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.195
  %154 = load i32, i32* %rop, align 4, !tbaa !51
  %cmp198 = icmp eq i32 %154, 240
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.195, %lor.lhs.false.192, %if.end.189
  %155 = phi i1 [ true, %lor.lhs.false.195 ], [ true, %lor.lhs.false.192 ], [ true, %if.end.189 ], [ %cmp198, %lor.rhs ]
  %lnot = xor i1 %155, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %slow_rop, align 4, !tbaa !5
  %156 = bitcast i32* %rop_used to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = load i32, i32* %ry.addr, align 4, !tbaa !5
  store i32 %157, i32* %y0, align 4, !tbaa !5
  %158 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %158, i32 0, i32 95
  %159 = load i32, i32* %permanent_error, align 4, !tbaa !62
  %cmp200 = icmp slt i32 %159, 0
  br i1 %cmp200, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %lor.end
  %160 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %permanent_error203 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %160, i32 0, i32 95
  %161 = load i32, i32* %permanent_error203, align 4, !tbaa !62
  store i32 %161, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

if.end.204:                                       ; preds = %lor.end
  %162 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pdf14_needed205 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %162, i32 0, i32 81
  %163 = load i32, i32* %pdf14_needed205, align 4, !tbaa !63
  %tobool206 = icmp ne i32 %163, 0
  br i1 %tobool206, label %if.then.207, label %if.end.221

if.then.207:                                      ; preds = %if.end.204
  %164 = bitcast %struct.gs_int_rect_s* %bbox208 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %164) #1
  %165 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %p209 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox208, i32 0, i32 0
  %x210 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p209, i32 0, i32 0
  store i32 %165, i32* %x210, align 4, !tbaa !64
  %166 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %167 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add211 = add nsw i32 %166, %167
  %sub212 = sub nsw i32 %add211, 1
  %q213 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox208, i32 0, i32 1
  %x214 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q213, i32 0, i32 0
  store i32 %sub212, i32* %x214, align 4, !tbaa !65
  %168 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %p215 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox208, i32 0, i32 0
  %y216 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p215, i32 0, i32 1
  store i32 %168, i32* %y216, align 4, !tbaa !66
  %169 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %170 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %add217 = add nsw i32 %169, %170
  %sub218 = sub nsw i32 %add217, 1
  %q219 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %bbox208, i32 0, i32 1
  %y220 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q219, i32 0, i32 1
  store i32 %sub218, i32* %y220, align 4, !tbaa !67
  %171 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  call void @clist_update_trans_bbox(%struct.gx_device_clist_writer_s* %171, %struct.gs_int_rect_s* %bbox208) #4
  %172 = bitcast %struct.gs_int_rect_s* %bbox208 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %172) #1
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.207, %if.end.204
  %173 = load i32, i32* %ry.addr, align 4, !tbaa !5
  %y222 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  store i32 %173, i32* %y222, align 4, !tbaa !68
  %174 = load i32, i32* %rheight.addr, align 4, !tbaa !5
  %height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %174, i32* %height, align 4, !tbaa !70
  %y223 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %175 = load i32, i32* %y223, align 4, !tbaa !68
  %height224 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %176 = load i32, i32* %height224, align 4, !tbaa !70
  %add225 = add nsw i32 %175, %176
  %yend = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  store i32 %add225, i32* %yend, align 4, !tbaa !71
  %177 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %page_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %177, i32 0, i32 58
  %band_params = getelementptr inbounds %struct.gx_band_page_info_s, %struct.gx_band_page_info_s* %page_info, i32 0, i32 8
  %BandHeight = getelementptr inbounds %struct.gx_band_params_s, %struct.gx_band_params_s* %band_params, i32 0, i32 1
  %178 = load i32, i32* %BandHeight, align 4, !tbaa !72
  %band_height = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  store i32 %178, i32* %band_height, align 4, !tbaa !73
  %yend226 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %179 = load i32, i32* %yend226, align 4, !tbaa !71
  %y227 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %180 = load i32, i32* %y227, align 4, !tbaa !68
  %sub228 = sub nsw i32 %179, %180
  %band_height229 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %181 = load i32, i32* %band_height229, align 4, !tbaa !73
  %add230 = add nsw i32 %sub228, %181
  %sub231 = sub nsw i32 %add230, 1
  %band_height232 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %182 = load i32, i32* %band_height232, align 4, !tbaa !73
  %div = sdiv i32 %sub231, %182
  %rect_nbands = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 8
  store i32 %div, i32* %rect_nbands, align 4, !tbaa !74
  br label %do.body.233

do.body.233:                                      ; preds = %do.cond.659, %if.end.221
  %183 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %183) #1
  %184 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %y234 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %185 = load i32, i32* %y234, align 4, !tbaa !68
  %186 = load i32, i32* %y0, align 4, !tbaa !5
  %sub235 = sub nsw i32 %185, %186
  %187 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul236 = mul i32 %sub235, %187
  %idx.ext237 = zext i32 %mul236 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %184, i64 %idx.ext237
  store i8* %add.ptr238, i8** %row, align 8, !tbaa !1
  %188 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %188) #1
  %y239 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %189 = load i32, i32* %y239, align 4, !tbaa !68
  %band_height240 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %190 = load i32, i32* %band_height240, align 4, !tbaa !73
  %div241 = sdiv i32 %189, %190
  %band = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  store i32 %div241, i32* %band, align 4, !tbaa !75
  %191 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %191, i32 0, i32 66
  %192 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !57
  %band242 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %193 = load i32, i32* %band242, align 4, !tbaa !75
  %idx.ext243 = sext i32 %193 to i64
  %add.ptr244 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %192, i64 %idx.ext243
  %pcls = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  store %struct.gx_clist_state_s* %add.ptr244, %struct.gx_clist_state_s** %pcls, align 8, !tbaa !76
  %band245 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 5
  %194 = load i32, i32* %band245, align 4, !tbaa !75
  %add246 = add nsw i32 %194, 1
  %band_height247 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 3
  %195 = load i32, i32* %band_height247, align 4, !tbaa !73
  %mul248 = mul nsw i32 %add246, %195
  %band_end = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  store i32 %mul248, i32* %band_end, align 4, !tbaa !77
  %band_end249 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %196 = load i32, i32* %band_end249, align 4, !tbaa !77
  %yend250 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %197 = load i32, i32* %yend250, align 4, !tbaa !71
  %cmp251 = icmp slt i32 %196, %197
  br i1 %cmp251, label %cond.true.253, label %cond.false.255

cond.true.253:                                    ; preds = %do.body.233
  %band_end254 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 7
  %198 = load i32, i32* %band_end254, align 4, !tbaa !77
  br label %cond.end.257

cond.false.255:                                   ; preds = %do.body.233
  %yend256 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %199 = load i32, i32* %yend256, align 4, !tbaa !71
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.false.255, %cond.true.253
  %cond258 = phi i32 [ %198, %cond.true.253 ], [ %199, %cond.false.255 ]
  %y259 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %200 = load i32, i32* %y259, align 4, !tbaa !68
  %sub260 = sub nsw i32 %cond258, %200
  %height261 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  store i32 %sub260, i32* %height261, align 4, !tbaa !70
  %201 = bitcast i64* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %201) #1
  %pcls262 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %202 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls262, align 8, !tbaa !76
  %color_usage = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %202, i32 0, i32 16
  %or263 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  %203 = load i64, i64* %or263, align 8, !tbaa !78
  store i64 %203, i64* %D, align 8, !tbaa !58
  %204 = load i32, i32* %color_rop, align 4, !tbaa !51
  %idxprom264 = zext i32 %204 to i64
  %arrayidx265 = getelementptr inbounds [256 x i64 (i64, i64, i64)*], [256 x i64 (i64, i64, i64)*]* @rop_proc_table, i32 0, i64 %idxprom264
  %205 = load i64 (i64, i64, i64)*, i64 (i64, i64, i64)** %arrayidx265, align 8, !tbaa !1
  %206 = load i64, i64* %D, align 8, !tbaa !58
  %207 = load i64, i64* %S, align 8, !tbaa !58
  %208 = load i64, i64* %T, align 8, !tbaa !58
  %call266 = call i64 %205(i64 %206, i64 %207, i64 %208) #4
  %209 = load i64, i64* %all, align 8, !tbaa !58
  %and267 = and i64 %call266, %209
  %210 = load i64, i64* %D, align 8, !tbaa !58
  %or268 = or i64 %and267, %210
  %pcls269 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %211 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls269, align 8, !tbaa !76
  %color_usage270 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %211, i32 0, i32 16
  %or271 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage270, i32 0, i32 0
  store i64 %or268, i64* %or271, align 8, !tbaa !78
  %212 = bitcast i64* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %212) #1
  %213 = load i32, i32* %slow_rop, align 4, !tbaa !5
  %pcls272 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %214 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls272, align 8, !tbaa !76
  %color_usage273 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %214, i32 0, i32 16
  %slow_rop274 = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage273, i32 0, i32 1
  %215 = load i32, i32* %slow_rop274, align 4, !tbaa !131
  %or275 = or i32 %215, %213
  store i32 %or275, i32* %slow_rop274, align 4, !tbaa !131
  %216 = load i32, i32* %rop, align 4, !tbaa !51
  %shl276 = shl i32 %216, 4
  %217 = load i32, i32* %rop, align 4, !tbaa !51
  %xor277 = xor i32 %shl276, %217
  %and278 = and i32 %xor277, 240
  %cmp279 = icmp ne i32 %and278, 0
  br i1 %cmp279, label %if.then.281, label %if.end.549

if.then.281:                                      ; preds = %cond.end.257
  %218 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp282 = icmp eq i64* %218, null
  br i1 %cmp282, label %if.then.289, label %lor.lhs.false.284

lor.lhs.false.284:                                ; preds = %if.then.281
  %219 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds i64, i64* %219, i64 0
  %220 = load i64, i64* %arrayidx285, align 8, !tbaa !58
  %221 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx286 = getelementptr inbounds i64, i64* %221, i64 1
  %222 = load i64, i64* %arrayidx286, align 8, !tbaa !58
  %cmp287 = icmp ne i64 %220, %222
  br i1 %cmp287, label %if.then.289, label %if.end.519

if.then.289:                                      ; preds = %lor.lhs.false.284, %if.then.281
  %223 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %223) #1
  %pcls290 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %224 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls290, align 8, !tbaa !76
  %tile_id = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %224, i32 0, i32 3
  %225 = load i64, i64* %tile_id, align 8, !tbaa !105
  %226 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %id291 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %226, i32 0, i32 3
  %227 = load i64, i64* %id291, align 8, !tbaa !106
  %cmp292 = icmp eq i64 %225, %227
  br i1 %cmp292, label %land.lhs.true.294, label %if.then.306

land.lhs.true.294:                                ; preds = %if.then.289
  %pcls295 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %228 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls295, align 8, !tbaa !76
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %228, i32 0, i32 2
  %229 = load i32, i32* %tile_index, align 4, !tbaa !107
  %idxprom296 = zext i32 %229 to i64
  %230 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %230, i32 0, i32 55
  %231 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !108
  %arrayidx297 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %231, i64 %idxprom296
  %offset = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx297, i32 0, i32 0
  %232 = load i64, i64* %offset, align 8, !tbaa !109
  store i64 %232, i64* %offset_temp, align 8, !tbaa !58
  %cmp298 = icmp ne i64 %232, 0
  br i1 %cmp298, label %land.lhs.true.300, label %if.then.306

land.lhs.true.300:                                ; preds = %land.lhs.true.294
  %233 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %233, i32 0, i32 46
  %234 = load i8*, i8** %data, align 8, !tbaa !111
  %235 = load i64, i64* %offset_temp, align 8, !tbaa !58
  %add.ptr301 = getelementptr inbounds i8, i8* %234, i64 %235
  %236 = bitcast i8* %add.ptr301 to %struct.tile_slot*
  %id302 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %236, i32 0, i32 5
  %237 = load i64, i64* %id302, align 8, !tbaa !112
  %238 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %id303 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %238, i32 0, i32 3
  %239 = load i64, i64* %id303, align 8, !tbaa !106
  %cmp304 = icmp eq i64 %237, %239
  br i1 %cmp304, label %if.end.517, label %if.then.306

if.then.306:                                      ; preds = %land.lhs.true.300, %land.lhs.true.294, %if.then.289
  %240 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %id307 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %240, i32 0, i32 3
  %241 = load i64, i64* %id307, align 8, !tbaa !106
  %cmp308 = icmp eq i64 %241, 0
  br i1 %cmp308, label %if.then.310, label %if.end.313

if.then.310:                                      ; preds = %if.then.306
  %242 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %243 = bitcast %struct.gx_strip_bitmap_s* %tile_with_id to i8*
  %244 = bitcast %struct.gx_strip_bitmap_s* %242 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %243, i8* %244, i64 48, i32 8, i1 false), !tbaa.struct !132
  %245 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %245, i32 0, i32 3
  %246 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !134
  %call311 = call i64 @gs_next_ids(%struct.gs_memory_s* %246, i32 1) #4
  %id312 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_with_id, i32 0, i32 3
  store i64 %call311, i64* %id312, align 8, !tbaa !106
  store %struct.gx_strip_bitmap_s* %tile_with_id, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.310, %if.then.306
  br label %do.body.314

do.body.314:                                      ; preds = %land.end, %if.end.313
  %247 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls315 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %248 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls315, align 8, !tbaa !76
  %249 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %250 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp316 = icmp ne i64* %250, null
  br i1 %cmp316, label %cond.true.318, label %cond.false.319

cond.true.318:                                    ; preds = %do.body.314
  br label %cond.end.321

cond.false.319:                                   ; preds = %do.body.314
  %251 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %251, i32 0, i32 113
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 3
  %252 = load i16, i16* %depth, align 2, !tbaa !117
  %conv320 = zext i16 %252 to i32
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.319, %cond.true.318
  %cond322 = phi i32 [ 1, %cond.true.318 ], [ %conv320, %cond.false.319 ]
  %call323 = call i32 @clist_change_tile(%struct.gx_device_clist_writer_s* %247, %struct.gx_clist_state_s* %248, %struct.gx_strip_bitmap_s* %249, i32 %cond322) #4
  store i32 %call323, i32* %code, align 4, !tbaa !5
  br label %do.cond.324

do.cond.324:                                      ; preds = %cond.end.321
  %253 = load i32, i32* %code, align 4, !tbaa !5
  %cmp325 = icmp slt i32 %253, 0
  br i1 %cmp325, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond.324
  %254 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %255 = load i32, i32* %code, align 4, !tbaa !5
  %call327 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %254, i32 %255) #4
  store i32 %call327, i32* %code, align 4, !tbaa !5
  %cmp328 = icmp sge i32 %call327, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond.324
  %256 = phi i1 [ false, %do.cond.324 ], [ %cmp328, %land.rhs ]
  br i1 %256, label %do.body.314, label %do.end.330

do.end.330:                                       ; preds = %land.end
  %257 = load i32, i32* %code, align 4, !tbaa !5
  %cmp331 = icmp slt i32 %257, 0
  br i1 %cmp331, label %land.lhs.true.333, label %if.end.339

land.lhs.true.333:                                ; preds = %do.end.330
  %258 = load i32, i32* %code, align 4, !tbaa !5
  %cmp334 = icmp eq i32 %258, -13
  br i1 %cmp334, label %if.end.339, label %land.lhs.true.336

land.lhs.true.336:                                ; preds = %land.lhs.true.333
  %259 = load i32, i32* %code, align 4, !tbaa !5
  %band_code = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %259, i32* %band_code, align 4, !tbaa !80
  %tobool337 = icmp ne i32 %259, 0
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %land.lhs.true.336
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.518

if.end.339:                                       ; preds = %land.lhs.true.336, %land.lhs.true.333, %do.end.330
  %260 = load i32, i32* %code, align 4, !tbaa !5
  %cmp340 = icmp slt i32 %260, 0
  br i1 %cmp340, label %if.then.342, label %if.end.475

if.then.342:                                      ; preds = %if.end.339
  %261 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %261) #1
  %262 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %rep_height343 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %262, i32 0, i32 5
  %263 = load i16, i16* %rep_height343, align 2, !tbaa !135
  %conv344 = zext i16 %263 to i32
  store i32 %conv344, i32* %rep_height, align 4, !tbaa !5
  %264 = bitcast i64* %ids to i8*
  call void @llvm.lifetime.start(i64 8, i8* %264) #1
  %265 = bitcast %struct.gx_strip_bitmap_s* %line_tile to i8*
  call void @llvm.lifetime.start(i64 48, i8* %265) #1
  %266 = bitcast i32* %data_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %266) #1
  store i32 0, i32* %data_shift, align 4, !tbaa !5
  %267 = bitcast i32* %phase_shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %267) #1
  store i32 0, i32* %phase_shift, align 4, !tbaa !5
  %268 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %268) #1
  %269 = bitcast i32* %new_phase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %269) #1
  %270 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  store i32 %270, i32* %new_phase, align 4, !tbaa !5
  %271 = bitcast i32* %tile_space_phase to i8*
  call void @llvm.lifetime.start(i64 4, i8* %271) #1
  %272 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %272) #1
  %273 = load i32, i32* %rep_height, align 4, !tbaa !5
  %cmp345 = icmp eq i32 %273, 1
  br i1 %cmp345, label %if.then.351, label %lor.lhs.false.347

lor.lhs.false.347:                                ; preds = %if.then.342
  %274 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %274, i32 0, i32 6
  %275 = load i16, i16* %rep_shift, align 2, !tbaa !136
  %conv348 = zext i16 %275 to i32
  %cmp349 = icmp ne i32 %conv348, 0
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %lor.lhs.false.347, %if.then.342
  %276 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %276, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.352:                                       ; preds = %lor.lhs.false.347
  %277 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory353 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %277, i32 0, i32 3
  %278 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory353, align 8, !tbaa !134
  %height354 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %279 = load i32, i32* %height354, align 4, !tbaa !70
  %280 = load i32, i32* %rep_height, align 4, !tbaa !5
  %cmp355 = icmp ult i32 %279, %280
  br i1 %cmp355, label %cond.true.357, label %cond.false.359

cond.true.357:                                    ; preds = %if.end.352
  %height358 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %281 = load i32, i32* %height358, align 4, !tbaa !70
  br label %cond.end.360

cond.false.359:                                   ; preds = %if.end.352
  %282 = load i32, i32* %rep_height, align 4, !tbaa !5
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.false.359, %cond.true.357
  %cond361 = phi i32 [ %281, %cond.true.357 ], [ %282, %cond.false.359 ]
  %call362 = call i64 @gs_next_ids(%struct.gs_memory_s* %278, i32 %cond361) #4
  store i64 %call362, i64* %ids, align 8, !tbaa !58
  %283 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %284 = bitcast %struct.gx_strip_bitmap_s* %line_tile to i8*
  %285 = bitcast %struct.gx_strip_bitmap_s* %283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %284, i8* %285, i64 48, i32 8, i1 false), !tbaa.struct !132
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 2
  %y363 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  store i32 1, i32* %y363, align 4, !tbaa !137
  %rep_height364 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 5
  store i16 1, i16* %rep_height364, align 2, !tbaa !135
  %raster365 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 1
  %286 = load i32, i32* %raster365, align 4, !tbaa !138
  store i32 %286, i32* %raster, align 4, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 8
  %287 = load i32, i32* %num_planes, align 4, !tbaa !139
  %cmp366 = icmp sgt i32 %287, 0
  br i1 %cmp366, label %if.then.368, label %if.end.373

if.then.368:                                      ; preds = %cond.end.360
  %288 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %size369 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %288, i32 0, i32 2
  %y370 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size369, i32 0, i32 1
  %289 = load i32, i32* %y370, align 4, !tbaa !137
  %raster371 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 1
  %290 = load i32, i32* %raster371, align 4, !tbaa !138
  %mul372 = mul nsw i32 %290, %289
  store i32 %mul372, i32* %raster371, align 4, !tbaa !138
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.368, %cond.end.360
  %291 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %292 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %add374 = add nsw i32 %291, %292
  %293 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %293, i32 0, i32 4
  %294 = load i16, i16* %rep_width, align 2, !tbaa !140
  %conv375 = zext i16 %294 to i32
  %rem = srem i32 %add374, %conv375
  store i32 %rem, i32* %tile_space_phase, align 4, !tbaa !5
  %295 = load i32, i32* %tile_space_phase, align 4, !tbaa !5
  %296 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %add376 = add nsw i32 %295, %296
  %297 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %rep_width377 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %297, i32 0, i32 4
  %298 = load i16, i16* %rep_width377, align 2, !tbaa !140
  %conv378 = zext i16 %298 to i32
  %cmp379 = icmp sle i32 %add376, %conv378
  br i1 %cmp379, label %if.then.381, label %if.end.427

if.then.381:                                      ; preds = %if.end.373
  %299 = bitcast i32* %depth382 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %299) #1
  %300 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %clist_color_info383 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %300, i32 0, i32 113
  %depth384 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info383, i32 0, i32 3
  %301 = load i16, i16* %depth384, align 2, !tbaa !117
  %conv385 = zext i16 %301 to i32
  store i32 %conv385, i32* %depth382, align 4, !tbaa !5
  %num_planes386 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 8
  %302 = load i32, i32* %num_planes386, align 4, !tbaa !139
  %cmp387 = icmp sgt i32 %302, 0
  br i1 %cmp387, label %if.then.389, label %if.end.392

if.then.389:                                      ; preds = %if.then.381
  %num_planes390 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 8
  %303 = load i32, i32* %num_planes390, align 4, !tbaa !139
  %304 = load i32, i32* %depth382, align 4, !tbaa !5
  %div391 = sdiv i32 %304, %303
  store i32 %div391, i32* %depth382, align 4, !tbaa !5
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.389, %if.then.381
  %305 = load i32, i32* %tile_space_phase, align 4, !tbaa !5
  %306 = load i32, i32* %depth382, align 4, !tbaa !5
  %mul393 = mul nsw i32 %305, %306
  %div394 = sdiv i32 %mul393, 8
  store i32 %div394, i32* %data_shift, align 4, !tbaa !5
  %307 = load i32, i32* %data_shift, align 4, !tbaa !5
  %mul395 = mul nsw i32 %307, 8
  %308 = load i32, i32* %depth382, align 4, !tbaa !5
  %div396 = sdiv i32 %mul395, %308
  store i32 %div396, i32* %phase_shift, align 4, !tbaa !5
  %309 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %310 = load i32, i32* %tile_space_phase, align 4, !tbaa !5
  %311 = load i32, i32* %phase_shift, align 4, !tbaa !5
  %sub397 = sub nsw i32 %310, %311
  %add398 = add nsw i32 %309, %sub397
  %conv399 = trunc i32 %add398 to i16
  %rep_width400 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 4
  store i16 %conv399, i16* %rep_width400, align 2, !tbaa !140
  %num_planes401 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 8
  %312 = load i32, i32* %num_planes401, align 4, !tbaa !139
  %cmp402 = icmp sle i32 %312, 1
  br i1 %cmp402, label %if.then.404, label %if.end.411

if.then.404:                                      ; preds = %if.end.392
  %rep_width405 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 4
  %313 = load i16, i16* %rep_width405, align 2, !tbaa !140
  %conv406 = zext i16 %313 to i32
  %314 = load i32, i32* %depth382, align 4, !tbaa !5
  %mul407 = mul nsw i32 %conv406, %314
  %add408 = add nsw i32 %mul407, 7
  %div409 = sdiv i32 %add408, 8
  %raster410 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 1
  store i32 %div409, i32* %raster410, align 4, !tbaa !138
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.404, %if.end.392
  %rep_width412 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 4
  %315 = load i16, i16* %rep_width412, align 2, !tbaa !140
  %conv413 = zext i16 %315 to i32
  %size414 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 2
  %x415 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size414, i32 0, i32 0
  store i32 %conv413, i32* %x415, align 4, !tbaa !141
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 7
  store i16 0, i16* %shift, align 2, !tbaa !142
  %316 = load i32, i32* %tile_space_phase, align 4, !tbaa !5
  %317 = load i32, i32* %phase_shift, align 4, !tbaa !5
  %sub416 = sub nsw i32 %316, %317
  %318 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %rep_width417 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 4
  %319 = load i16, i16* %rep_width417, align 2, !tbaa !140
  %conv418 = zext i16 %319 to i32
  %rem419 = srem i32 %318, %conv418
  %sub420 = sub nsw i32 %sub416, %rem419
  store i32 %sub420, i32* %new_phase, align 4, !tbaa !5
  %320 = load i32, i32* %new_phase, align 4, !tbaa !5
  %rep_width421 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 4
  %321 = load i16, i16* %rep_width421, align 2, !tbaa !140
  %conv422 = zext i16 %321 to i32
  %add423 = add nsw i32 %320, %conv422
  %rep_width424 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 4
  %322 = load i16, i16* %rep_width424, align 2, !tbaa !140
  %conv425 = zext i16 %322 to i32
  %rem426 = srem i32 %add423, %conv425
  store i32 %rem426, i32* %new_phase, align 4, !tbaa !5
  %323 = bitcast i32* %depth382 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #1
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.411, %if.end.373
  store i32 0, i32* %iy, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.427
  %324 = load i32, i32* %iy, align 4, !tbaa !5
  %height428 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %325 = load i32, i32* %height428, align 4, !tbaa !70
  %cmp429 = icmp slt i32 %324, %325
  br i1 %cmp429, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %326 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %data431 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %326, i32 0, i32 0
  %327 = load i8*, i8** %data431, align 8, !tbaa !143
  %328 = load i32, i32* %raster, align 4, !tbaa !5
  %y432 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %329 = load i32, i32* %y432, align 4, !tbaa !68
  %330 = load i32, i32* %iy, align 4, !tbaa !5
  %add433 = add nsw i32 %329, %330
  %331 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %add434 = add nsw i32 %add433, %331
  %332 = load i32, i32* %rep_height, align 4, !tbaa !5
  %rem435 = urem i32 %add434, %332
  %mul436 = mul i32 %328, %rem435
  %idx.ext437 = zext i32 %mul436 to i64
  %add.ptr438 = getelementptr inbounds i8, i8* %327, i64 %idx.ext437
  %333 = load i32, i32* %data_shift, align 4, !tbaa !5
  %idx.ext439 = sext i32 %333 to i64
  %add.ptr440 = getelementptr inbounds i8, i8* %add.ptr438, i64 %idx.ext439
  %data441 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 0
  store i8* %add.ptr440, i8** %data441, align 8, !tbaa !143
  %334 = load i64, i64* %ids, align 8, !tbaa !58
  %335 = load i32, i32* %iy, align 4, !tbaa !5
  %336 = load i32, i32* %rep_height, align 4, !tbaa !5
  %rem442 = urem i32 %335, %336
  %conv443 = zext i32 %rem442 to i64
  %add444 = add i64 %334, %conv443
  %id445 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %line_tile, i32 0, i32 3
  store i64 %add444, i64* %id445, align 8, !tbaa !106
  %337 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %337, i32 0, i32 96
  %338 = load i32, i32* %driver_call_nesting, align 4, !tbaa !82
  %inc = add nsw i32 %338, 1
  store i32 %inc, i32* %driver_call_nesting, align 4, !tbaa !82
  %339 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %340 = load i8*, i8** %sdata.addr, align 8, !tbaa !1
  %cmp446 = icmp eq i8* %340, null
  br i1 %cmp446, label %cond.true.448, label %cond.false.449

cond.true.448:                                    ; preds = %for.body
  br label %cond.end.453

cond.false.449:                                   ; preds = %for.body
  %341 = load i8*, i8** %row, align 8, !tbaa !1
  %342 = load i32, i32* %iy, align 4, !tbaa !5
  %343 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %mul450 = mul i32 %342, %343
  %idx.ext451 = zext i32 %mul450 to i64
  %add.ptr452 = getelementptr inbounds i8, i8* %341, i64 %idx.ext451
  br label %cond.end.453

cond.end.453:                                     ; preds = %cond.false.449, %cond.true.448
  %cond454 = phi i8* [ null, %cond.true.448 ], [ %add.ptr452, %cond.false.449 ]
  %344 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %345 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %346 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %347 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %348 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y455 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %349 = load i32, i32* %y455, align 4, !tbaa !68
  %350 = load i32, i32* %iy, align 4, !tbaa !5
  %add456 = add nsw i32 %349, %350
  %351 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %352 = load i32, i32* %new_phase, align 4, !tbaa !5
  %353 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %354 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %call457 = call i32 @clist_strip_copy_rop2(%struct.gx_device_s* %339, i8* %cond454, i32 %344, i32 %345, i64 0, i64* %346, %struct.gx_strip_bitmap_s* %line_tile, i64* %347, i32 %348, i32 %add456, i32 %351, i32 1, i32 %352, i32 0, i32 %353, i32 %354) #4
  store i32 %call457, i32* %code, align 4, !tbaa !5
  %355 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting458 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %355, i32 0, i32 96
  %356 = load i32, i32* %driver_call_nesting458, align 4, !tbaa !82
  %dec = add nsw i32 %356, -1
  store i32 %dec, i32* %driver_call_nesting458, align 4, !tbaa !82
  %357 = load i32, i32* %code, align 4, !tbaa !5
  %cmp459 = icmp slt i32 %357, 0
  br i1 %cmp459, label %land.lhs.true.461, label %if.end.465

land.lhs.true.461:                                ; preds = %cond.end.453
  %358 = load i32, i32* %code, align 4, !tbaa !5
  %band_code462 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %358, i32* %band_code462, align 4, !tbaa !80
  %tobool463 = icmp ne i32 %358, 0
  br i1 %tobool463, label %if.then.464, label %if.end.465

if.then.464:                                      ; preds = %land.lhs.true.461
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup

if.end.465:                                       ; preds = %land.lhs.true.461, %cond.end.453
  br label %for.inc

for.inc:                                          ; preds = %if.end.465
  %359 = load i32, i32* %iy, align 4, !tbaa !5
  %inc466 = add nsw i32 %359, 1
  store i32 %inc466, i32* %iy, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.464, %for.end, %if.then.351
  %360 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %360) #1
  %361 = bitcast i32* %tile_space_phase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %361) #1
  %362 = bitcast i32* %new_phase to i8*
  call void @llvm.lifetime.end(i64 4, i8* %362) #1
  %363 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %363) #1
  %364 = bitcast i32* %phase_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %364) #1
  %365 = bitcast i32* %data_shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %365) #1
  %366 = bitcast %struct.gx_strip_bitmap_s* %line_tile to i8*
  call void @llvm.lifetime.end(i64 48, i8* %366) #1
  %367 = bitcast i64* %ids to i8*
  call void @llvm.lifetime.end(i64 8, i8* %367) #1
  %368 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %368) #1
  br label %cleanup.518

if.end.475:                                       ; preds = %if.end.339
  %369 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %pcls476 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %370 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls476, align 8, !tbaa !76
  %tile_phase = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %370, i32 0, i32 5
  %x477 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase, i32 0, i32 0
  %371 = load i32, i32* %x477, align 4, !tbaa !115
  %cmp478 = icmp ne i32 %369, %371
  br i1 %cmp478, label %land.lhs.true.480, label %lor.lhs.false.485

land.lhs.true.480:                                ; preds = %if.end.475
  %372 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %rep_width481 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %372, i32 0, i32 4
  %373 = load i16, i16* %rep_width481, align 2, !tbaa !140
  %conv482 = zext i16 %373 to i32
  %cmp483 = icmp sgt i32 %conv482, 1
  br i1 %cmp483, label %if.then.496, label %lor.lhs.false.485

lor.lhs.false.485:                                ; preds = %land.lhs.true.480, %if.end.475
  %374 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %pcls486 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %375 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls486, align 8, !tbaa !76
  %tile_phase487 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %375, i32 0, i32 5
  %y488 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %tile_phase487, i32 0, i32 1
  %376 = load i32, i32* %y488, align 4, !tbaa !116
  %cmp489 = icmp ne i32 %374, %376
  br i1 %cmp489, label %land.lhs.true.491, label %if.end.516

land.lhs.true.491:                                ; preds = %lor.lhs.false.485
  %377 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles, align 8, !tbaa !1
  %rep_height492 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %377, i32 0, i32 5
  %378 = load i16, i16* %rep_height492, align 2, !tbaa !135
  %conv493 = zext i16 %378 to i32
  %cmp494 = icmp sgt i32 %conv493, 1
  br i1 %cmp494, label %if.then.496, label %if.end.516

if.then.496:                                      ; preds = %land.lhs.true.491, %land.lhs.true.480
  br label %do.body.497

do.body.497:                                      ; preds = %land.end.507, %if.then.496
  %379 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls498 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %380 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls498, align 8, !tbaa !76
  %381 = load i32, i32* %phase_x.addr, align 4, !tbaa !5
  %382 = load i32, i32* %phase_y.addr, align 4, !tbaa !5
  %call499 = call i32 @cmd_set_tile_phase(%struct.gx_device_clist_writer_s* %379, %struct.gx_clist_state_s* %380, i32 %381, i32 %382) #4
  store i32 %call499, i32* %code, align 4, !tbaa !5
  br label %do.cond.500

do.cond.500:                                      ; preds = %do.body.497
  %383 = load i32, i32* %code, align 4, !tbaa !5
  %cmp501 = icmp slt i32 %383, 0
  br i1 %cmp501, label %land.rhs.503, label %land.end.507

land.rhs.503:                                     ; preds = %do.cond.500
  %384 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %385 = load i32, i32* %code, align 4, !tbaa !5
  %call504 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %384, i32 %385) #4
  store i32 %call504, i32* %code, align 4, !tbaa !5
  %cmp505 = icmp sge i32 %call504, 0
  br label %land.end.507

land.end.507:                                     ; preds = %land.rhs.503, %do.cond.500
  %386 = phi i1 [ false, %do.cond.500 ], [ %cmp505, %land.rhs.503 ]
  br i1 %386, label %do.body.497, label %do.end.508

do.end.508:                                       ; preds = %land.end.507
  %387 = load i32, i32* %code, align 4, !tbaa !5
  %cmp509 = icmp slt i32 %387, 0
  br i1 %cmp509, label %land.lhs.true.511, label %if.end.515

land.lhs.true.511:                                ; preds = %do.end.508
  %388 = load i32, i32* %code, align 4, !tbaa !5
  %band_code512 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %388, i32* %band_code512, align 4, !tbaa !80
  %tobool513 = icmp ne i32 %388, 0
  br i1 %tobool513, label %if.then.514, label %if.end.515

if.then.514:                                      ; preds = %land.lhs.true.511
  store i32 18, i32* %cleanup.dest.slot
  br label %cleanup.518

if.end.515:                                       ; preds = %land.lhs.true.511, %do.end.508
  br label %if.end.516

if.end.516:                                       ; preds = %if.end.515, %land.lhs.true.491, %lor.lhs.false.485
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516, %land.lhs.true.300
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.518

cleanup.518:                                      ; preds = %if.then.514, %if.then.338, %if.end.517, %cleanup
  %389 = bitcast i64* %offset_temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.655 [
    i32 0, label %cleanup.cont
    i32 18, label %error_in_rect
  ]

cleanup.cont:                                     ; preds = %cleanup.518
  br label %if.end.519

if.end.519:                                       ; preds = %cleanup.cont, %lor.lhs.false.284
  br label %do.body.520

do.body.520:                                      ; preds = %land.end.540, %if.end.519
  %390 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %cmp521 = icmp ne i64* %390, null
  br i1 %cmp521, label %cond.true.523, label %cond.false.528

cond.true.523:                                    ; preds = %do.body.520
  %391 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls524 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %392 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls524, align 8, !tbaa !76
  %393 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds i64, i64* %393, i64 0
  %394 = load i64, i64* %arrayidx525, align 8, !tbaa !58
  %395 = load i64*, i64** %tcolors.addr, align 8, !tbaa !1
  %arrayidx526 = getelementptr inbounds i64, i64* %395, i64 1
  %396 = load i64, i64* %arrayidx526, align 8, !tbaa !58
  %call527 = call i32 @cmd_set_tile_colors(%struct.gx_device_clist_writer_s* %391, %struct.gx_clist_state_s* %392, i64 %394, i64 %396) #4
  br label %cond.end.531

cond.false.528:                                   ; preds = %do.body.520
  %397 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls529 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %398 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls529, align 8, !tbaa !76
  %call530 = call i32 @cmd_set_tile_colors(%struct.gx_device_clist_writer_s* %397, %struct.gx_clist_state_s* %398, i64 -1, i64 -1) #4
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.false.528, %cond.true.523
  %cond532 = phi i32 [ %call527, %cond.true.523 ], [ %call530, %cond.false.528 ]
  store i32 %cond532, i32* %code, align 4, !tbaa !5
  br label %do.cond.533

do.cond.533:                                      ; preds = %cond.end.531
  %399 = load i32, i32* %code, align 4, !tbaa !5
  %cmp534 = icmp slt i32 %399, 0
  br i1 %cmp534, label %land.rhs.536, label %land.end.540

land.rhs.536:                                     ; preds = %do.cond.533
  %400 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %401 = load i32, i32* %code, align 4, !tbaa !5
  %call537 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %400, i32 %401) #4
  store i32 %call537, i32* %code, align 4, !tbaa !5
  %cmp538 = icmp sge i32 %call537, 0
  br label %land.end.540

land.end.540:                                     ; preds = %land.rhs.536, %do.cond.533
  %402 = phi i1 [ false, %do.cond.533 ], [ %cmp538, %land.rhs.536 ]
  br i1 %402, label %do.body.520, label %do.end.541

do.end.541:                                       ; preds = %land.end.540
  %403 = load i32, i32* %code, align 4, !tbaa !5
  %cmp542 = icmp slt i32 %403, 0
  br i1 %cmp542, label %land.lhs.true.544, label %if.end.548

land.lhs.true.544:                                ; preds = %do.end.541
  %404 = load i32, i32* %code, align 4, !tbaa !5
  %band_code545 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %404, i32* %band_code545, align 4, !tbaa !80
  %tobool546 = icmp ne i32 %404, 0
  br i1 %tobool546, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %land.lhs.true.544
  br label %error_in_rect

if.end.548:                                       ; preds = %land.lhs.true.544, %do.end.541
  br label %if.end.549

if.end.549:                                       ; preds = %if.end.548, %cond.end.257
  br label %do.body.550

do.body.550:                                      ; preds = %land.end.583, %if.end.549
  store i32 0, i32* %code, align 4, !tbaa !5
  %405 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %pcls551 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %406 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls551, align 8, !tbaa !76
  %lop552 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %406, i32 0, i32 9
  %407 = load i32, i32* %lop552, align 4, !tbaa !144
  %cmp553 = icmp ne i32 %405, %407
  br i1 %cmp553, label %if.then.555, label %if.end.558

if.then.555:                                      ; preds = %do.body.550
  %408 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls556 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %409 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls556, align 8, !tbaa !76
  %410 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call557 = call i32 @cmd_set_lop(%struct.gx_device_clist_writer_s* %408, %struct.gx_clist_state_s* %409, i32 %410) #4
  store i32 %call557, i32* %code, align 4, !tbaa !5
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.555, %do.body.550
  %411 = load i32, i32* %code, align 4, !tbaa !5
  %cmp559 = icmp sge i32 %411, 0
  br i1 %cmp559, label %if.then.561, label %if.end.575

if.then.561:                                      ; preds = %if.end.558
  %pcls562 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %412 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls562, align 8, !tbaa !76
  %lop_enabled = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %412, i32 0, i32 10
  %413 = load i16, i16* %lop_enabled, align 2, !tbaa !79
  %conv563 = sext i16 %413 to i32
  %cmp564 = icmp eq i32 %conv563, 0
  br i1 %cmp564, label %land.lhs.true.566, label %cond.false.572

land.lhs.true.566:                                ; preds = %if.then.561
  %414 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %pcls567 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %415 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls567, align 8, !tbaa !76
  %call568 = call i32 @cmd_put_enable_lop(%struct.gx_device_clist_writer_s* %414, %struct.gx_clist_state_s* %415, i32 1) #4
  %cmp569 = icmp slt i32 %call568, 0
  br i1 %cmp569, label %cond.true.571, label %cond.false.572

cond.true.571:                                    ; preds = %land.lhs.true.566
  %416 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %416, i32 0, i32 65
  %417 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.573

cond.false.572:                                   ; preds = %land.lhs.true.566, %if.then.561
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.572, %cond.true.571
  %cond574 = phi i32 [ %417, %cond.true.571 ], [ 0, %cond.false.572 ]
  store i32 %cond574, i32* %code, align 4, !tbaa !5
  br label %if.end.575

if.end.575:                                       ; preds = %cond.end.573, %if.end.558
  br label %do.cond.576

do.cond.576:                                      ; preds = %if.end.575
  %418 = load i32, i32* %code, align 4, !tbaa !5
  %cmp577 = icmp slt i32 %418, 0
  br i1 %cmp577, label %land.rhs.579, label %land.end.583

land.rhs.579:                                     ; preds = %do.cond.576
  %419 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %420 = load i32, i32* %code, align 4, !tbaa !5
  %call580 = call i32 @clist_VMerror_recover(%struct.gx_device_clist_writer_s* %419, i32 %420) #4
  store i32 %call580, i32* %code, align 4, !tbaa !5
  %cmp581 = icmp sge i32 %call580, 0
  br label %land.end.583

land.end.583:                                     ; preds = %land.rhs.579, %do.cond.576
  %421 = phi i1 [ false, %do.cond.576 ], [ %cmp581, %land.rhs.579 ]
  br i1 %421, label %do.body.550, label %do.end.584

do.end.584:                                       ; preds = %land.end.583
  %422 = load i32, i32* %code, align 4, !tbaa !5
  %cmp585 = icmp slt i32 %422, 0
  br i1 %cmp585, label %land.lhs.true.587, label %if.end.591

land.lhs.true.587:                                ; preds = %do.end.584
  %423 = load i32, i32* %code, align 4, !tbaa !5
  %band_code588 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %423, i32* %band_code588, align 4, !tbaa !80
  %tobool589 = icmp ne i32 %423, 0
  br i1 %tobool589, label %if.then.590, label %if.end.591

if.then.590:                                      ; preds = %land.lhs.true.587
  br label %error_in_rect

if.end.591:                                       ; preds = %land.lhs.true.587, %do.end.584
  %pcls592 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %424 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls592, align 8, !tbaa !76
  %lop_enabled593 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %424, i32 0, i32 10
  store i16 -1, i16* %lop_enabled593, align 2, !tbaa !79
  %425 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting594 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %425, i32 0, i32 96
  %426 = load i32, i32* %driver_call_nesting594, align 4, !tbaa !82
  %inc595 = add nsw i32 %426, 1
  store i32 %inc595, i32* %driver_call_nesting594, align 4, !tbaa !82
  %427 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %cmp596 = icmp ne i64* %427, null
  br i1 %cmp596, label %if.then.598, label %if.else.615

if.then.598:                                      ; preds = %if.end.591
  %428 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx599 = getelementptr inbounds i64, i64* %428, i64 0
  %429 = load i64, i64* %arrayidx599, align 8, !tbaa !58
  %430 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx600 = getelementptr inbounds i64, i64* %430, i64 1
  %431 = load i64, i64* %arrayidx600, align 8, !tbaa !58
  %cmp601 = icmp eq i64 %429, %431
  br i1 %cmp601, label %if.then.603, label %if.else.608

if.then.603:                                      ; preds = %if.then.598
  %432 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %433 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y604 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %434 = load i32, i32* %y604, align 4, !tbaa !68
  %435 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height605 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %436 = load i32, i32* %height605, align 4, !tbaa !70
  %437 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx606 = getelementptr inbounds i64, i64* %437, i64 1
  %438 = load i64, i64* %arrayidx606, align 8, !tbaa !58
  %call607 = call i32 @clist_fill_rectangle(%struct.gx_device_s* %432, i32 %433, i32 %434, i32 %435, i32 %436, i64 %438) #4
  store i32 %call607, i32* %code, align 4, !tbaa !5
  br label %if.end.614

if.else.608:                                      ; preds = %if.then.598
  %439 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %440 = load i8*, i8** %row, align 8, !tbaa !1
  %441 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %442 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %443 = load i64, i64* %id.addr, align 8, !tbaa !58
  %444 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y609 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %445 = load i32, i32* %y609, align 4, !tbaa !68
  %446 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height610 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %447 = load i32, i32* %height610, align 4, !tbaa !70
  %448 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx611 = getelementptr inbounds i64, i64* %448, i64 0
  %449 = load i64, i64* %arrayidx611, align 8, !tbaa !58
  %450 = load i64*, i64** %scolors.addr, align 8, !tbaa !1
  %arrayidx612 = getelementptr inbounds i64, i64* %450, i64 1
  %451 = load i64, i64* %arrayidx612, align 8, !tbaa !58
  %call613 = call i32 @clist_copy_mono(%struct.gx_device_s* %439, i8* %440, i32 %441, i32 %442, i64 %443, i32 %444, i32 %445, i32 %446, i32 %447, i64 %449, i64 %451) #4
  store i32 %call613, i32* %code, align 4, !tbaa !5
  br label %if.end.614

if.end.614:                                       ; preds = %if.else.608, %if.then.603
  br label %if.end.626

if.else.615:                                      ; preds = %if.end.591
  %452 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %tobool616 = icmp ne i32 %452, 0
  br i1 %tobool616, label %if.then.617, label %if.else.621

if.then.617:                                      ; preds = %if.else.615
  %453 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %454 = load i8*, i8** %row, align 8, !tbaa !1
  %455 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %456 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %457 = load i64, i64* %id.addr, align 8, !tbaa !58
  %458 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y618 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %459 = load i32, i32* %y618, align 4, !tbaa !68
  %460 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height619 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %461 = load i32, i32* %height619, align 4, !tbaa !70
  %462 = load i32, i32* %planar_height.addr, align 4, !tbaa !5
  %call620 = call i32 @clist_copy_planes(%struct.gx_device_s* %453, i8* %454, i32 %455, i32 %456, i64 %457, i32 %458, i32 %459, i32 %460, i32 %461, i32 %462) #4
  store i32 %call620, i32* %code, align 4, !tbaa !5
  br label %if.end.625

if.else.621:                                      ; preds = %if.else.615
  %463 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %464 = load i8*, i8** %row, align 8, !tbaa !1
  %465 = load i32, i32* %sourcex.addr, align 4, !tbaa !5
  %466 = load i32, i32* %sraster.addr, align 4, !tbaa !5
  %467 = load i64, i64* %id.addr, align 8, !tbaa !58
  %468 = load i32, i32* %rx.addr, align 4, !tbaa !5
  %y622 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %469 = load i32, i32* %y622, align 4, !tbaa !68
  %470 = load i32, i32* %rwidth.addr, align 4, !tbaa !5
  %height623 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %471 = load i32, i32* %height623, align 4, !tbaa !70
  %call624 = call i32 @clist_copy_color(%struct.gx_device_s* %463, i8* %464, i32 %465, i32 %466, i64 %467, i32 %468, i32 %469, i32 %470, i32 %471) #4
  store i32 %call624, i32* %code, align 4, !tbaa !5
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.621, %if.then.617
  br label %if.end.626

if.end.626:                                       ; preds = %if.end.625, %if.end.614
  %472 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting627 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %472, i32 0, i32 96
  %473 = load i32, i32* %driver_call_nesting627, align 4, !tbaa !82
  %dec628 = add nsw i32 %473, -1
  store i32 %dec628, i32* %driver_call_nesting627, align 4, !tbaa !82
  %pcls629 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 6
  %474 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls629, align 8, !tbaa !76
  %lop_enabled630 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %474, i32 0, i32 10
  store i16 1, i16* %lop_enabled630, align 2, !tbaa !79
  %475 = load i32, i32* %code, align 4, !tbaa !5
  %cmp631 = icmp slt i32 %475, 0
  br i1 %cmp631, label %land.lhs.true.633, label %if.end.637

land.lhs.true.633:                                ; preds = %if.end.626
  %476 = load i32, i32* %code, align 4, !tbaa !5
  %band_code634 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %476, i32* %band_code634, align 4, !tbaa !80
  %tobool635 = icmp ne i32 %476, 0
  br i1 %tobool635, label %if.then.636, label %if.end.637

if.then.636:                                      ; preds = %land.lhs.true.633
  br label %error_in_rect

if.end.637:                                       ; preds = %land.lhs.true.633, %if.end.626
  store i32 15, i32* %cleanup.dest.slot
  br label %cleanup.655

error_in_rect:                                    ; preds = %cleanup.518, %if.then.636, %if.then.590, %if.then.547
  %477 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %error_is_retryable = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %477, i32 0, i32 94
  %478 = load i32, i32* %error_is_retryable, align 4, !tbaa !81
  %tobool638 = icmp ne i32 %478, 0
  br i1 %tobool638, label %land.lhs.true.639, label %if.then.649

land.lhs.true.639:                                ; preds = %error_in_rect
  %479 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %driver_call_nesting640 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %479, i32 0, i32 96
  %480 = load i32, i32* %driver_call_nesting640, align 4, !tbaa !82
  %cmp641 = icmp eq i32 %480, 0
  br i1 %cmp641, label %land.lhs.true.643, label %if.then.649

land.lhs.true.643:                                ; preds = %land.lhs.true.639
  %481 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cdev, align 8, !tbaa !1
  %band_code644 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %482 = load i32, i32* %band_code644, align 4, !tbaa !80
  %call645 = call i32 @clist_VMerror_recover_flush(%struct.gx_device_clist_writer_s* %481, i32 %482) #4
  %band_code646 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  store i32 %call645, i32* %band_code646, align 4, !tbaa !80
  %cmp647 = icmp sge i32 %call645, 0
  br i1 %cmp647, label %if.end.651, label %if.then.649

if.then.649:                                      ; preds = %land.lhs.true.643, %land.lhs.true.639, %error_in_rect
  %band_code650 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 4
  %483 = load i32, i32* %band_code650, align 4, !tbaa !80
  store i32 %483, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.655

if.end.651:                                       ; preds = %land.lhs.true.643
  %height652 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %484 = load i32, i32* %height652, align 4, !tbaa !70
  %y653 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %485 = load i32, i32* %y653, align 4, !tbaa !68
  %sub654 = sub nsw i32 %485, %484
  store i32 %sub654, i32* %y653, align 4, !tbaa !68
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.655

cleanup.655:                                      ; preds = %if.end.651, %if.then.649, %if.end.637, %cleanup.518
  %486 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %486) #1
  %487 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %487) #1
  %cleanup.dest.657 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.657, label %cleanup.667 [
    i32 0, label %cleanup.cont.658
    i32 15, label %do.cond.659
  ]

cleanup.cont.658:                                 ; preds = %cleanup.655
  br label %do.cond.659

do.cond.659:                                      ; preds = %cleanup.cont.658, %cleanup.655
  %height660 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 1
  %488 = load i32, i32* %height660, align 4, !tbaa !70
  %y661 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 0
  %489 = load i32, i32* %y661, align 4, !tbaa !68
  %add662 = add nsw i32 %489, %488
  store i32 %add662, i32* %y661, align 4, !tbaa !68
  %yend663 = getelementptr inbounds %struct.cmd_rects_enum_s, %struct.cmd_rects_enum_s* %re, i32 0, i32 2
  %490 = load i32, i32* %yend663, align 4, !tbaa !71
  %cmp664 = icmp slt i32 %add662, %490
  br i1 %cmp664, label %do.body.233, label %do.end.666

do.end.666:                                       ; preds = %do.cond.659
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.667

cleanup.667:                                      ; preds = %do.end.666, %cleanup.655, %if.then.202, %if.then.114
  %491 = bitcast %struct.cmd_rects_enum_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %491) #1
  %492 = bitcast i32* %slow_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %492) #1
  %493 = bitcast i32* %color_rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %493) #1
  %494 = bitcast i64* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %494) #1
  %495 = bitcast i64* %S to i8*
  call void @llvm.lifetime.end(i64 8, i8* %495) #1
  %496 = bitcast i32* %subtractive to i8*
  call void @llvm.lifetime.end(i64 4, i8* %496) #1
  %497 = bitcast i64* %all to i8*
  call void @llvm.lifetime.end(i64 8, i8* %497) #1
  %498 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %498) #1
  %499 = bitcast %struct.gx_strip_bitmap_s** %tiles to i8*
  call void @llvm.lifetime.end(i64 8, i8* %499) #1
  %500 = bitcast %struct.gx_strip_bitmap_s* %tile_with_id to i8*
  call void @llvm.lifetime.end(i64 48, i8* %500) #1
  %501 = bitcast i32* %rop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %501) #1
  %502 = bitcast %struct.gx_device_clist_writer_s** %cdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %502) #1
  %503 = load i32, i32* %retval
  ret i32 %503
}

declare i64 @gx_device_black(%struct.gx_device_s*) #2

declare i64 @gx_device_white(%struct.gx_device_s*) #2

declare i64 @gs_next_ids(%struct.gs_memory_s*, i32) #2

declare i32 @cmd_set_lop(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

declare i32 @gx_default_fill_trapezoid(%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32) #2

declare i32 @cmd_update_lop(%struct.gx_device_clist_writer_s*, %struct.gx_clist_state_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmd_write_trapezoid_cmd(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %op, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %options, %struct.gs_fill_attributes_s* %fa, i32* %c0, i32* %c1, i32* %c2, i32* %c3) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %op.addr = alloca i32, align 4
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %options.addr = alloca i32, align 4
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %c3.addr = alloca i32*, align 8
  %dp = alloca i8*, align 8
  %rcsize = alloca i32, align 4
  %code = alloca i32, align 4
  %colors_mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !5
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %options, i32* %options.addr, align 4, !tbaa !5
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32* %c3, i32** %c3.addr, align 8, !tbaa !1
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %colors_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %colors_mask, align 4, !tbaa !5
  %4 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %4, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %5 = load i32, i32* %x, align 4, !tbaa !93
  %and = and i32 %5, -128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %6 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start1 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %6, i32 0, i32 0
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start1, i32 0, i32 0
  %7 = load i32, i32* %x2, align 4, !tbaa !93
  %and3 = and i32 %7, -16384
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %cond.false.6, label %cond.true.5

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %8 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start7 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %8, i32 0, i32 0
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start7, i32 0, i32 0
  %9 = load i32, i32* %x8, align 4, !tbaa !93
  %call = call i32 @cmd_size_w(i32 %9) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i32 [ 2, %cond.true.5 ], [ %call, %cond.false.6 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ 1, %cond.true ], [ %cond, %cond.end ]
  %add = add nsw i32 1, %cond10
  %10 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start11 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %10, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start11, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !88
  %and12 = and i32 %11, -128
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.false.15, label %cond.true.14

cond.true.14:                                     ; preds = %cond.end.9
  br label %cond.end.27

cond.false.15:                                    ; preds = %cond.end.9
  %12 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start16 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %12, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start16, i32 0, i32 1
  %13 = load i32, i32* %y17, align 4, !tbaa !88
  %and18 = and i32 %13, -16384
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.false.21, label %cond.true.20

cond.true.20:                                     ; preds = %cond.false.15
  br label %cond.end.25

cond.false.21:                                    ; preds = %cond.false.15
  %14 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %14, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  %15 = load i32, i32* %y23, align 4, !tbaa !88
  %call24 = call i32 @cmd_size_w(i32 %15) #4
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.21, %cond.true.20
  %cond26 = phi i32 [ 2, %cond.true.20 ], [ %call24, %cond.false.21 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.true.14
  %cond28 = phi i32 [ 1, %cond.true.14 ], [ %cond26, %cond.end.25 ]
  %add29 = add nsw i32 %add, %cond28
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 1
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %17 = load i32, i32* %x30, align 4, !tbaa !94
  %and31 = and i32 %17, -128
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %cond.false.34, label %cond.true.33

cond.true.33:                                     ; preds = %cond.end.27
  br label %cond.end.46

cond.false.34:                                    ; preds = %cond.end.27
  %18 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end35 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %18, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end35, i32 0, i32 0
  %19 = load i32, i32* %x36, align 4, !tbaa !94
  %and37 = and i32 %19, -16384
  %tobool38 = icmp ne i32 %and37, 0
  br i1 %tobool38, label %cond.false.40, label %cond.true.39

cond.true.39:                                     ; preds = %cond.false.34
  br label %cond.end.44

cond.false.40:                                    ; preds = %cond.false.34
  %20 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end41 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %20, i32 0, i32 1
  %x42 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end41, i32 0, i32 0
  %21 = load i32, i32* %x42, align 4, !tbaa !94
  %call43 = call i32 @cmd_size_w(i32 %21) #4
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.40, %cond.true.39
  %cond45 = phi i32 [ 2, %cond.true.39 ], [ %call43, %cond.false.40 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.33
  %cond47 = phi i32 [ 1, %cond.true.33 ], [ %cond45, %cond.end.44 ]
  %add48 = add nsw i32 %add29, %cond47
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end49 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 1
  %y50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end49, i32 0, i32 1
  %23 = load i32, i32* %y50, align 4, !tbaa !90
  %and51 = and i32 %23, -128
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %cond.false.54, label %cond.true.53

cond.true.53:                                     ; preds = %cond.end.46
  br label %cond.end.66

cond.false.54:                                    ; preds = %cond.end.46
  %24 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end55 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %24, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end55, i32 0, i32 1
  %25 = load i32, i32* %y56, align 4, !tbaa !90
  %and57 = and i32 %25, -16384
  %tobool58 = icmp ne i32 %and57, 0
  br i1 %tobool58, label %cond.false.60, label %cond.true.59

cond.true.59:                                     ; preds = %cond.false.54
  br label %cond.end.64

cond.false.60:                                    ; preds = %cond.false.54
  %26 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end61 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %26, i32 0, i32 1
  %y62 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end61, i32 0, i32 1
  %27 = load i32, i32* %y62, align 4, !tbaa !90
  %call63 = call i32 @cmd_size_w(i32 %27) #4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.60, %cond.true.59
  %cond65 = phi i32 [ 2, %cond.true.59 ], [ %call63, %cond.false.60 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.53
  %cond67 = phi i32 [ 1, %cond.true.53 ], [ %cond65, %cond.end.64 ]
  %add68 = add nsw i32 %add48, %cond67
  %28 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start69 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %28, i32 0, i32 0
  %x70 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start69, i32 0, i32 0
  %29 = load i32, i32* %x70, align 4, !tbaa !93
  %and71 = and i32 %29, -128
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %cond.false.74, label %cond.true.73

cond.true.73:                                     ; preds = %cond.end.66
  br label %cond.end.86

cond.false.74:                                    ; preds = %cond.end.66
  %30 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start75 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %30, i32 0, i32 0
  %x76 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start75, i32 0, i32 0
  %31 = load i32, i32* %x76, align 4, !tbaa !93
  %and77 = and i32 %31, -16384
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %cond.false.80, label %cond.true.79

cond.true.79:                                     ; preds = %cond.false.74
  br label %cond.end.84

cond.false.80:                                    ; preds = %cond.false.74
  %32 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start81 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %32, i32 0, i32 0
  %x82 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start81, i32 0, i32 0
  %33 = load i32, i32* %x82, align 4, !tbaa !93
  %call83 = call i32 @cmd_size_w(i32 %33) #4
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.80, %cond.true.79
  %cond85 = phi i32 [ 2, %cond.true.79 ], [ %call83, %cond.false.80 ]
  br label %cond.end.86

cond.end.86:                                      ; preds = %cond.end.84, %cond.true.73
  %cond87 = phi i32 [ 1, %cond.true.73 ], [ %cond85, %cond.end.84 ]
  %add88 = add nsw i32 %add68, %cond87
  %34 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start89 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %34, i32 0, i32 0
  %y90 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start89, i32 0, i32 1
  %35 = load i32, i32* %y90, align 4, !tbaa !88
  %and91 = and i32 %35, -128
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %cond.false.94, label %cond.true.93

cond.true.93:                                     ; preds = %cond.end.86
  br label %cond.end.106

cond.false.94:                                    ; preds = %cond.end.86
  %36 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start95 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %36, i32 0, i32 0
  %y96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start95, i32 0, i32 1
  %37 = load i32, i32* %y96, align 4, !tbaa !88
  %and97 = and i32 %37, -16384
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %cond.false.100, label %cond.true.99

cond.true.99:                                     ; preds = %cond.false.94
  br label %cond.end.104

cond.false.100:                                   ; preds = %cond.false.94
  %38 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start101 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %38, i32 0, i32 0
  %y102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start101, i32 0, i32 1
  %39 = load i32, i32* %y102, align 4, !tbaa !88
  %call103 = call i32 @cmd_size_w(i32 %39) #4
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.100, %cond.true.99
  %cond105 = phi i32 [ 2, %cond.true.99 ], [ %call103, %cond.false.100 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.93
  %cond107 = phi i32 [ 1, %cond.true.93 ], [ %cond105, %cond.end.104 ]
  %add108 = add nsw i32 %add88, %cond107
  %40 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end109 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %40, i32 0, i32 1
  %x110 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end109, i32 0, i32 0
  %41 = load i32, i32* %x110, align 4, !tbaa !94
  %and111 = and i32 %41, -128
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %cond.false.114, label %cond.true.113

cond.true.113:                                    ; preds = %cond.end.106
  br label %cond.end.126

cond.false.114:                                   ; preds = %cond.end.106
  %42 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end115 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %42, i32 0, i32 1
  %x116 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end115, i32 0, i32 0
  %43 = load i32, i32* %x116, align 4, !tbaa !94
  %and117 = and i32 %43, -16384
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %cond.false.120, label %cond.true.119

cond.true.119:                                    ; preds = %cond.false.114
  br label %cond.end.124

cond.false.120:                                   ; preds = %cond.false.114
  %44 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end121 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %44, i32 0, i32 1
  %x122 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end121, i32 0, i32 0
  %45 = load i32, i32* %x122, align 4, !tbaa !94
  %call123 = call i32 @cmd_size_w(i32 %45) #4
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.120, %cond.true.119
  %cond125 = phi i32 [ 2, %cond.true.119 ], [ %call123, %cond.false.120 ]
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.end.124, %cond.true.113
  %cond127 = phi i32 [ 1, %cond.true.113 ], [ %cond125, %cond.end.124 ]
  %add128 = add nsw i32 %add108, %cond127
  %46 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end129 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %46, i32 0, i32 1
  %y130 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end129, i32 0, i32 1
  %47 = load i32, i32* %y130, align 4, !tbaa !90
  %and131 = and i32 %47, -128
  %tobool132 = icmp ne i32 %and131, 0
  br i1 %tobool132, label %cond.false.134, label %cond.true.133

cond.true.133:                                    ; preds = %cond.end.126
  br label %cond.end.146

cond.false.134:                                   ; preds = %cond.end.126
  %48 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end135 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %48, i32 0, i32 1
  %y136 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end135, i32 0, i32 1
  %49 = load i32, i32* %y136, align 4, !tbaa !90
  %and137 = and i32 %49, -16384
  %tobool138 = icmp ne i32 %and137, 0
  br i1 %tobool138, label %cond.false.140, label %cond.true.139

cond.true.139:                                    ; preds = %cond.false.134
  br label %cond.end.144

cond.false.140:                                   ; preds = %cond.false.134
  %50 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end141 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %50, i32 0, i32 1
  %y142 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end141, i32 0, i32 1
  %51 = load i32, i32* %y142, align 4, !tbaa !90
  %call143 = call i32 @cmd_size_w(i32 %51) #4
  br label %cond.end.144

cond.end.144:                                     ; preds = %cond.false.140, %cond.true.139
  %cond145 = phi i32 [ 2, %cond.true.139 ], [ %call143, %cond.false.140 ]
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.end.144, %cond.true.133
  %cond147 = phi i32 [ 1, %cond.true.133 ], [ %cond145, %cond.end.144 ]
  %add148 = add nsw i32 %add128, %cond147
  %52 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and149 = and i32 %52, -128
  %tobool150 = icmp ne i32 %and149, 0
  br i1 %tobool150, label %cond.false.152, label %cond.true.151

cond.true.151:                                    ; preds = %cond.end.146
  br label %cond.end.160

cond.false.152:                                   ; preds = %cond.end.146
  %53 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and153 = and i32 %53, -16384
  %tobool154 = icmp ne i32 %and153, 0
  br i1 %tobool154, label %cond.false.156, label %cond.true.155

cond.true.155:                                    ; preds = %cond.false.152
  br label %cond.end.158

cond.false.156:                                   ; preds = %cond.false.152
  %54 = load i32, i32* %options.addr, align 4, !tbaa !5
  %call157 = call i32 @cmd_size_w(i32 %54) #4
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.156, %cond.true.155
  %cond159 = phi i32 [ 2, %cond.true.155 ], [ %call157, %cond.false.156 ]
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.end.158, %cond.true.151
  %cond161 = phi i32 [ 1, %cond.true.151 ], [ %cond159, %cond.end.158 ]
  %add162 = add nsw i32 %add148, %cond161
  store i32 %add162, i32* %rcsize, align 4, !tbaa !5
  %55 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and163 = and i32 %55, 4
  %tobool164 = icmp ne i32 %and163, 0
  br i1 %tobool164, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.160
  %56 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %and165 = and i32 %56, -128
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %cond.false.168, label %cond.true.167

cond.true.167:                                    ; preds = %if.then
  br label %cond.end.176

cond.false.168:                                   ; preds = %if.then
  %57 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %and169 = and i32 %57, -16384
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %cond.false.172, label %cond.true.171

cond.true.171:                                    ; preds = %cond.false.168
  br label %cond.end.174

cond.false.172:                                   ; preds = %cond.false.168
  %58 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %call173 = call i32 @cmd_size_w(i32 %58) #4
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.172, %cond.true.171
  %cond175 = phi i32 [ 2, %cond.true.171 ], [ %call173, %cond.false.172 ]
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.174, %cond.true.167
  %cond177 = phi i32 [ 1, %cond.true.167 ], [ %cond175, %cond.end.174 ]
  %59 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %and178 = and i32 %59, -128
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %cond.false.181, label %cond.true.180

cond.true.180:                                    ; preds = %cond.end.176
  br label %cond.end.189

cond.false.181:                                   ; preds = %cond.end.176
  %60 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %and182 = and i32 %60, -16384
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %cond.false.185, label %cond.true.184

cond.true.184:                                    ; preds = %cond.false.181
  br label %cond.end.187

cond.false.185:                                   ; preds = %cond.false.181
  %61 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %call186 = call i32 @cmd_size_w(i32 %61) #4
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.false.185, %cond.true.184
  %cond188 = phi i32 [ 2, %cond.true.184 ], [ %call186, %cond.false.185 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end.187, %cond.true.180
  %cond190 = phi i32 [ 1, %cond.true.180 ], [ %cond188, %cond.end.187 ]
  %add191 = add nsw i32 %cond177, %cond190
  %62 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add192 = add nsw i32 %62, %add191
  store i32 %add192, i32* %rcsize, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %cond.end.189, %cond.end.160
  %63 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and193 = and i32 %63, 2
  %tobool194 = icmp ne i32 %and193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.322

if.then.195:                                      ; preds = %if.end
  %64 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %64, i32 0, i32 0
  %65 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !91
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %65, i32 0, i32 0
  %x196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %66 = load i32, i32* %x196, align 4, !tbaa !83
  %and197 = and i32 %66, -128
  %tobool198 = icmp ne i32 %and197, 0
  br i1 %tobool198, label %cond.false.200, label %cond.true.199

cond.true.199:                                    ; preds = %if.then.195
  br label %cond.end.214

cond.false.200:                                   ; preds = %if.then.195
  %67 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip201 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %67, i32 0, i32 0
  %68 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip201, align 8, !tbaa !91
  %p202 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %68, i32 0, i32 0
  %x203 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p202, i32 0, i32 0
  %69 = load i32, i32* %x203, align 4, !tbaa !83
  %and204 = and i32 %69, -16384
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %cond.false.207, label %cond.true.206

cond.true.206:                                    ; preds = %cond.false.200
  br label %cond.end.212

cond.false.207:                                   ; preds = %cond.false.200
  %70 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip208 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %70, i32 0, i32 0
  %71 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip208, align 8, !tbaa !91
  %p209 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %71, i32 0, i32 0
  %x210 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p209, i32 0, i32 0
  %72 = load i32, i32* %x210, align 4, !tbaa !83
  %call211 = call i32 @cmd_size_w(i32 %72) #4
  br label %cond.end.212

cond.end.212:                                     ; preds = %cond.false.207, %cond.true.206
  %cond213 = phi i32 [ 2, %cond.true.206 ], [ %call211, %cond.false.207 ]
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.end.212, %cond.true.199
  %cond215 = phi i32 [ 1, %cond.true.199 ], [ %cond213, %cond.end.212 ]
  %73 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip216 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %73, i32 0, i32 0
  %74 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip216, align 8, !tbaa !91
  %p217 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %74, i32 0, i32 0
  %y218 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p217, i32 0, i32 1
  %75 = load i32, i32* %y218, align 4, !tbaa !85
  %and219 = and i32 %75, -128
  %tobool220 = icmp ne i32 %and219, 0
  br i1 %tobool220, label %cond.false.222, label %cond.true.221

cond.true.221:                                    ; preds = %cond.end.214
  br label %cond.end.236

cond.false.222:                                   ; preds = %cond.end.214
  %76 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip223 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %76, i32 0, i32 0
  %77 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip223, align 8, !tbaa !91
  %p224 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %77, i32 0, i32 0
  %y225 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p224, i32 0, i32 1
  %78 = load i32, i32* %y225, align 4, !tbaa !85
  %and226 = and i32 %78, -16384
  %tobool227 = icmp ne i32 %and226, 0
  br i1 %tobool227, label %cond.false.229, label %cond.true.228

cond.true.228:                                    ; preds = %cond.false.222
  br label %cond.end.234

cond.false.229:                                   ; preds = %cond.false.222
  %79 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip230 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %79, i32 0, i32 0
  %80 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip230, align 8, !tbaa !91
  %p231 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %80, i32 0, i32 0
  %y232 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p231, i32 0, i32 1
  %81 = load i32, i32* %y232, align 4, !tbaa !85
  %call233 = call i32 @cmd_size_w(i32 %81) #4
  br label %cond.end.234

cond.end.234:                                     ; preds = %cond.false.229, %cond.true.228
  %cond235 = phi i32 [ 2, %cond.true.228 ], [ %call233, %cond.false.229 ]
  br label %cond.end.236

cond.end.236:                                     ; preds = %cond.end.234, %cond.true.221
  %cond237 = phi i32 [ 1, %cond.true.221 ], [ %cond235, %cond.end.234 ]
  %add238 = add nsw i32 %cond215, %cond237
  %82 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip239 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %82, i32 0, i32 0
  %83 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip239, align 8, !tbaa !91
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %83, i32 0, i32 1
  %x240 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %84 = load i32, i32* %x240, align 4, !tbaa !86
  %and241 = and i32 %84, -128
  %tobool242 = icmp ne i32 %and241, 0
  br i1 %tobool242, label %cond.false.244, label %cond.true.243

cond.true.243:                                    ; preds = %cond.end.236
  br label %cond.end.258

cond.false.244:                                   ; preds = %cond.end.236
  %85 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip245 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %85, i32 0, i32 0
  %86 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip245, align 8, !tbaa !91
  %q246 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %86, i32 0, i32 1
  %x247 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q246, i32 0, i32 0
  %87 = load i32, i32* %x247, align 4, !tbaa !86
  %and248 = and i32 %87, -16384
  %tobool249 = icmp ne i32 %and248, 0
  br i1 %tobool249, label %cond.false.251, label %cond.true.250

cond.true.250:                                    ; preds = %cond.false.244
  br label %cond.end.256

cond.false.251:                                   ; preds = %cond.false.244
  %88 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip252 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %88, i32 0, i32 0
  %89 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip252, align 8, !tbaa !91
  %q253 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %89, i32 0, i32 1
  %x254 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q253, i32 0, i32 0
  %90 = load i32, i32* %x254, align 4, !tbaa !86
  %call255 = call i32 @cmd_size_w(i32 %90) #4
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.251, %cond.true.250
  %cond257 = phi i32 [ 2, %cond.true.250 ], [ %call255, %cond.false.251 ]
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.256, %cond.true.243
  %cond259 = phi i32 [ 1, %cond.true.243 ], [ %cond257, %cond.end.256 ]
  %add260 = add nsw i32 %add238, %cond259
  %91 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip261 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %91, i32 0, i32 0
  %92 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip261, align 8, !tbaa !91
  %q262 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %92, i32 0, i32 1
  %y263 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q262, i32 0, i32 1
  %93 = load i32, i32* %y263, align 4, !tbaa !87
  %and264 = and i32 %93, -128
  %tobool265 = icmp ne i32 %and264, 0
  br i1 %tobool265, label %cond.false.267, label %cond.true.266

cond.true.266:                                    ; preds = %cond.end.258
  br label %cond.end.281

cond.false.267:                                   ; preds = %cond.end.258
  %94 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip268 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %94, i32 0, i32 0
  %95 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip268, align 8, !tbaa !91
  %q269 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %95, i32 0, i32 1
  %y270 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q269, i32 0, i32 1
  %96 = load i32, i32* %y270, align 4, !tbaa !87
  %and271 = and i32 %96, -16384
  %tobool272 = icmp ne i32 %and271, 0
  br i1 %tobool272, label %cond.false.274, label %cond.true.273

cond.true.273:                                    ; preds = %cond.false.267
  br label %cond.end.279

cond.false.274:                                   ; preds = %cond.false.267
  %97 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip275 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %97, i32 0, i32 0
  %98 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip275, align 8, !tbaa !91
  %q276 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %98, i32 0, i32 1
  %y277 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q276, i32 0, i32 1
  %99 = load i32, i32* %y277, align 4, !tbaa !87
  %call278 = call i32 @cmd_size_w(i32 %99) #4
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.274, %cond.true.273
  %cond280 = phi i32 [ 2, %cond.true.273 ], [ %call278, %cond.false.274 ]
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.end.279, %cond.true.266
  %cond282 = phi i32 [ 1, %cond.true.266 ], [ %cond280, %cond.end.279 ]
  %add283 = add nsw i32 %add260, %cond282
  %100 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add284 = add nsw i32 %100, %add283
  store i32 %add284, i32* %rcsize, align 4, !tbaa !5
  %101 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %cmp = icmp ne i32* %101, null
  br i1 %cmp, label %if.then.285, label %if.end.289

if.then.285:                                      ; preds = %cond.end.281
  %102 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %add286 = add nsw i32 %102, 1
  store i32 %add286, i32* %colors_mask, align 4, !tbaa !5
  %103 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %104 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %call287 = call i32 @cmd_size_frac31_color(%struct.gx_device_clist_writer_s* %103, i32* %104) #4
  %105 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add288 = add nsw i32 %105, %call287
  store i32 %add288, i32* %rcsize, align 4, !tbaa !5
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.285, %cond.end.281
  %106 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %cmp290 = icmp ne i32* %106, null
  br i1 %cmp290, label %if.then.291, label %if.end.295

if.then.291:                                      ; preds = %if.end.289
  %107 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %add292 = add nsw i32 %107, 2
  store i32 %add292, i32* %colors_mask, align 4, !tbaa !5
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %109 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %call293 = call i32 @cmd_size_frac31_color(%struct.gx_device_clist_writer_s* %108, i32* %109) #4
  %110 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add294 = add nsw i32 %110, %call293
  store i32 %add294, i32* %rcsize, align 4, !tbaa !5
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.291, %if.end.289
  %111 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %cmp296 = icmp ne i32* %111, null
  br i1 %cmp296, label %if.then.297, label %if.end.301

if.then.297:                                      ; preds = %if.end.295
  %112 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %add298 = add nsw i32 %112, 4
  store i32 %add298, i32* %colors_mask, align 4, !tbaa !5
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %114 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %call299 = call i32 @cmd_size_frac31_color(%struct.gx_device_clist_writer_s* %113, i32* %114) #4
  %115 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add300 = add nsw i32 %115, %call299
  store i32 %add300, i32* %rcsize, align 4, !tbaa !5
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.297, %if.end.295
  %116 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %cmp302 = icmp ne i32* %116, null
  br i1 %cmp302, label %if.then.303, label %if.end.307

if.then.303:                                      ; preds = %if.end.301
  %117 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %add304 = add nsw i32 %117, 8
  store i32 %add304, i32* %colors_mask, align 4, !tbaa !5
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %119 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %call305 = call i32 @cmd_size_frac31_color(%struct.gx_device_clist_writer_s* %118, i32* %119) #4
  %120 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add306 = add nsw i32 %120, %call305
  store i32 %add306, i32* %rcsize, align 4, !tbaa !5
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.303, %if.end.301
  %121 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %and308 = and i32 %121, -128
  %tobool309 = icmp ne i32 %and308, 0
  br i1 %tobool309, label %cond.false.311, label %cond.true.310

cond.true.310:                                    ; preds = %if.end.307
  br label %cond.end.319

cond.false.311:                                   ; preds = %if.end.307
  %122 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %and312 = and i32 %122, -16384
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %cond.false.315, label %cond.true.314

cond.true.314:                                    ; preds = %cond.false.311
  br label %cond.end.317

cond.false.315:                                   ; preds = %cond.false.311
  %123 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %call316 = call i32 @cmd_size_w(i32 %123) #4
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.false.315, %cond.true.314
  %cond318 = phi i32 [ 2, %cond.true.314 ], [ %call316, %cond.false.315 ]
  br label %cond.end.319

cond.end.319:                                     ; preds = %cond.end.317, %cond.true.310
  %cond320 = phi i32 [ 1, %cond.true.310 ], [ %cond318, %cond.end.317 ]
  %124 = load i32, i32* %rcsize, align 4, !tbaa !5
  %add321 = add nsw i32 %124, %cond320
  store i32 %add321, i32* %rcsize, align 4, !tbaa !5
  br label %if.end.322

if.end.322:                                       ; preds = %cond.end.319, %if.end
  %125 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %126 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !1
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %126, i32 0, i32 15
  %127 = load i32, i32* %rcsize, align 4, !tbaa !5
  %call323 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %125, %struct.cmd_list_s* %list, i32 %127) #4
  store i8* %call323, i8** %dp, align 8, !tbaa !1
  %cmp324 = icmp eq i8* %call323, null
  br i1 %cmp324, label %cond.true.325, label %cond.false.326

cond.true.325:                                    ; preds = %if.end.322
  %128 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %128, i32 0, i32 65
  %129 = load i32, i32* %error_code, align 4, !tbaa !20
  br label %cond.end.327

cond.false.326:                                   ; preds = %if.end.322
  %130 = load i32, i32* %op.addr, align 4, !tbaa !5
  %conv = trunc i32 %130 to i8
  %131 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv, i8* %131, align 1, !tbaa !51
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.false.326, %cond.true.325
  %cond328 = phi i32 [ %129, %cond.true.325 ], [ 0, %cond.false.326 ]
  store i32 %cond328, i32* %code, align 4, !tbaa !5
  %132 = load i32, i32* %code, align 4, !tbaa !5
  %cmp329 = icmp slt i32 %132, 0
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %cond.end.327
  %133 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %133, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.332:                                       ; preds = %cond.end.327
  %134 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !1
  %135 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start333 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %135, i32 0, i32 0
  %x334 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start333, i32 0, i32 0
  %136 = load i32, i32* %x334, align 4, !tbaa !93
  %and335 = and i32 %136, -128
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %cond.false.342, label %cond.true.337

cond.true.337:                                    ; preds = %if.end.332
  %137 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start338 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %137, i32 0, i32 0
  %x339 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start338, i32 0, i32 0
  %138 = load i32, i32* %x339, align 4, !tbaa !93
  %conv340 = trunc i32 %138 to i8
  %139 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv340, i8* %139, align 1, !tbaa !51
  %140 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr341 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr341, i8** %dp, align 8, !tbaa !1
  br label %cond.end.360

cond.false.342:                                   ; preds = %if.end.332
  %141 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start343 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %141, i32 0, i32 0
  %x344 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start343, i32 0, i32 0
  %142 = load i32, i32* %x344, align 4, !tbaa !93
  %and345 = and i32 %142, -16384
  %tobool346 = icmp ne i32 %and345, 0
  br i1 %tobool346, label %cond.false.354, label %cond.true.347

cond.true.347:                                    ; preds = %cond.false.342
  %143 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start348 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %143, i32 0, i32 0
  %x349 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start348, i32 0, i32 0
  %144 = load i32, i32* %x349, align 4, !tbaa !93
  %or = or i32 %144, 128
  %conv350 = trunc i32 %or to i8
  %145 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv350, i8* %145, align 1, !tbaa !51
  %146 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start351 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %146, i32 0, i32 0
  %x352 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start351, i32 0, i32 0
  %147 = load i32, i32* %x352, align 4, !tbaa !93
  %shr = ashr i32 %147, 7
  %conv353 = trunc i32 %shr to i8
  %148 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %conv353, i8* %arrayidx, align 1, !tbaa !51
  %149 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %149, i64 2
  store i8* %add.ptr, i8** %dp, align 8, !tbaa !1
  br label %cond.end.358

cond.false.354:                                   ; preds = %cond.false.342
  %150 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start355 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %150, i32 0, i32 0
  %x356 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start355, i32 0, i32 0
  %151 = load i32, i32* %x356, align 4, !tbaa !93
  %152 = load i8*, i8** %dp, align 8, !tbaa !1
  %call357 = call i8* @cmd_put_w(i32 %151, i8* %152) #4
  store i8* %call357, i8** %dp, align 8, !tbaa !1
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.354, %cond.true.347
  %cond359 = phi i8* [ %add.ptr, %cond.true.347 ], [ %call357, %cond.false.354 ]
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.end.358, %cond.true.337
  %cond361 = phi i8* [ %incdec.ptr341, %cond.true.337 ], [ %cond359, %cond.end.358 ]
  %153 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start362 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %153, i32 0, i32 0
  %y363 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start362, i32 0, i32 1
  %154 = load i32, i32* %y363, align 4, !tbaa !88
  %and364 = and i32 %154, -128
  %tobool365 = icmp ne i32 %and364, 0
  br i1 %tobool365, label %cond.false.371, label %cond.true.366

cond.true.366:                                    ; preds = %cond.end.360
  %155 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start367 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %155, i32 0, i32 0
  %y368 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start367, i32 0, i32 1
  %156 = load i32, i32* %y368, align 4, !tbaa !88
  %conv369 = trunc i32 %156 to i8
  %157 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv369, i8* %157, align 1, !tbaa !51
  %158 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr370 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr370, i8** %dp, align 8, !tbaa !1
  br label %cond.end.393

cond.false.371:                                   ; preds = %cond.end.360
  %159 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start372 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %159, i32 0, i32 0
  %y373 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start372, i32 0, i32 1
  %160 = load i32, i32* %y373, align 4, !tbaa !88
  %and374 = and i32 %160, -16384
  %tobool375 = icmp ne i32 %and374, 0
  br i1 %tobool375, label %cond.false.387, label %cond.true.376

cond.true.376:                                    ; preds = %cond.false.371
  %161 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start377 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %161, i32 0, i32 0
  %y378 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start377, i32 0, i32 1
  %162 = load i32, i32* %y378, align 4, !tbaa !88
  %or379 = or i32 %162, 128
  %conv380 = trunc i32 %or379 to i8
  %163 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv380, i8* %163, align 1, !tbaa !51
  %164 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start381 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %164, i32 0, i32 0
  %y382 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start381, i32 0, i32 1
  %165 = load i32, i32* %y382, align 4, !tbaa !88
  %shr383 = ashr i32 %165, 7
  %conv384 = trunc i32 %shr383 to i8
  %166 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx385 = getelementptr inbounds i8, i8* %166, i64 1
  store i8 %conv384, i8* %arrayidx385, align 1, !tbaa !51
  %167 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr386 = getelementptr inbounds i8, i8* %167, i64 2
  store i8* %add.ptr386, i8** %dp, align 8, !tbaa !1
  br label %cond.end.391

cond.false.387:                                   ; preds = %cond.false.371
  %168 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start388 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %168, i32 0, i32 0
  %y389 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start388, i32 0, i32 1
  %169 = load i32, i32* %y389, align 4, !tbaa !88
  %170 = load i8*, i8** %dp, align 8, !tbaa !1
  %call390 = call i8* @cmd_put_w(i32 %169, i8* %170) #4
  store i8* %call390, i8** %dp, align 8, !tbaa !1
  br label %cond.end.391

cond.end.391:                                     ; preds = %cond.false.387, %cond.true.376
  %cond392 = phi i8* [ %add.ptr386, %cond.true.376 ], [ %call390, %cond.false.387 ]
  br label %cond.end.393

cond.end.393:                                     ; preds = %cond.end.391, %cond.true.366
  %cond394 = phi i8* [ %incdec.ptr370, %cond.true.366 ], [ %cond392, %cond.end.391 ]
  %171 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end395 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %171, i32 0, i32 1
  %x396 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end395, i32 0, i32 0
  %172 = load i32, i32* %x396, align 4, !tbaa !94
  %and397 = and i32 %172, -128
  %tobool398 = icmp ne i32 %and397, 0
  br i1 %tobool398, label %cond.false.404, label %cond.true.399

cond.true.399:                                    ; preds = %cond.end.393
  %173 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end400 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %173, i32 0, i32 1
  %x401 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end400, i32 0, i32 0
  %174 = load i32, i32* %x401, align 4, !tbaa !94
  %conv402 = trunc i32 %174 to i8
  %175 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv402, i8* %175, align 1, !tbaa !51
  %176 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr403 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr403, i8** %dp, align 8, !tbaa !1
  br label %cond.end.426

cond.false.404:                                   ; preds = %cond.end.393
  %177 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end405 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %177, i32 0, i32 1
  %x406 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end405, i32 0, i32 0
  %178 = load i32, i32* %x406, align 4, !tbaa !94
  %and407 = and i32 %178, -16384
  %tobool408 = icmp ne i32 %and407, 0
  br i1 %tobool408, label %cond.false.420, label %cond.true.409

cond.true.409:                                    ; preds = %cond.false.404
  %179 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end410 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %179, i32 0, i32 1
  %x411 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end410, i32 0, i32 0
  %180 = load i32, i32* %x411, align 4, !tbaa !94
  %or412 = or i32 %180, 128
  %conv413 = trunc i32 %or412 to i8
  %181 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv413, i8* %181, align 1, !tbaa !51
  %182 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end414 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %182, i32 0, i32 1
  %x415 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end414, i32 0, i32 0
  %183 = load i32, i32* %x415, align 4, !tbaa !94
  %shr416 = ashr i32 %183, 7
  %conv417 = trunc i32 %shr416 to i8
  %184 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx418 = getelementptr inbounds i8, i8* %184, i64 1
  store i8 %conv417, i8* %arrayidx418, align 1, !tbaa !51
  %185 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr419 = getelementptr inbounds i8, i8* %185, i64 2
  store i8* %add.ptr419, i8** %dp, align 8, !tbaa !1
  br label %cond.end.424

cond.false.420:                                   ; preds = %cond.false.404
  %186 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end421 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %186, i32 0, i32 1
  %x422 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end421, i32 0, i32 0
  %187 = load i32, i32* %x422, align 4, !tbaa !94
  %188 = load i8*, i8** %dp, align 8, !tbaa !1
  %call423 = call i8* @cmd_put_w(i32 %187, i8* %188) #4
  store i8* %call423, i8** %dp, align 8, !tbaa !1
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.420, %cond.true.409
  %cond425 = phi i8* [ %add.ptr419, %cond.true.409 ], [ %call423, %cond.false.420 ]
  br label %cond.end.426

cond.end.426:                                     ; preds = %cond.end.424, %cond.true.399
  %cond427 = phi i8* [ %incdec.ptr403, %cond.true.399 ], [ %cond425, %cond.end.424 ]
  %189 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end428 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %189, i32 0, i32 1
  %y429 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end428, i32 0, i32 1
  %190 = load i32, i32* %y429, align 4, !tbaa !90
  %and430 = and i32 %190, -128
  %tobool431 = icmp ne i32 %and430, 0
  br i1 %tobool431, label %cond.false.437, label %cond.true.432

cond.true.432:                                    ; preds = %cond.end.426
  %191 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end433 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %191, i32 0, i32 1
  %y434 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end433, i32 0, i32 1
  %192 = load i32, i32* %y434, align 4, !tbaa !90
  %conv435 = trunc i32 %192 to i8
  %193 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv435, i8* %193, align 1, !tbaa !51
  %194 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr436 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr436, i8** %dp, align 8, !tbaa !1
  br label %cond.end.459

cond.false.437:                                   ; preds = %cond.end.426
  %195 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end438 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %195, i32 0, i32 1
  %y439 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end438, i32 0, i32 1
  %196 = load i32, i32* %y439, align 4, !tbaa !90
  %and440 = and i32 %196, -16384
  %tobool441 = icmp ne i32 %and440, 0
  br i1 %tobool441, label %cond.false.453, label %cond.true.442

cond.true.442:                                    ; preds = %cond.false.437
  %197 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end443 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %197, i32 0, i32 1
  %y444 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end443, i32 0, i32 1
  %198 = load i32, i32* %y444, align 4, !tbaa !90
  %or445 = or i32 %198, 128
  %conv446 = trunc i32 %or445 to i8
  %199 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv446, i8* %199, align 1, !tbaa !51
  %200 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end447 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %200, i32 0, i32 1
  %y448 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end447, i32 0, i32 1
  %201 = load i32, i32* %y448, align 4, !tbaa !90
  %shr449 = ashr i32 %201, 7
  %conv450 = trunc i32 %shr449 to i8
  %202 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx451 = getelementptr inbounds i8, i8* %202, i64 1
  store i8 %conv450, i8* %arrayidx451, align 1, !tbaa !51
  %203 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr452 = getelementptr inbounds i8, i8* %203, i64 2
  store i8* %add.ptr452, i8** %dp, align 8, !tbaa !1
  br label %cond.end.457

cond.false.453:                                   ; preds = %cond.false.437
  %204 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end454 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %204, i32 0, i32 1
  %y455 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end454, i32 0, i32 1
  %205 = load i32, i32* %y455, align 4, !tbaa !90
  %206 = load i8*, i8** %dp, align 8, !tbaa !1
  %call456 = call i8* @cmd_put_w(i32 %205, i8* %206) #4
  store i8* %call456, i8** %dp, align 8, !tbaa !1
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.false.453, %cond.true.442
  %cond458 = phi i8* [ %add.ptr452, %cond.true.442 ], [ %call456, %cond.false.453 ]
  br label %cond.end.459

cond.end.459:                                     ; preds = %cond.end.457, %cond.true.432
  %cond460 = phi i8* [ %incdec.ptr436, %cond.true.432 ], [ %cond458, %cond.end.457 ]
  %207 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start461 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %207, i32 0, i32 0
  %x462 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start461, i32 0, i32 0
  %208 = load i32, i32* %x462, align 4, !tbaa !93
  %and463 = and i32 %208, -128
  %tobool464 = icmp ne i32 %and463, 0
  br i1 %tobool464, label %cond.false.470, label %cond.true.465

cond.true.465:                                    ; preds = %cond.end.459
  %209 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start466 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %209, i32 0, i32 0
  %x467 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start466, i32 0, i32 0
  %210 = load i32, i32* %x467, align 4, !tbaa !93
  %conv468 = trunc i32 %210 to i8
  %211 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv468, i8* %211, align 1, !tbaa !51
  %212 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr469 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr469, i8** %dp, align 8, !tbaa !1
  br label %cond.end.492

cond.false.470:                                   ; preds = %cond.end.459
  %213 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start471 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %213, i32 0, i32 0
  %x472 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start471, i32 0, i32 0
  %214 = load i32, i32* %x472, align 4, !tbaa !93
  %and473 = and i32 %214, -16384
  %tobool474 = icmp ne i32 %and473, 0
  br i1 %tobool474, label %cond.false.486, label %cond.true.475

cond.true.475:                                    ; preds = %cond.false.470
  %215 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start476 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %215, i32 0, i32 0
  %x477 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start476, i32 0, i32 0
  %216 = load i32, i32* %x477, align 4, !tbaa !93
  %or478 = or i32 %216, 128
  %conv479 = trunc i32 %or478 to i8
  %217 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv479, i8* %217, align 1, !tbaa !51
  %218 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start480 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %218, i32 0, i32 0
  %x481 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start480, i32 0, i32 0
  %219 = load i32, i32* %x481, align 4, !tbaa !93
  %shr482 = ashr i32 %219, 7
  %conv483 = trunc i32 %shr482 to i8
  %220 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx484 = getelementptr inbounds i8, i8* %220, i64 1
  store i8 %conv483, i8* %arrayidx484, align 1, !tbaa !51
  %221 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr485 = getelementptr inbounds i8, i8* %221, i64 2
  store i8* %add.ptr485, i8** %dp, align 8, !tbaa !1
  br label %cond.end.490

cond.false.486:                                   ; preds = %cond.false.470
  %222 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start487 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %222, i32 0, i32 0
  %x488 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start487, i32 0, i32 0
  %223 = load i32, i32* %x488, align 4, !tbaa !93
  %224 = load i8*, i8** %dp, align 8, !tbaa !1
  %call489 = call i8* @cmd_put_w(i32 %223, i8* %224) #4
  store i8* %call489, i8** %dp, align 8, !tbaa !1
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.false.486, %cond.true.475
  %cond491 = phi i8* [ %add.ptr485, %cond.true.475 ], [ %call489, %cond.false.486 ]
  br label %cond.end.492

cond.end.492:                                     ; preds = %cond.end.490, %cond.true.465
  %cond493 = phi i8* [ %incdec.ptr469, %cond.true.465 ], [ %cond491, %cond.end.490 ]
  %225 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start494 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %225, i32 0, i32 0
  %y495 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start494, i32 0, i32 1
  %226 = load i32, i32* %y495, align 4, !tbaa !88
  %and496 = and i32 %226, -128
  %tobool497 = icmp ne i32 %and496, 0
  br i1 %tobool497, label %cond.false.503, label %cond.true.498

cond.true.498:                                    ; preds = %cond.end.492
  %227 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start499 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %227, i32 0, i32 0
  %y500 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start499, i32 0, i32 1
  %228 = load i32, i32* %y500, align 4, !tbaa !88
  %conv501 = trunc i32 %228 to i8
  %229 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv501, i8* %229, align 1, !tbaa !51
  %230 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr502 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr502, i8** %dp, align 8, !tbaa !1
  br label %cond.end.525

cond.false.503:                                   ; preds = %cond.end.492
  %231 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start504 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %231, i32 0, i32 0
  %y505 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start504, i32 0, i32 1
  %232 = load i32, i32* %y505, align 4, !tbaa !88
  %and506 = and i32 %232, -16384
  %tobool507 = icmp ne i32 %and506, 0
  br i1 %tobool507, label %cond.false.519, label %cond.true.508

cond.true.508:                                    ; preds = %cond.false.503
  %233 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start509 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %233, i32 0, i32 0
  %y510 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start509, i32 0, i32 1
  %234 = load i32, i32* %y510, align 4, !tbaa !88
  %or511 = or i32 %234, 128
  %conv512 = trunc i32 %or511 to i8
  %235 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv512, i8* %235, align 1, !tbaa !51
  %236 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start513 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %236, i32 0, i32 0
  %y514 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start513, i32 0, i32 1
  %237 = load i32, i32* %y514, align 4, !tbaa !88
  %shr515 = ashr i32 %237, 7
  %conv516 = trunc i32 %shr515 to i8
  %238 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx517 = getelementptr inbounds i8, i8* %238, i64 1
  store i8 %conv516, i8* %arrayidx517, align 1, !tbaa !51
  %239 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr518 = getelementptr inbounds i8, i8* %239, i64 2
  store i8* %add.ptr518, i8** %dp, align 8, !tbaa !1
  br label %cond.end.523

cond.false.519:                                   ; preds = %cond.false.503
  %240 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start520 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %240, i32 0, i32 0
  %y521 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start520, i32 0, i32 1
  %241 = load i32, i32* %y521, align 4, !tbaa !88
  %242 = load i8*, i8** %dp, align 8, !tbaa !1
  %call522 = call i8* @cmd_put_w(i32 %241, i8* %242) #4
  store i8* %call522, i8** %dp, align 8, !tbaa !1
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.false.519, %cond.true.508
  %cond524 = phi i8* [ %add.ptr518, %cond.true.508 ], [ %call522, %cond.false.519 ]
  br label %cond.end.525

cond.end.525:                                     ; preds = %cond.end.523, %cond.true.498
  %cond526 = phi i8* [ %incdec.ptr502, %cond.true.498 ], [ %cond524, %cond.end.523 ]
  %243 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end527 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %243, i32 0, i32 1
  %x528 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end527, i32 0, i32 0
  %244 = load i32, i32* %x528, align 4, !tbaa !94
  %and529 = and i32 %244, -128
  %tobool530 = icmp ne i32 %and529, 0
  br i1 %tobool530, label %cond.false.536, label %cond.true.531

cond.true.531:                                    ; preds = %cond.end.525
  %245 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end532 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %245, i32 0, i32 1
  %x533 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end532, i32 0, i32 0
  %246 = load i32, i32* %x533, align 4, !tbaa !94
  %conv534 = trunc i32 %246 to i8
  %247 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv534, i8* %247, align 1, !tbaa !51
  %248 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr535 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %incdec.ptr535, i8** %dp, align 8, !tbaa !1
  br label %cond.end.558

cond.false.536:                                   ; preds = %cond.end.525
  %249 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end537 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %249, i32 0, i32 1
  %x538 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end537, i32 0, i32 0
  %250 = load i32, i32* %x538, align 4, !tbaa !94
  %and539 = and i32 %250, -16384
  %tobool540 = icmp ne i32 %and539, 0
  br i1 %tobool540, label %cond.false.552, label %cond.true.541

cond.true.541:                                    ; preds = %cond.false.536
  %251 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end542 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %251, i32 0, i32 1
  %x543 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end542, i32 0, i32 0
  %252 = load i32, i32* %x543, align 4, !tbaa !94
  %or544 = or i32 %252, 128
  %conv545 = trunc i32 %or544 to i8
  %253 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv545, i8* %253, align 1, !tbaa !51
  %254 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end546 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %254, i32 0, i32 1
  %x547 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end546, i32 0, i32 0
  %255 = load i32, i32* %x547, align 4, !tbaa !94
  %shr548 = ashr i32 %255, 7
  %conv549 = trunc i32 %shr548 to i8
  %256 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx550 = getelementptr inbounds i8, i8* %256, i64 1
  store i8 %conv549, i8* %arrayidx550, align 1, !tbaa !51
  %257 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr551 = getelementptr inbounds i8, i8* %257, i64 2
  store i8* %add.ptr551, i8** %dp, align 8, !tbaa !1
  br label %cond.end.556

cond.false.552:                                   ; preds = %cond.false.536
  %258 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end553 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %258, i32 0, i32 1
  %x554 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end553, i32 0, i32 0
  %259 = load i32, i32* %x554, align 4, !tbaa !94
  %260 = load i8*, i8** %dp, align 8, !tbaa !1
  %call555 = call i8* @cmd_put_w(i32 %259, i8* %260) #4
  store i8* %call555, i8** %dp, align 8, !tbaa !1
  br label %cond.end.556

cond.end.556:                                     ; preds = %cond.false.552, %cond.true.541
  %cond557 = phi i8* [ %add.ptr551, %cond.true.541 ], [ %call555, %cond.false.552 ]
  br label %cond.end.558

cond.end.558:                                     ; preds = %cond.end.556, %cond.true.531
  %cond559 = phi i8* [ %incdec.ptr535, %cond.true.531 ], [ %cond557, %cond.end.556 ]
  %261 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end560 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %261, i32 0, i32 1
  %y561 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end560, i32 0, i32 1
  %262 = load i32, i32* %y561, align 4, !tbaa !90
  %and562 = and i32 %262, -128
  %tobool563 = icmp ne i32 %and562, 0
  br i1 %tobool563, label %cond.false.569, label %cond.true.564

cond.true.564:                                    ; preds = %cond.end.558
  %263 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end565 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %263, i32 0, i32 1
  %y566 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end565, i32 0, i32 1
  %264 = load i32, i32* %y566, align 4, !tbaa !90
  %conv567 = trunc i32 %264 to i8
  %265 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv567, i8* %265, align 1, !tbaa !51
  %266 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr568 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr568, i8** %dp, align 8, !tbaa !1
  br label %cond.end.591

cond.false.569:                                   ; preds = %cond.end.558
  %267 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end570 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %267, i32 0, i32 1
  %y571 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end570, i32 0, i32 1
  %268 = load i32, i32* %y571, align 4, !tbaa !90
  %and572 = and i32 %268, -16384
  %tobool573 = icmp ne i32 %and572, 0
  br i1 %tobool573, label %cond.false.585, label %cond.true.574

cond.true.574:                                    ; preds = %cond.false.569
  %269 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end575 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %269, i32 0, i32 1
  %y576 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end575, i32 0, i32 1
  %270 = load i32, i32* %y576, align 4, !tbaa !90
  %or577 = or i32 %270, 128
  %conv578 = trunc i32 %or577 to i8
  %271 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv578, i8* %271, align 1, !tbaa !51
  %272 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end579 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %272, i32 0, i32 1
  %y580 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end579, i32 0, i32 1
  %273 = load i32, i32* %y580, align 4, !tbaa !90
  %shr581 = ashr i32 %273, 7
  %conv582 = trunc i32 %shr581 to i8
  %274 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds i8, i8* %274, i64 1
  store i8 %conv582, i8* %arrayidx583, align 1, !tbaa !51
  %275 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr584 = getelementptr inbounds i8, i8* %275, i64 2
  store i8* %add.ptr584, i8** %dp, align 8, !tbaa !1
  br label %cond.end.589

cond.false.585:                                   ; preds = %cond.false.569
  %276 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end586 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %276, i32 0, i32 1
  %y587 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end586, i32 0, i32 1
  %277 = load i32, i32* %y587, align 4, !tbaa !90
  %278 = load i8*, i8** %dp, align 8, !tbaa !1
  %call588 = call i8* @cmd_put_w(i32 %277, i8* %278) #4
  store i8* %call588, i8** %dp, align 8, !tbaa !1
  br label %cond.end.589

cond.end.589:                                     ; preds = %cond.false.585, %cond.true.574
  %cond590 = phi i8* [ %add.ptr584, %cond.true.574 ], [ %call588, %cond.false.585 ]
  br label %cond.end.591

cond.end.591:                                     ; preds = %cond.end.589, %cond.true.564
  %cond592 = phi i8* [ %incdec.ptr568, %cond.true.564 ], [ %cond590, %cond.end.589 ]
  %279 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and593 = and i32 %279, -128
  %tobool594 = icmp ne i32 %and593, 0
  br i1 %tobool594, label %cond.false.598, label %cond.true.595

cond.true.595:                                    ; preds = %cond.end.591
  %280 = load i32, i32* %options.addr, align 4, !tbaa !5
  %conv596 = trunc i32 %280 to i8
  %281 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv596, i8* %281, align 1, !tbaa !51
  %282 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr597 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %incdec.ptr597, i8** %dp, align 8, !tbaa !1
  br label %cond.end.612

cond.false.598:                                   ; preds = %cond.end.591
  %283 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and599 = and i32 %283, -16384
  %tobool600 = icmp ne i32 %and599, 0
  br i1 %tobool600, label %cond.false.608, label %cond.true.601

cond.true.601:                                    ; preds = %cond.false.598
  %284 = load i32, i32* %options.addr, align 4, !tbaa !5
  %or602 = or i32 %284, 128
  %conv603 = trunc i32 %or602 to i8
  %285 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv603, i8* %285, align 1, !tbaa !51
  %286 = load i32, i32* %options.addr, align 4, !tbaa !5
  %shr604 = ashr i32 %286, 7
  %conv605 = trunc i32 %shr604 to i8
  %287 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx606 = getelementptr inbounds i8, i8* %287, i64 1
  store i8 %conv605, i8* %arrayidx606, align 1, !tbaa !51
  %288 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr607 = getelementptr inbounds i8, i8* %288, i64 2
  store i8* %add.ptr607, i8** %dp, align 8, !tbaa !1
  br label %cond.end.610

cond.false.608:                                   ; preds = %cond.false.598
  %289 = load i32, i32* %options.addr, align 4, !tbaa !5
  %290 = load i8*, i8** %dp, align 8, !tbaa !1
  %call609 = call i8* @cmd_put_w(i32 %289, i8* %290) #4
  store i8* %call609, i8** %dp, align 8, !tbaa !1
  br label %cond.end.610

cond.end.610:                                     ; preds = %cond.false.608, %cond.true.601
  %cond611 = phi i8* [ %add.ptr607, %cond.true.601 ], [ %call609, %cond.false.608 ]
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.end.610, %cond.true.595
  %cond613 = phi i8* [ %incdec.ptr597, %cond.true.595 ], [ %cond611, %cond.end.610 ]
  %291 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and614 = and i32 %291, 4
  %tobool615 = icmp ne i32 %and614, 0
  br i1 %tobool615, label %if.end.659, label %if.then.616

if.then.616:                                      ; preds = %cond.end.612
  %292 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %and617 = and i32 %292, -128
  %tobool618 = icmp ne i32 %and617, 0
  br i1 %tobool618, label %cond.false.622, label %cond.true.619

cond.true.619:                                    ; preds = %if.then.616
  %293 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv620 = trunc i32 %293 to i8
  %294 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv620, i8* %294, align 1, !tbaa !51
  %295 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr621 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr621, i8** %dp, align 8, !tbaa !1
  br label %cond.end.636

cond.false.622:                                   ; preds = %if.then.616
  %296 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %and623 = and i32 %296, -16384
  %tobool624 = icmp ne i32 %and623, 0
  br i1 %tobool624, label %cond.false.632, label %cond.true.625

cond.true.625:                                    ; preds = %cond.false.622
  %297 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %or626 = or i32 %297, 128
  %conv627 = trunc i32 %or626 to i8
  %298 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv627, i8* %298, align 1, !tbaa !51
  %299 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %shr628 = ashr i32 %299, 7
  %conv629 = trunc i32 %shr628 to i8
  %300 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx630 = getelementptr inbounds i8, i8* %300, i64 1
  store i8 %conv629, i8* %arrayidx630, align 1, !tbaa !51
  %301 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr631 = getelementptr inbounds i8, i8* %301, i64 2
  store i8* %add.ptr631, i8** %dp, align 8, !tbaa !1
  br label %cond.end.634

cond.false.632:                                   ; preds = %cond.false.622
  %302 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %303 = load i8*, i8** %dp, align 8, !tbaa !1
  %call633 = call i8* @cmd_put_w(i32 %302, i8* %303) #4
  store i8* %call633, i8** %dp, align 8, !tbaa !1
  br label %cond.end.634

cond.end.634:                                     ; preds = %cond.false.632, %cond.true.625
  %cond635 = phi i8* [ %add.ptr631, %cond.true.625 ], [ %call633, %cond.false.632 ]
  br label %cond.end.636

cond.end.636:                                     ; preds = %cond.end.634, %cond.true.619
  %cond637 = phi i8* [ %incdec.ptr621, %cond.true.619 ], [ %cond635, %cond.end.634 ]
  %304 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %and638 = and i32 %304, -128
  %tobool639 = icmp ne i32 %and638, 0
  br i1 %tobool639, label %cond.false.643, label %cond.true.640

cond.true.640:                                    ; preds = %cond.end.636
  %305 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv641 = trunc i32 %305 to i8
  %306 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv641, i8* %306, align 1, !tbaa !51
  %307 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr642 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr642, i8** %dp, align 8, !tbaa !1
  br label %cond.end.657

cond.false.643:                                   ; preds = %cond.end.636
  %308 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %and644 = and i32 %308, -16384
  %tobool645 = icmp ne i32 %and644, 0
  br i1 %tobool645, label %cond.false.653, label %cond.true.646

cond.true.646:                                    ; preds = %cond.false.643
  %309 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %or647 = or i32 %309, 128
  %conv648 = trunc i32 %or647 to i8
  %310 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv648, i8* %310, align 1, !tbaa !51
  %311 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %shr649 = ashr i32 %311, 7
  %conv650 = trunc i32 %shr649 to i8
  %312 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx651 = getelementptr inbounds i8, i8* %312, i64 1
  store i8 %conv650, i8* %arrayidx651, align 1, !tbaa !51
  %313 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr652 = getelementptr inbounds i8, i8* %313, i64 2
  store i8* %add.ptr652, i8** %dp, align 8, !tbaa !1
  br label %cond.end.655

cond.false.653:                                   ; preds = %cond.false.643
  %314 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %315 = load i8*, i8** %dp, align 8, !tbaa !1
  %call654 = call i8* @cmd_put_w(i32 %314, i8* %315) #4
  store i8* %call654, i8** %dp, align 8, !tbaa !1
  br label %cond.end.655

cond.end.655:                                     ; preds = %cond.false.653, %cond.true.646
  %cond656 = phi i8* [ %add.ptr652, %cond.true.646 ], [ %call654, %cond.false.653 ]
  br label %cond.end.657

cond.end.657:                                     ; preds = %cond.end.655, %cond.true.640
  %cond658 = phi i8* [ %incdec.ptr642, %cond.true.640 ], [ %cond656, %cond.end.655 ]
  br label %if.end.659

if.end.659:                                       ; preds = %cond.end.657, %cond.end.612
  br label %do.body

do.body:                                          ; preds = %if.end.659
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.660

do.body.660:                                      ; preds = %do.end
  br label %do.cond.661

do.cond.661:                                      ; preds = %do.body.660
  br label %do.end.662

do.end.662:                                       ; preds = %do.cond.661
  %316 = load i32, i32* %options.addr, align 4, !tbaa !5
  %and663 = and i32 %316, 2
  %tobool664 = icmp ne i32 %and663, 0
  br i1 %tobool664, label %if.then.665, label %if.end.863

if.then.665:                                      ; preds = %do.end.662
  %317 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip666 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %317, i32 0, i32 0
  %318 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip666, align 8, !tbaa !91
  %p667 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %318, i32 0, i32 0
  %x668 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p667, i32 0, i32 0
  %319 = load i32, i32* %x668, align 4, !tbaa !83
  %and669 = and i32 %319, -128
  %tobool670 = icmp ne i32 %and669, 0
  br i1 %tobool670, label %cond.false.677, label %cond.true.671

cond.true.671:                                    ; preds = %if.then.665
  %320 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip672 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %320, i32 0, i32 0
  %321 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip672, align 8, !tbaa !91
  %p673 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %321, i32 0, i32 0
  %x674 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p673, i32 0, i32 0
  %322 = load i32, i32* %x674, align 4, !tbaa !83
  %conv675 = trunc i32 %322 to i8
  %323 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv675, i8* %323, align 1, !tbaa !51
  %324 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr676 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %incdec.ptr676, i8** %dp, align 8, !tbaa !1
  br label %cond.end.703

cond.false.677:                                   ; preds = %if.then.665
  %325 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip678 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %325, i32 0, i32 0
  %326 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip678, align 8, !tbaa !91
  %p679 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %326, i32 0, i32 0
  %x680 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p679, i32 0, i32 0
  %327 = load i32, i32* %x680, align 4, !tbaa !83
  %and681 = and i32 %327, -16384
  %tobool682 = icmp ne i32 %and681, 0
  br i1 %tobool682, label %cond.false.696, label %cond.true.683

cond.true.683:                                    ; preds = %cond.false.677
  %328 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip684 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %328, i32 0, i32 0
  %329 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip684, align 8, !tbaa !91
  %p685 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %329, i32 0, i32 0
  %x686 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p685, i32 0, i32 0
  %330 = load i32, i32* %x686, align 4, !tbaa !83
  %or687 = or i32 %330, 128
  %conv688 = trunc i32 %or687 to i8
  %331 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv688, i8* %331, align 1, !tbaa !51
  %332 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip689 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %332, i32 0, i32 0
  %333 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip689, align 8, !tbaa !91
  %p690 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %333, i32 0, i32 0
  %x691 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p690, i32 0, i32 0
  %334 = load i32, i32* %x691, align 4, !tbaa !83
  %shr692 = ashr i32 %334, 7
  %conv693 = trunc i32 %shr692 to i8
  %335 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx694 = getelementptr inbounds i8, i8* %335, i64 1
  store i8 %conv693, i8* %arrayidx694, align 1, !tbaa !51
  %336 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr695 = getelementptr inbounds i8, i8* %336, i64 2
  store i8* %add.ptr695, i8** %dp, align 8, !tbaa !1
  br label %cond.end.701

cond.false.696:                                   ; preds = %cond.false.677
  %337 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip697 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %337, i32 0, i32 0
  %338 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip697, align 8, !tbaa !91
  %p698 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %338, i32 0, i32 0
  %x699 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p698, i32 0, i32 0
  %339 = load i32, i32* %x699, align 4, !tbaa !83
  %340 = load i8*, i8** %dp, align 8, !tbaa !1
  %call700 = call i8* @cmd_put_w(i32 %339, i8* %340) #4
  store i8* %call700, i8** %dp, align 8, !tbaa !1
  br label %cond.end.701

cond.end.701:                                     ; preds = %cond.false.696, %cond.true.683
  %cond702 = phi i8* [ %add.ptr695, %cond.true.683 ], [ %call700, %cond.false.696 ]
  br label %cond.end.703

cond.end.703:                                     ; preds = %cond.end.701, %cond.true.671
  %cond704 = phi i8* [ %incdec.ptr676, %cond.true.671 ], [ %cond702, %cond.end.701 ]
  %341 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip705 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %341, i32 0, i32 0
  %342 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip705, align 8, !tbaa !91
  %p706 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %342, i32 0, i32 0
  %y707 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p706, i32 0, i32 1
  %343 = load i32, i32* %y707, align 4, !tbaa !85
  %and708 = and i32 %343, -128
  %tobool709 = icmp ne i32 %and708, 0
  br i1 %tobool709, label %cond.false.716, label %cond.true.710

cond.true.710:                                    ; preds = %cond.end.703
  %344 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip711 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %344, i32 0, i32 0
  %345 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip711, align 8, !tbaa !91
  %p712 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %345, i32 0, i32 0
  %y713 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p712, i32 0, i32 1
  %346 = load i32, i32* %y713, align 4, !tbaa !85
  %conv714 = trunc i32 %346 to i8
  %347 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv714, i8* %347, align 1, !tbaa !51
  %348 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr715 = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %incdec.ptr715, i8** %dp, align 8, !tbaa !1
  br label %cond.end.742

cond.false.716:                                   ; preds = %cond.end.703
  %349 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip717 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %349, i32 0, i32 0
  %350 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip717, align 8, !tbaa !91
  %p718 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %350, i32 0, i32 0
  %y719 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p718, i32 0, i32 1
  %351 = load i32, i32* %y719, align 4, !tbaa !85
  %and720 = and i32 %351, -16384
  %tobool721 = icmp ne i32 %and720, 0
  br i1 %tobool721, label %cond.false.735, label %cond.true.722

cond.true.722:                                    ; preds = %cond.false.716
  %352 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip723 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %352, i32 0, i32 0
  %353 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip723, align 8, !tbaa !91
  %p724 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %353, i32 0, i32 0
  %y725 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p724, i32 0, i32 1
  %354 = load i32, i32* %y725, align 4, !tbaa !85
  %or726 = or i32 %354, 128
  %conv727 = trunc i32 %or726 to i8
  %355 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv727, i8* %355, align 1, !tbaa !51
  %356 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip728 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %356, i32 0, i32 0
  %357 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip728, align 8, !tbaa !91
  %p729 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %357, i32 0, i32 0
  %y730 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p729, i32 0, i32 1
  %358 = load i32, i32* %y730, align 4, !tbaa !85
  %shr731 = ashr i32 %358, 7
  %conv732 = trunc i32 %shr731 to i8
  %359 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx733 = getelementptr inbounds i8, i8* %359, i64 1
  store i8 %conv732, i8* %arrayidx733, align 1, !tbaa !51
  %360 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr734 = getelementptr inbounds i8, i8* %360, i64 2
  store i8* %add.ptr734, i8** %dp, align 8, !tbaa !1
  br label %cond.end.740

cond.false.735:                                   ; preds = %cond.false.716
  %361 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip736 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %361, i32 0, i32 0
  %362 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip736, align 8, !tbaa !91
  %p737 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %362, i32 0, i32 0
  %y738 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p737, i32 0, i32 1
  %363 = load i32, i32* %y738, align 4, !tbaa !85
  %364 = load i8*, i8** %dp, align 8, !tbaa !1
  %call739 = call i8* @cmd_put_w(i32 %363, i8* %364) #4
  store i8* %call739, i8** %dp, align 8, !tbaa !1
  br label %cond.end.740

cond.end.740:                                     ; preds = %cond.false.735, %cond.true.722
  %cond741 = phi i8* [ %add.ptr734, %cond.true.722 ], [ %call739, %cond.false.735 ]
  br label %cond.end.742

cond.end.742:                                     ; preds = %cond.end.740, %cond.true.710
  %cond743 = phi i8* [ %incdec.ptr715, %cond.true.710 ], [ %cond741, %cond.end.740 ]
  %365 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip744 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %365, i32 0, i32 0
  %366 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip744, align 8, !tbaa !91
  %q745 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %366, i32 0, i32 1
  %x746 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q745, i32 0, i32 0
  %367 = load i32, i32* %x746, align 4, !tbaa !86
  %and747 = and i32 %367, -128
  %tobool748 = icmp ne i32 %and747, 0
  br i1 %tobool748, label %cond.false.755, label %cond.true.749

cond.true.749:                                    ; preds = %cond.end.742
  %368 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip750 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %368, i32 0, i32 0
  %369 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip750, align 8, !tbaa !91
  %q751 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %369, i32 0, i32 1
  %x752 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q751, i32 0, i32 0
  %370 = load i32, i32* %x752, align 4, !tbaa !86
  %conv753 = trunc i32 %370 to i8
  %371 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv753, i8* %371, align 1, !tbaa !51
  %372 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr754 = getelementptr inbounds i8, i8* %372, i32 1
  store i8* %incdec.ptr754, i8** %dp, align 8, !tbaa !1
  br label %cond.end.781

cond.false.755:                                   ; preds = %cond.end.742
  %373 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip756 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %373, i32 0, i32 0
  %374 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip756, align 8, !tbaa !91
  %q757 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %374, i32 0, i32 1
  %x758 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q757, i32 0, i32 0
  %375 = load i32, i32* %x758, align 4, !tbaa !86
  %and759 = and i32 %375, -16384
  %tobool760 = icmp ne i32 %and759, 0
  br i1 %tobool760, label %cond.false.774, label %cond.true.761

cond.true.761:                                    ; preds = %cond.false.755
  %376 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip762 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %376, i32 0, i32 0
  %377 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip762, align 8, !tbaa !91
  %q763 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %377, i32 0, i32 1
  %x764 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q763, i32 0, i32 0
  %378 = load i32, i32* %x764, align 4, !tbaa !86
  %or765 = or i32 %378, 128
  %conv766 = trunc i32 %or765 to i8
  %379 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv766, i8* %379, align 1, !tbaa !51
  %380 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip767 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %380, i32 0, i32 0
  %381 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip767, align 8, !tbaa !91
  %q768 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %381, i32 0, i32 1
  %x769 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q768, i32 0, i32 0
  %382 = load i32, i32* %x769, align 4, !tbaa !86
  %shr770 = ashr i32 %382, 7
  %conv771 = trunc i32 %shr770 to i8
  %383 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds i8, i8* %383, i64 1
  store i8 %conv771, i8* %arrayidx772, align 1, !tbaa !51
  %384 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr773 = getelementptr inbounds i8, i8* %384, i64 2
  store i8* %add.ptr773, i8** %dp, align 8, !tbaa !1
  br label %cond.end.779

cond.false.774:                                   ; preds = %cond.false.755
  %385 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip775 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %385, i32 0, i32 0
  %386 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip775, align 8, !tbaa !91
  %q776 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %386, i32 0, i32 1
  %x777 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q776, i32 0, i32 0
  %387 = load i32, i32* %x777, align 4, !tbaa !86
  %388 = load i8*, i8** %dp, align 8, !tbaa !1
  %call778 = call i8* @cmd_put_w(i32 %387, i8* %388) #4
  store i8* %call778, i8** %dp, align 8, !tbaa !1
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.false.774, %cond.true.761
  %cond780 = phi i8* [ %add.ptr773, %cond.true.761 ], [ %call778, %cond.false.774 ]
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.end.779, %cond.true.749
  %cond782 = phi i8* [ %incdec.ptr754, %cond.true.749 ], [ %cond780, %cond.end.779 ]
  %389 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip783 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %389, i32 0, i32 0
  %390 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip783, align 8, !tbaa !91
  %q784 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %390, i32 0, i32 1
  %y785 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q784, i32 0, i32 1
  %391 = load i32, i32* %y785, align 4, !tbaa !87
  %and786 = and i32 %391, -128
  %tobool787 = icmp ne i32 %and786, 0
  br i1 %tobool787, label %cond.false.794, label %cond.true.788

cond.true.788:                                    ; preds = %cond.end.781
  %392 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip789 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %392, i32 0, i32 0
  %393 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip789, align 8, !tbaa !91
  %q790 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %393, i32 0, i32 1
  %y791 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q790, i32 0, i32 1
  %394 = load i32, i32* %y791, align 4, !tbaa !87
  %conv792 = trunc i32 %394 to i8
  %395 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv792, i8* %395, align 1, !tbaa !51
  %396 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr793 = getelementptr inbounds i8, i8* %396, i32 1
  store i8* %incdec.ptr793, i8** %dp, align 8, !tbaa !1
  br label %cond.end.820

cond.false.794:                                   ; preds = %cond.end.781
  %397 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip795 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %397, i32 0, i32 0
  %398 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip795, align 8, !tbaa !91
  %q796 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %398, i32 0, i32 1
  %y797 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q796, i32 0, i32 1
  %399 = load i32, i32* %y797, align 4, !tbaa !87
  %and798 = and i32 %399, -16384
  %tobool799 = icmp ne i32 %and798, 0
  br i1 %tobool799, label %cond.false.813, label %cond.true.800

cond.true.800:                                    ; preds = %cond.false.794
  %400 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip801 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %400, i32 0, i32 0
  %401 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip801, align 8, !tbaa !91
  %q802 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %401, i32 0, i32 1
  %y803 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q802, i32 0, i32 1
  %402 = load i32, i32* %y803, align 4, !tbaa !87
  %or804 = or i32 %402, 128
  %conv805 = trunc i32 %or804 to i8
  %403 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv805, i8* %403, align 1, !tbaa !51
  %404 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip806 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %404, i32 0, i32 0
  %405 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip806, align 8, !tbaa !91
  %q807 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %405, i32 0, i32 1
  %y808 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q807, i32 0, i32 1
  %406 = load i32, i32* %y808, align 4, !tbaa !87
  %shr809 = ashr i32 %406, 7
  %conv810 = trunc i32 %shr809 to i8
  %407 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx811 = getelementptr inbounds i8, i8* %407, i64 1
  store i8 %conv810, i8* %arrayidx811, align 1, !tbaa !51
  %408 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr812 = getelementptr inbounds i8, i8* %408, i64 2
  store i8* %add.ptr812, i8** %dp, align 8, !tbaa !1
  br label %cond.end.818

cond.false.813:                                   ; preds = %cond.false.794
  %409 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip814 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %409, i32 0, i32 0
  %410 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip814, align 8, !tbaa !91
  %q815 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %410, i32 0, i32 1
  %y816 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q815, i32 0, i32 1
  %411 = load i32, i32* %y816, align 4, !tbaa !87
  %412 = load i8*, i8** %dp, align 8, !tbaa !1
  %call817 = call i8* @cmd_put_w(i32 %411, i8* %412) #4
  store i8* %call817, i8** %dp, align 8, !tbaa !1
  br label %cond.end.818

cond.end.818:                                     ; preds = %cond.false.813, %cond.true.800
  %cond819 = phi i8* [ %add.ptr812, %cond.true.800 ], [ %call817, %cond.false.813 ]
  br label %cond.end.820

cond.end.820:                                     ; preds = %cond.end.818, %cond.true.788
  %cond821 = phi i8* [ %incdec.ptr793, %cond.true.788 ], [ %cond819, %cond.end.818 ]
  %413 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %and822 = and i32 %413, -128
  %tobool823 = icmp ne i32 %and822, 0
  br i1 %tobool823, label %cond.false.827, label %cond.true.824

cond.true.824:                                    ; preds = %cond.end.820
  %414 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %conv825 = trunc i32 %414 to i8
  %415 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv825, i8* %415, align 1, !tbaa !51
  %416 = load i8*, i8** %dp, align 8, !tbaa !1
  %incdec.ptr826 = getelementptr inbounds i8, i8* %416, i32 1
  store i8* %incdec.ptr826, i8** %dp, align 8, !tbaa !1
  br label %cond.end.841

cond.false.827:                                   ; preds = %cond.end.820
  %417 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %and828 = and i32 %417, -16384
  %tobool829 = icmp ne i32 %and828, 0
  br i1 %tobool829, label %cond.false.837, label %cond.true.830

cond.true.830:                                    ; preds = %cond.false.827
  %418 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %or831 = or i32 %418, 128
  %conv832 = trunc i32 %or831 to i8
  %419 = load i8*, i8** %dp, align 8, !tbaa !1
  store i8 %conv832, i8* %419, align 1, !tbaa !51
  %420 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %shr833 = ashr i32 %420, 7
  %conv834 = trunc i32 %shr833 to i8
  %421 = load i8*, i8** %dp, align 8, !tbaa !1
  %arrayidx835 = getelementptr inbounds i8, i8* %421, i64 1
  store i8 %conv834, i8* %arrayidx835, align 1, !tbaa !51
  %422 = load i8*, i8** %dp, align 8, !tbaa !1
  %add.ptr836 = getelementptr inbounds i8, i8* %422, i64 2
  store i8* %add.ptr836, i8** %dp, align 8, !tbaa !1
  br label %cond.end.839

cond.false.837:                                   ; preds = %cond.false.827
  %423 = load i32, i32* %colors_mask, align 4, !tbaa !5
  %424 = load i8*, i8** %dp, align 8, !tbaa !1
  %call838 = call i8* @cmd_put_w(i32 %423, i8* %424) #4
  store i8* %call838, i8** %dp, align 8, !tbaa !1
  br label %cond.end.839

cond.end.839:                                     ; preds = %cond.false.837, %cond.true.830
  %cond840 = phi i8* [ %add.ptr836, %cond.true.830 ], [ %call838, %cond.false.837 ]
  br label %cond.end.841

cond.end.841:                                     ; preds = %cond.end.839, %cond.true.824
  %cond842 = phi i8* [ %incdec.ptr826, %cond.true.824 ], [ %cond840, %cond.end.839 ]
  %425 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %cmp843 = icmp ne i32* %425, null
  br i1 %cmp843, label %if.then.845, label %if.end.847

if.then.845:                                      ; preds = %cond.end.841
  %426 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %427 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %428 = load i8*, i8** %dp, align 8, !tbaa !1
  %call846 = call i8* @cmd_put_frac31_color(%struct.gx_device_clist_writer_s* %426, i32* %427, i8* %428) #4
  store i8* %call846, i8** %dp, align 8, !tbaa !1
  br label %if.end.847

if.end.847:                                       ; preds = %if.then.845, %cond.end.841
  %429 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %cmp848 = icmp ne i32* %429, null
  br i1 %cmp848, label %if.then.850, label %if.end.852

if.then.850:                                      ; preds = %if.end.847
  %430 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %431 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %432 = load i8*, i8** %dp, align 8, !tbaa !1
  %call851 = call i8* @cmd_put_frac31_color(%struct.gx_device_clist_writer_s* %430, i32* %431, i8* %432) #4
  store i8* %call851, i8** %dp, align 8, !tbaa !1
  br label %if.end.852

if.end.852:                                       ; preds = %if.then.850, %if.end.847
  %433 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %cmp853 = icmp ne i32* %433, null
  br i1 %cmp853, label %if.then.855, label %if.end.857

if.then.855:                                      ; preds = %if.end.852
  %434 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %435 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %436 = load i8*, i8** %dp, align 8, !tbaa !1
  %call856 = call i8* @cmd_put_frac31_color(%struct.gx_device_clist_writer_s* %434, i32* %435, i8* %436) #4
  store i8* %call856, i8** %dp, align 8, !tbaa !1
  br label %if.end.857

if.end.857:                                       ; preds = %if.then.855, %if.end.852
  %437 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %cmp858 = icmp ne i32* %437, null
  br i1 %cmp858, label %if.then.860, label %if.end.862

if.then.860:                                      ; preds = %if.end.857
  %438 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %439 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %440 = load i8*, i8** %dp, align 8, !tbaa !1
  %call861 = call i8* @cmd_put_frac31_color(%struct.gx_device_clist_writer_s* %438, i32* %439, i8* %440) #4
  br label %if.end.862

if.end.862:                                       ; preds = %if.then.860, %if.end.857
  br label %if.end.863

if.end.863:                                       ; preds = %if.end.862, %do.end.662
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.863, %if.then.331
  %441 = bitcast i32* %colors_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %441) #1
  %442 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %442) #1
  %443 = bitcast i32* %rcsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %443) #1
  %444 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %444) #1
  %445 = load i32, i32* %retval
  ret i32 %445
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cmd_size_frac31_color(%struct.gx_device_clist_writer_s* %cldev, i32* %c) #3 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %c.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %num_components = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32* %c, i32** %c.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %s, align 4, !tbaa !5
  %2 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 113
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components1, align 4, !tbaa !145
  store i32 %4, i32* %num_components, align 4, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4, !tbaa !5
  %6 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call = call i32 @cmd_size_frac31(i32 %9) #4
  %10 = load i32, i32* %s, align 4, !tbaa !5
  %add = add nsw i32 %10, %call
  store i32 %add, i32* %s, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %s, align 4, !tbaa !5
  %13 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i32 %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @cmd_put_frac31_color(%struct.gx_device_clist_writer_s* %cldev, i32* %c, i8* %dp) #3 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %c.addr = alloca i32*, align 8
  %dp.addr = alloca i8*, align 8
  %num_components = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  store i32* %c, i32** %c.addr, align 8, !tbaa !1
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !1
  %clist_color_info = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 113
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %clist_color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components1, align 4, !tbaa !145
  store i32 %2, i32* %num_components, align 4, !tbaa !5
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4, !tbaa !5
  %5 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %c.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %9 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %call = call i8* @cmd_put_frac31(i32 %8, i8* %9) #4
  store i8* %call, i8** %dp.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %dp.addr, align 8, !tbaa !1
  %12 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  ret i8* %11
}

declare i32 @cmd_size_frac31(i32) #2

declare i8* @cmd_put_frac31(i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 1720}
!8 = !{!"gx_clist_state_s", !3, i64 0, !9, i64 16, !6, i64 360, !11, i64 368, !11, i64 376, !10, i64 384, !3, i64 392, !3, i64 408, !12, i64 1720, !6, i64 1736, !13, i64 1740, !13, i64 1742, !6, i64 1744, !6, i64 1748, !6, i64 1752, !14, i64 1760, !15, i64 1776}
!9 = !{!"gx_device_color_saved_s", !2, i64 0, !3, i64 8, !10, i64 336}
!10 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!11 = !{!"long", !3, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!13 = !{!"short", !3, i64 0}
!14 = !{!"cmd_list_s", !2, i64 0, !2, i64 8}
!15 = !{!"gx_colors_usage_s", !11, i64 0, !6, i64 8, !16, i64 12}
!16 = !{!"gs_int_rect_s", !10, i64 0, !10, i64 8}
!17 = !{!8, !6, i64 1724}
!18 = !{!8, !6, i64 1728}
!19 = !{!8, !6, i64 1732}
!20 = !{!21, !6, i64 10192}
!21 = !{!"gx_device_clist_writer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !22, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !23, i64 96, !25, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !26, i64 984, !6, i64 1052, !6, i64 1056, !27, i64 1064, !2, i64 1104, !3, i64 1112, !29, i64 1120, !30, i64 1144, !2, i64 1728, !31, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !28, i64 1792, !6, i64 1808, !6, i64 1812, !32, i64 1816, !33, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !34, i64 1888, !6, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184, !6, i64 10192, !2, i64 10200, !2, i64 10208, !2, i64 10216, !2, i64 10224, !2, i64 10232, !14, i64 10240, !6, i64 10256, !6, i64 10260, !6, i64 10264, !6, i64 10268, !35, i64 10272, !6, i64 10320, !6, i64 10324, !6, i64 10328, !36, i64 10336, !6, i64 11952, !6, i64 11956, !6, i64 11960, !6, i64 11964, !3, i64 11968, !2, i64 12016, !11, i64 12024, !49, i64 12032, !3, i64 12080, !11, i64 12112, !11, i64 12120, !11, i64 12128, !11, i64 12136, !6, i64 12144, !6, i64 12148, !6, i64 12152, !6, i64 12156, !2, i64 12160, !6, i64 12168, !2, i64 12176, !6, i64 12184, !6, i64 12188, !6, i64 12192, !6, i64 12196, !6, i64 12200, !6, i64 12204, !2, i64 12208, !11, i64 12216, !6, i64 12224, !6, i64 12228, !6, i64 12232, !6, i64 12236, !23, i64 12240}
!22 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !13, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !24, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!24 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!25 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!26 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!27 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !28, i64 16, !6, i64 32, !3, i64 36}
!28 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!29 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!30 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!31 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!32 = !{!"gx_bits_cache_chunk_s", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20}
!33 = !{!"gx_bits_cache_s", !2, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!"gx_band_page_info_s", !3, i64 0, !2, i64 4096, !3, i64 4104, !2, i64 8200, !2, i64 8208, !6, i64 8216, !11, i64 8224, !11, i64 8232, !28, i64 8240}
!35 = !{!"gx_strip_bitmap_s", !2, i64 0, !6, i64 8, !10, i64 12, !11, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38, !6, i64 40}
!36 = !{!"gs_imager_state_s", !6, i64 0, !2, i64 8, !2, i64 16, !37, i64 24, !6, i64 128, !41, i64 132, !6, i64 168, !42, i64 176, !42, i64 192, !6, i64 208, !6, i64 212, !13, i64 216, !3, i64 220, !44, i64 224, !44, i64 228, !45, i64 232, !11, i64 240, !6, i64 248, !6, i64 252, !6, i64 256, !2, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !38, i64 296, !46, i64 300, !6, i64 308, !6, i64 312, !6, i64 316, !38, i64 320, !6, i64 324, !6, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !6, i64 408, !2, i64 416, !2, i64 424, !47, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !48, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !48, i64 1336}
!37 = !{!"gx_line_params_s", !38, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !6, i64 36, !39, i64 40, !40, i64 64}
!38 = !{!"float", !3, i64 0}
!39 = !{!"gs_matrix_s", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20}
!40 = !{!"gx_dash_params_s", !2, i64 0, !6, i64 8, !38, i64 12, !6, i64 16, !38, i64 20, !6, i64 24, !6, i64 28, !38, i64 32}
!41 = !{!"gs_matrix_fixed_s", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!42 = !{!"gs_point_s", !43, i64 0, !43, i64 8}
!43 = !{!"double", !3, i64 0}
!44 = !{!"gs_transparency_source_s", !38, i64 0}
!45 = !{!"gs_xstate_trans_flags", !6, i64 0, !6, i64 4}
!46 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!47 = !{!"gx_transfer_s", !6, i64 0, !2, i64 8, !6, i64 16, !2, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !2, i64 56}
!48 = !{!"gs_devicen_color_map_s", !6, i64 0, !3, i64 4, !6, i64 8, !6, i64 12, !11, i64 16, !3, i64 24}
!49 = !{!"clist_color_space_s", !3, i64 0, !11, i64 8, !50, i64 16, !2, i64 40}
!50 = !{!"clist_icc_color_s", !11, i64 0, !3, i64 8, !6, i64 12, !3, i64 16, !3, i64 20}
!51 = !{!3, !3, i64 0}
!52 = !{!12, !6, i64 0}
!53 = !{!12, !6, i64 4}
!54 = !{!12, !6, i64 8}
!55 = !{!12, !6, i64 12}
!56 = !{!21, !6, i64 10144}
!57 = !{!21, !2, i64 10200}
!58 = !{!11, !11, i64 0}
!59 = !{!21, !6, i64 832}
!60 = !{!21, !6, i64 12184}
!61 = !{!21, !6, i64 12188}
!62 = !{!21, !6, i64 12148}
!63 = !{!21, !6, i64 11952}
!64 = !{!16, !6, i64 0}
!65 = !{!16, !6, i64 8}
!66 = !{!16, !6, i64 4}
!67 = !{!16, !6, i64 12}
!68 = !{!69, !6, i64 0}
!69 = !{!"cmd_rects_enum_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !2, i64 24, !6, i64 32, !6, i64 36}
!70 = !{!69, !6, i64 4}
!71 = !{!69, !6, i64 8}
!72 = !{!21, !6, i64 10132}
!73 = !{!69, !6, i64 12}
!74 = !{!69, !6, i64 36}
!75 = !{!69, !6, i64 20}
!76 = !{!69, !2, i64 24}
!77 = !{!69, !6, i64 32}
!78 = !{!8, !11, i64 1776}
!79 = !{!8, !13, i64 1740}
!80 = !{!69, !6, i64 16}
!81 = !{!21, !6, i64 12144}
!82 = !{!21, !6, i64 12152}
!83 = !{!84, !6, i64 0}
!84 = !{!"gs_fixed_rect_s", !46, i64 0, !46, i64 8}
!85 = !{!84, !6, i64 4}
!86 = !{!84, !6, i64 8}
!87 = !{!84, !6, i64 12}
!88 = !{!89, !6, i64 4}
!89 = !{!"gs_fixed_edge_s", !46, i64 0, !46, i64 8}
!90 = !{!89, !6, i64 12}
!91 = !{!92, !2, i64 0}
!92 = !{!"gs_fill_attributes_s", !2, i64 0, !6, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !2, i64 40}
!93 = !{!89, !6, i64 0}
!94 = !{!89, !6, i64 8}
!95 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!96 = !{!92, !6, i64 28}
!97 = !{!92, !6, i64 32}
!98 = !{!92, !6, i64 8}
!99 = !{!92, !6, i64 24}
!100 = !{!101, !2, i64 1680}
!101 = !{!"gx_device_clist_common_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !22, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !23, i64 96, !25, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !26, i64 984, !6, i64 1052, !6, i64 1056, !27, i64 1064, !2, i64 1104, !3, i64 1112, !29, i64 1120, !30, i64 1144, !2, i64 1728, !31, i64 1736, !2, i64 1768, !2, i64 1776, !6, i64 1784, !28, i64 1792, !6, i64 1808, !6, i64 1812, !32, i64 1816, !33, i64 1840, !6, i64 1864, !6, i64 1868, !2, i64 1872, !6, i64 1880, !6, i64 1884, !34, i64 1888, !6, i64 10144, !11, i64 10152, !2, i64 10160, !2, i64 10168, !6, i64 10176, !2, i64 10184}
!102 = !{!103, !6, i64 168}
!103 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !2, i64 176, !6, i64 184, !2, i64 192, !22, i64 200}
!104 = !{!101, !6, i64 1812}
!105 = !{!8, !11, i64 368}
!106 = !{!35, !11, i64 24}
!107 = !{!8, !6, i64 360}
!108 = !{!21, !2, i64 1872}
!109 = !{!110, !11, i64 0}
!110 = !{!"", !11, i64 0}
!111 = !{!21, !2, i64 1776}
!112 = !{!113, !11, i64 16}
!113 = !{!"", !114, i64 0, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !11, i64 16, !3, i64 24, !3, i64 25, !13, i64 26, !13, i64 28, !13, i64 30, !3, i64 32}
!114 = !{!"gx_cached_bits_head_s", !6, i64 0, !6, i64 4}
!115 = !{!8, !6, i64 384}
!116 = !{!8, !6, i64 388}
!117 = !{!21, !13, i64 12252}
!118 = !{!119, !6, i64 100}
!119 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !22, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !23, i64 96, !25, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !26, i64 984, !6, i64 1052, !6, i64 1056, !27, i64 1064, !2, i64 1104, !3, i64 1112, !29, i64 1120, !30, i64 1144}
!120 = !{!119, !6, i64 832}
!121 = !{!119, !6, i64 836}
!122 = !{!8, !13, i64 1742}
!123 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !5, i64 12, i64 4, !5}
!124 = !{!119, !13, i64 108}
!125 = !{!21, !6, i64 100}
!126 = !{!21, !2, i64 10224}
!127 = !{!21, !2, i64 10216}
!128 = !{!8, !6, i64 1744}
!129 = !{!21, !6, i64 12168}
!130 = !{!8, !6, i64 1748}
!131 = !{!8, !6, i64 1784}
!132 = !{i64 0, i64 8, !1, i64 8, i64 4, !5, i64 12, i64 4, !5, i64 16, i64 4, !5, i64 24, i64 8, !58, i64 32, i64 2, !133, i64 34, i64 2, !133, i64 36, i64 2, !133, i64 38, i64 2, !133, i64 40, i64 4, !5}
!133 = !{!13, !13, i64 0}
!134 = !{!119, !2, i64 24}
!135 = !{!35, !13, i64 34}
!136 = !{!35, !13, i64 36}
!137 = !{!35, !6, i64 16}
!138 = !{!35, !6, i64 8}
!139 = !{!35, !6, i64 40}
!140 = !{!35, !13, i64 32}
!141 = !{!35, !6, i64 12}
!142 = !{!35, !13, i64 38}
!143 = !{!35, !2, i64 0}
!144 = !{!8, !6, i64 1736}
!145 = !{!21, !6, i64 12244}
