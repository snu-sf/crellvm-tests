; ModuleID = './gsicc_create.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_xfont_procs_s = type opaque
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.gsicc_link_cache_s = type { %struct.gsicc_link_s*, i32, %struct.rc_header_s, %struct.gs_memory_s*, %struct.gx_monitor_s*, %struct.gx_semaphore_s*, i32 }
%struct.gsicc_link_s = type { i8*, %struct.gscms_procs_s, %struct.gsicc_hashlink_s, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_s*, %struct.gx_semaphore_s*, i32, i32, i32, i32, i32, i32, %struct.gscms_procs_s, i32, i32, i32 }
%struct.gsicc_hashlink_s = type { i64, i64, i64, i64 }
%struct.gscms_procs_s = type { void (%struct.gx_device_s*, %struct.gsicc_link_s*, %struct.gsicc_bufferdesc_s*, %struct.gsicc_bufferdesc_s*, i8*, i8*)*, void (%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32)*, void (%struct.gsicc_link_s*)*, i32 (i8*, i32)* }
%struct.gsicc_bufferdesc_s = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gx_semaphore_s = type { %struct.gs_memory_s*, %union.gp_semaphore }
%union.gp_semaphore = type { i8* }
%struct.gsicc_profile_cache_s = type { %struct.gsicc_profile_entry_s*, i32, %struct.rc_header_s, %struct.gs_memory_s* }
%struct.gsicc_profile_entry_s = type { %struct.gs_color_space_s*, %struct.gsicc_profile_entry_s*, i64 }
%struct.gs_halftone_s = type opaque
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.8 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.7, %struct.anon.7, %struct.anon.7, %struct.anon.7 }
%struct.anon.7 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.8 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
%struct.gx_cie_vector_cache3_s = type { [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.cie_interpolation_range_s] }
%struct.gx_cie_vector_cache_s = type { %struct.cie_cache_floats_s, %struct.cie_cache_vectors_s }
%struct.cie_cache_floats_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, double, double, %struct.cie_linear_params_s }
%struct.cie_linear_params_s = type { i32, float, float }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { float, float, float, [3 x %struct.cie_interpolation_range_s] }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.cie_interpolation_range_s = type { float, float }
%struct.gx_cie_float_fixed_cache_s = type { %struct.cie_cache_floats_s, %union.if_ }
%union.if_ = type { %struct.cie_cache_ints_s }
%struct.cie_cache_ints_s = type { %struct.cie_cache_params_s, [512 x i32] }
%union.gx_cie_scalar_cache_s = type { %struct.cie_cache_floats_s }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_pattern_type_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type { i64, i64, i32, i32, %struct.rc_header_s, i32 (<2 x float>, float, i16*, float*, %struct.gs_imager_state_s*, %struct.gs_color_space_s*)*, i32, i32, %struct.gx_cie_vector_cache3_s, %struct.gs_cie_wbsd_s, i32, %struct.gx_cie_vector_cache3_s, i32 }
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type opaque
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type opaque
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type opaque
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_param_list_s = type opaque
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
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
%struct.icProfile = type { %struct.icHeader, i32, [1 x i8] }
%struct.icHeader = type { i32, i32, i32, i32, i32, i32, %struct.icDateTimeNumber, i32, i32, i32, i32, i32, [2 x i32], i32, %struct.icXYZNumber, i32, [44 x i8] }
%struct.icDateTimeNumber = type { i16, i16, i16, i16, i16, i16 }
%struct.icXYZNumber = type { i32, i32, i32 }
%struct.gsicc_tag = type { i32, i32, i32, i8 }
%struct.gsicc_lutatob = type { float*, %struct.gsicc_clut*, float*, %struct.gs_matrix3_s*, float*, i32, i32, %struct.gs_vector3_s*, %struct.gs_vector3_s*, float* }
%struct.gsicc_clut = type { i16*, i8*, [4 x i32], i32, i32, i32, i32 }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.4 }
%struct.gs_cie_common_s = type { i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i8*, %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon }
%struct.gs_cie_common_proc3_s = type { [3 x float (double, %struct.gs_cie_common_s*)*] }
%struct.anon = type { [3 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_abc_proc3_s = type { [3 x float (double, %struct.gs_cie_abc_s*)*] }
%struct.anon.4 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, float (double, %struct.gs_cie_a_s*)*, %struct.gs_vector3_s, %struct.anon.5 }
%struct.anon.5 = type { %struct.gx_cie_vector_cache_s }
%struct.gs_cie_defg_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.0, %struct.gs_range4_s, %struct.gs_cie_defg_proc4_s, %struct.gs_range4_s, %struct.gx_color_lookup_table_s, %struct.anon.1 }
%struct.anon.0 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_defg_proc4_s = type { [4 x float (double, %struct.gs_cie_defg_s*)*] }
%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.anon.1 = type { [4 x %union.gx_cie_scalar_cache_s] }
%struct.gs_cie_def_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.2, %struct.gs_range3_s, %struct.gs_cie_def_proc3_s, %struct.gs_range3_s, %struct.gx_color_lookup_table_s, %struct.anon.3 }
%struct.anon.2 = type { i32, %struct.gx_cie_vector_cache3_s }
%struct.gs_cie_def_proc3_s = type { [3 x float (double, %struct.gs_cie_def_s*)*] }
%struct.anon.3 = type { [3 x %union.gx_cie_scalar_cache_s] }

@gsicc_create_from_cal.TRC_Tags = private unnamed_addr constant [3 x i32] [i32 1918128707, i32 1733579331, i32 1649693251], align 4
@.str = private unnamed_addr constant [22 x i8] c"gsicc_create_from_cal\00", align 1
@__func__.gsicc_create_fromabc = private unnamed_addr constant [21 x i8] c"gsicc_create_fromabc\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"./base/gsicc_create.c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Create ICC from CIEABC failed\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed in ICC creation from ABC mashed. CLUT\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Failed in ICC creation from ABC. Merge\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Failed in ICC creation from ABC. Profile\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Allocation of ICC a curves failed\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Allocation of ICC m curves failed\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Allocation of ICC clut failed\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Allocation of ICC clut data failed\00", align 1
@__func__.gsicc_create_froma = private unnamed_addr constant [19 x i8] c"gsicc_create_froma\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Create from CIEA failed\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to create ICC mashed CLUT\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to create ICC AtoB Profile\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"gsicc_create_fromdefg\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"gsicc_create_fromdef\00", align 1
@desc_name = internal constant [29 x i8] c"Ghostscript Internal Profile\00", align 16
@copy_right = internal constant [32 x i8] c"Copyright Artifex Software 2009\00", align 16
@__func__.gsicc_compute_cam = private unnamed_addr constant [18 x i8] c"gsicc_compute_cam\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Allocation of ICC cam failed\00", align 1
@gsicc_create_compute_cam.cat02matrix = private unnamed_addr constant [9 x float] [float 0x3FE7731900000000, float 0x3FDB7E9100000000, float 0xBFC4C98600000000, float 0xBFE683E420000000, float 0x3FFB28F5C0000000, float 0x3F78FC5040000000, float 0x3F689374C0000000, float 0x3F8BDA5120000000, float 0x3FEF780340000000], align 16
@gsicc_create_compute_cam.cat02matrixinv = private unnamed_addr constant [9 x float] [float 0x3FF189A020000000, float 0xBFD1D97F60000000, float 0x3FC762B6A0000000, float 0x3FDD14E3C0000000, float 0x3FDE4DD300000000, float 0x3FB2752540000000, float 0xBF83A92A40000000, float 0xBF7758E220000000, float 0x3FF03EAB40000000], align 16
@.str.16 = private unnamed_addr constant [25 x i8] c"gsicc_create_mashed_clut\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Allocation of ICC clut short data failed\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"Creation of ICC clut failed\00", align 1
@__func__.gsicc_create_clut = private unnamed_addr constant [18 x i8] c"gsicc_create_clut\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"Allocation of cie to xyz transform failed\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Allocation of input_sample arrays failed\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"gsicc_create_abc_merge\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Allocation of ICC b curves failed\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"create_lutAtoBprofile\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Allocation of ICC tag list failed\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Allocation of ICC buffer failed\00", align 1
@gsicc_matrix3_to_mlut.grid_points = private unnamed_addr constant [8 x [3 x float]] [[3 x float] zeroinitializer, [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 0.000000e+00], [3 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]], align 16
@.str.26 = private unnamed_addr constant [29 x i8] c"gsicc_create_free_luta2bpart\00", align 1
@__func__.gsicc_create_defg_common = private unnamed_addr constant [25 x i8] c"gsicc_create_defg_common\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"Failed to create ICC clut\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Failed to create ICC abc merge\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"Failed to create ICC lutAtoB\00", align 1

; Function Attrs: nounwind uwtable
define %struct.cmm_profile_s* @gsicc_create_from_cal(float* %white, float* %black, float* %gamma, float* %matrix, %struct.gs_memory_s* %memory, i32 %num_colors) #0 {
entry:
  %retval = alloca %struct.cmm_profile_s*, align 8
  %white.addr = alloca float*, align 8
  %black.addr = alloca float*, align 8
  %gamma.addr = alloca float*, align 8
  %matrix.addr = alloca float*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %num_colors.addr = alloca i32, align 4
  %iccprofile = alloca %struct.icProfile, align 4
  %header = alloca %struct.icHeader*, align 8
  %profile_size = alloca i32, align 4
  %k = alloca i32, align 4
  %num_tags = alloca i32, align 4
  %tag_list = alloca %struct.gsicc_tag*, align 8
  %encode_gamma = alloca i16, align 2
  %curr_ptr = alloca i8*, align 8
  %last_tag = alloca i32, align 4
  %temp_XYZ = alloca [3 x i32], align 4
  %tag_location = alloca i32, align 4
  %TRC_Tags = alloca [3 x i32], align 4
  %trc_tag_size = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %result = alloca %struct.cmm_profile_s*, align 8
  %cleanup.dest.slot = alloca i32
  store float* %white, float** %white.addr, align 8, !tbaa !1
  store float* %black, float** %black.addr, align 8, !tbaa !1
  store float* %gamma, float** %gamma.addr, align 8, !tbaa !1
  store float* %matrix, float** %matrix.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store i32 %num_colors, i32* %num_colors.addr, align 4, !tbaa !5
  %0 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %header1 = getelementptr inbounds %struct.icProfile, %struct.icProfile* %iccprofile, i32 0, i32 0
  store %struct.icHeader* %header1, %struct.icHeader** %header, align 8, !tbaa !1
  %2 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %num_tags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast %struct.gsicc_tag** %tag_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i16* %encode_gamma to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #1
  %7 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %last_tag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast [3 x i32]* %temp_XYZ to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = bitcast i32* %tag_location to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast [3 x i32]* %TRC_Tags to i8*
  call void @llvm.lifetime.start(i64 12, i8* %11) #1
  %12 = bitcast [3 x i32]* %TRC_Tags to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* bitcast ([3 x i32]* @gsicc_create_from_cal.TRC_Tags to i8*), i64 12, i32 4, i1 false)
  %13 = bitcast i32* %trc_tag_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast %struct.cmm_profile_s** %result to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  call void @setheader_common(%struct.icHeader* %16) #6
  %17 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.icHeader, %struct.icHeader* %17, i32 0, i32 5
  store i32 1482250784, i32* %pcs, align 4, !tbaa !7
  store i32 128, i32* %profile_size, align 4, !tbaa !5
  %18 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %deviceClass = getelementptr inbounds %struct.icHeader, %struct.icHeader* %18, i32 0, i32 3
  store i32 1935896178, i32* %deviceClass, align 4, !tbaa !12
  %19 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %19, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %20 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %colorSpace = getelementptr inbounds %struct.icHeader, %struct.icHeader* %20, i32 0, i32 4
  store i32 1380401696, i32* %colorSpace, align 4, !tbaa !13
  store i32 10, i32* %num_tags, align 4, !tbaa !5
  br label %if.end.6

if.else:                                          ; preds = %entry
  %21 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %21, 1
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %22 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %colorSpace4 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %22, i32 0, i32 4
  store i32 1196573017, i32* %colorSpace4, align 4, !tbaa !13
  store i32 5, i32* %num_tags, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %TRC_Tags, i32 0, i64 0
  store i32 1800688195, i32* %arrayidx, align 4, !tbaa !14
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %24 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %26 = load i32, i32* %num_tags, align 4, !tbaa !5
  %conv = sext i32 %26 to i64
  %mul = mul i64 16, %conv
  %conv7 = trunc i64 %mul to i32
  %call = call i8* %24(%struct.gs_memory_s* %25, i32 %conv7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #6
  %27 = bitcast i8* %call to %struct.gsicc_tag*
  store %struct.gsicc_tag* %27, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %28 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %cmp8 = icmp eq %struct.gsicc_tag* %28, null
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.6
  %29 = load i32, i32* %num_tags, align 4, !tbaa !5
  %mul12 = mul nsw i32 12, %29
  %30 = load i32, i32* %profile_size, align 4, !tbaa !5
  %add = add nsw i32 %30, %mul12
  store i32 %add, i32* %profile_size, align 4, !tbaa !5
  %31 = load i32, i32* %profile_size, align 4, !tbaa !5
  %add13 = add nsw i32 %31, 4
  store i32 %add13, i32* %profile_size, align 4, !tbaa !5
  store i32 -1, i32* %last_tag, align 4, !tbaa !5
  %32 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %33 = load i32, i32* %num_tags, align 4, !tbaa !5
  call void @init_common_tags(%struct.gsicc_tag* %32, i32 %33, i32* %last_tag) #6
  %34 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %34, 3
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.11
  %35 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %35, i32* %last_tag, i32 1918392666, i32 12) #6
  %36 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %36, i32* %last_tag, i32 1733843290, i32 12) #6
  %37 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %37, i32* %last_tag, i32 1649957210, i32 12) #6
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.11
  %38 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %38, i32* %last_tag, i32 2004119668, i32 12) #6
  %39 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %39, i32* %last_tag, i32 1651208308, i32 12) #6
  store i32 8, i32* %trc_tag_size, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %40 = load i32, i32* %k, align 4, !tbaa !5
  %41 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %40, %41
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %43 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %43 to i64
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %TRC_Tags, i32 0, i64 %idxprom
  %44 = load i32, i32* %arrayidx20, align 4, !tbaa !14
  %45 = load i32, i32* %trc_tag_size, align 4, !tbaa !5
  call void @init_tag(%struct.gsicc_tag* %42, i32* %last_tag, i32 %44, i32 %45) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %for.end
  %47 = load i32, i32* %k, align 4, !tbaa !5
  %48 = load i32, i32* %num_tags, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %47, %48
  br i1 %cmp22, label %for.body.24, label %for.end.30

for.body.24:                                      ; preds = %for.cond.21
  %49 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom25 = sext i32 %49 to i64
  %50 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %50, i64 %idxprom25
  %size = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx26, i32 0, i32 2
  %51 = load i32, i32* %size, align 4, !tbaa !18
  %52 = load i32, i32* %profile_size, align 4, !tbaa !5
  %add27 = add i32 %52, %51
  store i32 %add27, i32* %profile_size, align 4, !tbaa !5
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %53 = load i32, i32* %k, align 4, !tbaa !5
  %inc29 = add nsw i32 %53, 1
  store i32 %inc29, i32* %k, align 4, !tbaa !5
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 3
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !20
  %procs31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %55, i32 0, i32 1
  %alloc_bytes32 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs31, i32 0, i32 7
  %56 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes32, align 8, !tbaa !15
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory33, align 8, !tbaa !20
  %59 = load i32, i32* %profile_size, align 4, !tbaa !5
  %call34 = call i8* %56(%struct.gs_memory_s* %58, i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #6
  store i8* %call34, i8** %buffer, align 8, !tbaa !1
  %60 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp35 = icmp eq i8* %60, null
  br i1 %cmp35, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %for.end.30
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %64 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %65 = bitcast %struct.gsicc_tag* %64 to i8*
  call void %62(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #6
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %for.end.30
  %66 = load i8*, i8** %buffer, align 8, !tbaa !1
  store i8* %66, i8** %curr_ptr, align 8, !tbaa !1
  %67 = load i32, i32* %profile_size, align 4, !tbaa !5
  %68 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %size40 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %68, i32 0, i32 0
  store i32 %67, i32* %size40, align 4, !tbaa !22
  %69 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %70 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  call void @copy_header(i8* %69, %struct.icHeader* %70) #6
  %71 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %71, i64 128
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %72 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %73 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %74 = load i32, i32* %num_tags, align 4, !tbaa !5
  %conv41 = sext i32 %74 to i64
  call void @copy_tagtable(i8* %72, %struct.gsicc_tag* %73, i64 %conv41) #6
  %75 = load i32, i32* %num_tags, align 4, !tbaa !5
  %mul42 = mul nsw i32 12, %75
  %76 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul42 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %76, i64 %idx.ext
  store i8* %add.ptr43, i8** %curr_ptr, align 8, !tbaa !1
  %77 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr44 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %add.ptr44, i8** %curr_ptr, align 8, !tbaa !1
  %78 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %79 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @add_common_tag_data(i8* %78, %struct.gsicc_tag* %79) #6
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.54, %if.end.39
  %80 = load i32, i32* %k, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %80, 2
  br i1 %cmp46, label %for.body.48, label %for.end.56

for.body.48:                                      ; preds = %for.cond.45
  %81 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom49 = sext i32 %81 to i64
  %82 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %82, i64 %idxprom49
  %size51 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx50, i32 0, i32 2
  %83 = load i32, i32* %size51, align 4, !tbaa !18
  %84 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext52 = zext i32 %83 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %84, i64 %idx.ext52
  store i8* %add.ptr53, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.48
  %85 = load i32, i32* %k, align 4, !tbaa !5
  %inc55 = add nsw i32 %85, 1
  store i32 %inc55, i32* %k, align 4, !tbaa !5
  br label %for.cond.45

for.end.56:                                       ; preds = %for.cond.45
  store i32 2, i32* %tag_location, align 4, !tbaa !5
  %86 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %86, 3
  br i1 %cmp57, label %if.then.59, label %if.end.77

if.then.59:                                       ; preds = %for.end.56
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.74, %if.then.59
  %87 = load i32, i32* %k, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %87, 3
  br i1 %cmp61, label %for.body.63, label %for.end.76

for.body.63:                                      ; preds = %for.cond.60
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  %88 = load i32, i32* %k, align 4, !tbaa !5
  %mul64 = mul nsw i32 %88, 3
  %idxprom65 = sext i32 %mul64 to i64
  %89 = load float*, float** %matrix.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds float, float* %89, i64 %idxprom65
  call void @get_XYZ_doubletr(i32* %arraydecay, float* %arrayidx66) #6
  %90 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arraydecay67 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  call void @add_xyzdata(i8* %90, i32* %arraydecay67) #6
  %91 = load i32, i32* %tag_location, align 4, !tbaa !5
  %idxprom68 = sext i32 %91 to i64
  %92 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %92, i64 %idxprom68
  %size70 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx69, i32 0, i32 2
  %93 = load i32, i32* %size70, align 4, !tbaa !18
  %94 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext71 = zext i32 %93 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %94, i64 %idx.ext71
  store i8* %add.ptr72, i8** %curr_ptr, align 8, !tbaa !1
  %95 = load i32, i32* %tag_location, align 4, !tbaa !5
  %inc73 = add nsw i32 %95, 1
  store i32 %inc73, i32* %tag_location, align 4, !tbaa !5
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.body.63
  %96 = load i32, i32* %k, align 4, !tbaa !5
  %inc75 = add nsw i32 %96, 1
  store i32 %inc75, i32* %k, align 4, !tbaa !5
  br label %for.cond.60

for.end.76:                                       ; preds = %for.cond.60
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %for.end.56
  %arraydecay78 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  %97 = load float*, float** %white.addr, align 8, !tbaa !1
  call void @get_XYZ_doubletr(i32* %arraydecay78, float* %97) #6
  %98 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arraydecay79 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  call void @add_xyzdata(i8* %98, i32* %arraydecay79) #6
  %99 = load i32, i32* %tag_location, align 4, !tbaa !5
  %idxprom80 = sext i32 %99 to i64
  %100 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %100, i64 %idxprom80
  %size82 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx81, i32 0, i32 2
  %101 = load i32, i32* %size82, align 4, !tbaa !18
  %102 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext83 = zext i32 %101 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %102, i64 %idx.ext83
  store i8* %add.ptr84, i8** %curr_ptr, align 8, !tbaa !1
  %103 = load i32, i32* %tag_location, align 4, !tbaa !5
  %inc85 = add nsw i32 %103, 1
  store i32 %inc85, i32* %tag_location, align 4, !tbaa !5
  %arraydecay86 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  %104 = load float*, float** %black.addr, align 8, !tbaa !1
  call void @get_XYZ_doubletr(i32* %arraydecay86, float* %104) #6
  %105 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arraydecay87 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  call void @add_xyzdata(i8* %105, i32* %arraydecay87) #6
  %106 = load i32, i32* %tag_location, align 4, !tbaa !5
  %idxprom88 = sext i32 %106 to i64
  %107 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %107, i64 %idxprom88
  %size90 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx89, i32 0, i32 2
  %108 = load i32, i32* %size90, align 4, !tbaa !18
  %109 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext91 = zext i32 %108 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %109, i64 %idx.ext91
  store i8* %add.ptr92, i8** %curr_ptr, align 8, !tbaa !1
  %110 = load i32, i32* %tag_location, align 4, !tbaa !5
  %inc93 = add nsw i32 %110, 1
  store i32 %inc93, i32* %tag_location, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.107, %if.end.77
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %112 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %111, %112
  br i1 %cmp95, label %for.body.97, label %for.end.109

for.body.97:                                      ; preds = %for.cond.94
  %113 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom98 = sext i32 %113 to i64
  %114 = load float*, float** %gamma.addr, align 8, !tbaa !1
  %arrayidx99 = getelementptr inbounds float, float* %114, i64 %idxprom98
  %115 = load float, float* %arrayidx99, align 4, !tbaa !23
  %call100 = call zeroext i16 @float2u8Fixed8(float %115) #6
  store i16 %call100, i16* %encode_gamma, align 2, !tbaa !25
  %116 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %117 = load i16, i16* %encode_gamma, align 2, !tbaa !25
  call void @add_gammadata(i8* %116, i16 zeroext %117, i32 1668641398) #6
  %118 = load i32, i32* %tag_location, align 4, !tbaa !5
  %idxprom101 = sext i32 %118 to i64
  %119 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %119, i64 %idxprom101
  %size103 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx102, i32 0, i32 2
  %120 = load i32, i32* %size103, align 4, !tbaa !18
  %121 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext104 = zext i32 %120 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %121, i64 %idx.ext104
  store i8* %add.ptr105, i8** %curr_ptr, align 8, !tbaa !1
  %122 = load i32, i32* %tag_location, align 4, !tbaa !5
  %inc106 = add nsw i32 %122, 1
  store i32 %inc106, i32* %tag_location, align 4, !tbaa !5
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.97
  %123 = load i32, i32* %k, align 4, !tbaa !5
  %inc108 = add nsw i32 %123, 1
  store i32 %inc108, i32* %k, align 4, !tbaa !5
  br label %for.cond.94

for.end.109:                                      ; preds = %for.cond.94
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call110 = call %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s* null, %struct.gs_memory_s* %124, i8* null, i32 0) #6
  store %struct.cmm_profile_s* %call110, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %125 = load i8*, i8** %buffer, align 8, !tbaa !1
  %126 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %buffer111 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %126, i32 0, i32 14
  store i8* %125, i8** %buffer111, align 8, !tbaa !26
  %127 = load i32, i32* %profile_size, align 4, !tbaa !5
  %128 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %buffer_size = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %128, i32 0, i32 11
  store i32 %127, i32* %buffer_size, align 4, !tbaa !32
  %129 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %conv112 = trunc i32 %129 to i8
  %130 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %130, i32 0, i32 0
  store i8 %conv112, i8* %num_comps, align 1, !tbaa !33
  %131 = load i32, i32* %num_colors.addr, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %131, 3
  br i1 %cmp113, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %for.end.109
  %132 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %data_cs = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %132, i32 0, i32 5
  store i32 2, i32* %data_cs, align 4, !tbaa !34
  %133 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %default_match = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %133, i32 0, i32 4
  store i32 12, i32* %default_match, align 4, !tbaa !35
  br label %if.end.119

if.else.116:                                      ; preds = %for.end.109
  %134 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %data_cs117 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %134, i32 0, i32 5
  store i32 1, i32* %data_cs117, align 4, !tbaa !34
  %135 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %default_match118 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %135, i32 0, i32 4
  store i32 11, i32* %default_match118, align 4, !tbaa !35
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  %136 = load i8*, i8** %buffer, align 8, !tbaa !1
  %137 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %hashcode = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %137, i32 0, i32 7
  %138 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %buffer_size120 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %138, i32 0, i32 11
  %139 = load i32, i32* %buffer_size120, align 4, !tbaa !32
  call void @gsicc_get_icc_buff_hash(i8* %136, i64* %hashcode, i32 %139) #6
  %140 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  %hash_is_valid = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %140, i32 0, i32 8
  store i32 1, i32* %hash_is_valid, align 4, !tbaa !36
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs121 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %141, i32 0, i32 1
  %free_object122 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs121, i32 0, i32 2
  %142 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object122, align 8, !tbaa !21
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %144 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %145 = bitcast %struct.gsicc_tag* %144 to i8*
  call void %142(%struct.gs_memory_s* %143, i8* %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0)) #6
  %146 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %result, align 8, !tbaa !1
  store %struct.cmm_profile_s* %146, %struct.cmm_profile_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.119, %if.then.37, %if.then.10, %if.else.5
  %147 = bitcast %struct.cmm_profile_s** %result to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %trc_tag_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast [3 x i32]* %TRC_Tags to i8*
  call void @llvm.lifetime.end(i64 12, i8* %150) #1
  %151 = bitcast i32* %tag_location to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast [3 x i32]* %temp_XYZ to i8*
  call void @llvm.lifetime.end(i64 12, i8* %152) #1
  %153 = bitcast i32* %last_tag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i16* %encode_gamma to i8*
  call void @llvm.lifetime.end(i64 2, i8* %155) #1
  %156 = bitcast %struct.gsicc_tag** %tag_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32* %num_tags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %160) #1
  %161 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.end(i64 136, i8* %161) #1
  %162 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %retval
  ret %struct.cmm_profile_s* %162
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @setheader_common(%struct.icHeader* %header) #0 {
entry:
  %header.addr = alloca %struct.icHeader*, align 8
  store %struct.icHeader* %header, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %0 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %cmmId = getelementptr inbounds %struct.icHeader, %struct.icHeader* %0, i32 0, i32 1
  store i32 0, i32* %cmmId, align 4, !tbaa !37
  %1 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.icHeader, %struct.icHeader* %1, i32 0, i32 2
  store i32 69206016, i32* %version, align 4, !tbaa !38
  %2 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %date = getelementptr inbounds %struct.icHeader, %struct.icHeader* %2, i32 0, i32 6
  call void @setdatetime(%struct.icDateTimeNumber* %date) #6
  %3 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.icHeader, %struct.icHeader* %3, i32 0, i32 7
  store i32 1633907568, i32* %magic, align 4, !tbaa !39
  %4 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %platform = getelementptr inbounds %struct.icHeader, %struct.icHeader* %4, i32 0, i32 8
  store i32 1095782476, i32* %platform, align 4, !tbaa !40
  %5 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %flags = getelementptr inbounds %struct.icHeader, %struct.icHeader* %5, i32 0, i32 9
  store i32 0, i32* %flags, align 4, !tbaa !41
  %6 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %manufacturer = getelementptr inbounds %struct.icHeader, %struct.icHeader* %6, i32 0, i32 10
  store i32 0, i32* %manufacturer, align 4, !tbaa !42
  %7 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %model = getelementptr inbounds %struct.icHeader, %struct.icHeader* %7, i32 0, i32 11
  store i32 0, i32* %model, align 4, !tbaa !43
  %8 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %attributes = getelementptr inbounds %struct.icHeader, %struct.icHeader* %8, i32 0, i32 12
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %attributes, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4, !tbaa !5
  %9 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %attributes1 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %9, i32 0, i32 12
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %attributes1, i32 0, i64 1
  store i32 0, i32* %arrayidx2, align 4, !tbaa !5
  %10 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %renderingIntent = getelementptr inbounds %struct.icHeader, %struct.icHeader* %10, i32 0, i32 13
  store i32 3, i32* %renderingIntent, align 4, !tbaa !44
  %call = call i32 @double2XYZtype(float 0x3FEEDABA00000000) #6
  %11 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %illuminant = getelementptr inbounds %struct.icHeader, %struct.icHeader* %11, i32 0, i32 14
  %X = getelementptr inbounds %struct.icXYZNumber, %struct.icXYZNumber* %illuminant, i32 0, i32 0
  store i32 %call, i32* %X, align 4, !tbaa !45
  %call3 = call i32 @double2XYZtype(float 1.000000e+00) #6
  %12 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %illuminant4 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %12, i32 0, i32 14
  %Y = getelementptr inbounds %struct.icXYZNumber, %struct.icXYZNumber* %illuminant4, i32 0, i32 1
  store i32 %call3, i32* %Y, align 4, !tbaa !46
  %call5 = call i32 @double2XYZtype(float 0x3FEA6594A0000000) #6
  %13 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %illuminant6 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %13, i32 0, i32 14
  %Z = getelementptr inbounds %struct.icXYZNumber, %struct.icXYZNumber* %illuminant6, i32 0, i32 2
  store i32 %call5, i32* %Z, align 4, !tbaa !47
  %14 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %creator = getelementptr inbounds %struct.icHeader, %struct.icHeader* %14, i32 0, i32 15
  store i32 0, i32* %creator, align 4, !tbaa !48
  %15 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %reserved = getelementptr inbounds %struct.icHeader, %struct.icHeader* %15, i32 0, i32 16
  %arraydecay = getelementptr inbounds [44 x i8], [44 x i8]* %reserved, i32 0, i32 0
  %call7 = call i8* @memset(i8* %arraydecay, i32 0, i64 44) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_common_tags(%struct.gsicc_tag* %tag_list, i32 %num_tags, i32* %last_tag) #0 {
entry:
  %tag_list.addr = alloca %struct.gsicc_tag*, align 8
  %num_tags.addr = alloca i32, align 4
  %last_tag.addr = alloca i32*, align 8
  %curr_tag = alloca i32, align 4
  %temp_size = alloca i32, align 4
  store %struct.gsicc_tag* %tag_list, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  store i32 %num_tags, i32* %num_tags.addr, align 4, !tbaa !5
  store i32* %last_tag, i32** %last_tag.addr, align 8, !tbaa !1
  %0 = bitcast i32* %curr_tag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %temp_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32*, i32** %last_tag.addr, align 8, !tbaa !1
  %3 = load i32, i32* %2, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %curr_tag, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32*, i32** %last_tag.addr, align 8, !tbaa !1
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %curr_tag, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %num_tags.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %6, 12
  %add1 = add nsw i32 128, %mul
  %add2 = add nsw i32 %add1, 4
  %7 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %8, i64 %idxprom
  %offset = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx, i32 0, i32 1
  store i32 %add2, i32* %offset, align 4, !tbaa !49
  %9 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %10, i64 %idxprom3
  %sig = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx4, i32 0, i32 0
  store i32 1684370275, i32* %sig, align 4, !tbaa !50
  %call = call i64 @strlen(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @desc_name, i32 0, i32 0)) #8
  %mul5 = mul i64 2, %call
  %add6 = add i64 %mul5, 28
  %conv = trunc i64 %add6 to i32
  store i32 %conv, i32* %temp_size, align 4, !tbaa !5
  %11 = load i32, i32* %temp_size, align 4, !tbaa !5
  %call7 = call i32 @get_padding(i32 %11) #6
  %conv8 = trunc i32 %call7 to i8
  %12 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %13, i64 %idxprom9
  %byte_padding = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx10, i32 0, i32 3
  store i8 %conv8, i8* %byte_padding, align 1, !tbaa !51
  %14 = load i32, i32* %temp_size, align 4, !tbaa !5
  %15 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %16, i64 %idxprom11
  %byte_padding13 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx12, i32 0, i32 3
  %17 = load i8, i8* %byte_padding13, align 1, !tbaa !51
  %conv14 = zext i8 %17 to i32
  %add15 = add nsw i32 %14, %conv14
  %18 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %19, i64 %idxprom16
  %size = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx17, i32 0, i32 2
  store i32 %add15, i32* %size, align 4, !tbaa !18
  %20 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %curr_tag, align 4, !tbaa !5
  %21 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %sub = sub nsw i32 %21, 1
  %idxprom18 = sext i32 %sub to i64
  %22 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %22, i64 %idxprom18
  %offset20 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx19, i32 0, i32 1
  %23 = load i32, i32* %offset20, align 4, !tbaa !49
  %24 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %sub21 = sub nsw i32 %24, 1
  %idxprom22 = sext i32 %sub21 to i64
  %25 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %25, i64 %idxprom22
  %size24 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx23, i32 0, i32 2
  %26 = load i32, i32* %size24, align 4, !tbaa !18
  %add25 = add i32 %23, %26
  %27 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom26 = sext i32 %27 to i64
  %28 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %28, i64 %idxprom26
  %offset28 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx27, i32 0, i32 1
  store i32 %add25, i32* %offset28, align 4, !tbaa !49
  %29 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom29 = sext i32 %29 to i64
  %30 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %30, i64 %idxprom29
  %sig31 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx30, i32 0, i32 0
  store i32 1668313716, i32* %sig31, align 4, !tbaa !50
  %call32 = call i64 @strlen(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @copy_right, i32 0, i32 0)) #8
  %mul33 = mul i64 2, %call32
  %add34 = add i64 %mul33, 28
  %conv35 = trunc i64 %add34 to i32
  store i32 %conv35, i32* %temp_size, align 4, !tbaa !5
  %31 = load i32, i32* %temp_size, align 4, !tbaa !5
  %call36 = call i32 @get_padding(i32 %31) #6
  %conv37 = trunc i32 %call36 to i8
  %32 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom38 = sext i32 %32 to i64
  %33 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %33, i64 %idxprom38
  %byte_padding40 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx39, i32 0, i32 3
  store i8 %conv37, i8* %byte_padding40, align 1, !tbaa !51
  %34 = load i32, i32* %temp_size, align 4, !tbaa !5
  %35 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom41 = sext i32 %35 to i64
  %36 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %36, i64 %idxprom41
  %byte_padding43 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx42, i32 0, i32 3
  %37 = load i8, i8* %byte_padding43, align 1, !tbaa !51
  %conv44 = zext i8 %37 to i32
  %add45 = add nsw i32 %34, %conv44
  %38 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom46 = sext i32 %38 to i64
  %39 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %39, i64 %idxprom46
  %size48 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx47, i32 0, i32 2
  store i32 %add45, i32* %size48, align 4, !tbaa !18
  %40 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %41 = load i32*, i32** %last_tag.addr, align 8, !tbaa !1
  store i32 %40, i32* %41, align 4, !tbaa !5
  %42 = bitcast i32* %temp_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %curr_tag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_tag(%struct.gsicc_tag* %tag_list, i32* %last_tag, i32 %tagsig, i32 %datasize) #0 {
entry:
  %tag_list.addr = alloca %struct.gsicc_tag*, align 8
  %last_tag.addr = alloca i32*, align 8
  %tagsig.addr = alloca i32, align 4
  %datasize.addr = alloca i32, align 4
  %curr_tag = alloca i32, align 4
  store %struct.gsicc_tag* %tag_list, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  store i32* %last_tag, i32** %last_tag.addr, align 8, !tbaa !1
  store i32 %tagsig, i32* %tagsig.addr, align 4, !tbaa !14
  store i32 %datasize, i32* %datasize.addr, align 4, !tbaa !5
  %0 = bitcast i32* %curr_tag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32*, i32** %last_tag.addr, align 8, !tbaa !1
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %curr_tag, align 4, !tbaa !5
  %3 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %4 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %4, i64 %idxprom
  %offset = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx, i32 0, i32 1
  %5 = load i32, i32* %offset, align 4, !tbaa !49
  %6 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %sub1 = sub nsw i32 %6, 1
  %idxprom2 = sext i32 %sub1 to i64
  %7 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %7, i64 %idxprom2
  %size = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx3, i32 0, i32 2
  %8 = load i32, i32* %size, align 4, !tbaa !18
  %add4 = add i32 %5, %8
  %9 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %10, i64 %idxprom5
  %offset7 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx6, i32 0, i32 1
  store i32 %add4, i32* %offset7, align 4, !tbaa !49
  %11 = load i32, i32* %tagsig.addr, align 4, !tbaa !14
  %12 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %13, i64 %idxprom8
  %sig = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx9, i32 0, i32 0
  store i32 %11, i32* %sig, align 4, !tbaa !50
  %14 = load i32, i32* %datasize.addr, align 4, !tbaa !5
  %add10 = add nsw i32 8, %14
  %call = call i32 @get_padding(i32 %add10) #6
  %conv = trunc i32 %call to i8
  %15 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %16, i64 %idxprom11
  %byte_padding = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx12, i32 0, i32 3
  store i8 %conv, i8* %byte_padding, align 1, !tbaa !51
  %17 = load i32, i32* %datasize.addr, align 4, !tbaa !5
  %add13 = add nsw i32 8, %17
  %18 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %19, i64 %idxprom14
  %byte_padding16 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx15, i32 0, i32 3
  %20 = load i8, i8* %byte_padding16, align 1, !tbaa !51
  %conv17 = zext i8 %20 to i32
  %add18 = add nsw i32 %add13, %conv17
  %21 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %22, i64 %idxprom19
  %size21 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx20, i32 0, i32 2
  store i32 %add18, i32* %size21, align 4, !tbaa !18
  %23 = load i32, i32* %curr_tag, align 4, !tbaa !5
  %24 = load i32*, i32** %last_tag.addr, align 8, !tbaa !1
  store i32 %23, i32* %24, align 4, !tbaa !5
  %25 = bitcast i32* %curr_tag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_header(i8* %buffer, %struct.icHeader* %header) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %header.addr = alloca %struct.icHeader*, align 8
  %curr_ptr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store %struct.icHeader* %header, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %curr_ptr, align 8, !tbaa !1
  %2 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %3 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.icHeader, %struct.icHeader* %3, i32 0, i32 0
  %4 = load i32, i32* %size, align 4, !tbaa !22
  %conv = zext i32 %4 to i64
  call void @write_bigendian_4bytes(i8* %2, i64 %conv) #6
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %6, i32 0, i64 4) #7
  %7 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %7, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.icHeader, %struct.icHeader* %9, i32 0, i32 2
  %10 = load i32, i32* %version, align 4, !tbaa !38
  %conv2 = zext i32 %10 to i64
  call void @write_bigendian_4bytes(i8* %8, i64 %conv2) #6
  %11 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 4
  store i8* %add.ptr3, i8** %curr_ptr, align 8, !tbaa !1
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %13 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %deviceClass = getelementptr inbounds %struct.icHeader, %struct.icHeader* %13, i32 0, i32 3
  %14 = load i32, i32* %deviceClass, align 4, !tbaa !12
  %conv4 = zext i32 %14 to i64
  call void @write_bigendian_4bytes(i8* %12, i64 %conv4) #6
  %15 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr5, i8** %curr_ptr, align 8, !tbaa !1
  %16 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %17 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %colorSpace = getelementptr inbounds %struct.icHeader, %struct.icHeader* %17, i32 0, i32 4
  %18 = load i32, i32* %colorSpace, align 4, !tbaa !13
  %conv6 = zext i32 %18 to i64
  call void @write_bigendian_4bytes(i8* %16, i64 %conv6) #6
  %19 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %add.ptr7, i8** %curr_ptr, align 8, !tbaa !1
  %20 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %21 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %pcs = getelementptr inbounds %struct.icHeader, %struct.icHeader* %21, i32 0, i32 5
  %22 = load i32, i32* %pcs, align 4, !tbaa !7
  %conv8 = zext i32 %22 to i64
  call void @write_bigendian_4bytes(i8* %20, i64 %conv8) #6
  %23 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr9 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %add.ptr9, i8** %curr_ptr, align 8, !tbaa !1
  %24 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call10 = call i8* @memset(i8* %24, i32 0, i64 12) #7
  %25 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %25, i64 12
  store i8* %add.ptr11, i8** %curr_ptr, align 8, !tbaa !1
  %26 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %27 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %magic = getelementptr inbounds %struct.icHeader, %struct.icHeader* %27, i32 0, i32 7
  %28 = load i32, i32* %magic, align 4, !tbaa !39
  %conv12 = sext i32 %28 to i64
  call void @write_bigendian_4bytes(i8* %26, i64 %conv12) #6
  %29 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr13 = getelementptr inbounds i8, i8* %29, i64 4
  store i8* %add.ptr13, i8** %curr_ptr, align 8, !tbaa !1
  %30 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %31 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %platform = getelementptr inbounds %struct.icHeader, %struct.icHeader* %31, i32 0, i32 8
  %32 = load i32, i32* %platform, align 4, !tbaa !40
  %conv14 = zext i32 %32 to i64
  call void @write_bigendian_4bytes(i8* %30, i64 %conv14) #6
  %33 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr15 = getelementptr inbounds i8, i8* %33, i64 4
  store i8* %add.ptr15, i8** %curr_ptr, align 8, !tbaa !1
  %34 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call16 = call i8* @memset(i8* %34, i32 0, i64 24) #7
  %35 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr17 = getelementptr inbounds i8, i8* %35, i64 24
  store i8* %add.ptr17, i8** %curr_ptr, align 8, !tbaa !1
  %36 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %37 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %illuminant = getelementptr inbounds %struct.icHeader, %struct.icHeader* %37, i32 0, i32 14
  %X = getelementptr inbounds %struct.icXYZNumber, %struct.icXYZNumber* %illuminant, i32 0, i32 0
  %38 = load i32, i32* %X, align 4, !tbaa !45
  %conv18 = sext i32 %38 to i64
  call void @write_bigendian_4bytes(i8* %36, i64 %conv18) #6
  %39 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i8, i8* %39, i64 4
  store i8* %add.ptr19, i8** %curr_ptr, align 8, !tbaa !1
  %40 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %41 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %illuminant20 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %41, i32 0, i32 14
  %Y = getelementptr inbounds %struct.icXYZNumber, %struct.icXYZNumber* %illuminant20, i32 0, i32 1
  %42 = load i32, i32* %Y, align 4, !tbaa !46
  %conv21 = sext i32 %42 to i64
  call void @write_bigendian_4bytes(i8* %40, i64 %conv21) #6
  %43 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr22 = getelementptr inbounds i8, i8* %43, i64 4
  store i8* %add.ptr22, i8** %curr_ptr, align 8, !tbaa !1
  %44 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %45 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %illuminant23 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %45, i32 0, i32 14
  %Z = getelementptr inbounds %struct.icXYZNumber, %struct.icXYZNumber* %illuminant23, i32 0, i32 2
  %46 = load i32, i32* %Z, align 4, !tbaa !47
  %conv24 = sext i32 %46 to i64
  call void @write_bigendian_4bytes(i8* %44, i64 %conv24) #6
  %47 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr25 = getelementptr inbounds i8, i8* %47, i64 4
  store i8* %add.ptr25, i8** %curr_ptr, align 8, !tbaa !1
  %48 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call26 = call i8* @memset(i8* %48, i32 0, i64 48) #7
  %49 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_tagtable(i8* %buffer, %struct.gsicc_tag* %tag_list, i64 %num_tags) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %tag_list.addr = alloca %struct.gsicc_tag*, align 8
  %num_tags.addr = alloca i64, align 8
  %k = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store %struct.gsicc_tag* %tag_list, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  store i64 %num_tags, i64* %num_tags.addr, align 8, !tbaa !52
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %2, i8** %curr_ptr, align 8, !tbaa !1
  %3 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %4 = load i64, i64* %num_tags.addr, align 8, !tbaa !52
  call void @write_bigendian_4bytes(i8* %3, i64 %4) #6
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %k, align 4, !tbaa !5
  %conv = zext i32 %6 to i64
  %7 = load i64, i64* %num_tags.addr, align 8, !tbaa !52
  %cmp = icmp ult i64 %conv, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %10, i64 %idxprom
  %sig = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %sig, align 4, !tbaa !50
  %conv2 = zext i32 %11 to i64
  call void @write_bigendian_4bytes(i8* %8, i64 %conv2) #6
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %add.ptr3, i8** %curr_ptr, align 8, !tbaa !1
  %13 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom4 = zext i32 %14 to i64
  %15 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %15, i64 %idxprom4
  %offset = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx5, i32 0, i32 1
  %16 = load i32, i32* %offset, align 4, !tbaa !49
  %conv6 = zext i32 %16 to i64
  call void @write_bigendian_4bytes(i8* %13, i64 %conv6) #6
  %17 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %add.ptr7, i8** %curr_ptr, align 8, !tbaa !1
  %18 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom8 = zext i32 %19 to i64
  %20 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %20, i64 %idxprom8
  %size = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx9, i32 0, i32 2
  %21 = load i32, i32* %size, align 4, !tbaa !18
  %conv10 = zext i32 %21 to i64
  call void @write_bigendian_4bytes(i8* %18, i64 %conv10) #6
  %22 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %22, i64 4
  store i8* %add.ptr11, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add i32 %23, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_common_tag_data(i8* %buffer, %struct.gsicc_tag* %tag_list) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %tag_list.addr = alloca %struct.gsicc_tag*, align 8
  %curr_ptr = alloca i8*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store %struct.gsicc_tag* %tag_list, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %1, i8** %curr_ptr, align 8, !tbaa !1
  %2 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %3 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  call void @add_v4_text_tag(i8* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @desc_name, i32 0, i32 0), %struct.gsicc_tag* %3, i32 0) #6
  %4 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %4, i64 0
  %size = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx, i32 0, i32 2
  %5 = load i32, i32* %size, align 4, !tbaa !18
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext = zext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %8 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  call void @add_v4_text_tag(i8* %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @copy_right, i32 0, i32 0), %struct.gsicc_tag* %8, i32 1) #6
  %9 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_XYZ_doubletr(i32* %XYZ, float* %vector) #0 {
entry:
  %XYZ.addr = alloca i32*, align 8
  %vector.addr = alloca float*, align 8
  store i32* %XYZ, i32** %XYZ.addr, align 8, !tbaa !1
  store float* %vector, float** %vector.addr, align 8, !tbaa !1
  %0 = load float*, float** %vector.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %0, i64 0
  %1 = load float, float* %arrayidx, align 4, !tbaa !23
  %call = call i32 @double2XYZtype(float %1) #6
  %2 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %call, i32* %arrayidx1, align 4, !tbaa !5
  %3 = load float*, float** %vector.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds float, float* %3, i64 1
  %4 = load float, float* %arrayidx2, align 4, !tbaa !23
  %call3 = call i32 @double2XYZtype(float %4) #6
  %5 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !5
  %6 = load float*, float** %vector.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds float, float* %6, i64 2
  %7 = load float, float* %arrayidx5, align 4, !tbaa !23
  %call6 = call i32 @double2XYZtype(float %7) #6
  %8 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %call6, i32* %arrayidx7, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_xyzdata(i8* %input_ptr, i32* %temp_XYZ) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %temp_XYZ.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store i32* %temp_XYZ, i32** %temp_XYZ.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %2, i8** %curr_ptr, align 8, !tbaa !1
  %3 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %3, i64 1482250784) #6
  %4 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %5, i32 0, i64 4) #7
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom = sext i32 %9 to i64
  %10 = load i32*, i32** %temp_XYZ.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  call void @write_bigendian_4bytes(i8* %8, i64 %conv) #6
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %add.ptr2, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  %15 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @float2u8Fixed8(float %number_in) #0 {
entry:
  %number_in.addr = alloca float, align 4
  store float %number_in, float* %number_in.addr, align 4, !tbaa !23
  %0 = load float, float* %number_in.addr, align 4, !tbaa !23
  %mul = fmul float %0, 2.560000e+02
  %conv = fptoui float %mul to i16
  ret i16 %conv
}

; Function Attrs: nounwind uwtable
define internal void @add_gammadata(i8* %input_ptr, i16 zeroext %gamma, i32 %curveType) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %gamma.addr = alloca i16, align 2
  %curveType.addr = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store i16 %gamma, i16* %gamma.addr, align 2, !tbaa !25
  store i32 %curveType, i32* %curveType.addr, align 4, !tbaa !14
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %1, i8** %curr_ptr, align 8, !tbaa !1
  %2 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %3 = load i32, i32* %curveType.addr, align 4, !tbaa !14
  %conv = zext i32 %3 to i64
  call void @write_bigendian_4bytes(i8* %2, i64 %conv) #6
  %4 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %5, i32 0, i64 4) #7
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %7, i64 1) #6
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %8, i64 4
  store i8* %add.ptr2, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %10 = load i16, i16* %gamma.addr, align 2, !tbaa !25
  call void @write_bigendian_2bytes(i8* %9, i16 zeroext %10) #6
  %11 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %11, i64 2
  store i8* %add.ptr3, i8** %curr_ptr, align 8, !tbaa !1
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call4 = call i8* @memset(i8* %12, i32 0, i64 2) #7
  %13 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

declare %struct.cmm_profile_s* @gsicc_profile_new(%struct.stream_s*, %struct.gs_memory_s*, i8*, i32) #2

declare void @gsicc_get_icc_buff_hash(i8*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gsicc_create_fromabc(%struct.gs_color_space_s* %pcs, i8** %pp_buffer_in, i32* %profile_size_out, %struct.gs_memory_s* %memory, %struct.gx_cie_vector_cache_s* %abc_caches, %union.gx_cie_scalar_cache_s* %lmn_caches, i32* %islab) #0 {
entry:
  %retval = alloca i32, align 4
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pp_buffer_in.addr = alloca i8**, align 8
  %profile_size_out.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %abc_caches.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %islab.addr = alloca i32*, align 8
  %iccprofile = alloca %struct.icProfile, align 4
  %header = alloca %struct.icHeader*, align 8
  %k = alloca i32, align 4
  %matrix_input_trans = alloca %struct.gs_matrix3_s, align 4
  %icc_luta2bparts = alloca %struct.gsicc_lutatob, align 8
  %curr_pos = alloca float*, align 8
  %has_abc_procs = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %pcie = alloca %struct.gs_cie_abc_s*, align 8
  %input_range_ok = alloca i32, align 4
  %code = alloca i32, align 4
  %cam = alloca float*, align 8
  %d50 = alloca %struct.gs_vector3_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i32* %profile_size_out, i32** %profile_size_out.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_cie_vector_cache_s* %abc_caches, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  store i32* %islab, i32** %islab.addr, align 8, !tbaa !1
  %0 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %header1 = getelementptr inbounds %struct.icProfile, %struct.icProfile* %iccprofile, i32 0, i32 0
  store %struct.icHeader* %header1, %struct.icHeader** %header, align 8, !tbaa !1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_matrix3_s* %matrix_input_trans to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.start(i64 72, i8* %4) #1
  %5 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %7, i32 0, i32 0
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %8 = load i32, i32* %is_identity, align 4, !tbaa !53
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %9, i64 1
  %floats2 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %params3 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats2, i32 0, i32 0
  %is_identity4 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params3, i32 0, i32 0
  %10 = load i32, i32* %is_identity4, align 4, !tbaa !53
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %11 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %11, i64 2
  %floats7 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx6, i32 0, i32 0
  %params8 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats7, i32 0, i32 0
  %is_identity9 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params8, i32 0, i32 0
  %12 = load i32, i32* %is_identity9, align 4, !tbaa !53
  %tobool10 = icmp ne i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool10, %land.rhs ]
  %lnot = xor i1 %13, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %has_abc_procs, align 4, !tbaa !5
  %14 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %floats11 = bitcast %union.gx_cie_scalar_cache_s* %15 to %struct.cie_cache_floats_s*
  %params12 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats11, i32 0, i32 0
  %is_identity13 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params12, i32 0, i32 0
  %16 = load i32, i32* %is_identity13, align 4, !tbaa !61
  %tobool14 = icmp ne i32 %16, 0
  br i1 %tobool14, label %land.lhs.true.15, label %land.end.27

land.lhs.true.15:                                 ; preds = %land.end
  %17 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %17, i64 1
  %floats17 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx16 to %struct.cie_cache_floats_s*
  %params18 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats17, i32 0, i32 0
  %is_identity19 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params18, i32 0, i32 0
  %18 = load i32, i32* %is_identity19, align 4, !tbaa !61
  %tobool20 = icmp ne i32 %18, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.27

land.rhs.21:                                      ; preds = %land.lhs.true.15
  %19 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %19, i64 2
  %floats23 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx22 to %struct.cie_cache_floats_s*
  %params24 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats23, i32 0, i32 0
  %is_identity25 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params24, i32 0, i32 0
  %20 = load i32, i32* %is_identity25, align 4, !tbaa !61
  %tobool26 = icmp ne i32 %20, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.21, %land.lhs.true.15, %land.end
  %21 = phi i1 [ false, %land.lhs.true.15 ], [ false, %land.end ], [ %tobool26, %land.rhs.21 ]
  %lnot28 = xor i1 %21, true
  %lnot.ext29 = zext i1 %lnot28 to i32
  store i32 %lnot.ext29, i32* %has_lmn_procs, align 4, !tbaa !5
  %22 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params30 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %23, i32 0, i32 7
  %abc = bitcast %union.anon* %params30 to %struct.gs_cie_abc_s**
  %24 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %abc, align 8, !tbaa !1
  store %struct.gs_cie_abc_s* %24, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %25 = bitcast i32* %input_range_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = bitcast float** %cam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %27) #1
  %28 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %28) #1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 0
  store float 0x3FEEDABA00000000, float* %u, align 4, !tbaa !62
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 1
  store float 1.000000e+00, float* %v, align 4, !tbaa !64
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 2
  store float 0x3FEA6594A0000000, float* %w, align 4, !tbaa !65
  call void @gsicc_create_init_luta2bpart(%struct.gsicc_lutatob* %icc_luta2bparts) #6
  %29 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %29, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 4
  call void @gsicc_matrix_init(%struct.gs_matrix3_s* %MatrixLMN) #6
  %30 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %30, i32 0, i32 4
  call void @gsicc_matrix_init(%struct.gs_matrix3_s* %MatrixABC) #6
  %31 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  call void @setheader_common(%struct.icHeader* %31) #6
  %32 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %colorSpace = getelementptr inbounds %struct.icHeader, %struct.icHeader* %32, i32 0, i32 4
  store i32 1380401696, i32* %colorSpace, align 4, !tbaa !13
  %33 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %deviceClass = getelementptr inbounds %struct.icHeader, %struct.icHeader* %33, i32 0, i32 3
  store i32 1935896178, i32* %deviceClass, align 4, !tbaa !12
  %34 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %pcs31 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %34, i32 0, i32 5
  store i32 1482250784, i32* %pcs31, align 4, !tbaa !7
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 5
  store i32 3, i32* %num_in, align 4, !tbaa !66
  %num_out = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 6
  store i32 3, i32* %num_out, align 4, !tbaa !68
  %35 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common32 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %35, i32 0, i32 0
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common32, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 7
  store %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %36 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common33 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %36, i32 0, i32 0
  %points34 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common33, i32 0, i32 5
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points34, i32 0, i32 1
  %black_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 8
  store %struct.gs_vector3_s* %BlackPoint, %struct.gs_vector3_s** %black_point, align 8, !tbaa !70
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_compute_cam(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.gs_memory_s* %37) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %38, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.27
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %call35 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1780, i32 1, i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.27
  %40 = load i32*, i32** %islab.addr, align 8, !tbaa !1
  store i32 0, i32* %40, align 4, !tbaa !5
  %41 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %RangeABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %41, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call37 = call i32 @check_range(%struct.gs_range_s* %arrayidx36, i32 3) #6
  store i32 %call37, i32* %input_range_ok, align 4, !tbaa !5
  %42 = load i32, i32* %input_range_ok, align 4, !tbaa !5
  %tobool38 = icmp ne i32 %42, 0
  br i1 %tobool38, label %if.else, label %if.then.39

if.then.39:                                       ; preds = %if.end
  %43 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %44 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %45 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %RangeABC40 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %45, i32 0, i32 2
  %ranges41 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeABC40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges41, i32 0, i64 0
  %46 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %47 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call43 = call i32 @gsicc_create_mashed_clut(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.icHeader* %43, %struct.gx_color_lookup_table_s* null, %struct.gs_color_space_s* %44, %struct.gs_range_s* %arrayidx42, i8** %46, i32* %47, i32 1, %struct.gs_memory_s* %48) #6
  store i32 %call43, i32* %code, align 4, !tbaa !5
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %49, 0
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.39
  %50 = load i32, i32* %code, align 4, !tbaa !5
  %call46 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1801, i32 1, i32 %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0)) #6
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.39
  br label %if.end.202

if.else:                                          ; preds = %if.end
  %51 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %MatrixABC48 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %51, i32 0, i32 4
  %is_identity49 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC48, i32 0, i32 3
  %52 = load i32, i32* %is_identity49, align 4, !tbaa !71
  %tobool50 = icmp ne i32 %52, 0
  br i1 %tobool50, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %53 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %tobool51 = icmp ne i32 %53, 0
  br i1 %tobool51, label %lor.lhs.false.52, label %if.then.57

lor.lhs.false.52:                                 ; preds = %lor.lhs.false
  %54 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common53 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %54, i32 0, i32 0
  %MatrixLMN54 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common53, i32 0, i32 4
  %is_identity55 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixLMN54, i32 0, i32 3
  %55 = load i32, i32* %is_identity55, align 4, !tbaa !82
  %tobool56 = icmp ne i32 %55, 0
  br i1 %tobool56, label %if.then.57, label %if.else.75

if.then.57:                                       ; preds = %lor.lhs.false.52, %lor.lhs.false, %if.else
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 3
  store %struct.gs_matrix3_s* %matrix_input_trans, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %56 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common58 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %56, i32 0, i32 0
  %MatrixLMN59 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common58, i32 0, i32 4
  %57 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %MatrixABC60 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %57, i32 0, i32 4
  %58 = load i32, i32* %has_abc_procs, align 4, !tbaa !5
  %59 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %60 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %60, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 1
  %caches61 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches61, i32 0, i32 0
  %61 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common62 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %61, i32 0, i32 0
  %caches63 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common62, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches63, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i32 0
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call65 = call i32 @gsicc_create_abc_merge(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.gs_matrix3_s* %MatrixLMN59, %struct.gs_matrix3_s* %MatrixABC60, i32 %58, i32 %59, %struct.gx_cie_vector_cache_s* %arraydecay, %union.gx_cie_scalar_cache_s* %arraydecay64, %struct.gs_memory_s* %62) #6
  store i32 %call65, i32* %code, align 4, !tbaa !5
  %63 = load i32, i32* %code, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %63, 0
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.57
  %64 = load i32, i32* %code, align 4, !tbaa !5
  %call68 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1813, i32 1, i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0)) #6
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.57
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  store %struct.gsicc_clut* null, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %65 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %66 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call70 = call i32 @create_lutAtoBprofile(i8** %65, %struct.icHeader* %66, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0, %struct.gs_memory_s* %67) #6
  store i32 %call70, i32* %code, align 4, !tbaa !5
  %68 = load i32, i32* %code, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %68, 0
  br i1 %cmp71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.69
  %69 = load i32, i32* %code, align 4, !tbaa !5
  %call73 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1820, i32 1, i32 %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)) #6
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.69
  br label %if.end.201

if.else.75:                                       ; preds = %lor.lhs.false.52
  %70 = load i32, i32* %has_abc_procs, align 4, !tbaa !5
  %tobool76 = icmp ne i32 %70, 0
  br i1 %tobool76, label %if.then.77, label %if.end.109

if.then.77:                                       ; preds = %if.else.75
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %71, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %72 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call78 = call i8* %72(%struct.gs_memory_s* %73, i32 6144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %74 = bitcast i8* %call78 to float*
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  store float* %74, float** %a_curves, align 8, !tbaa !85
  %a_curves79 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %75 = load float*, float** %a_curves79, align 8, !tbaa !85
  %cmp80 = icmp eq float* %75, null
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.then.77
  %call82 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1831, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.then.77
  %a_curves84 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %76 = load float*, float** %a_curves84, align 8, !tbaa !85
  store float* %76, float** %curr_pos, align 8, !tbaa !1
  %77 = load float*, float** %curr_pos, align 8, !tbaa !1
  %78 = bitcast float* %77 to i8*
  %79 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %caches85 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %79, i32 0, i32 5
  %DecodeABC86 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches85, i32 0, i32 1
  %caches87 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC86, i32 0, i32 0
  %arraydecay88 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches87, i32 0, i32 0
  %floats89 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arraydecay88, i32 0, i32 0
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats89, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %80 = bitcast float* %arrayidx90 to i8*
  %call91 = call i8* @memcpy(i8* %78, i8* %80, i64 2048) #7
  %81 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %81, i64 512
  store float* %add.ptr, float** %curr_pos, align 8, !tbaa !1
  %82 = load float*, float** %curr_pos, align 8, !tbaa !1
  %83 = bitcast float* %82 to i8*
  %84 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %caches92 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %84, i32 0, i32 5
  %DecodeABC93 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches92, i32 0, i32 1
  %caches94 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC93, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches94, i32 0, i64 1
  %floats96 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx95, i32 0, i32 0
  %values97 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats96, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [512 x float], [512 x float]* %values97, i32 0, i64 0
  %85 = bitcast float* %arrayidx98 to i8*
  %call99 = call i8* @memcpy(i8* %83, i8* %85, i64 2048) #7
  %86 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr100 = getelementptr inbounds float, float* %86, i64 512
  store float* %add.ptr100, float** %curr_pos, align 8, !tbaa !1
  %87 = load float*, float** %curr_pos, align 8, !tbaa !1
  %88 = bitcast float* %87 to i8*
  %89 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %caches101 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %89, i32 0, i32 5
  %DecodeABC102 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches101, i32 0, i32 1
  %caches103 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC102, i32 0, i32 0
  %arrayidx104 = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches103, i32 0, i64 2
  %floats105 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx104, i32 0, i32 0
  %values106 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats105, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [512 x float], [512 x float]* %values106, i32 0, i64 0
  %90 = bitcast float* %arrayidx107 to i8*
  %call108 = call i8* @memcpy(i8* %88, i8* %90, i64 2048) #7
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.83, %if.else.75
  %91 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %tobool110 = icmp ne i32 %91, 0
  br i1 %tobool110, label %if.then.111, label %if.end.149

if.then.111:                                      ; preds = %if.end.109
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs112 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %alloc_bytes113 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs112, i32 0, i32 7
  %93 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes113, align 8, !tbaa !15
  %94 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call114 = call i8* %93(%struct.gs_memory_s* %94, i32 6144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %95 = bitcast i8* %call114 to float*
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  store float* %95, float** %m_curves, align 8, !tbaa !86
  %m_curves115 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %96 = load float*, float** %m_curves115, align 8, !tbaa !86
  %cmp116 = icmp eq float* %96, null
  br i1 %cmp116, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.then.111
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %97, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs118, i32 0, i32 2
  %98 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %a_curves119 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %100 = load float*, float** %a_curves119, align 8, !tbaa !85
  %101 = bitcast float* %100 to i8*
  call void %98(%struct.gs_memory_s* %99, i8* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %call120 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1849, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.then.111
  %m_curves122 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %102 = load float*, float** %m_curves122, align 8, !tbaa !86
  store float* %102, float** %curr_pos, align 8, !tbaa !1
  %103 = load float*, float** %curr_pos, align 8, !tbaa !1
  %104 = bitcast float* %103 to i8*
  %105 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common123 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %105, i32 0, i32 0
  %caches124 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common123, i32 0, i32 6
  %DecodeLMN125 = getelementptr inbounds %struct.anon, %struct.anon* %caches124, i32 0, i32 0
  %arraydecay126 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN125, i32 0, i32 0
  %floats127 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay126 to %struct.cie_cache_floats_s*
  %values128 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats127, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [512 x float], [512 x float]* %values128, i32 0, i64 0
  %106 = bitcast float* %arrayidx129 to i8*
  %call130 = call i8* @memcpy(i8* %104, i8* %106, i64 2048) #7
  %107 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr131 = getelementptr inbounds float, float* %107, i64 512
  store float* %add.ptr131, float** %curr_pos, align 8, !tbaa !1
  %108 = load float*, float** %curr_pos, align 8, !tbaa !1
  %109 = bitcast float* %108 to i8*
  %110 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common132 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %110, i32 0, i32 0
  %caches133 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common132, i32 0, i32 6
  %DecodeLMN134 = getelementptr inbounds %struct.anon, %struct.anon* %caches133, i32 0, i32 0
  %arrayidx135 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN134, i32 0, i64 1
  %floats136 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx135 to %struct.cie_cache_floats_s*
  %values137 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats136, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [512 x float], [512 x float]* %values137, i32 0, i64 0
  %111 = bitcast float* %arrayidx138 to i8*
  %call139 = call i8* @memcpy(i8* %109, i8* %111, i64 2048) #7
  %112 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr140 = getelementptr inbounds float, float* %112, i64 512
  store float* %add.ptr140, float** %curr_pos, align 8, !tbaa !1
  %113 = load float*, float** %curr_pos, align 8, !tbaa !1
  %114 = bitcast float* %113 to i8*
  %115 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common141 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %115, i32 0, i32 0
  %caches142 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common141, i32 0, i32 6
  %DecodeLMN143 = getelementptr inbounds %struct.anon, %struct.anon* %caches142, i32 0, i32 0
  %arrayidx144 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN143, i32 0, i64 2
  %floats145 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx144 to %struct.cie_cache_floats_s*
  %values146 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats145, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [512 x float], [512 x float]* %values146, i32 0, i64 0
  %116 = bitcast float* %arrayidx147 to i8*
  %call148 = call i8* @memcpy(i8* %114, i8* %116, i64 2048) #7
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.121, %if.end.109
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs150 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %alloc_bytes151 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs150, i32 0, i32 7
  %118 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes151, align 8, !tbaa !15
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call152 = call i8* %118(%struct.gs_memory_s* %119, i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %120 = bitcast i8* %call152 to %struct.gsicc_clut*
  %clut153 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  store %struct.gsicc_clut* %120, %struct.gsicc_clut** %clut153, align 8, !tbaa !84
  %m_curves154 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %121 = load float*, float** %m_curves154, align 8, !tbaa !86
  %cmp155 = icmp eq float* %121, null
  br i1 %cmp155, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %if.end.149
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs157 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 1
  %free_object158 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs157, i32 0, i32 2
  %123 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object158, align 8, !tbaa !21
  %124 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %a_curves159 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %125 = load float*, float** %a_curves159, align 8, !tbaa !85
  %126 = bitcast float* %125 to i8*
  call void %123(%struct.gs_memory_s* %124, i8* %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %127 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs160 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %127, i32 0, i32 1
  %free_object161 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs160, i32 0, i32 2
  %128 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object161, align 8, !tbaa !21
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %m_curves162 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %130 = load float*, float** %m_curves162, align 8, !tbaa !86
  %131 = bitcast float* %130 to i8*
  call void %128(%struct.gs_memory_s* %129, i8* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %call163 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1869, i32 0, i32 -25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.156, %if.end.149
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.164
  %132 = load i32, i32* %k, align 4, !tbaa !5
  %cmp165 = icmp slt i32 %132, 3
  br i1 %cmp165, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %133 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %133 to i64
  %clut166 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %134 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut166, align 8, !tbaa !84
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %134, i32 0, i32 2
  %arrayidx167 = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 %idxprom
  store i32 2, i32* %arrayidx167, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %135 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %135, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %clut168 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %136 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut168, align 8, !tbaa !84
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %136, i32 0, i32 3
  store i32 3, i32* %clut_num_input, align 4, !tbaa !87
  %clut169 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %137 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut169, align 8, !tbaa !84
  %clut_num_output = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %137, i32 0, i32 4
  store i32 3, i32* %clut_num_output, align 4, !tbaa !89
  %clut170 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %138 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut170, align 8, !tbaa !84
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %138, i32 0, i32 6
  store i32 2, i32* %clut_word_width, align 4, !tbaa !90
  %clut171 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %139 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut171, align 8, !tbaa !84
  call void @gsicc_create_initialize_clut(%struct.gsicc_clut* %139) #6
  %140 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs172 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %140, i32 0, i32 1
  %alloc_bytes173 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs172, i32 0, i32 7
  %141 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes173, align 8, !tbaa !15
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call174 = call i8* %141(%struct.gs_memory_s* %142, i32 48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %143 = bitcast i8* %call174 to i16*
  %clut175 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %144 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut175, align 8, !tbaa !84
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %144, i32 0, i32 0
  store i16* %143, i16** %data_short, align 8, !tbaa !91
  %clut176 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %145 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut176, align 8, !tbaa !84
  %data_short177 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %145, i32 0, i32 0
  %146 = load i16*, i16** %data_short177, align 8, !tbaa !91
  %cmp178 = icmp eq i16* %146, null
  br i1 %cmp178, label %if.then.179, label %if.end.190

if.then.179:                                      ; preds = %for.end
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs180 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 1
  %free_object181 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs180, i32 0, i32 2
  %148 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object181, align 8, !tbaa !21
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %a_curves182 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %150 = load float*, float** %a_curves182, align 8, !tbaa !85
  %151 = bitcast float* %150 to i8*
  call void %148(%struct.gs_memory_s* %149, i8* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs183 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 1
  %free_object184 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs183, i32 0, i32 2
  %153 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object184, align 8, !tbaa !21
  %154 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %m_curves185 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %155 = load float*, float** %m_curves185, align 8, !tbaa !86
  %156 = bitcast float* %155 to i8*
  call void %153(%struct.gs_memory_s* %154, i8* %156, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs186 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %157, i32 0, i32 1
  %free_object187 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs186, i32 0, i32 2
  %158 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object187, align 8, !tbaa !21
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %clut188 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %160 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut188, align 8, !tbaa !84
  %161 = bitcast %struct.gsicc_clut* %160 to i8*
  call void %158(%struct.gs_memory_s* %159, i8* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %call189 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1889, i32 0, i32 -25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.179, %for.end
  %162 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %MatrixABC191 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %162, i32 0, i32 4
  %clut192 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %163 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut192, align 8, !tbaa !84
  %data_short193 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %163, i32 0, i32 0
  %164 = load i16*, i16** %data_short193, align 8, !tbaa !91
  call void @gsicc_matrix3_to_mlut(%struct.gs_matrix3_s* %MatrixABC191, i16* %164) #6
  %165 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie, align 8, !tbaa !1
  %common194 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %165, i32 0, i32 0
  %MatrixLMN195 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common194, i32 0, i32 4
  call void @cie_matrix_transpose3(%struct.gs_matrix3_s* %MatrixLMN195, %struct.gs_matrix3_s* %matrix_input_trans) #6
  %matrix196 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 3
  store %struct.gs_matrix3_s* %matrix_input_trans, %struct.gs_matrix3_s** %matrix196, align 8, !tbaa !83
  %166 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %167 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %168 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call197 = call i32 @create_lutAtoBprofile(i8** %166, %struct.icHeader* %167, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0, %struct.gs_memory_s* %168) #6
  store i32 %call197, i32* %code, align 4, !tbaa !5
  %169 = load i32, i32* %code, align 4, !tbaa !5
  %cmp198 = icmp slt i32 %169, 0
  br i1 %cmp198, label %if.then.199, label %if.end.200

if.then.199:                                      ; preds = %if.end.190
  %170 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %170, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.200:                                       ; preds = %if.end.190
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.end.74
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.47
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  call void @gsicc_create_free_luta2bpart(%struct.gs_memory_s* %171, %struct.gsicc_lutatob* %icc_luta2bparts) #6
  %172 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.icHeader, %struct.icHeader* %172, i32 0, i32 0
  %173 = load i32, i32* %size, align 4, !tbaa !22
  %174 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  store i32 %173, i32* %174, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.202, %if.then.199
  %175 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %175) #1
  %176 = bitcast float** %cam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %input_range_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast %struct.gs_cie_abc_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %179) #1
  %180 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %182) #1
  %183 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.end(i64 72, i8* %183) #1
  %184 = bitcast %struct.gs_matrix3_s* %matrix_input_trans to i8*
  call void @llvm.lifetime.end(i64 40, i8* %184) #1
  %185 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %186) #1
  %187 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.end(i64 136, i8* %187) #1
  %188 = load i32, i32* %retval
  ret i32 %188
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_create_init_luta2bpart(%struct.gsicc_lutatob* %icc_luta2bparts) #0 {
entry:
  %icc_luta2bparts.addr = alloca %struct.gsicc_lutatob*, align 8
  store %struct.gsicc_lutatob* %icc_luta2bparts, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %0 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %0, i32 0, i32 0
  store float* null, float** %a_curves, align 8, !tbaa !85
  %1 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %b_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %1, i32 0, i32 4
  store float* null, float** %b_curves, align 8, !tbaa !92
  %2 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %2, i32 0, i32 1
  store %struct.gsicc_clut* null, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %3 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %3, i32 0, i32 2
  store float* null, float** %m_curves, align 8, !tbaa !86
  %4 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %cam = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %4, i32 0, i32 9
  store float* null, float** %cam, align 8, !tbaa !93
  %5 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %5, i32 0, i32 3
  store %struct.gs_matrix3_s* null, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %6 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %6, i32 0, i32 7
  store %struct.gs_vector3_s* null, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %7 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %black_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %7, i32 0, i32 8
  store %struct.gs_vector3_s* null, %struct.gs_vector3_s** %black_point, align 8, !tbaa !70
  %8 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %8, i32 0, i32 5
  store i32 0, i32* %num_in, align 4, !tbaa !66
  %9 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_out = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %9, i32 0, i32 6
  store i32 0, i32* %num_out, align 4, !tbaa !68
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_matrix_init(%struct.gs_matrix3_s* %mat) #0 {
entry:
  %mat.addr = alloca %struct.gs_matrix3_s*, align 8
  store %struct.gs_matrix3_s* %mat, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %0 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %0, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !94
  %conv = fpext float %1 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.end.44

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cu2 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %2, i32 0, i32 0
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu2, i32 0, i32 1
  %3 = load float, float* %v, align 4, !tbaa !95
  %conv3 = fpext float %3 to double
  %cmp4 = fcmp oeq double %conv3, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.6, label %land.end.44

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %4 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cu7 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %4, i32 0, i32 0
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu7, i32 0, i32 2
  %5 = load float, float* %w, align 4, !tbaa !96
  %conv8 = fpext float %5 to double
  %cmp9 = fcmp oeq double %conv8, 0.000000e+00
  br i1 %cmp9, label %land.lhs.true.11, label %land.end.44

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %6 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %6, i32 0, i32 1
  %v12 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 1
  %7 = load float, float* %v12, align 4, !tbaa !97
  %conv13 = fpext float %7 to double
  %cmp14 = fcmp oeq double %conv13, 1.000000e+00
  br i1 %cmp14, label %land.lhs.true.16, label %land.end.44

land.lhs.true.16:                                 ; preds = %land.lhs.true.11
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cv17 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %8, i32 0, i32 1
  %u18 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv17, i32 0, i32 0
  %9 = load float, float* %u18, align 4, !tbaa !98
  %conv19 = fpext float %9 to double
  %cmp20 = fcmp oeq double %conv19, 0.000000e+00
  br i1 %cmp20, label %land.lhs.true.22, label %land.end.44

land.lhs.true.22:                                 ; preds = %land.lhs.true.16
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cv23 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %10, i32 0, i32 1
  %w24 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv23, i32 0, i32 2
  %11 = load float, float* %w24, align 4, !tbaa !99
  %conv25 = fpext float %11 to double
  %cmp26 = fcmp oeq double %conv25, 0.000000e+00
  br i1 %cmp26, label %land.lhs.true.28, label %land.end.44

land.lhs.true.28:                                 ; preds = %land.lhs.true.22
  %12 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %12, i32 0, i32 2
  %w29 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 2
  %13 = load float, float* %w29, align 4, !tbaa !100
  %conv30 = fpext float %13 to double
  %cmp31 = fcmp oeq double %conv30, 1.000000e+00
  br i1 %cmp31, label %land.rhs, label %land.end.44

land.rhs:                                         ; preds = %land.lhs.true.28
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cw33 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %14, i32 0, i32 2
  %u34 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw33, i32 0, i32 0
  %15 = load float, float* %u34, align 4, !tbaa !101
  %conv35 = fpext float %15 to double
  %cmp36 = fcmp oeq double %conv35, 0.000000e+00
  br i1 %cmp36, label %land.rhs.38, label %land.end

land.rhs.38:                                      ; preds = %land.rhs
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %cw39 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %16, i32 0, i32 2
  %v40 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw39, i32 0, i32 1
  %17 = load float, float* %v40, align 4, !tbaa !102
  %conv41 = fpext float %17 to double
  %cmp42 = fcmp oeq double %conv41, 0.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs.38, %land.rhs
  %18 = phi i1 [ false, %land.rhs ], [ %cmp42, %land.rhs.38 ]
  br label %land.end.44

land.end.44:                                      ; preds = %land.end, %land.lhs.true.28, %land.lhs.true.22, %land.lhs.true.16, %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %entry
  %19 = phi i1 [ false, %land.lhs.true.28 ], [ false, %land.lhs.true.22 ], [ false, %land.lhs.true.16 ], [ false, %land.lhs.true.11 ], [ false, %land.lhs.true.6 ], [ false, %land.lhs.true ], [ false, %entry ], [ %18, %land.end ]
  %land.ext = zext i1 %19 to i32
  %20 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %20, i32 0, i32 3
  store i32 %land.ext, i32* %is_identity, align 4, !tbaa !103
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_compute_cam(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.gs_memory_s* %memory) #0 {
entry:
  %icc_luta2bparts.addr = alloca %struct.gsicc_lutatob*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %cam = alloca float*, align 8
  %d50 = alloca %struct.gs_vector3_s, align 4
  store %struct.gsicc_lutatob* %icc_luta2bparts, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast float** %cam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %1) #1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 0
  store float 0x3FEEDABA00000000, float* %u, align 4, !tbaa !62
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 1
  store float 1.000000e+00, float* %v, align 4, !tbaa !64
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 2
  store float 0x3FEA6594A0000000, float* %w, align 4, !tbaa !65
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gsicc_create_fromabc, i32 0, i32 0)) #6
  %5 = bitcast i8* %call to float*
  %6 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %cam1 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %6, i32 0, i32 9
  store float* %5, float** %cam1, align 8, !tbaa !93
  %7 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %cam2 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %7, i32 0, i32 9
  %8 = load float*, float** %cam2, align 8, !tbaa !93
  %cmp = icmp eq float* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gsicc_compute_cam, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 931, i32 0, i32 -25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %9, i32 0, i32 7
  %10 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %11 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %cam4 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %11, i32 0, i32 9
  %12 = load float*, float** %cam4, align 8, !tbaa !93
  call void @gsicc_create_compute_cam(%struct.gs_vector3_s* %10, %struct.gs_vector3_s* %d50, float* %12) #6
  %13 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %13) #1
  %14 = bitcast float** %cam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret i32 0
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

declare i32 @check_range(%struct.gs_range_s*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_create_mashed_clut(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.icHeader* %header, %struct.gx_color_lookup_table_s* %Table, %struct.gs_color_space_s* %pcs, %struct.gs_range_s* %ranges, i8** %pp_buffer_in, i32* %profile_size_out, i32 %range_adjust, %struct.gs_memory_s* %memory) #0 {
entry:
  %icc_luta2bparts.addr = alloca %struct.gsicc_lutatob*, align 8
  %header.addr = alloca %struct.icHeader*, align 8
  %Table.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %pp_buffer_in.addr = alloca i8**, align 8
  %profile_size_out.addr = alloca i32*, align 8
  %range_adjust.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %k = alloca i32, align 4
  %code = alloca i32, align 4
  %clut = alloca %struct.gsicc_clut*, align 8
  %ident_matrix = alloca %struct.gs_matrix3_s, align 4
  %ones_vec = alloca %struct.gs_vector3_s, align 4
  store %struct.gsicc_lutatob* %icc_luta2bparts, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  store %struct.icHeader* %header, %struct.icHeader** %header.addr, align 8, !tbaa !1
  store %struct.gx_color_lookup_table_s* %Table, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i32* %profile_size_out, i32** %profile_size_out.addr, align 8, !tbaa !1
  store i32 %range_adjust, i32* %range_adjust.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gsicc_clut** %clut to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast %struct.gs_matrix3_s* %ident_matrix to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast %struct.gs_vector3_s* %ones_vec to i8*
  call void @llvm.lifetime.start(i64 12, i8* %4) #1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %6(%struct.gs_memory_s* %7, i32 48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6
  %8 = bitcast i8* %call to %struct.gsicc_clut*
  store %struct.gsicc_clut* %8, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %9 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_clut* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1563, i32 0, i32 -25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %11 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut2 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %11, i32 0, i32 1
  store %struct.gsicc_clut* %10, %struct.gsicc_clut** %clut2, align 8, !tbaa !84
  %12 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %12, i32 0, i32 5
  %13 = load i32, i32* %num_in, align 4, !tbaa !66
  %cmp3 = icmp eq i32 %13, 1
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 0
  store i32 128, i32* %arrayidx, align 4, !tbaa !5
  br label %if.end.22

if.else:                                          ; preds = %if.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %16 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in5 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %16, i32 0, i32 5
  %17 = load i32, i32* %num_in5, align 4, !tbaa !66
  %cmp6 = icmp slt i32 %15, %17
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  %cmp7 = icmp ne %struct.gx_color_lookup_table_s* %18, null
  br i1 %cmp7, label %land.lhs.true, label %if.else.17

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %20, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  %21 = load i32, i32* %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %21, 9
  br i1 %cmp9, label %if.then.10, label %if.else.17

if.then.10:                                       ; preds = %land.lhs.true
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  %dims12 = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %23, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %dims12, i32 0, i64 %idxprom11
  %24 = load i32, i32* %arrayidx13, align 4, !tbaa !5
  %25 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom14 = sext i32 %25 to i64
  %26 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_dims15 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %26, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims15, i32 0, i64 %idxprom14
  store i32 %24, i32* %arrayidx16, align 4, !tbaa !5
  br label %if.end.21

if.else.17:                                       ; preds = %land.lhs.true, %for.body
  %27 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_dims19 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %28, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims19, i32 0, i64 %idxprom18
  store i32 9, i32* %arrayidx20, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.17, %if.then.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.then.4
  %30 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in23 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %30, i32 0, i32 5
  %31 = load i32, i32* %num_in23, align 4, !tbaa !66
  %32 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %32, i32 0, i32 3
  store i32 %31, i32* %clut_num_input, align 4, !tbaa !87
  %33 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_num_output = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %33, i32 0, i32 4
  store i32 3, i32* %clut_num_output, align 4, !tbaa !89
  %34 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %34, i32 0, i32 6
  store i32 2, i32* %clut_word_width, align 4, !tbaa !90
  %35 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  call void @gsicc_create_initialize_clut(%struct.gsicc_clut* %35) #6
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_bytes25 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs24, i32 0, i32 7
  %37 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes25, align 8, !tbaa !15
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %39 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %clut_num_entries = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %39, i32 0, i32 5
  %40 = load i32, i32* %clut_num_entries, align 4, !tbaa !104
  %mul = mul nsw i32 %40, 3
  %conv = sext i32 %mul to i64
  %mul26 = mul i64 %conv, 2
  %conv27 = trunc i64 %mul26 to i32
  %call28 = call i8* %37(%struct.gs_memory_s* %38, i32 %conv27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6
  %41 = bitcast i8* %call28 to i16*
  %42 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %42, i32 0, i32 0
  store i16* %41, i16** %data_short, align 8, !tbaa !91
  %43 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %data_short29 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %43, i32 0, i32 0
  %44 = load i16*, i16** %data_short29, align 8, !tbaa !91
  %cmp30 = icmp eq i16* %44, null
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.22
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs33 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs33, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %48 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %49 = bitcast %struct.gsicc_clut* %48 to i8*
  call void %46(%struct.gs_memory_s* %47, i8* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6
  %call34 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1589, i32 0, i32 -25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.22
  %50 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %51 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %52 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %53 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %53, i32 0, i32 7
  %54 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %55 = load i32, i32* %range_adjust.addr, align 4, !tbaa !5
  %56 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %cam = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %56, i32 0, i32 9
  %57 = load float*, float** %cam, align 8, !tbaa !93
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call36 = call i32 @gsicc_create_clut(%struct.gs_color_space_s* %50, %struct.gsicc_clut* %51, %struct.gs_range_s* %52, %struct.gs_vector3_s* %54, i32 %55, float* %57, %struct.gs_memory_s* %58) #6
  store i32 %call36, i32* %code, align 4, !tbaa !5
  %59 = load i32, i32* %code, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %59, 0
  br i1 %cmp37, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %if.end.35
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %60, i32 0, i32 1
  %free_object41 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs40, i32 0, i32 2
  %61 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object41, align 8, !tbaa !21
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %63 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !1
  %64 = bitcast %struct.gsicc_clut* %63 to i8*
  call void %61(%struct.gs_memory_s* %62, i8* %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %call42 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1596, i32 1, i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.39, %if.end.35
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs44 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %66, i32 0, i32 1
  %free_object45 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs44, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object45, align 8, !tbaa !21
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %69 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %69, i32 0, i32 0
  %70 = load float*, float** %a_curves, align 8, !tbaa !85
  %71 = bitcast float* %70 to i8*
  call void %67(%struct.gs_memory_s* %68, i8* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)) #6
  %72 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %a_curves46 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %72, i32 0, i32 0
  store float* null, float** %a_curves46, align 8, !tbaa !85
  %73 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %b_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %73, i32 0, i32 4
  store float* null, float** %b_curves, align 8, !tbaa !92
  %74 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %74, i32 0, i32 2
  store float* null, float** %m_curves, align 8, !tbaa !86
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %ones_vec, i32 0, i32 0
  store float 1.000000e+00, float* %u, align 4, !tbaa !62
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %ones_vec, i32 0, i32 1
  store float 1.000000e+00, float* %v, align 4, !tbaa !64
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %ones_vec, i32 0, i32 2
  store float 1.000000e+00, float* %w, align 4, !tbaa !65
  call void @gsicc_make_diag_matrix(%struct.gs_matrix3_s* %ident_matrix, %struct.gs_vector3_s* %ones_vec) #6
  %75 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %75, i32 0, i32 3
  store %struct.gs_matrix3_s* %ident_matrix, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %76 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in47 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %76, i32 0, i32 5
  %77 = load i32, i32* %num_in47, align 4, !tbaa !66
  %cmp48 = icmp eq i32 %77, 1
  br i1 %cmp48, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.43
  %78 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %79 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %80 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call51 = call i32 @create_lutAtoBprofile(i8** %78, %struct.icHeader* %79, %struct.gsicc_lutatob* %80, i32 1, i32 1, %struct.gs_memory_s* %81) #6
  store i32 %call51, i32* %code, align 4, !tbaa !5
  br label %if.end.54

if.else.52:                                       ; preds = %if.end.43
  %82 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %83 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %84 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call53 = call i32 @create_lutAtoBprofile(i8** %82, %struct.icHeader* %83, %struct.gsicc_lutatob* %84, i32 0, i32 1, %struct.gs_memory_s* %85) #6
  store i32 %call53, i32* %code, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %87 = bitcast %struct.gs_vector3_s* %ones_vec to i8*
  call void @llvm.lifetime.end(i64 12, i8* %87) #1
  %88 = bitcast %struct.gs_matrix3_s* %ident_matrix to i8*
  call void @llvm.lifetime.end(i64 40, i8* %88) #1
  %89 = bitcast %struct.gsicc_clut** %clut to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_create_abc_merge(%struct.gsicc_lutatob* %atob_parts, %struct.gs_matrix3_s* %matrixLMN, %struct.gs_matrix3_s* %matrixABC, i32 %has_abc_procs, i32 %has_lmn_procs, %struct.gx_cie_vector_cache_s* %abc_caches, %union.gx_cie_scalar_cache_s* %lmn_caches, %struct.gs_memory_s* %memory) #0 {
entry:
  %atob_parts.addr = alloca %struct.gsicc_lutatob*, align 8
  %matrixLMN.addr = alloca %struct.gs_matrix3_s*, align 8
  %matrixABC.addr = alloca %struct.gs_matrix3_s*, align 8
  %has_abc_procs.addr = alloca i32, align 4
  %has_lmn_procs.addr = alloca i32, align 4
  %abc_caches.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %temp_matrix = alloca %struct.gs_matrix3_s, align 4
  %matrix_ptr = alloca %struct.gs_matrix3_s*, align 8
  %curr_pos = alloca float*, align 8
  store %struct.gsicc_lutatob* %atob_parts, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %matrixLMN, %struct.gs_matrix3_s** %matrixLMN.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %matrixABC, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  store i32 %has_abc_procs, i32* %has_abc_procs.addr, align 4, !tbaa !5
  store i32 %has_lmn_procs, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  store %struct.gx_cie_vector_cache_s* %abc_caches, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix3_s* %temp_matrix to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_matrix3_s** %matrix_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixLMN.addr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %3, i32 0, i32 3
  %4 = load i32, i32* %is_identity, align 4, !tbaa !103
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  %is_identity1 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 3
  %6 = load i32, i32* %is_identity1, align 4, !tbaa !103
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixLMN.addr, align 8, !tbaa !1
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  call void @cie_matrix_mult3(%struct.gs_matrix3_s* %7, %struct.gs_matrix3_s* %8, %struct.gs_matrix3_s* %temp_matrix) #6
  %9 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %9, i32 0, i32 3
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  call void @cie_matrix_transpose3(%struct.gs_matrix3_s* %temp_matrix, %struct.gs_matrix3_s* %10) #6
  br label %if.end.8

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  %is_identity3 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %11, i32 0, i32 3
  %12 = load i32, i32* %is_identity3, align 4, !tbaa !103
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  %13 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixLMN.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %13, %struct.gs_matrix3_s** %matrix_ptr, align 8, !tbaa !1
  br label %if.end

if.else.6:                                        ; preds = %if.else
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  store %struct.gs_matrix3_s* %14, %struct.gs_matrix3_s** %matrix_ptr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.5
  %15 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix_ptr, align 8, !tbaa !1
  %16 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %matrix7 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %16, i32 0, i32 3
  %17 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix7, align 8, !tbaa !83
  call void @cie_matrix_transpose3(%struct.gs_matrix3_s* %15, %struct.gs_matrix3_s* %17) #6
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %18 = load i32, i32* %has_abc_procs.addr, align 4, !tbaa !5
  %tobool9 = icmp ne i32 %18, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %if.end.8
  %19 = load i32, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  %tobool11 = icmp ne i32 %19, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %land.lhs.true.10
  %20 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  %is_identity13 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %20, i32 0, i32 3
  %21 = load i32, i32* %is_identity13, align 4, !tbaa !103
  %tobool14 = icmp ne i32 %21, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12
  %22 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %23 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  call void @merge_abc_lmn_curves(%struct.gx_cie_vector_cache_s* %22, %union.gx_cie_scalar_cache_s* %23) #6
  store i32 0, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.12, %land.lhs.true.10, %if.end.8
  %24 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrixABC.addr, align 8, !tbaa !1
  %is_identity17 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %24, i32 0, i32 3
  %25 = load i32, i32* %is_identity17, align 4, !tbaa !103
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %if.else.71, label %land.lhs.true.19

land.lhs.true.19:                                 ; preds = %if.end.16
  %26 = load i32, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %26, 0
  br i1 %tobool20, label %if.then.21, label %if.else.71

if.then.21:                                       ; preds = %land.lhs.true.19
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %28(%struct.gs_memory_s* %29, i32 6144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #6
  %30 = bitcast i8* %call to float*
  %31 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %b_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %31, i32 0, i32 4
  store float* %30, float** %b_curves, align 8, !tbaa !92
  %32 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %b_curves22 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %32, i32 0, i32 4
  %33 = load float*, float** %b_curves22, align 8, !tbaa !92
  %cmp = icmp eq float* %33, null
  br i1 %cmp, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.21
  %call24 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1662, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0)) #6
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.21
  %34 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %b_curves26 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %34, i32 0, i32 4
  %35 = load float*, float** %b_curves26, align 8, !tbaa !92
  store float* %35, float** %curr_pos, align 8, !tbaa !1
  %36 = load float*, float** %curr_pos, align 8, !tbaa !1
  %37 = bitcast float* %36 to i8*
  %38 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %38, i64 0
  %floats = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %39 = bitcast float* %arrayidx27 to i8*
  %call28 = call i8* @memcpy(i8* %37, i8* %39, i64 2048) #7
  %40 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %40, i64 512
  store float* %add.ptr, float** %curr_pos, align 8, !tbaa !1
  %41 = load float*, float** %curr_pos, align 8, !tbaa !1
  %42 = bitcast float* %41 to i8*
  %43 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %43, i64 1
  %floats30 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx29 to %struct.cie_cache_floats_s*
  %values31 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [512 x float], [512 x float]* %values31, i32 0, i64 0
  %44 = bitcast float* %arrayidx32 to i8*
  %call33 = call i8* @memcpy(i8* %42, i8* %44, i64 2048) #7
  %45 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds float, float* %45, i64 512
  store float* %add.ptr34, float** %curr_pos, align 8, !tbaa !1
  %46 = load float*, float** %curr_pos, align 8, !tbaa !1
  %47 = bitcast float* %46 to i8*
  %48 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %48, i64 2
  %floats36 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx35 to %struct.cie_cache_floats_s*
  %values37 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats36, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [512 x float], [512 x float]* %values37, i32 0, i64 0
  %49 = bitcast float* %arrayidx38 to i8*
  %call39 = call i8* @memcpy(i8* %47, i8* %49, i64 2048) #7
  %50 = load i32, i32* %has_abc_procs.addr, align 4, !tbaa !5
  %tobool40 = icmp ne i32 %50, 0
  br i1 %tobool40, label %if.then.41, label %if.end.70

if.then.41:                                       ; preds = %if.end.25
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %51, i32 0, i32 1
  %alloc_bytes43 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs42, i32 0, i32 7
  %52 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes43, align 8, !tbaa !15
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call44 = call i8* %52(%struct.gs_memory_s* %53, i32 6144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #6
  %54 = bitcast i8* %call44 to float*
  %55 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %55, i32 0, i32 2
  store float* %54, float** %m_curves, align 8, !tbaa !86
  %56 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves45 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %56, i32 0, i32 2
  %57 = load float*, float** %m_curves45, align 8, !tbaa !86
  %cmp46 = icmp eq float* %57, null
  br i1 %cmp46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.then.41
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs48, i32 0, i32 2
  %59 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %61 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %b_curves49 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %61, i32 0, i32 4
  %62 = load float*, float** %b_curves49, align 8, !tbaa !92
  %63 = bitcast float* %62 to i8*
  call void %59(%struct.gs_memory_s* %60, i8* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #6
  %call50 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1675, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.then.41
  %64 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves52 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %64, i32 0, i32 2
  %65 = load float*, float** %m_curves52, align 8, !tbaa !86
  store float* %65, float** %curr_pos, align 8, !tbaa !1
  %66 = load float*, float** %curr_pos, align 8, !tbaa !1
  %67 = bitcast float* %66 to i8*
  %68 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %68, i64 0
  %floats54 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx53, i32 0, i32 0
  %values55 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats54, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [512 x float], [512 x float]* %values55, i32 0, i64 0
  %69 = bitcast float* %arrayidx56 to i8*
  %call57 = call i8* @memcpy(i8* %67, i8* %69, i64 2048) #7
  %70 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr58 = getelementptr inbounds float, float* %70, i64 512
  store float* %add.ptr58, float** %curr_pos, align 8, !tbaa !1
  %71 = load float*, float** %curr_pos, align 8, !tbaa !1
  %72 = bitcast float* %71 to i8*
  %73 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx59 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %73, i64 1
  %floats60 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx59, i32 0, i32 0
  %values61 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats60, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [512 x float], [512 x float]* %values61, i32 0, i64 0
  %74 = bitcast float* %arrayidx62 to i8*
  %call63 = call i8* @memcpy(i8* %72, i8* %74, i64 2048) #7
  %75 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr64 = getelementptr inbounds float, float* %75, i64 512
  store float* %add.ptr64, float** %curr_pos, align 8, !tbaa !1
  %76 = load float*, float** %curr_pos, align 8, !tbaa !1
  %77 = bitcast float* %76 to i8*
  %78 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %78, i64 2
  %floats66 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx65, i32 0, i32 0
  %values67 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats66, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [512 x float], [512 x float]* %values67, i32 0, i64 0
  %79 = bitcast float* %arrayidx68 to i8*
  %call69 = call i8* @memcpy(i8* %77, i8* %79, i64 2048) #7
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.51, %if.end.25
  br label %if.end.132

if.else.71:                                       ; preds = %land.lhs.true.19, %if.end.16
  %80 = load i32, i32* %has_abc_procs.addr, align 4, !tbaa !5
  %tobool72 = icmp ne i32 %80, 0
  br i1 %tobool72, label %if.then.73, label %if.end.101

if.then.73:                                       ; preds = %if.else.71
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs74 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %alloc_bytes75 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs74, i32 0, i32 7
  %82 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes75, align 8, !tbaa !15
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call76 = call i8* %82(%struct.gs_memory_s* %83, i32 6144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #6
  %84 = bitcast i8* %call76 to float*
  %85 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves77 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %85, i32 0, i32 2
  store float* %84, float** %m_curves77, align 8, !tbaa !86
  %86 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves78 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %86, i32 0, i32 2
  %87 = load float*, float** %m_curves78, align 8, !tbaa !86
  %cmp79 = icmp eq float* %87, null
  br i1 %cmp79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.then.73
  %call81 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1692, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %if.then.73
  %88 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves83 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %88, i32 0, i32 2
  %89 = load float*, float** %m_curves83, align 8, !tbaa !86
  store float* %89, float** %curr_pos, align 8, !tbaa !1
  %90 = load float*, float** %curr_pos, align 8, !tbaa !1
  %91 = bitcast float* %90 to i8*
  %92 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %92, i64 0
  %floats85 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx84, i32 0, i32 0
  %values86 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats85, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [512 x float], [512 x float]* %values86, i32 0, i64 0
  %93 = bitcast float* %arrayidx87 to i8*
  %call88 = call i8* @memcpy(i8* %91, i8* %93, i64 2048) #7
  %94 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr89 = getelementptr inbounds float, float* %94, i64 512
  store float* %add.ptr89, float** %curr_pos, align 8, !tbaa !1
  %95 = load float*, float** %curr_pos, align 8, !tbaa !1
  %96 = bitcast float* %95 to i8*
  %97 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %97, i64 1
  %floats91 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx90, i32 0, i32 0
  %values92 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats91, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [512 x float], [512 x float]* %values92, i32 0, i64 0
  %98 = bitcast float* %arrayidx93 to i8*
  %call94 = call i8* @memcpy(i8* %96, i8* %98, i64 2048) #7
  %99 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr95 = getelementptr inbounds float, float* %99, i64 512
  store float* %add.ptr95, float** %curr_pos, align 8, !tbaa !1
  %100 = load float*, float** %curr_pos, align 8, !tbaa !1
  %101 = bitcast float* %100 to i8*
  %102 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %102, i64 2
  %floats97 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx96, i32 0, i32 0
  %values98 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats97, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [512 x float], [512 x float]* %values98, i32 0, i64 0
  %103 = bitcast float* %arrayidx99 to i8*
  %call100 = call i8* @memcpy(i8* %101, i8* %103, i64 2048) #7
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.82, %if.else.71
  %104 = load i32, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  %tobool102 = icmp ne i32 %104, 0
  br i1 %tobool102, label %if.then.103, label %if.end.131

if.then.103:                                      ; preds = %if.end.101
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %alloc_bytes105 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs104, i32 0, i32 7
  %106 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes105, align 8, !tbaa !15
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call106 = call i8* %106(%struct.gs_memory_s* %107, i32 6144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0)) #6
  %108 = bitcast i8* %call106 to float*
  %109 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves107 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %109, i32 0, i32 2
  store float* %108, float** %m_curves107, align 8, !tbaa !86
  %110 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves108 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %110, i32 0, i32 2
  %111 = load float*, float** %m_curves108, align 8, !tbaa !86
  %cmp109 = icmp eq float* %111, null
  br i1 %cmp109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.then.103
  %call111 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1704, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.then.103
  %112 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %m_curves113 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %112, i32 0, i32 2
  %113 = load float*, float** %m_curves113, align 8, !tbaa !86
  store float* %113, float** %curr_pos, align 8, !tbaa !1
  %114 = load float*, float** %curr_pos, align 8, !tbaa !1
  %115 = bitcast float* %114 to i8*
  %116 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %116, i64 0
  %floats115 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx114 to %struct.cie_cache_floats_s*
  %values116 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats115, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [512 x float], [512 x float]* %values116, i32 0, i64 0
  %117 = bitcast float* %arrayidx117 to i8*
  %call118 = call i8* @memcpy(i8* %115, i8* %117, i64 2048) #7
  %118 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr119 = getelementptr inbounds float, float* %118, i64 512
  store float* %add.ptr119, float** %curr_pos, align 8, !tbaa !1
  %119 = load float*, float** %curr_pos, align 8, !tbaa !1
  %120 = bitcast float* %119 to i8*
  %121 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %121, i64 1
  %floats121 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx120 to %struct.cie_cache_floats_s*
  %values122 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats121, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [512 x float], [512 x float]* %values122, i32 0, i64 0
  %122 = bitcast float* %arrayidx123 to i8*
  %call124 = call i8* @memcpy(i8* %120, i8* %122, i64 2048) #7
  %123 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr125 = getelementptr inbounds float, float* %123, i64 512
  store float* %add.ptr125, float** %curr_pos, align 8, !tbaa !1
  %124 = load float*, float** %curr_pos, align 8, !tbaa !1
  %125 = bitcast float* %124 to i8*
  %126 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %126, i64 2
  %floats127 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx126 to %struct.cie_cache_floats_s*
  %values128 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats127, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [512 x float], [512 x float]* %values128, i32 0, i64 0
  %127 = bitcast float* %arrayidx129 to i8*
  %call130 = call i8* @memcpy(i8* %125, i8* %127, i64 2048) #7
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.112, %if.end.101
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.70
  %128 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %b_curves133 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %128, i32 0, i32 4
  %129 = load float*, float** %b_curves133, align 8, !tbaa !92
  %cmp134 = icmp eq float* %129, null
  br i1 %cmp134, label %if.then.135, label %if.end.137

if.then.135:                                      ; preds = %if.end.132
  %130 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %atob_parts.addr, align 8, !tbaa !1
  %matrix136 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %130, i32 0, i32 3
  %131 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix136, align 8, !tbaa !83
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %131, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  call void @scale_matrix(float* %u, float 2.000000e+00) #6
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.135, %if.end.132
  %132 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast %struct.gs_matrix3_s** %matrix_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast %struct.gs_matrix3_s* %temp_matrix to i8*
  call void @llvm.lifetime.end(i64 40, i8* %134) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @create_lutAtoBprofile(i8** %pp_buffer_in, %struct.icHeader* %header, %struct.gsicc_lutatob* %lutatobparts, i32 %yonly, i32 %mashedLUT, %struct.gs_memory_s* %memory) #0 {
entry:
  %pp_buffer_in.addr = alloca i8**, align 8
  %header.addr = alloca %struct.icHeader*, align 8
  %lutatobparts.addr = alloca %struct.gsicc_lutatob*, align 8
  %yonly.addr = alloca i32, align 4
  %mashedLUT.addr = alloca i32, align 4
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %num_tags = alloca i32, align 4
  %k = alloca i32, align 4
  %tag_list = alloca %struct.gsicc_tag*, align 8
  %profile_size = alloca i32, align 4
  %last_tag = alloca i32, align 4
  %tag_location = alloca i32, align 4
  %tag_size = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %curr_ptr = alloca i8*, align 8
  %temp_XYZ = alloca [3 x i32], align 4
  %d50 = alloca %struct.gs_vector3_s, align 4
  %cam = alloca float*, align 8
  %temp_matrix = alloca %struct.gs_matrix3_s, align 4
  %lmn_vector = alloca [3 x float], align 4
  %d50_cieA = alloca [3 x float], align 4
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store %struct.icHeader* %header, %struct.icHeader** %header.addr, align 8, !tbaa !1
  store %struct.gsicc_lutatob* %lutatobparts, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  store i32 %yonly, i32* %yonly.addr, align 4, !tbaa !5
  store i32 %mashedLUT, i32* %mashedLUT.addr, align 4, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_tags to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 5, i32* %num_tags, align 4, !tbaa !5
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast %struct.gsicc_tag** %tag_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %last_tag to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %tag_location to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %tag_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast [3 x i32]* %temp_XYZ to i8*
  call void @llvm.lifetime.start(i64 12, i8* %9) #1
  %10 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %10) #1
  %11 = bitcast float** %cam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast %struct.gs_matrix3_s* %temp_matrix to i8*
  call void @llvm.lifetime.start(i64 40, i8* %12) #1
  %13 = bitcast [3 x float]* %lmn_vector to i8*
  call void @llvm.lifetime.start(i64 12, i8* %13) #1
  %14 = bitcast [3 x float]* %d50_cieA to i8*
  call void @llvm.lifetime.start(i64 12, i8* %14) #1
  store i32 128, i32* %profile_size, align 4, !tbaa !5
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %18 = load i32, i32* %num_tags, align 4, !tbaa !5
  %conv = sext i32 %18 to i64
  %mul = mul i64 16, %conv
  %conv1 = trunc i64 %mul to i32
  %call = call i8* %16(%struct.gs_memory_s* %17, i32 %conv1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %19 = bitcast i8* %call to %struct.gsicc_tag*
  store %struct.gsicc_tag* %19, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %20 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %cmp = icmp eq %struct.gsicc_tag* %20, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1430, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load i32, i32* %num_tags, align 4, !tbaa !5
  %mul4 = mul nsw i32 12, %21
  %22 = load i32, i32* %profile_size, align 4, !tbaa !5
  %add = add nsw i32 %22, %mul4
  store i32 %add, i32* %profile_size, align 4, !tbaa !5
  %23 = load i32, i32* %profile_size, align 4, !tbaa !5
  %add5 = add nsw i32 %23, 4
  store i32 %add5, i32* %profile_size, align 4, !tbaa !5
  store i32 -1, i32* %last_tag, align 4, !tbaa !5
  %24 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %25 = load i32, i32* %num_tags, align 4, !tbaa !5
  call void @init_common_tags(%struct.gsicc_tag* %24, i32 %25, i32* %last_tag) #6
  %26 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %26, i32* %last_tag, i32 2004119668, i32 12) #6
  %27 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @init_tag(%struct.gsicc_tag* %27, i32* %last_tag, i32 1651208308, i32 12) #6
  %28 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %call6 = call i32 @getsize_lutAtoBtype(%struct.gsicc_lutatob* %28) #6
  %sub = sub nsw i32 %call6, 8
  store i32 %sub, i32* %tag_size, align 4, !tbaa !5
  %29 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %30 = load i32, i32* %tag_size, align 4, !tbaa !5
  call void @init_tag(%struct.gsicc_tag* %29, i32* %last_tag, i32 1093812784, i32 %30) #6
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load i32, i32* %k, align 4, !tbaa !5
  %32 = load i32, i32* %num_tags, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %31, %32
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %33 to i64
  %34 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %34, i64 %idxprom
  %size = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx, i32 0, i32 2
  %35 = load i32, i32* %size, align 4, !tbaa !18
  %36 = load i32, i32* %profile_size, align 4, !tbaa !5
  %add9 = add i32 %36, %35
  store i32 %add9, i32* %profile_size, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !20
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %alloc_bytes11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 7
  %40 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes11, align 8, !tbaa !15
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory12 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory12, align 8, !tbaa !20
  %43 = load i32, i32* %profile_size, align 4, !tbaa !5
  %call13 = call i8* %40(%struct.gs_memory_s* %42, i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  store i8* %call13, i8** %buffer, align 8, !tbaa !1
  %44 = load i8*, i8** %buffer, align 8, !tbaa !1
  %cmp14 = icmp eq i8* %44, null
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %for.end
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %45, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs17, i32 0, i32 2
  %46 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %48 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %49 = bitcast %struct.gsicc_tag* %48 to i8*
  call void %46(%struct.gs_memory_s* %47, i8* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %call18 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1455, i32 0, i32 -25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0)) #6
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %for.end
  %50 = load i8*, i8** %buffer, align 8, !tbaa !1
  store i8* %50, i8** %curr_ptr, align 8, !tbaa !1
  %51 = load i32, i32* %profile_size, align 4, !tbaa !5
  %52 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %size20 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %52, i32 0, i32 0
  store i32 %51, i32* %size20, align 4, !tbaa !22
  %53 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %54 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  call void @copy_header(i8* %53, %struct.icHeader* %54) #6
  %55 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 128
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %56 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %57 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %58 = load i32, i32* %num_tags, align 4, !tbaa !5
  %conv21 = sext i32 %58 to i64
  call void @copy_tagtable(i8* %56, %struct.gsicc_tag* %57, i64 %conv21) #6
  %59 = load i32, i32* %num_tags, align 4, !tbaa !5
  %mul22 = mul nsw i32 12, %59
  %60 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext = sext i32 %mul22 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %60, i64 %idx.ext
  store i8* %add.ptr23, i8** %curr_ptr, align 8, !tbaa !1
  %61 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %add.ptr24, i8** %curr_ptr, align 8, !tbaa !1
  %62 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %63 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  call void @add_common_tag_data(i8* %62, %struct.gsicc_tag* %63) #6
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.34, %if.end.19
  %64 = load i32, i32* %k, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %64, 2
  br i1 %cmp26, label %for.body.28, label %for.end.36

for.body.28:                                      ; preds = %for.cond.25
  %65 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom29 = sext i32 %65 to i64
  %66 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %66, i64 %idxprom29
  %size31 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx30, i32 0, i32 2
  %67 = load i32, i32* %size31, align 4, !tbaa !18
  %68 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext32 = zext i32 %67 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %68, i64 %idx.ext32
  store i8* %add.ptr33, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.28
  %69 = load i32, i32* %k, align 4, !tbaa !5
  %inc35 = add nsw i32 %69, 1
  store i32 %inc35, i32* %k, align 4, !tbaa !5
  br label %for.cond.25

for.end.36:                                       ; preds = %for.cond.25
  store i32 2, i32* %tag_location, align 4, !tbaa !5
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 0
  store float 0x3FEEDABA00000000, float* %u, align 4, !tbaa !62
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 1
  store float 1.000000e+00, float* %v, align 4, !tbaa !64
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 2
  store float 0x3FEA6594A0000000, float* %w, align 4, !tbaa !65
  %70 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %70, i32 0, i32 1
  %alloc_bytes38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 7
  %71 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes38, align 8, !tbaa !15
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call39 = call i8* %71(%struct.gs_memory_s* %72, i32 36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %73 = bitcast i8* %call39 to float*
  store float* %73, float** %cam, align 8, !tbaa !1
  %74 = load float*, float** %cam, align 8, !tbaa !1
  %cmp40 = icmp eq float* %74, null
  br i1 %cmp40, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %for.end.36
  %75 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %75, i32 0, i32 1
  %free_object44 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %76 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object44, align 8, !tbaa !21
  %77 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %78 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %79 = bitcast %struct.gsicc_tag* %78 to i8*
  call void %76(%struct.gs_memory_s* %77, i8* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %80 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory45 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory45, align 8, !tbaa !20
  %procs46 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %free_object47 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs46, i32 0, i32 2
  %82 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object47, align 8, !tbaa !21
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %non_gc_memory48 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory48, align 8, !tbaa !20
  %85 = load i8*, i8** %buffer, align 8, !tbaa !1
  call void %82(%struct.gs_memory_s* %84, i8* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %call49 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1483, i32 0, i32 -25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #6
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.42, %for.end.36
  %86 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %86, i32 0, i32 7
  %87 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %88 = load float*, float** %cam, align 8, !tbaa !1
  call void @gsicc_create_compute_cam(%struct.gs_vector3_s* %87, %struct.gs_vector3_s* %d50, float* %88) #6
  %89 = load float*, float** %cam, align 8, !tbaa !1
  %90 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %cam51 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %90, i32 0, i32 9
  store float* %89, float** %cam51, align 8, !tbaa !93
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  call void @get_D50(i32* %arraydecay) #6
  %91 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arraydecay52 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  call void @add_xyzdata(i8* %91, i32* %arraydecay52) #6
  %92 = load i32, i32* %tag_location, align 4, !tbaa !5
  %idxprom53 = sext i32 %92 to i64
  %93 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %93, i64 %idxprom53
  %size55 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx54, i32 0, i32 2
  %94 = load i32, i32* %size55, align 4, !tbaa !18
  %95 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext56 = zext i32 %94 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %95, i64 %idx.ext56
  store i8* %add.ptr57, i8** %curr_ptr, align 8, !tbaa !1
  %96 = load i32, i32* %tag_location, align 4, !tbaa !5
  %inc58 = add nsw i32 %96, 1
  store i32 %inc58, i32* %tag_location, align 4, !tbaa !5
  %arraydecay59 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  %97 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %black_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %97, i32 0, i32 8
  %98 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %black_point, align 8, !tbaa !70
  call void @get_XYZ(i32* %arraydecay59, %struct.gs_vector3_s* %98) #6
  %99 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %arraydecay60 = getelementptr inbounds [3 x i32], [3 x i32]* %temp_XYZ, i32 0, i32 0
  call void @add_xyzdata(i8* %99, i32* %arraydecay60) #6
  %100 = load i32, i32* %tag_location, align 4, !tbaa !5
  %idxprom61 = sext i32 %100 to i64
  %101 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %101, i64 %idxprom61
  %size63 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx62, i32 0, i32 2
  %102 = load i32, i32* %size63, align 4, !tbaa !18
  %103 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext64 = zext i32 %102 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %103, i64 %idx.ext64
  store i8* %add.ptr65, i8** %curr_ptr, align 8, !tbaa !1
  %104 = load i32, i32* %tag_location, align 4, !tbaa !5
  %inc66 = add nsw i32 %104, 1
  store i32 %inc66, i32* %tag_location, align 4, !tbaa !5
  %105 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %105, i32 0, i32 3
  %106 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %cmp67 = icmp eq %struct.gs_matrix3_s* %106, null
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.50
  %107 = load float*, float** %cam, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %temp_matrix, i32 0, i32 0
  %u70 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  call void @gsicc_create_copy_matrix3(float* %107, float* %u70) #6
  %108 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix71 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %108, i32 0, i32 3
  store %struct.gs_matrix3_s* %temp_matrix, %struct.gs_matrix3_s** %matrix71, align 8, !tbaa !83
  br label %if.end.107

if.else:                                          ; preds = %if.end.50
  %109 = load i32, i32* %yonly.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %109, 0
  br i1 %tobool, label %if.then.72, label %if.else.99

if.then.72:                                       ; preds = %if.else
  %110 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix73 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %110, i32 0, i32 3
  %111 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix73, align 8, !tbaa !83
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %111, i32 0, i32 1
  %u74 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 0
  %112 = load float, float* %u74, align 4, !tbaa !98
  %arrayidx75 = getelementptr inbounds [3 x float], [3 x float]* %lmn_vector, i32 0, i64 0
  store float %112, float* %arrayidx75, align 4, !tbaa !23
  %113 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix76 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %113, i32 0, i32 3
  %114 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix76, align 8, !tbaa !83
  %cv77 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %114, i32 0, i32 1
  %v78 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv77, i32 0, i32 1
  %115 = load float, float* %v78, align 4, !tbaa !97
  %arrayidx79 = getelementptr inbounds [3 x float], [3 x float]* %lmn_vector, i32 0, i64 1
  store float %115, float* %arrayidx79, align 4, !tbaa !23
  %116 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix80 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %116, i32 0, i32 3
  %117 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix80, align 8, !tbaa !83
  %cv81 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %117, i32 0, i32 1
  %w82 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv81, i32 0, i32 2
  %118 = load float, float* %w82, align 4, !tbaa !99
  %arrayidx83 = getelementptr inbounds [3 x float], [3 x float]* %lmn_vector, i32 0, i64 2
  store float %118, float* %arrayidx83, align 4, !tbaa !23
  %119 = load i32, i32* %mashedLUT.addr, align 4, !tbaa !5
  %tobool84 = icmp ne i32 %119, 0
  br i1 %tobool84, label %if.then.85, label %if.else.89

if.then.85:                                       ; preds = %if.then.72
  %arrayidx86 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 0
  store float 0x3FEEDABA00000000, float* %arrayidx86, align 4, !tbaa !23
  %arrayidx87 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 1
  store float 1.000000e+00, float* %arrayidx87, align 4, !tbaa !23
  %arrayidx88 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 2
  store float 0x3FEA6594A0000000, float* %arrayidx88, align 4, !tbaa !23
  br label %if.end.93

if.else.89:                                       ; preds = %if.then.72
  %arrayidx90 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 0
  store float 0x3FDEDAD8E0000000, float* %arrayidx90, align 4, !tbaa !23
  %arrayidx91 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 1
  store float 0x3FE0001000000000, float* %arrayidx91, align 4, !tbaa !23
  %arrayidx92 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 2
  store float 0x3FDA65AF00000000, float* %arrayidx92, align 4, !tbaa !23
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.85
  %arrayidx94 = getelementptr inbounds [3 x float], [3 x float]* %d50_cieA, i32 0, i64 0
  %arrayidx95 = getelementptr inbounds [3 x float], [3 x float]* %lmn_vector, i32 0, i64 0
  %120 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix96 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %120, i32 0, i32 3
  %121 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix96, align 8, !tbaa !83
  %cu97 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %121, i32 0, i32 0
  %u98 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu97, i32 0, i32 0
  call void @matrixmult(float* %arrayidx94, i32 3, i32 1, float* %arrayidx95, i32 1, i32 3, float* %u98) #6
  br label %if.end.106

if.else.99:                                       ; preds = %if.else
  %122 = load float*, float** %cam, align 8, !tbaa !1
  %123 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix100 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %123, i32 0, i32 3
  %124 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix100, align 8, !tbaa !83
  %cu101 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %124, i32 0, i32 0
  %u102 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu101, i32 0, i32 0
  %cu103 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %temp_matrix, i32 0, i32 0
  %u104 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu103, i32 0, i32 0
  call void @matrixmult(float* %122, i32 3, i32 3, float* %u102, i32 3, i32 3, float* %u104) #6
  %125 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix105 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %125, i32 0, i32 3
  store %struct.gs_matrix3_s* %temp_matrix, %struct.gs_matrix3_s** %matrix105, align 8, !tbaa !83
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.99, %if.end.93
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.69
  %126 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %127 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  call void @add_lutAtoBtype(i8* %126, %struct.gsicc_lutatob* %127) #6
  %128 = load i8*, i8** %buffer, align 8, !tbaa !1
  %129 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i8* %128, i8** %129, align 8, !tbaa !1
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs108 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %free_object109 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs108, i32 0, i32 2
  %131 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object109, align 8, !tbaa !21
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %133 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list, align 8, !tbaa !1
  %134 = bitcast %struct.gsicc_tag* %133 to i8*
  call void %131(%struct.gs_memory_s* %132, i8* %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %135 = bitcast [3 x float]* %d50_cieA to i8*
  call void @llvm.lifetime.end(i64 12, i8* %135) #1
  %136 = bitcast [3 x float]* %lmn_vector to i8*
  call void @llvm.lifetime.end(i64 12, i8* %136) #1
  %137 = bitcast %struct.gs_matrix3_s* %temp_matrix to i8*
  call void @llvm.lifetime.end(i64 40, i8* %137) #1
  %138 = bitcast float** %cam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %139) #1
  %140 = bitcast [3 x i32]* %temp_XYZ to i8*
  call void @llvm.lifetime.end(i64 12, i8* %140) #1
  %141 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast i8** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i32* %tag_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %tag_location to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %last_tag to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %profile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast %struct.gsicc_tag** %tag_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %num_tags to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gsicc_create_initialize_clut(%struct.gsicc_clut* %clut) #0 {
entry:
  %clut.addr = alloca %struct.gsicc_clut*, align 8
  %k = alloca i32, align 4
  store %struct.gsicc_clut* %clut, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %3 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_entries = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %3, i32 0, i32 5
  store i32 %2, i32* %clut_num_entries, align 4, !tbaa !104
  store i32 1, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %k, align 4, !tbaa !5
  %5 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %5, i32 0, i32 3
  %6 = load i32, i32* %clut_num_input, align 4, !tbaa !87
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_dims1 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %8, i32 0, i32 2
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims1, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4, !tbaa !5
  %10 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_entries3 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %10, i32 0, i32 5
  %11 = load i32, i32* %clut_num_entries3, align 4, !tbaa !104
  %mul = mul nsw i32 %11, %9
  store i32 %mul, i32* %clut_num_entries3, align 4, !tbaa !104
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %data_byte = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %13, i32 0, i32 1
  store i8* null, i8** %data_byte, align 8, !tbaa !105
  %14 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %14, i32 0, i32 0
  store i16* null, i16** %data_short, align 8, !tbaa !91
  %15 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_matrix3_to_mlut(%struct.gs_matrix3_s* %mat, i16* %clut) #0 {
entry:
  %mat.addr = alloca %struct.gs_matrix3_s*, align 8
  %clut.addr = alloca i16*, align 8
  %grid_points = alloca [8 x [3 x float]], align 16
  %k = alloca i32, align 4
  %input = alloca %struct.gs_vector3_s, align 4
  %output = alloca %struct.gs_vector3_s, align 4
  %curr_ptr = alloca i16*, align 8
  %value = alloca i16, align 2
  %valueflt = alloca float, align 4
  store %struct.gs_matrix3_s* %mat, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  store i16* %clut, i16** %clut.addr, align 8, !tbaa !1
  %0 = bitcast [8 x [3 x float]]* %grid_points to i8*
  call void @llvm.lifetime.start(i64 96, i8* %0) #1
  %1 = bitcast [8 x [3 x float]]* %grid_points to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([8 x [3 x float]]* @gsicc_matrix3_to_mlut.grid_points to i8*), i64 96, i32 16, i1 false)
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast %struct.gs_vector3_s* %input to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3) #1
  %4 = bitcast %struct.gs_vector3_s* %output to i8*
  call void @llvm.lifetime.start(i64 12, i8* %4) #1
  %5 = bitcast i16** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i16*, i16** %clut.addr, align 8, !tbaa !1
  store i16* %6, i16** %curr_ptr, align 8, !tbaa !1
  %7 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #1
  %8 = bitcast float* %valueflt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %grid_points, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx, i32 0, i64 0
  %11 = load float, float* %arrayidx1, align 4, !tbaa !23
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %input, i32 0, i32 0
  store float %11, float* %u, align 4, !tbaa !62
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom2 = sext i32 %12 to i64
  %arrayidx3 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %grid_points, i32 0, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx3, i32 0, i64 1
  %13 = load float, float* %arrayidx4, align 4, !tbaa !23
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %input, i32 0, i32 1
  store float %13, float* %v, align 4, !tbaa !64
  %14 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* %grid_points, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [3 x float], [3 x float]* %arrayidx6, i32 0, i64 2
  %15 = load float, float* %arrayidx7, align 4, !tbaa !23
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %input, i32 0, i32 2
  store float %15, float* %w, align 4, !tbaa !65
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %mat.addr, align 8, !tbaa !1
  call void @cie_mult3(%struct.gs_vector3_s* %input, %struct.gs_matrix3_s* %16, %struct.gs_vector3_s* %output) #6
  %u8 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %output, i32 0, i32 0
  %17 = load float, float* %u8, align 4, !tbaa !62
  store float %17, float* %valueflt, align 4, !tbaa !23
  %18 = load float, float* %valueflt, align 4, !tbaa !23
  %cmp9 = fcmp olt float %18, 0.000000e+00
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store float 0.000000e+00, float* %valueflt, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %19 = load float, float* %valueflt, align 4, !tbaa !23
  %cmp10 = fcmp ogt float %19, 1.000000e+00
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store float 1.000000e+00, float* %valueflt, align 4, !tbaa !23
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %20 = load float, float* %valueflt, align 4, !tbaa !23
  %conv = fpext float %20 to double
  %mul = fmul double %conv, 6.553500e+04
  %conv13 = fptoui double %mul to i16
  store i16 %conv13, i16* %value, align 2, !tbaa !25
  %21 = load i16, i16* %value, align 2, !tbaa !25
  %22 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr, i16** %curr_ptr, align 8, !tbaa !1
  store i16 %21, i16* %22, align 2, !tbaa !25
  %v14 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %output, i32 0, i32 1
  %23 = load float, float* %v14, align 4, !tbaa !64
  store float %23, float* %valueflt, align 4, !tbaa !23
  %24 = load float, float* %valueflt, align 4, !tbaa !23
  %cmp15 = fcmp olt float %24, 0.000000e+00
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.12
  store float 0.000000e+00, float* %valueflt, align 4, !tbaa !23
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.12
  %25 = load float, float* %valueflt, align 4, !tbaa !23
  %cmp19 = fcmp ogt float %25, 1.000000e+00
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  store float 1.000000e+00, float* %valueflt, align 4, !tbaa !23
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.18
  %26 = load float, float* %valueflt, align 4, !tbaa !23
  %conv23 = fpext float %26 to double
  %mul24 = fmul double %conv23, 6.553500e+04
  %conv25 = fptoui double %mul24 to i16
  store i16 %conv25, i16* %value, align 2, !tbaa !25
  %27 = load i16, i16* %value, align 2, !tbaa !25
  %28 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr26, i16** %curr_ptr, align 8, !tbaa !1
  store i16 %27, i16* %28, align 2, !tbaa !25
  %w27 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %output, i32 0, i32 2
  %29 = load float, float* %w27, align 4, !tbaa !65
  store float %29, float* %valueflt, align 4, !tbaa !23
  %30 = load float, float* %valueflt, align 4, !tbaa !23
  %cmp28 = fcmp olt float %30, 0.000000e+00
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.22
  store float 0.000000e+00, float* %valueflt, align 4, !tbaa !23
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.22
  %31 = load float, float* %valueflt, align 4, !tbaa !23
  %cmp32 = fcmp ogt float %31, 1.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store float 1.000000e+00, float* %valueflt, align 4, !tbaa !23
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  %32 = load float, float* %valueflt, align 4, !tbaa !23
  %conv36 = fpext float %32 to double
  %mul37 = fmul double %conv36, 6.553500e+04
  %conv38 = fptoui double %mul37 to i16
  store i16 %conv38, i16* %value, align 2, !tbaa !25
  %33 = load i16, i16* %value, align 2, !tbaa !25
  %34 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %incdec.ptr39, i16** %curr_ptr, align 8, !tbaa !1
  store i16 %33, i16* %34, align 2, !tbaa !25
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %35 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = bitcast float* %valueflt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %37) #1
  %38 = bitcast i16** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast %struct.gs_vector3_s* %output to i8*
  call void @llvm.lifetime.end(i64 12, i8* %39) #1
  %40 = bitcast %struct.gs_vector3_s* %input to i8*
  call void @llvm.lifetime.end(i64 12, i8* %40) #1
  %41 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast [8 x [3 x float]]* %grid_points to i8*
  call void @llvm.lifetime.end(i64 96, i8* %42) #1
  ret void
}

declare void @cie_matrix_transpose3(%struct.gs_matrix3_s*, %struct.gs_matrix3_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gsicc_create_free_luta2bpart(%struct.gs_memory_s* %memory, %struct.gsicc_lutatob* %icc_luta2bparts) #0 {
entry:
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %icc_luta2bparts.addr = alloca %struct.gsicc_lutatob*, align 8
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gsicc_lutatob* %icc_luta2bparts, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %0, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %1 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %3 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %3, i32 0, i32 0
  %4 = load float*, float** %a_curves, align 8, !tbaa !85
  %5 = bitcast float* %4 to i8*
  call void %1(%struct.gs_memory_s* %2, i8* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object2 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs1, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object2, align 8, !tbaa !21
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %9 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %b_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %9, i32 0, i32 4
  %10 = load float*, float** %b_curves, align 8, !tbaa !92
  %11 = bitcast float* %10 to i8*
  call void %7(%struct.gs_memory_s* %8, i8* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 1
  %free_object4 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %13 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object4, align 8, !tbaa !21
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %15 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %15, i32 0, i32 2
  %16 = load float*, float** %m_curves, align 8, !tbaa !86
  %17 = bitcast float* %16 to i8*
  call void %13(%struct.gs_memory_s* %14, i8* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object6, align 8, !tbaa !21
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %21 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %cam = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %21, i32 0, i32 9
  %22 = load float*, float** %cam, align 8, !tbaa !93
  %23 = bitcast float* %22 to i8*
  call void %19(%struct.gs_memory_s* %20, i8* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  %24 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %24, i32 0, i32 1
  %25 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %tobool = icmp ne %struct.gsicc_clut* %25, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %26, i32 0, i32 1
  %free_object8 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs7, i32 0, i32 2
  %27 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object8, align 8, !tbaa !21
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %29 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut9 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %29, i32 0, i32 1
  %30 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut9, align 8, !tbaa !84
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %30, i32 0, i32 0
  %31 = load i16*, i16** %data_short, align 8, !tbaa !91
  %32 = bitcast i16* %31 to i8*
  call void %27(%struct.gs_memory_s* %28, i8* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 1
  %free_object11 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %34 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object11, align 8, !tbaa !21
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %36 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut12 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %36, i32 0, i32 1
  %37 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut12, align 8, !tbaa !84
  %38 = bitcast %struct.gsicc_clut* %37 to i8*
  call void %34(%struct.gs_memory_s* %35, i8* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_create_froma(%struct.gs_color_space_s* %pcs, i8** %pp_buffer_in, i32* %profile_size_out, %struct.gs_memory_s* %memory, %struct.gx_cie_vector_cache_s* %a_cache, %union.gx_cie_scalar_cache_s* %lmn_caches) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pp_buffer_in.addr = alloca i8**, align 8
  %profile_size_out.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %a_cache.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %iccprofile = alloca %struct.icProfile, align 4
  %header = alloca %struct.icHeader*, align 8
  %matrix_input = alloca %struct.gs_matrix3_s, align 4
  %curr_pos = alloca float*, align 8
  %has_a_proc = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %icc_luta2bparts = alloca %struct.gsicc_lutatob, align 8
  %common_range_ok = alloca i32, align 4
  %pcie = alloca %struct.gs_cie_a_s*, align 8
  %input_range_ok = alloca i32, align 4
  %code = alloca i32, align 4
  %cam = alloca float*, align 8
  %d50 = alloca %struct.gs_vector3_s, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i32* %profile_size_out, i32** %profile_size_out.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_cie_vector_cache_s* %a_cache, %struct.gx_cie_vector_cache_s** %a_cache.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %0 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %header1 = getelementptr inbounds %struct.icProfile, %struct.icProfile* %iccprofile, i32 0, i32 0
  store %struct.icHeader* %header1, %struct.icHeader** %header, align 8, !tbaa !1
  %2 = bitcast %struct.gs_matrix3_s* %matrix_input to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #1
  %3 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %has_a_proc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %a_cache.addr, align 8, !tbaa !1
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %5, i32 0, i32 0
  %params = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params, i32 0, i32 0
  %6 = load i32, i32* %is_identity, align 4, !tbaa !53
  %tobool = icmp ne i32 %6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %has_a_proc, align 4, !tbaa !5
  %7 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %floats2 = bitcast %union.gx_cie_scalar_cache_s* %8 to %struct.cie_cache_floats_s*
  %params3 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats2, i32 0, i32 0
  %is_identity4 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params3, i32 0, i32 0
  %9 = load i32, i32* %is_identity4, align 4, !tbaa !61
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %10, i64 1
  %floats6 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx to %struct.cie_cache_floats_s*
  %params7 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats6, i32 0, i32 0
  %is_identity8 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params7, i32 0, i32 0
  %11 = load i32, i32* %is_identity8, align 4, !tbaa !61
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %12, i64 2
  %floats11 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx10 to %struct.cie_cache_floats_s*
  %params12 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats11, i32 0, i32 0
  %is_identity13 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params12, i32 0, i32 0
  %13 = load i32, i32* %is_identity13, align 4, !tbaa !61
  %tobool14 = icmp ne i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool14, %land.rhs ]
  %lnot15 = xor i1 %14, true
  %lnot.ext16 = zext i1 %lnot15 to i32
  store i32 %lnot.ext16, i32* %has_lmn_procs, align 4, !tbaa !5
  %15 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.start(i64 72, i8* %15) #1
  %16 = bitcast i32* %common_range_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params17 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %18, i32 0, i32 7
  %a = bitcast %union.anon* %params17 to %struct.gs_cie_a_s**
  %19 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %a, align 8, !tbaa !1
  store %struct.gs_cie_a_s* %19, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %20 = bitcast i32* %input_range_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast float** %cam to i8*
  call void @llvm.lifetime.start(i64 8, i8* %22) #1
  %23 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.start(i64 12, i8* %23) #1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 0
  store float 0x3FEEDABA00000000, float* %u, align 4, !tbaa !62
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 1
  store float 1.000000e+00, float* %v, align 4, !tbaa !64
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %d50, i32 0, i32 2
  store float 0x3FEA6594A0000000, float* %w, align 4, !tbaa !65
  call void @gsicc_create_init_luta2bpart(%struct.gsicc_lutatob* %icc_luta2bparts) #6
  %24 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  call void @setheader_common(%struct.icHeader* %24) #6
  %25 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %colorSpace = getelementptr inbounds %struct.icHeader, %struct.icHeader* %25, i32 0, i32 4
  store i32 1196573017, i32* %colorSpace, align 4, !tbaa !13
  %26 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %deviceClass = getelementptr inbounds %struct.icHeader, %struct.icHeader* %26, i32 0, i32 3
  store i32 1935896178, i32* %deviceClass, align 4, !tbaa !12
  %27 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %pcs18 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %27, i32 0, i32 5
  store i32 1482250784, i32* %pcs18, align 4, !tbaa !7
  %num_out = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 6
  store i32 3, i32* %num_out, align 4, !tbaa !68
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 5
  store i32 1, i32* %num_in, align 4, !tbaa !66
  %28 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %28, i32 0, i32 0
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 7
  store %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %29 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common19 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %29, i32 0, i32 0
  %points20 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common19, i32 0, i32 5
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points20, i32 0, i32 1
  %black_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 8
  store %struct.gs_vector3_s* %BlackPoint, %struct.gs_vector3_s** %black_point, align 8, !tbaa !70
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_compute_cam(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.gs_memory_s* %30) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %31, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %call21 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1956, i32 1, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %33 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common22 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %33, i32 0, i32 0
  %RangeLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common22, i32 0, i32 2
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeLMN, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %call24 = call i32 @check_range(%struct.gs_range_s* %arrayidx23, i32 3) #6
  store i32 %call24, i32* %common_range_ok, align 4, !tbaa !5
  %34 = load i32, i32* %common_range_ok, align 4, !tbaa !5
  %tobool25 = icmp ne i32 %34, 0
  br i1 %tobool25, label %if.else, label %if.then.26

if.then.26:                                       ; preds = %if.end
  %35 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %RangeA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %35, i32 0, i32 2
  %call27 = call i32 @check_range(%struct.gs_range_s* %RangeA, i32 1) #6
  store i32 %call27, i32* %input_range_ok, align 4, !tbaa !5
  %36 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %37 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %38 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %RangeA28 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %38, i32 0, i32 2
  %39 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %40 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  %41 = load i32, i32* %input_range_ok, align 4, !tbaa !5
  %tobool29 = icmp ne i32 %41, 0
  %lnot30 = xor i1 %tobool29, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call32 = call i32 @gsicc_create_mashed_clut(%struct.gsicc_lutatob* %icc_luta2bparts, %struct.icHeader* %36, %struct.gx_color_lookup_table_s* null, %struct.gs_color_space_s* %37, %struct.gs_range_s* %RangeA28, i8** %39, i32* %40, i32 %lnot.ext31, %struct.gs_memory_s* %42) #6
  store i32 %call32, i32* %code, align 4, !tbaa !5
  %43 = load i32, i32* %code, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %43, 0
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.26
  %44 = load i32, i32* %code, align 4, !tbaa !5
  %call35 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1971, i32 1, i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0)) #6
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.then.26
  br label %if.end.135

if.else:                                          ; preds = %if.end
  %45 = load i32, i32* %has_a_proc, align 4, !tbaa !5
  %tobool37 = icmp ne i32 %45, 0
  br i1 %tobool37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.else
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %47 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call39 = call i8* %47(%struct.gs_memory_s* %48, i32 2048, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %49 = bitcast i8* %call39 to float*
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  store float* %49, float** %a_curves, align 8, !tbaa !85
  %a_curves40 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %50 = load float*, float** %a_curves40, align 8, !tbaa !85
  %cmp41 = icmp eq float* %50, null
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.38
  %call43 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1983, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.then.38
  %a_curves45 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %51 = load float*, float** %a_curves45, align 8, !tbaa !85
  %52 = bitcast float* %51 to i8*
  %53 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %53, i32 0, i32 5
  %DecodeA = getelementptr inbounds %struct.anon.5, %struct.anon.5* %caches, i32 0, i32 0
  %floats46 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %DecodeA, i32 0, i32 0
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats46, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %54 = bitcast float* %arrayidx47 to i8*
  %call48 = call i8* @memcpy(i8* %52, i8* %54, i64 2048) #7
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.44, %if.else
  %55 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %55, 0
  br i1 %tobool50, label %if.then.51, label %if.end.86

if.then.51:                                       ; preds = %if.end.49
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs52 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %alloc_bytes53 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs52, i32 0, i32 7
  %57 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes53, align 8, !tbaa !15
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call54 = call i8* %57(%struct.gs_memory_s* %58, i32 6144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %59 = bitcast i8* %call54 to float*
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  store float* %59, float** %m_curves, align 8, !tbaa !86
  %m_curves55 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %60 = load float*, float** %m_curves55, align 8, !tbaa !86
  %cmp56 = icmp eq float* %60, null
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.then.51
  %61 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs58 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %61, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs58, i32 0, i32 2
  %62 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %a_curves59 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %64 = load float*, float** %a_curves59, align 8, !tbaa !85
  %65 = bitcast float* %64 to i8*
  call void %62(%struct.gs_memory_s* %63, i8* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %call60 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1993, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0)) #6
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.then.51
  %m_curves62 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %66 = load float*, float** %m_curves62, align 8, !tbaa !86
  store float* %66, float** %curr_pos, align 8, !tbaa !1
  %67 = load float*, float** %curr_pos, align 8, !tbaa !1
  %68 = bitcast float* %67 to i8*
  %69 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common63 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %69, i32 0, i32 0
  %caches64 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common63, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches64, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i32 0
  %floats65 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay to %struct.cie_cache_floats_s*
  %values66 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats65, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [512 x float], [512 x float]* %values66, i32 0, i64 0
  %70 = bitcast float* %arrayidx67 to i8*
  %call68 = call i8* @memcpy(i8* %68, i8* %70, i64 2048) #7
  %71 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %71, i64 512
  store float* %add.ptr, float** %curr_pos, align 8, !tbaa !1
  %72 = load float*, float** %curr_pos, align 8, !tbaa !1
  %73 = bitcast float* %72 to i8*
  %74 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common69 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %74, i32 0, i32 0
  %caches70 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common69, i32 0, i32 6
  %DecodeLMN71 = getelementptr inbounds %struct.anon, %struct.anon* %caches70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN71, i32 0, i64 1
  %floats73 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx72 to %struct.cie_cache_floats_s*
  %values74 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats73, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [512 x float], [512 x float]* %values74, i32 0, i64 0
  %75 = bitcast float* %arrayidx75 to i8*
  %call76 = call i8* @memcpy(i8* %73, i8* %75, i64 2048) #7
  %76 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr77 = getelementptr inbounds float, float* %76, i64 512
  store float* %add.ptr77, float** %curr_pos, align 8, !tbaa !1
  %77 = load float*, float** %curr_pos, align 8, !tbaa !1
  %78 = bitcast float* %77 to i8*
  %79 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common78 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %79, i32 0, i32 0
  %caches79 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common78, i32 0, i32 6
  %DecodeLMN80 = getelementptr inbounds %struct.anon, %struct.anon* %caches79, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN80, i32 0, i64 2
  %floats82 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx81 to %struct.cie_cache_floats_s*
  %values83 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats82, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [512 x float], [512 x float]* %values83, i32 0, i64 0
  %80 = bitcast float* %arrayidx84 to i8*
  %call85 = call i8* @memcpy(i8* %78, i8* %80, i64 2048) #7
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.61, %if.end.49
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs87 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %alloc_bytes88 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs87, i32 0, i32 7
  %82 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes88, align 8, !tbaa !15
  %83 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call89 = call i8* %82(%struct.gs_memory_s* %83, i32 48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %84 = bitcast i8* %call89 to %struct.gsicc_clut*
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  store %struct.gsicc_clut* %84, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %clut90 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %85 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut90, align 8, !tbaa !84
  %cmp91 = icmp eq %struct.gsicc_clut* %85, null
  br i1 %cmp91, label %if.then.92, label %if.end.100

if.then.92:                                       ; preds = %if.end.86
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs93 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %free_object94 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs93, i32 0, i32 2
  %87 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object94, align 8, !tbaa !21
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %a_curves95 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %89 = load float*, float** %a_curves95, align 8, !tbaa !85
  %90 = bitcast float* %89 to i8*
  call void %87(%struct.gs_memory_s* %88, i8* %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %91 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs96 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %91, i32 0, i32 1
  %free_object97 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs96, i32 0, i32 2
  %92 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object97, align 8, !tbaa !21
  %93 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %m_curves98 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %94 = load float*, float** %m_curves98, align 8, !tbaa !86
  %95 = bitcast float* %94 to i8*
  call void %92(%struct.gs_memory_s* %93, i8* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %call99 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2011, i32 0, i32 -25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.92, %if.end.86
  %clut101 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %96 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut101, align 8, !tbaa !84
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %96, i32 0, i32 2
  %arrayidx102 = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 0
  store i32 2, i32* %arrayidx102, align 4, !tbaa !5
  %clut103 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %97 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut103, align 8, !tbaa !84
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %97, i32 0, i32 3
  store i32 1, i32* %clut_num_input, align 4, !tbaa !87
  %clut104 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %98 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut104, align 8, !tbaa !84
  %clut_num_output = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %98, i32 0, i32 4
  store i32 3, i32* %clut_num_output, align 4, !tbaa !89
  %clut105 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %99 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut105, align 8, !tbaa !84
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %99, i32 0, i32 6
  store i32 2, i32* %clut_word_width, align 4, !tbaa !90
  %clut106 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %100 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut106, align 8, !tbaa !84
  call void @gsicc_create_initialize_clut(%struct.gsicc_clut* %100) #6
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs107 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 1
  %alloc_bytes108 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs107, i32 0, i32 7
  %102 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes108, align 8, !tbaa !15
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call109 = call i8* %102(%struct.gs_memory_s* %103, i32 12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %104 = bitcast i8* %call109 to i16*
  %clut110 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %105 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut110, align 8, !tbaa !84
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %105, i32 0, i32 0
  store i16* %104, i16** %data_short, align 8, !tbaa !91
  %clut111 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %106 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut111, align 8, !tbaa !84
  %cmp112 = icmp eq %struct.gsicc_clut* %106, null
  br i1 %cmp112, label %if.then.113, label %if.end.124

if.then.113:                                      ; preds = %if.end.100
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 1
  %free_object115 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs114, i32 0, i32 2
  %108 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object115, align 8, !tbaa !21
  %109 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %a_curves116 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %110 = load float*, float** %a_curves116, align 8, !tbaa !85
  %111 = bitcast float* %110 to i8*
  call void %108(%struct.gs_memory_s* %109, i8* %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %112 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs117 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %112, i32 0, i32 1
  %free_object118 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs117, i32 0, i32 2
  %113 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object118, align 8, !tbaa !21
  %114 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %m_curves119 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 2
  %115 = load float*, float** %m_curves119, align 8, !tbaa !86
  %116 = bitcast float* %115 to i8*
  call void %113(%struct.gs_memory_s* %114, i8* %116, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs120 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 1
  %free_object121 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs120, i32 0, i32 2
  %118 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object121, align 8, !tbaa !21
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %clut122 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %120 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut122, align 8, !tbaa !84
  %121 = bitcast %struct.gsicc_clut* %120 to i8*
  call void %118(%struct.gs_memory_s* %119, i8* %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0)) #6
  %call123 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2026, i32 0, i32 -25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0)) #6
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.113, %if.end.100
  %122 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %MatrixA = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %122, i32 0, i32 4
  %clut125 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 1
  %123 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut125, align 8, !tbaa !84
  %data_short126 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %123, i32 0, i32 0
  %124 = load i16*, i16** %data_short126, align 8, !tbaa !91
  call void @gsicc_vec_to_mlut(%struct.gs_vector3_s* %MatrixA, i16* %124) #6
  %125 = load %struct.gs_cie_a_s*, %struct.gs_cie_a_s** %pcie, align 8, !tbaa !1
  %common127 = getelementptr inbounds %struct.gs_cie_a_s, %struct.gs_cie_a_s* %125, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common127, i32 0, i32 4
  call void @cie_matrix_transpose3(%struct.gs_matrix3_s* %MatrixLMN, %struct.gs_matrix3_s* %matrix_input) #6
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 3
  store %struct.gs_matrix3_s* %matrix_input, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %num_in128 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 5
  store i32 1, i32* %num_in128, align 4, !tbaa !66
  %num_out129 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 6
  store i32 3, i32* %num_out129, align 4, !tbaa !68
  %126 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %127 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %128 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call130 = call i32 @create_lutAtoBprofile(i8** %126, %struct.icHeader* %127, %struct.gsicc_lutatob* %icc_luta2bparts, i32 1, i32 0, %struct.gs_memory_s* %128) #6
  store i32 %call130, i32* %code, align 4, !tbaa !5
  %129 = load i32, i32* %code, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %129, 0
  br i1 %cmp131, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %if.end.124
  %130 = load i32, i32* %code, align 4, !tbaa !5
  %call133 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gsicc_create_froma, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2047, i32 1, i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0)) #6
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %if.end.124
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.36
  %131 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.icHeader, %struct.icHeader* %131, i32 0, i32 0
  %132 = load i32, i32* %size, align 4, !tbaa !22
  %133 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  store i32 %132, i32* %133, align 4, !tbaa !5
  %134 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  call void @gsicc_create_free_luta2bpart(%struct.gs_memory_s* %134, %struct.gsicc_lutatob* %icc_luta2bparts) #6
  %135 = bitcast %struct.gs_vector3_s* %d50 to i8*
  call void @llvm.lifetime.end(i64 12, i8* %135) #1
  %136 = bitcast float** %cam to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %input_range_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast %struct.gs_cie_a_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i32* %common_range_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.end(i64 72, i8* %141) #1
  %142 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #1
  %143 = bitcast i32* %has_a_proc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast %struct.gs_matrix3_s* %matrix_input to i8*
  call void @llvm.lifetime.end(i64 40, i8* %145) #1
  %146 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.end(i64 136, i8* %147) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_vec_to_mlut(%struct.gs_vector3_s* %vec, i16* %clut) #0 {
entry:
  %vec.addr = alloca %struct.gs_vector3_s*, align 8
  %clut.addr = alloca i16*, align 8
  %curr_ptr = alloca i16*, align 8
  %temp = alloca i32, align 4
  store %struct.gs_vector3_s* %vec, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  store i16* %clut, i16** %clut.addr, align 8, !tbaa !1
  %0 = bitcast i16** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i16*, i16** %clut.addr, align 8, !tbaa !1
  store i16* %1, i16** %curr_ptr, align 8, !tbaa !1
  %2 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %3, i32 1
  store i16* %incdec.ptr, i16** %curr_ptr, align 8, !tbaa !1
  store i16 0, i16* %3, align 2, !tbaa !25
  %4 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr1 = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr1, i16** %curr_ptr, align 8, !tbaa !1
  store i16 0, i16* %4, align 2, !tbaa !25
  %5 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i16, i16* %5, i32 1
  store i16* %incdec.ptr2, i16** %curr_ptr, align 8, !tbaa !1
  store i16 0, i16* %5, align 2, !tbaa !25
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %6, i32 0, i32 0
  %7 = load float, float* %u, align 4, !tbaa !62
  %mul = fmul float %7, 6.553500e+04
  %conv = fptosi float %mul to i32
  store i32 %conv, i32* %temp, align 4, !tbaa !5
  %8 = load i32, i32* %temp, align 4, !tbaa !5
  %cmp = icmp sgt i32 %8, 65535
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 65535, i32* %temp, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %temp, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 0, i32* %temp, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %10 = load i32, i32* %temp, align 4, !tbaa !5
  %conv8 = trunc i32 %10 to i16
  %11 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %incdec.ptr9, i16** %curr_ptr, align 8, !tbaa !1
  store i16 %conv8, i16* %11, align 2, !tbaa !25
  %12 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %12, i32 0, i32 1
  %13 = load float, float* %v, align 4, !tbaa !64
  %mul10 = fmul float %13, 6.553500e+04
  %conv11 = fptosi float %mul10 to i32
  store i32 %conv11, i32* %temp, align 4, !tbaa !5
  %14 = load i32, i32* %temp, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %14, 65535
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  store i32 65535, i32* %temp, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.7
  %15 = load i32, i32* %temp, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 0, i32* %temp, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.15
  %16 = load i32, i32* %temp, align 4, !tbaa !5
  %conv20 = trunc i32 %16 to i16
  %17 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %incdec.ptr21, i16** %curr_ptr, align 8, !tbaa !1
  store i16 %conv20, i16* %17, align 2, !tbaa !25
  %18 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %18, i32 0, i32 2
  %19 = load float, float* %w, align 4, !tbaa !65
  %mul22 = fmul float %19, 6.553500e+04
  %conv23 = fptosi float %mul22 to i32
  store i32 %conv23, i32* %temp, align 4, !tbaa !5
  %20 = load i32, i32* %temp, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %20, 65535
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.19
  store i32 65535, i32* %temp, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.19
  %21 = load i32, i32* %temp, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %21, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  store i32 0, i32* %temp, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.27
  %22 = load i32, i32* %temp, align 4, !tbaa !5
  %conv32 = trunc i32 %22 to i16
  %23 = load i16*, i16** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %incdec.ptr33, i16** %curr_ptr, align 8, !tbaa !1
  store i16 %conv32, i16* %23, align 2, !tbaa !25
  %24 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i16** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_create_fromdefg(%struct.gs_color_space_s* %pcs, i8** %pp_buffer_in, i32* %profile_size_out, %struct.gs_memory_s* %memory, %struct.gx_cie_vector_cache_s* %abc_caches, %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s* %defg_caches) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pp_buffer_in.addr = alloca i8**, align 8
  %profile_size_out.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %abc_caches.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %defg_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %pcie = alloca %struct.gs_cie_defg_s*, align 8
  %icc_luta2bparts = alloca %struct.gsicc_lutatob, align 8
  %iccprofile = alloca %struct.icProfile, align 4
  %header = alloca %struct.icHeader*, align 8
  %curr_pos = alloca float*, align 8
  %has_abc_procs = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %has_defg_procs = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i32* %profile_size_out, i32** %profile_size_out.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_cie_vector_cache_s* %abc_caches, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %defg_caches, %union.gx_cie_scalar_cache_s** %defg_caches.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %defg = bitcast %union.anon* %params to %struct.gs_cie_defg_s**
  %2 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  store %struct.gs_cie_defg_s* %2, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.start(i64 136, i8* %4) #1
  %5 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %header1 = getelementptr inbounds %struct.icProfile, %struct.icProfile* %iccprofile, i32 0, i32 0
  store %struct.icHeader* %header1, %struct.icHeader** %header, align 8, !tbaa !1
  %6 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %8, i32 0, i32 0
  %params2 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params2, i32 0, i32 0
  %9 = load i32, i32* %is_identity, align 4, !tbaa !53
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %10, i64 1
  %floats3 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %params4 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats3, i32 0, i32 0
  %is_identity5 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params4, i32 0, i32 0
  %11 = load i32, i32* %is_identity5, align 4, !tbaa !53
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %12, i64 2
  %floats8 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx7, i32 0, i32 0
  %params9 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats8, i32 0, i32 0
  %is_identity10 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params9, i32 0, i32 0
  %13 = load i32, i32* %is_identity10, align 4, !tbaa !53
  %tobool11 = icmp ne i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool11, %land.rhs ]
  %lnot = xor i1 %14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %has_abc_procs, align 4, !tbaa !5
  %15 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %floats12 = bitcast %union.gx_cie_scalar_cache_s* %16 to %struct.cie_cache_floats_s*
  %params13 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats12, i32 0, i32 0
  %is_identity14 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params13, i32 0, i32 0
  %17 = load i32, i32* %is_identity14, align 4, !tbaa !61
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %land.lhs.true.16, label %land.end.28

land.lhs.true.16:                                 ; preds = %land.end
  %18 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %18, i64 1
  %floats18 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx17 to %struct.cie_cache_floats_s*
  %params19 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats18, i32 0, i32 0
  %is_identity20 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params19, i32 0, i32 0
  %19 = load i32, i32* %is_identity20, align 4, !tbaa !61
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %land.rhs.22, label %land.end.28

land.rhs.22:                                      ; preds = %land.lhs.true.16
  %20 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %20, i64 2
  %floats24 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx23 to %struct.cie_cache_floats_s*
  %params25 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats24, i32 0, i32 0
  %is_identity26 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params25, i32 0, i32 0
  %21 = load i32, i32* %is_identity26, align 4, !tbaa !61
  %tobool27 = icmp ne i32 %21, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.22, %land.lhs.true.16, %land.end
  %22 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.end ], [ %tobool27, %land.rhs.22 ]
  %lnot29 = xor i1 %22, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  store i32 %lnot.ext30, i32* %has_lmn_procs, align 4, !tbaa !5
  %23 = bitcast i32* %has_defg_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %defg_caches.addr, align 8, !tbaa !1
  %floats31 = bitcast %union.gx_cie_scalar_cache_s* %24 to %struct.cie_cache_floats_s*
  %params32 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats31, i32 0, i32 0
  %is_identity33 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params32, i32 0, i32 0
  %25 = load i32, i32* %is_identity33, align 4, !tbaa !61
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %land.lhs.true.35, label %land.end.53

land.lhs.true.35:                                 ; preds = %land.end.28
  %26 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %defg_caches.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %26, i64 1
  %floats37 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx36 to %struct.cie_cache_floats_s*
  %params38 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats37, i32 0, i32 0
  %is_identity39 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params38, i32 0, i32 0
  %27 = load i32, i32* %is_identity39, align 4, !tbaa !61
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %land.lhs.true.41, label %land.end.53

land.lhs.true.41:                                 ; preds = %land.lhs.true.35
  %28 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %defg_caches.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %28, i64 2
  %floats43 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx42 to %struct.cie_cache_floats_s*
  %params44 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats43, i32 0, i32 0
  %is_identity45 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params44, i32 0, i32 0
  %29 = load i32, i32* %is_identity45, align 4, !tbaa !61
  %tobool46 = icmp ne i32 %29, 0
  br i1 %tobool46, label %land.rhs.47, label %land.end.53

land.rhs.47:                                      ; preds = %land.lhs.true.41
  %30 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %defg_caches.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %30, i64 3
  %floats49 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx48 to %struct.cie_cache_floats_s*
  %params50 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats49, i32 0, i32 0
  %is_identity51 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params50, i32 0, i32 0
  %31 = load i32, i32* %is_identity51, align 4, !tbaa !61
  %tobool52 = icmp ne i32 %31, 0
  br label %land.end.53

land.end.53:                                      ; preds = %land.rhs.47, %land.lhs.true.41, %land.lhs.true.35, %land.end.28
  %32 = phi i1 [ false, %land.lhs.true.41 ], [ false, %land.lhs.true.35 ], [ false, %land.end.28 ], [ %tobool52, %land.rhs.47 ]
  %lnot54 = xor i1 %32, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  store i32 %lnot.ext55, i32* %has_defg_procs, align 4, !tbaa !5
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  call void @gsicc_create_init_luta2bpart(%struct.gsicc_lutatob* %icc_luta2bparts) #6
  %34 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %colorSpace = getelementptr inbounds %struct.icHeader, %struct.icHeader* %34, i32 0, i32 4
  store i32 1129142603, i32* %colorSpace, align 4, !tbaa !13
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 5
  store i32 4, i32* %num_in, align 4, !tbaa !66
  %35 = load i32, i32* %has_defg_procs, align 4, !tbaa !5
  %tobool56 = icmp ne i32 %35, 0
  br i1 %tobool56, label %if.then, label %if.end.87

if.then:                                          ; preds = %land.end.53
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %37 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %37(%struct.gs_memory_s* %38, i32 8192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0)) #6
  %39 = bitcast i8* %call to float*
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  store float* %39, float** %a_curves, align 8, !tbaa !85
  %a_curves57 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %40 = load float*, float** %a_curves57, align 8, !tbaa !85
  %cmp = icmp eq float* %40, null
  br i1 %cmp, label %if.then.58, label %if.end

if.then.58:                                       ; preds = %if.then
  %call59 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2190, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.58, %if.then
  %a_curves60 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %41 = load float*, float** %a_curves60, align 8, !tbaa !85
  store float* %41, float** %curr_pos, align 8, !tbaa !1
  %42 = load float*, float** %curr_pos, align 8, !tbaa !1
  %43 = bitcast float* %42 to i8*
  %44 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %44, i32 0, i32 10
  %DecodeDEFG = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches_defg, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG, i32 0, i32 0
  %floats61 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats61, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %45 = bitcast float* %arrayidx62 to i8*
  %call63 = call i8* @memcpy(i8* %43, i8* %45, i64 2048) #7
  %46 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %46, i64 512
  store float* %add.ptr, float** %curr_pos, align 8, !tbaa !1
  %47 = load float*, float** %curr_pos, align 8, !tbaa !1
  %48 = bitcast float* %47 to i8*
  %49 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg64 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %49, i32 0, i32 10
  %DecodeDEFG65 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches_defg64, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG65, i32 0, i64 1
  %floats67 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx66 to %struct.cie_cache_floats_s*
  %values68 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats67, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [512 x float], [512 x float]* %values68, i32 0, i64 0
  %50 = bitcast float* %arrayidx69 to i8*
  %call70 = call i8* @memcpy(i8* %48, i8* %50, i64 2048) #7
  %51 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr71 = getelementptr inbounds float, float* %51, i64 512
  store float* %add.ptr71, float** %curr_pos, align 8, !tbaa !1
  %52 = load float*, float** %curr_pos, align 8, !tbaa !1
  %53 = bitcast float* %52 to i8*
  %54 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg72 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %54, i32 0, i32 10
  %DecodeDEFG73 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches_defg72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG73, i32 0, i64 2
  %floats75 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx74 to %struct.cie_cache_floats_s*
  %values76 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats75, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [512 x float], [512 x float]* %values76, i32 0, i64 0
  %55 = bitcast float* %arrayidx77 to i8*
  %call78 = call i8* @memcpy(i8* %53, i8* %55, i64 2048) #7
  %56 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr79 = getelementptr inbounds float, float* %56, i64 512
  store float* %add.ptr79, float** %curr_pos, align 8, !tbaa !1
  %57 = load float*, float** %curr_pos, align 8, !tbaa !1
  %58 = bitcast float* %57 to i8*
  %59 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %caches_defg80 = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %59, i32 0, i32 10
  %DecodeDEFG81 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %caches_defg80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [4 x %union.gx_cie_scalar_cache_s], [4 x %union.gx_cie_scalar_cache_s]* %DecodeDEFG81, i32 0, i64 3
  %floats83 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx82 to %struct.cie_cache_floats_s*
  %values84 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats83, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [512 x float], [512 x float]* %values84, i32 0, i64 0
  %60 = bitcast float* %arrayidx85 to i8*
  %call86 = call i8* @memcpy(i8* %58, i8* %60, i64 2048) #7
  br label %if.end.87

if.end.87:                                        ; preds = %if.end, %land.end.53
  %61 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %62 = bitcast %struct.gs_cie_defg_s* %61 to %struct.gs_cie_abc_s*
  %63 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %64 = load i32, i32* %has_abc_procs, align 4, !tbaa !5
  %65 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %66 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %66, i32 0, i32 9
  %67 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %68 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %pcie, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %68, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %69 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %70 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call89 = call i32 @gsicc_create_defg_common(%struct.gs_cie_abc_s* %62, %struct.gsicc_lutatob* %icc_luta2bparts, i32 %63, i32 %64, %struct.icHeader* %65, %struct.gx_color_lookup_table_s* %Table, %struct.gs_color_space_s* %67, %struct.gs_range_s* %arrayidx88, i8** %69, i32* %70, %struct.gs_memory_s* %71) #6
  store i32 %call89, i32* %code, align 4, !tbaa !5
  %72 = load i32, i32* %code, align 4, !tbaa !5
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %has_defg_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.end(i64 136, i8* %79) #1
  %80 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.end(i64 72, i8* %80) #1
  %81 = bitcast %struct.gs_cie_defg_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_create_defg_common(%struct.gs_cie_abc_s* %pcie, %struct.gsicc_lutatob* %icc_luta2bparts, i32 %has_lmn_procs, i32 %has_abc_procs, %struct.icHeader* %header, %struct.gx_color_lookup_table_s* %Table, %struct.gs_color_space_s* %pcs, %struct.gs_range_s* %ranges, i8** %pp_buffer_in, i32* %profile_size_out, %struct.gs_memory_s* %memory) #0 {
entry:
  %pcie.addr = alloca %struct.gs_cie_abc_s*, align 8
  %icc_luta2bparts.addr = alloca %struct.gsicc_lutatob*, align 8
  %has_lmn_procs.addr = alloca i32, align 4
  %has_abc_procs.addr = alloca i32, align 4
  %header.addr = alloca %struct.icHeader*, align 8
  %Table.addr = alloca %struct.gx_color_lookup_table_s*, align 8
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %pp_buffer_in.addr = alloca i8**, align 8
  %profile_size_out.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %matrix_input_trans = alloca %struct.gs_matrix3_s, align 4
  %k = alloca i32, align 4
  %input_range_ok = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_cie_abc_s* %pcie, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  store %struct.gsicc_lutatob* %icc_luta2bparts, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  store i32 %has_lmn_procs, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  store i32 %has_abc_procs, i32* %has_abc_procs.addr, align 4, !tbaa !5
  store %struct.icHeader* %header, %struct.icHeader** %header.addr, align 8, !tbaa !1
  store %struct.gx_color_lookup_table_s* %Table, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i32* %profile_size_out, i32** %profile_size_out.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_matrix3_s* %matrix_input_trans to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %input_range_ok to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %4, i32 0, i32 0
  %MatrixLMN = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common, i32 0, i32 4
  call void @gsicc_matrix_init(%struct.gs_matrix3_s* %MatrixLMN) #6
  %5 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %5, i32 0, i32 4
  call void @gsicc_matrix_init(%struct.gs_matrix3_s* %MatrixABC) #6
  %6 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  call void @setheader_common(%struct.icHeader* %6) #6
  %7 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %deviceClass = getelementptr inbounds %struct.icHeader, %struct.icHeader* %7, i32 0, i32 3
  store i32 1935896178, i32* %deviceClass, align 4, !tbaa !12
  %8 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %pcs1 = getelementptr inbounds %struct.icHeader, %struct.icHeader* %8, i32 0, i32 5
  store i32 1482250784, i32* %pcs1, align 4, !tbaa !7
  %9 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_out = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %9, i32 0, i32 6
  store i32 3, i32* %num_out, align 4, !tbaa !68
  %10 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common2 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %10, i32 0, i32 0
  %points = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common2, i32 0, i32 5
  %WhitePoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points, i32 0, i32 0
  %11 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %white_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %11, i32 0, i32 7
  store %struct.gs_vector3_s* %WhitePoint, %struct.gs_vector3_s** %white_point, align 8, !tbaa !69
  %12 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common3 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %12, i32 0, i32 0
  %points4 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common3, i32 0, i32 5
  %BlackPoint = getelementptr inbounds %struct.gs_cie_wb_s, %struct.gs_cie_wb_s* %points4, i32 0, i32 1
  %13 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %black_point = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %13, i32 0, i32 8
  store %struct.gs_vector3_s* %BlackPoint, %struct.gs_vector3_s** %black_point, align 8, !tbaa !70
  %14 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gsicc_compute_cam(%struct.gsicc_lutatob* %14, %struct.gs_memory_s* %15) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %16 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %call5 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_create_defg_common, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2089, i32 1, i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC6 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %18, i32 0, i32 4
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixABC6, i32 0, i32 3
  %19 = load i32, i32* %is_identity, align 4, !tbaa !71
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %20 = load i32, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %20, 0
  br i1 %tobool7, label %land.lhs.true.8, label %lor.lhs.false

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %21 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common9 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %21, i32 0, i32 0
  %MatrixLMN10 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common9, i32 0, i32 4
  %is_identity11 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %MatrixLMN10, i32 0, i32 3
  %22 = load i32, i32* %is_identity11, align 4, !tbaa !82
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %lor.lhs.false, label %if.then.13

lor.lhs.false:                                    ; preds = %land.lhs.true.8, %land.lhs.true, %if.end
  br i1 true, label %if.then.13, label %if.else.30

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true.8
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call14 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %23) #6
  %cmp15 = icmp eq i32 %call14, 6
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %24 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %24, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %25 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %25, i32 0, i32 6
  %ranges17 = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges17, i32 0, i64 0
  %call18 = call i32 @check_range(%struct.gs_range_s* %arrayidx, i32 3) #6
  store i32 %call18, i32* %input_range_ok, align 4, !tbaa !5
  br label %if.end.23

if.else:                                          ; preds = %if.then.13
  %26 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params19 = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %26, i32 0, i32 7
  %defg = bitcast %union.anon* %params19 to %struct.gs_cie_defg_s**
  %27 = load %struct.gs_cie_defg_s*, %struct.gs_cie_defg_s** %defg, align 8, !tbaa !1
  %RangeDEFG = getelementptr inbounds %struct.gs_cie_defg_s, %struct.gs_cie_defg_s* %27, i32 0, i32 6
  %ranges20 = getelementptr inbounds %struct.gs_range4_s, %struct.gs_range4_s* %RangeDEFG, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [4 x %struct.gs_range_s], [4 x %struct.gs_range_s]* %ranges20, i32 0, i64 0
  %call22 = call i32 @check_range(%struct.gs_range_s* %arrayidx21, i32 4) #6
  store i32 %call22, i32* %input_range_ok, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.16
  %28 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %29 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %30 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  %31 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %32 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %33 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %34 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  %35 = load i32, i32* %input_range_ok, align 4, !tbaa !5
  %tobool24 = icmp ne i32 %35, 0
  %lnot = xor i1 %tobool24, true
  %lnot.ext = zext i1 %lnot to i32
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call25 = call i32 @gsicc_create_mashed_clut(%struct.gsicc_lutatob* %28, %struct.icHeader* %29, %struct.gx_color_lookup_table_s* %30, %struct.gs_color_space_s* %31, %struct.gs_range_s* %32, i8** %33, i32* %34, i32 %lnot.ext, %struct.gs_memory_s* %36) #6
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %37 = load i32, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %37, 0
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.23
  %38 = load i32, i32* %code, align 4, !tbaa !5
  %call28 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_create_defg_common, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2113, i32 1, i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0)) #6
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.23
  br label %if.end.65

if.else.30:                                       ; preds = %lor.lhs.false
  %39 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %39, i32 0, i32 3
  store %struct.gs_matrix3_s* %matrix_input_trans, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %40 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %41 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common31 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %41, i32 0, i32 0
  %MatrixLMN32 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common31, i32 0, i32 4
  %42 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %MatrixABC33 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %42, i32 0, i32 4
  %43 = load i32, i32* %has_abc_procs.addr, align 4, !tbaa !5
  %44 = load i32, i32* %has_lmn_procs.addr, align 4, !tbaa !5
  %45 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %caches = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %45, i32 0, i32 5
  %DecodeABC = getelementptr inbounds %struct.anon.4, %struct.anon.4* %caches, i32 0, i32 1
  %caches34 = getelementptr inbounds %struct.gx_cie_vector_cache3_s, %struct.gx_cie_vector_cache3_s* %DecodeABC, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %struct.gx_cie_vector_cache_s], [3 x %struct.gx_cie_vector_cache_s]* %caches34, i32 0, i32 0
  %46 = load %struct.gs_cie_abc_s*, %struct.gs_cie_abc_s** %pcie.addr, align 8, !tbaa !1
  %common35 = getelementptr inbounds %struct.gs_cie_abc_s, %struct.gs_cie_abc_s* %46, i32 0, i32 0
  %caches36 = getelementptr inbounds %struct.gs_cie_common_s, %struct.gs_cie_common_s* %common35, i32 0, i32 6
  %DecodeLMN = getelementptr inbounds %struct.anon, %struct.anon* %caches36, i32 0, i32 0
  %arraydecay37 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeLMN, i32 0, i32 0
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call38 = call i32 @gsicc_create_abc_merge(%struct.gsicc_lutatob* %40, %struct.gs_matrix3_s* %MatrixLMN32, %struct.gs_matrix3_s* %MatrixABC33, i32 %43, i32 %44, %struct.gx_cie_vector_cache_s* %arraydecay, %union.gx_cie_scalar_cache_s* %arraydecay37, %struct.gs_memory_s* %47) #6
  store i32 %call38, i32* %code, align 4, !tbaa !5
  %48 = load i32, i32* %code, align 4, !tbaa !5
  %cmp39 = icmp slt i32 %48, 0
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.else.30
  %49 = load i32, i32* %code, align 4, !tbaa !5
  %call41 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_create_defg_common, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2123, i32 1, i32 %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i32 0, i32 0)) #6
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.else.30
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %51 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call43 = call i8* %51(%struct.gs_memory_s* %52, i32 48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_create_defg_common, i32 0, i32 0)) #6
  %53 = bitcast i8* %call43 to %struct.gsicc_clut*
  %54 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %54, i32 0, i32 1
  store %struct.gsicc_clut* %53, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %55 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut44 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %55, i32 0, i32 1
  %56 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut44, align 8, !tbaa !84
  %cmp45 = icmp eq %struct.gsicc_clut* %56, null
  br i1 %cmp45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.end.42
  %call47 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_create_defg_common, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2129, i32 0, i32 -25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)) #6
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.42
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.48
  %57 = load i32, i32* %k, align 4, !tbaa !5
  %58 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %58, i32 0, i32 5
  %59 = load i32, i32* %num_in, align 4, !tbaa !66
  %cmp49 = icmp slt i32 %57, %59
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %60 to i64
  %61 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  %dims = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %61, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [4 x i32], [4 x i32]* %dims, i32 0, i64 %idxprom
  %62 = load i32, i32* %arrayidx50, align 4, !tbaa !5
  %63 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom51 = sext i32 %63 to i64
  %64 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut52 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %64, i32 0, i32 1
  %65 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut52, align 8, !tbaa !84
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %65, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 %idxprom51
  store i32 %62, i32* %arrayidx53, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %66 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %67 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %num_in54 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %67, i32 0, i32 5
  %68 = load i32, i32* %num_in54, align 4, !tbaa !66
  %69 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut55 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %69, i32 0, i32 1
  %70 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut55, align 8, !tbaa !84
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %70, i32 0, i32 3
  store i32 %68, i32* %clut_num_input, align 4, !tbaa !87
  %71 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut56 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %71, i32 0, i32 1
  %72 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut56, align 8, !tbaa !84
  %clut_num_output = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %72, i32 0, i32 4
  store i32 3, i32* %clut_num_output, align 4, !tbaa !89
  %73 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut57 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %73, i32 0, i32 1
  %74 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut57, align 8, !tbaa !84
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %74, i32 0, i32 6
  store i32 1, i32* %clut_word_width, align 4, !tbaa !90
  %75 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut58 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %75, i32 0, i32 1
  %76 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut58, align 8, !tbaa !84
  call void @gsicc_create_initialize_clut(%struct.gsicc_clut* %76) #6
  %77 = load %struct.gx_color_lookup_table_s*, %struct.gx_color_lookup_table_s** %Table.addr, align 8, !tbaa !1
  %table = getelementptr inbounds %struct.gx_color_lookup_table_s, %struct.gx_color_lookup_table_s* %77, i32 0, i32 3
  %78 = load %struct.gs_const_string_s*, %struct.gs_const_string_s** %table, align 8, !tbaa !106
  %data = getelementptr inbounds %struct.gs_const_string_s, %struct.gs_const_string_s* %78, i32 0, i32 0
  %79 = load i8*, i8** %data, align 8, !tbaa !108
  %80 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %clut59 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %80, i32 0, i32 1
  %81 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut59, align 8, !tbaa !84
  %data_byte = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %81, i32 0, i32 1
  store i8* %79, i8** %data_byte, align 8, !tbaa !105
  %82 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %83 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %84 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call60 = call i32 @create_lutAtoBprofile(i8** %82, %struct.icHeader* %83, %struct.gsicc_lutatob* %84, i32 0, i32 0, %struct.gs_memory_s* %85) #6
  store i32 %call60, i32* %code, align 4, !tbaa !5
  %86 = load i32, i32* %code, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %86, 0
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %for.end
  %87 = load i32, i32* %code, align 4, !tbaa !5
  %call63 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gsicc_create_defg_common, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2144, i32 1, i32 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i32 0, i32 0)) #6
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %for.end
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.29
  %88 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %89 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %icc_luta2bparts.addr, align 8, !tbaa !1
  call void @gsicc_create_free_luta2bpart(%struct.gs_memory_s* %88, %struct.gsicc_lutatob* %89) #6
  %90 = load %struct.icHeader*, %struct.icHeader** %header.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.icHeader, %struct.icHeader* %90, i32 0, i32 0
  %91 = load i32, i32* %size, align 4, !tbaa !22
  %92 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  store i32 %91, i32* %92, align 4, !tbaa !5
  %93 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %93) #1
  %94 = bitcast i32* %input_range_ok to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast %struct.gs_matrix3_s* %matrix_input_trans to i8*
  call void @llvm.lifetime.end(i64 40, i8* %96) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gsicc_create_fromdef(%struct.gs_color_space_s* %pcs, i8** %pp_buffer_in, i32* %profile_size_out, %struct.gs_memory_s* %memory, %struct.gx_cie_vector_cache_s* %abc_caches, %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s* %def_caches) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %pp_buffer_in.addr = alloca i8**, align 8
  %profile_size_out.addr = alloca i32*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %abc_caches.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %lmn_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %def_caches.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  %pcie = alloca %struct.gs_cie_def_s*, align 8
  %icc_luta2bparts = alloca %struct.gsicc_lutatob, align 8
  %iccprofile = alloca %struct.icProfile, align 4
  %header = alloca %struct.icHeader*, align 8
  %curr_pos = alloca float*, align 8
  %has_abc_procs = alloca i32, align 4
  %has_lmn_procs = alloca i32, align 4
  %has_def_procs = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store i8** %pp_buffer_in, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  store i32* %profile_size_out, i32** %profile_size_out.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_cie_vector_cache_s* %abc_caches, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %lmn_caches, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %def_caches, %union.gx_cie_scalar_cache_s** %def_caches.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.gs_color_space_s, %struct.gs_color_space_s* %1, i32 0, i32 7
  %def = bitcast %union.anon* %params to %struct.gs_cie_def_s**
  %2 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %def, align 8, !tbaa !1
  store %struct.gs_cie_def_s* %2, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %3 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #1
  %4 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.start(i64 136, i8* %4) #1
  %5 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %header1 = getelementptr inbounds %struct.icProfile, %struct.icProfile* %iccprofile, i32 0, i32 0
  store %struct.icHeader* %header1, %struct.icHeader** %header, align 8, !tbaa !1
  %6 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %floats = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %8, i32 0, i32 0
  %params2 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats, i32 0, i32 0
  %is_identity = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params2, i32 0, i32 0
  %9 = load i32, i32* %is_identity, align 4, !tbaa !53
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %10, i64 1
  %floats3 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx, i32 0, i32 0
  %params4 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats3, i32 0, i32 0
  %is_identity5 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params4, i32 0, i32 0
  %11 = load i32, i32* %is_identity5, align 4, !tbaa !53
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %12 = load %struct.gx_cie_vector_cache_s*, %struct.gx_cie_vector_cache_s** %abc_caches.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %12, i64 2
  %floats8 = getelementptr inbounds %struct.gx_cie_vector_cache_s, %struct.gx_cie_vector_cache_s* %arrayidx7, i32 0, i32 0
  %params9 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats8, i32 0, i32 0
  %is_identity10 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params9, i32 0, i32 0
  %13 = load i32, i32* %is_identity10, align 4, !tbaa !53
  %tobool11 = icmp ne i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool11, %land.rhs ]
  %lnot = xor i1 %14, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %has_abc_procs, align 4, !tbaa !5
  %15 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %floats12 = bitcast %union.gx_cie_scalar_cache_s* %16 to %struct.cie_cache_floats_s*
  %params13 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats12, i32 0, i32 0
  %is_identity14 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params13, i32 0, i32 0
  %17 = load i32, i32* %is_identity14, align 4, !tbaa !61
  %tobool15 = icmp ne i32 %17, 0
  br i1 %tobool15, label %land.lhs.true.16, label %land.end.28

land.lhs.true.16:                                 ; preds = %land.end
  %18 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %18, i64 1
  %floats18 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx17 to %struct.cie_cache_floats_s*
  %params19 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats18, i32 0, i32 0
  %is_identity20 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params19, i32 0, i32 0
  %19 = load i32, i32* %is_identity20, align 4, !tbaa !61
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %land.rhs.22, label %land.end.28

land.rhs.22:                                      ; preds = %land.lhs.true.16
  %20 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %lmn_caches.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %20, i64 2
  %floats24 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx23 to %struct.cie_cache_floats_s*
  %params25 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats24, i32 0, i32 0
  %is_identity26 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params25, i32 0, i32 0
  %21 = load i32, i32* %is_identity26, align 4, !tbaa !61
  %tobool27 = icmp ne i32 %21, 0
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.22, %land.lhs.true.16, %land.end
  %22 = phi i1 [ false, %land.lhs.true.16 ], [ false, %land.end ], [ %tobool27, %land.rhs.22 ]
  %lnot29 = xor i1 %22, true
  %lnot.ext30 = zext i1 %lnot29 to i32
  store i32 %lnot.ext30, i32* %has_lmn_procs, align 4, !tbaa !5
  %23 = bitcast i32* %has_def_procs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %def_caches.addr, align 8, !tbaa !1
  %floats31 = bitcast %union.gx_cie_scalar_cache_s* %24 to %struct.cie_cache_floats_s*
  %params32 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats31, i32 0, i32 0
  %is_identity33 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params32, i32 0, i32 0
  %25 = load i32, i32* %is_identity33, align 4, !tbaa !61
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %land.lhs.true.35, label %land.end.47

land.lhs.true.35:                                 ; preds = %land.end.28
  %26 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %def_caches.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %26, i64 1
  %floats37 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx36 to %struct.cie_cache_floats_s*
  %params38 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats37, i32 0, i32 0
  %is_identity39 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params38, i32 0, i32 0
  %27 = load i32, i32* %is_identity39, align 4, !tbaa !61
  %tobool40 = icmp ne i32 %27, 0
  br i1 %tobool40, label %land.rhs.41, label %land.end.47

land.rhs.41:                                      ; preds = %land.lhs.true.35
  %28 = load %union.gx_cie_scalar_cache_s*, %union.gx_cie_scalar_cache_s** %def_caches.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds %union.gx_cie_scalar_cache_s, %union.gx_cie_scalar_cache_s* %28, i64 2
  %floats43 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx42 to %struct.cie_cache_floats_s*
  %params44 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats43, i32 0, i32 0
  %is_identity45 = getelementptr inbounds %struct.cie_cache_params_s, %struct.cie_cache_params_s* %params44, i32 0, i32 0
  %29 = load i32, i32* %is_identity45, align 4, !tbaa !61
  %tobool46 = icmp ne i32 %29, 0
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.41, %land.lhs.true.35, %land.end.28
  %30 = phi i1 [ false, %land.lhs.true.35 ], [ false, %land.end.28 ], [ %tobool46, %land.rhs.41 ]
  %lnot48 = xor i1 %30, true
  %lnot.ext49 = zext i1 %lnot48 to i32
  store i32 %lnot.ext49, i32* %has_def_procs, align 4, !tbaa !5
  %31 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  call void @gsicc_create_init_luta2bpart(%struct.gsicc_lutatob* %icc_luta2bparts) #6
  %32 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %colorSpace = getelementptr inbounds %struct.icHeader, %struct.icHeader* %32, i32 0, i32 4
  store i32 1380401696, i32* %colorSpace, align 4, !tbaa !13
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 5
  store i32 3, i32* %num_in, align 4, !tbaa !66
  %33 = load i32, i32* %has_def_procs, align 4, !tbaa !5
  %tobool50 = icmp ne i32 %33, 0
  br i1 %tobool50, label %if.then, label %if.end.73

if.then:                                          ; preds = %land.end.47
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %35 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %35(%struct.gs_memory_s* %36, i32 6144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)) #6
  %37 = bitcast i8* %call to float*
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  store float* %37, float** %a_curves, align 8, !tbaa !85
  %a_curves51 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %38 = load float*, float** %a_curves51, align 8, !tbaa !85
  %cmp = icmp eq float* %38, null
  br i1 %cmp, label %if.then.52, label %if.end

if.then.52:                                       ; preds = %if.then
  %call53 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2254, i32 0, i32 -25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then.52, %if.then
  %a_curves54 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %icc_luta2bparts, i32 0, i32 0
  %39 = load float*, float** %a_curves54, align 8, !tbaa !85
  store float* %39, float** %curr_pos, align 8, !tbaa !1
  %40 = load float*, float** %curr_pos, align 8, !tbaa !1
  %41 = bitcast float* %40 to i8*
  %42 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches_def = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %42, i32 0, i32 10
  %DecodeDEF = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_def, i32 0, i32 0
  %arraydecay = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF, i32 0, i32 0
  %floats55 = bitcast %union.gx_cie_scalar_cache_s* %arraydecay to %struct.cie_cache_floats_s*
  %values = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats55, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [512 x float], [512 x float]* %values, i32 0, i64 0
  %43 = bitcast float* %arrayidx56 to i8*
  %call57 = call i8* @memcpy(i8* %41, i8* %43, i64 2048) #7
  %44 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds float, float* %44, i64 512
  store float* %add.ptr, float** %curr_pos, align 8, !tbaa !1
  %45 = load float*, float** %curr_pos, align 8, !tbaa !1
  %46 = bitcast float* %45 to i8*
  %47 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches_def58 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %47, i32 0, i32 10
  %DecodeDEF59 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_def58, i32 0, i32 0
  %arrayidx60 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF59, i32 0, i64 1
  %floats61 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx60 to %struct.cie_cache_floats_s*
  %values62 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats61, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [512 x float], [512 x float]* %values62, i32 0, i64 0
  %48 = bitcast float* %arrayidx63 to i8*
  %call64 = call i8* @memcpy(i8* %46, i8* %48, i64 2048) #7
  %49 = load float*, float** %curr_pos, align 8, !tbaa !1
  %add.ptr65 = getelementptr inbounds float, float* %49, i64 512
  store float* %add.ptr65, float** %curr_pos, align 8, !tbaa !1
  %50 = load float*, float** %curr_pos, align 8, !tbaa !1
  %51 = bitcast float* %50 to i8*
  %52 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %caches_def66 = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %52, i32 0, i32 10
  %DecodeDEF67 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %caches_def66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x %union.gx_cie_scalar_cache_s], [3 x %union.gx_cie_scalar_cache_s]* %DecodeDEF67, i32 0, i64 2
  %floats69 = bitcast %union.gx_cie_scalar_cache_s* %arrayidx68 to %struct.cie_cache_floats_s*
  %values70 = getelementptr inbounds %struct.cie_cache_floats_s, %struct.cie_cache_floats_s* %floats69, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [512 x float], [512 x float]* %values70, i32 0, i64 0
  %53 = bitcast float* %arrayidx71 to i8*
  %call72 = call i8* @memcpy(i8* %51, i8* %53, i64 2048) #7
  br label %if.end.73

if.end.73:                                        ; preds = %if.end, %land.end.47
  %54 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %55 = bitcast %struct.gs_cie_def_s* %54 to %struct.gs_cie_abc_s*
  %56 = load i32, i32* %has_lmn_procs, align 4, !tbaa !5
  %57 = load i32, i32* %has_abc_procs, align 4, !tbaa !5
  %58 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  %59 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %Table = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %59, i32 0, i32 9
  %60 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %61 = load %struct.gs_cie_def_s*, %struct.gs_cie_def_s** %pcie, align 8, !tbaa !1
  %RangeDEF = getelementptr inbounds %struct.gs_cie_def_s, %struct.gs_cie_def_s* %61, i32 0, i32 6
  %ranges = getelementptr inbounds %struct.gs_range3_s, %struct.gs_range3_s* %RangeDEF, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [3 x %struct.gs_range_s], [3 x %struct.gs_range_s]* %ranges, i32 0, i64 0
  %62 = load i8**, i8*** %pp_buffer_in.addr, align 8, !tbaa !1
  %63 = load i32*, i32** %profile_size_out.addr, align 8, !tbaa !1
  %64 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call75 = call i32 @gsicc_create_defg_common(%struct.gs_cie_abc_s* %55, %struct.gsicc_lutatob* %icc_luta2bparts, i32 %56, i32 %57, %struct.icHeader* %58, %struct.gx_color_lookup_table_s* %Table, %struct.gs_color_space_s* %60, %struct.gs_range_s* %arrayidx74, i8** %62, i32* %63, %struct.gs_memory_s* %64) #6
  store i32 %call75, i32* %code, align 4, !tbaa !5
  %65 = load i32, i32* %code, align 4, !tbaa !5
  %66 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %has_def_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %has_lmn_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i32* %has_abc_procs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast float** %curr_pos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.end(i64 136, i8* %72) #1
  %73 = bitcast %struct.gsicc_lutatob* %icc_luta2bparts to i8*
  call void @llvm.lifetime.end(i64 72, i8* %73) #1
  %74 = bitcast %struct.gs_cie_def_s** %pcie to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define void @gsicc_create_fromcrd(i8* %buffer, %struct.gs_memory_s* %memory) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %iccprofile = alloca %struct.icProfile, align 4
  %header = alloca %struct.icHeader*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.start(i64 136, i8* %0) #1
  %1 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %header1 = getelementptr inbounds %struct.icProfile, %struct.icProfile* %iccprofile, i32 0, i32 0
  store %struct.icHeader* %header1, %struct.icHeader** %header, align 8, !tbaa !1
  %2 = load %struct.icHeader*, %struct.icHeader** %header, align 8, !tbaa !1
  call void @setheader_common(%struct.icHeader* %2) #6
  %3 = bitcast %struct.icHeader** %header to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  %4 = bitcast %struct.icProfile* %iccprofile to i8*
  call void @llvm.lifetime.end(i64 136, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setdatetime(%struct.icDateTimeNumber* %datetime) #0 {
entry:
  %datetime.addr = alloca %struct.icDateTimeNumber*, align 8
  store %struct.icDateTimeNumber* %datetime, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %0 = load %struct.icDateTimeNumber*, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %day = getelementptr inbounds %struct.icDateTimeNumber, %struct.icDateTimeNumber* %0, i32 0, i32 2
  store i16 0, i16* %day, align 2, !tbaa !110
  %1 = load %struct.icDateTimeNumber*, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %hours = getelementptr inbounds %struct.icDateTimeNumber, %struct.icDateTimeNumber* %1, i32 0, i32 3
  store i16 0, i16* %hours, align 2, !tbaa !111
  %2 = load %struct.icDateTimeNumber*, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %minutes = getelementptr inbounds %struct.icDateTimeNumber, %struct.icDateTimeNumber* %2, i32 0, i32 4
  store i16 0, i16* %minutes, align 2, !tbaa !112
  %3 = load %struct.icDateTimeNumber*, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %month = getelementptr inbounds %struct.icDateTimeNumber, %struct.icDateTimeNumber* %3, i32 0, i32 1
  store i16 0, i16* %month, align 2, !tbaa !113
  %4 = load %struct.icDateTimeNumber*, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %seconds = getelementptr inbounds %struct.icDateTimeNumber, %struct.icDateTimeNumber* %4, i32 0, i32 5
  store i16 0, i16* %seconds, align 2, !tbaa !114
  %5 = load %struct.icDateTimeNumber*, %struct.icDateTimeNumber** %datetime.addr, align 8, !tbaa !1
  %year = getelementptr inbounds %struct.icDateTimeNumber, %struct.icDateTimeNumber* %5, i32 0, i32 0
  store i16 0, i16* %year, align 2, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @double2XYZtype(float %number_in) #0 {
entry:
  %number_in.addr = alloca float, align 4
  %s = alloca i16, align 2
  %m = alloca i16, align 2
  store float %number_in, float* %number_in.addr, align 4, !tbaa !23
  %0 = bitcast i16* %s to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = load float, float* %number_in.addr, align 4, !tbaa !23
  %cmp = fcmp olt float %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float 0.000000e+00, float* %number_in.addr, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load float, float* %number_in.addr, align 4, !tbaa !23
  %conv = fptosi float %3 to i16
  store i16 %conv, i16* %s, align 2, !tbaa !25
  %4 = load float, float* %number_in.addr, align 4, !tbaa !23
  %5 = load i16, i16* %s, align 2, !tbaa !25
  %conv1 = sext i16 %5 to i32
  %conv2 = sitofp i32 %conv1 to float
  %sub = fsub float %4, %conv2
  %conv3 = fpext float %sub to double
  %mul = fmul double %conv3, 6.553600e+04
  %conv4 = fptoui double %mul to i16
  store i16 %conv4, i16* %m, align 2, !tbaa !25
  %6 = load i16, i16* %s, align 2, !tbaa !25
  %conv5 = sext i16 %6 to i32
  %shl = shl i32 %conv5, 16
  %7 = load i16, i16* %m, align 2, !tbaa !25
  %conv6 = zext i16 %7 to i32
  %or = or i32 %shl, %conv6
  %8 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %8) #1
  %9 = bitcast i16* %s to i8*
  call void @llvm.lifetime.end(i64 2, i8* %9) #1
  ret i32 %or
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @get_padding(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !5
  %0 = load i32, i32* %x.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 4
  %sub = sub nsw i32 4, %rem
  %rem1 = srem i32 %sub, 4
  ret i32 %rem1
}

; Function Attrs: nounwind uwtable
define internal void @write_bigendian_4bytes(i8* %curr_ptr, i64 %input) #0 {
entry:
  %curr_ptr.addr = alloca i8*, align 8
  %input.addr = alloca i64, align 8
  store i8* %curr_ptr, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i64 %input, i64* %input.addr, align 8, !tbaa !52
  %0 = load i64, i64* %input.addr, align 8, !tbaa !52
  %shr = lshr i64 %0, 24
  %and = and i64 255, %shr
  %conv = trunc i64 %and to i8
  %1 = load i8*, i8** %curr_ptr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i8 %conv, i8* %1, align 1, !tbaa !14
  %2 = load i64, i64* %input.addr, align 8, !tbaa !52
  %shr1 = lshr i64 %2, 16
  %and2 = and i64 255, %shr1
  %conv3 = trunc i64 %and2 to i8
  %3 = load i8*, i8** %curr_ptr.addr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr4, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i8 %conv3, i8* %3, align 1, !tbaa !14
  %4 = load i64, i64* %input.addr, align 8, !tbaa !52
  %shr5 = lshr i64 %4, 8
  %and6 = and i64 255, %shr5
  %conv7 = trunc i64 %and6 to i8
  %5 = load i8*, i8** %curr_ptr.addr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr8, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i8 %conv7, i8* %5, align 1, !tbaa !14
  %6 = load i64, i64* %input.addr, align 8, !tbaa !52
  %and9 = and i64 255, %6
  %conv10 = trunc i64 %and9 to i8
  %7 = load i8*, i8** %curr_ptr.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr11, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %7, align 1, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_v4_text_tag(i8* %buffer, i8* %text, %struct.gsicc_tag* %tag_list, i32 %curr_tag) #0 {
entry:
  %buffer.addr = alloca i8*, align 8
  %text.addr = alloca i8*, align 8
  %tag_list.addr = alloca %struct.gsicc_tag*, align 8
  %curr_tag.addr = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %text, i8** %text.addr, align 8, !tbaa !1
  store %struct.gsicc_tag* %tag_list, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  store i32 %curr_tag, i32* %curr_tag.addr, align 4, !tbaa !5
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  store i8* %2, i8** %curr_ptr, align 8, !tbaa !1
  %3 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %3, i64 1835824483) #6
  %4 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %5, i32 0, i64 4) #7
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %7, i64 1) #6
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %8, i64 4
  store i8* %add.ptr2, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %9, i64 12) #6
  %10 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr3, i8** %curr_ptr, align 8, !tbaa !1
  %11 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_2bytes(i8* %11, i16 zeroext 25966) #6
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr4 = getelementptr inbounds i8, i8* %12, i64 2
  store i8* %add.ptr4, i8** %curr_ptr, align 8, !tbaa !1
  %13 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_2bytes(i8* %13, i16 zeroext 21843) #6
  %14 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 2
  store i8* %add.ptr5, i8** %curr_ptr, align 8, !tbaa !1
  %15 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %16 = load i8*, i8** %text.addr, align 8, !tbaa !1
  %call6 = call i64 @strlen(i8* %16) #8
  %mul = mul i64 2, %call6
  call void @write_bigendian_4bytes(i8* %15, i64 %mul) #6
  %17 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr7 = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %add.ptr7, i8** %curr_ptr, align 8, !tbaa !1
  %18 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %18, i64 28) #6
  %19 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr8 = getelementptr inbounds i8, i8* %19, i64 4
  store i8* %add.ptr8, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %k, align 4, !tbaa !5
  %conv = sext i32 %20 to i64
  %21 = load i8*, i8** %text.addr, align 8, !tbaa !1
  %call9 = call i64 @strlen(i8* %21) #8
  %cmp = icmp ult i64 %conv, %call9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %curr_ptr, align 8, !tbaa !1
  store i8 0, i8* %22, align 1, !tbaa !14
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %23 to i64
  %24 = load i8*, i8** %text.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !14
  %26 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr11, i8** %curr_ptr, align 8, !tbaa !1
  store i8 %25, i8* %26, align 1, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %29 = load i32, i32* %curr_tag.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %29 to i64
  %30 = load %struct.gsicc_tag*, %struct.gsicc_tag** %tag_list.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %30, i64 %idxprom12
  %byte_padding = getelementptr inbounds %struct.gsicc_tag, %struct.gsicc_tag* %arrayidx13, i32 0, i32 3
  %31 = load i8, i8* %byte_padding, align 1, !tbaa !51
  %conv14 = zext i8 %31 to i64
  %call15 = call i8* @memset(i8* %28, i32 0, i64 %conv14) #7
  %32 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_bigendian_2bytes(i8* %curr_ptr, i16 zeroext %input) #0 {
entry:
  %curr_ptr.addr = alloca i8*, align 8
  %input.addr = alloca i16, align 2
  store i8* %curr_ptr, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i16 %input, i16* %input.addr, align 2, !tbaa !25
  %0 = load i16, i16* %input.addr, align 2, !tbaa !25
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %and = and i32 255, %shr
  %conv1 = trunc i32 %and to i8
  %1 = load i8*, i8** %curr_ptr.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i8 %conv1, i8* %1, align 1, !tbaa !14
  %2 = load i16, i16* %input.addr, align 2, !tbaa !25
  %conv2 = zext i16 %2 to i32
  %and3 = and i32 255, %conv2
  %conv4 = trunc i32 %and3 to i8
  %3 = load i8*, i8** %curr_ptr.addr, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr5, i8** %curr_ptr.addr, align 8, !tbaa !1
  store i8 %conv4, i8* %3, align 1, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_create_compute_cam(%struct.gs_vector3_s* %white_src, %struct.gs_vector3_s* %white_des, float* %cam) #0 {
entry:
  %white_src.addr = alloca %struct.gs_vector3_s*, align 8
  %white_des.addr = alloca %struct.gs_vector3_s*, align 8
  %cam.addr = alloca float*, align 8
  %cat02matrix = alloca [9 x float], align 16
  %cat02matrixinv = alloca [9 x float], align 16
  %vonkries_diag = alloca [9 x float], align 16
  %temp_matrix = alloca [9 x float], align 16
  %lms_wp_src = alloca [3 x float], align 4
  %lms_wp_des = alloca [3 x float], align 4
  %k = alloca i32, align 4
  store %struct.gs_vector3_s* %white_src, %struct.gs_vector3_s** %white_src.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %white_des, %struct.gs_vector3_s** %white_des.addr, align 8, !tbaa !1
  store float* %cam, float** %cam.addr, align 8, !tbaa !1
  %0 = bitcast [9 x float]* %cat02matrix to i8*
  call void @llvm.lifetime.start(i64 36, i8* %0) #1
  %1 = bitcast [9 x float]* %cat02matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([9 x float]* @gsicc_create_compute_cam.cat02matrix to i8*), i64 36, i32 16, i1 false)
  %2 = bitcast [9 x float]* %cat02matrixinv to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #1
  %3 = bitcast [9 x float]* %cat02matrixinv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast ([9 x float]* @gsicc_create_compute_cam.cat02matrixinv to i8*), i64 36, i32 16, i1 false)
  %4 = bitcast [9 x float]* %vonkries_diag to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #1
  %5 = bitcast [9 x float]* %temp_matrix to i8*
  call void @llvm.lifetime.start(i64 36, i8* %5) #1
  %6 = bitcast [3 x float]* %lms_wp_src to i8*
  call void @llvm.lifetime.start(i64 12, i8* %6) #1
  %7 = bitcast [3 x float]* %lms_wp_des to i8*
  call void @llvm.lifetime.start(i64 12, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %arraydecay = getelementptr inbounds [9 x float], [9 x float]* %cat02matrix, i32 0, i32 0
  %9 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_src.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %9, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %lms_wp_src, i32 0, i64 0
  call void @matrixmult(float* %arraydecay, i32 3, i32 3, float* %u, i32 3, i32 1, float* %arrayidx) #6
  %arraydecay1 = getelementptr inbounds [9 x float], [9 x float]* %cat02matrix, i32 0, i32 0
  %10 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_des.addr, align 8, !tbaa !1
  %u2 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %10, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x float], [3 x float]* %lms_wp_des, i32 0, i64 0
  call void @matrixmult(float* %arraydecay1, i32 3, i32 3, float* %u2, i32 3, i32 1, float* %arrayidx3) #6
  %arrayidx4 = getelementptr inbounds [9 x float], [9 x float]* %vonkries_diag, i32 0, i64 0
  %11 = bitcast float* %arrayidx4 to i8*
  %call = call i8* @memset(i8* %11, i32 0, i64 36) #7
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds [3 x float], [3 x float]* %lms_wp_src, i32 0, i64 %idxprom
  %14 = load float, float* %arrayidx5, align 4, !tbaa !23
  %cmp6 = fcmp ogt float %14, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [3 x float], [3 x float]* %lms_wp_des, i32 0, i64 %idxprom7
  %16 = load float, float* %arrayidx8, align 4, !tbaa !23
  %17 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [3 x float], [3 x float]* %lms_wp_src, i32 0, i64 %idxprom9
  %18 = load float, float* %arrayidx10, align 4, !tbaa !23
  %div = fdiv float %16, %18
  %19 = load i32, i32* %k, align 4, !tbaa !5
  %mul = mul nsw i32 %19, 3
  %20 = load i32, i32* %k, align 4, !tbaa !5
  %add = add nsw i32 %mul, %20
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [9 x float], [9 x float]* %vonkries_diag, i32 0, i64 %idxprom11
  store float %div, float* %arrayidx12, align 4, !tbaa !23
  br label %if.end

if.else:                                          ; preds = %for.body
  %21 = load i32, i32* %k, align 4, !tbaa !5
  %mul13 = mul nsw i32 %21, 3
  %22 = load i32, i32* %k, align 4, !tbaa !5
  %add14 = add nsw i32 %mul13, %22
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [9 x float], [9 x float]* %vonkries_diag, i32 0, i64 %idxprom15
  store float 1.000000e+00, float* %arrayidx16, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds [9 x float], [9 x float]* %vonkries_diag, i32 0, i64 0
  %arrayidx18 = getelementptr inbounds [9 x float], [9 x float]* %cat02matrix, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [9 x float], [9 x float]* %temp_matrix, i32 0, i64 0
  call void @matrixmult(float* %arrayidx17, i32 3, i32 3, float* %arrayidx18, i32 3, i32 3, float* %arrayidx19) #6
  %arrayidx20 = getelementptr inbounds [9 x float], [9 x float]* %cat02matrixinv, i32 0, i64 0
  %arrayidx21 = getelementptr inbounds [9 x float], [9 x float]* %temp_matrix, i32 0, i64 0
  %24 = load float*, float** %cam.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds float, float* %24, i64 0
  call void @matrixmult(float* %arrayidx20, i32 3, i32 3, float* %arrayidx21, i32 3, i32 3, float* %arrayidx22) #6
  %25 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  %26 = bitcast [3 x float]* %lms_wp_des to i8*
  call void @llvm.lifetime.end(i64 12, i8* %26) #1
  %27 = bitcast [3 x float]* %lms_wp_src to i8*
  call void @llvm.lifetime.end(i64 12, i8* %27) #1
  %28 = bitcast [9 x float]* %temp_matrix to i8*
  call void @llvm.lifetime.end(i64 36, i8* %28) #1
  %29 = bitcast [9 x float]* %vonkries_diag to i8*
  call void @llvm.lifetime.end(i64 36, i8* %29) #1
  %30 = bitcast [9 x float]* %cat02matrixinv to i8*
  call void @llvm.lifetime.end(i64 36, i8* %30) #1
  %31 = bitcast [9 x float]* %cat02matrix to i8*
  call void @llvm.lifetime.end(i64 36, i8* %31) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @matrixmult(float* %leftmatrix, i32 %nlrow, i32 %nlcol, float* %rightmatrix, i32 %nrrow, i32 %nrcol, float* %result) #0 {
entry:
  %leftmatrix.addr = alloca float*, align 8
  %nlrow.addr = alloca i32, align 4
  %nlcol.addr = alloca i32, align 4
  %rightmatrix.addr = alloca float*, align 8
  %nrrow.addr = alloca i32, align 4
  %nrcol.addr = alloca i32, align 4
  %result.addr = alloca float*, align 8
  %curr_row = alloca float*, align 8
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %j = alloca i32, align 4
  %ncols = alloca i32, align 4
  %nrows = alloca i32, align 4
  %sum = alloca float, align 4
  store float* %leftmatrix, float** %leftmatrix.addr, align 8, !tbaa !1
  store i32 %nlrow, i32* %nlrow.addr, align 4, !tbaa !5
  store i32 %nlcol, i32* %nlcol.addr, align 4, !tbaa !5
  store float* %rightmatrix, float** %rightmatrix.addr, align 8, !tbaa !1
  store i32 %nrrow, i32* %nrrow.addr, align 4, !tbaa !5
  store i32 %nrcol, i32* %nrcol.addr, align 4, !tbaa !5
  store float* %result, float** %result.addr, align 8, !tbaa !1
  %0 = bitcast float** %curr_row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ncols to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %nrows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast float* %sum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %nlrow.addr, align 4, !tbaa !5
  store i32 %7, i32* %nrows, align 4, !tbaa !5
  %8 = load i32, i32* %nrcol.addr, align 4, !tbaa !5
  store i32 %8, i32* %ncols, align 4, !tbaa !5
  %9 = load i32, i32* %nlcol.addr, align 4, !tbaa !5
  %10 = load i32, i32* %nrrow.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.then
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load i32, i32* %nrows, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %11, %12
  br i1 %cmp1, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %14 = load i32, i32* %nlcol.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %13, %14
  %idxprom = sext i32 %mul to i64
  %15 = load float*, float** %leftmatrix.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %15, i64 %idxprom
  store float* %arrayidx, float** %curr_row, align 8, !tbaa !1
  store i32 0, i32* %l, align 4, !tbaa !5
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.19, %for.body
  %16 = load i32, i32* %l, align 4, !tbaa !5
  %17 = load i32, i32* %ncols, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %16, %17
  br i1 %cmp3, label %for.body.4, label %for.end.21

for.body.4:                                       ; preds = %for.cond.2
  store float 0.000000e+00, float* %sum, align 4, !tbaa !23
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %18 = load i32, i32* %j, align 4, !tbaa !5
  %19 = load i32, i32* %nlcol.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %18, %19
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %20 = load float, float* %sum, align 4, !tbaa !23
  %21 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %21 to i64
  %22 = load float*, float** %curr_row, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %22, i64 %idxprom8
  %23 = load float, float* %arrayidx9, align 4, !tbaa !23
  %24 = load i32, i32* %j, align 4, !tbaa !5
  %25 = load i32, i32* %nrcol.addr, align 4, !tbaa !5
  %mul10 = mul nsw i32 %24, %25
  %26 = load i32, i32* %l, align 4, !tbaa !5
  %add = add nsw i32 %mul10, %26
  %idxprom11 = sext i32 %add to i64
  %27 = load float*, float** %rightmatrix.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds float, float* %27, i64 %idxprom11
  %28 = load float, float* %arrayidx12, align 4, !tbaa !23
  %mul13 = fmul float %23, %28
  %add14 = fadd float %20, %mul13
  store float %add14, float* %sum, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %29 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %30 = load float, float* %sum, align 4, !tbaa !23
  %31 = load i32, i32* %k, align 4, !tbaa !5
  %32 = load i32, i32* %ncols, align 4, !tbaa !5
  %mul15 = mul nsw i32 %31, %32
  %33 = load i32, i32* %l, align 4, !tbaa !5
  %add16 = add nsw i32 %mul15, %33
  %idxprom17 = sext i32 %add16 to i64
  %34 = load float*, float** %result.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds float, float* %34, i64 %idxprom17
  store float %30, float* %arrayidx18, align 4, !tbaa !23
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %35 = load i32, i32* %l, align 4, !tbaa !5
  %inc20 = add nsw i32 %35, 1
  store i32 %inc20, i32* %l, align 4, !tbaa !5
  br label %for.cond.2

for.end.21:                                       ; preds = %for.cond.2
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %inc23 = add nsw i32 %36, 1
  store i32 %inc23, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.24, %entry
  %37 = bitcast float* %sum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %nrows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %ncols to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast float** %curr_row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gsicc_create_clut(%struct.gs_color_space_s* %pcs, %struct.gsicc_clut* %clut, %struct.gs_range_s* %ranges, %struct.gs_vector3_s* %white_point, i32 %range_adjust, float* %cam, %struct.gs_memory_s* %memory) #0 {
entry:
  %pcs.addr = alloca %struct.gs_color_space_s*, align 8
  %clut.addr = alloca %struct.gsicc_clut*, align 8
  %ranges.addr = alloca %struct.gs_range_s*, align 8
  %white_point.addr = alloca %struct.gs_vector3_s*, align 8
  %range_adjust.addr = alloca i32, align 4
  %cam.addr = alloca float*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pis = alloca %struct.gs_imager_state_s*, align 8
  %code = alloca i32, align 4
  %num_points = alloca i32, align 4
  %table_size = alloca i32, align 4
  %num_components = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %input_samples = alloca [4 x float*], align 16
  %fltptr = alloca float*, align 8
  %curr_range = alloca %struct.gs_range_s*, align 8
  %ptr_short = alloca i16*, align 8
  %cc = alloca %struct.gs_client_color_s, align 8
  %xyz = alloca [3 x i16], align 2
  %xyz_float = alloca [3 x float], align 4
  %temp = alloca float, align 4
  %cs_index = alloca i32, align 4
  store %struct.gs_color_space_s* %pcs, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  store %struct.gsicc_clut* %clut, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  store %struct.gs_range_s* %ranges, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %white_point, %struct.gs_vector3_s** %white_point.addr, align 8, !tbaa !1
  store i32 %range_adjust, i32* %range_adjust.addr, align 4, !tbaa !5
  store float* %cam, float** %cam.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_entries = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %3, i32 0, i32 5
  %4 = load i32, i32* %clut_num_entries, align 4, !tbaa !104
  store i32 %4, i32* %num_points, align 4, !tbaa !5
  %5 = bitcast i32* %table_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 0
  %7 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %7, i32* %table_size, align 4, !tbaa !5
  %8 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %9, i32 0, i32 3
  %10 = load i32, i32* %clut_num_input, align 4, !tbaa !87
  store i32 %10, i32* %num_components, align 4, !tbaa !5
  %11 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast [4 x float*]* %input_samples to i8*
  call void @llvm.lifetime.start(i64 32, i8* %14) #1
  %15 = bitcast float** %fltptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.gs_range_s** %curr_range to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i16** %ptr_short to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #1
  %18 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.start(i64 264, i8* %18) #1
  %19 = bitcast [3 x i16]* %xyz to i8*
  call void @llvm.lifetime.start(i64 6, i8* %19) #1
  %20 = bitcast [3 x float]* %xyz_float to i8*
  call void @llvm.lifetime.start(i64 12, i8* %20) #1
  %21 = bitcast float* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = bitcast i32* %cs_index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i32 @gx_cie_to_xyz_alloc(%struct.gs_imager_state_s** %pis, %struct.gs_color_space_s* %23, %struct.gs_memory_s* %24) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %25 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %25, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %26 = load i32, i32* %code, align 4, !tbaa !5
  %call1 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gsicc_create_clut, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 347, i32 1, i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %27 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %call2 = call i32 @gs_color_space_get_index(%struct.gs_color_space_s* %27) #6
  store i32 %call2, i32* %cs_index, align 4, !tbaa !14
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %if.end
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %29 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %28, %29
  br i1 %cmp3, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %30, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %31 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !15
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %33 = load i32, i32* %table_size, align 4, !tbaa !5
  %conv = sext i32 %33 to i64
  %mul = mul i64 4, %conv
  %conv4 = trunc i64 %mul to i32
  %call5 = call i8* %31(%struct.gs_memory_s* %32, i32 %conv4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gsicc_create_clut, i32 0, i32 0)) #6
  %34 = bitcast i8* %call5 to float*
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %35 to i64
  %arrayidx6 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 %idxprom
  store float* %34, float** %arrayidx6, align 8, !tbaa !1
  %36 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %36 to i64
  %arrayidx8 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 %idxprom7
  %37 = load float*, float** %arrayidx8, align 8, !tbaa !1
  %cmp9 = icmp eq float* %37, null
  br i1 %cmp9, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %38 = load i32, i32* %j, align 4, !tbaa !5
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %38, %39
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !21
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %43 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom17 = sext i32 %43 to i64
  %arrayidx18 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 %idxprom17
  %44 = load float*, float** %arrayidx18, align 8, !tbaa !1
  %45 = bitcast float* %44 to i8*
  call void %41(%struct.gs_memory_s* %42, i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gsicc_create_clut, i32 0, i32 0)) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %46 = load i32, i32* %j, align 4, !tbaa !5
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4, !tbaa !5
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %call19 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gsicc_create_clut, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 361, i32 0, i32 -25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i32 0, i32 0)) #6
  br label %if.end.20

if.end.20:                                        ; preds = %for.end, %for.body
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %47 to i64
  %arrayidx22 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 %idxprom21
  %48 = load float*, float** %arrayidx22, align 8, !tbaa !1
  store float* %48, float** %fltptr, align 8, !tbaa !1
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %49 to i64
  %50 = load %struct.gs_range_s*, %struct.gs_range_s** %ranges.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %50, i64 %idxprom23
  store %struct.gs_range_s* %arrayidx24, %struct.gs_range_s** %curr_range, align 8, !tbaa !1
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.34, %if.end.20
  %51 = load i32, i32* %j, align 4, !tbaa !5
  %52 = load i32, i32* %table_size, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %51, %52
  br i1 %cmp26, label %for.body.28, label %for.end.36

for.body.28:                                      ; preds = %for.cond.25
  %53 = load i32, i32* %j, align 4, !tbaa !5
  %conv29 = sitofp i32 %53 to float
  %54 = load i32, i32* %table_size, align 4, !tbaa !5
  %sub = sub nsw i32 %54, 1
  %conv30 = sitofp i32 %sub to float
  %div = fdiv float %conv29, %conv30
  %55 = load %struct.gs_range_s*, %struct.gs_range_s** %curr_range, align 8, !tbaa !1
  %rmax = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %55, i32 0, i32 1
  %56 = load float, float* %rmax, align 4, !tbaa !116
  %57 = load %struct.gs_range_s*, %struct.gs_range_s** %curr_range, align 8, !tbaa !1
  %rmin = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %57, i32 0, i32 0
  %58 = load float, float* %rmin, align 4, !tbaa !118
  %sub31 = fsub float %56, %58
  %mul32 = fmul float %div, %sub31
  %59 = load %struct.gs_range_s*, %struct.gs_range_s** %curr_range, align 8, !tbaa !1
  %rmin33 = getelementptr inbounds %struct.gs_range_s, %struct.gs_range_s* %59, i32 0, i32 0
  %60 = load float, float* %rmin33, align 4, !tbaa !118
  %add = fadd float %mul32, %60
  %61 = load float*, float** %fltptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %61, i32 1
  store float* %incdec.ptr, float** %fltptr, align 8, !tbaa !1
  store float %add, float* %61, align 4, !tbaa !23
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.28
  %62 = load i32, i32* %j, align 4, !tbaa !5
  %inc35 = add nsw i32 %62, 1
  store i32 %inc35, i32* %j, align 4, !tbaa !5
  br label %for.cond.25

for.end.36:                                       ; preds = %for.cond.25
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %63 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %63, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %64 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %64, i32 0, i32 0
  %65 = load i16*, i16** %data_short, align 8, !tbaa !91
  store i16* %65, i16** %ptr_short, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.187, %for.end.39
  %66 = load i32, i32* %i, align 4, !tbaa !5
  %67 = load i32, i32* %num_points, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %66, %67
  br i1 %cmp41, label %for.body.43, label %for.end.189

for.body.43:                                      ; preds = %for.cond.40
  %68 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %68, 1
  br i1 %cmp44, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %for.body.43
  %arrayidx47 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 0
  %69 = load float*, float** %arrayidx47, align 8, !tbaa !1
  store float* %69, float** %fltptr, align 8, !tbaa !1
  %70 = load i32, i32* %i, align 4, !tbaa !5
  %71 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem = srem i32 %70, %71
  store i32 %rem, i32* %index, align 4, !tbaa !5
  %72 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom48 = sext i32 %72 to i64
  %73 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds float, float* %73, i64 %idxprom48
  %74 = load float, float* %arrayidx49, align 4, !tbaa !23
  %paint = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [64 x float], [64 x float]* %values, i32 0, i64 0
  store float %74, float* %arrayidx50, align 4, !tbaa !23
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %for.body.43
  %75 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %75, 3
  br i1 %cmp52, label %if.then.54, label %if.end.89

if.then.54:                                       ; preds = %if.end.51
  %arrayidx55 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 2
  %76 = load float*, float** %arrayidx55, align 8, !tbaa !1
  store float* %76, float** %fltptr, align 8, !tbaa !1
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %78 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem56 = srem i32 %77, %78
  store i32 %rem56, i32* %index, align 4, !tbaa !5
  %79 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom57 = sext i32 %79 to i64
  %80 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds float, float* %80, i64 %idxprom57
  %81 = load float, float* %arrayidx58, align 4, !tbaa !23
  %paint59 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values60 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [64 x float], [64 x float]* %values60, i32 0, i64 2
  store float %81, float* %arrayidx61, align 4, !tbaa !23
  %arrayidx62 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 1
  %82 = load float*, float** %arrayidx62, align 8, !tbaa !1
  store float* %82, float** %fltptr, align 8, !tbaa !1
  %83 = load i32, i32* %i, align 4, !tbaa !5
  %conv63 = sitofp i32 %83 to float
  %84 = load i32, i32* %table_size, align 4, !tbaa !5
  %conv64 = sitofp i32 %84 to float
  %div65 = fdiv float %conv63, %conv64
  %conv66 = fpext float %div65 to double
  %call67 = call double @floor(double %conv66) #9
  %conv68 = fptoui double %call67 to i32
  %85 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem69 = urem i32 %conv68, %85
  store i32 %rem69, i32* %index, align 4, !tbaa !5
  %86 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom70 = sext i32 %86 to i64
  %87 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds float, float* %87, i64 %idxprom70
  %88 = load float, float* %arrayidx71, align 4, !tbaa !23
  %paint72 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values73 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint72, i32 0, i32 0
  %arrayidx74 = getelementptr inbounds [64 x float], [64 x float]* %values73, i32 0, i64 1
  store float %88, float* %arrayidx74, align 4, !tbaa !23
  %arrayidx75 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 0
  %89 = load float*, float** %arrayidx75, align 8, !tbaa !1
  store float* %89, float** %fltptr, align 8, !tbaa !1
  %90 = load i32, i32* %i, align 4, !tbaa !5
  %conv76 = sitofp i32 %90 to float
  %91 = load i32, i32* %table_size, align 4, !tbaa !5
  %92 = load i32, i32* %table_size, align 4, !tbaa !5
  %mul77 = mul nsw i32 %91, %92
  %conv78 = sitofp i32 %mul77 to float
  %div79 = fdiv float %conv76, %conv78
  %conv80 = fpext float %div79 to double
  %call81 = call double @floor(double %conv80) #9
  %conv82 = fptoui double %call81 to i32
  %93 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem83 = urem i32 %conv82, %93
  store i32 %rem83, i32* %index, align 4, !tbaa !5
  %94 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom84 = sext i32 %94 to i64
  %95 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds float, float* %95, i64 %idxprom84
  %96 = load float, float* %arrayidx85, align 4, !tbaa !23
  %paint86 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values87 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint86, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [64 x float], [64 x float]* %values87, i32 0, i64 0
  store float %96, float* %arrayidx88, align 4, !tbaa !23
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.54, %if.end.51
  %97 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %97, 4
  br i1 %cmp90, label %if.then.92, label %if.end.142

if.then.92:                                       ; preds = %if.end.89
  %arrayidx93 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 3
  %98 = load float*, float** %arrayidx93, align 8, !tbaa !1
  store float* %98, float** %fltptr, align 8, !tbaa !1
  %99 = load i32, i32* %i, align 4, !tbaa !5
  %100 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem94 = srem i32 %99, %100
  store i32 %rem94, i32* %index, align 4, !tbaa !5
  %101 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom95 = sext i32 %101 to i64
  %102 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds float, float* %102, i64 %idxprom95
  %103 = load float, float* %arrayidx96, align 4, !tbaa !23
  %paint97 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values98 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint97, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [64 x float], [64 x float]* %values98, i32 0, i64 3
  store float %103, float* %arrayidx99, align 4, !tbaa !23
  %arrayidx100 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 2
  %104 = load float*, float** %arrayidx100, align 8, !tbaa !1
  store float* %104, float** %fltptr, align 8, !tbaa !1
  %105 = load i32, i32* %i, align 4, !tbaa !5
  %conv101 = sitofp i32 %105 to float
  %106 = load i32, i32* %table_size, align 4, !tbaa !5
  %conv102 = sitofp i32 %106 to float
  %div103 = fdiv float %conv101, %conv102
  %conv104 = fpext float %div103 to double
  %call105 = call double @floor(double %conv104) #9
  %conv106 = fptoui double %call105 to i32
  %107 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem107 = urem i32 %conv106, %107
  store i32 %rem107, i32* %index, align 4, !tbaa !5
  %108 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom108 = sext i32 %108 to i64
  %109 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx109 = getelementptr inbounds float, float* %109, i64 %idxprom108
  %110 = load float, float* %arrayidx109, align 4, !tbaa !23
  %paint110 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values111 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint110, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [64 x float], [64 x float]* %values111, i32 0, i64 2
  store float %110, float* %arrayidx112, align 4, !tbaa !23
  %arrayidx113 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 1
  %111 = load float*, float** %arrayidx113, align 8, !tbaa !1
  store float* %111, float** %fltptr, align 8, !tbaa !1
  %112 = load i32, i32* %i, align 4, !tbaa !5
  %conv114 = sitofp i32 %112 to float
  %113 = load i32, i32* %table_size, align 4, !tbaa !5
  %114 = load i32, i32* %table_size, align 4, !tbaa !5
  %mul115 = mul nsw i32 %113, %114
  %conv116 = sitofp i32 %mul115 to float
  %div117 = fdiv float %conv114, %conv116
  %conv118 = fpext float %div117 to double
  %call119 = call double @floor(double %conv118) #9
  %conv120 = fptoui double %call119 to i32
  %115 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem121 = urem i32 %conv120, %115
  store i32 %rem121, i32* %index, align 4, !tbaa !5
  %116 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom122 = sext i32 %116 to i64
  %117 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx123 = getelementptr inbounds float, float* %117, i64 %idxprom122
  %118 = load float, float* %arrayidx123, align 4, !tbaa !23
  %paint124 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values125 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [64 x float], [64 x float]* %values125, i32 0, i64 1
  store float %118, float* %arrayidx126, align 4, !tbaa !23
  %arrayidx127 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 0
  %119 = load float*, float** %arrayidx127, align 8, !tbaa !1
  store float* %119, float** %fltptr, align 8, !tbaa !1
  %120 = load i32, i32* %i, align 4, !tbaa !5
  %conv128 = sitofp i32 %120 to float
  %121 = load i32, i32* %table_size, align 4, !tbaa !5
  %122 = load i32, i32* %table_size, align 4, !tbaa !5
  %mul129 = mul nsw i32 %121, %122
  %123 = load i32, i32* %table_size, align 4, !tbaa !5
  %mul130 = mul nsw i32 %mul129, %123
  %conv131 = sitofp i32 %mul130 to float
  %div132 = fdiv float %conv128, %conv131
  %conv133 = fpext float %div132 to double
  %call134 = call double @floor(double %conv133) #9
  %conv135 = fptoui double %call134 to i32
  %124 = load i32, i32* %table_size, align 4, !tbaa !5
  %rem136 = urem i32 %conv135, %124
  store i32 %rem136, i32* %index, align 4, !tbaa !5
  %125 = load i32, i32* %index, align 4, !tbaa !5
  %idxprom137 = sext i32 %125 to i64
  %126 = load float*, float** %fltptr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds float, float* %126, i64 %idxprom137
  %127 = load float, float* %arrayidx138, align 4, !tbaa !23
  %paint139 = getelementptr inbounds %struct.gs_client_color_s, %struct.gs_client_color_s* %cc, i32 0, i32 1
  %values140 = getelementptr inbounds %struct.gs_paint_color_s, %struct.gs_paint_color_s* %paint139, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [64 x float], [64 x float]* %values140, i32 0, i64 0
  store float %127, float* %arrayidx141, align 4, !tbaa !23
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.92, %if.end.89
  %128 = load i32, i32* %cs_index, align 4, !tbaa !14
  switch i32 %128, label %sw.default [
    i32 8, label %sw.bb
    i32 7, label %sw.bb.151
    i32 6, label %sw.bb.155
    i32 5, label %sw.bb.159
  ]

sw.bb:                                            ; preds = %if.end.142
  %129 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay143 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %130 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call144 = call i32 @gx_psconcretize_CIEA(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %129, i16* %arraydecay, float* %arraydecay143, %struct.gs_imager_state_s* %130) #6
  %131 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_point.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %131, i32 0, i32 0
  %132 = load float, float* %u, align 4, !tbaa !62
  %arrayidx145 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 1
  %133 = load float, float* %arrayidx145, align 4, !tbaa !23
  %mul146 = fmul float %132, %133
  %arrayidx147 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 0
  store float %mul146, float* %arrayidx147, align 4, !tbaa !23
  %134 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %white_point.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %134, i32 0, i32 2
  %135 = load float, float* %w, align 4, !tbaa !65
  %arrayidx148 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 1
  %136 = load float, float* %arrayidx148, align 4, !tbaa !23
  %mul149 = fmul float %135, %136
  %arrayidx150 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 2
  store float %mul149, float* %arrayidx150, align 4, !tbaa !23
  br label %sw.epilog

sw.bb.151:                                        ; preds = %if.end.142
  %137 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay152 = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay153 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %138 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call154 = call i32 @gx_psconcretize_CIEABC(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %137, i16* %arraydecay152, float* %arraydecay153, %struct.gs_imager_state_s* %138) #6
  br label %sw.epilog

sw.bb.155:                                        ; preds = %if.end.142
  %139 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay156 = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay157 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %140 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call158 = call i32 @gx_psconcretize_CIEDEF(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %139, i16* %arraydecay156, float* %arraydecay157, %struct.gs_imager_state_s* %140) #6
  br label %sw.epilog

sw.bb.159:                                        ; preds = %if.end.142
  %141 = load %struct.gs_color_space_s*, %struct.gs_color_space_s** %pcs.addr, align 8, !tbaa !1
  %arraydecay160 = getelementptr inbounds [3 x i16], [3 x i16]* %xyz, i32 0, i32 0
  %arraydecay161 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i32 0
  %142 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  %call162 = call i32 @gx_psconcretize_CIEDEFG(%struct.gs_client_color_s* %cc, %struct.gs_color_space_s* %141, i16* %arraydecay160, float* %arraydecay161, %struct.gs_imager_state_s* %142) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.142
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.159, %sw.bb.155, %sw.bb.151, %sw.bb
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.184, %sw.epilog
  %143 = load i32, i32* %j, align 4, !tbaa !5
  %cmp164 = icmp slt i32 %143, 3
  br i1 %cmp164, label %for.body.166, label %for.end.186

for.body.166:                                     ; preds = %for.cond.163
  %144 = load i32, i32* %j, align 4, !tbaa !5
  %idxprom167 = sext i32 %144 to i64
  %arrayidx168 = getelementptr inbounds [3 x float], [3 x float]* %xyz_float, i32 0, i64 %idxprom167
  %145 = load float, float* %arrayidx168, align 4, !tbaa !23
  %conv169 = fpext float %145 to double
  %div170 = fdiv double %conv169, 0x3FFFFFE000000000
  %conv171 = fptrunc double %div170 to float
  store float %conv171, float* %temp, align 4, !tbaa !23
  %146 = load float, float* %temp, align 4, !tbaa !23
  %cmp172 = fcmp olt float %146, 0.000000e+00
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.body.166
  store float 0.000000e+00, float* %temp, align 4, !tbaa !23
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.174, %for.body.166
  %147 = load float, float* %temp, align 4, !tbaa !23
  %cmp176 = fcmp ogt float %147, 1.000000e+00
  br i1 %cmp176, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.end.175
  store float 1.000000e+00, float* %temp, align 4, !tbaa !23
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %if.end.175
  %148 = load float, float* %temp, align 4, !tbaa !23
  %mul180 = fmul float %148, 6.553500e+04
  %conv181 = fptoui float %mul180 to i32
  %conv182 = trunc i32 %conv181 to i16
  %149 = load i16*, i16** %ptr_short, align 8, !tbaa !1
  %incdec.ptr183 = getelementptr inbounds i16, i16* %149, i32 1
  store i16* %incdec.ptr183, i16** %ptr_short, align 8, !tbaa !1
  store i16 %conv182, i16* %149, align 2, !tbaa !25
  br label %for.inc.184

for.inc.184:                                      ; preds = %if.end.179
  %150 = load i32, i32* %j, align 4, !tbaa !5
  %inc185 = add nsw i32 %150, 1
  store i32 %inc185, i32* %j, align 4, !tbaa !5
  br label %for.cond.163

for.end.186:                                      ; preds = %for.cond.163
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.end.186
  %151 = load i32, i32* %i, align 4, !tbaa !5
  %inc188 = add nsw i32 %151, 1
  store i32 %inc188, i32* %i, align 4, !tbaa !5
  br label %for.cond.40

for.end.189:                                      ; preds = %for.cond.40
  %152 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis, align 8, !tbaa !1
  call void @gx_cie_to_xyz_free(%struct.gs_imager_state_s* %152) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.190

for.cond.190:                                     ; preds = %for.inc.198, %for.end.189
  %153 = load i32, i32* %i, align 4, !tbaa !5
  %154 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp191 = icmp slt i32 %153, %154
  br i1 %cmp191, label %for.body.193, label %for.end.200

for.body.193:                                     ; preds = %for.cond.190
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs194 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 1
  %free_object195 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs194, i32 0, i32 2
  %156 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object195, align 8, !tbaa !21
  %157 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %158 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom196 = sext i32 %158 to i64
  %arrayidx197 = getelementptr inbounds [4 x float*], [4 x float*]* %input_samples, i32 0, i64 %idxprom196
  %159 = load float*, float** %arrayidx197, align 8, !tbaa !1
  %160 = bitcast float* %159 to i8*
  call void %156(%struct.gs_memory_s* %157, i8* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gsicc_create_clut, i32 0, i32 0)) #6
  br label %for.inc.198

for.inc.198:                                      ; preds = %for.body.193
  %161 = load i32, i32* %i, align 4, !tbaa !5
  %inc199 = add nsw i32 %161, 1
  store i32 %inc199, i32* %i, align 4, !tbaa !5
  br label %for.cond.190

for.end.200:                                      ; preds = %for.cond.190
  %162 = bitcast i32* %cs_index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast float* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast [3 x float]* %xyz_float to i8*
  call void @llvm.lifetime.end(i64 12, i8* %164) #1
  %165 = bitcast [3 x i16]* %xyz to i8*
  call void @llvm.lifetime.end(i64 6, i8* %165) #1
  %166 = bitcast %struct.gs_client_color_s* %cc to i8*
  call void @llvm.lifetime.end(i64 264, i8* %166) #1
  %167 = bitcast i16** %ptr_short to i8*
  call void @llvm.lifetime.end(i64 8, i8* %167) #1
  %168 = bitcast %struct.gs_range_s** %curr_range to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast float** %fltptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #1
  %170 = bitcast [4 x float*]* %input_samples to i8*
  call void @llvm.lifetime.end(i64 32, i8* %170) #1
  %171 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %table_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %num_points to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast %struct.gs_imager_state_s** %pis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %178) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_make_diag_matrix(%struct.gs_matrix3_s* %matrix, %struct.gs_vector3_s* %vec) #0 {
entry:
  %matrix.addr = alloca %struct.gs_matrix3_s*, align 8
  %vec.addr = alloca %struct.gs_vector3_s*, align 8
  store %struct.gs_matrix3_s* %matrix, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %vec, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %0 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %0, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !62
  %2 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %2, i32 0, i32 0
  %u1 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  store float %1, float* %u1, align 4, !tbaa !94
  %3 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %3, i32 0, i32 1
  %4 = load float, float* %v, align 4, !tbaa !64
  %5 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cv = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %5, i32 0, i32 1
  %v2 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv, i32 0, i32 1
  store float %4, float* %v2, align 4, !tbaa !97
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %6, i32 0, i32 2
  %7 = load float, float* %w, align 4, !tbaa !65
  %8 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cw = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %8, i32 0, i32 2
  %w3 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw, i32 0, i32 2
  store float %7, float* %w3, align 4, !tbaa !100
  %9 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cu4 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %9, i32 0, i32 0
  %v5 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu4, i32 0, i32 1
  store float 0.000000e+00, float* %v5, align 4, !tbaa !95
  %10 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cu6 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %10, i32 0, i32 0
  %w7 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu6, i32 0, i32 2
  store float 0.000000e+00, float* %w7, align 4, !tbaa !96
  %11 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cw8 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %11, i32 0, i32 2
  %u9 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw8, i32 0, i32 0
  store float 0.000000e+00, float* %u9, align 4, !tbaa !101
  %12 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cw10 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %12, i32 0, i32 2
  %v11 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cw10, i32 0, i32 1
  store float 0.000000e+00, float* %v11, align 4, !tbaa !102
  %13 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cv12 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %13, i32 0, i32 1
  %u13 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv12, i32 0, i32 0
  store float 0.000000e+00, float* %u13, align 4, !tbaa !98
  %14 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %cv14 = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %14, i32 0, i32 1
  %w15 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cv14, i32 0, i32 2
  store float 0.000000e+00, float* %w15, align 4, !tbaa !99
  %15 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %u16 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %15, i32 0, i32 0
  %16 = load float, float* %u16, align 4, !tbaa !62
  %conv = fpext float %16 to double
  %cmp = fcmp oeq double %conv, 1.000000e+00
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %17 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %v18 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %17, i32 0, i32 1
  %18 = load float, float* %v18, align 4, !tbaa !64
  %conv19 = fpext float %18 to double
  %cmp20 = fcmp oeq double %conv19, 1.000000e+00
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %19 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vec.addr, align 8, !tbaa !1
  %w22 = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %19, i32 0, i32 2
  %20 = load float, float* %w22, align 4, !tbaa !65
  %conv23 = fpext float %20 to double
  %cmp24 = fcmp oeq double %conv23, 1.000000e+00
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %21 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp24, %land.rhs ]
  %land.ext = zext i1 %21 to i32
  %22 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix.addr, align 8, !tbaa !1
  %is_identity = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %22, i32 0, i32 3
  store i32 %land.ext, i32* %is_identity, align 4, !tbaa !103
  ret void
}

declare i32 @gx_cie_to_xyz_alloc(%struct.gs_imager_state_s**, %struct.gs_color_space_s*, %struct.gs_memory_s*) #2

declare i32 @gs_color_space_get_index(%struct.gs_color_space_s*) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare i32 @gx_psconcretize_CIEA(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEABC(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEDEF(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare i32 @gx_psconcretize_CIEDEFG(%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, float*, %struct.gs_imager_state_s*) #2

declare void @gx_cie_to_xyz_free(%struct.gs_imager_state_s*) #2

declare void @cie_matrix_mult3(%struct.gs_matrix3_s*, %struct.gs_matrix3_s*, %struct.gs_matrix3_s*) #2

; Function Attrs: nounwind uwtable
define internal void @merge_abc_lmn_curves(%struct.gx_cie_vector_cache_s* %DecodeABC_caches, %union.gx_cie_scalar_cache_s* %DecodeLMN) #0 {
entry:
  %DecodeABC_caches.addr = alloca %struct.gx_cie_vector_cache_s*, align 8
  %DecodeLMN.addr = alloca %union.gx_cie_scalar_cache_s*, align 8
  store %struct.gx_cie_vector_cache_s* %DecodeABC_caches, %struct.gx_cie_vector_cache_s** %DecodeABC_caches.addr, align 8, !tbaa !1
  store %union.gx_cie_scalar_cache_s* %DecodeLMN, %union.gx_cie_scalar_cache_s** %DecodeLMN.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @scale_matrix(float* %matrix_input, float %scale_factor) #0 {
entry:
  %matrix_input.addr = alloca float*, align 8
  %scale_factor.addr = alloca float, align 4
  %k = alloca i32, align 4
  store float* %matrix_input, float** %matrix_input.addr, align 8, !tbaa !1
  store float %scale_factor, float* %scale_factor.addr, align 4, !tbaa !23
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %matrix_input.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4, !tbaa !23
  %conv = fpext float %4 to double
  %div = fdiv double %conv, 2.000000e+00
  %conv1 = fptrunc double %div to float
  %5 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %6 = load float*, float** %matrix_input.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 %idxprom2
  store float %conv1, float* %arrayidx3, align 4, !tbaa !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @getsize_lutAtoBtype(%struct.gsicc_lutatob* %lutatobparts) #0 {
entry:
  %lutatobparts.addr = alloca %struct.gsicc_lutatob*, align 8
  %data_offset = alloca i32, align 4
  %mlut_size = alloca i32, align 4
  %numout = alloca i32, align 4
  %numin = alloca i32, align 4
  %pad_bytes = alloca i32, align 4
  store %struct.gsicc_lutatob* %lutatobparts, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %0 = bitcast i32* %data_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %mlut_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %numout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %num_out = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %3, i32 0, i32 6
  %4 = load i32, i32* %num_out, align 4, !tbaa !68
  store i32 %4, i32* %numout, align 4, !tbaa !5
  %5 = bitcast i32* %numin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %6, i32 0, i32 5
  %7 = load i32, i32* %num_in, align 4, !tbaa !66
  store i32 %7, i32* %numin, align 4, !tbaa !5
  %8 = bitcast i32* %pad_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 32, i32* %data_offset, align 4, !tbaa !5
  %9 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %b_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %9, i32 0, i32 4
  %10 = load float*, float** %b_curves, align 8, !tbaa !92
  %cmp = icmp ne float* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %numout, align 4, !tbaa !5
  %mul = mul nsw i32 %11, 1036
  %12 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add = add nsw i32 %12, %mul
  store i32 %add, i32* %data_offset, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i32, i32* %numout, align 4, !tbaa !5
  %mul1 = mul nsw i32 %13, 12
  %14 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add2 = add nsw i32 %14, %mul1
  store i32 %add2, i32* %data_offset, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %15, i32 0, i32 3
  %16 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %cmp3 = icmp ne %struct.gs_matrix3_s* %16, null
  br i1 %cmp3, label %if.then.4, label %if.end.14

if.then.4:                                        ; preds = %if.end
  %17 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add5 = add nsw i32 %17, 48
  store i32 %add5, i32* %data_offset, align 4, !tbaa !5
  %18 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %18, i32 0, i32 2
  %19 = load float*, float** %m_curves, align 8, !tbaa !86
  %cmp6 = icmp ne float* %19, null
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.then.4
  %20 = load i32, i32* %numout, align 4, !tbaa !5
  %mul8 = mul nsw i32 %20, 1036
  %21 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add9 = add nsw i32 %21, %mul8
  store i32 %add9, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.13

if.else.10:                                       ; preds = %if.then.4
  %22 = load i32, i32* %numout, align 4, !tbaa !5
  %mul11 = mul nsw i32 %22, 12
  %23 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add12 = add nsw i32 %23, %mul11
  store i32 %add12, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %24 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %24, i32 0, i32 1
  %25 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %cmp15 = icmp ne %struct.gsicc_clut* %25, null
  br i1 %cmp15, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %if.end.14
  %26 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut17 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %26, i32 0, i32 1
  %27 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut17, align 8, !tbaa !84
  %clut_num_entries = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %27, i32 0, i32 5
  %28 = load i32, i32* %clut_num_entries, align 4, !tbaa !104
  %29 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut18 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %29, i32 0, i32 1
  %30 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut18, align 8, !tbaa !84
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %30, i32 0, i32 6
  %31 = load i32, i32* %clut_word_width, align 4, !tbaa !90
  %mul19 = mul nsw i32 %28, %31
  %mul20 = mul nsw i32 %mul19, 3
  store i32 %mul20, i32* %mlut_size, align 4, !tbaa !5
  %32 = load i32, i32* %mlut_size, align 4, !tbaa !5
  %rem = srem i32 %32, 4
  %sub = sub nsw i32 4, %rem
  %rem21 = srem i32 %sub, 4
  store i32 %rem21, i32* %pad_bytes, align 4, !tbaa !5
  %33 = load i32, i32* %mlut_size, align 4, !tbaa !5
  %34 = load i32, i32* %pad_bytes, align 4, !tbaa !5
  %add22 = add nsw i32 %33, %34
  %add23 = add nsw i32 %add22, 20
  %35 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add24 = add nsw i32 %35, %add23
  store i32 %add24, i32* %data_offset, align 4, !tbaa !5
  %36 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %36, i32 0, i32 0
  %37 = load float*, float** %a_curves, align 8, !tbaa !85
  %cmp25 = icmp ne float* %37, null
  br i1 %cmp25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %if.then.16
  %38 = load i32, i32* %numin, align 4, !tbaa !5
  %mul27 = mul nsw i32 %38, 1036
  %39 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add28 = add nsw i32 %39, %mul27
  store i32 %add28, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.32

if.else.29:                                       ; preds = %if.then.16
  %40 = load i32, i32* %numin, align 4, !tbaa !5
  %mul30 = mul nsw i32 %40, 12
  %41 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add31 = add nsw i32 %41, %mul30
  store i32 %add31, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.14
  %42 = load i32, i32* %data_offset, align 4, !tbaa !5
  %43 = bitcast i32* %pad_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %numin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %numout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %mlut_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  %47 = bitcast i32* %data_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal void @get_D50(i32* %XYZ) #0 {
entry:
  %XYZ.addr = alloca i32*, align 8
  store i32* %XYZ, i32** %XYZ.addr, align 8, !tbaa !1
  %call = call i32 @double2XYZtype(float 0x3FEEDABA00000000) #6
  %0 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  store i32 %call, i32* %arrayidx, align 4, !tbaa !5
  %call1 = call i32 @double2XYZtype(float 1.000000e+00) #6
  %1 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !5
  %call3 = call i32 @double2XYZtype(float 0x3FEA6594A0000000) #6
  %2 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %2, i64 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_XYZ(i32* %XYZ, %struct.gs_vector3_s* %vector) #0 {
entry:
  %XYZ.addr = alloca i32*, align 8
  %vector.addr = alloca %struct.gs_vector3_s*, align 8
  store i32* %XYZ, i32** %XYZ.addr, align 8, !tbaa !1
  store %struct.gs_vector3_s* %vector, %struct.gs_vector3_s** %vector.addr, align 8, !tbaa !1
  %0 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vector.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %0, i32 0, i32 0
  %1 = load float, float* %u, align 4, !tbaa !62
  %call = call i32 @double2XYZtype(float %1) #6
  %2 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 %call, i32* %arrayidx, align 4, !tbaa !5
  %3 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vector.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %3, i32 0, i32 1
  %4 = load float, float* %v, align 4, !tbaa !64
  %call1 = call i32 @double2XYZtype(float %4) #6
  %5 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 1
  store i32 %call1, i32* %arrayidx2, align 4, !tbaa !5
  %6 = load %struct.gs_vector3_s*, %struct.gs_vector3_s** %vector.addr, align 8, !tbaa !1
  %w = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %6, i32 0, i32 2
  %7 = load float, float* %w, align 4, !tbaa !65
  %call3 = call i32 @double2XYZtype(float %7) #6
  %8 = load i32*, i32** %XYZ.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 2
  store i32 %call3, i32* %arrayidx4, align 4, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gsicc_create_copy_matrix3(float* %src, float* %des) #0 {
entry:
  %src.addr = alloca float*, align 8
  %des.addr = alloca float*, align 8
  store float* %src, float** %src.addr, align 8, !tbaa !1
  store float* %des, float** %des.addr, align 8, !tbaa !1
  %0 = load float*, float** %des.addr, align 8, !tbaa !1
  %1 = bitcast float* %0 to i8*
  %2 = load float*, float** %src.addr, align 8, !tbaa !1
  %3 = bitcast float* %2 to i8*
  %call = call i8* @memcpy(i8* %1, i8* %3, i64 36) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_lutAtoBtype(i8* %input_ptr, %struct.gsicc_lutatob* %lutatobparts) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %lutatobparts.addr = alloca %struct.gsicc_lutatob*, align 8
  %curr_ptr = alloca i8*, align 8
  %mlut_size = alloca i64, align 8
  %data_offset = alloca i32, align 4
  %k = alloca i32, align 4
  %numout = alloca i32, align 4
  %numin = alloca i32, align 4
  %pad_bytes = alloca i32, align 4
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store %struct.gsicc_lutatob* %lutatobparts, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i64* %mlut_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %data_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %numout to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %num_out = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %5, i32 0, i32 6
  %6 = load i32, i32* %num_out, align 4, !tbaa !68
  store i32 %6, i32* %numout, align 4, !tbaa !5
  %7 = bitcast i32* %numin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %num_in = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %8, i32 0, i32 5
  %9 = load i32, i32* %num_in, align 4, !tbaa !66
  store i32 %9, i32* %numin, align 4, !tbaa !5
  %10 = bitcast i32* %pad_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %pad_bytes, align 4, !tbaa !5
  %11 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %11, i8** %curr_ptr, align 8, !tbaa !1
  %12 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %12, i64 1832993312) #6
  %13 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %14 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %14, i32 0, i64 4) #7
  %15 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  %16 = load i32, i32* %numin, align 4, !tbaa !5
  %conv = trunc i32 %16 to i8
  %17 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %curr_ptr, align 8, !tbaa !1
  store i8 %conv, i8* %17, align 1, !tbaa !14
  %18 = load i32, i32* %numout, align 4, !tbaa !5
  %conv2 = trunc i32 %18 to i8
  %19 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr3, i8** %curr_ptr, align 8, !tbaa !1
  store i8 %conv2, i8* %19, align 1, !tbaa !14
  %20 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call4 = call i8* @memset(i8* %20, i32 0, i64 2) #7
  %21 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr5 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %add.ptr5, i8** %curr_ptr, align 8, !tbaa !1
  store i32 32, i32* %data_offset, align 4, !tbaa !5
  %22 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %b_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %22, i32 0, i32 4
  %23 = load float*, float** %b_curves, align 8, !tbaa !92
  %cmp = icmp eq float* %23, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %24 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %25 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv7 = sext i32 %25 to i64
  call void @write_bigendian_4bytes(i8* %24, i64 %conv7) #6
  %26 = load i32, i32* %numout, align 4, !tbaa !5
  %mul = mul nsw i32 %26, 12
  %27 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add = add nsw i32 %27, %mul
  store i32 %add, i32* %data_offset, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %29 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv8 = sext i32 %29 to i64
  call void @write_bigendian_4bytes(i8* %28, i64 %conv8) #6
  %30 = load i32, i32* %numout, align 4, !tbaa !5
  %mul9 = mul nsw i32 %30, 1036
  %31 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add10 = add nsw i32 %31, %mul9
  store i32 %add10, i32* %data_offset, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %32 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr11 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %add.ptr11, i8** %curr_ptr, align 8, !tbaa !1
  %33 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %33, i32 0, i32 3
  %34 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix, align 8, !tbaa !83
  %cmp12 = icmp eq %struct.gs_matrix3_s* %34, null
  br i1 %cmp12, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.end
  %35 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call15 = call i8* @memset(i8* %35, i32 0, i64 4) #7
  %36 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr16 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %add.ptr16, i8** %curr_ptr, align 8, !tbaa !1
  %37 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call17 = call i8* @memset(i8* %37, i32 0, i64 4) #7
  br label %if.end.33

if.else.18:                                       ; preds = %if.end
  %38 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %39 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv19 = sext i32 %39 to i64
  call void @write_bigendian_4bytes(i8* %38, i64 %conv19) #6
  %40 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add20 = add nsw i32 %40, 48
  store i32 %add20, i32* %data_offset, align 4, !tbaa !5
  %41 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %41, i64 4
  store i8* %add.ptr21, i8** %curr_ptr, align 8, !tbaa !1
  %42 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %m_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %42, i32 0, i32 2
  %43 = load float*, float** %m_curves, align 8, !tbaa !86
  %cmp22 = icmp eq float* %43, null
  br i1 %cmp22, label %if.then.24, label %if.else.28

if.then.24:                                       ; preds = %if.else.18
  %44 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %45 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv25 = sext i32 %45 to i64
  call void @write_bigendian_4bytes(i8* %44, i64 %conv25) #6
  %46 = load i32, i32* %numout, align 4, !tbaa !5
  %mul26 = mul nsw i32 %46, 12
  %47 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add27 = add nsw i32 %47, %mul26
  store i32 %add27, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.32

if.else.28:                                       ; preds = %if.else.18
  %48 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %49 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv29 = sext i32 %49 to i64
  call void @write_bigendian_4bytes(i8* %48, i64 %conv29) #6
  %50 = load i32, i32* %numout, align 4, !tbaa !5
  %mul30 = mul nsw i32 %50, 1036
  %51 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add31 = add nsw i32 %51, %mul30
  store i32 %add31, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.28, %if.then.24
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.14
  %52 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %52, i64 4
  store i8* %add.ptr34, i8** %curr_ptr, align 8, !tbaa !1
  %53 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %53, i32 0, i32 1
  %54 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut, align 8, !tbaa !84
  %cmp35 = icmp eq %struct.gsicc_clut* %54, null
  br i1 %cmp35, label %if.then.37, label %if.else.41

if.then.37:                                       ; preds = %if.end.33
  %55 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call38 = call i8* @memset(i8* %55, i32 0, i64 4) #7
  %56 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr39 = getelementptr inbounds i8, i8* %56, i64 4
  store i8* %add.ptr39, i8** %curr_ptr, align 8, !tbaa !1
  %57 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call40 = call i8* @memset(i8* %57, i32 0, i64 4) #7
  br label %if.end.71

if.else.41:                                       ; preds = %if.end.33
  %58 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %59 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv42 = sext i32 %59 to i64
  call void @write_bigendian_4bytes(i8* %58, i64 %conv42) #6
  %60 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut43 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %60, i32 0, i32 1
  %61 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut43, align 8, !tbaa !84
  %clut_num_entries = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %61, i32 0, i32 5
  %62 = load i32, i32* %clut_num_entries, align 4, !tbaa !104
  %63 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut44 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %63, i32 0, i32 1
  %64 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut44, align 8, !tbaa !84
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %64, i32 0, i32 6
  %65 = load i32, i32* %clut_word_width, align 4, !tbaa !90
  %mul45 = mul nsw i32 %62, %65
  %mul46 = mul nsw i32 %mul45, 3
  %conv47 = sext i32 %mul46 to i64
  store i64 %conv47, i64* %mlut_size, align 8, !tbaa !52
  %66 = load i64, i64* %mlut_size, align 8, !tbaa !52
  %rem = srem i64 %66, 4
  %sub = sub nsw i64 4, %rem
  %rem48 = srem i64 %sub, 4
  %conv49 = trunc i64 %rem48 to i32
  store i32 %conv49, i32* %pad_bytes, align 4, !tbaa !5
  %67 = load i64, i64* %mlut_size, align 8, !tbaa !52
  %68 = load i32, i32* %pad_bytes, align 4, !tbaa !5
  %conv50 = sext i32 %68 to i64
  %add51 = add nsw i64 %67, %conv50
  %add52 = add nsw i64 %add51, 20
  %69 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv53 = sext i32 %69 to i64
  %add54 = add nsw i64 %conv53, %add52
  %conv55 = trunc i64 %add54 to i32
  store i32 %conv55, i32* %data_offset, align 4, !tbaa !5
  %70 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr56 = getelementptr inbounds i8, i8* %70, i64 4
  store i8* %add.ptr56, i8** %curr_ptr, align 8, !tbaa !1
  %71 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %a_curves = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %71, i32 0, i32 0
  %72 = load float*, float** %a_curves, align 8, !tbaa !85
  %cmp57 = icmp eq float* %72, null
  br i1 %cmp57, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.41
  %73 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut59 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %73, i32 0, i32 1
  %74 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut59, align 8, !tbaa !84
  %cmp60 = icmp eq %struct.gsicc_clut* %74, null
  br i1 %cmp60, label %if.then.62, label %if.else.66

if.then.62:                                       ; preds = %lor.lhs.false, %if.else.41
  %75 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %76 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv63 = sext i32 %76 to i64
  call void @write_bigendian_4bytes(i8* %75, i64 %conv63) #6
  %77 = load i32, i32* %numin, align 4, !tbaa !5
  %mul64 = mul nsw i32 %77, 12
  %78 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add65 = add nsw i32 %78, %mul64
  store i32 %add65, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.70

if.else.66:                                       ; preds = %lor.lhs.false
  %79 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %80 = load i32, i32* %data_offset, align 4, !tbaa !5
  %conv67 = sext i32 %80 to i64
  call void @write_bigendian_4bytes(i8* %79, i64 %conv67) #6
  %81 = load i32, i32* %numin, align 4, !tbaa !5
  %mul68 = mul nsw i32 %81, 1036
  %82 = load i32, i32* %data_offset, align 4, !tbaa !5
  %add69 = add nsw i32 %82, %mul68
  store i32 %add69, i32* %data_offset, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.66, %if.then.62
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.37
  %83 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr72 = getelementptr inbounds i8, i8* %83, i64 4
  store i8* %add.ptr72, i8** %curr_ptr, align 8, !tbaa !1
  %84 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %b_curves73 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %84, i32 0, i32 4
  %85 = load float*, float** %b_curves73, align 8, !tbaa !92
  %cmp74 = icmp ne float* %85, null
  br i1 %cmp74, label %if.then.76, label %if.else.83

if.then.76:                                       ; preds = %if.end.71
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.76
  %86 = load i32, i32* %k, align 4, !tbaa !5
  %87 = load i32, i32* %numout, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %86, %87
  br i1 %cmp77, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %88 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %89 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %b_curves79 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %89, i32 0, i32 4
  %90 = load float*, float** %b_curves79, align 8, !tbaa !92
  %91 = load i32, i32* %k, align 4, !tbaa !5
  %mul80 = mul nsw i32 %91, 512
  %idx.ext = sext i32 %mul80 to i64
  %add.ptr81 = getelementptr inbounds float, float* %90, i64 %idx.ext
  call void @add_curve(i8* %88, float* %add.ptr81, i32 512) #6
  %92 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i8, i8* %92, i64 1036
  store i8* %add.ptr82, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %93 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %93, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.87

if.else.83:                                       ; preds = %if.end.71
  %94 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %95 = load i32, i32* %numout, align 4, !tbaa !5
  call void @add_ident_curves(i8* %94, i32 %95) #6
  %96 = load i32, i32* %numout, align 4, !tbaa !5
  %mul84 = mul nsw i32 %96, 12
  %97 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext85 = sext i32 %mul84 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %97, i64 %idx.ext85
  store i8* %add.ptr86, i8** %curr_ptr, align 8, !tbaa !1
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %for.end
  %98 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix88 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %98, i32 0, i32 3
  %99 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix88, align 8, !tbaa !83
  %cmp89 = icmp ne %struct.gs_matrix3_s* %99, null
  br i1 %cmp89, label %if.then.91, label %if.end.115

if.then.91:                                       ; preds = %if.end.87
  %100 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %101 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %matrix92 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %101, i32 0, i32 3
  %102 = load %struct.gs_matrix3_s*, %struct.gs_matrix3_s** %matrix92, align 8, !tbaa !83
  %cu = getelementptr inbounds %struct.gs_matrix3_s, %struct.gs_matrix3_s* %102, i32 0, i32 0
  %u = getelementptr inbounds %struct.gs_vector3_s, %struct.gs_vector3_s* %cu, i32 0, i32 0
  call void @add_matrixwithbias(i8* %100, float* %u, i32 1) #6
  %103 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr93 = getelementptr inbounds i8, i8* %103, i64 48
  store i8* %add.ptr93, i8** %curr_ptr, align 8, !tbaa !1
  %104 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %m_curves94 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %104, i32 0, i32 2
  %105 = load float*, float** %m_curves94, align 8, !tbaa !86
  %cmp95 = icmp ne float* %105, null
  br i1 %cmp95, label %if.then.97, label %if.else.110

if.then.97:                                       ; preds = %if.then.91
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.107, %if.then.97
  %106 = load i32, i32* %k, align 4, !tbaa !5
  %107 = load i32, i32* %numout, align 4, !tbaa !5
  %cmp99 = icmp slt i32 %106, %107
  br i1 %cmp99, label %for.body.101, label %for.end.109

for.body.101:                                     ; preds = %for.cond.98
  %108 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %109 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %m_curves102 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %109, i32 0, i32 2
  %110 = load float*, float** %m_curves102, align 8, !tbaa !86
  %111 = load i32, i32* %k, align 4, !tbaa !5
  %mul103 = mul nsw i32 %111, 512
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds float, float* %110, i64 %idx.ext104
  call void @add_curve(i8* %108, float* %add.ptr105, i32 512) #6
  %112 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds i8, i8* %112, i64 1036
  store i8* %add.ptr106, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.101
  %113 = load i32, i32* %k, align 4, !tbaa !5
  %inc108 = add nsw i32 %113, 1
  store i32 %inc108, i32* %k, align 4, !tbaa !5
  br label %for.cond.98

for.end.109:                                      ; preds = %for.cond.98
  br label %if.end.114

if.else.110:                                      ; preds = %if.then.91
  %114 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %115 = load i32, i32* %numout, align 4, !tbaa !5
  call void @add_ident_curves(i8* %114, i32 %115) #6
  %116 = load i32, i32* %numout, align 4, !tbaa !5
  %mul111 = mul nsw i32 %116, 12
  %117 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %117, i64 %idx.ext112
  store i8* %add.ptr113, i8** %curr_ptr, align 8, !tbaa !1
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.110, %for.end.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.87
  %118 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut116 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %118, i32 0, i32 1
  %119 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut116, align 8, !tbaa !84
  %cmp117 = icmp ne %struct.gsicc_clut* %119, null
  br i1 %cmp117, label %if.then.119, label %if.end.148

if.then.119:                                      ; preds = %if.end.115
  %120 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %121 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %clut120 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %121, i32 0, i32 1
  %122 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut120, align 8, !tbaa !84
  call void @add_clutAtoB(i8* %120, %struct.gsicc_clut* %122) #6
  %123 = load i64, i64* %mlut_size, align 8, !tbaa !52
  %add121 = add nsw i64 20, %123
  %124 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr122 = getelementptr inbounds i8, i8* %124, i64 %add121
  store i8* %add.ptr122, i8** %curr_ptr, align 8, !tbaa !1
  %125 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %126 = load i32, i32* %pad_bytes, align 4, !tbaa !5
  %conv123 = sext i32 %126 to i64
  %call124 = call i8* @memset(i8* %125, i32 0, i64 %conv123) #7
  %127 = load i32, i32* %pad_bytes, align 4, !tbaa !5
  %128 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext125 = sext i32 %127 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %128, i64 %idx.ext125
  store i8* %add.ptr126, i8** %curr_ptr, align 8, !tbaa !1
  %129 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %a_curves127 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %129, i32 0, i32 0
  %130 = load float*, float** %a_curves127, align 8, !tbaa !85
  %cmp128 = icmp ne float* %130, null
  br i1 %cmp128, label %if.then.130, label %if.else.143

if.then.130:                                      ; preds = %if.then.119
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.140, %if.then.130
  %131 = load i32, i32* %k, align 4, !tbaa !5
  %132 = load i32, i32* %numin, align 4, !tbaa !5
  %cmp132 = icmp slt i32 %131, %132
  br i1 %cmp132, label %for.body.134, label %for.end.142

for.body.134:                                     ; preds = %for.cond.131
  %133 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %134 = load %struct.gsicc_lutatob*, %struct.gsicc_lutatob** %lutatobparts.addr, align 8, !tbaa !1
  %a_curves135 = getelementptr inbounds %struct.gsicc_lutatob, %struct.gsicc_lutatob* %134, i32 0, i32 0
  %135 = load float*, float** %a_curves135, align 8, !tbaa !85
  %136 = load i32, i32* %k, align 4, !tbaa !5
  %mul136 = mul nsw i32 %136, 512
  %idx.ext137 = sext i32 %mul136 to i64
  %add.ptr138 = getelementptr inbounds float, float* %135, i64 %idx.ext137
  call void @add_curve(i8* %133, float* %add.ptr138, i32 512) #6
  %137 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr139 = getelementptr inbounds i8, i8* %137, i64 1036
  store i8* %add.ptr139, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.134
  %138 = load i32, i32* %k, align 4, !tbaa !5
  %inc141 = add nsw i32 %138, 1
  store i32 %inc141, i32* %k, align 4, !tbaa !5
  br label %for.cond.131

for.end.142:                                      ; preds = %for.cond.131
  br label %if.end.147

if.else.143:                                      ; preds = %if.then.119
  %139 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %140 = load i32, i32* %numin, align 4, !tbaa !5
  call void @add_ident_curves(i8* %139, i32 %140) #6
  %141 = load i32, i32* %numin, align 4, !tbaa !5
  %mul144 = mul nsw i32 %141, 12
  %142 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext145 = sext i32 %mul144 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %142, i64 %idx.ext145
  store i8* %add.ptr146, i8** %curr_ptr, align 8, !tbaa !1
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.143, %for.end.142
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.115
  %143 = bitcast i32* %pad_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #1
  %144 = bitcast i32* %numin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #1
  %145 = bitcast i32* %numout to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %data_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i64* %mlut_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_curve(i8* %input_ptr, float* %curve_data, i32 %num_samples) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %curve_data.addr = alloca float*, align 8
  %num_samples.addr = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  %value = alloca i16, align 2
  %k = alloca i32, align 4
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store float* %curve_data, float** %curve_data.addr, align 8, !tbaa !1
  store i32 %num_samples, i32* %num_samples.addr, align 4, !tbaa !5
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i16* %value to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %3, i8** %curr_ptr, align 8, !tbaa !1
  %4 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %4, i64 1668641398) #6
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %6, i32 0, i64 4) #7
  %7 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %7, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i32, i32* %num_samples.addr, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  call void @write_bigendian_4bytes(i8* %8, i64 %conv) #6
  %10 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr2, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %12 = load i32, i32* %num_samples.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %14 = load float*, float** %curve_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds float, float* %14, i64 %idxprom
  %15 = load float, float* %arrayidx, align 4, !tbaa !23
  %cmp4 = fcmp olt float %15, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %17 = load float*, float** %curve_data.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds float, float* %17, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %18 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom8 = sext i32 %18 to i64
  %19 = load float*, float** %curve_data.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds float, float* %19, i64 %idxprom8
  %20 = load float, float* %arrayidx9, align 4, !tbaa !23
  %cmp10 = fcmp ogt float %20, 1.000000e+00
  br i1 %cmp10, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %if.end
  %21 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom13 = sext i32 %21 to i64
  %22 = load float*, float** %curve_data.addr, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds float, float* %22, i64 %idxprom13
  store float 1.000000e+00, float* %arrayidx14, align 4, !tbaa !23
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end
  %23 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom16 = sext i32 %23 to i64
  %24 = load float*, float** %curve_data.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds float, float* %24, i64 %idxprom16
  %25 = load float, float* %arrayidx17, align 4, !tbaa !23
  %conv18 = fpext float %25 to double
  %mul = fmul double %conv18, 6.553500e+04
  %conv19 = fptoui double %mul to i32
  %conv20 = trunc i32 %conv19 to i16
  store i16 %conv20, i16* %value, align 2, !tbaa !25
  %26 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %27 = load i16, i16* %value, align 2, !tbaa !25
  call void @write_bigendian_2bytes(i8* %26, i16 zeroext %27) #6
  %28 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr21 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %add.ptr21, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %29 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast i16* %value to i8*
  call void @llvm.lifetime.end(i64 2, i8* %31) #1
  %32 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_ident_curves(i8* %input_ptr, i32 %number_of_curves) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %number_of_curves.addr = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  %k = alloca i32, align 4
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store i32 %number_of_curves, i32* %number_of_curves.addr, align 4, !tbaa !5
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %2, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4, !tbaa !5
  %4 = load i32, i32* %number_of_curves.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %5, i64 1668641398) #6
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %7 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call = call i8* @memset(i8* %7, i32 0, i64 4) #7
  %8 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr1 = getelementptr inbounds i8, i8* %8, i64 4
  store i8* %add.ptr1, i8** %curr_ptr, align 8, !tbaa !1
  %9 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  call void @write_bigendian_4bytes(i8* %9, i64 0) #6
  %10 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %10, i64 4
  store i8* %add.ptr2, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_matrixwithbias(i8* %input_ptr, float* %float_ptr_in, i32 %has_bias) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %float_ptr_in.addr = alloca float*, align 8
  %has_bias.addr = alloca i32, align 4
  %curr_ptr = alloca i8*, align 8
  %float_ptr = alloca float*, align 8
  %k = alloca i32, align 4
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store float* %float_ptr_in, float** %float_ptr_in.addr, align 8, !tbaa !1
  store i32 %has_bias, i32* %has_bias.addr, align 4, !tbaa !5
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast float** %float_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load float*, float** %float_ptr_in.addr, align 8, !tbaa !1
  store float* %2, float** %float_ptr, align 8, !tbaa !1
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %4, i8** %curr_ptr, align 8, !tbaa !1
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %7 = load float*, float** %float_ptr, align 8, !tbaa !1
  %8 = load float, float* %7, align 4, !tbaa !23
  %call = call i32 @double2icS15Fixed16Number(float %8) #6
  %conv = sext i32 %call to i64
  call void @write_bigendian_4bytes(i8* %6, i64 %conv) #6
  %9 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 4
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %10 = load float*, float** %float_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds float, float* %10, i32 1
  store float* %incdec.ptr, float** %float_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %has_bias.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %13 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call1 = call i8* @memset(i8* %13, i32 0, i64 12) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %14 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast float** %float_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @add_clutAtoB(i8* %input_ptr, %struct.gsicc_clut* %clut) #0 {
entry:
  %input_ptr.addr = alloca i8*, align 8
  %clut.addr = alloca %struct.gsicc_clut*, align 8
  %curr_ptr = alloca i8*, align 8
  %k = alloca i32, align 4
  %num_channels_in = alloca i32, align 4
  %number_samples = alloca i32, align 4
  store i8* %input_ptr, i8** %input_ptr.addr, align 8, !tbaa !1
  store %struct.gsicc_clut* %clut, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %0 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %input_ptr.addr, align 8, !tbaa !1
  store i8* %1, i8** %curr_ptr, align 8, !tbaa !1
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %num_channels_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_input = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %4, i32 0, i32 3
  %5 = load i32, i32* %clut_num_input, align 4, !tbaa !87
  store i32 %5, i32* %num_channels_in, align 4, !tbaa !5
  %6 = bitcast i32* %number_samples to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_num_entries = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %7, i32 0, i32 5
  %8 = load i32, i32* %clut_num_entries, align 4, !tbaa !104
  store i32 %8, i32* %number_samples, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %k, align 4, !tbaa !5
  %10 = load i32, i32* %num_channels_in, align 4, !tbaa !5
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %12 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_dims = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %13, i32 0, i32 2
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %clut_dims, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %call = call i8* @memset(i8* %11, i32 %14, i64 1) #7
  %15 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %18 = load i32, i32* %num_channels_in, align 4, !tbaa !5
  %sub = sub nsw i32 16, %18
  %conv = sext i32 %sub to i64
  %call1 = call i8* @memset(i8* %17, i32 0, i64 %conv) #7
  %19 = load i32, i32* %num_channels_in, align 4, !tbaa !5
  %sub2 = sub nsw i32 16, %19
  %20 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr, i8** %curr_ptr, align 8, !tbaa !1
  %21 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %22 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %clut_word_width = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %22, i32 0, i32 6
  %23 = load i32, i32* %clut_word_width, align 4, !tbaa !90
  %call3 = call i8* @memset(i8* %21, i32 %23, i64 1) #7
  %24 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr4, i8** %curr_ptr, align 8, !tbaa !1
  %25 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %call5 = call i8* @memset(i8* %25, i32 0, i64 3) #7
  %26 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr6 = getelementptr inbounds i8, i8* %26, i64 3
  store i8* %add.ptr6, i8** %curr_ptr, align 8, !tbaa !1
  %27 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %data_byte = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %27, i32 0, i32 1
  %28 = load i8*, i8** %data_byte, align 8, !tbaa !105
  %cmp7 = icmp ne i8* %28, null
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %29 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %30 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %data_byte9 = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %30, i32 0, i32 1
  %31 = load i8*, i8** %data_byte9, align 8, !tbaa !105
  %32 = load i32, i32* %number_samples, align 4, !tbaa !5
  %mul = mul nsw i32 %32, 3
  %conv10 = sext i32 %mul to i64
  %call11 = call i8* @memcpy(i8* %29, i8* %31, i64 %conv10) #7
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %if.else
  %33 = load i32, i32* %k, align 4, !tbaa !5
  %34 = load i32, i32* %number_samples, align 4, !tbaa !5
  %mul13 = mul nsw i32 %34, 3
  %cmp14 = icmp slt i32 %33, %mul13
  br i1 %cmp14, label %for.body.16, label %for.end.22

for.body.16:                                      ; preds = %for.cond.12
  %35 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %36 = load i32, i32* %k, align 4, !tbaa !5
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.gsicc_clut*, %struct.gsicc_clut** %clut.addr, align 8, !tbaa !1
  %data_short = getelementptr inbounds %struct.gsicc_clut, %struct.gsicc_clut* %37, i32 0, i32 0
  %38 = load i16*, i16** %data_short, align 8, !tbaa !91
  %arrayidx18 = getelementptr inbounds i16, i16* %38, i64 %idxprom17
  %39 = load i16, i16* %arrayidx18, align 2, !tbaa !25
  call void @write_bigendian_2bytes(i8* %35, i16 zeroext %39) #6
  %40 = load i8*, i8** %curr_ptr, align 8, !tbaa !1
  %add.ptr19 = getelementptr inbounds i8, i8* %40, i64 2
  store i8* %add.ptr19, i8** %curr_ptr, align 8, !tbaa !1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.16
  %41 = load i32, i32* %k, align 4, !tbaa !5
  %inc21 = add nsw i32 %41, 1
  store i32 %inc21, i32* %k, align 4, !tbaa !5
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  br label %if.end

if.end:                                           ; preds = %for.end.22, %if.then
  %42 = bitcast i32* %number_samples to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %num_channels_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i8** %curr_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @double2icS15Fixed16Number(float %number_in) #0 {
entry:
  %retval = alloca i32, align 4
  %number_in.addr = alloca float, align 4
  %s = alloca i16, align 2
  %m = alloca i16, align 2
  %temp = alloca i32, align 4
  %number = alloca float, align 4
  %cleanup.dest.slot = alloca i32
  store float %number_in, float* %number_in.addr, align 4, !tbaa !23
  %0 = bitcast i16* %s to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #1
  %1 = bitcast i16* %m to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #1
  %2 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast float* %number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load float, float* %number_in.addr, align 4, !tbaa !23
  %cmp = fcmp olt float %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load float, float* %number_in.addr, align 4, !tbaa !23
  %sub = fsub float -0.000000e+00, %5
  store float %sub, float* %number, align 4, !tbaa !23
  %6 = load float, float* %number, align 4, !tbaa !23
  %conv = fptosi float %6 to i16
  store i16 %conv, i16* %s, align 2, !tbaa !25
  %7 = load float, float* %number, align 4, !tbaa !23
  %8 = load i16, i16* %s, align 2, !tbaa !25
  %conv1 = sext i16 %8 to i32
  %conv2 = sitofp i32 %conv1 to float
  %sub3 = fsub float %7, %conv2
  %conv4 = fpext float %sub3 to double
  %mul = fmul double %conv4, 6.553600e+04
  %conv5 = fptoui double %mul to i16
  store i16 %conv5, i16* %m, align 2, !tbaa !25
  %9 = load i16, i16* %s, align 2, !tbaa !25
  %conv6 = sext i16 %9 to i32
  %shl = shl i32 %conv6, 16
  %10 = load i16, i16* %m, align 2, !tbaa !25
  %conv7 = zext i16 %10 to i32
  %or = or i32 %shl, %conv7
  store i32 %or, i32* %temp, align 4, !tbaa !5
  %11 = load i32, i32* %temp, align 4, !tbaa !5
  %sub8 = sub nsw i32 0, %11
  store i32 %sub8, i32* %temp, align 4, !tbaa !5
  %12 = load i32, i32* %temp, align 4, !tbaa !5
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %13 = load float, float* %number_in.addr, align 4, !tbaa !23
  %conv9 = fptosi float %13 to i16
  store i16 %conv9, i16* %s, align 2, !tbaa !25
  %14 = load float, float* %number_in.addr, align 4, !tbaa !23
  %15 = load i16, i16* %s, align 2, !tbaa !25
  %conv10 = sext i16 %15 to i32
  %conv11 = sitofp i32 %conv10 to float
  %sub12 = fsub float %14, %conv11
  %conv13 = fpext float %sub12 to double
  %mul14 = fmul double %conv13, 6.553600e+04
  %conv15 = fptoui double %mul14 to i16
  store i16 %conv15, i16* %m, align 2, !tbaa !25
  %16 = load i16, i16* %s, align 2, !tbaa !25
  %conv16 = sext i16 %16 to i32
  %shl17 = shl i32 %conv16, 16
  %17 = load i16, i16* %m, align 2, !tbaa !25
  %conv18 = zext i16 %17 to i32
  %or19 = or i32 %shl17, %conv18
  store i32 %or19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %18 = bitcast float* %number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  %19 = bitcast i32* %temp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #1
  %20 = bitcast i16* %m to i8*
  call void @llvm.lifetime.end(i64 2, i8* %20) #1
  %21 = bitcast i16* %s to i8*
  call void @llvm.lifetime.end(i64 2, i8* %21) #1
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare void @cie_mult3(%struct.gs_vector3_s*, %struct.gs_matrix3_s*, %struct.gs_vector3_s*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readonly }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !3, i64 20}
!8 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !3, i64 20, !9, i64 24, !6, i64 36, !3, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !3, i64 56, !6, i64 64, !11, i64 68, !6, i64 80, !3, i64 84}
!9 = !{!"", !10, i64 0, !10, i64 2, !10, i64 4, !10, i64 6, !10, i64 8, !10, i64 10}
!10 = !{!"short", !3, i64 0}
!11 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!12 = !{!8, !3, i64 12}
!13 = !{!8, !3, i64 16}
!14 = !{!3, !3, i64 0}
!15 = !{!16, !2, i64 64}
!16 = !{!"gs_memory_s", !2, i64 0, !17, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!17 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!18 = !{!19, !6, i64 8}
!19 = !{!"", !3, i64 0, !6, i64 4, !6, i64 8, !3, i64 12}
!20 = !{!16, !2, i64 200}
!21 = !{!16, !2, i64 24}
!22 = !{!8, !6, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !3, i64 0}
!25 = !{!10, !10, i64 0}
!26 = !{!27, !2, i64 256}
!27 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !28, i64 20, !29, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !30, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !31, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!28 = !{!"gs_range_icc_s", !3, i64 0}
!29 = !{!"long", !3, i64 0}
!30 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!31 = !{!"rc_header_s", !29, i64 0, !2, i64 8, !2, i64 16}
!32 = !{!27, !6, i64 220}
!33 = !{!27, !3, i64 0}
!34 = !{!27, !3, i64 16}
!35 = !{!27, !3, i64 12}
!36 = !{!27, !6, i64 152}
!37 = !{!8, !6, i64 4}
!38 = !{!8, !6, i64 8}
!39 = !{!8, !6, i64 36}
!40 = !{!8, !3, i64 40}
!41 = !{!8, !6, i64 44}
!42 = !{!8, !6, i64 48}
!43 = !{!8, !6, i64 52}
!44 = !{!8, !6, i64 64}
!45 = !{!8, !6, i64 68}
!46 = !{!8, !6, i64 72}
!47 = !{!8, !6, i64 76}
!48 = !{!8, !6, i64 80}
!49 = !{!19, !6, i64 4}
!50 = !{!19, !3, i64 0}
!51 = !{!19, !3, i64 12}
!52 = !{!29, !29, i64 0}
!53 = !{!54, !6, i64 0}
!54 = !{!"gx_cie_vector_cache_s", !55, i64 0, !59, i64 2088}
!55 = !{!"cie_cache_floats_s", !56, i64 0, !3, i64 40}
!56 = !{!"cie_cache_params_s", !6, i64 0, !57, i64 8, !57, i64 16, !58, i64 24}
!57 = !{!"double", !3, i64 0}
!58 = !{!"cie_linear_params_s", !6, i64 0, !24, i64 4, !24, i64 8}
!59 = !{!"cie_cache_vectors_s", !60, i64 0, !3, i64 36}
!60 = !{!"cie_vector_cache_params_s", !24, i64 0, !24, i64 4, !24, i64 8, !3, i64 12}
!61 = !{!55, !6, i64 0}
!62 = !{!63, !24, i64 0}
!63 = !{!"gs_vector3_s", !24, i64 0, !24, i64 4, !24, i64 8}
!64 = !{!63, !24, i64 4}
!65 = !{!63, !24, i64 8}
!66 = !{!67, !6, i64 40}
!67 = !{!"", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !6, i64 44, !2, i64 48, !2, i64 56, !2, i64 64}
!68 = !{!67, !6, i64 44}
!69 = !{!67, !2, i64 48}
!70 = !{!67, !2, i64 56}
!71 = !{!72, !6, i64 6500}
!72 = !{!"gs_cie_abc_s", !73, i64 0, !31, i64 6392, !74, i64 6416, !79, i64 6440, !76, i64 6464, !80, i64 6504}
!73 = !{!"gs_cie_common_s", !2, i64 0, !2, i64 8, !74, i64 16, !75, i64 40, !76, i64 64, !77, i64 104, !78, i64 128}
!74 = !{!"gs_range3_s", !3, i64 0}
!75 = !{!"gs_cie_common_proc3_s", !3, i64 0}
!76 = !{!"gs_matrix3_s", !63, i64 0, !63, i64 12, !63, i64 24, !6, i64 36}
!77 = !{!"gs_cie_wb_s", !63, i64 0, !63, i64 12}
!78 = !{!"", !3, i64 0}
!79 = !{!"gs_cie_abc_proc3_s", !3, i64 0}
!80 = !{!"", !6, i64 0, !81, i64 8}
!81 = !{!"gx_cie_vector_cache3_s", !3, i64 0, !3, i64 24816}
!82 = !{!72, !6, i64 100}
!83 = !{!67, !2, i64 24}
!84 = !{!67, !2, i64 8}
!85 = !{!67, !2, i64 0}
!86 = !{!67, !2, i64 16}
!87 = !{!88, !6, i64 32}
!88 = !{!"", !2, i64 0, !2, i64 8, !3, i64 16, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!89 = !{!88, !6, i64 36}
!90 = !{!88, !6, i64 44}
!91 = !{!88, !2, i64 0}
!92 = !{!67, !2, i64 32}
!93 = !{!67, !2, i64 64}
!94 = !{!76, !24, i64 0}
!95 = !{!76, !24, i64 4}
!96 = !{!76, !24, i64 8}
!97 = !{!76, !24, i64 16}
!98 = !{!76, !24, i64 12}
!99 = !{!76, !24, i64 20}
!100 = !{!76, !24, i64 32}
!101 = !{!76, !24, i64 24}
!102 = !{!76, !24, i64 28}
!103 = !{!76, !6, i64 36}
!104 = !{!88, !6, i64 40}
!105 = !{!88, !2, i64 8}
!106 = !{!107, !2, i64 24}
!107 = !{!"gx_color_lookup_table_s", !6, i64 0, !3, i64 4, !6, i64 20, !2, i64 24}
!108 = !{!109, !2, i64 0}
!109 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!110 = !{!9, !10, i64 4}
!111 = !{!9, !10, i64 6}
!112 = !{!9, !10, i64 8}
!113 = !{!9, !10, i64 2}
!114 = !{!9, !10, i64 10}
!115 = !{!9, !10, i64 0}
!116 = !{!117, !24, i64 4}
!117 = !{!"gs_range_s", !24, i64 0, !24, i64 4}
!118 = !{!117, !24, i64 0}
