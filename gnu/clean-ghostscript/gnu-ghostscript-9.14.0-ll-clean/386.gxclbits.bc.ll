; ModuleID = './gxclbits.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, i32, %struct.gx_ht_order_component_s*, i32, i32, i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.gx_ht_order_procs_s*, %struct.gs_memory_s*, i32*, i8*, %struct.gx_ht_cache_s*, %struct.gx_transfer_map_s*, %struct.gx_ht_order_screen_params_s, i8*, i32 }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_procs_s = type { i32, i32 (%struct.gx_ht_order_s*, i8*)*, i32 (%struct.gx_ht_order_s*, i32, %struct.gs_int_point_s*)*, i32 (%struct.gx_ht_tile_s*, i32, %struct.gx_ht_order_s*)*, i32 (%struct.gx_ht_order_s*, i16, i8*, i32, i32, i32, i32, i32)* }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_ht_cache_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, {}*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_ht_order_screen_params_s = type { %struct.gs_matrix_s, i64 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_uid_s = type { i64, i64* }
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
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
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
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, {}*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_cie_joint_caches_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_clist_state_s = type { [2 x i64], %struct.gx_device_color_saved_s, i32, i64, i64, %struct.gs_int_point_s, [2 x i64], [2 x %struct.gx_device_color_s], %struct.gx_cmd_rect, i32, i16, i16, i32, i32, i32, %struct.cmd_list_s, %struct.gx_colors_usage_s }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%union.ss_ = type { %struct.stream_CFE_state_s }
%struct.stream_CFE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.stream_template_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32, i32, void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)*, i32 (%struct.stream_state_s*)* }
%struct.stream_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8] }
%struct.stream_cursor_read_s = type { i8*, i8*, i8* }
%struct.stream_cursor_write_s = type { i8*, i8*, i8* }
%struct.stream_RLE_state_s = type { %struct.stream_template_s*, %struct.gs_memory_s*, i32 (%struct.stream_state_s*, i8*)*, i32, [80 x i8], i32, i64, i64, i32 }
%struct.tile_loc_s = type { i32, %struct.tile_slot* }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16, i8 }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }

; Function Attrs: nounwind uwtable
define i32 @clist_bitmap_bytes(i32 %width_bits, i32 %height, i32 %compression_mask, i32* %width_bytes, i32* %raster) #0 {
entry:
  %width_bits.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %compression_mask.addr = alloca i32, align 4
  %width_bytes.addr = alloca i32*, align 8
  %raster.addr = alloca i32*, align 8
  %full_raster = alloca i32, align 4
  %short_raster = alloca i32, align 4
  %width_bytes_last = alloca i32, align 4
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store i32 %compression_mask, i32* %compression_mask.addr, align 4, !tbaa !1
  store i32* %width_bytes, i32** %width_bytes.addr, align 8, !tbaa !5
  store i32* %raster, i32** %raster.addr, align 8, !tbaa !5
  %0 = bitcast i32* %full_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %width_bits.addr, align 4, !tbaa !1
  %add = add i32 %1, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  %2 = load i32*, i32** %raster.addr, align 8, !tbaa !5
  store i32 %shl, i32* %2, align 4, !tbaa !1
  store i32 %shl, i32* %full_raster, align 4, !tbaa !1
  %3 = bitcast i32* %short_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %width_bits.addr, align 4, !tbaa !1
  %add1 = add i32 %4, 7
  %shr2 = lshr i32 %add1, 3
  store i32 %shr2, i32* %short_raster, align 4, !tbaa !1
  %5 = bitcast i32* %width_bytes_last to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and = and i32 %6, 14
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %full_raster, align 4, !tbaa !1
  store i32 %7, i32* %width_bytes_last, align 4, !tbaa !1
  %8 = load i32*, i32** %width_bytes.addr, align 8, !tbaa !5
  store i32 %7, i32* %8, align 4, !tbaa !1
  br label %if.end.9

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %short_raster, align 4, !tbaa !1
  %cmp = icmp ule i32 %9, 6
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp3 = icmp ule i32 %10, 1
  br i1 %cmp3, label %if.then.7, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and5 = and i32 %11, 512
  %cmp6 = icmp ne i32 %and5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.else
  %12 = load i32, i32* %short_raster, align 4, !tbaa !1
  store i32 %12, i32* %width_bytes_last, align 4, !tbaa !1
  %13 = load i32*, i32** %width_bytes.addr, align 8, !tbaa !5
  store i32 %12, i32* %13, align 4, !tbaa !1
  br label %if.end

if.else.8:                                        ; preds = %lor.lhs.false.4
  %14 = load i32, i32* %full_raster, align 4, !tbaa !1
  %15 = load i32*, i32** %width_bytes.addr, align 8, !tbaa !5
  store i32 %14, i32* %15, align 4, !tbaa !1
  %16 = load i32, i32* %short_raster, align 4, !tbaa !1
  store i32 %16, i32* %width_bytes_last, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %17 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %18 = load i32*, i32** %width_bytes.addr, align 8, !tbaa !5
  %19 = load i32, i32* %18, align 4, !tbaa !1
  %20 = load i32, i32* %height.addr, align 4, !tbaa !1
  %sub = sub i32 %20, 1
  %mul = mul i32 %19, %sub
  %21 = load i32, i32* %width_bytes_last, align 4, !tbaa !1
  %add11 = add i32 %mul, %21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add11, %cond.false ]
  %22 = bitcast i32* %width_bytes_last to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %short_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i32* %full_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  ret i32 %cond
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i8* %data, i32 %width_bits, i32 %height, i32 %raster, i32 %op_size, i32 %compression_mask, i8** %pdp, i32* %psize) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %width_bits.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %op_size.addr = alloca i32, align 4
  %compression_mask.addr = alloca i32, align 4
  %pdp.addr = alloca i8**, align 8
  %psize.addr = alloca i32*, align 8
  %short_raster = alloca i32, align 4
  %full_raster = alloca i32, align 4
  %short_size = alloca i32, align 4
  %uncompressed_raster = alloca i32, align 4
  %uncompressed_size = alloca i32, align 4
  %max_size = alloca i32, align 4
  %mem = alloca %struct.gs_memory_s*, align 8
  %dp = alloca i8*, align 8
  %compress = alloca i32, align 4
  %code = alloca i32, align 4
  %sstate = alloca %union.ss_, align 8
  %try_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %wbase = alloca i8*, align 8
  %w = alloca %struct.stream_cursor_write_s, align 8
  %wmax = alloca i32, align 4
  %status = alloca i32, align 4
  %wcount = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !1
  store i32 %op_size, i32* %op_size.addr, align 4, !tbaa !1
  store i32 %compression_mask, i32* %compression_mask.addr, align 4, !tbaa !1
  store i8** %pdp, i8*** %pdp.addr, align 8, !tbaa !5
  store i32* %psize, i32** %psize.addr, align 8, !tbaa !5
  %0 = bitcast i32* %short_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %full_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %short_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %width_bits.addr, align 4, !tbaa !1
  %4 = load i32, i32* %height.addr, align 4, !tbaa !1
  %5 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and = and i32 %5, -15
  %call = call i32 @clist_bitmap_bytes(i32 %3, i32 %4, i32 %and, i32* %short_raster, i32* %full_raster) #5
  store i32 %call, i32* %short_size, align 4, !tbaa !1
  %6 = bitcast i32* %uncompressed_raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %uncompressed_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %width_bits.addr, align 4, !tbaa !1
  %9 = load i32, i32* %height.addr, align 4, !tbaa !1
  %10 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %call1 = call i32 @clist_bitmap_bytes(i32 %8, i32 %9, i32 %10, i32* %uncompressed_raster, i32* %full_raster) #5
  store i32 %call1, i32* %uncompressed_size, align 4, !tbaa !1
  %11 = bitcast i32* %max_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %sub = sub nsw i32 4096, %12
  store i32 %sub, i32* %max_size, align 4, !tbaa !1
  %13 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  store %struct.gs_memory_s* %15, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  %16 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  store i32 0, i32* %compress, align 4, !tbaa !1
  %18 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %short_size, align 4, !tbaa !1
  %cmp = icmp uge i32 %19, 50
  br i1 %cmp, label %land.lhs.true, label %if.else.129

land.lhs.true:                                    ; preds = %entry
  %20 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and2 = and i32 %20, 6
  %cmp3 = icmp ne i32 %and2, 0
  br i1 %cmp3, label %land.lhs.true.4, label %if.else.129

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %21 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  %22 = load i32, i32* %max_size, align 4, !tbaa !1
  %cmp5 = icmp ule i32 %21, %22
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.4
  %23 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and6 = and i32 %23, 256
  %cmp7 = icmp ne i32 %and6, 0
  br i1 %cmp7, label %if.then, label %if.else.129

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.4
  %24 = bitcast %union.ss_* %sstate to i8*
  call void @llvm.lifetime.start(i64 216, i8* %24) #1
  %25 = bitcast i32* %try_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %27 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  %28 = load i32, i32* %max_size, align 4, !tbaa !1
  %cmp8 = icmp ult i32 %27, %28
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %29 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %30 = load i32, i32* %max_size, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ]
  %add = add i32 %26, %cond
  store i32 %add, i32* %try_size, align 4, !tbaa !1
  %31 = load i32, i32* %try_size, align 4, !tbaa !1
  %32 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  store i32 %31, i32* %32, align 4, !tbaa !1
  %33 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %cmp9 = icmp ne %struct.gx_clist_state_s* %33, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.17

cond.true.10:                                     ; preds = %cond.end
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %35 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %35, i32 0, i32 15
  %36 = load i32, i32* %try_size, align 4, !tbaa !1
  %call11 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %34, %struct.cmd_list_s* %list, i32 %36) #5
  store i8* %call11, i8** %dp, align 8, !tbaa !5
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.true.10
  %37 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %37, i32 0, i32 65
  %38 = load i32, i32* %error_code, align 4, !tbaa !42
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.true.10
  %39 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 0, i8* %39, align 1, !tbaa !43
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %38, %cond.true.13 ], [ 0, %cond.false.14 ]
  br label %cond.end.26

cond.false.17:                                    ; preds = %cond.end
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 59
  %42 = load i32, i32* %nbands, align 4, !tbaa !44
  %sub18 = sub nsw i32 %42, 1
  %43 = load i32, i32* %try_size, align 4, !tbaa !1
  %call19 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %40, i32 0, i32 %sub18, i32 %43) #5
  store i8* %call19, i8** %dp, align 8, !tbaa !5
  %cmp20 = icmp eq i8* %call19, null
  br i1 %cmp20, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %cond.false.17
  %44 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %44, i32 0, i32 65
  %45 = load i32, i32* %error_code22, align 4, !tbaa !42
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.false.17
  %46 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 0, i8* %46, align 1, !tbaa !43
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi i32 [ %45, %cond.true.21 ], [ 0, %cond.false.23 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end.24, %cond.end.15
  %cond27 = phi i32 [ %cond16, %cond.end.15 ], [ %cond25, %cond.end.24 ]
  store i32 %cond27, i32* %code, align 4, !tbaa !1
  %47 = load i32, i32* %code, align 4, !tbaa !1
  %cmp28 = icmp slt i32 %47, 0
  br i1 %cmp28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %cond.end.26
  %48 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end:                                           ; preds = %cond.end.26
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and30 = and i32 %49, 4
  %tobool = icmp ne i32 %and30, 0
  br i1 %tobool, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.end
  %cf = bitcast %union.ss_* %sstate to %struct.stream_CFE_state_s*
  %50 = load i32, i32* %uncompressed_raster, align 4, !tbaa !1
  %shl = shl i32 %50, 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !5
  call void @clist_cfe_init(%struct.stream_CFE_state_s* %cf, i32 %shl, %struct.gs_memory_s* %51) #5
  store i32 2, i32* %compress, align 4, !tbaa !1
  br label %if.end.36

if.else:                                          ; preds = %do.end
  %52 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and32 = and i32 %52, 2
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.else
  %rl = bitcast %union.ss_* %sstate to %struct.stream_RLE_state_s*
  call void @clist_rle_init(%struct.stream_RLE_state_s* %rl) #5
  store i32 1, i32* %compress, align 4, !tbaa !1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.31
  %53 = load i32, i32* %compress, align 4, !tbaa !1
  %tobool37 = icmp ne i32 %53, 0
  br i1 %tobool37, label %if.then.38, label %if.end.77

if.then.38:                                       ; preds = %if.end.36
  %54 = bitcast i8** %wbase to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load i8*, i8** %dp, align 8, !tbaa !5
  %56 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %sub39 = sub nsw i32 %56, 1
  %idx.ext = sext i32 %sub39 to i64
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 %idx.ext
  store i8* %add.ptr, i8** %wbase, align 8, !tbaa !5
  %57 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.start(i64 24, i8* %57) #1
  %58 = bitcast i32* %wmax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  %60 = load i32, i32* %max_size, align 4, !tbaa !1
  %cmp40 = icmp ult i32 %59, %60
  br i1 %cmp40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.then.38
  %61 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.then.38
  %62 = load i32, i32* %max_size, align 4, !tbaa !1
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi i32 [ %61, %cond.true.41 ], [ %62, %cond.false.42 ]
  store i32 %cond44, i32* %wmax, align 4, !tbaa !1
  %63 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #1
  %64 = load i8*, i8** %wbase, align 8, !tbaa !5
  %ptr = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  store i8* %64, i8** %ptr, align 8, !tbaa !45
  %ptr45 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %65 = load i8*, i8** %ptr45, align 8, !tbaa !45
  %66 = load i32, i32* %wmax, align 4, !tbaa !1
  %67 = load i32, i32* %short_size, align 4, !tbaa !1
  %shr = lshr i32 %67, 1
  %cmp46 = icmp ult i32 %66, %shr
  br i1 %cmp46, label %cond.true.47, label %cond.false.48

cond.true.47:                                     ; preds = %cond.end.43
  %68 = load i32, i32* %wmax, align 4, !tbaa !1
  br label %cond.end.50

cond.false.48:                                    ; preds = %cond.end.43
  %69 = load i32, i32* %short_size, align 4, !tbaa !1
  %shr49 = lshr i32 %69, 1
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.48, %cond.true.47
  %cond51 = phi i32 [ %68, %cond.true.47 ], [ %shr49, %cond.false.48 ]
  %idx.ext52 = zext i32 %cond51 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %65, i64 %idx.ext52
  %limit = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 2
  store i8* %add.ptr53, i8** %limit, align 8, !tbaa !47
  %70 = bitcast %union.ss_* %sstate to %struct.stream_state_s*
  %71 = load i8*, i8** %data.addr, align 8, !tbaa !5
  %72 = load i32, i32* %uncompressed_raster, align 4, !tbaa !1
  %shl54 = shl i32 %72, 3
  %73 = load i32, i32* %raster.addr, align 4, !tbaa !1
  %74 = load i32, i32* %height.addr, align 4, !tbaa !1
  %call55 = call i32 @cmd_compress_bitmap(%struct.stream_state_s* %70, i8* %71, i32 %shl54, i32 %73, i32 %74, %struct.stream_cursor_write_s* %w) #5
  store i32 %call55, i32* %status, align 4, !tbaa !1
  %75 = load i32, i32* %status, align 4, !tbaa !1
  %cmp56 = icmp eq i32 %75, 0
  br i1 %cmp56, label %if.then.57, label %if.end.73

if.then.57:                                       ; preds = %cond.end.50
  %76 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %ptr58 = getelementptr inbounds %struct.stream_cursor_write_s, %struct.stream_cursor_write_s* %w, i32 0, i32 1
  %77 = load i8*, i8** %ptr58, align 8, !tbaa !45
  %78 = load i8*, i8** %wbase, align 8, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %78 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %wcount, align 4, !tbaa !1
  %79 = load i32, i32* %try_size, align 4, !tbaa !1
  %80 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %81 = load i32, i32* %wcount, align 4, !tbaa !1
  %add59 = add i32 %80, %81
  %sub60 = sub i32 %79, %add59
  %82 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tobool61 = icmp ne %struct.gx_clist_state_s* %82, null
  br i1 %tobool61, label %cond.true.62, label %cond.false.64

cond.true.62:                                     ; preds = %if.then.57
  %83 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list63 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %83, i32 0, i32 15
  br label %cond.end.65

cond.false.64:                                    ; preds = %if.then.57
  %84 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %band_range_list = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %84, i32 0, i32 71
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.62
  %cond66 = phi %struct.cmd_list_s* [ %list63, %cond.true.62 ], [ %band_range_list, %cond.false.64 ]
  %tail = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %cond66, i32 0, i32 1
  %85 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail, align 8, !tbaa !48
  %size = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %85, i32 0, i32 1
  %86 = load i32, i32* %size, align 4, !tbaa !49
  %sub67 = sub i32 %86, %sub60
  store i32 %sub67, i32* %size, align 4, !tbaa !49
  %87 = load i32, i32* %try_size, align 4, !tbaa !1
  %88 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %89 = load i32, i32* %wcount, align 4, !tbaa !1
  %add68 = add i32 %88, %89
  %sub69 = sub i32 %87, %add68
  %90 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %cnext = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %90, i32 0, i32 68
  %91 = load i8*, i8** %cnext, align 8, !tbaa !51
  %idx.ext70 = zext i32 %sub69 to i64
  %idx.neg = sub i64 0, %idx.ext70
  %add.ptr71 = getelementptr inbounds i8, i8* %91, i64 %idx.neg
  store i8* %add.ptr71, i8** %cnext, align 8, !tbaa !51
  %92 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %93 = load i32, i32* %wcount, align 4, !tbaa !1
  %add72 = add i32 %92, %93
  %94 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  store i32 %add72, i32* %94, align 4, !tbaa !1
  store i32 4, i32* %cleanup.dest.slot
  %95 = bitcast i32* %wcount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  br label %cleanup

if.end.73:                                        ; preds = %cond.end.50
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.73, %cond.end.65
  %96 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i32* %wmax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast %struct.stream_cursor_write_s* %w to i8*
  call void @llvm.lifetime.end(i64 24, i8* %98) #1
  %99 = bitcast i8** %wbase to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.125 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.77

if.end.77:                                        ; preds = %cleanup.cont, %if.end.36
  %100 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  %101 = load i32, i32* %max_size, align 4, !tbaa !1
  %cmp78 = icmp ugt i32 %100, %101
  br i1 %cmp78, label %if.then.80, label %if.end.98

if.then.80:                                       ; preds = %if.end.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  br label %do.cond.82

do.cond.82:                                       ; preds = %do.body.81
  br label %do.end.83

do.end.83:                                        ; preds = %do.cond.82
  %102 = load i32, i32* %try_size, align 4, !tbaa !1
  %103 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tobool84 = icmp ne %struct.gx_clist_state_s* %103, null
  br i1 %tobool84, label %cond.true.85, label %cond.false.87

cond.true.85:                                     ; preds = %do.end.83
  %104 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list86 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %104, i32 0, i32 15
  br label %cond.end.89

cond.false.87:                                    ; preds = %do.end.83
  %105 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %band_range_list88 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %105, i32 0, i32 71
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.false.87, %cond.true.85
  %cond90 = phi %struct.cmd_list_s* [ %list86, %cond.true.85 ], [ %band_range_list88, %cond.false.87 ]
  %tail91 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %cond90, i32 0, i32 1
  %106 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail91, align 8, !tbaa !48
  %size92 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %106, i32 0, i32 1
  %107 = load i32, i32* %size92, align 4, !tbaa !49
  %sub93 = sub i32 %107, %102
  store i32 %sub93, i32* %size92, align 4, !tbaa !49
  %108 = load i32, i32* %try_size, align 4, !tbaa !1
  %109 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %cnext94 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %109, i32 0, i32 68
  %110 = load i8*, i8** %cnext94, align 8, !tbaa !51
  %idx.ext95 = sext i32 %108 to i64
  %idx.neg96 = sub i64 0, %idx.ext95
  %add.ptr97 = getelementptr inbounds i8, i8* %110, i64 %idx.neg96
  store i8* %add.ptr97, i8** %cnext94, align 8, !tbaa !51
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.125

if.end.98:                                        ; preds = %if.end.77
  %111 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  %112 = load i32, i32* %short_size, align 4, !tbaa !1
  %cmp99 = icmp ne i32 %111, %112
  br i1 %cmp99, label %if.then.101, label %if.end.124

if.then.101:                                      ; preds = %if.end.98
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.101
  br label %do.cond.103

do.cond.103:                                      ; preds = %do.body.102
  br label %do.end.104

do.end.104:                                       ; preds = %do.cond.103
  %113 = load i32, i32* %try_size, align 4, !tbaa !1
  %114 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %115 = load i32, i32* %short_size, align 4, !tbaa !1
  %add105 = add i32 %114, %115
  %sub106 = sub i32 %113, %add105
  %116 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tobool107 = icmp ne %struct.gx_clist_state_s* %116, null
  br i1 %tobool107, label %cond.true.108, label %cond.false.110

cond.true.108:                                    ; preds = %do.end.104
  %117 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list109 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %117, i32 0, i32 15
  br label %cond.end.112

cond.false.110:                                   ; preds = %do.end.104
  %118 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %band_range_list111 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %118, i32 0, i32 71
  br label %cond.end.112

cond.end.112:                                     ; preds = %cond.false.110, %cond.true.108
  %cond113 = phi %struct.cmd_list_s* [ %list109, %cond.true.108 ], [ %band_range_list111, %cond.false.110 ]
  %tail114 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %cond113, i32 0, i32 1
  %119 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail114, align 8, !tbaa !48
  %size115 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %119, i32 0, i32 1
  %120 = load i32, i32* %size115, align 4, !tbaa !49
  %sub116 = sub i32 %120, %sub106
  store i32 %sub116, i32* %size115, align 4, !tbaa !49
  %121 = load i32, i32* %try_size, align 4, !tbaa !1
  %122 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %123 = load i32, i32* %short_size, align 4, !tbaa !1
  %add117 = add i32 %122, %123
  %sub118 = sub i32 %121, %add117
  %124 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %cnext119 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %124, i32 0, i32 68
  %125 = load i8*, i8** %cnext119, align 8, !tbaa !51
  %idx.ext120 = zext i32 %sub118 to i64
  %idx.neg121 = sub i64 0, %idx.ext120
  %add.ptr122 = getelementptr inbounds i8, i8* %125, i64 %idx.neg121
  store i8* %add.ptr122, i8** %cnext119, align 8, !tbaa !51
  %126 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %127 = load i32, i32* %short_size, align 4, !tbaa !1
  %add123 = add i32 %126, %127
  %128 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  store i32 %add123, i32* %128, align 4, !tbaa !1
  br label %if.end.124

if.end.124:                                       ; preds = %cond.end.112, %if.end.98
  store i32 0, i32* %compress, align 4, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.125

cleanup.125:                                      ; preds = %if.end.124, %cond.end.89, %cleanup, %if.then.29
  %129 = bitcast i32* %try_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast %union.ss_* %sstate to i8*
  call void @llvm.lifetime.end(i64 216, i8* %130) #1
  %cleanup.dest.127 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.127, label %cleanup.201 [
    i32 0, label %cleanup.cont.128
    i32 4, label %out
  ]

cleanup.cont.128:                                 ; preds = %cleanup.125
  br label %if.end.168

if.else.129:                                      ; preds = %lor.lhs.false, %land.lhs.true, %entry
  %131 = load i32, i32* %uncompressed_size, align 4, !tbaa !1
  %132 = load i32, i32* %max_size, align 4, !tbaa !1
  %cmp130 = icmp ugt i32 %131, %132
  br i1 %cmp130, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %if.else.129
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.else.133:                                      ; preds = %if.else.129
  %133 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %134 = load i32, i32* %short_size, align 4, !tbaa !1
  %add134 = add i32 %133, %134
  %135 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  store i32 %add134, i32* %135, align 4, !tbaa !1
  %136 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %cmp135 = icmp ne %struct.gx_clist_state_s* %136, null
  br i1 %cmp135, label %cond.true.137, label %cond.false.147

cond.true.137:                                    ; preds = %if.else.133
  %137 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %138 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list138 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %138, i32 0, i32 15
  %139 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  %140 = load i32, i32* %139, align 4, !tbaa !1
  %call139 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %137, %struct.cmd_list_s* %list138, i32 %140) #5
  store i8* %call139, i8** %dp, align 8, !tbaa !5
  %cmp140 = icmp eq i8* %call139, null
  br i1 %cmp140, label %cond.true.142, label %cond.false.144

cond.true.142:                                    ; preds = %cond.true.137
  %141 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code143 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %141, i32 0, i32 65
  %142 = load i32, i32* %error_code143, align 4, !tbaa !42
  br label %cond.end.145

cond.false.144:                                   ; preds = %cond.true.137
  %143 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 0, i8* %143, align 1, !tbaa !43
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.144, %cond.true.142
  %cond146 = phi i32 [ %142, %cond.true.142 ], [ 0, %cond.false.144 ]
  br label %cond.end.158

cond.false.147:                                   ; preds = %if.else.133
  %144 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %145 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands148 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %145, i32 0, i32 59
  %146 = load i32, i32* %nbands148, align 4, !tbaa !44
  %sub149 = sub nsw i32 %146, 1
  %147 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  %148 = load i32, i32* %147, align 4, !tbaa !1
  %call150 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %144, i32 0, i32 %sub149, i32 %148) #5
  store i8* %call150, i8** %dp, align 8, !tbaa !5
  %cmp151 = icmp eq i8* %call150, null
  br i1 %cmp151, label %cond.true.153, label %cond.false.155

cond.true.153:                                    ; preds = %cond.false.147
  %149 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code154 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %149, i32 0, i32 65
  %150 = load i32, i32* %error_code154, align 4, !tbaa !42
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.false.147
  %151 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 0, i8* %151, align 1, !tbaa !43
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.153
  %cond157 = phi i32 [ %150, %cond.true.153 ], [ 0, %cond.false.155 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.end.145
  %cond159 = phi i32 [ %cond146, %cond.end.145 ], [ %cond157, %cond.end.156 ]
  store i32 %cond159, i32* %code, align 4, !tbaa !1
  %152 = load i32, i32* %code, align 4, !tbaa !1
  %cmp160 = icmp slt i32 %152, 0
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %cond.end.158
  %153 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %153, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

if.end.163:                                       ; preds = %cond.end.158
  br label %do.body.164

do.body.164:                                      ; preds = %if.end.163
  br label %do.cond.165

do.cond.165:                                      ; preds = %do.body.164
  br label %do.end.166

do.end.166:                                       ; preds = %do.cond.165
  br label %if.end.167

if.end.167:                                       ; preds = %do.end.166
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %cleanup.cont.128
  %154 = load i32, i32* %compression_mask.addr, align 4, !tbaa !1
  %and169 = and i32 %154, 8
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %land.lhs.true.171, label %if.else.197

land.lhs.true.171:                                ; preds = %if.end.168
  %155 = load i8*, i8** %data.addr, align 8, !tbaa !5
  %156 = load i32, i32* %raster.addr, align 4, !tbaa !1
  %157 = load i32, i32* %uncompressed_raster, align 4, !tbaa !1
  %shl172 = shl i32 %157, 3
  %158 = load i32, i32* %height.addr, align 4, !tbaa !1
  %call173 = call i32 @bytes_rectangle_is_const(i8* %155, i32 %156, i32 %shl172, i32 %158) #5
  store i32 %call173, i32* %code, align 4, !tbaa !1
  %cmp174 = icmp sge i32 %call173, 0
  br i1 %cmp174, label %if.then.176, label %if.else.197

if.then.176:                                      ; preds = %land.lhs.true.171
  %159 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  %160 = load i32, i32* %159, align 4, !tbaa !1
  %161 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %add177 = add nsw i32 %161, 1
  %sub178 = sub i32 %160, %add177
  %162 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tobool179 = icmp ne %struct.gx_clist_state_s* %162, null
  br i1 %tobool179, label %cond.true.180, label %cond.false.182

cond.true.180:                                    ; preds = %if.then.176
  %163 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list181 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %163, i32 0, i32 15
  br label %cond.end.184

cond.false.182:                                   ; preds = %if.then.176
  %164 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %band_range_list183 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %164, i32 0, i32 71
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.182, %cond.true.180
  %cond185 = phi %struct.cmd_list_s* [ %list181, %cond.true.180 ], [ %band_range_list183, %cond.false.182 ]
  %tail186 = getelementptr inbounds %struct.cmd_list_s, %struct.cmd_list_s* %cond185, i32 0, i32 1
  %165 = load %struct.cmd_prefix_s*, %struct.cmd_prefix_s** %tail186, align 8, !tbaa !48
  %size187 = getelementptr inbounds %struct.cmd_prefix_s, %struct.cmd_prefix_s* %165, i32 0, i32 1
  %166 = load i32, i32* %size187, align 4, !tbaa !49
  %sub188 = sub i32 %166, %sub178
  store i32 %sub188, i32* %size187, align 4, !tbaa !49
  %167 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  %168 = load i32, i32* %167, align 4, !tbaa !1
  %169 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %add189 = add nsw i32 %169, 1
  %sub190 = sub i32 %168, %add189
  %170 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %cnext191 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %170, i32 0, i32 68
  %171 = load i8*, i8** %cnext191, align 8, !tbaa !51
  %idx.ext192 = zext i32 %sub190 to i64
  %idx.neg193 = sub i64 0, %idx.ext192
  %add.ptr194 = getelementptr inbounds i8, i8* %171, i64 %idx.neg193
  store i8* %add.ptr194, i8** %cnext191, align 8, !tbaa !51
  %172 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %add195 = add nsw i32 %172, 1
  %173 = load i32*, i32** %psize.addr, align 8, !tbaa !5
  store i32 %add195, i32* %173, align 4, !tbaa !1
  %174 = load i32, i32* %code, align 4, !tbaa !1
  %conv196 = trunc i32 %174 to i8
  %175 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %idxprom = sext i32 %175 to i64
  %176 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %176, i64 %idxprom
  store i8 %conv196, i8* %arrayidx, align 1, !tbaa !43
  store i32 3, i32* %compress, align 4, !tbaa !1
  br label %if.end.200

if.else.197:                                      ; preds = %land.lhs.true.171, %if.end.168
  %177 = load i8*, i8** %dp, align 8, !tbaa !5
  %178 = load i32, i32* %op_size.addr, align 4, !tbaa !1
  %idx.ext198 = sext i32 %178 to i64
  %add.ptr199 = getelementptr inbounds i8, i8* %177, i64 %idx.ext198
  %179 = load i32, i32* %short_raster, align 4, !tbaa !1
  %180 = load i8*, i8** %data.addr, align 8, !tbaa !5
  %181 = load i32, i32* %raster.addr, align 4, !tbaa !1
  %182 = load i32, i32* %short_raster, align 4, !tbaa !1
  %183 = load i32, i32* %height.addr, align 4, !tbaa !1
  call void @bytes_copy_rectangle(i8* %add.ptr199, i32 %179, i8* %180, i32 %181, i32 %182, i32 %183) #5
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.197, %cond.end.184
  br label %out

out:                                              ; preds = %if.end.200, %cleanup.125
  %184 = load i8*, i8** %dp, align 8, !tbaa !5
  %185 = load i8**, i8*** %pdp.addr, align 8, !tbaa !5
  store i8* %184, i8** %185, align 8, !tbaa !5
  %186 = load i32, i32* %compress, align 4, !tbaa !1
  store i32 %186, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.201

cleanup.201:                                      ; preds = %out, %if.then.162, %if.then.132, %cleanup.125
  %187 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %compress to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %189) #1
  %190 = bitcast %struct.gs_memory_s** %mem to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32* %max_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %uncompressed_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %uncompressed_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %short_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i32* %full_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %short_raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = load i32, i32* %retval
  ret i32 %197
}

declare i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s*, %struct.cmd_list_s*, i32) #2

declare i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s*, i32, i32, i32) #2

declare void @clist_cfe_init(%struct.stream_CFE_state_s*, i32, %struct.gs_memory_s*) #2

declare void @clist_rle_init(%struct.stream_RLE_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @cmd_compress_bitmap(%struct.stream_state_s* %st, i8* %data, i32 %width_bits, i32 %raster, i32 %height, %struct.stream_cursor_write_s* %pw) #0 {
entry:
  %st.addr = alloca %struct.stream_state_s*, align 8
  %data.addr = alloca i8*, align 8
  %width_bits.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %pw.addr = alloca %struct.stream_cursor_write_s*, align 8
  %width_bytes = alloca i32, align 4
  %status = alloca i32, align 4
  %r = alloca %struct.stream_cursor_read_s, align 8
  %y = alloca i32, align 4
  store %struct.stream_state_s* %st, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  store i8* %data, i8** %data.addr, align 8, !tbaa !5
  store i32 %width_bits, i32* %width_bits.addr, align 4, !tbaa !1
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !1
  store i32 %height, i32* %height.addr, align 4, !tbaa !1
  store %struct.stream_cursor_write_s* %pw, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !5
  %0 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %width_bits.addr, align 4, !tbaa !1
  %add = add i32 %1, 63
  %shr = lshr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %width_bytes, align 4, !tbaa !1
  %2 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %status, align 4, !tbaa !1
  %3 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #1
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 -1
  %ptr = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  store i8* %add.ptr, i8** %ptr, align 8, !tbaa !52
  %5 = load i32, i32* %raster.addr, align 4, !tbaa !1
  %6 = load i32, i32* %width_bytes, align 4, !tbaa !1
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ptr1 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %7 = load i8*, i8** %ptr1, align 8, !tbaa !52
  %8 = load i32, i32* %raster.addr, align 4, !tbaa !1
  %9 = load i32, i32* %height.addr, align 4, !tbaa !1
  %mul = mul i32 %8, %9
  %idx.ext = zext i32 %mul to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %limit = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr2, i8** %limit, align 8, !tbaa !54
  %10 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %templat = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %10, i32 0, i32 0
  %11 = load %struct.stream_template_s*, %struct.stream_template_s** %templat, align 8, !tbaa !55
  %process = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %11, i32 0, i32 2
  %12 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process, align 8, !tbaa !57
  %13 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %14 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !5
  %call = call i32 %12(%struct.stream_state_s* %13, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %14, i32 1) #5
  store i32 %call, i32* %status, align 4, !tbaa !1
  br label %if.end.26

if.else:                                          ; preds = %entry
  %15 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  store i32 1, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %ptr3 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %16 = load i8*, i8** %ptr3, align 8, !tbaa !52
  %17 = load i32, i32* %width_bytes, align 4, !tbaa !1
  %idx.ext4 = zext i32 %17 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %16, i64 %idx.ext4
  %limit6 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  store i8* %add.ptr5, i8** %limit6, align 8, !tbaa !54
  %18 = load i32, i32* %y, align 4, !tbaa !1
  %19 = load i32, i32* %height.addr, align 4, !tbaa !1
  %cmp7 = icmp ult i32 %18, %19
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %templat8 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %20, i32 0, i32 0
  %21 = load %struct.stream_template_s*, %struct.stream_template_s** %templat8, align 8, !tbaa !55
  %process9 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %21, i32 0, i32 2
  %22 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process9, align 8, !tbaa !57
  %23 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %24 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !5
  %call10 = call i32 %22(%struct.stream_state_s* %23, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %24, i32 0) #5
  store i32 %call10, i32* %status, align 4, !tbaa !1
  %25 = load i32, i32* %status, align 4, !tbaa !1
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %ptr12 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %26 = load i8*, i8** %ptr12, align 8, !tbaa !52
  %limit13 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 1
  %27 = load i8*, i8** %limit13, align 8, !tbaa !54
  %cmp14 = icmp ne i8* %26, %27
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 -1, i32* %status, align 4, !tbaa !1
  br label %for.end

if.end.16:                                        ; preds = %if.end
  %28 = load i32, i32* %raster.addr, align 4, !tbaa !1
  %29 = load i32, i32* %width_bytes, align 4, !tbaa !1
  %sub = sub i32 %28, %29
  %ptr17 = getelementptr inbounds %struct.stream_cursor_read_s, %struct.stream_cursor_read_s* %r, i32 0, i32 0
  %30 = load i8*, i8** %ptr17, align 8, !tbaa !52
  %idx.ext18 = zext i32 %sub to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %30, i64 %idx.ext18
  store i8* %add.ptr19, i8** %ptr17, align 8, !tbaa !52
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %31 = load i32, i32* %y, align 4, !tbaa !1
  %inc = add i32 %31, 1
  store i32 %inc, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %if.then.11, %for.cond
  %32 = load i32, i32* %status, align 4, !tbaa !1
  %cmp20 = icmp eq i32 %32, 0
  br i1 %cmp20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %for.end
  %33 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %templat22 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %33, i32 0, i32 0
  %34 = load %struct.stream_template_s*, %struct.stream_template_s** %templat22, align 8, !tbaa !55
  %process23 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %34, i32 0, i32 2
  %35 = load i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)*, i32 (%struct.stream_state_s*, %struct.stream_cursor_read_s*, %struct.stream_cursor_write_s*, i32)** %process23, align 8, !tbaa !57
  %36 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %37 = load %struct.stream_cursor_write_s*, %struct.stream_cursor_write_s** %pw.addr, align 8, !tbaa !5
  %call24 = call i32 %35(%struct.stream_state_s* %36, %struct.stream_cursor_read_s* %r, %struct.stream_cursor_write_s* %37, i32 1) #5
  store i32 %call24, i32* %status, align 4, !tbaa !1
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %for.end
  %38 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then
  %39 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %templat27 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %39, i32 0, i32 0
  %40 = load %struct.stream_template_s*, %struct.stream_template_s** %templat27, align 8, !tbaa !55
  %release = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %40, i32 0, i32 5
  %41 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release, align 8, !tbaa !59
  %tobool28 = icmp ne void (%struct.stream_state_s*)* %41, null
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %42 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  %templat30 = getelementptr inbounds %struct.stream_state_s, %struct.stream_state_s* %42, i32 0, i32 0
  %43 = load %struct.stream_template_s*, %struct.stream_template_s** %templat30, align 8, !tbaa !55
  %release31 = getelementptr inbounds %struct.stream_template_s, %struct.stream_template_s* %43, i32 0, i32 5
  %44 = load void (%struct.stream_state_s*)*, void (%struct.stream_state_s*)** %release31, align 8, !tbaa !59
  %45 = load %struct.stream_state_s*, %struct.stream_state_s** %st.addr, align 8, !tbaa !5
  call void %44(%struct.stream_state_s* %45) #5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %46 = load i32, i32* %status, align 4, !tbaa !1
  %47 = bitcast %struct.stream_cursor_read_s* %r to i8*
  call void @llvm.lifetime.end(i64 24, i8* %47) #1
  %48 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  ret i32 %46
}

declare i32 @bytes_rectangle_is_const(i8*, i32, i32, i32) #2

declare void @bytes_copy_rectangle(i8*, i32, i8*, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @cmd_put_color_map(%struct.gx_device_clist_writer_s* %cldev, i32 %map_index, i32 %comp_num, %struct.gx_transfer_map_s* %map, i64* %pid) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %map_index.addr = alloca i32, align 4
  %comp_num.addr = alloca i32, align 4
  %map.addr = alloca %struct.gx_transfer_map_s*, align 8
  %pid.addr = alloca i64*, align 8
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store i32 %map_index, i32* %map_index.addr, align 4, !tbaa !43
  store i32 %comp_num, i32* %comp_num.addr, align 4, !tbaa !1
  store %struct.gx_transfer_map_s* %map, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !5
  store i64* %pid, i64** %pid.addr, align 8, !tbaa !5
  %0 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !5
  %cmp = icmp eq %struct.gx_transfer_map_s* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  %tobool = icmp ne i64* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  %5 = load i64, i64* %4, align 8, !tbaa !60
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 59
  %8 = load i32, i32* %nbands, align 4, !tbaa !44
  %sub = sub nsw i32 %8, 1
  %call = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %6, i32 0, i32 %sub, i32 3) #5
  store i8* %call, i8** %dp, align 8, !tbaa !5
  %cmp3 = icmp eq i8* %call, null
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 65
  %10 = load i32, i32* %error_code, align 4, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %11 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 6, i8* %11, align 1, !tbaa !43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !1
  %12 = load i32, i32* %code, align 4, !tbaa !1
  %cmp4 = icmp slt i32 %12, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  %13 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %cond.end
  %14 = load i32, i32* %map_index.addr, align 4, !tbaa !43
  %add = add i32 128, %14
  %conv = trunc i32 %add to i8
  %15 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 1
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !43
  %16 = load i32, i32* %comp_num.addr, align 4, !tbaa !1
  %conv7 = trunc i32 %16 to i8
  %17 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %conv7, i8* %arrayidx8, align 1, !tbaa !43
  %18 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  %tobool9 = icmp ne i64* %18, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  %19 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  store i64 0, i64* %19, align 8, !tbaa !60
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.6
  br label %if.end.67

if.else:                                          ; preds = %entry
  %20 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  %tobool12 = icmp ne i64* %20, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %if.else
  %21 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %21, i32 0, i32 3
  %22 = load i64, i64* %id, align 8, !tbaa !61
  %23 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  %24 = load i64, i64* %23, align 8, !tbaa !60
  %cmp14 = icmp eq i64 %22, %24
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.13
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %land.lhs.true.13, %if.else
  %25 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !5
  %proc = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %25, i32 0, i32 1
  %proc18 = bitcast {}** %proc to float (double, %struct.gx_transfer_map_s*)**
  %26 = load float (double, %struct.gx_transfer_map_s*)*, float (double, %struct.gx_transfer_map_s*)** %proc18, align 8, !tbaa !64
  %cmp19 = icmp eq float (double, %struct.gx_transfer_map_s*)* %26, @gs_identity_transfer
  br i1 %cmp19, label %if.then.21, label %if.else.41

if.then.21:                                       ; preds = %if.end.17
  %27 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %28 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands22 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %28, i32 0, i32 59
  %29 = load i32, i32* %nbands22, align 4, !tbaa !44
  %sub23 = sub nsw i32 %29, 1
  %call24 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %27, i32 0, i32 %sub23, i32 3) #5
  store i8* %call24, i8** %dp, align 8, !tbaa !5
  %cmp25 = icmp eq i8* %call24, null
  br i1 %cmp25, label %cond.true.27, label %cond.false.29

cond.true.27:                                     ; preds = %if.then.21
  %30 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %30, i32 0, i32 65
  %31 = load i32, i32* %error_code28, align 4, !tbaa !42
  br label %cond.end.30

cond.false.29:                                    ; preds = %if.then.21
  %32 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 6, i8* %32, align 1, !tbaa !43
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.27
  %cond31 = phi i32 [ %31, %cond.true.27 ], [ 0, %cond.false.29 ]
  store i32 %cond31, i32* %code, align 4, !tbaa !1
  %33 = load i32, i32* %code, align 4, !tbaa !1
  %cmp32 = icmp slt i32 %33, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %cond.end.30
  %34 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %cond.end.30
  %35 = load i32, i32* %map_index.addr, align 4, !tbaa !43
  %add36 = add i32 144, %35
  %conv37 = trunc i32 %add36 to i8
  %36 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %conv37, i8* %arrayidx38, align 1, !tbaa !43
  %37 = load i32, i32* %comp_num.addr, align 4, !tbaa !1
  %conv39 = trunc i32 %37 to i8
  %38 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds i8, i8* %38, i64 2
  store i8 %conv39, i8* %arrayidx40, align 1, !tbaa !43
  br label %if.end.62

if.else.41:                                       ; preds = %if.end.17
  %39 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %40 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %40, i32 0, i32 59
  %41 = load i32, i32* %nbands42, align 4, !tbaa !44
  %sub43 = sub nsw i32 %41, 1
  %call44 = call i8* @cmd_put_range_op(%struct.gx_device_clist_writer_s* %39, i32 0, i32 %sub43, i32 515) #5
  store i8* %call44, i8** %dp, align 8, !tbaa !5
  %cmp45 = icmp eq i8* %call44, null
  br i1 %cmp45, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %if.else.41
  %42 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %42, i32 0, i32 65
  %43 = load i32, i32* %error_code48, align 4, !tbaa !42
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.else.41
  %44 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 6, i8* %44, align 1, !tbaa !43
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.47
  %cond51 = phi i32 [ %43, %cond.true.47 ], [ 0, %cond.false.49 ]
  store i32 %cond51, i32* %code, align 4, !tbaa !1
  %45 = load i32, i32* %code, align 4, !tbaa !1
  %cmp52 = icmp slt i32 %45, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %cond.end.50
  %46 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.55:                                        ; preds = %cond.end.50
  %47 = load i32, i32* %map_index.addr, align 4, !tbaa !43
  %add56 = add i32 160, %47
  %conv57 = trunc i32 %add56 to i8
  %48 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds i8, i8* %48, i64 1
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !43
  %49 = load i32, i32* %comp_num.addr, align 4, !tbaa !1
  %conv59 = trunc i32 %49 to i8
  %50 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !43
  %51 = load i8*, i8** %dp, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %51, i64 3
  %52 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !5
  %values = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %52, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i16], [256 x i16]* %values, i32 0, i32 0
  %53 = bitcast i16* %arraydecay to i8*
  %call61 = call i8* @memcpy(i8* %add.ptr, i8* %53, i64 512) #6
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.55, %if.end.35
  %54 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  %tobool63 = icmp ne i64* %54, null
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.62
  %55 = load %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s** %map.addr, align 8, !tbaa !5
  %id65 = getelementptr inbounds %struct.gx_transfer_map_s, %struct.gx_transfer_map_s* %55, i32 0, i32 3
  %56 = load i64, i64* %id65, align 8, !tbaa !61
  %57 = load i64*, i64** %pid.addr, align 8, !tbaa !5
  store i64 %56, i64* %57, align 8, !tbaa !60
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.62
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.54, %if.then.34, %if.then.16, %if.then.5, %if.then.2
  %58 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare float @gs_identity_transfer(double, %struct.gx_transfer_map_s*) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @clist_change_tile(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.gx_strip_bitmap_s* %tiles, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %depth.addr = alloca i32, align 4
  %loc = alloca %struct.tile_loc_s, align 8
  %code = alloca i32, align 4
  %band_index = alloca i32, align 4
  %bptr = alloca i8*, align 8
  %bmask = alloca i8, align 1
  %for_pattern = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %extra = alloca i32, align 4
  %band = alloca i32, align 4
  %offset = alloca i64, align 8
  %rsize = alloca i32, align 4
  %dp = alloca i8*, align 8
  %csize = alloca i32, align 4
  %code67 = alloca i32, align 4
  %pdepth = alloca i32, align 4
  %new_tile = alloca %struct.gx_strip_bitmap_s, align 8
  %ptile = alloca %struct.gx_strip_bitmap_s*, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !1
  %0 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %top

top:                                              ; preds = %cleanup.cont.188, %entry
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %3 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %3, i32 0, i32 3
  %4 = load i64, i64* %id, align 8, !tbaa !65
  %call = call i32 @clist_find_bits(%struct.gx_device_clist_writer_s* %2, i64 %4, %struct.tile_loc_s* %loc) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.141

if.then:                                          ; preds = %top
  %5 = bitcast i32* %band_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 66
  %8 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !66
  %sub.ptr.lhs.cast = ptrtoint %struct.gx_clist_state_s* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gx_clist_state_s* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1808
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %band_index, align 4, !tbaa !1
  %9 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %tile = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %10 = load %struct.tile_slot*, %struct.tile_slot** %tile, align 8, !tbaa !67
  %add.ptr = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %10, i64 1
  %11 = bitcast %struct.tile_slot* %add.ptr to i8*
  %12 = load i32, i32* %band_index, align 4, !tbaa !1
  %shr = ashr i32 %12, 3
  %idx.ext = sext i32 %shr to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr1, i8** %bptr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %bmask) #1
  %13 = load i32, i32* %band_index, align 4, !tbaa !1
  %and = and i32 %13, 7
  %shl = shl i32 1, %and
  %conv2 = trunc i32 %shl to i8
  store i8 %conv2, i8* %bmask, align 1, !tbaa !43
  %14 = bitcast i32* %for_pattern to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %16 = bitcast %struct.gx_device_clist_writer_s* %15 to %struct.gx_device_s*
  %call3 = call i32 @gx_device_is_pattern_clist(%struct.gx_device_s* %16) #5
  store i32 %call3, i32* %for_pattern, align 4, !tbaa !1
  %17 = load i8*, i8** %bptr, align 8, !tbaa !5
  %18 = load i8, i8* %17, align 1, !tbaa !43
  %conv4 = zext i8 %18 to i32
  %19 = load i8, i8* %bmask, align 1, !tbaa !43
  %conv5 = zext i8 %19 to i32
  %and6 = and i32 %conv4, %conv5
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %20 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %20, i32 0, i32 2
  %21 = load i32, i32* %tile_index, align 4, !tbaa !69
  %index = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %22 = load i32, i32* %index, align 4, !tbaa !75
  %cmp = icmp eq i32 %21, %22
  br i1 %cmp, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end:                                           ; preds = %if.then.8
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %24 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %index11 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %25 = load i32, i32* %index11, align 4, !tbaa !75
  %call12 = call i32 @cmd_put_tile_index(%struct.gx_device_clist_writer_s* %23, %struct.gx_clist_state_s* %24, i32 %25) #5
  store i32 %call12, i32* %code, align 4, !tbaa !1
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %26 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end.16:                                        ; preds = %if.end
  br label %if.end.132

if.else:                                          ; preds = %if.then
  %27 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  store i32 0, i32* %extra, align 4, !tbaa !1
  %28 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %28, i32 0, i32 4
  %29 = load i16, i16* %rep_width, align 2, !tbaa !76
  %conv17 = zext i16 %29 to i32
  %30 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %30, i32 0, i32 76
  %rep_width18 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params, i32 0, i32 4
  %31 = load i16, i16* %rep_width18, align 2, !tbaa !77
  %conv19 = zext i16 %31 to i32
  %cmp20 = icmp ne i32 %conv17, %conv19
  br i1 %cmp20, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %32 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %32, i32 0, i32 5
  %33 = load i16, i16* %rep_height, align 2, !tbaa !78
  %conv22 = zext i16 %33 to i32
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params23 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 76
  %rep_height24 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params23, i32 0, i32 5
  %35 = load i16, i16* %rep_height24, align 2, !tbaa !79
  %conv25 = zext i16 %35 to i32
  %cmp26 = icmp ne i32 %conv22, %conv25
  br i1 %cmp26, label %if.then.40, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %36 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %36, i32 0, i32 6
  %37 = load i16, i16* %rep_shift, align 2, !tbaa !80
  %conv29 = zext i16 %37 to i32
  %38 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params30 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %38, i32 0, i32 76
  %rep_shift31 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params30, i32 0, i32 6
  %39 = load i16, i16* %rep_shift31, align 2, !tbaa !81
  %conv32 = zext i16 %39 to i32
  %cmp33 = icmp ne i32 %conv29, %conv32
  br i1 %cmp33, label %if.then.40, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.28
  %40 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %41 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_depth = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %41, i32 0, i32 77
  %42 = load i32, i32* %tile_depth, align 4, !tbaa !82
  %cmp36 = icmp ne i32 %40, %42
  br i1 %cmp36, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.35
  %43 = load i32, i32* %for_pattern, align 4, !tbaa !1
  %tobool39 = icmp ne i32 %43, 0
  br i1 %tobool39, label %if.then.40, label %if.end.49

if.then.40:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.35, %lor.lhs.false.28, %lor.lhs.false, %if.else
  %44 = bitcast i32* %band to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params41 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %45, i32 0, i32 76
  %46 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %47 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %48 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  call void @clist_new_tile_params(%struct.gx_strip_bitmap_s* %tile_params41, %struct.gx_strip_bitmap_s* %46, i32 %47, %struct.gx_device_clist_writer_s* %48) #5
  %49 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %50 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_depth42 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %50, i32 0, i32 77
  store i32 %49, i32* %tile_depth42, align 4, !tbaa !82
  %51 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_min = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %51, i32 0, i32 78
  %52 = load i32, i32* %tile_known_min, align 4, !tbaa !83
  store i32 %52, i32* %band, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.40
  %53 = load i32, i32* %band, align 4, !tbaa !1
  %54 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_max = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %54, i32 0, i32 79
  %55 = load i32, i32* %tile_known_max, align 4, !tbaa !84
  %cmp43 = icmp sle i32 %53, %55
  br i1 %cmp43, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %56 = load i32, i32* %band, align 4, !tbaa !1
  %idxprom = sext i32 %56 to i64
  %57 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %states45 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %57, i32 0, i32 66
  %58 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states45, align 8, !tbaa !66
  %arrayidx = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %58, i64 %idxprom
  %known = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %arrayidx, i32 0, i32 14
  %59 = load i32, i32* %known, align 4, !tbaa !85
  %and46 = and i32 %59, -32769
  store i32 %and46, i32* %known, align 4, !tbaa !85
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %band, align 4, !tbaa !1
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %band, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %61, i32 0, i32 59
  %62 = load i32, i32* %nbands, align 4, !tbaa !44
  %63 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_min47 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %63, i32 0, i32 78
  store i32 %62, i32* %tile_known_min47, align 4, !tbaa !83
  %64 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_max48 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %64, i32 0, i32 79
  store i32 -1, i32* %tile_known_max48, align 4, !tbaa !84
  %65 = bitcast i32* %band to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %lor.lhs.false.38
  %66 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %known50 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %66, i32 0, i32 14
  %67 = load i32, i32* %known50, align 4, !tbaa !85
  %and51 = and i32 %67, 32768
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.end.56, label %if.then.53

if.then.53:                                       ; preds = %if.end.49
  %68 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params54 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %68, i32 0, i32 76
  %69 = load i32, i32* %for_pattern, align 4, !tbaa !1
  %call55 = call i32 @cmd_size_tile_params(%struct.gx_strip_bitmap_s* %tile_params54, i32 %69) #5
  store i32 %call55, i32* %extra, align 4, !tbaa !1
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.49
  %70 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %tile57 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %71 = load %struct.tile_slot*, %struct.tile_slot** %tile57, align 8, !tbaa !67
  %72 = bitcast %struct.tile_slot* %71 to i8*
  %73 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %73, i32 0, i32 51
  %data = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk, i32 0, i32 1
  %74 = load i8*, i8** %data, align 8, !tbaa !86
  %sub.ptr.lhs.cast58 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %74 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  store i64 %sub.ptr.sub60, i64* %offset, align 8, !tbaa !60
  %75 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %75) #1
  %76 = load i32, i32* %extra, align 4, !tbaa !1
  %add = add i32 %76, 1
  %index61 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %77 = load i32, i32* %index61, align 4, !tbaa !75
  %call62 = call i32 @cmd_size_w(i32 %77) #5
  %add63 = add i32 %add, %call62
  %78 = load i64, i64* %offset, align 8, !tbaa !60
  %conv64 = trunc i64 %78 to i32
  %call65 = call i32 @cmd_size_w(i32 %conv64) #5
  %add66 = add i32 %add63, %call65
  store i32 %add66, i32* %rsize, align 4, !tbaa !1
  %79 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %79) #1
  %80 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %82) #1
  %83 = load i32, i32* %depth.addr, align 4, !tbaa !1
  store i32 %83, i32* %pdepth, align 4, !tbaa !1
  %84 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %84, i32 0, i32 8
  %85 = load i32, i32* %num_planes, align 4, !tbaa !87
  %cmp68 = icmp ne i32 %85, 1
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.56
  %86 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes71 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %86, i32 0, i32 8
  %87 = load i32, i32* %num_planes71, align 4, !tbaa !87
  %88 = load i32, i32* %pdepth, align 4, !tbaa !1
  %div = sdiv i32 %88, %87
  store i32 %div, i32* %pdepth, align 4, !tbaa !1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.56
  %89 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %90 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile73 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %91 = load %struct.tile_slot*, %struct.tile_slot** %tile73, align 8, !tbaa !67
  %add.ptr74 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %91, i64 1
  %92 = bitcast %struct.tile_slot* %add.ptr74 to i8*
  %93 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %93, i32 0, i32 54
  %94 = load i32, i32* %tile_band_mask_size, align 4, !tbaa !88
  %idx.ext75 = zext i32 %94 to i64
  %add.ptr76 = getelementptr inbounds i8, i8* %92, i64 %idx.ext75
  %95 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width77 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %95, i32 0, i32 4
  %96 = load i16, i16* %rep_width77, align 2, !tbaa !76
  %conv78 = zext i16 %96 to i32
  %97 = load i32, i32* %pdepth, align 4, !tbaa !1
  %mul = mul nsw i32 %conv78, %97
  %98 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_height79 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %98, i32 0, i32 5
  %99 = load i16, i16* %rep_height79, align 2, !tbaa !78
  %conv80 = zext i16 %99 to i32
  %100 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes81 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %100, i32 0, i32 8
  %101 = load i32, i32* %num_planes81, align 4, !tbaa !87
  %mul82 = mul nsw i32 %conv80, %101
  %tile83 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %102 = load %struct.tile_slot*, %struct.tile_slot** %tile83, align 8, !tbaa !67
  %raster = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %102, i32 0, i32 4
  %103 = load i16, i16* %raster, align 2, !tbaa !89
  %conv84 = zext i16 %103 to i32
  %104 = load i32, i32* %rsize, align 4, !tbaa !1
  %105 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params85 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %105, i32 0, i32 76
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params85, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %106 = load i32, i32* %x, align 4, !tbaa !92
  %107 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width86 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %107, i32 0, i32 4
  %108 = load i16, i16* %rep_width86, align 2, !tbaa !76
  %conv87 = zext i16 %108 to i32
  %cmp88 = icmp sgt i32 %106, %conv87
  %cond = select i1 %cmp88, i32 768, i32 256
  %call90 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %89, %struct.gx_clist_state_s* %90, i8* %add.ptr76, i32 %mul, i32 %mul82, i32 %conv84, i32 %104, i32 %cond, i8** %dp, i32* %csize) #5
  store i32 %call90, i32* %code67, align 4, !tbaa !1
  %109 = load i32, i32* %code67, align 4, !tbaa !1
  %cmp91 = icmp slt i32 %109, 0
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.72
  %110 = load i32, i32* %code67, align 4, !tbaa !1
  store i32 %110, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.94:                                        ; preds = %if.end.72
  %111 = load i32, i32* %extra, align 4, !tbaa !1
  %tobool95 = icmp ne i32 %111, 0
  br i1 %tobool95, label %if.then.96, label %if.end.113

if.then.96:                                       ; preds = %if.end.94
  %112 = load i8*, i8** %dp, align 8, !tbaa !5
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params97 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %113, i32 0, i32 76
  %114 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %115 = load i32, i32* %extra, align 4, !tbaa !1
  %116 = load i32, i32* %for_pattern, align 4, !tbaa !1
  %117 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %117, i32 0, i32 3
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  call void @cmd_store_tile_params(i8* %112, %struct.gx_strip_bitmap_s* %tile_params97, i32 %114, i32 %115, i32 %116, %struct.gs_memory_s* %118) #5
  %119 = load i32, i32* %extra, align 4, !tbaa !1
  %120 = load i8*, i8** %dp, align 8, !tbaa !5
  %idx.ext98 = zext i32 %119 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %120, i64 %idx.ext98
  store i8* %add.ptr99, i8** %dp, align 8, !tbaa !5
  %121 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %known100 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %121, i32 0, i32 14
  %122 = load i32, i32* %known100, align 4, !tbaa !85
  %or = or i32 %122, 32768
  store i32 %or, i32* %known100, align 4, !tbaa !85
  %123 = load i32, i32* %band_index, align 4, !tbaa !1
  %124 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_min101 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %124, i32 0, i32 78
  %125 = load i32, i32* %tile_known_min101, align 4, !tbaa !83
  %cmp102 = icmp slt i32 %123, %125
  br i1 %cmp102, label %if.then.104, label %if.end.106

if.then.104:                                      ; preds = %if.then.96
  %126 = load i32, i32* %band_index, align 4, !tbaa !1
  %127 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_min105 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %127, i32 0, i32 78
  store i32 %126, i32* %tile_known_min105, align 4, !tbaa !83
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.104, %if.then.96
  %128 = load i32, i32* %band_index, align 4, !tbaa !1
  %129 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_max107 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %129, i32 0, i32 79
  %130 = load i32, i32* %tile_known_max107, align 4, !tbaa !84
  %cmp108 = icmp sgt i32 %128, %130
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.end.106
  %131 = load i32, i32* %band_index, align 4, !tbaa !1
  %132 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_known_max111 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %132, i32 0, i32 79
  store i32 %131, i32* %tile_known_max111, align 4, !tbaa !84
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.106
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.94
  %133 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 3, i8* %133, align 1, !tbaa !43
  %134 = load i8*, i8** %dp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr, i8** %dp, align 8, !tbaa !5
  %index114 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %135 = load i32, i32* %index114, align 4, !tbaa !75
  %136 = load i8*, i8** %dp, align 8, !tbaa !5
  %call115 = call i8* @cmd_put_w(i32 %135, i8* %136) #5
  store i8* %call115, i8** %dp, align 8, !tbaa !5
  %137 = load i64, i64* %offset, align 8, !tbaa !60
  %conv116 = trunc i64 %137 to i32
  %138 = load i8*, i8** %dp, align 8, !tbaa !5
  %call117 = call i8* @cmd_put_w(i32 %conv116, i8* %138) #5
  %139 = load i8, i8* %bmask, align 1, !tbaa !43
  %conv118 = zext i8 %139 to i32
  %140 = load i8*, i8** %bptr, align 8, !tbaa !5
  %141 = load i8, i8* %140, align 1, !tbaa !43
  %conv119 = zext i8 %141 to i32
  %or120 = or i32 %conv119, %conv118
  %conv121 = trunc i32 %or120 to i8
  store i8 %conv121, i8* %140, align 1, !tbaa !43
  %tile122 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %142 = load %struct.tile_slot*, %struct.tile_slot** %tile122, align 8, !tbaa !67
  %num_bands = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %142, i32 0, i32 10
  %143 = load i16, i16* %num_bands, align 2, !tbaa !93
  %inc123 = add i16 %143, 1
  store i16 %inc123, i16* %num_bands, align 2, !tbaa !93
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.113, %if.then.93
  %144 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %code67 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.129

cleanup.129:                                      ; preds = %cleanup.cont, %cleanup
  %150 = bitcast i32* %extra to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %cleanup.dest.130 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.130, label %cleanup.137 [
    i32 0, label %cleanup.cont.131
  ]

cleanup.cont.131:                                 ; preds = %cleanup.129
  br label %if.end.132

if.end.132:                                       ; preds = %cleanup.cont.131, %if.end.16
  %index133 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %151 = load i32, i32* %index133, align 4, !tbaa !75
  %152 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_index134 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %152, i32 0, i32 2
  store i32 %151, i32* %tile_index134, align 4, !tbaa !69
  %tile135 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %153 = load %struct.tile_slot*, %struct.tile_slot** %tile135, align 8, !tbaa !67
  %id136 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %153, i32 0, i32 5
  %154 = load i64, i64* %id136, align 8, !tbaa !94
  %155 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_id = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %155, i32 0, i32 3
  store i64 %154, i64* %tile_id, align 8, !tbaa !95
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %if.end.132, %cleanup.129, %if.then.15, %if.then.10
  %156 = bitcast i32* %for_pattern to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  call void @llvm.lifetime.end(i64 1, i8* %bmask) #1
  %157 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  %158 = bitcast i32* %band_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  br label %cleanup.189

if.end.141:                                       ; preds = %top
  %159 = bitcast %struct.gx_strip_bitmap_s* %new_tile to i8*
  call void @llvm.lifetime.start(i64 48, i8* %159) #1
  %160 = bitcast %struct.gx_strip_bitmap_s** %ptile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %160) #1
  %161 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width142 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %161, i32 0, i32 4
  %162 = load i16, i16* %rep_width142, align 2, !tbaa !76
  %conv143 = zext i16 %162 to i32
  %163 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params144 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %163, i32 0, i32 76
  %rep_width145 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params144, i32 0, i32 4
  %164 = load i16, i16* %rep_width145, align 2, !tbaa !77
  %conv146 = zext i16 %164 to i32
  %cmp147 = icmp ne i32 %conv143, %conv146
  br i1 %cmp147, label %if.then.169, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %if.end.141
  %165 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_height150 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %165, i32 0, i32 5
  %166 = load i16, i16* %rep_height150, align 2, !tbaa !78
  %conv151 = zext i16 %166 to i32
  %167 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params152 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %167, i32 0, i32 76
  %rep_height153 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params152, i32 0, i32 5
  %168 = load i16, i16* %rep_height153, align 2, !tbaa !79
  %conv154 = zext i16 %168 to i32
  %cmp155 = icmp ne i32 %conv151, %conv154
  br i1 %cmp155, label %if.then.169, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %lor.lhs.false.149
  %169 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_shift158 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %169, i32 0, i32 6
  %170 = load i16, i16* %rep_shift158, align 2, !tbaa !80
  %conv159 = zext i16 %170 to i32
  %171 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params160 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %171, i32 0, i32 76
  %rep_shift161 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params160, i32 0, i32 6
  %172 = load i16, i16* %rep_shift161, align 2, !tbaa !81
  %conv162 = zext i16 %172 to i32
  %cmp163 = icmp ne i32 %conv159, %conv162
  br i1 %cmp163, label %if.then.169, label %lor.lhs.false.165

lor.lhs.false.165:                                ; preds = %lor.lhs.false.157
  %173 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %174 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_depth166 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %174, i32 0, i32 77
  %175 = load i32, i32* %tile_depth166, align 4, !tbaa !82
  %cmp167 = icmp ne i32 %173, %175
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %lor.lhs.false.165, %lor.lhs.false.157, %lor.lhs.false.149, %if.end.141
  %176 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %177 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %178 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  call void @clist_new_tile_params(%struct.gx_strip_bitmap_s* %new_tile, %struct.gx_strip_bitmap_s* %176, i32 %177, %struct.gx_device_clist_writer_s* %178) #5
  store %struct.gx_strip_bitmap_s* %new_tile, %struct.gx_strip_bitmap_s** %ptile, align 8, !tbaa !5
  br label %if.end.178

if.else.170:                                      ; preds = %lor.lhs.false.165
  %179 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %id171 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %179, i32 0, i32 3
  %180 = load i64, i64* %id171, align 8, !tbaa !65
  %181 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params172 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %181, i32 0, i32 76
  %id173 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params172, i32 0, i32 3
  store i64 %180, i64* %id173, align 8, !tbaa !96
  %182 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %data174 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %182, i32 0, i32 0
  %183 = load i8*, i8** %data174, align 8, !tbaa !97
  %184 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params175 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %184, i32 0, i32 76
  %data176 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %tile_params175, i32 0, i32 0
  store i8* %183, i8** %data176, align 8, !tbaa !98
  %185 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_params177 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %185, i32 0, i32 76
  store %struct.gx_strip_bitmap_s* %tile_params177, %struct.gx_strip_bitmap_s** %ptile, align 8, !tbaa !5
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.170, %if.then.169
  %186 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %187 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %ptile, align 8, !tbaa !5
  %188 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %raster179 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %188, i32 0, i32 1
  %189 = load i32, i32* %raster179, align 4, !tbaa !99
  %190 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %call180 = call i32 @clist_add_tile(%struct.gx_device_clist_writer_s* %186, %struct.gx_strip_bitmap_s* %187, i32 %189, i32 %190) #5
  store i32 %call180, i32* %code, align 4, !tbaa !1
  %191 = load i32, i32* %code, align 4, !tbaa !1
  %cmp181 = icmp slt i32 %191, 0
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.178
  %192 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %192, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.185

if.end.184:                                       ; preds = %if.end.178
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.185

cleanup.185:                                      ; preds = %if.end.184, %if.then.183
  %193 = bitcast %struct.gx_strip_bitmap_s** %ptile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast %struct.gx_strip_bitmap_s* %new_tile to i8*
  call void @llvm.lifetime.end(i64 48, i8* %194) #1
  %cleanup.dest.187 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.187, label %cleanup.189 [
    i32 0, label %cleanup.cont.188
  ]

cleanup.cont.188:                                 ; preds = %cleanup.185
  br label %top

cleanup.189:                                      ; preds = %cleanup.185, %cleanup.137
  %195 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %196) #1
  %197 = load i32, i32* %retval
  ret i32 %197
}

; Function Attrs: nounwind uwtable
define internal i32 @clist_find_bits(%struct.gx_device_clist_writer_s* %cldev, i64 %id, %struct.tile_loc_s* %ploc) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %id.addr = alloca i64, align 8
  %ploc.addr = alloca %struct.tile_loc_s*, align 8
  %index = alloca i32, align 4
  %table = alloca %struct.tile_hash*, align 8
  %mask = alloca i32, align 4
  %offset = alloca i64, align 8
  %tile = alloca %struct.tile_slot*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store i64 %id, i64* %id.addr, align 8, !tbaa !60
  store %struct.tile_loc_s* %ploc, %struct.tile_loc_s** %ploc.addr, align 8, !tbaa !5
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %id.addr, align 8, !tbaa !60
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !1
  %2 = bitcast %struct.tile_hash** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %3, i32 0, i32 55
  %4 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !100
  store %struct.tile_hash* %4, %struct.tile_hash** %table, align 8, !tbaa !5
  %5 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_hash_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %6, i32 0, i32 53
  %7 = load i32, i32* %tile_hash_mask, align 4, !tbaa !101
  store i32 %7, i32* %mask, align 4, !tbaa !1
  %8 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %mask, align 4, !tbaa !1
  %10 = load i32, i32* %index, align 4, !tbaa !1
  %and = and i32 %10, %9
  store i32 %and, i32* %index, align 4, !tbaa !1
  %idxprom = zext i32 %and to i64
  %11 = load %struct.tile_hash*, %struct.tile_hash** %table, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %11, i64 %idxprom
  %offset1 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx, i32 0, i32 0
  %12 = load i64, i64* %offset1, align 8, !tbaa !102
  store i64 %12, i64* %offset, align 8, !tbaa !60
  %cmp = icmp ne i64 %12, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = bitcast %struct.tile_slot** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 46
  %15 = load i8*, i8** %data, align 8, !tbaa !104
  %16 = load i64, i64* %offset, align 8, !tbaa !60
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %16
  %17 = bitcast i8* %add.ptr to %struct.tile_slot*
  store %struct.tile_slot* %17, %struct.tile_slot** %tile, align 8, !tbaa !5
  %18 = load %struct.tile_slot*, %struct.tile_slot** %tile, align 8, !tbaa !5
  %id3 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %18, i32 0, i32 5
  %19 = load i64, i64* %id3, align 8, !tbaa !94
  %20 = load i64, i64* %id.addr, align 8, !tbaa !60
  %cmp4 = icmp eq i64 %19, %20
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %21 = load i32, i32* %index, align 4, !tbaa !1
  %22 = load %struct.tile_loc_s*, %struct.tile_loc_s** %ploc.addr, align 8, !tbaa !5
  %index6 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %22, i32 0, i32 0
  store i32 %21, i32* %index6, align 4, !tbaa !75
  %23 = load %struct.tile_slot*, %struct.tile_slot** %tile, align 8, !tbaa !5
  %24 = load %struct.tile_loc_s*, %struct.tile_loc_s** %ploc.addr, align 8, !tbaa !5
  %tile7 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %24, i32 0, i32 1
  store %struct.tile_slot* %23, %struct.tile_slot** %tile7, align 8, !tbaa !67
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.tile_slot** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.9 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %26 = load i32, i32* %index, align 4, !tbaa !1
  %add = add i32 %26, 413
  store i32 %add, i32* %index, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %index, align 4, !tbaa !1
  %28 = load %struct.tile_loc_s*, %struct.tile_loc_s** %ploc.addr, align 8, !tbaa !5
  %index8 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %28, i32 0, i32 0
  store i32 %27, i32* %index8, align 4, !tbaa !75
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.9

cleanup.9:                                        ; preds = %for.end, %cleanup
  %29 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #1
  %30 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.tile_hash** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %32 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @gx_device_is_pattern_clist(%struct.gx_device_s*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cmd_put_tile_index(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, i32 %indx) #4 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %indx.addr = alloca i32, align 4
  %idelta = alloca i32, align 4
  %dp = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  store i32 %indx, i32* %indx.addr, align 4, !tbaa !1
  %0 = bitcast i32* %idelta to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %indx.addr, align 4, !tbaa !1
  %2 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %2, i32 0, i32 2
  %3 = load i32, i32* %tile_index, align 4, !tbaa !69
  %sub = sub i32 %1, %3
  %add = add i32 %sub, 8
  store i32 %add, i32* %idelta, align 4, !tbaa !1
  %4 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %idelta, align 4, !tbaa !1
  %and = and i32 %6, -16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %8 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %8, i32 0, i32 15
  %call = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %7, %struct.cmd_list_s* %list, i32 1) #5
  store i8* %call, i8** %dp, align 8, !tbaa !5
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %9 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %9, i32 0, i32 65
  %10 = load i32, i32* %error_code, align 4, !tbaa !42
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load i32, i32* %idelta, align 4, !tbaa !1
  %add1 = add nsw i32 176, %11
  %conv = trunc i32 %add1 to i8
  %12 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 %conv, i8* %12, align 1, !tbaa !43
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %code, align 4, !tbaa !1
  %13 = load i32, i32* %code, align 4, !tbaa !1
  %cmp2 = icmp slt i32 %13, 0
  br i1 %cmp2, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %cond.end
  %14 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  br label %if.end.22

if.else:                                          ; preds = %entry
  %15 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %16 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %list5 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %16, i32 0, i32 15
  %call6 = call i8* @cmd_put_list_op(%struct.gx_device_clist_writer_s* %15, %struct.cmd_list_s* %list5, i32 2) #5
  store i8* %call6, i8** %dp, align 8, !tbaa !5
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %cond.true.9, label %cond.false.11

cond.true.9:                                      ; preds = %if.else
  %17 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %error_code10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %17, i32 0, i32 65
  %18 = load i32, i32* %error_code10, align 4, !tbaa !42
  br label %cond.end.14

cond.false.11:                                    ; preds = %if.else
  %19 = load i32, i32* %indx.addr, align 4, !tbaa !1
  %shr = lshr i32 %19, 8
  %add12 = add i32 192, %shr
  %conv13 = trunc i32 %add12 to i8
  %20 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 %conv13, i8* %20, align 1, !tbaa !43
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.11, %cond.true.9
  %cond15 = phi i32 [ %18, %cond.true.9 ], [ 0, %cond.false.11 ]
  store i32 %cond15, i32* %code, align 4, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !1
  %cmp16 = icmp slt i32 %21, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %cond.end.14
  %22 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %cond.end.14
  %23 = load i32, i32* %indx.addr, align 4, !tbaa !1
  %and20 = and i32 %23, 255
  %conv21 = trunc i32 %and20 to i8
  %24 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 1
  store i8 %conv21, i8* %arrayidx, align 1, !tbaa !43
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.22
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.18, %if.then.4
  %25 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast i32* %idelta to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @clist_new_tile_params(%struct.gx_strip_bitmap_s* %new_tile, %struct.gx_strip_bitmap_s* %tiles, i32 %depth, %struct.gx_device_clist_writer_s* %cldev) #0 {
entry:
  %new_tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %depth.addr = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %rep_width = alloca i32, align 4
  %rep_height = alloca i32, align 4
  %rep_width_bits = alloca i32, align 4
  %tile_overhead = alloca i32, align 4
  %max_bytes = alloca i32, align 4
  %max_bits_x = alloca i32, align 4
  %reps_x = alloca i32, align 4
  %reps_y = alloca i32, align 4
  store %struct.gx_strip_bitmap_s* %new_tile, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !1
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %0 = bitcast i32* %rep_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width1 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %1, i32 0, i32 4
  %2 = load i16, i16* %rep_width1, align 2, !tbaa !76
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %rep_width, align 4, !tbaa !1
  %3 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_height2 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %4, i32 0, i32 5
  %5 = load i16, i16* %rep_height2, align 2, !tbaa !78
  %conv3 = zext i16 %5 to i32
  store i32 %conv3, i32* %rep_height, align 4, !tbaa !1
  %6 = bitcast i32* %rep_width_bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %tile_overhead to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %8, i32 0, i32 54
  %9 = load i32, i32* %tile_band_mask_size, align 4, !tbaa !88
  %conv4 = zext i32 %9 to i64
  %add = add i64 40, %conv4
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %tile_overhead, align 4, !tbaa !1
  %10 = bitcast i32* %max_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %11, i32 0, i32 8
  %12 = load i32, i32* %num_planes, align 4, !tbaa !87
  %cmp = icmp ne i32 %12, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %13, i32 0, i32 8
  %14 = load i32, i32* %num_planes7, align 4, !tbaa !87
  %15 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %div = sdiv i32 %15, %14
  store i32 %div, i32* %depth.addr, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %rep_width, align 4, !tbaa !1
  %17 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %mul = mul i32 %16, %17
  store i32 %mul, i32* %rep_width_bits, align 4, !tbaa !1
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 51
  %size = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk, i32 0, i32 2
  %19 = load i32, i32* %size, align 4, !tbaa !105
  %20 = load i32, i32* %rep_width_bits, align 4, !tbaa !1
  %21 = load i32, i32* %rep_height, align 4, !tbaa !1
  %mul8 = mul i32 %20, %21
  %div9 = udiv i32 %19, %mul8
  store i32 %div9, i32* %max_bytes, align 4, !tbaa !1
  %22 = load i32, i32* %max_bytes, align 4, !tbaa !1
  %23 = load i32, i32* %tile_overhead, align 4, !tbaa !1
  %cmp10 = icmp ult i32 %22, %23
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %24 = load i32, i32* %max_bytes, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %25 = load i32, i32* %tile_overhead, align 4, !tbaa !1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ]
  %26 = load i32, i32* %max_bytes, align 4, !tbaa !1
  %sub = sub i32 %26, %cond
  store i32 %sub, i32* %max_bytes, align 4, !tbaa !1
  %27 = load i32, i32* %max_bytes, align 4, !tbaa !1
  %cmp12 = icmp ugt i32 %27, 256
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %cond.end
  store i32 256, i32* %max_bytes, align 4, !tbaa !1
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %cond.end
  %28 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  %29 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %30 = bitcast %struct.gx_strip_bitmap_s* %28 to i8*
  %31 = bitcast %struct.gx_strip_bitmap_s* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 48, i32 8, i1 false), !tbaa.struct !106
  %32 = bitcast i32* %max_bits_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %max_bytes, align 4, !tbaa !1
  %mul16 = mul i32 %33, 8
  %34 = load i32, i32* %rep_height, align 4, !tbaa !1
  %div17 = udiv i32 %mul16, %34
  store i32 %div17, i32* %max_bits_x, align 4, !tbaa !1
  %35 = bitcast i32* %reps_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = load i32, i32* %max_bits_x, align 4, !tbaa !1
  %cmp18 = icmp ult i32 %36, 256
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %if.end.15
  %37 = load i32, i32* %max_bits_x, align 4, !tbaa !1
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.end.15
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %37, %cond.true.20 ], [ 256, %cond.false.21 ]
  %38 = load i32, i32* %rep_width_bits, align 4, !tbaa !1
  %div24 = udiv i32 %cond23, %38
  store i32 %div24, i32* %reps_x, align 4, !tbaa !1
  %39 = bitcast i32* %reps_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.22
  %40 = load i32, i32* %reps_x, align 4, !tbaa !1
  %cmp25 = icmp ugt i32 %40, 255
  br i1 %cmp25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i32, i32* %reps_x, align 4, !tbaa !1
  %shr = lshr i32 %41, 1
  store i32 %shr, i32* %reps_x, align 4, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load i32, i32* %reps_x, align 4, !tbaa !1
  %cmp27 = icmp ugt i32 %42, 1
  br i1 %cmp27, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %while.end
  %43 = load i32, i32* %reps_x, align 4, !tbaa !1
  br label %cond.end.31

cond.false.30:                                    ; preds = %while.end
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i32 [ %43, %cond.true.29 ], [ 1, %cond.false.30 ]
  %44 = load i32, i32* %rep_width, align 4, !tbaa !1
  %mul33 = mul i32 %cond32, %44
  %45 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  %size34 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %45, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size34, i32 0, i32 0
  store i32 %mul33, i32* %x, align 4, !tbaa !108
  %46 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  %size35 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %46, i32 0, i32 2
  %x36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size35, i32 0, i32 0
  %47 = load i32, i32* %x36, align 4, !tbaa !108
  %48 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %mul37 = mul nsw i32 %47, %48
  %add38 = add nsw i32 %mul37, 63
  %shr39 = ashr i32 %add38, 6
  %shl = shl i32 %shr39, 3
  %49 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  %raster = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %49, i32 0, i32 1
  store i32 %shl, i32* %raster, align 4, !tbaa !99
  %50 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %50, i32 0, i32 7
  %51 = load i16, i16* %shift, align 2, !tbaa !109
  %conv40 = zext i16 %51 to i32
  %cmp41 = icmp ne i32 %conv40, 0
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.31
  %52 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes43 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %52, i32 0, i32 8
  %53 = load i32, i32* %num_planes43, align 4, !tbaa !87
  %cmp44 = icmp ne i32 %53, 1
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %lor.lhs.false, %cond.end.31
  store i32 1, i32* %reps_y, align 4, !tbaa !1
  br label %if.end.59

if.else:                                          ; preds = %lor.lhs.false
  %54 = load i32, i32* %max_bytes, align 4, !tbaa !1
  %55 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  %raster47 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %55, i32 0, i32 1
  %56 = load i32, i32* %raster47, align 4, !tbaa !99
  %57 = load i32, i32* %rep_height, align 4, !tbaa !1
  %mul48 = mul i32 %56, %57
  %div49 = udiv i32 %54, %mul48
  store i32 %div49, i32* %reps_y, align 4, !tbaa !1
  %58 = load i32, i32* %reps_y, align 4, !tbaa !1
  %cmp50 = icmp ugt i32 %58, 4
  br i1 %cmp50, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %if.else
  store i32 4, i32* %reps_y, align 4, !tbaa !1
  br label %if.end.58

if.else.53:                                       ; preds = %if.else
  %59 = load i32, i32* %reps_y, align 4, !tbaa !1
  %cmp54 = icmp ult i32 %59, 1
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.else.53
  store i32 1, i32* %reps_y, align 4, !tbaa !1
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.else.53
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.52
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  %60 = load i32, i32* %reps_y, align 4, !tbaa !1
  %61 = load i32, i32* %rep_height, align 4, !tbaa !1
  %mul60 = mul i32 %60, %61
  %62 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %new_tile.addr, align 8, !tbaa !5
  %size61 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %62, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size61, i32 0, i32 1
  store i32 %mul60, i32* %y, align 4, !tbaa !110
  %63 = bitcast i32* %reps_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %reps_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %max_bits_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %max_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %tile_overhead to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %rep_width_bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %rep_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast i32* %rep_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmd_size_tile_params(%struct.gx_strip_bitmap_s* %tile, i32 %for_pattern) #0 {
entry:
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %for_pattern.addr = alloca i32, align 4
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  store i32 %for_pattern, i32* %for_pattern.addr, align 4, !tbaa !1
  %0 = load i32, i32* %for_pattern.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %1, i32 0, i32 3
  %2 = load i64, i64* %id, align 8, !tbaa !65
  %conv = trunc i64 %2 to i32
  %call = call i32 @cmd_size_w(i32 %conv) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  %add = add nsw i32 2, %cond
  %3 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %3, i32 0, i32 4
  %4 = load i16, i16* %rep_width, align 2, !tbaa !76
  %conv1 = zext i16 %4 to i32
  %call2 = call i32 @cmd_size_w(i32 %conv1) #5
  %add3 = add nsw i32 %add, %call2
  %5 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %5, i32 0, i32 5
  %6 = load i16, i16* %rep_height, align 2, !tbaa !78
  %conv4 = zext i16 %6 to i32
  %call5 = call i32 @cmd_size_w(i32 %conv4) #5
  %add6 = add nsw i32 %add3, %call5
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_width7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %7, i32 0, i32 4
  %8 = load i16, i16* %rep_width7, align 2, !tbaa !76
  %conv8 = zext i16 %8 to i32
  %9 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %9, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %10 = load i32, i32* %x, align 4, !tbaa !108
  %cmp = icmp eq i32 %conv8, %10
  br i1 %cmp, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  br label %cond.end.17

cond.false.11:                                    ; preds = %cond.end
  %11 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size12 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %11, i32 0, i32 2
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size12, i32 0, i32 0
  %12 = load i32, i32* %x13, align 4, !tbaa !108
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_width14 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %13, i32 0, i32 4
  %14 = load i16, i16* %rep_width14, align 2, !tbaa !76
  %conv15 = zext i16 %14 to i32
  %div = sdiv i32 %12, %conv15
  %call16 = call i32 @cmd_size_w(i32 %div) #5
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.11, %cond.true.10
  %cond18 = phi i32 [ 0, %cond.true.10 ], [ %call16, %cond.false.11 ]
  %add19 = add nsw i32 %add6, %cond18
  %15 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_height20 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %15, i32 0, i32 5
  %16 = load i16, i16* %rep_height20, align 2, !tbaa !78
  %conv21 = zext i16 %16 to i32
  %17 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size22 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %17, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size22, i32 0, i32 1
  %18 = load i32, i32* %y, align 4, !tbaa !110
  %cmp23 = icmp eq i32 %conv21, %18
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.17
  br label %cond.end.33

cond.false.26:                                    ; preds = %cond.end.17
  %19 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size27 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %19, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size27, i32 0, i32 1
  %20 = load i32, i32* %y28, align 4, !tbaa !110
  %21 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_height29 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %21, i32 0, i32 5
  %22 = load i16, i16* %rep_height29, align 2, !tbaa !78
  %conv30 = zext i16 %22 to i32
  %div31 = sdiv i32 %20, %conv30
  %call32 = call i32 @cmd_size_w(i32 %div31) #5
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.26, %cond.true.25
  %cond34 = phi i32 [ 0, %cond.true.25 ], [ %call32, %cond.false.26 ]
  %add35 = add nsw i32 %add19, %cond34
  %23 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %23, i32 0, i32 6
  %24 = load i16, i16* %rep_shift, align 2, !tbaa !80
  %conv36 = zext i16 %24 to i32
  %cmp37 = icmp eq i32 %conv36, 0
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.33
  br label %cond.end.44

cond.false.40:                                    ; preds = %cond.end.33
  %25 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_shift41 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %25, i32 0, i32 6
  %26 = load i16, i16* %rep_shift41, align 2, !tbaa !80
  %conv42 = zext i16 %26 to i32
  %call43 = call i32 @cmd_size_w(i32 %conv42) #5
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.40, %cond.true.39
  %cond45 = phi i32 [ 0, %cond.true.39 ], [ %call43, %cond.false.40 ]
  %add46 = add nsw i32 %add35, %cond45
  %27 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %27, i32 0, i32 8
  %28 = load i32, i32* %num_planes, align 4, !tbaa !87
  %cmp47 = icmp eq i32 %28, 1
  %cond49 = select i1 %cmp47, i32 0, i32 1
  %add50 = add nsw i32 %add46, %cond49
  ret i32 %add50
}

declare i32 @cmd_size_w(i32) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_store_tile_params(i8* %dp, %struct.gx_strip_bitmap_s* %tile, i32 %depth, i32 %csize, i32 %for_pattern, %struct.gs_memory_s* %mem) #0 {
entry:
  %dp.addr = alloca i8*, align 8
  %tile.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %depth.addr = alloca i32, align 4
  %csize.addr = alloca i32, align 4
  %for_pattern.addr = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %p = alloca i8*, align 8
  %bd = alloca i8, align 1
  store i8* %dp, i8** %dp.addr, align 8, !tbaa !5
  store %struct.gx_strip_bitmap_s* %tile, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !1
  store i32 %csize, i32* %csize.addr, align 4, !tbaa !1
  store i32 %for_pattern, i32* %for_pattern.addr, align 4, !tbaa !1
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !5
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %dp.addr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 2
  store i8* %add.ptr, i8** %p, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %bd) #1
  %2 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %2, 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %3, 5
  %shr = ashr i32 %sub, 3
  %or = or i32 8, %shr
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %sub1 = sub nsw i32 %4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or, %cond.true ], [ %sub1, %cond.false ]
  %conv = trunc i32 %cond to i8
  store i8 %conv, i8* %bd, align 1, !tbaa !43
  %5 = load i8*, i8** %dp.addr, align 8, !tbaa !5
  store i8 1, i8* %5, align 1, !tbaa !43
  %6 = load i32, i32* %for_pattern.addr, align 4, !tbaa !1
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %7, i32 0, i32 3
  %8 = load i64, i64* %id, align 8, !tbaa !65
  %conv2 = trunc i64 %8 to i32
  %9 = load i8*, i8** %p, align 8, !tbaa !5
  %call = call i8* @cmd_put_w(i32 %conv2, i8* %9) #5
  store i8* %call, i8** %p, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %10 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %10, i32 0, i32 4
  %11 = load i16, i16* %rep_width, align 2, !tbaa !76
  %conv3 = zext i16 %11 to i32
  %12 = load i8*, i8** %p, align 8, !tbaa !5
  %call4 = call i8* @cmd_put_w(i32 %conv3, i8* %12) #5
  store i8* %call4, i8** %p, align 8, !tbaa !5
  %13 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %13, i32 0, i32 5
  %14 = load i16, i16* %rep_height, align 2, !tbaa !78
  %conv5 = zext i16 %14 to i32
  %15 = load i8*, i8** %p, align 8, !tbaa !5
  %call6 = call i8* @cmd_put_w(i32 %conv5, i8* %15) #5
  store i8* %call6, i8** %p, align 8, !tbaa !5
  %16 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_width7 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %16, i32 0, i32 4
  %17 = load i16, i16* %rep_width7, align 2, !tbaa !76
  %conv8 = zext i16 %17 to i32
  %18 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %18, i32 0, i32 2
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 0
  %19 = load i32, i32* %x, align 4, !tbaa !108
  %cmp9 = icmp ne i32 %conv8, %19
  br i1 %cmp9, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end
  %20 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size12 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %20, i32 0, i32 2
  %x13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size12, i32 0, i32 0
  %21 = load i32, i32* %x13, align 4, !tbaa !108
  %22 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_width14 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %22, i32 0, i32 4
  %23 = load i16, i16* %rep_width14, align 2, !tbaa !76
  %conv15 = zext i16 %23 to i32
  %div = sdiv i32 %21, %conv15
  %24 = load i8*, i8** %p, align 8, !tbaa !5
  %call16 = call i8* @cmd_put_w(i32 %div, i8* %24) #5
  store i8* %call16, i8** %p, align 8, !tbaa !5
  %25 = load i8, i8* %bd, align 1, !tbaa !43
  %conv17 = zext i8 %25 to i32
  %or18 = or i32 %conv17, 32
  %conv19 = trunc i32 %or18 to i8
  store i8 %conv19, i8* %bd, align 1, !tbaa !43
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.11, %if.end
  %26 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_height21 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %26, i32 0, i32 5
  %27 = load i16, i16* %rep_height21, align 2, !tbaa !78
  %conv22 = zext i16 %27 to i32
  %28 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size23 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %28, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size23, i32 0, i32 1
  %29 = load i32, i32* %y, align 4, !tbaa !110
  %cmp24 = icmp ne i32 %conv22, %29
  br i1 %cmp24, label %if.then.26, label %if.end.36

if.then.26:                                       ; preds = %if.end.20
  %30 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %size27 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %30, i32 0, i32 2
  %y28 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size27, i32 0, i32 1
  %31 = load i32, i32* %y28, align 4, !tbaa !110
  %32 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_height29 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %32, i32 0, i32 5
  %33 = load i16, i16* %rep_height29, align 2, !tbaa !78
  %conv30 = zext i16 %33 to i32
  %div31 = sdiv i32 %31, %conv30
  %34 = load i8*, i8** %p, align 8, !tbaa !5
  %call32 = call i8* @cmd_put_w(i32 %div31, i8* %34) #5
  store i8* %call32, i8** %p, align 8, !tbaa !5
  %35 = load i8, i8* %bd, align 1, !tbaa !43
  %conv33 = zext i8 %35 to i32
  %or34 = or i32 %conv33, 64
  %conv35 = trunc i32 %or34 to i8
  store i8 %conv35, i8* %bd, align 1, !tbaa !43
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.26, %if.end.20
  %36 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %36, i32 0, i32 6
  %37 = load i16, i16* %rep_shift, align 2, !tbaa !80
  %conv37 = zext i16 %37 to i32
  %cmp38 = icmp ne i32 %conv37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.36
  %38 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %rep_shift41 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %38, i32 0, i32 6
  %39 = load i16, i16* %rep_shift41, align 2, !tbaa !80
  %conv42 = zext i16 %39 to i32
  %40 = load i8*, i8** %p, align 8, !tbaa !5
  %call43 = call i8* @cmd_put_w(i32 %conv42, i8* %40) #5
  store i8* %call43, i8** %p, align 8, !tbaa !5
  %41 = load i8, i8* %bd, align 1, !tbaa !43
  %conv44 = zext i8 %41 to i32
  %or45 = or i32 %conv44, 128
  %conv46 = trunc i32 %or45 to i8
  store i8 %conv46, i8* %bd, align 1, !tbaa !43
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.36
  %42 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %42, i32 0, i32 8
  %43 = load i32, i32* %num_planes, align 4, !tbaa !87
  %cmp48 = icmp ne i32 %43, 1
  br i1 %cmp48, label %if.then.50, label %if.end.56

if.then.50:                                       ; preds = %if.end.47
  %44 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tile.addr, align 8, !tbaa !5
  %num_planes51 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %44, i32 0, i32 8
  %45 = load i32, i32* %num_planes51, align 4, !tbaa !87
  %conv52 = trunc i32 %45 to i8
  %46 = load i8*, i8** %p, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !5
  store i8 %conv52, i8* %46, align 1, !tbaa !43
  %47 = load i8, i8* %bd, align 1, !tbaa !43
  %conv53 = zext i8 %47 to i32
  %or54 = or i32 %conv53, 16
  %conv55 = trunc i32 %or54 to i8
  store i8 %conv55, i8* %bd, align 1, !tbaa !43
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.50, %if.end.47
  %48 = load i8, i8* %bd, align 1, !tbaa !43
  %49 = load i8*, i8** %dp.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %48, i8* %arrayidx, align 1, !tbaa !43
  call void @llvm.lifetime.end(i64 1, i8* %bd) #1
  %50 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  ret void
}

declare i8* @cmd_put_w(i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @clist_add_tile(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_strip_bitmap_s* %tiles, i32 %sraster, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %sraster.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %raster = alloca i32, align 4
  %size_bytes = alloca i32, align 4
  %tsize = alloca i32, align 4
  %slot_head = alloca %struct.gx_cached_bits_head_s*, align 8
  %cleanup.dest.slot = alloca i32
  %loc = alloca %struct.tile_loc_s, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  store i32 %sraster, i32* %sraster.addr, align 4, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !1
  %0 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %raster1 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %1, i32 0, i32 1
  %2 = load i32, i32* %raster1, align 4, !tbaa !99
  store i32 %2, i32* %raster, align 4, !tbaa !1
  %3 = bitcast i32* %size_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %raster, align 4, !tbaa !1
  %5 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %size = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %5, i32 0, i32 2
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %size, i32 0, i32 1
  %6 = load i32, i32* %y, align 4, !tbaa !110
  %mul = mul i32 %4, %6
  %7 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %7, i32 0, i32 8
  %8 = load i32, i32* %num_planes, align 4, !tbaa !87
  %mul2 = mul i32 %mul, %8
  store i32 %mul2, i32* %size_bytes, align 4, !tbaa !1
  %9 = bitcast i32* %tsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 54
  %11 = load i32, i32* %tile_band_mask_size, align 4, !tbaa !88
  %conv = zext i32 %11 to i64
  %add = add i64 40, %conv
  %12 = load i32, i32* %size_bytes, align 4, !tbaa !1
  %conv3 = zext i32 %12 to i64
  %add4 = add i64 %add, %conv3
  %conv5 = trunc i64 %add4 to i32
  store i32 %conv5, i32* %tsize, align 4, !tbaa !1
  %13 = bitcast %struct.gx_cached_bits_head_s** %slot_head to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %14, i32 0, i32 52
  %csize = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %bits, i32 0, i32 3
  %15 = load i32, i32* %csize, align 4, !tbaa !111
  %16 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_max_count = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %16, i32 0, i32 75
  %17 = load i32, i32* %tile_max_count, align 4, !tbaa !112
  %cmp = icmp eq i32 %15, %17
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits7 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %18, i32 0, i32 52
  %19 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %19, i32 0, i32 51
  %size8 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk, i32 0, i32 2
  %20 = load i32, i32* %size8, align 4, !tbaa !105
  %conv9 = zext i32 %20 to i64
  %call = call i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s* %bits7, i64 %conv9, %struct.gx_cached_bits_head_s** %slot_head) #5
  %21 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %cmp10 = icmp eq %struct.gx_cached_bits_head_s* %21, null
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %22 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %22, i32 0, i32 52
  %cnext = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %bits13, i32 0, i32 1
  store i32 0, i32* %cnext, align 4, !tbaa !113
  %23 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits14 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %23, i32 0, i32 52
  %24 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk15 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %24, i32 0, i32 51
  %size16 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk15, i32 0, i32 2
  %25 = load i32, i32* %size16, align 4, !tbaa !105
  %conv17 = zext i32 %25 to i64
  %call18 = call i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s* %bits14, i64 %conv17, %struct.gx_cached_bits_head_s** %slot_head) #5
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %27 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %28 = bitcast %struct.gx_cached_bits_head_s* %27 to %struct.tile_slot*
  call void @clist_delete_tile(%struct.gx_device_clist_writer_s* %26, %struct.tile_slot* %28) #5
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %if.end.19
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits20 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 52
  %30 = load i32, i32* %tsize, align 4, !tbaa !1
  %conv21 = zext i32 %30 to i64
  %call22 = call i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s* %bits20, i64 %conv21, %struct.gx_cached_bits_head_s** %slot_head) #5
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %cmp25 = icmp eq %struct.gx_cached_bits_head_s* %31, null
  br i1 %cmp25, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %while.body
  %32 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits28 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %32, i32 0, i32 52
  %cnext29 = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %bits28, i32 0, i32 1
  %33 = load i32, i32* %cnext29, align 4, !tbaa !113
  %cmp30 = icmp eq i32 %33, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.then.27
  store i32 -13, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.33:                                        ; preds = %if.then.27
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits34 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 52
  %cnext35 = getelementptr inbounds %struct.gx_bits_cache_s, %struct.gx_bits_cache_s* %bits34, i32 0, i32 1
  store i32 0, i32* %cnext35, align 4, !tbaa !113
  br label %if.end.36

if.else:                                          ; preds = %while.body
  %35 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %36 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %37 = bitcast %struct.gx_cached_bits_head_s* %36 to %struct.tile_slot*
  call void @clist_delete_tile(%struct.gx_device_clist_writer_s* %35, %struct.tile_slot* %37) #5
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.end.33
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %39 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %40 = bitcast %struct.gx_cached_bits_head_s* %39 to %struct.tile_slot*
  %head = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %40, i32 0, i32 0
  %depth37 = getelementptr inbounds %struct.gx_cached_bits_head_s, %struct.gx_cached_bits_head_s* %head, i32 0, i32 1
  store i32 %38, i32* %depth37, align 4, !tbaa !114
  %41 = load i32, i32* %raster, align 4, !tbaa !1
  %conv38 = trunc i32 %41 to i16
  %42 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %43 = bitcast %struct.gx_cached_bits_head_s* %42 to %struct.tile_slot*
  %raster39 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %43, i32 0, i32 4
  store i16 %conv38, i16* %raster39, align 2, !tbaa !89
  %44 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %44, i32 0, i32 4
  %45 = load i16, i16* %rep_width, align 2, !tbaa !76
  %46 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %47 = bitcast %struct.gx_cached_bits_head_s* %46 to %struct.tile_slot*
  %width = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %47, i32 0, i32 1
  store i16 %45, i16* %width, align 2, !tbaa !115
  %48 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_height = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %48, i32 0, i32 5
  %49 = load i16, i16* %rep_height, align 2, !tbaa !78
  %50 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %51 = bitcast %struct.gx_cached_bits_head_s* %50 to %struct.tile_slot*
  %height = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %51, i32 0, i32 2
  store i16 %49, i16* %height, align 2, !tbaa !116
  %52 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_shift = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %52, i32 0, i32 6
  %53 = load i16, i16* %rep_shift, align 2, !tbaa !80
  %54 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %55 = bitcast %struct.gx_cached_bits_head_s* %54 to %struct.tile_slot*
  %rep_shift40 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %55, i32 0, i32 8
  store i16 %53, i16* %rep_shift40, align 2, !tbaa !117
  %56 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %57 = bitcast %struct.gx_cached_bits_head_s* %56 to %struct.tile_slot*
  %shift = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %57, i32 0, i32 3
  store i16 %53, i16* %shift, align 2, !tbaa !118
  %58 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %59 = bitcast %struct.gx_cached_bits_head_s* %58 to %struct.tile_slot*
  %y_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %59, i32 0, i32 7
  store i8 1, i8* %y_reps, align 1, !tbaa !119
  %60 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %61 = bitcast %struct.gx_cached_bits_head_s* %60 to %struct.tile_slot*
  %x_reps = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %61, i32 0, i32 6
  store i8 1, i8* %x_reps, align 1, !tbaa !120
  %62 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %62, i32 0, i32 3
  %63 = load i64, i64* %id, align 8, !tbaa !65
  %64 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %65 = bitcast %struct.gx_cached_bits_head_s* %64 to %struct.tile_slot*
  %id41 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %65, i32 0, i32 5
  store i64 %63, i64* %id41, align 8, !tbaa !94
  %66 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes42 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %66, i32 0, i32 8
  %67 = load i32, i32* %num_planes42, align 4, !tbaa !87
  %conv43 = trunc i32 %67 to i8
  %68 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %69 = bitcast %struct.gx_cached_bits_head_s* %68 to %struct.tile_slot*
  %num_planes44 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %69, i32 0, i32 11
  store i8 %conv43, i8* %num_planes44, align 1, !tbaa !121
  %70 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %71 = bitcast %struct.gx_cached_bits_head_s* %70 to %struct.tile_slot*
  %num_planes45 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %71, i32 0, i32 11
  %72 = load i8, i8* %num_planes45, align 1, !tbaa !121
  %conv46 = zext i8 %72 to i32
  %cmp47 = icmp ne i32 %conv46, 1
  br i1 %cmp47, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %while.end
  %73 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %74 = bitcast %struct.gx_cached_bits_head_s* %73 to %struct.tile_slot*
  %num_planes50 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %74, i32 0, i32 11
  %75 = load i8, i8* %num_planes50, align 1, !tbaa !121
  %conv51 = zext i8 %75 to i32
  %76 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %div = sdiv i32 %76, %conv51
  store i32 %div, i32* %depth.addr, align 4, !tbaa !1
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %while.end
  %77 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %78 = bitcast %struct.gx_cached_bits_head_s* %77 to %struct.tile_slot*
  %add.ptr = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %78, i64 1
  %79 = bitcast %struct.tile_slot* %add.ptr to i8*
  %80 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size53 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %80, i32 0, i32 54
  %81 = load i32, i32* %tile_band_mask_size53, align 4, !tbaa !88
  %conv54 = zext i32 %81 to i64
  %call55 = call i8* @memset(i8* %79, i32 0, i64 %conv54) #6
  %82 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %83 = bitcast %struct.gx_cached_bits_head_s* %82 to %struct.tile_slot*
  %add.ptr56 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %83, i64 1
  %84 = bitcast %struct.tile_slot* %add.ptr56 to i8*
  %85 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size57 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %85, i32 0, i32 54
  %86 = load i32, i32* %tile_band_mask_size57, align 4, !tbaa !88
  %idx.ext = zext i32 %86 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %84, i64 %idx.ext
  %87 = load i32, i32* %raster, align 4, !tbaa !1
  %88 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %88, i32 0, i32 0
  %89 = load i8*, i8** %data, align 8, !tbaa !97
  %90 = load i32, i32* %sraster.addr, align 4, !tbaa !1
  %91 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_width59 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %91, i32 0, i32 4
  %92 = load i16, i16* %rep_width59, align 2, !tbaa !76
  %conv60 = zext i16 %92 to i32
  %93 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %mul61 = mul nsw i32 %conv60, %93
  %add62 = add nsw i32 %mul61, 7
  %shr = ashr i32 %add62, 3
  %94 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %rep_height63 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %94, i32 0, i32 5
  %95 = load i16, i16* %rep_height63, align 2, !tbaa !78
  %conv64 = zext i16 %95 to i32
  %96 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %97 = bitcast %struct.gx_cached_bits_head_s* %96 to %struct.tile_slot*
  %num_planes65 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %97, i32 0, i32 11
  %98 = load i8, i8* %num_planes65, align 1, !tbaa !121
  %conv66 = zext i8 %98 to i32
  %mul67 = mul nsw i32 %conv64, %conv66
  call void @bytes_copy_rectangle_zero_padding(i8* %add.ptr58, i32 %87, i8* %89, i32 %90, i32 %shr, i32 %mul67) #5
  %99 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %99) #1
  %100 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %101 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %id68 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %101, i32 0, i32 3
  %102 = load i64, i64* %id68, align 8, !tbaa !65
  %call69 = call i32 @clist_find_bits(%struct.gx_device_clist_writer_s* %100, i64 %102, %struct.tile_loc_s* %loc) #5
  %index = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %103 = load i32, i32* %index, align 4, !tbaa !75
  %conv70 = trunc i32 %103 to i16
  %104 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %105 = bitcast %struct.gx_cached_bits_head_s* %104 to %struct.tile_slot*
  %index71 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %105, i32 0, i32 9
  store i16 %conv70, i16* %index71, align 2, !tbaa !122
  %106 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %107 = bitcast %struct.gx_cached_bits_head_s* %106 to i8*
  %108 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %data72 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %108, i32 0, i32 46
  %109 = load i8*, i8** %data72, align 8, !tbaa !104
  %sub.ptr.lhs.cast = ptrtoint i8* %107 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %109 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %index73 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %110 = load i32, i32* %index73, align 4, !tbaa !75
  %idxprom = zext i32 %110 to i64
  %111 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %111, i32 0, i32 55
  %112 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !100
  %arrayidx = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %112, i64 %idxprom
  %offset = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx, i32 0, i32 0
  store i64 %sub.ptr.sub, i64* %offset, align 8, !tbaa !102
  br label %do.body

do.body:                                          ; preds = %if.end.52
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %113 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %113) #1
  %114 = load %struct.gx_cached_bits_head_s*, %struct.gx_cached_bits_head_s** %slot_head, align 8, !tbaa !5
  %115 = bitcast %struct.gx_cached_bits_head_s* %114 to %struct.tile_slot*
  %num_bands = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %115, i32 0, i32 10
  store i16 0, i16* %num_bands, align 2, !tbaa !93
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.32
  %116 = bitcast %struct.gx_cached_bits_head_s** %slot_head to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast i32* %tsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %size_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = load i32, i32* %retval
  ret i32 %120
}

; Function Attrs: nounwind uwtable
define i32 @clist_change_bits(%struct.gx_device_clist_writer_s* %cldev, %struct.gx_clist_state_s* %pcls, %struct.gx_strip_bitmap_s* %tiles, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %pcls.addr = alloca %struct.gx_clist_state_s*, align 8
  %tiles.addr = alloca %struct.gx_strip_bitmap_s*, align 8
  %depth.addr = alloca i32, align 4
  %loc = alloca %struct.tile_loc_s, align 8
  %code = alloca i32, align 4
  %band_index = alloca i32, align 4
  %bptr = alloca i8*, align 8
  %bmask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %offset = alloca i64, align 8
  %rsize = alloca i32, align 4
  %dp = alloca i8*, align 8
  %csize = alloca i32, align 4
  %bit_pcls = alloca %struct.gx_clist_state_s*, align 8
  %code29 = alloca i32, align 4
  %pdepth = alloca i32, align 4
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store %struct.gx_clist_state_s* %pcls, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  store %struct.gx_strip_bitmap_s* %tiles, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !1
  %0 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  br label %top

top:                                              ; preds = %if.end.120, %entry
  %2 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %3 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %3, i32 0, i32 3
  %4 = load i64, i64* %id, align 8, !tbaa !65
  %call = call i32 @clist_find_bits(%struct.gx_device_clist_writer_s* %2, i64 %4, %struct.tile_loc_s* %loc) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.114

if.then:                                          ; preds = %top
  %5 = bitcast i32* %band_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %7 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %states = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %7, i32 0, i32 66
  %8 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %states, align 8, !tbaa !66
  %sub.ptr.lhs.cast = ptrtoint %struct.gx_clist_state_s* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.gx_clist_state_s* %8 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 1808
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %band_index, align 4, !tbaa !1
  %9 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %tile = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %10 = load %struct.tile_slot*, %struct.tile_slot** %tile, align 8, !tbaa !67
  %add.ptr = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %10, i64 1
  %11 = bitcast %struct.tile_slot* %add.ptr to i8*
  %12 = load i32, i32* %band_index, align 4, !tbaa !1
  %shr = lshr i32 %12, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr1 = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr1, i8** %bptr, align 8, !tbaa !5
  call void @llvm.lifetime.start(i64 1, i8* %bmask) #1
  %13 = load i32, i32* %band_index, align 4, !tbaa !1
  %and = and i32 %13, 7
  %shl = shl i32 1, %and
  %conv2 = trunc i32 %shl to i8
  store i8 %conv2, i8* %bmask, align 1, !tbaa !43
  %14 = load i8*, i8** %bptr, align 8, !tbaa !5
  %15 = load i8, i8* %14, align 1, !tbaa !43
  %conv3 = zext i8 %15 to i32
  %16 = load i8, i8* %bmask, align 1, !tbaa !43
  %conv4 = zext i8 %16 to i32
  %and5 = and i32 %conv3, %conv4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %17 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_index = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %17, i32 0, i32 2
  %18 = load i32, i32* %tile_index, align 4, !tbaa !69
  %index = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %19 = load i32, i32* %index, align 4, !tbaa !75
  %cmp = icmp eq i32 %18, %19
  br i1 %cmp, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.7
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111

if.end:                                           ; preds = %if.then.7
  %20 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %21 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %index10 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %22 = load i32, i32* %index10, align 4, !tbaa !75
  %call11 = call i32 @cmd_put_tile_index(%struct.gx_device_clist_writer_s* %20, %struct.gx_clist_state_s* %21, i32 %22) #5
  br label %if.end.106

if.else:                                          ; preds = %if.then
  %23 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #1
  %tile12 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %24 = load %struct.tile_slot*, %struct.tile_slot** %tile12, align 8, !tbaa !67
  %25 = bitcast %struct.tile_slot* %24 to i8*
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %26, i32 0, i32 51
  %data = getelementptr inbounds %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_chunk_s* %chunk, i32 0, i32 1
  %27 = load i8*, i8** %data, align 8, !tbaa !86
  %sub.ptr.lhs.cast13 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast14 = ptrtoint i8* %27 to i64
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  store i64 %sub.ptr.sub15, i64* %offset, align 8, !tbaa !60
  %28 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %tile16 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %29 = load %struct.tile_slot*, %struct.tile_slot** %tile16, align 8, !tbaa !67
  %width = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %29, i32 0, i32 1
  %30 = load i16, i16* %width, align 2, !tbaa !115
  %conv17 = zext i16 %30 to i32
  %call18 = call i32 @cmd_size_w(i32 %conv17) #5
  %add = add nsw i32 2, %call18
  %tile19 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %31 = load %struct.tile_slot*, %struct.tile_slot** %tile19, align 8, !tbaa !67
  %height = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %31, i32 0, i32 2
  %32 = load i16, i16* %height, align 2, !tbaa !116
  %conv20 = zext i16 %32 to i32
  %call21 = call i32 @cmd_size_w(i32 %conv20) #5
  %add22 = add nsw i32 %add, %call21
  %index23 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %33 = load i32, i32* %index23, align 4, !tbaa !75
  %call24 = call i32 @cmd_size_w(i32 %33) #5
  %add25 = add nsw i32 %add22, %call24
  %34 = load i64, i64* %offset, align 8, !tbaa !60
  %conv26 = trunc i64 %34 to i32
  %call27 = call i32 @cmd_size_w(i32 %conv26) #5
  %add28 = add nsw i32 %add25, %call27
  store i32 %add28, i32* %rsize, align 4, !tbaa !1
  %35 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %35) #1
  %36 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = bitcast %struct.gx_clist_state_s** %bit_pcls to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  store %struct.gx_clist_state_s* %38, %struct.gx_clist_state_s** %bit_pcls, align 8, !tbaa !5
  %39 = bitcast i32* %code29 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  %40 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %depth.addr, align 4, !tbaa !1
  store i32 %41, i32* %pdepth, align 4, !tbaa !1
  %42 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %42, i32 0, i32 8
  %43 = load i32, i32* %num_planes, align 4, !tbaa !87
  %cmp30 = icmp ne i32 %43, 1
  br i1 %cmp30, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.else
  %tile33 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %44 = load %struct.tile_slot*, %struct.tile_slot** %tile33, align 8, !tbaa !67
  %num_planes34 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %44, i32 0, i32 11
  %45 = load i8, i8* %num_planes34, align 1, !tbaa !121
  %conv35 = zext i8 %45 to i32
  %46 = load i32, i32* %pdepth, align 4, !tbaa !1
  %div = sdiv i32 %46, %conv35
  store i32 %div, i32* %pdepth, align 4, !tbaa !1
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.else
  %tile37 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %47 = load %struct.tile_slot*, %struct.tile_slot** %tile37, align 8, !tbaa !67
  %num_bands = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %47, i32 0, i32 10
  %48 = load i16, i16* %num_bands, align 2, !tbaa !93
  %conv38 = zext i16 %48 to i32
  %cmp39 = icmp eq i32 %conv38, 65535
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  store %struct.gx_clist_state_s* null, %struct.gx_clist_state_s** %bit_pcls, align 8, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.36
  %49 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %50 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %bit_pcls, align 8, !tbaa !5
  %tile43 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %51 = load %struct.tile_slot*, %struct.tile_slot** %tile43, align 8, !tbaa !67
  %add.ptr44 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %51, i64 1
  %52 = bitcast %struct.tile_slot* %add.ptr44 to i8*
  %53 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %53, i32 0, i32 54
  %54 = load i32, i32* %tile_band_mask_size, align 4, !tbaa !88
  %idx.ext45 = zext i32 %54 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %52, i64 %idx.ext45
  %tile47 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %55 = load %struct.tile_slot*, %struct.tile_slot** %tile47, align 8, !tbaa !67
  %width48 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %55, i32 0, i32 1
  %56 = load i16, i16* %width48, align 2, !tbaa !115
  %conv49 = zext i16 %56 to i32
  %57 = load i32, i32* %pdepth, align 4, !tbaa !1
  %mul = mul nsw i32 %conv49, %57
  %tile50 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %58 = load %struct.tile_slot*, %struct.tile_slot** %tile50, align 8, !tbaa !67
  %height51 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %58, i32 0, i32 2
  %59 = load i16, i16* %height51, align 2, !tbaa !116
  %conv52 = zext i16 %59 to i32
  %tile53 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %60 = load %struct.tile_slot*, %struct.tile_slot** %tile53, align 8, !tbaa !67
  %num_planes54 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %60, i32 0, i32 11
  %61 = load i8, i8* %num_planes54, align 1, !tbaa !121
  %conv55 = zext i8 %61 to i32
  %mul56 = mul nsw i32 %conv52, %conv55
  %tile57 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %62 = load %struct.tile_slot*, %struct.tile_slot** %tile57, align 8, !tbaa !67
  %raster = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %62, i32 0, i32 4
  %63 = load i16, i16* %raster, align 2, !tbaa !89
  %conv58 = zext i16 %63 to i32
  %64 = load i32, i32* %rsize, align 4, !tbaa !1
  %65 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %target = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %65, i32 0, i32 43
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %target, align 8, !tbaa !123
  %67 = bitcast %struct.gx_device_s* %66 to %struct.gx_device_printer_s*
  %BLS_force_memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 46
  %68 = load i32, i32* %BLS_force_memory, align 4, !tbaa !124
  %tobool59 = icmp ne i32 %68, 0
  %cond = select i1 %tobool59, i32 4, i32 0
  %or = or i32 256, %cond
  %call60 = call i32 @cmd_put_bits(%struct.gx_device_clist_writer_s* %49, %struct.gx_clist_state_s* %50, i8* %add.ptr46, i32 %mul, i32 %mul56, i32 %conv58, i32 %64, i32 %or, i8** %dp, i32* %csize) #5
  store i32 %call60, i32* %code29, align 4, !tbaa !1
  %69 = load i32, i32* %code29, align 4, !tbaa !1
  %cmp61 = icmp slt i32 %69, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.42
  %70 = load i32, i32* %code29, align 4, !tbaa !1
  store i32 %70, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.end.42
  %71 = load i8*, i8** %dp, align 8, !tbaa !5
  store i8 4, i8* %71, align 1, !tbaa !43
  %72 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %shl65 = shl i32 %72, 2
  %73 = load i32, i32* %code29, align 4, !tbaa !1
  %add66 = add nsw i32 %shl65, %73
  %conv67 = trunc i32 %add66 to i8
  %74 = load i8*, i8** %dp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %conv67, i8* %arrayidx, align 1, !tbaa !43
  %75 = load i8*, i8** %dp, align 8, !tbaa !5
  %add.ptr68 = getelementptr inbounds i8, i8* %75, i64 2
  store i8* %add.ptr68, i8** %dp, align 8, !tbaa !5
  %tile69 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %76 = load %struct.tile_slot*, %struct.tile_slot** %tile69, align 8, !tbaa !67
  %width70 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %76, i32 0, i32 1
  %77 = load i16, i16* %width70, align 2, !tbaa !115
  %conv71 = zext i16 %77 to i32
  %78 = load i8*, i8** %dp, align 8, !tbaa !5
  %call72 = call i8* @cmd_put_w(i32 %conv71, i8* %78) #5
  store i8* %call72, i8** %dp, align 8, !tbaa !5
  %tile73 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %79 = load %struct.tile_slot*, %struct.tile_slot** %tile73, align 8, !tbaa !67
  %height74 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %79, i32 0, i32 2
  %80 = load i16, i16* %height74, align 2, !tbaa !116
  %conv75 = zext i16 %80 to i32
  %81 = load i8*, i8** %dp, align 8, !tbaa !5
  %call76 = call i8* @cmd_put_w(i32 %conv75, i8* %81) #5
  store i8* %call76, i8** %dp, align 8, !tbaa !5
  %index77 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %82 = load i32, i32* %index77, align 4, !tbaa !75
  %83 = load i8*, i8** %dp, align 8, !tbaa !5
  %call78 = call i8* @cmd_put_w(i32 %82, i8* %83) #5
  store i8* %call78, i8** %dp, align 8, !tbaa !5
  %84 = load i64, i64* %offset, align 8, !tbaa !60
  %conv79 = trunc i64 %84 to i32
  %85 = load i8*, i8** %dp, align 8, !tbaa !5
  %call80 = call i8* @cmd_put_w(i32 %conv79, i8* %85) #5
  %86 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %bit_pcls, align 8, !tbaa !5
  %cmp81 = icmp eq %struct.gx_clist_state_s* %86, null
  br i1 %cmp81, label %if.then.83, label %if.else.92

if.then.83:                                       ; preds = %if.end.64
  %tile84 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %87 = load %struct.tile_slot*, %struct.tile_slot** %tile84, align 8, !tbaa !67
  %add.ptr85 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %87, i64 1
  %88 = bitcast %struct.tile_slot* %add.ptr85 to i8*
  %89 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_band_mask_size86 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %89, i32 0, i32 54
  %90 = load i32, i32* %tile_band_mask_size86, align 4, !tbaa !88
  %conv87 = zext i32 %90 to i64
  %call88 = call i8* @memset(i8* %88, i32 255, i64 %conv87) #6
  %91 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %nbands = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %91, i32 0, i32 59
  %92 = load i32, i32* %nbands, align 4, !tbaa !44
  %conv89 = trunc i32 %92 to i16
  %tile90 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %93 = load %struct.tile_slot*, %struct.tile_slot** %tile90, align 8, !tbaa !67
  %num_bands91 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %93, i32 0, i32 10
  store i16 %conv89, i16* %num_bands91, align 2, !tbaa !93
  br label %if.end.99

if.else.92:                                       ; preds = %if.end.64
  %94 = load i8, i8* %bmask, align 1, !tbaa !43
  %conv93 = zext i8 %94 to i32
  %95 = load i8*, i8** %bptr, align 8, !tbaa !5
  %96 = load i8, i8* %95, align 1, !tbaa !43
  %conv94 = zext i8 %96 to i32
  %or95 = or i32 %conv94, %conv93
  %conv96 = trunc i32 %or95 to i8
  store i8 %conv96, i8* %95, align 1, !tbaa !43
  %tile97 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %97 = load %struct.tile_slot*, %struct.tile_slot** %tile97, align 8, !tbaa !67
  %num_bands98 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %97, i32 0, i32 10
  %98 = load i16, i16* %num_bands98, align 2, !tbaa !93
  %inc = add i16 %98, 1
  store i16 %inc, i16* %num_bands98, align 2, !tbaa !93
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.92, %if.then.83
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.99, %if.then.63
  %99 = bitcast i32* %pdepth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %code29 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast %struct.gx_clist_state_s** %bit_pcls to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast i32* %csize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i8** %dp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %105) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.111 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.106

if.end.106:                                       ; preds = %cleanup.cont, %if.end
  %index107 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 0
  %106 = load i32, i32* %index107, align 4, !tbaa !75
  %107 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_index108 = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %107, i32 0, i32 2
  store i32 %106, i32* %tile_index108, align 4, !tbaa !69
  %tile109 = getelementptr inbounds %struct.tile_loc_s, %struct.tile_loc_s* %loc, i32 0, i32 1
  %108 = load %struct.tile_slot*, %struct.tile_slot** %tile109, align 8, !tbaa !67
  %id110 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %108, i32 0, i32 5
  %109 = load i64, i64* %id110, align 8, !tbaa !94
  %110 = load %struct.gx_clist_state_s*, %struct.gx_clist_state_s** %pcls.addr, align 8, !tbaa !5
  %tile_id = getelementptr inbounds %struct.gx_clist_state_s, %struct.gx_clist_state_s* %110, i32 0, i32 3
  store i64 %109, i64* %tile_id, align 8, !tbaa !95
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.111

cleanup.111:                                      ; preds = %if.end.106, %cleanup, %if.then.9
  call void @llvm.lifetime.end(i64 1, i8* %bmask) #1
  %111 = bitcast i8** %bptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast i32* %band_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  br label %cleanup.121

if.end.114:                                       ; preds = %top
  %113 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %114 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %115 = load %struct.gx_strip_bitmap_s*, %struct.gx_strip_bitmap_s** %tiles.addr, align 8, !tbaa !5
  %raster115 = getelementptr inbounds %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s* %115, i32 0, i32 1
  %116 = load i32, i32* %raster115, align 4, !tbaa !99
  %117 = load i32, i32* %depth.addr, align 4, !tbaa !1
  %call116 = call i32 @clist_add_tile(%struct.gx_device_clist_writer_s* %113, %struct.gx_strip_bitmap_s* %114, i32 %116, i32 %117) #5
  store i32 %call116, i32* %code, align 4, !tbaa !1
  %118 = load i32, i32* %code, align 4, !tbaa !1
  %cmp117 = icmp slt i32 %118, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.114
  %119 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %119, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.121

if.end.120:                                       ; preds = %if.end.114
  br label %top

cleanup.121:                                      ; preds = %if.then.119, %cleanup.111
  %120 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %121) #1
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gx_bits_cache_alloc(%struct.gx_bits_cache_s*, i64, %struct.gx_cached_bits_head_s**) #2

; Function Attrs: nounwind uwtable
define internal void @clist_delete_tile(%struct.gx_device_clist_writer_s* %cldev, %struct.tile_slot* %slot) #0 {
entry:
  %cldev.addr = alloca %struct.gx_device_clist_writer_s*, align 8
  %slot.addr = alloca %struct.tile_slot*, align 8
  %table = alloca %struct.tile_hash*, align 8
  %mask = alloca i32, align 4
  %index = alloca i32, align 4
  %offset = alloca i64, align 8
  %tile = alloca %struct.tile_slot*, align 8
  %loc = alloca %struct.tile_loc_s, align 8
  store %struct.gx_device_clist_writer_s* %cldev, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  store %struct.tile_slot* %slot, %struct.tile_slot** %slot.addr, align 8, !tbaa !5
  %0 = bitcast %struct.tile_hash** %table to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_table = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %1, i32 0, i32 55
  %2 = load %struct.tile_hash*, %struct.tile_hash** %tile_table, align 8, !tbaa !100
  store %struct.tile_hash* %2, %struct.tile_hash** %table, align 8, !tbaa !5
  %3 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %tile_hash_mask = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %4, i32 0, i32 53
  %5 = load i32, i32* %tile_hash_mask, align 4, !tbaa !101
  store i32 %5, i32* %mask, align 4, !tbaa !1
  %6 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.tile_slot*, %struct.tile_slot** %slot.addr, align 8, !tbaa !5
  %index1 = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %7, i32 0, i32 9
  %8 = load i16, i16* %index1, align 2, !tbaa !122
  %conv = zext i16 %8 to i32
  store i32 %conv, i32* %index, align 4, !tbaa !1
  %9 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %10, i32 0, i32 52
  %11 = load %struct.tile_slot*, %struct.tile_slot** %slot.addr, align 8, !tbaa !5
  %12 = bitcast %struct.tile_slot* %11 to %struct.gx_cached_bits_head_s*
  %13 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %13, i32 0, i32 51
  call void @gx_bits_cache_free(%struct.gx_bits_cache_s* %bits, %struct.gx_cached_bits_head_s* %12, %struct.gx_bits_cache_chunk_s* %chunk) #5
  %14 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.tile_hash*, %struct.tile_hash** %table, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %15, i64 %idxprom
  %offset2 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx, i32 0, i32 0
  store i64 0, i64* %offset2, align 8, !tbaa !102
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.end
  %16 = load i32, i32* %index, align 4, !tbaa !1
  %add = add i32 %16, 413
  %17 = load i32, i32* %mask, align 4, !tbaa !1
  %and = and i32 %add, %17
  store i32 %and, i32* %index, align 4, !tbaa !1
  %idxprom3 = zext i32 %and to i64
  %18 = load %struct.tile_hash*, %struct.tile_hash** %table, align 8, !tbaa !5
  %arrayidx4 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %18, i64 %idxprom3
  %offset5 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx4, i32 0, i32 0
  %19 = load i64, i64* %offset5, align 8, !tbaa !102
  store i64 %19, i64* %offset, align 8, !tbaa !60
  %cmp = icmp ne i64 %19, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = bitcast %struct.tile_slot** %tile to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %21, i32 0, i32 46
  %22 = load i8*, i8** %data, align 8, !tbaa !104
  %23 = load i64, i64* %offset, align 8, !tbaa !60
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = bitcast i8* %add.ptr to %struct.tile_slot*
  store %struct.tile_slot* %24, %struct.tile_slot** %tile, align 8, !tbaa !5
  %25 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.start(i64 16, i8* %25) #1
  %26 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %27 = load %struct.tile_slot*, %struct.tile_slot** %tile, align 8, !tbaa !5
  %id = getelementptr inbounds %struct.tile_slot, %struct.tile_slot* %27, i32 0, i32 5
  %28 = load i64, i64* %id, align 8, !tbaa !94
  %call = call i32 @clist_find_bits(%struct.gx_device_clist_writer_s* %26, i64 %28, %struct.tile_loc_s* %loc) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %do.body.7

do.body.7:                                        ; preds = %if.then
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %29 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %bits10 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %29, i32 0, i32 52
  %30 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %data11 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %30, i32 0, i32 46
  %31 = load i8*, i8** %data11, align 8, !tbaa !104
  %32 = load i64, i64* %offset, align 8, !tbaa !60
  %add.ptr12 = getelementptr inbounds i8, i8* %31, i64 %32
  %33 = bitcast i8* %add.ptr12 to %struct.gx_cached_bits_head_s*
  %34 = load %struct.gx_device_clist_writer_s*, %struct.gx_device_clist_writer_s** %cldev.addr, align 8, !tbaa !5
  %chunk13 = getelementptr inbounds %struct.gx_device_clist_writer_s, %struct.gx_device_clist_writer_s* %34, i32 0, i32 51
  call void @gx_bits_cache_free(%struct.gx_bits_cache_s* %bits10, %struct.gx_cached_bits_head_s* %33, %struct.gx_bits_cache_chunk_s* %chunk13) #5
  %35 = load i32, i32* %index, align 4, !tbaa !1
  %idxprom14 = zext i32 %35 to i64
  %36 = load %struct.tile_hash*, %struct.tile_hash** %table, align 8, !tbaa !5
  %arrayidx15 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %36, i64 %idxprom14
  %offset16 = getelementptr inbounds %struct.tile_hash, %struct.tile_hash* %arrayidx15, i32 0, i32 0
  store i64 0, i64* %offset16, align 8, !tbaa !102
  br label %if.end

if.end:                                           ; preds = %do.end.9, %while.body
  %37 = bitcast %struct.tile_loc_s* %loc to i8*
  call void @llvm.lifetime.end(i64 16, i8* %37) #1
  %38 = bitcast %struct.tile_slot** %tile to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = bitcast i64* %offset to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast %struct.tile_hash** %table to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #1
  ret void
}

declare void @bytes_copy_rectangle_zero_padding(i8*, i32, i8*, i32, i32, i32) #2

declare void @gx_bits_cache_free(%struct.gx_bits_cache_s*, %struct.gx_cached_bits_head_s*, %struct.gx_bits_cache_chunk_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 24}
!8 = !{!"gx_device_clist_writer_s", !2, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !9, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !11, i64 96, !14, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !2, i64 1052, !2, i64 1056, !16, i64 1064, !6, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !6, i64 1728, !20, i64 1736, !6, i64 1768, !6, i64 1776, !2, i64 1784, !17, i64 1792, !2, i64 1808, !2, i64 1812, !21, i64 1816, !22, i64 1840, !2, i64 1864, !2, i64 1868, !6, i64 1872, !2, i64 1880, !2, i64 1884, !23, i64 1888, !2, i64 10144, !10, i64 10152, !6, i64 10160, !6, i64 10168, !2, i64 10176, !6, i64 10184, !2, i64 10192, !6, i64 10200, !6, i64 10208, !6, i64 10216, !6, i64 10224, !6, i64 10232, !24, i64 10240, !2, i64 10256, !2, i64 10260, !2, i64 10264, !2, i64 10268, !25, i64 10272, !2, i64 10320, !2, i64 10324, !2, i64 10328, !27, i64 10336, !2, i64 11952, !2, i64 11956, !2, i64 11960, !2, i64 11964, !3, i64 11968, !6, i64 12016, !10, i64 12024, !40, i64 12032, !3, i64 12080, !10, i64 12112, !10, i64 12120, !10, i64 12128, !10, i64 12136, !2, i64 12144, !2, i64 12148, !2, i64 12152, !2, i64 12156, !6, i64 12160, !2, i64 12168, !6, i64 12176, !2, i64 12184, !2, i64 12188, !2, i64 12192, !2, i64 12196, !2, i64 12200, !2, i64 12204, !6, i64 12208, !10, i64 12216, !2, i64 12224, !2, i64 12228, !2, i64 12232, !2, i64 12236, !11, i64 12240}
!9 = !{!"rc_header_s", !10, i64 0, !6, i64 8, !6, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !2, i64 0, !2, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !6, i64 688, !3, i64 696, !10, i64 704, !2, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !2, i64 0, !2, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !2, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !2, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !2, i64 0, !2, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576}
!20 = !{!"gx_device_buf_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!21 = !{!"gx_bits_cache_chunk_s", !6, i64 0, !6, i64 8, !2, i64 16, !2, i64 20}
!22 = !{!"gx_bits_cache_s", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16}
!23 = !{!"gx_band_page_info_s", !3, i64 0, !6, i64 4096, !3, i64 4104, !6, i64 8200, !6, i64 8208, !2, i64 8216, !10, i64 8224, !10, i64 8232, !17, i64 8240}
!24 = !{!"cmd_list_s", !6, i64 0, !6, i64 8}
!25 = !{!"gx_strip_bitmap_s", !6, i64 0, !2, i64 8, !26, i64 12, !10, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38, !2, i64 40}
!26 = !{!"gs_int_point_s", !2, i64 0, !2, i64 4}
!27 = !{!"gs_imager_state_s", !2, i64 0, !6, i64 8, !6, i64 16, !28, i64 24, !2, i64 128, !32, i64 132, !2, i64 168, !33, i64 176, !33, i64 192, !2, i64 208, !2, i64 212, !12, i64 216, !3, i64 220, !35, i64 224, !35, i64 228, !36, i64 232, !10, i64 240, !2, i64 248, !2, i64 252, !2, i64 256, !6, i64 264, !2, i64 272, !2, i64 276, !2, i64 280, !2, i64 284, !2, i64 288, !2, i64 292, !29, i64 296, !37, i64 300, !2, i64 308, !2, i64 312, !2, i64 316, !29, i64 320, !2, i64 324, !2, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !3, i64 376, !6, i64 392, !6, i64 400, !2, i64 408, !6, i64 416, !6, i64 424, !38, i64 432, !3, i64 496, !6, i64 1008, !6, i64 1016, !39, i64 1024, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !39, i64 1336}
!28 = !{!"gx_line_params_s", !29, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !2, i64 20, !29, i64 24, !29, i64 28, !29, i64 32, !2, i64 36, !30, i64 40, !31, i64 64}
!29 = !{!"float", !3, i64 0}
!30 = !{!"gs_matrix_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!31 = !{!"gx_dash_params_s", !6, i64 0, !2, i64 8, !29, i64 12, !2, i64 16, !29, i64 20, !2, i64 24, !2, i64 28, !29, i64 32}
!32 = !{!"gs_matrix_fixed_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !2, i64 24, !2, i64 28, !2, i64 32}
!33 = !{!"gs_point_s", !34, i64 0, !34, i64 8}
!34 = !{!"double", !3, i64 0}
!35 = !{!"gs_transparency_source_s", !29, i64 0}
!36 = !{!"gs_xstate_trans_flags", !2, i64 0, !2, i64 4}
!37 = !{!"gs_fixed_point_s", !2, i64 0, !2, i64 4}
!38 = !{!"gx_transfer_s", !2, i64 0, !6, i64 8, !2, i64 16, !6, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !6, i64 56}
!39 = !{!"gs_devicen_color_map_s", !2, i64 0, !3, i64 4, !2, i64 8, !2, i64 12, !10, i64 16, !3, i64 24}
!40 = !{!"clist_color_space_s", !3, i64 0, !10, i64 8, !41, i64 16, !6, i64 40}
!41 = !{!"clist_icc_color_s", !10, i64 0, !3, i64 8, !2, i64 12, !3, i64 16, !3, i64 20}
!42 = !{!8, !2, i64 10192}
!43 = !{!3, !3, i64 0}
!44 = !{!8, !2, i64 10144}
!45 = !{!46, !6, i64 8}
!46 = !{!"stream_cursor_write_s", !6, i64 0, !6, i64 8, !6, i64 16}
!47 = !{!46, !6, i64 16}
!48 = !{!24, !6, i64 8}
!49 = !{!50, !2, i64 8}
!50 = !{!"cmd_prefix_s", !6, i64 0, !2, i64 8, !10, i64 16}
!51 = !{!8, !6, i64 10216}
!52 = !{!53, !6, i64 0}
!53 = !{!"stream_cursor_read_s", !6, i64 0, !6, i64 8, !6, i64 16}
!54 = !{!53, !6, i64 8}
!55 = !{!56, !6, i64 0}
!56 = !{!"stream_state_s", !6, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !3, i64 28}
!57 = !{!58, !6, i64 16}
!58 = !{!"stream_template_s", !6, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !2, i64 28, !6, i64 32, !6, i64 40, !6, i64 48}
!59 = !{!58, !6, i64 32}
!60 = !{!10, !10, i64 0}
!61 = !{!62, !10, i64 48}
!62 = !{!"gx_transfer_map_s", !9, i64 0, !6, i64 24, !63, i64 32, !10, i64 48, !3, i64 56}
!63 = !{!"gs_mapping_closure_s", !6, i64 0, !6, i64 8}
!64 = !{!62, !6, i64 24}
!65 = !{!25, !10, i64 24}
!66 = !{!8, !6, i64 10200}
!67 = !{!68, !6, i64 8}
!68 = !{!"tile_loc_s", !2, i64 0, !6, i64 8}
!69 = !{!70, !2, i64 360}
!70 = !{!"gx_clist_state_s", !3, i64 0, !71, i64 16, !2, i64 360, !10, i64 368, !10, i64 376, !26, i64 384, !3, i64 392, !3, i64 408, !72, i64 1720, !2, i64 1736, !12, i64 1740, !12, i64 1742, !2, i64 1744, !2, i64 1748, !2, i64 1752, !24, i64 1760, !73, i64 1776}
!71 = !{!"gx_device_color_saved_s", !6, i64 0, !3, i64 8, !26, i64 336}
!72 = !{!"", !2, i64 0, !2, i64 4, !2, i64 8, !2, i64 12}
!73 = !{!"gx_colors_usage_s", !10, i64 0, !2, i64 8, !74, i64 12}
!74 = !{!"gs_int_rect_s", !26, i64 0, !26, i64 8}
!75 = !{!68, !2, i64 0}
!76 = !{!25, !12, i64 32}
!77 = !{!8, !12, i64 10304}
!78 = !{!25, !12, i64 34}
!79 = !{!8, !12, i64 10306}
!80 = !{!25, !12, i64 36}
!81 = !{!8, !12, i64 10308}
!82 = !{!8, !2, i64 10320}
!83 = !{!8, !2, i64 10324}
!84 = !{!8, !2, i64 10328}
!85 = !{!70, !2, i64 1752}
!86 = !{!8, !6, i64 1824}
!87 = !{!25, !2, i64 40}
!88 = !{!8, !2, i64 1868}
!89 = !{!90, !12, i64 14}
!90 = !{!"", !91, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !10, i64 16, !3, i64 24, !3, i64 25, !12, i64 26, !12, i64 28, !12, i64 30, !3, i64 32}
!91 = !{!"gx_cached_bits_head_s", !2, i64 0, !2, i64 4}
!92 = !{!8, !2, i64 10284}
!93 = !{!90, !12, i64 30}
!94 = !{!90, !10, i64 16}
!95 = !{!70, !10, i64 368}
!96 = !{!8, !10, i64 10296}
!97 = !{!25, !6, i64 0}
!98 = !{!8, !6, i64 10272}
!99 = !{!25, !2, i64 8}
!100 = !{!8, !6, i64 1872}
!101 = !{!8, !2, i64 1864}
!102 = !{!103, !10, i64 0}
!103 = !{!"", !10, i64 0}
!104 = !{!8, !6, i64 1776}
!105 = !{!8, !2, i64 1832}
!106 = !{i64 0, i64 8, !5, i64 8, i64 4, !1, i64 12, i64 4, !1, i64 16, i64 4, !1, i64 24, i64 8, !60, i64 32, i64 2, !107, i64 34, i64 2, !107, i64 36, i64 2, !107, i64 38, i64 2, !107, i64 40, i64 4, !1}
!107 = !{!12, !12, i64 0}
!108 = !{!25, !2, i64 12}
!109 = !{!25, !12, i64 38}
!110 = !{!25, !2, i64 16}
!111 = !{!8, !2, i64 1856}
!112 = !{!8, !2, i64 10268}
!113 = !{!8, !2, i64 1848}
!114 = !{!90, !2, i64 4}
!115 = !{!90, !12, i64 8}
!116 = !{!90, !12, i64 10}
!117 = !{!90, !12, i64 26}
!118 = !{!90, !12, i64 12}
!119 = !{!90, !3, i64 25}
!120 = !{!90, !3, i64 24}
!121 = !{!90, !3, i64 32}
!122 = !{!90, !12, i64 28}
!123 = !{!8, !6, i64 1728}
!124 = !{!125, !2, i64 17152}
!125 = !{!"gx_device_printer_s", !2, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !9, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !11, i64 96, !14, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !2, i64 1052, !2, i64 1056, !16, i64 1064, !6, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !126, i64 12968, !3, i64 13056, !2, i64 17152, !2, i64 17156, !2, i64 17160, !2, i64 17164, !2, i64 17168, !2, i64 17172, !6, i64 17176, !10, i64 17184, !6, i64 17192, !6, i64 17200, !6, i64 17208, !6, i64 17216, !6, i64 17224, !2, i64 17232, !6, i64 17240, !2, i64 17248, !2, i64 17252, !127, i64 17256, !2, i64 17288, !6, i64 17296, !19, i64 17304, !19, i64 17888}
!126 = !{!"gx_printer_device_procs_s", !6, i64 0, !6, i64 8, !20, i64 16, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80}
!127 = !{!"bg_print_s", !6, i64 0, !6, i64 8, !6, i64 16, !2, i64 24, !2, i64 28}
