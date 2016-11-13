; ModuleID = './gdevpsd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_memory_s = type { %struct.gs_memory_s*, %struct.gs_memory_procs_s, %struct.gs_lib_ctx_s*, %struct.gs_memory_s*, %struct.gs_memory_s* }
%struct.gs_memory_procs_s = type { i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)*, %struct.gs_memory_s* (%struct.gs_memory_s*)*, void (%struct.gs_memory_s*, %struct.gs_memory_status_s*)*, void (%struct.gs_memory_s*, i32, i8*)*, void (%struct.gs_memory_s*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, %struct.gs_memory_struct_type_s*, i8*)*, i32 (%struct.gs_memory_s*, i8*)*, %struct.gs_memory_struct_type_s* (%struct.gs_memory_s*, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i8*, i32, i32, i8*)*, void (%struct.gs_memory_s*, i8*, i32, i8*)*, i32 (%struct.gs_memory_s*, %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i8*)*, void (%struct.gs_memory_s*, %struct.gs_gc_root_s*, i8*)*, void (%struct.gs_memory_s*, i32)* }
%struct.gs_memory_status_s = type { i64, i64, i32 }
%struct.gs_gc_root_s = type { %struct.gs_gc_root_s*, %struct.gs_ptr_procs_s*, i8**, i32 }
%struct.gs_ptr_procs_s = type { void (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i32 (%struct.enum_ptr_s*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)* }
%struct.enum_ptr_s = type { i8*, i32 }
%struct.gc_state_s = type opaque
%struct.gs_lib_ctx_s = type { %struct.gs_memory_s*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, %struct._IO_FILE*, i32, i32, i32, i8*, i8*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i64, i8*, %struct.name_table_s*, i32, %struct.gx_io_device_s**, i32, i32, [2 x i64], %struct.gs_font_dir_s*, i32, i8*, i32, i8*, %struct.gs_fapi_server_s** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.name_table_s = type opaque
%struct.gx_io_device_s = type opaque
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gs_state_s = type opaque
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
%struct.gs_cie_render_s = type { i32, %struct.rc_header_s, i64, i8*, %struct.gs_cie_wb_s, %struct.gs_matrix3_s, %struct.gs_range3_s, %struct.gs_cie_transform_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, %struct.gs_cie_render_proc3_s, %struct.gs_range3_s, %struct.gs_cie_render_table_s, %struct.gs_range3_s, %struct.gs_range3_s, %struct.gs_matrix3_s, [3 x float], %struct.gs_matrix3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.anon.9 }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_cie_transform_proc3_s = type { i32 (i32, double, %struct.gs_cie_wbsd_s*, %struct.gs_cie_render_s*, float*)*, i8*, %struct.gs_const_string_s, i8* }
%struct.gs_cie_wbsd_s = type { %struct.anon.8, %struct.anon.8, %struct.anon.8, %struct.anon.8 }
%struct.anon.8 = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gs_const_string_s = type { i8*, i32 }
%struct.gs_cie_render_proc3_s = type { [3 x float (double, %struct.gs_cie_render_s*)*] }
%struct.gs_cie_render_table_s = type { %struct.gx_color_lookup_table_s, %struct.gs_cie_render_table_procs_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, %struct.gs_const_string_s* }
%struct.gs_cie_render_table_procs_s = type { [4 x i16 (i8, %struct.gs_cie_render_s*)*] }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_vector3_s = type { float, float, float }
%struct.anon.9 = type { %struct.gx_cie_vector_cache3_s, [3 x %struct.gx_cie_float_fixed_cache_s], [4 x %union.gx_cie_scalar_cache_s], i32 }
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
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, %struct.gx_device_buf_procs_s, %struct.gs_memory_s*, i8*, i32, %struct.gx_band_params_s, i32, i32, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, %struct.tile_hash*, i32, i32, %struct.gx_band_page_info_s, i32, i64, %struct.clist_icctable_s*, %struct.gsicc_link_cache_s*, i32, %struct.gsicc_link_cache_s**, i32, %struct.gx_clist_state_s*, i8*, i8*, i8*, %struct.cmd_list_s*, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, i32, i32, i32, i32, [11 x float], %struct.gx_clip_path_s*, i64, %struct.clist_color_space_s, [4 x i64], i64, i64, i64, i64, i32, i32, i32, i32, i32 (%struct.gx_device_s*, i32)*, i32, %struct.gs_pattern1_instance_s*, i32, i32, i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s*, i64, i32, i32, i32, i32, %struct.gx_device_color_info_s }
%struct.gx_device_buf_procs_s = type { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)*, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)*, void (%struct.gx_device_s*)* }
%struct.gx_render_plane_s = type { i32, i32, i32 }
%struct.gx_colors_usage_s = type { i64, i32, %struct.gs_int_rect_s }
%struct.gx_device_buf_space_s = type { i64, i64, i32 }
%struct.gx_bits_cache_chunk_s = type { %struct.gx_bits_cache_chunk_s*, i8*, i32, i32 }
%struct.gx_bits_cache_s = type { %struct.gx_bits_cache_chunk_s*, i32, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.gx_band_page_info_s = type { [4096 x i8], i8*, [4096 x i8], i8*, %struct.clist_io_procs_s*, i32, i64, i64, %struct.gx_band_params_s }
%struct.clist_io_procs_s = type { i32 (i8*, i8*, i8**, %struct.gs_memory_s*, %struct.gs_memory_s*, i32)*, i32 (i8*, i8*, i32)*, i32 (i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)*, i32 (i8*, i32)*, i32 (i8*)*, i64 (i8*)*, void (i8*, i32, i8*)*, i32 (i8*, i64, i32, i8*)* }
%struct.clist_icctable_s = type { i32, %struct.gs_memory_s*, %struct.clist_icctable_entry_s*, %struct.clist_icctable_entry_s* }
%struct.clist_icctable_entry_s = type { %struct.clist_icc_serial_entry_s, %struct.clist_icctable_entry_s*, %struct.cmm_profile_s*, i32 }
%struct.clist_icc_serial_entry_s = type { i64, i64, i32 }
%struct.gx_clist_state_s = type opaque
%struct.cmd_list_s = type { %struct.cmd_prefix_s*, %struct.cmd_prefix_s* }
%struct.cmd_prefix_s = type { %struct.cmd_prefix_s*, i32, i64 }
%struct.clist_color_space_s = type { i8, i64, %struct.clist_icc_color_s, %struct.gs_color_space_s* }
%struct.clist_icc_color_s = type { i64, i8, i32, i32, i32 }
%struct.gs_pattern1_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64, %struct.gs_pattern1_template_s, %struct.gs_matrix_s, %struct.gs_rect_s, i32, i32, i32, i32, i32, %struct.gs_int_point_s, i64 }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
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
%struct.gs_devn_params_s = type { i32, i8**, i32, i32, i32, %struct.gs_separations_s, i32, [70 x i32], %struct.compressed_color_list_s*, %struct.compressed_color_list_s*, %struct.gs_separations_s }
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.10 }
%union.anon.10 = type { [256 x %struct.comp_bit_map_list_s] }
%struct.comp_bit_map_list_s = type { i16, i16, i32, i64, i64 }
%struct.gs_separations_s = type { i32, [64 x %struct.devn_separation_name_s] }
%struct.devn_separation_name_s = type { i32, i8* }
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.equivalent_cmyk_color_params_s = type { i32, [64 x %struct.cmyk_color_s] }
%struct.cmyk_color_s = type { i32, i16, i16, i16, i16 }
%struct.psd_write_ctx = type { %struct._IO_FILE*, i32, i32, i32, i32, i32, [64 x i32], [64 x i32], i32 }
%struct.gx_devn_prn_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s }
%struct.psd_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s, i32, i64, i32, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, i32 }
%struct.gx_downscaler_s = type { %struct.gx_device_s*, i32, i32, i32, i32, i8*, i32, i32*, i8*, i8*, i32, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, %struct.gs_get_bits_params_s, i32 }

@spot_rgb_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @psd_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @psd_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @psd_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @psd_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @psd_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @get_psdrgb_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @psd_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_devn_prn_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_devn_prn_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_devn_prn_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_devn_prn_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"psdrgb\00", align 1
@st_psd_device = internal constant %struct.gs_memory_struct_type_s { i32 22488, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @psd_device_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @psd_device_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @psd_device_finalize, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@DeviceRGBComponents = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@gs_psdrgb_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s, i32, i64, i32, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, i32 } { i32 22488, %struct.gx_device_procs_s* @spot_rgb_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_psd_device, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 3, i32 1, i16 24, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @psd_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, %struct.gs_devn_params_s { i32 8, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @DeviceRGBComponents, i32 0, i32 0), i32 3, i32 0, i32 -1, %struct.gs_separations_s zeroinitializer, i32 0, [70 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.compressed_color_list_s* null, %struct.compressed_color_list_s* null, %struct.gs_separations_s zeroinitializer }, %struct.equivalent_cmyk_color_params_s { i32 1, [64 x %struct.cmyk_color_s] zeroinitializer }, i32 1, i64 1, i32 10, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, i32 0 }, align 8
@spot_cmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @psd_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @psd_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @psd_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @psd_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @psd_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @get_psd_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @psd_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_devn_prn_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_devn_prn_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_devn_prn_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_devn_prn_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"psdcmyk\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@DeviceCMYKComponents = external global [0 x i8*], align 8
@gs_psdcmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s, i32, i64, i32, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, i32 } { i32 22488, %struct.gx_device_procs_s* @spot_cmyk_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_psd_device, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 8, i32 0, i16 64, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @psd_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, %struct.gs_devn_params_s { i32 8, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @DeviceCMYKComponents, i32 0, i32 0), i32 4, i32 0, i32 -1, %struct.gs_separations_s zeroinitializer, i32 0, [70 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.compressed_color_list_s* null, %struct.compressed_color_list_s* null, %struct.gs_separations_s zeroinitializer }, %struct.equivalent_cmyk_color_params_s { i32 1, [64 x %struct.cmyk_color_s] zeroinitializer }, i32 2, i64 1, i32 10, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, i32 0 }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"8BPS\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Artifex Orange\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Artifex Green\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"psd_prn_close\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"DownScaleFactor\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"MaxSpots\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"MaxSpots must be between 0 and %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"DeviceN\00", align 1
@DeviceGrayComponents = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@psdRGB_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_psdrgb_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_psdrgb_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_psdrgb_cm }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"./devices/gdevpsd.c\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"**** Max spot colorants reached.\0A\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"**** Some colorants will be converted to equivalent CMYK values.\0A\00", align 1
@.str.20 = private unnamed_addr constant [70 x i8] c"**** If this is a Postscript file, try using the -dMaxSpots= option.\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"psd_device\00", align 1
@st_gx_devn_prn_device = external constant %struct.gs_memory_struct_type_s, align 8
@.str.22 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@psdCMYK_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_psdcmyk_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_psdcmyk_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_psdcmyk_cm }, align 8
@psdN_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotn_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotn_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotn_cm }, align 8
@psdGray_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_psdgray_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_psdgray_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_psdgray_cm }, align 8
@.str.25 = private unnamed_addr constant [19 x i8] c"psd_write_sep_line\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"psd_write_image_data\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @psd_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %xc = alloca %struct.psd_write_ctx, align 8
  %devn_dev = alloca %struct.gx_devn_prn_device_s*, align 8
  %psd_dev = alloca %struct.psd_device_s*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_write_ctx* %xc to i8*
  call void @llvm.lifetime.start(i64 544, i8* %0) #2
  %1 = bitcast %struct.gx_devn_prn_device_s** %devn_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %3, %struct.gx_devn_prn_device_s** %devn_dev, align 8, !tbaa !1
  %4 = bitcast %struct.psd_device_s** %psd_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.psd_device_s*
  store %struct.psd_device_s* %6, %struct.psd_device_s** %psd_dev, align 8, !tbaa !1
  %7 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %devn_dev, align 8, !tbaa !1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 13
  %10 = load i32, i32* %width, align 4, !tbaa !5
  %11 = load %struct.psd_device_s*, %struct.psd_device_s** %psd_dev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %11, i32 0, i32 71
  %12 = load i64, i64* %downscale_factor, align 8, !tbaa !22
  %conv = trunc i64 %12 to i32
  %call = call i32 @gx_downscaler_scale(i32 %10, i32 %conv) #5
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 14
  %14 = load i32, i32* %height, align 4, !tbaa !27
  %15 = load %struct.psd_device_s*, %struct.psd_device_s** %psd_dev, align 8, !tbaa !1
  %downscale_factor1 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %15, i32 0, i32 71
  %16 = load i64, i64* %downscale_factor1, align 8, !tbaa !22
  %conv2 = trunc i64 %16 to i32
  %call3 = call i32 @gx_downscaler_scale(i32 %14, i32 %conv2) #5
  %call4 = call i32 @psd_setup(%struct.psd_write_ctx* %xc, %struct.gx_devn_prn_device_s* %7, %struct._IO_FILE* %8, i32 %call, i32 %call3) #5
  %17 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %devn_dev, align 8, !tbaa !1
  %call5 = call i32 @psd_write_header(%struct.psd_write_ctx* %xc, %struct.gx_devn_prn_device_s* %17) #5
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call6 = call i32 @psd_write_image_data(%struct.psd_write_ctx* %xc, %struct.gx_device_printer_s* %18) #5
  %19 = bitcast %struct.psd_device_s** %psd_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %20 = bitcast %struct.gx_devn_prn_device_s** %devn_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct.psd_write_ctx* %xc to i8*
  call void @llvm.lifetime.end(i64 544, i8* %21) #2
  ret i32 0
}

declare i32 @gx_default_print_page_copies(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #0

declare i32 @gx_default_create_buf_device(%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #0

declare i32 @gx_default_size_buf_device(%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32) #0

declare i32 @gx_default_setup_buf_device(%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32) #0

declare void @gx_default_destroy_buf_device(%struct.gx_device_s*) #0

declare void @gx_default_get_space_params(%struct.gx_device_printer_s*, %struct.gdev_space_params_s*) #0

declare i32 @gx_default_start_render_thread(%struct.gdev_prn_start_render_params_s*) #0

declare i32 @gx_default_open_render_device(%struct.gx_device_printer_s*) #0

declare i32 @gx_default_close_render_device(%struct.gx_device_printer_s*) #0

declare i32 @gx_default_buffer_page(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #0

; Function Attrs: nounwind uwtable
define i32 @psd_setup(%struct.psd_write_ctx* %xc, %struct.gx_devn_prn_device_s* %dev, %struct._IO_FILE* %file, i32 %w, i32 %h) #1 {
entry:
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %dev.addr = alloca %struct.gx_devn_prn_device_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %spot_count = alloca i32, align 4
  %sep_order_num = alloca i32, align 4
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.gx_devn_prn_device_s* %dev, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !28
  store i32 %h, i32* %h.addr, align 4, !tbaa !28
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %spot_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %3 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %3, i32 0, i32 0
  store %struct._IO_FILE* %2, %struct._IO_FILE** %f, align 8, !tbaa !29
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp slt i32 %4, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %6, i32 0, i32 68
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 1
  %7 = load i8**, i8*** %std_colorant_names, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %8, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params2 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %10, i32 0, i32 68
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params2, i32 0, i32 2
  %11 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !33
  %12 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %12, i32 0, i32 3
  store i32 %11, i32* %base_bytes_pp, align 4, !tbaa !34
  %13 = load i32, i32* %i, align 4, !tbaa !28
  %14 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %14, i32 0, i32 5
  store i32 %13, i32* %num_channels, align 4, !tbaa !35
  %15 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params3 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %15, i32 0, i32 68
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params3, i32 0, i32 6
  %16 = load i32, i32* %num_separation_order_names, align 4, !tbaa !36
  %cmp4 = icmp eq i32 %16, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.end
  %17 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params6 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %17, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params6, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %18 = load i32, i32* %num_separations, align 4, !tbaa !37
  %19 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %19, i32 0, i32 4
  store i32 %18, i32* %n_extra_channels, align 4, !tbaa !38
  br label %if.end.23

if.else:                                          ; preds = %for.end
  store i32 0, i32* %spot_count, align 4, !tbaa !28
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %if.else
  %20 = load i32, i32* %i, align 4, !tbaa !28
  %21 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params8 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %21, i32 0, i32 68
  %num_separation_order_names9 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params8, i32 0, i32 6
  %22 = load i32, i32* %num_separation_order_names9, align 4, !tbaa !36
  %cmp10 = icmp slt i32 %20, %22
  br i1 %cmp10, label %for.body.11, label %for.end.21

for.body.11:                                      ; preds = %for.cond.7
  %23 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom12 = sext i32 %23 to i64
  %24 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params13 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %24, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params13, i32 0, i32 7
  %arrayidx14 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i64 %idxprom12
  %25 = load i32, i32* %arrayidx14, align 4, !tbaa !28
  %cmp15 = icmp sge i32 %25, 4
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body.11
  %26 = load i32, i32* %spot_count, align 4, !tbaa !28
  %inc17 = add nsw i32 %26, 1
  store i32 %inc17, i32* %spot_count, align 4, !tbaa !28
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body.11
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %27 = load i32, i32* %i, align 4, !tbaa !28
  %inc20 = add nsw i32 %27, 1
  store i32 %inc20, i32* %i, align 4, !tbaa !28
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  %28 = load i32, i32* %spot_count, align 4, !tbaa !28
  %29 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels22 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %29, i32 0, i32 4
  store i32 %28, i32* %n_extra_channels22, align 4, !tbaa !38
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.21, %if.then.5
  %30 = load i32, i32* %w.addr, align 4, !tbaa !28
  %31 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %31, i32 0, i32 1
  store i32 %30, i32* %width, align 4, !tbaa !39
  %32 = load i32, i32* %h.addr, align 4, !tbaa !28
  %33 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %33, i32 0, i32 2
  store i32 %32, i32* %height, align 4, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.33, %if.end.23
  %34 = load i32, i32* %i, align 4, !tbaa !28
  %35 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels25 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %35, i32 0, i32 5
  %36 = load i32, i32* %num_channels25, align 4, !tbaa !35
  %37 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels26 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %37, i32 0, i32 4
  %38 = load i32, i32* %n_extra_channels26, align 4, !tbaa !38
  %add = add nsw i32 %36, %38
  %cmp27 = icmp slt i32 %34, %add
  br i1 %cmp27, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.24
  %39 = load i32, i32* %i, align 4, !tbaa !28
  %40 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom29 = sext i32 %40 to i64
  %41 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_position = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %41, i32 0, i32 7
  %arrayidx30 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_position, i32 0, i64 %idxprom29
  store i32 %39, i32* %arrayidx30, align 4, !tbaa !28
  %42 = load i32, i32* %i, align 4, !tbaa !28
  %43 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom31 = sext i32 %43 to i64
  %44 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_orig_sep = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %44, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_orig_sep, i32 0, i64 %idxprom31
  store i32 %42, i32* %arrayidx32, align 4, !tbaa !28
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %45 = load i32, i32* %i, align 4, !tbaa !28
  %inc34 = add nsw i32 %45, 1
  store i32 %inc34, i32* %i, align 4, !tbaa !28
  br label %for.cond.24

for.end.35:                                       ; preds = %for.cond.24
  %46 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params36 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %46, i32 0, i32 68
  %num_separation_order_names37 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params36, i32 0, i32 6
  %47 = load i32, i32* %num_separation_order_names37, align 4, !tbaa !36
  %cmp38 = icmp sgt i32 %47, 0
  br i1 %cmp38, label %if.then.39, label %if.else.64

if.then.39:                                       ; preds = %for.end.35
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.61, %if.then.39
  %48 = load i32, i32* %i, align 4, !tbaa !28
  %49 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params41 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %49, i32 0, i32 68
  %num_separation_order_names42 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params41, i32 0, i32 6
  %50 = load i32, i32* %num_separation_order_names42, align 4, !tbaa !36
  %cmp43 = icmp slt i32 %48, %50
  br i1 %cmp43, label %for.body.44, label %for.end.63

for.body.44:                                      ; preds = %for.cond.40
  %51 = bitcast i32* %sep_order_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom45 = sext i32 %52 to i64
  %53 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params46 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %53, i32 0, i32 68
  %separation_order_map47 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params46, i32 0, i32 7
  %arrayidx48 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map47, i32 0, i64 %idxprom45
  %54 = load i32, i32* %arrayidx48, align 4, !tbaa !28
  store i32 %54, i32* %sep_order_num, align 4, !tbaa !28
  %55 = load i32, i32* %sep_order_num, align 4, !tbaa !28
  %cmp49 = icmp sge i32 %55, 4
  br i1 %cmp49, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %for.body.44
  %56 = load i32, i32* %sep_order_num, align 4, !tbaa !28
  %57 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels51 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %57, i32 0, i32 5
  %58 = load i32, i32* %num_channels51, align 4, !tbaa !35
  %idxprom52 = sext i32 %58 to i64
  %59 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_position53 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %59, i32 0, i32 7
  %arrayidx54 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_position53, i32 0, i64 %idxprom52
  store i32 %56, i32* %arrayidx54, align 4, !tbaa !28
  %60 = load i32, i32* %sep_order_num, align 4, !tbaa !28
  %61 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels55 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %61, i32 0, i32 5
  %62 = load i32, i32* %num_channels55, align 4, !tbaa !35
  %inc56 = add nsw i32 %62, 1
  store i32 %inc56, i32* %num_channels55, align 4, !tbaa !35
  %idxprom57 = sext i32 %62 to i64
  %63 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_orig_sep58 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %63, i32 0, i32 6
  %arrayidx59 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_orig_sep58, i32 0, i64 %idxprom57
  store i32 %60, i32* %arrayidx59, align 4, !tbaa !28
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.50, %for.body.44
  %64 = bitcast i32* %sep_order_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %65 = load i32, i32* %i, align 4, !tbaa !28
  %inc62 = add nsw i32 %65, 1
  store i32 %inc62, i32* %i, align 4, !tbaa !28
  br label %for.cond.40

for.end.63:                                       ; preds = %for.cond.40
  br label %if.end.70

if.else.64:                                       ; preds = %for.end.35
  %66 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %dev.addr, align 8, !tbaa !1
  %devn_params65 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %66, i32 0, i32 68
  %separations66 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params65, i32 0, i32 5
  %num_separations67 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations66, i32 0, i32 0
  %67 = load i32, i32* %num_separations67, align 4, !tbaa !37
  %68 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels68 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %68, i32 0, i32 5
  %69 = load i32, i32* %num_channels68, align 4, !tbaa !35
  %add69 = add nsw i32 %69, %67
  store i32 %add69, i32* %num_channels68, align 4, !tbaa !35
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.64, %for.end.63
  %70 = bitcast i32* %spot_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  %71 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @psd_write(%struct.psd_write_ctx* %xc, i8* %buf, i32 %size) #1 {
entry:
  %retval = alloca i32, align 4
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !28
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !28
  %conv = sext i32 %2 to i64
  %3 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !29
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv, %struct._IO_FILE* %4) #5
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %code, align 4, !tbaa !28
  %5 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define i32 @psd_write_8(%struct.psd_write_ctx* %xc, i8 zeroext %v) #1 {
entry:
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %v.addr = alloca i8, align 1
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store i8 %v, i8* %v.addr, align 1, !tbaa !41
  %0 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call = call i32 @psd_write(%struct.psd_write_ctx* %0, i8* %v.addr, i32 1) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psd_write_16(%struct.psd_write_ctx* %xc, i16 zeroext %v) #1 {
entry:
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %v.addr = alloca i16, align 2
  %buf = alloca i16, align 2
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store i16 %v, i16* %v.addr, align 2, !tbaa !42
  %0 = bitcast i16* %buf to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i16, i16* %v.addr, align 2, !tbaa !42
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 8
  %2 = load i16, i16* %v.addr, align 2, !tbaa !42
  %conv1 = zext i16 %2 to i32
  %shl = shl i32 %conv1, 8
  %add = add nsw i32 %shr, %shl
  %conv2 = trunc i32 %add to i16
  store i16 %conv2, i16* %buf, align 2, !tbaa !42
  %3 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %4 = bitcast i16* %buf to i8*
  %call = call i32 @psd_write(%struct.psd_write_ctx* %3, i8* %4, i32 2) #5
  %5 = bitcast i16* %buf to i8*
  call void @llvm.lifetime.end(i64 2, i8* %5) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psd_write_32(%struct.psd_write_ctx* %xc, i32 %v) #1 {
entry:
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %v.addr = alloca i32, align 4
  %buf = alloca i32, align 4
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !28
  %0 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %v.addr, align 4, !tbaa !28
  %shr = lshr i32 %1, 24
  %and = and i32 %shr, 255
  %2 = load i32, i32* %v.addr, align 4, !tbaa !28
  %shr1 = lshr i32 %2, 8
  %and2 = and i32 %shr1, 65280
  %add = add i32 %and, %and2
  %3 = load i32, i32* %v.addr, align 4, !tbaa !28
  %and3 = and i32 %3, 65280
  %shl = shl i32 %and3, 8
  %add4 = add i32 %add, %shl
  %4 = load i32, i32* %v.addr, align 4, !tbaa !28
  %and5 = and i32 %4, 255
  %shl6 = shl i32 %and5, 24
  %add7 = add i32 %add4, %shl6
  store i32 %add7, i32* %buf, align 4, !tbaa !28
  %5 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %6 = bitcast i32* %buf to i8*
  %call = call i32 @psd_write(%struct.psd_write_ctx* %5, i8* %6, i32 4) #5
  %7 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @psd_write_header(%struct.psd_write_ctx* %xc, %struct.gx_devn_prn_device_s* %pdev) #1 {
entry:
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %pdev.addr = alloca %struct.gx_devn_prn_device_s*, align 8
  %code = alloca i32, align 4
  %bytes_pp = alloca i32, align 4
  %chan_idx = alloca i32, align 4
  %chan_names_len = alloca i32, align 4
  %sep_num = alloca i32, align 4
  %separation_name = alloca %struct.devn_separation_name_s*, align 8
  %n = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %len = alloca i32, align 4
  %n54 = alloca i8*, align 8
  %sepname = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp211 = alloca i32, align 4
  %__s1_len223 = alloca i64, align 8
  %__s2_len225 = alloca i64, align 8
  %tmp226 = alloca i32, align 4
  %__s1233 = alloca i8*, align 8
  %__result235 = alloca i32, align 4
  %tmp273 = alloca i32, align 4
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.gx_devn_prn_device_s* %pdev, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !28
  %1 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %2, i32 0, i32 5
  %3 = load i32, i32* %num_channels, align 4, !tbaa !35
  store i32 %3, i32* %bytes_pp, align 4, !tbaa !28
  %4 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %chan_names_len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %chan_names_len, align 4, !tbaa !28
  %6 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast %struct.devn_separation_name_s** %separation_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call = call i32 @psd_write(%struct.psd_write_ctx* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4) #5
  %9 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call1 = call i32 @psd_write_16(%struct.psd_write_ctx* %9, i16 zeroext 1) #5
  %10 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call2 = call i32 @psd_write_32(%struct.psd_write_ctx* %10, i32 0) #5
  %11 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call3 = call i32 @psd_write_16(%struct.psd_write_ctx* %11, i16 zeroext 0) #5
  %12 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %13 = load i32, i32* %bytes_pp, align 4, !tbaa !28
  %conv = trunc i32 %13 to i16
  %call4 = call i32 @psd_write_16(%struct.psd_write_ctx* %12, i16 zeroext %conv) #5
  %14 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %15 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %15, i32 0, i32 2
  %16 = load i32, i32* %height, align 4, !tbaa !40
  %call5 = call i32 @psd_write_32(%struct.psd_write_ctx* %14, i32 %16) #5
  %17 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %18 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %18, i32 0, i32 1
  %19 = load i32, i32* %width, align 4, !tbaa !39
  %call6 = call i32 @psd_write_32(%struct.psd_write_ctx* %17, i32 %19) #5
  %20 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call7 = call i32 @psd_write_16(%struct.psd_write_ctx* %20, i16 zeroext 8) #5
  %21 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %22 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %22, i32 0, i32 3
  %23 = load i32, i32* %base_bytes_pp, align 4, !tbaa !34
  %conv8 = trunc i32 %23 to i16
  %call9 = call i32 @psd_write_16(%struct.psd_write_ctx* %21, i16 zeroext %conv8) #5
  %24 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call10 = call i32 @psd_write_32(%struct.psd_write_ctx* %24, i32 0) #5
  store i32 4, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %25 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %26 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels11 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %26, i32 0, i32 5
  %27 = load i32, i32* %num_channels11, align 4, !tbaa !35
  %cmp = icmp slt i32 %25, %27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = bitcast i8** %n to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %29 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %30, i32 0, i32 68
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 1
  %31 = load i8**, i8*** %std_colorant_names, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds i8*, i8** %31, i64 %idxprom
  %32 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %32, i8** %n, align 8, !tbaa !1
  %33 = load i8*, i8** %n, align 8, !tbaa !1
  %cmp13 = icmp eq i8* %33, null
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %34 = load i8*, i8** %n, align 8, !tbaa !1
  %call15 = call i64 @strlen(i8* %34) #6
  %add = add i64 %call15, 1
  %35 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %conv16 = sext i32 %35 to i64
  %add17 = add i64 %conv16, %add
  %conv18 = trunc i64 %add17 to i32
  store i32 %conv18, i32* %chan_names_len, align 4, !tbaa !28
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %36 = bitcast i8** %n to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %37 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %cleanup, %for.cond
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.31, %for.end
  %38 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %39 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels20 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %39, i32 0, i32 5
  %40 = load i32, i32* %num_channels20, align 4, !tbaa !35
  %cmp21 = icmp slt i32 %38, %40
  br i1 %cmp21, label %for.body.23, label %for.end.33

for.body.23:                                      ; preds = %for.cond.19
  %41 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom24 = sext i32 %41 to i64
  %42 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_orig_sep = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %42, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_orig_sep, i32 0, i64 %idxprom24
  %43 = load i32, i32* %arrayidx25, align 4, !tbaa !28
  %sub = sub nsw i32 %43, 4
  store i32 %sub, i32* %sep_num, align 4, !tbaa !28
  %44 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom26 = sext i32 %44 to i64
  %45 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %devn_params27 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %45, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params27, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom26
  store %struct.devn_separation_name_s* %arrayidx28, %struct.devn_separation_name_s** %separation_name, align 8, !tbaa !1
  %46 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %separation_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %46, i32 0, i32 0
  %47 = load i32, i32* %size, align 4, !tbaa !43
  %add29 = add nsw i32 %47, 1
  %48 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %add30 = add nsw i32 %48, %add29
  store i32 %add30, i32* %chan_names_len, align 4, !tbaa !28
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.23
  %49 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  %50 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %51 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %52 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %rem = srem i32 %52, 2
  %add34 = add nsw i32 %51, %rem
  %add35 = add nsw i32 12, %add34
  %53 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels36 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %53, i32 0, i32 5
  %54 = load i32, i32* %num_channels36, align 4, !tbaa !35
  %55 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp37 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %55, i32 0, i32 3
  %56 = load i32, i32* %base_bytes_pp37, align 4, !tbaa !34
  %sub38 = sub nsw i32 %54, %56
  %mul = mul nsw i32 14, %sub38
  %add39 = add nsw i32 12, %mul
  %add40 = add nsw i32 %add35, %add39
  %add41 = add nsw i32 %add40, 28
  %call42 = call i32 @psd_write_32(%struct.psd_write_ctx* %50, i32 %add41) #5
  %57 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call43 = call i32 @psd_write(%struct.psd_write_ctx* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 4) #5
  %58 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call44 = call i32 @psd_write_16(%struct.psd_write_ctx* %58, i16 zeroext 1006) #5
  %59 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call45 = call i32 @psd_write_16(%struct.psd_write_ctx* %59, i16 zeroext 0) #5
  %60 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %61 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %62 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %rem46 = srem i32 %62, 2
  %add47 = add nsw i32 %61, %rem46
  %call48 = call i32 @psd_write_32(%struct.psd_write_ctx* %60, i32 %add47) #5
  store i32 4, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.72, %for.end.33
  %63 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %64 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels50 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %64, i32 0, i32 5
  %65 = load i32, i32* %num_channels50, align 4, !tbaa !35
  %cmp51 = icmp slt i32 %63, %65
  br i1 %cmp51, label %for.body.53, label %for.end.74

for.body.53:                                      ; preds = %for.cond.49
  %66 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %66) #2
  %67 = bitcast i8** %n54 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #2
  %68 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom55 = sext i32 %68 to i64
  %69 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %devn_params56 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %69, i32 0, i32 68
  %std_colorant_names57 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params56, i32 0, i32 1
  %70 = load i8**, i8*** %std_colorant_names57, align 8, !tbaa !31
  %arrayidx58 = getelementptr inbounds i8*, i8** %70, i64 %idxprom55
  %71 = load i8*, i8** %arrayidx58, align 8, !tbaa !1
  store i8* %71, i8** %n54, align 8, !tbaa !1
  %72 = load i8*, i8** %n54, align 8, !tbaa !1
  %cmp59 = icmp eq i8* %72, null
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body.53
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup.68

if.end.62:                                        ; preds = %for.body.53
  %73 = load i8*, i8** %n54, align 8, !tbaa !1
  %call63 = call i64 @strlen(i8* %73) #6
  %conv64 = trunc i64 %call63 to i32
  store i32 %conv64, i32* %len, align 4, !tbaa !28
  %74 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %75 = load i32, i32* %len, align 4, !tbaa !28
  %conv65 = trunc i32 %75 to i8
  %call66 = call i32 @psd_write_8(%struct.psd_write_ctx* %74, i8 zeroext %conv65) #5
  %76 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %77 = load i8*, i8** %n54, align 8, !tbaa !1
  %78 = load i32, i32* %len, align 4, !tbaa !28
  %call67 = call i32 @psd_write(%struct.psd_write_ctx* %76, i8* %77, i32 %78) #5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.62, %if.then.61
  %79 = bitcast i8** %n54 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %cleanup.dest.70 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.70, label %unreachable [
    i32 0, label %cleanup.cont.71
    i32 8, label %for.end.74
  ]

cleanup.cont.71:                                  ; preds = %cleanup.68
  br label %for.inc.72

for.inc.72:                                       ; preds = %cleanup.cont.71
  %81 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc73 = add nsw i32 %81, 1
  store i32 %inc73, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.49

for.end.74:                                       ; preds = %cleanup.68, %for.cond.49
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.94, %for.end.74
  %82 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %83 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels76 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %83, i32 0, i32 5
  %84 = load i32, i32* %num_channels76, align 4, !tbaa !35
  %cmp77 = icmp slt i32 %82, %84
  br i1 %cmp77, label %for.body.79, label %for.end.96

for.body.79:                                      ; preds = %for.cond.75
  %85 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom80 = sext i32 %85 to i64
  %86 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_orig_sep81 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %86, i32 0, i32 6
  %arrayidx82 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_orig_sep81, i32 0, i64 %idxprom80
  %87 = load i32, i32* %arrayidx82, align 4, !tbaa !28
  %sub83 = sub nsw i32 %87, 4
  store i32 %sub83, i32* %sep_num, align 4, !tbaa !28
  %88 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom84 = sext i32 %88 to i64
  %89 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %devn_params85 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %89, i32 0, i32 68
  %separations86 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params85, i32 0, i32 5
  %names87 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations86, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names87, i32 0, i64 %idxprom84
  store %struct.devn_separation_name_s* %arrayidx88, %struct.devn_separation_name_s** %separation_name, align 8, !tbaa !1
  %90 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %91 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %separation_name, align 8, !tbaa !1
  %size89 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %91, i32 0, i32 0
  %92 = load i32, i32* %size89, align 4, !tbaa !43
  %conv90 = trunc i32 %92 to i8
  %call91 = call i32 @psd_write_8(%struct.psd_write_ctx* %90, i8 zeroext %conv90) #5
  %93 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %94 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %separation_name, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %94, i32 0, i32 1
  %95 = load i8*, i8** %data, align 8, !tbaa !45
  %96 = load %struct.devn_separation_name_s*, %struct.devn_separation_name_s** %separation_name, align 8, !tbaa !1
  %size92 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %96, i32 0, i32 0
  %97 = load i32, i32* %size92, align 4, !tbaa !43
  %call93 = call i32 @psd_write(%struct.psd_write_ctx* %93, i8* %95, i32 %97) #5
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.79
  %98 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc95 = add nsw i32 %98, 1
  store i32 %inc95, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.75

for.end.96:                                       ; preds = %for.cond.75
  %99 = load i32, i32* %chan_names_len, align 4, !tbaa !28
  %rem97 = srem i32 %99, 2
  %tobool = icmp ne i32 %rem97, 0
  br i1 %tobool, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %for.end.96
  %100 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call99 = call i32 @psd_write_8(%struct.psd_write_ctx* %100, i8 zeroext 0) #5
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %for.end.96
  %101 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call101 = call i32 @psd_write(%struct.psd_write_ctx* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 4) #5
  %102 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call102 = call i32 @psd_write_16(%struct.psd_write_ctx* %102, i16 zeroext 1007) #5
  %103 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call103 = call i32 @psd_write_16(%struct.psd_write_ctx* %103, i16 zeroext 0) #5
  %104 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %105 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels104 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %105, i32 0, i32 5
  %106 = load i32, i32* %num_channels104, align 4, !tbaa !35
  %107 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp105 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %107, i32 0, i32 3
  %108 = load i32, i32* %base_bytes_pp105, align 4, !tbaa !34
  %sub106 = sub nsw i32 %106, %108
  %mul107 = mul nsw i32 14, %sub106
  %call108 = call i32 @psd_write_32(%struct.psd_write_ctx* %104, i32 %mul107) #5
  store i32 4, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.295, %if.end.100
  %109 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %110 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels110 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %110, i32 0, i32 5
  %111 = load i32, i32* %num_channels110, align 4, !tbaa !35
  %cmp111 = icmp slt i32 %109, %111
  br i1 %cmp111, label %for.body.113, label %for.end.297

for.body.113:                                     ; preds = %for.cond.109
  %112 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom114 = sext i32 %112 to i64
  %113 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_orig_sep115 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %113, i32 0, i32 6
  %arrayidx116 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_orig_sep115, i32 0, i64 %idxprom114
  %114 = load i32, i32* %arrayidx116, align 4, !tbaa !28
  %sub117 = sub nsw i32 %114, 4
  store i32 %sub117, i32* %sep_num, align 4, !tbaa !28
  %115 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call118 = call i32 @psd_write_16(%struct.psd_write_ctx* %115, i16 zeroext 2) #5
  %116 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom119 = sext i32 %116 to i64
  %117 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %equiv_cmyk_colors = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %117, i32 0, i32 69
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom119
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx120, i32 0, i32 0
  %118 = load i32, i32* %color_info_valid, align 4, !tbaa !46
  %tobool121 = icmp ne i32 %118, 0
  br i1 %tobool121, label %if.then.122, label %if.else

if.then.122:                                      ; preds = %for.body.113
  %119 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %120 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom123 = sext i32 %120 to i64
  %121 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %equiv_cmyk_colors124 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %121, i32 0, i32 69
  %color125 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors124, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color125, i32 0, i64 %idxprom123
  %c = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx126, i32 0, i32 1
  %122 = load i16, i16* %c, align 2, !tbaa !48
  %conv127 = sext i16 %122 to i32
  %sub128 = sub nsw i32 32760, %conv127
  %conv129 = sitofp i32 %sub128 to double
  %mul130 = fmul double 6.553500e+04, %conv129
  %div = fdiv double %mul130, 3.276000e+04
  %conv131 = fptoui double %div to i16
  %call132 = call i32 @psd_write_16(%struct.psd_write_ctx* %119, i16 zeroext %conv131) #5
  %123 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %124 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom133 = sext i32 %124 to i64
  %125 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %equiv_cmyk_colors134 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %125, i32 0, i32 69
  %color135 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors134, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color135, i32 0, i64 %idxprom133
  %m = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx136, i32 0, i32 2
  %126 = load i16, i16* %m, align 2, !tbaa !49
  %conv137 = sext i16 %126 to i32
  %sub138 = sub nsw i32 32760, %conv137
  %conv139 = sitofp i32 %sub138 to double
  %mul140 = fmul double 6.553500e+04, %conv139
  %div141 = fdiv double %mul140, 3.276000e+04
  %conv142 = fptoui double %div141 to i16
  %call143 = call i32 @psd_write_16(%struct.psd_write_ctx* %123, i16 zeroext %conv142) #5
  %127 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %128 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom144 = sext i32 %128 to i64
  %129 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %equiv_cmyk_colors145 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %129, i32 0, i32 69
  %color146 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors145, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color146, i32 0, i64 %idxprom144
  %y = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx147, i32 0, i32 3
  %130 = load i16, i16* %y, align 2, !tbaa !50
  %conv148 = sext i16 %130 to i32
  %sub149 = sub nsw i32 32760, %conv148
  %conv150 = sitofp i32 %sub149 to double
  %mul151 = fmul double 6.553500e+04, %conv150
  %div152 = fdiv double %mul151, 3.276000e+04
  %conv153 = fptoui double %div152 to i16
  %call154 = call i32 @psd_write_16(%struct.psd_write_ctx* %127, i16 zeroext %conv153) #5
  %131 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %132 = load i32, i32* %sep_num, align 4, !tbaa !28
  %idxprom155 = sext i32 %132 to i64
  %133 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %equiv_cmyk_colors156 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %133, i32 0, i32 69
  %color157 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors156, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color157, i32 0, i64 %idxprom155
  %k = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx158, i32 0, i32 4
  %134 = load i16, i16* %k, align 2, !tbaa !51
  %conv159 = sext i16 %134 to i32
  %sub160 = sub nsw i32 32760, %conv159
  %conv161 = sitofp i32 %sub160 to double
  %mul162 = fmul double 6.553500e+04, %conv161
  %div163 = fdiv double %mul162, 3.276000e+04
  %conv164 = fptoui double %div163 to i16
  %call165 = call i32 @psd_write_16(%struct.psd_write_ctx* %131, i16 zeroext %conv164) #5
  br label %if.end.291

if.else:                                          ; preds = %for.body.113
  %135 = bitcast i8** %sepname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %135) #2
  %136 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %137 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %call166 = call i8* @get_sep_name(%struct.gx_devn_prn_device_s* %136, i32 %137) #5
  store i8* %call166, i8** %sepname, align 8, !tbaa !1
  %138 = load i8*, i8** %sepname, align 8, !tbaa !1
  %tobool167 = icmp ne i8* %138, null
  br i1 %tobool167, label %land.lhs.true, label %if.else.219

land.lhs.true:                                    ; preds = %if.else
  %139 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %139) #2
  %140 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %140) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i64 1) to i64), i64 ptrtoint ([15 x i8]* @.str.6 to i64)), i64 1), label %land.lhs.true.168, label %cond.false

land.lhs.true.168:                                ; preds = %land.lhs.true
  %call169 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #6
  store i64 %call169, i64* %__s2_len, align 8, !tbaa !52
  %141 = load i64, i64* %__s2_len, align 8, !tbaa !52
  %cmp170 = icmp ult i64 %141, 4
  br i1 %cmp170, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.168
  %142 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %142) #2
  %143 = load i8*, i8** %sepname, align 8, !tbaa !1
  store i8* %143, i8** %__s1, align 8, !tbaa !1
  %144 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %144) #2
  %145 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx174 = getelementptr inbounds i8, i8* %145, i64 0
  %146 = load i8, i8* %arrayidx174, align 1, !tbaa !41
  %conv175 = zext i8 %146 to i32
  %147 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), align 1, !tbaa !41
  %conv176 = zext i8 %147 to i32
  %sub177 = sub nsw i32 %conv175, %conv176
  store i32 %sub177, i32* %__result, align 4, !tbaa !28
  %148 = load i64, i64* %__s2_len, align 8, !tbaa !52
  %cmp178 = icmp ugt i64 %148, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.210

land.lhs.true.180:                                ; preds = %cond.true
  %149 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp181 = icmp eq i32 %149, 0
  br i1 %cmp181, label %if.then.183, label %if.end.210

if.then.183:                                      ; preds = %land.lhs.true.180
  %150 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds i8, i8* %150, i64 1
  %151 = load i8, i8* %arrayidx184, align 1, !tbaa !41
  %conv185 = zext i8 %151 to i32
  %152 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i64 1), align 1, !tbaa !41
  %conv186 = zext i8 %152 to i32
  %sub187 = sub nsw i32 %conv185, %conv186
  store i32 %sub187, i32* %__result, align 4, !tbaa !28
  %153 = load i64, i64* %__s2_len, align 8, !tbaa !52
  %cmp188 = icmp ugt i64 %153, 1
  br i1 %cmp188, label %land.lhs.true.190, label %if.end.209

land.lhs.true.190:                                ; preds = %if.then.183
  %154 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp191 = icmp eq i32 %154, 0
  br i1 %cmp191, label %if.then.193, label %if.end.209

if.then.193:                                      ; preds = %land.lhs.true.190
  %155 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx194 = getelementptr inbounds i8, i8* %155, i64 2
  %156 = load i8, i8* %arrayidx194, align 1, !tbaa !41
  %conv195 = zext i8 %156 to i32
  %157 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i64 2), align 1, !tbaa !41
  %conv196 = zext i8 %157 to i32
  %sub197 = sub nsw i32 %conv195, %conv196
  store i32 %sub197, i32* %__result, align 4, !tbaa !28
  %158 = load i64, i64* %__s2_len, align 8, !tbaa !52
  %cmp198 = icmp ugt i64 %158, 2
  br i1 %cmp198, label %land.lhs.true.200, label %if.end.208

land.lhs.true.200:                                ; preds = %if.then.193
  %159 = load i32, i32* %__result, align 4, !tbaa !28
  %cmp201 = icmp eq i32 %159, 0
  br i1 %cmp201, label %if.then.203, label %if.end.208

if.then.203:                                      ; preds = %land.lhs.true.200
  %160 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds i8, i8* %160, i64 3
  %161 = load i8, i8* %arrayidx204, align 1, !tbaa !41
  %conv205 = zext i8 %161 to i32
  %162 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i64 3), align 1, !tbaa !41
  %conv206 = zext i8 %162 to i32
  %sub207 = sub nsw i32 %conv205, %conv206
  store i32 %sub207, i32* %__result, align 4, !tbaa !28
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.203, %land.lhs.true.200, %if.then.193
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.190, %if.then.183
  br label %if.end.210

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.180, %cond.true
  %163 = load i32, i32* %__result, align 4, !tbaa !28
  store i32 %163, i32* %tmp211, !tbaa !28
  %164 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %165) #2
  %166 = load i32, i32* %tmp211, !tbaa !28
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.168, %land.lhs.true
  %167 = load i8*, i8** %sepname, align 8, !tbaa !1
  %call212 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.210
  %cond = phi i32 [ %166, %if.end.210 ], [ %call212, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !28
  %168 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #2
  %169 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %169) #2
  %170 = load i32, i32* %tmp, !tbaa !28
  %tobool213 = icmp ne i32 %170, 0
  br i1 %tobool213, label %if.else.219, label %if.then.214

if.then.214:                                      ; preds = %cond.end
  %171 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call215 = call i32 @psd_write_16(%struct.psd_write_ctx* %171, i16 zeroext -1058) #5
  %172 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call216 = call i32 @psd_write_16(%struct.psd_write_ctx* %172, i16 zeroext 29558) #5
  %173 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call217 = call i32 @psd_write_16(%struct.psd_write_ctx* %173, i16 zeroext 0) #5
  %174 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call218 = call i32 @psd_write_16(%struct.psd_write_ctx* %174, i16 zeroext -1) #5
  br label %if.end.290

if.else.219:                                      ; preds = %cond.end, %if.else
  %175 = load i8*, i8** %sepname, align 8, !tbaa !1
  %tobool220 = icmp ne i8* %175, null
  br i1 %tobool220, label %land.lhs.true.221, label %if.else.284

land.lhs.true.221:                                ; preds = %if.else.219
  %176 = bitcast i64* %__s1_len223 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %176) #2
  %177 = bitcast i64* %__s2_len225 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %177) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i64 1) to i64), i64 ptrtoint ([14 x i8]* @.str.7 to i64)), i64 1), label %land.lhs.true.227, label %cond.false.274

land.lhs.true.227:                                ; preds = %land.lhs.true.221
  %call228 = call i64 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #6
  store i64 %call228, i64* %__s2_len225, align 8, !tbaa !52
  %178 = load i64, i64* %__s2_len225, align 8, !tbaa !52
  %cmp229 = icmp ult i64 %178, 4
  br i1 %cmp229, label %cond.true.231, label %cond.false.274

cond.true.231:                                    ; preds = %land.lhs.true.227
  %179 = bitcast i8** %__s1233 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %179) #2
  %180 = load i8*, i8** %sepname, align 8, !tbaa !1
  store i8* %180, i8** %__s1233, align 8, !tbaa !1
  %181 = bitcast i32* %__result235 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #2
  %182 = load i8*, i8** %__s1233, align 8, !tbaa !1
  %arrayidx236 = getelementptr inbounds i8, i8* %182, i64 0
  %183 = load i8, i8* %arrayidx236, align 1, !tbaa !41
  %conv237 = zext i8 %183 to i32
  %184 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), align 1, !tbaa !41
  %conv238 = zext i8 %184 to i32
  %sub239 = sub nsw i32 %conv237, %conv238
  store i32 %sub239, i32* %__result235, align 4, !tbaa !28
  %185 = load i64, i64* %__s2_len225, align 8, !tbaa !52
  %cmp240 = icmp ugt i64 %185, 0
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.272

land.lhs.true.242:                                ; preds = %cond.true.231
  %186 = load i32, i32* %__result235, align 4, !tbaa !28
  %cmp243 = icmp eq i32 %186, 0
  br i1 %cmp243, label %if.then.245, label %if.end.272

if.then.245:                                      ; preds = %land.lhs.true.242
  %187 = load i8*, i8** %__s1233, align 8, !tbaa !1
  %arrayidx246 = getelementptr inbounds i8, i8* %187, i64 1
  %188 = load i8, i8* %arrayidx246, align 1, !tbaa !41
  %conv247 = zext i8 %188 to i32
  %189 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i64 1), align 1, !tbaa !41
  %conv248 = zext i8 %189 to i32
  %sub249 = sub nsw i32 %conv247, %conv248
  store i32 %sub249, i32* %__result235, align 4, !tbaa !28
  %190 = load i64, i64* %__s2_len225, align 8, !tbaa !52
  %cmp250 = icmp ugt i64 %190, 1
  br i1 %cmp250, label %land.lhs.true.252, label %if.end.271

land.lhs.true.252:                                ; preds = %if.then.245
  %191 = load i32, i32* %__result235, align 4, !tbaa !28
  %cmp253 = icmp eq i32 %191, 0
  br i1 %cmp253, label %if.then.255, label %if.end.271

if.then.255:                                      ; preds = %land.lhs.true.252
  %192 = load i8*, i8** %__s1233, align 8, !tbaa !1
  %arrayidx256 = getelementptr inbounds i8, i8* %192, i64 2
  %193 = load i8, i8* %arrayidx256, align 1, !tbaa !41
  %conv257 = zext i8 %193 to i32
  %194 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i64 2), align 1, !tbaa !41
  %conv258 = zext i8 %194 to i32
  %sub259 = sub nsw i32 %conv257, %conv258
  store i32 %sub259, i32* %__result235, align 4, !tbaa !28
  %195 = load i64, i64* %__s2_len225, align 8, !tbaa !52
  %cmp260 = icmp ugt i64 %195, 2
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.270

land.lhs.true.262:                                ; preds = %if.then.255
  %196 = load i32, i32* %__result235, align 4, !tbaa !28
  %cmp263 = icmp eq i32 %196, 0
  br i1 %cmp263, label %if.then.265, label %if.end.270

if.then.265:                                      ; preds = %land.lhs.true.262
  %197 = load i8*, i8** %__s1233, align 8, !tbaa !1
  %arrayidx266 = getelementptr inbounds i8, i8* %197, i64 3
  %198 = load i8, i8* %arrayidx266, align 1, !tbaa !41
  %conv267 = zext i8 %198 to i32
  %199 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i64 3), align 1, !tbaa !41
  %conv268 = zext i8 %199 to i32
  %sub269 = sub nsw i32 %conv267, %conv268
  store i32 %sub269, i32* %__result235, align 4, !tbaa !28
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.265, %land.lhs.true.262, %if.then.255
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %land.lhs.true.252, %if.then.245
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %land.lhs.true.242, %cond.true.231
  %200 = load i32, i32* %__result235, align 4, !tbaa !28
  store i32 %200, i32* %tmp273, !tbaa !28
  %201 = bitcast i32* %__result235 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #2
  %202 = bitcast i8** %__s1233 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %202) #2
  %203 = load i32, i32* %tmp273, !tbaa !28
  br label %cond.end.276

cond.false.274:                                   ; preds = %land.lhs.true.227, %land.lhs.true.221
  %204 = load i8*, i8** %sepname, align 8, !tbaa !1
  %call275 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)) #7
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.false.274, %if.end.272
  %cond277 = phi i32 [ %203, %if.end.272 ], [ %call275, %cond.false.274 ]
  store i32 %cond277, i32* %tmp226, !tbaa !28
  %205 = bitcast i64* %__s2_len225 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #2
  %206 = bitcast i64* %__s1_len223 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %206) #2
  %207 = load i32, i32* %tmp226, !tbaa !28
  %tobool278 = icmp ne i32 %207, 0
  br i1 %tobool278, label %if.else.284, label %if.then.279

if.then.279:                                      ; preds = %cond.end.276
  %208 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call280 = call i32 @psd_write_16(%struct.psd_write_ctx* %208, i16 zeroext 0) #5
  %209 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call281 = call i32 @psd_write_16(%struct.psd_write_ctx* %209, i16 zeroext -7363) #5
  %210 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call282 = call i32 @psd_write_16(%struct.psd_write_ctx* %210, i16 zeroext 0) #5
  %211 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call283 = call i32 @psd_write_16(%struct.psd_write_ctx* %211, i16 zeroext -1848) #5
  br label %if.end.289

if.else.284:                                      ; preds = %cond.end.276, %if.else.219
  %212 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call285 = call i32 @psd_write_16(%struct.psd_write_ctx* %212, i16 zeroext -1) #5
  %213 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call286 = call i32 @psd_write_16(%struct.psd_write_ctx* %213, i16 zeroext -1) #5
  %214 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call287 = call i32 @psd_write_16(%struct.psd_write_ctx* %214, i16 zeroext -1) #5
  %215 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call288 = call i32 @psd_write_16(%struct.psd_write_ctx* %215, i16 zeroext 0) #5
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.284, %if.then.279
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.214
  %216 = bitcast i8** %sepname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %216) #2
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.then.122
  %217 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call292 = call i32 @psd_write_16(%struct.psd_write_ctx* %217, i16 zeroext 0) #5
  %218 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call293 = call i32 @psd_write_8(%struct.psd_write_ctx* %218, i8 zeroext 2) #5
  %219 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call294 = call i32 @psd_write_8(%struct.psd_write_ctx* %219, i8 zeroext 0) #5
  br label %for.inc.295

for.inc.295:                                      ; preds = %if.end.291
  %220 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc296 = add nsw i32 %220, 1
  store i32 %inc296, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.109

for.end.297:                                      ; preds = %for.cond.109
  %221 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call298 = call i32 @psd_write(%struct.psd_write_ctx* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 4) #5
  %222 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call299 = call i32 @psd_write_16(%struct.psd_write_ctx* %222, i16 zeroext 1005) #5
  %223 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call300 = call i32 @psd_write_16(%struct.psd_write_ctx* %223, i16 zeroext 0) #5
  %224 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call301 = call i32 @psd_write_32(%struct.psd_write_ctx* %224, i32 16) #5
  %225 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %226 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %226, i32 0, i32 22
  %arrayidx302 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %227 = load float, float* %arrayidx302, align 4, !tbaa !53
  %mul303 = fmul float %227, 6.553600e+04
  %228 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width304 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %228, i32 0, i32 1
  %229 = load i32, i32* %width304, align 4, !tbaa !39
  %conv305 = sitofp i32 %229 to float
  %mul306 = fmul float %mul303, %conv305
  %230 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %width307 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %230, i32 0, i32 13
  %231 = load i32, i32* %width307, align 4, !tbaa !55
  %conv308 = sitofp i32 %231 to float
  %div309 = fdiv float %mul306, %conv308
  %conv310 = fpext float %div309 to double
  %add311 = fadd double %conv310, 5.000000e-01
  %conv312 = fptosi double %add311 to i32
  %call313 = call i32 @psd_write_32(%struct.psd_write_ctx* %225, i32 %conv312) #5
  %232 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call314 = call i32 @psd_write_16(%struct.psd_write_ctx* %232, i16 zeroext 1) #5
  %233 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call315 = call i32 @psd_write_16(%struct.psd_write_ctx* %233, i16 zeroext 1) #5
  %234 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %235 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution316 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %235, i32 0, i32 22
  %arrayidx317 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution316, i32 0, i64 1
  %236 = load float, float* %arrayidx317, align 4, !tbaa !53
  %mul318 = fmul float %236, 6.553600e+04
  %237 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %height319 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %237, i32 0, i32 2
  %238 = load i32, i32* %height319, align 4, !tbaa !40
  %conv320 = sitofp i32 %238 to float
  %mul321 = fmul float %mul318, %conv320
  %239 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %height322 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %239, i32 0, i32 14
  %240 = load i32, i32* %height322, align 4, !tbaa !56
  %conv323 = sitofp i32 %240 to float
  %div324 = fdiv float %mul321, %conv323
  %conv325 = fpext float %div324 to double
  %add326 = fadd double %conv325, 5.000000e-01
  %conv327 = fptosi double %add326 to i32
  %call328 = call i32 @psd_write_32(%struct.psd_write_ctx* %234, i32 %conv327) #5
  %241 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call329 = call i32 @psd_write_16(%struct.psd_write_ctx* %241, i16 zeroext 1) #5
  %242 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call330 = call i32 @psd_write_16(%struct.psd_write_ctx* %242, i16 zeroext 1) #5
  %243 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call331 = call i32 @psd_write_32(%struct.psd_write_ctx* %243, i32 0) #5
  %244 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %call332 = call i32 @psd_write_16(%struct.psd_write_ctx* %244, i16 zeroext 0) #5
  %245 = load i32, i32* %code, align 4, !tbaa !28
  store i32 1, i32* %cleanup.dest.slot
  %246 = bitcast %struct.devn_separation_name_s** %separation_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %246) #2
  %247 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %247) #2
  %248 = bitcast i32* %chan_names_len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %248) #2
  %249 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %249) #2
  %250 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %250) #2
  %251 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %251) #2
  ret i32 %245

unreachable:                                      ; preds = %cleanup.68, %cleanup
  unreachable
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @get_sep_name(%struct.gx_devn_prn_device_s* %pdev, i32 %n) #1 {
entry:
  %pdev.addr = alloca %struct.gx_devn_prn_device_s*, align 8
  %n.addr = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.gx_devn_prn_device_s* %pdev, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !28
  %0 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store i8* null, i8** %p, align 8, !tbaa !1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !28
  %3 = load i32, i32* %n.addr, align 4, !tbaa !28
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev.addr, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %5, i32 0, i32 68
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 1
  %6 = load i8**, i8*** %std_colorant_names, align 8, !tbaa !31
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  store i8* %7, i8** %p, align 8, !tbaa !1
  %8 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp1 = icmp eq i8* %8, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i8*, i8** %p, align 8, !tbaa !1
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  ret i8* %10
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @psd_prn_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %pdev_psd = alloca %struct.psd_device_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %force_pdf = alloca i32, align 4
  %limit_icc = alloca i32, align 4
  %force_ps = alloca i32, align 4
  %profile_struct = alloca %struct.cmm_dev_profile_s*, align 8
  %num_comp = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %pdev_psd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %force_pdf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %limit_icc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i32* %force_ps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  store i32 1, i32* %limit_icc, align 4, !tbaa !28
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %get_profile = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 67
  %10 = load i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)** %get_profile, align 8, !tbaa !57
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 %10(%struct.gx_device_s* %11, %struct.cmm_dev_profile_s** %profile_struct) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %12 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %device_profile = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %12, i32 0, i32 0
  %arrayidx = getelementptr inbounds [4 x %struct.cmm_profile_s*], [4 x %struct.cmm_profile_s*]* %device_profile, i32 0, i64 0
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %arrayidx, align 8, !tbaa !1
  %num_comps = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %13, i32 0, i32 0
  %14 = load i8, i8* %num_comps, align 1, !tbaa !59
  %conv = zext i8 %14 to i32
  %cmp = icmp sgt i32 %conv, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %15 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %15, i32 0, i32 11
  %16 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames, align 8, !tbaa !63
  %cmp2 = icmp eq %struct.gsicc_namelist_s* %16, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %17 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %profile_struct, align 8, !tbaa !1
  %spotnames4 = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %17, i32 0, i32 11
  %18 = load %struct.gsicc_namelist_s*, %struct.gsicc_namelist_s** %spotnames4, align 8, !tbaa !63
  %cmp5 = icmp eq %struct.gsicc_namelist_s* %18, null
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %force_pdf, align 4, !tbaa !28
  store i32 0, i32* %force_ps, align 4, !tbaa !28
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %19 = load i32, i32* %limit_icc, align 4, !tbaa !28
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else
  store i32 1, i32* %force_pdf, align 4, !tbaa !28
  store i32 0, i32* %force_ps, align 4, !tbaa !28
  br label %if.end.10

if.else.9:                                        ; preds = %if.else
  store i32 0, i32* %force_pdf, align 4, !tbaa !28
  store i32 1, i32* %force_ps, align 4, !tbaa !28
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.7
  %20 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %warning_given = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %20, i32 0, i32 82
  store i32 0, i32* %warning_given, align 4, !tbaa !65
  %21 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %21, i32 0, i32 68
  %page_spot_colors = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 4
  %22 = load i32, i32* %page_spot_colors, align 4, !tbaa !66
  %cmp12 = icmp sge i32 %22, 0
  br i1 %cmp12, label %land.lhs.true.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %23 = load i32, i32* %force_pdf, align 4, !tbaa !28
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.else.58

land.lhs.true.15:                                 ; preds = %lor.lhs.false, %if.end.11
  %24 = load i32, i32* %force_ps, align 4, !tbaa !28
  %tobool16 = icmp ne i32 %24, 0
  br i1 %tobool16, label %if.else.58, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.15
  %25 = load i32, i32* %force_pdf, align 4, !tbaa !28
  %tobool18 = icmp ne i32 %25, 0
  br i1 %tobool18, label %if.then.19, label %if.else.37

if.then.19:                                       ; preds = %if.then.17
  %26 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params20 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %26, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params20, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %27 = load i32, i32* %num_separations, align 4, !tbaa !67
  %28 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params21 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %28, i32 0, i32 68
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params21, i32 0, i32 2
  %29 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !68
  %add = add nsw i32 %27, %29
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  store i32 %add, i32* %num_components, align 4, !tbaa !69
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info22 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 11
  %num_components23 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info22, i32 0, i32 1
  %32 = load i32, i32* %num_components23, align 4, !tbaa !69
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info24 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info24, i32 0, i32 0
  %34 = load i32, i32* %max_components, align 4, !tbaa !70
  %cmp25 = icmp sgt i32 %32, %34
  br i1 %cmp25, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.then.19
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info28 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 11
  %max_components29 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info28, i32 0, i32 0
  %36 = load i32, i32* %max_components29, align 4, !tbaa !70
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 11
  %num_components31 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info30, i32 0, i32 1
  store i32 %36, i32* %num_components31, align 4, !tbaa !69
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %if.then.19
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info33 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 11
  %num_components34 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info33, i32 0, i32 1
  %39 = load i32, i32* %num_components34, align 4, !tbaa !69
  %40 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %40, i32 0, i32 11
  %max_components36 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info35, i32 0, i32 0
  store i32 %39, i32* %max_components36, align 4, !tbaa !70
  br label %if.end.57

if.else.37:                                       ; preds = %if.then.17
  %41 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params38 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %41, i32 0, i32 68
  %page_spot_colors39 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params38, i32 0, i32 4
  %42 = load i32, i32* %page_spot_colors39, align 4, !tbaa !66
  %43 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params40 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %43, i32 0, i32 68
  %num_std_colorant_names41 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params40, i32 0, i32 2
  %44 = load i32, i32* %num_std_colorant_names41, align 4, !tbaa !68
  %add42 = add nsw i32 %42, %44
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info43 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 11
  %num_components44 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info43, i32 0, i32 1
  store i32 %add42, i32* %num_components44, align 4, !tbaa !69
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info45 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 11
  %num_components46 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info45, i32 0, i32 1
  %47 = load i32, i32* %num_components46, align 4, !tbaa !69
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 11
  %max_components48 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info47, i32 0, i32 0
  %49 = load i32, i32* %max_components48, align 4, !tbaa !70
  %cmp49 = icmp sgt i32 %47, %49
  br i1 %cmp49, label %if.then.51, label %if.end.56

if.then.51:                                       ; preds = %if.else.37
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info52 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 11
  %max_components53 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info52, i32 0, i32 0
  %51 = load i32, i32* %max_components53, align 4, !tbaa !70
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 11
  %num_components55 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info54, i32 0, i32 1
  store i32 %51, i32* %num_components55, align 4, !tbaa !69
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.51, %if.else.37
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.32
  br label %if.end.68

if.else.58:                                       ; preds = %land.lhs.true.15, %lor.lhs.false
  %53 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %53) #2
  %54 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %max_spots = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %54, i32 0, i32 72
  %55 = load i32, i32* %max_spots, align 4, !tbaa !71
  %add59 = add nsw i32 %55, 4
  store i32 %add59, i32* %num_comp, align 4, !tbaa !28
  %56 = load i32, i32* %num_comp, align 4, !tbaa !28
  %cmp60 = icmp sgt i32 %56, 64
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else.58
  store i32 64, i32* %num_comp, align 4, !tbaa !28
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.else.58
  %57 = load i32, i32* %num_comp, align 4, !tbaa !28
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info64 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %58, i32 0, i32 11
  %num_components65 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info64, i32 0, i32 1
  store i32 %57, i32* %num_components65, align 4, !tbaa !69
  %59 = load i32, i32* %num_comp, align 4, !tbaa !28
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 11
  %max_components67 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info66, i32 0, i32 0
  store i32 %59, i32* %max_components67, align 4, !tbaa !70
  %61 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.63, %if.end.57
  %62 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params69 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %62, i32 0, i32 68
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params69, i32 0, i32 6
  %63 = load i32, i32* %num_separation_order_names, align 4, !tbaa !72
  %cmp70 = icmp eq i32 %63, 0
  br i1 %cmp70, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.end.68
  store i32 0, i32* %k, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %64 = load i32, i32* %k, align 4, !tbaa !28
  %cmp73 = icmp slt i32 %64, 64
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %65 = load i32, i32* %k, align 4, !tbaa !28
  %66 = load i32, i32* %k, align 4, !tbaa !28
  %idxprom = sext i32 %66 to i64
  %67 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params75 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %67, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params75, i32 0, i32 7
  %arrayidx76 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i64 %idxprom
  store i32 %65, i32* %arrayidx76, align 4, !tbaa !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %k, align 4, !tbaa !28
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %k, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.77

if.end.77:                                        ; preds = %for.end, %if.end.68
  %69 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info78 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %69, i32 0, i32 11
  %num_components79 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info78, i32 0, i32 1
  %70 = load i32, i32* %num_components79, align 4, !tbaa !69
  %71 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev_psd, align 8, !tbaa !1
  %devn_params80 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %71, i32 0, i32 68
  %bitspercomponent = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params80, i32 0, i32 0
  %72 = load i32, i32* %bitspercomponent, align 4, !tbaa !73
  %mul = mul nsw i32 %70, %72
  %conv81 = trunc i32 %mul to i16
  %73 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info82 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %73, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info82, i32 0, i32 3
  store i16 %conv81, i16* %depth, align 2, !tbaa !74
  %74 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info83 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %74, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info83, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !75
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %75, i32 0, i32 39
  %76 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !76
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %76, i32 0, i32 9
  store i32 1, i32* %supports_devn, align 4, !tbaa !77
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call84 = call i32 @gdev_prn_open_planar(%struct.gx_device_s* %77, i32 1) #5
  store i32 %call84, i32* %code, align 4, !tbaa !28
  %78 = load i32, i32* %code, align 4, !tbaa !28
  %79 = bitcast %struct.cmm_dev_profile_s** %profile_struct to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %force_ps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %limit_icc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %force_pdf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast %struct.psd_device_s** %pdev_psd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %85) #2
  ret i32 %78
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @psd_prn_close(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.psd_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_icc_link = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %3, i32 0, i32 78
  %4 = load i8*, i8** %cmyk_icc_link, align 8, !tbaa !78
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %5 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_icc_link1 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %5, i32 0, i32 78
  %6 = load i8*, i8** %cmyk_icc_link1, align 8, !tbaa !78
  %7 = bitcast i8* %6 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %7) #5
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %8, i32 0, i32 77
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile, align 8, !tbaa !79
  %tobool = icmp ne %struct.cmm_profile_s* %9, null
  br i1 %tobool, label %if.then.2, label %if.end.28

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.3
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile5 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %10, i32 0, i32 77
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile5, align 8, !tbaa !79
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %12 = load i64, i64* %ref_count, align 8, !tbaa !80
  %add = add nsw i64 %12, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !80
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %13 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile8 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %13, i32 0, i32 77
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile8, align 8, !tbaa !79
  %rc9 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 18
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %15 = load i64, i64* %ref_count10, align 8, !tbaa !80
  %tobool11 = icmp ne i64 %15, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %do.end.7
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  br label %do.body.14

do.body.14:                                       ; preds = %do.body.13
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.body.14
  br label %do.end.16

do.end.16:                                        ; preds = %do.cond.15
  %16 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile17 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %16, i32 0, i32 77
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile17, align 8, !tbaa !79
  %rc18 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !81
  %19 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile19 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %19, i32 0, i32 77
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile19, align 8, !tbaa !79
  %rc20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %20, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !82
  %22 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile21 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %22, i32 0, i32 77
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile21, align 8, !tbaa !79
  %24 = bitcast %struct.cmm_profile_s* %23 to i8*
  call void %18(%struct.gs_memory_s* %21, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %25 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile24 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %25, i32 0, i32 77
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmyk_profile24, align 8, !tbaa !79
  br label %if.end

if.else:                                          ; preds = %do.end.7
  br label %do.body.25

do.body.25:                                       ; preds = %if.else
  br label %do.cond.26

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27

do.end.27:                                        ; preds = %do.cond.26
  br label %if.end

if.end:                                           ; preds = %do.end.27, %do.end.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %do.body
  br label %do.cond.29

do.cond.29:                                       ; preds = %if.end.28
  br label %do.end.30

do.end.30:                                        ; preds = %do.cond.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  %26 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_icc_link = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %26, i32 0, i32 75
  %27 = load i8*, i8** %rgb_icc_link, align 8, !tbaa !83
  %cmp32 = icmp ne i8* %27, null
  br i1 %cmp32, label %if.then.33, label %if.end.75

if.then.33:                                       ; preds = %if.end.31
  %28 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_icc_link34 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %28, i32 0, i32 75
  %29 = load i8*, i8** %rgb_icc_link34, align 8, !tbaa !83
  %30 = bitcast i8* %29 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %30) #5
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.33
  %31 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %31, i32 0, i32 74
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile, align 8, !tbaa !84
  %tobool36 = icmp ne %struct.cmm_profile_s* %32, null
  br i1 %tobool36, label %if.then.37, label %if.end.72

if.then.37:                                       ; preds = %do.body.35
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  br label %do.cond.40

do.cond.40:                                       ; preds = %do.body.39
  br label %do.end.41

do.end.41:                                        ; preds = %do.cond.40
  %33 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile42 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %33, i32 0, i32 74
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile42, align 8, !tbaa !84
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %35 = load i64, i64* %ref_count44, align 8, !tbaa !80
  %add45 = add nsw i64 %35, -1
  store i64 %add45, i64* %ref_count44, align 8, !tbaa !80
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.41
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %36 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile48 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %36, i32 0, i32 74
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile48, align 8, !tbaa !84
  %rc49 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 18
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %38 = load i64, i64* %ref_count50, align 8, !tbaa !80
  %tobool51 = icmp ne i64 %38, 0
  br i1 %tobool51, label %if.else.67, label %if.then.52

if.then.52:                                       ; preds = %do.end.47
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  br label %do.body.54

do.body.54:                                       ; preds = %do.body.53
  br label %do.cond.55

do.cond.55:                                       ; preds = %do.body.54
  br label %do.end.56

do.end.56:                                        ; preds = %do.cond.55
  %39 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile57 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %39, i32 0, i32 74
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile57, align 8, !tbaa !84
  %rc58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 18
  %free59 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc58, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free59, align 8, !tbaa !81
  %42 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile60 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %42, i32 0, i32 74
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile60, align 8, !tbaa !84
  %rc61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 18
  %memory62 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc61, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !82
  %45 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile63 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %45, i32 0, i32 74
  %46 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile63, align 8, !tbaa !84
  %47 = bitcast %struct.cmm_profile_s* %46 to i8*
  call void %41(%struct.gs_memory_s* %44, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.56
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %48 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile66 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %48, i32 0, i32 74
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %rgb_profile66, align 8, !tbaa !84
  br label %if.end.71

if.else.67:                                       ; preds = %do.end.47
  br label %do.body.68

do.body.68:                                       ; preds = %if.else.67
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.68
  br label %do.end.70

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.end.65
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.body.35
  br label %do.cond.73

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74

do.end.74:                                        ; preds = %do.cond.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.end.31
  %49 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_icc_link = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %49, i32 0, i32 81
  %50 = load i8*, i8** %output_icc_link, align 8, !tbaa !85
  %cmp76 = icmp ne i8* %50, null
  br i1 %cmp76, label %if.then.77, label %if.end.119

if.then.77:                                       ; preds = %if.end.75
  %51 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_icc_link78 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %51, i32 0, i32 81
  %52 = load i8*, i8** %output_icc_link78, align 8, !tbaa !85
  %53 = bitcast i8* %52 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %53) #5
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.77
  %54 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %54, i32 0, i32 80
  %55 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile, align 8, !tbaa !86
  %tobool80 = icmp ne %struct.cmm_profile_s* %55, null
  br i1 %tobool80, label %if.then.81, label %if.end.116

if.then.81:                                       ; preds = %do.body.79
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  br label %do.body.83

do.body.83:                                       ; preds = %do.body.82
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  %56 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile86 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %56, i32 0, i32 80
  %57 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile86, align 8, !tbaa !86
  %rc87 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %57, i32 0, i32 18
  %ref_count88 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc87, i32 0, i32 0
  %58 = load i64, i64* %ref_count88, align 8, !tbaa !80
  %add89 = add nsw i64 %58, -1
  store i64 %add89, i64* %ref_count88, align 8, !tbaa !80
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.end.85
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  %59 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile92 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %59, i32 0, i32 80
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile92, align 8, !tbaa !86
  %rc93 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %60, i32 0, i32 18
  %ref_count94 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc93, i32 0, i32 0
  %61 = load i64, i64* %ref_count94, align 8, !tbaa !80
  %tobool95 = icmp ne i64 %61, 0
  br i1 %tobool95, label %if.else.111, label %if.then.96

if.then.96:                                       ; preds = %do.end.91
  br label %do.body.97

do.body.97:                                       ; preds = %if.then.96
  br label %do.body.98

do.body.98:                                       ; preds = %do.body.97
  br label %do.cond.99

do.cond.99:                                       ; preds = %do.body.98
  br label %do.end.100

do.end.100:                                       ; preds = %do.cond.99
  %62 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile101 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %62, i32 0, i32 80
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile101, align 8, !tbaa !86
  %rc102 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 18
  %free103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free103, align 8, !tbaa !81
  %65 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile104 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %65, i32 0, i32 80
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile104, align 8, !tbaa !86
  %rc105 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %66, i32 0, i32 18
  %memory106 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc105, i32 0, i32 1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !82
  %68 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile107 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %68, i32 0, i32 80
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile107, align 8, !tbaa !86
  %70 = bitcast %struct.cmm_profile_s* %69 to i8*
  call void %64(%struct.gs_memory_s* %67, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)) #5
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.end.100
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  %71 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %output_profile110 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %71, i32 0, i32 80
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %output_profile110, align 8, !tbaa !86
  br label %if.end.115

if.else.111:                                      ; preds = %do.end.91
  br label %do.body.112

do.body.112:                                      ; preds = %if.else.111
  br label %do.cond.113

do.cond.113:                                      ; preds = %do.body.112
  br label %do.end.114

do.end.114:                                       ; preds = %do.cond.113
  br label %if.end.115

if.end.115:                                       ; preds = %do.end.114, %do.end.109
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %do.body.79
  br label %do.cond.117

do.cond.117:                                      ; preds = %if.end.116
  br label %do.end.118

do.end.118:                                       ; preds = %do.cond.117
  br label %if.end.119

if.end.119:                                       ; preds = %do.end.118, %if.end.75
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %72) #5
  %73 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @psd_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  %xdev = alloca %struct.psd_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !52
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %color_model = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %3, i32 0, i32 70
  %4 = load i32, i32* %color_model, align 4, !tbaa !87
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i64, i64* %color.addr, align 8, !tbaa !52
  %7 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %call = call i32 @gx_devn_prn_decode_color(%struct.gx_device_s* %5, i64 %6, i16* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 0, i16* %arrayidx, align 2, !tbaa !42
  %9 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !42
  %10 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 0, i16* %arrayidx2, align 2, !tbaa !42
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @psd_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %xdev = alloca %struct.psd_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gx_devn_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  %6 = load i32, i32* %code, align 4, !tbaa !28
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %9 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %9, i32 0, i32 71
  %call1 = call i32 @param_write_long(%struct.gs_param_list_s* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i64* %downscale_factor) #5
  store i32 %call1, i32* %code, align 4, !tbaa !28
  %10 = load i32, i32* %code, align 4, !tbaa !28
  %cmp2 = icmp slt i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %11 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %max_spots = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %13, i32 0, i32 72
  %call5 = call i32 @param_write_int(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32* %max_spots) #5
  store i32 %call5, i32* %code, align 4, !tbaa !28
  %14 = load i32, i32* %code, align 4, !tbaa !28
  %cmp6 = icmp slt i32 %14, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  %15 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end.4
  %16 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %16, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #2
  %18 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @psd_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdevn = alloca %struct.psd_device_s*, align 8
  %code = alloca i32, align 4
  %pcm = alloca %struct.gs_param_string_s, align 8
  %color_model = alloca i32, align 4
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %pdevn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !28
  %4 = bitcast %struct.gs_param_string_s* %pcm to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast i32* %color_model to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %6, i32 0, i32 70
  %7 = load i32, i32* %color_model1, align 4, !tbaa !87
  store i32 %7, i32* %color_model, align 4, !tbaa !41
  %8 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %8) #2
  %9 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %9, i32 0, i32 11
  %10 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %11 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 720, i32 8, i1 false), !tbaa.struct !88
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %13 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %13, i32 0, i32 71
  %call = call i32 @param_read_long(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i64* %downscale_factor) #5
  store i32 %call, i32* %code, align 4, !tbaa !28
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.epilog
  ]

sw.bb:                                            ; preds = %entry
  %14 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %downscale_factor2 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %14, i32 0, i32 71
  %15 = load i64, i64* %downscale_factor2, align 8, !tbaa !22
  %cmp = icmp sle i64 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %16 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %downscale_factor3 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %16, i32 0, i32 71
  store i64 1, i64* %downscale_factor3, align 8, !tbaa !22
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %17, i32 0, i32 0
  %18 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !89
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %18, i32 0, i32 7
  %19 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !91
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %21 = load i32, i32* %code, align 4, !tbaa !28
  %call4 = call i32 %19(%struct.gs_param_list_s* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 %21) #5
  %22 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %entry, %if.end
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %24 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %max_spots = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %24, i32 0, i32 72
  %call5 = call i32 @param_read_int(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32* %max_spots) #5
  store i32 %call5, i32* %code, align 4, !tbaa !28
  switch i32 %call5, label %sw.default.17 [
    i32 0, label %sw.bb.6
    i32 1, label %sw.epilog.21
  ]

sw.bb.6:                                          ; preds = %sw.epilog
  %25 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %max_spots7 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %25, i32 0, i32 72
  %26 = load i32, i32* %max_spots7, align 4, !tbaa !71
  %cmp8 = icmp sge i32 %26, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %sw.bb.6
  %27 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %max_spots9 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %27, i32 0, i32 72
  %28 = load i32, i32* %max_spots9, align 4, !tbaa !71
  %cmp10 = icmp sle i32 %28, 60
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  br label %sw.epilog.21

if.end.12:                                        ; preds = %land.lhs.true, %sw.bb.6
  %29 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !93
  %call13 = call i8* @gs_program_name() #5
  %call14 = call i64 @gs_revision_number() #5
  call void @emprintf_program_ident(%struct.gs_memory_s* %30, i8* %call13, i64 %call14) #5
  %31 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !93
  %call16 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), i32 60) #5
  store i32 -15, i32* %code, align 4, !tbaa !28
  br label %sw.default.17

sw.default.17:                                    ; preds = %sw.epilog, %if.end.12
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs18 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %33, i32 0, i32 0
  %34 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs18, align 8, !tbaa !89
  %signal_error19 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %34, i32 0, i32 7
  %35 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error19, align 8, !tbaa !91
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %37 = load i32, i32* %code, align 4, !tbaa !28
  %call20 = call i32 %35(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %37) #5
  %38 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %38, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog.21:                                     ; preds = %sw.epilog, %if.then.11
  %39 = load i32, i32* %code, align 4, !tbaa !28
  %cmp22 = icmp sge i32 %39, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %sw.epilog.21
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call24 = call i32 @param_read_name(%struct.gs_param_list_s* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), %struct.gs_param_string_s* %pcm) #5
  store i32 %call24, i32* %code, align 4, !tbaa !28
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %sw.epilog.21
  %41 = load i32, i32* %code, align 4, !tbaa !28
  %cmp26 = icmp eq i32 %41, 0
  br i1 %cmp26, label %if.then.27, label %if.end.49

if.then.27:                                       ; preds = %if.end.25
  %call28 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.27
  store i32 0, i32* %color_model, align 4, !tbaa !41
  br label %if.end.48

if.else:                                          ; preds = %if.then.27
  %call30 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else
  store i32 1, i32* %color_model, align 4, !tbaa !41
  br label %if.end.47

if.else.33:                                       ; preds = %if.else
  %call34 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.else.33
  store i32 2, i32* %color_model, align 4, !tbaa !41
  br label %if.end.46

if.else.37:                                       ; preds = %if.else.33
  %call38 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.37
  store i32 3, i32* %color_model, align 4, !tbaa !41
  br label %if.end.45

if.else.41:                                       ; preds = %if.else.37
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs42 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %42, i32 0, i32 0
  %43 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs42, align 8, !tbaa !89
  %signal_error43 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %43, i32 0, i32 7
  %44 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error43, align 8, !tbaa !91
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 -15, i32* %code, align 4, !tbaa !28
  %call44 = call i32 %44(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 -15) #5
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.41, %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.36
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.32
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.29
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.25
  %46 = load i32, i32* %code, align 4, !tbaa !28
  %cmp50 = icmp sge i32 %46, 0
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.49
  %47 = load %struct.psd_device_s*, %struct.psd_device_s** %pdevn, align 8, !tbaa !1
  %48 = load i32, i32* %color_model, align 4, !tbaa !41
  %call52 = call i32 @psd_set_color_model(%struct.psd_device_s* %47, i32 %48) #5
  store i32 %call52, i32* %code, align 4, !tbaa !28
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.49
  %49 = load i32, i32* %code, align 4, !tbaa !28
  %cmp54 = icmp eq i32 %49, 0
  br i1 %cmp54, label %if.then.55, label %if.end.57

if.then.55:                                       ; preds = %if.end.53
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call56 = call i32 @gx_devn_prn_put_params(%struct.gx_device_s* %50, %struct.gs_param_list_s* %51) #5
  store i32 %call56, i32* %code, align 4, !tbaa !28
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %if.end.53
  %52 = load i32, i32* %code, align 4, !tbaa !28
  %cmp58 = icmp slt i32 %52, 0
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.57
  %53 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %53, i32 0, i32 11
  %54 = bitcast %struct.gx_device_color_info_s* %color_info60 to i8*
  %55 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 720, i32 8, i1 false), !tbaa.struct !88
  %56 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.61:                                        ; preds = %if.end.57
  %57 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %57, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.61, %if.then.59, %sw.default.17, %sw.default
  %58 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %58) #2
  %59 = bitcast i32* %color_model to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast %struct.gs_param_string_s* %pcm to i8*
  call void @llvm.lifetime.end(i64 16, i8* %60) #2
  %61 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast %struct.psd_device_s** %pdevn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gx_cm_color_map_procs_s* @get_psdrgb_color_mapping_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @psdRGB_procs
}

; Function Attrs: nounwind uwtable
define internal i32 @psd_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %pdev = alloca %struct.psd_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !28
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !28
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.psd_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.psd_device_s*
  store %struct.psd_device_s* %3, %struct.psd_device_s** %pdev, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !28
  %conv = sext i32 %5 to i64
  %call = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 %conv) #6
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %name_size.addr, align 4, !tbaa !28
  %9 = load i32, i32* %component_type.addr, align 4, !tbaa !28
  %call2 = call i32 @gx_devn_prn_get_color_comp_index(%struct.gx_device_s* %6, i8* %7, i32 %8, i32 %9) #5
  store i32 %call2, i32* %index, align 4, !tbaa !28
  %10 = load i32, i32* %index, align 4, !tbaa !28
  %cmp3 = icmp slt i32 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %component_type.addr, align 4, !tbaa !28
  %cmp5 = icmp eq i32 %11, 1
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.23

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev, align 8, !tbaa !1
  %warning_given = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %12, i32 0, i32 82
  %13 = load i32, i32* %warning_given, align 4, !tbaa !65
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.23

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %14 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %14, i32 0, i32 68
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 6
  %15 = load i32, i32* %num_separation_order_names, align 4, !tbaa !72
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then.13, label %if.end.23

if.then.13:                                       ; preds = %land.lhs.true.10
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 969) #5
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory14 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory14, align 8, !tbaa !94
  %call15 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i32 0, i32 0)) #5
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %20, i32 0, i32 3
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !94
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 970) #5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !94
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %23, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.19, i32 0, i32 0)) #5
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !94
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 971) #5
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !94
  %call21 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %27, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.20, i32 0, i32 0)) #5
  %28 = load %struct.psd_device_s*, %struct.psd_device_s** %pdev, align 8, !tbaa !1
  %warning_given22 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %28, i32 0, i32 82
  store i32 1, i32* %warning_given22, align 4, !tbaa !65
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.13, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true, %if.end
  %29 = load i32, i32* %index, align 4, !tbaa !28
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.23, %if.then
  %30 = bitcast %struct.psd_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare i64 @gx_devn_prn_encode_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_devn_prn_decode_color(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gx_devn_prn_update_spot_equivalent_colors(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare %struct.gs_devn_params_s* @gx_devn_prn_ret_devn_params(%struct.gx_device_s*) #0

declare i32 @gdev_prn_open_planar(%struct.gx_device_s*, i32) #0

declare void @gscms_release_link(%struct.gsicc_link_s*) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @gx_devn_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @param_write_long(%struct.gs_param_list_s*, i8*, i64*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @param_read_long(%struct.gs_param_list_s*, i8*, i64*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare void @emprintf_program_ident(%struct.gs_memory_s*, i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @param_read_name(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @param_string_eq(%struct.gs_param_string_s* %pcs, i8* %str) #1 {
entry:
  %pcs.addr = alloca %struct.gs_param_string_s*, align 8
  %str.addr = alloca i8*, align 8
  store %struct.gs_param_string_s* %pcs, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %0) #6
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !95
  %conv = zext i32 %2 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !97
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !95
  %conv3 = zext i32 %7 to i64
  %call4 = call i32 @strncmp(i8* %3, i8* %5, i64 %conv3) #6
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @psd_set_color_model(%struct.psd_device_s* %xdev, i32 %color_model) #1 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.psd_device_s*, align 8
  %color_model.addr = alloca i32, align 4
  store %struct.psd_device_s* %xdev, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  store i32 %color_model, i32* %color_model.addr, align 4, !tbaa !41
  %0 = load i32, i32* %color_model.addr, align 4, !tbaa !41
  %1 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %1, i32 0, i32 70
  store i32 %0, i32* %color_model1, align 4, !tbaa !87
  %2 = load i32, i32* %color_model.addr, align 4, !tbaa !41
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %3, i32 0, i32 68
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 1
  store i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @DeviceGrayComponents, i32 0, i32 0), i8*** %std_colorant_names, align 8, !tbaa !98
  %4 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params2 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %4, i32 0, i32 68
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params2, i32 0, i32 2
  store i32 1, i32* %num_std_colorant_names, align 4, !tbaa !68
  %5 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %5, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8** %cm_name, align 8, !tbaa !99
  %6 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info3 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %6, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info3, i32 0, i32 2
  store i32 1, i32* %polarity, align 4, !tbaa !100
  br label %if.end.39

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %color_model.addr, align 4, !tbaa !41
  %cmp4 = icmp eq i32 %7, 1
  br i1 %cmp4, label %if.then.5, label %if.else.14

if.then.5:                                        ; preds = %if.else
  %8 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params6 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %8, i32 0, i32 68
  %std_colorant_names7 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params6, i32 0, i32 1
  store i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @DeviceRGBComponents, i32 0, i32 0), i8*** %std_colorant_names7, align 8, !tbaa !98
  %9 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params8 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %9, i32 0, i32 68
  %num_std_colorant_names9 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params8, i32 0, i32 2
  store i32 3, i32* %num_std_colorant_names9, align 4, !tbaa !68
  %10 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info10 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %10, i32 0, i32 11
  %cm_name11 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info10, i32 0, i32 14
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8** %cm_name11, align 8, !tbaa !99
  %11 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %11, i32 0, i32 11
  %polarity13 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info12, i32 0, i32 2
  store i32 1, i32* %polarity13, align 4, !tbaa !100
  br label %if.end.38

if.else.14:                                       ; preds = %if.else
  %12 = load i32, i32* %color_model.addr, align 4, !tbaa !41
  %cmp15 = icmp eq i32 %12, 2
  br i1 %cmp15, label %if.then.16, label %if.else.25

if.then.16:                                       ; preds = %if.else.14
  %13 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params17 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %13, i32 0, i32 68
  %std_colorant_names18 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params17, i32 0, i32 1
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @DeviceCMYKComponents, i32 0, i32 0), i8*** %std_colorant_names18, align 8, !tbaa !98
  %14 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params19 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %14, i32 0, i32 68
  %num_std_colorant_names20 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params19, i32 0, i32 2
  store i32 4, i32* %num_std_colorant_names20, align 4, !tbaa !68
  %15 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %15, i32 0, i32 11
  %cm_name22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8** %cm_name22, align 8, !tbaa !99
  %16 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info23 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %16, i32 0, i32 11
  %polarity24 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info23, i32 0, i32 2
  store i32 0, i32* %polarity24, align 4, !tbaa !100
  br label %if.end.37

if.else.25:                                       ; preds = %if.else.14
  %17 = load i32, i32* %color_model.addr, align 4, !tbaa !41
  %cmp26 = icmp eq i32 %17, 3
  br i1 %cmp26, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %if.else.25
  %18 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params28 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %18, i32 0, i32 68
  %std_colorant_names29 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params28, i32 0, i32 1
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @DeviceCMYKComponents, i32 0, i32 0), i8*** %std_colorant_names29, align 8, !tbaa !98
  %19 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %devn_params30 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %19, i32 0, i32 68
  %num_std_colorant_names31 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params30, i32 0, i32 2
  store i32 4, i32* %num_std_colorant_names31, align 4, !tbaa !68
  %20 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info32 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %20, i32 0, i32 11
  %cm_name33 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info32, i32 0, i32 14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8** %cm_name33, align 8, !tbaa !99
  %21 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info34 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %21, i32 0, i32 11
  %polarity35 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info34, i32 0, i32 2
  store i32 0, i32* %polarity35, align 4, !tbaa !100
  br label %if.end

if.else.36:                                       ; preds = %if.else.25
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.27
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.16
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.5
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.else.36
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gx_devn_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_psdrgb_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %2, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %3 = load i32, i32* %num_separations, align 4, !tbaa !67
  store i32 %3, i32* %i, align 4, !tbaa !28
  %4 = load i16, i16* %gray.addr, align 2, !tbaa !42
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %4, i16* %arrayidx, align 2, !tbaa !42
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 %4, i16* %arrayidx1, align 2, !tbaa !42
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !28
  %add = add nsw i32 2, %9
  %idxprom = sext i32 %add to i64
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  store i16 0, i16* %arrayidx3, align 2, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !28
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_psdrgb_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !42
  store i16 %g, i16* %g.addr, align 2, !tbaa !42
  store i16 %b, i16* %b.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %2, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %3 = load i32, i32* %num_separations, align 4, !tbaa !67
  store i32 %3, i32* %i, align 4, !tbaa !28
  %4 = load i16, i16* %r.addr, align 2, !tbaa !42
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %4, i16* %arrayidx, align 2, !tbaa !42
  %6 = load i16, i16* %g.addr, align 2, !tbaa !42
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %6, i16* %arrayidx1, align 2, !tbaa !42
  %8 = load i16, i16* %b.addr, align 2, !tbaa !42
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %arrayidx2, align 2, !tbaa !42
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !28
  %add = add nsw i32 2, %11
  %idxprom = sext i32 %add to i64
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  store i16 0, i16* %arrayidx3, align 2, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !28
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_psdrgb_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !42
  store i16 %m, i16* %m.addr, align 2, !tbaa !42
  store i16 %y, i16* %y.addr, align 2, !tbaa !42
  store i16 %k, i16* %k.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %2, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %3 = load i32, i32* %num_separations, align 4, !tbaa !67
  store i32 %3, i32* %i, align 4, !tbaa !28
  %4 = load i16, i16* %c.addr, align 2, !tbaa !42
  %5 = load i16, i16* %m.addr, align 2, !tbaa !42
  %6 = load i16, i16* %y.addr, align 2, !tbaa !42
  %7 = load i16, i16* %k.addr, align 2, !tbaa !42
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  call void @color_cmyk_to_rgb(i16 signext %4, i16 signext %5, i16 signext %6, i16 signext %7, %struct.gs_imager_state_s* null, i16* %8, %struct.gs_memory_s* %10) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !28
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !28
  %add = add nsw i32 2, %12
  %idxprom = sext i32 %add to i64
  %13 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !28
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret void
}

declare void @color_cmyk_to_rgb(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #0

declare i32 @gx_devn_prn_get_color_comp_index(%struct.gx_device_s*, i8*, i32, i32) #0

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @psd_device_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.psd_device_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !28
  store i32 %index, i32* %index.addr, align 4, !tbaa !28
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !28
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, i32 0, i32 4), align 8, !tbaa !101
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !28
  %8 = load i32, i32* %index.addr, align 4, !tbaa !28
  %sub = sub nsw i32 %8, 0
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, %struct.gc_state_s* %10) #5
  %11 = bitcast %struct.psd_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @psd_device_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.psd_device_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !28
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %pdev, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, i32 0, i32 5), align 8, !tbaa !103
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !28
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, %struct.gc_state_s* %6) #5
  %7 = bitcast %struct.psd_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @psd_device_finalize(%struct.gs_memory_s* %cmem, i8* %vpdev) #1 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vpdev.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vpdev, i8** %vpdev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %vpdev.addr, align 8, !tbaa !1
  call void @gx_devn_prn_device_finalize(%struct.gs_memory_s* %0, i8* %1) #5
  ret void
}

declare void @gx_devn_prn_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gx_cm_color_map_procs_s* @get_psd_color_mapping_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.psd_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %color_model = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %3, i32 0, i32 70
  %4 = load i32, i32* %color_model, align 4, !tbaa !87
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gx_cm_color_map_procs_s* @psdRGB_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %5, i32 0, i32 70
  %6 = load i32, i32* %color_model1, align 4, !tbaa !87
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store %struct.gx_cm_color_map_procs_s* @psdCMYK_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.4:                                        ; preds = %if.else
  %7 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %color_model5 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %7, i32 0, i32 70
  %8 = load i32, i32* %color_model5, align 4, !tbaa !87
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store %struct.gx_cm_color_map_procs_s* @psdN_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.8:                                        ; preds = %if.else.4
  %9 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %color_model9 = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %9, i32 0, i32 70
  %10 = load i32, i32* %color_model9, align 4, !tbaa !87
  %cmp10 = icmp eq i32 %10, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store %struct.gx_cm_color_map_procs_s* @psdGray_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.12:                                       ; preds = %if.else.8
  store %struct.gx_cm_color_map_procs_s* null, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.12, %if.then.11, %if.then.7, %if.then.3, %if.then
  %11 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %retval
  ret %struct.gx_cm_color_map_procs_s* %12
}

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_psdcmyk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %map = alloca i32*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %2, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %map, align 8, !tbaa !1
  %5 = load i16, i16* %gray.addr, align 2, !tbaa !42
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @gray_cs_to_devn_cm(%struct.gx_device_s* %3, i32* %4, i16 signext %5, i16* %6) #5
  %7 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_psdcmyk_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %map = alloca i32*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !42
  store i16 %g, i16* %g.addr, align 2, !tbaa !42
  store i16 %b, i16* %b.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %2, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %map, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %6 = load i16, i16* %r.addr, align 2, !tbaa !42
  %7 = load i16, i16* %g.addr, align 2, !tbaa !42
  %8 = load i16, i16* %b.addr, align 2, !tbaa !42
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @rgb_cs_to_devn_cm(%struct.gx_device_s* %3, i32* %4, %struct.gs_imager_state_s* %5, i16 signext %6, i16 signext %7, i16 signext %8, i16* %9) #5
  %10 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_psdcmyk_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %devn = alloca %struct.gs_devn_params_s*, align 8
  %map = alloca i32*, align 8
  %j = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !42
  store i16 %m, i16* %m.addr, align 2, !tbaa !42
  store i16 %y, i16* %y.addr, align 2, !tbaa !42
  store i16 %k, i16* %k.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_devn_params_s** %devn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call %struct.gs_devn_params_s* @gx_devn_prn_ret_devn_params(%struct.gx_device_s* %1) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %devn, align 8, !tbaa !1
  %2 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn, align 8, !tbaa !1
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %3, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn, align 8, !tbaa !1
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %5, i32 0, i32 6
  %6 = load i32, i32* %num_separation_order_names, align 4, !tbaa !104
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %j, align 4, !tbaa !28
  %8 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn, align 8, !tbaa !1
  %num_separation_order_names1 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %8, i32 0, i32 6
  %9 = load i32, i32* %num_separation_order_names1, align 4, !tbaa !104
  %cmp2 = icmp slt i32 %7, %9
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %j, align 4, !tbaa !28
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %map, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4, !tbaa !28
  switch i32 %12, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %for.body
  %13 = load i16, i16* %c.addr, align 2, !tbaa !42
  %14 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %14, i64 0
  store i16 %13, i16* %arrayidx3, align 2, !tbaa !42
  br label %sw.epilog

sw.bb.4:                                          ; preds = %for.body
  %15 = load i16, i16* %m.addr, align 2, !tbaa !42
  %16 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %16, i64 1
  store i16 %15, i16* %arrayidx5, align 2, !tbaa !42
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body
  %17 = load i16, i16* %y.addr, align 2, !tbaa !42
  %18 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds i16, i16* %18, i64 2
  store i16 %17, i16* %arrayidx7, align 2, !tbaa !42
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %19 = load i16, i16* %k.addr, align 2, !tbaa !42
  %20 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %20, i64 3
  store i16 %19, i16* %arrayidx9, align 2, !tbaa !42
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %21 = load i32, i32* %j, align 4, !tbaa !28
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load i32*, i32** %map, align 8, !tbaa !1
  %24 = load i16, i16* %c.addr, align 2, !tbaa !42
  %25 = load i16, i16* %m.addr, align 2, !tbaa !42
  %26 = load i16, i16* %y.addr, align 2, !tbaa !42
  %27 = load i16, i16* %k.addr, align 2, !tbaa !42
  %28 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_devn_cm(%struct.gx_device_s* %22, i32* %23, i16 signext %24, i16 signext %25, i16 signext %26, i16 signext %27, i16* %28) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %29 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  %30 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast %struct.gs_devn_params_s** %devn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  ret void
}

declare void @gray_cs_to_devn_cm(%struct.gx_device_s*, i32*, i16 signext, i16*) #0

declare void @rgb_cs_to_devn_cm(%struct.gx_device_s*, i32*, %struct.gs_imager_state_s*, i16 signext, i16 signext, i16 signext, i16*) #0

declare void @cmyk_cs_to_devn_cm(%struct.gx_device_s*, i32*, i16 signext, i16 signext, i16 signext, i16 signext, i16*) #0

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_spotn_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i16, i16* %gray.addr, align 2, !tbaa !42
  %conv = sext i16 %1 to i32
  %sub = sub nsw i32 32760, %conv
  %conv1 = trunc i32 %sub to i16
  %2 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_spotn_cm(%struct.gx_device_s* %0, i16 signext 0, i16 signext 0, i16 signext 0, i16 signext %conv1, i16* %2) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_spotn_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %xdev = alloca %struct.psd_device_s*, align 8
  %n = alloca i32, align 4
  %link = alloca i8*, align 8
  %i = alloca i32, align 4
  %in = alloca [3 x i16], align 2
  %tmp = alloca [15 x i16], align 16
  %outn = alloca i32, align 4
  %cmyk = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !42
  store i16 %g, i16* %g.addr, align 2, !tbaa !42
  store i16 %b, i16* %b.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %4, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %5 = load i32, i32* %num_separations, align 4, !tbaa !67
  store i32 %5, i32* %n, align 4, !tbaa !28
  %6 = bitcast i8** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_icc_link = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %7, i32 0, i32 75
  %8 = load i8*, i8** %rgb_icc_link, align 8, !tbaa !83
  store i8* %8, i8** %link, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i8*, i8** %link, align 8, !tbaa !1
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = bitcast [3 x i16]* %in to i8*
  call void @llvm.lifetime.start(i64 6, i8* %11) #2
  %12 = bitcast [15 x i16]* %tmp to i8*
  call void @llvm.lifetime.start(i64 30, i8* %12) #2
  %13 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %14, i32 0, i32 74
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile, align 8, !tbaa !84
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 1
  %16 = load i8, i8* %num_comps_out, align 1, !tbaa !105
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %outn, align 4, !tbaa !28
  %17 = load i16, i16* %r.addr, align 2, !tbaa !42
  %conv2 = sext i16 %17 to i32
  %shl = shl i32 %conv2, 1
  %18 = load i16, i16* %r.addr, align 2, !tbaa !42
  %conv3 = sext i16 %18 to i32
  %shr = ashr i32 %conv3, 11
  %add = add nsw i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !42
  %19 = load i16, i16* %g.addr, align 2, !tbaa !42
  %conv5 = sext i16 %19 to i32
  %shl6 = shl i32 %conv5, 1
  %20 = load i16, i16* %g.addr, align 2, !tbaa !42
  %conv7 = sext i16 %20 to i32
  %shr8 = ashr i32 %conv7, 11
  %add9 = add nsw i32 %shl6, %shr8
  %conv10 = trunc i32 %add9 to i16
  %arrayidx11 = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !42
  %21 = load i16, i16* %b.addr, align 2, !tbaa !42
  %conv12 = sext i16 %21 to i32
  %shl13 = shl i32 %conv12, 1
  %22 = load i16, i16* %b.addr, align 2, !tbaa !42
  %conv14 = sext i16 %22 to i32
  %shr15 = ashr i32 %conv14, 11
  %add16 = add nsw i32 %shl13, %shr15
  %conv17 = trunc i32 %add16 to i16
  %arrayidx18 = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 2
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !42
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %link, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct.gsicc_link_s*
  %arrayidx19 = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 0
  %26 = bitcast i16* %arrayidx19 to i8*
  %arrayidx20 = getelementptr inbounds [15 x i16], [15 x i16]* %tmp, i32 0, i64 0
  %27 = bitcast i16* %arrayidx20 to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %23, %struct.gsicc_link_s* %25, i8* %26, i8* %27, i32 2) #5
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %i, align 4, !tbaa !28
  %29 = load i32, i32* %outn, align 4, !tbaa !28
  %cmp21 = icmp slt i32 %28, %29
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds [15 x i16], [15 x i16]* %tmp, i32 0, i64 %idxprom
  %31 = load i16, i16* %arrayidx23, align 2, !tbaa !42
  %conv24 = zext i16 %31 to i32
  %shr25 = ashr i32 %conv24, 1
  %32 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds [15 x i16], [15 x i16]* %tmp, i32 0, i64 %idxprom26
  %33 = load i16, i16* %arrayidx27, align 2, !tbaa !42
  %conv28 = zext i16 %33 to i32
  %shr29 = ashr i32 %conv28, 13
  %sub = sub nsw i32 %shr25, %shr29
  %conv30 = trunc i32 %sub to i16
  %34 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom31 = sext i32 %34 to i64
  %35 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %35, i64 %idxprom31
  store i16 %conv30, i16* %arrayidx32, align 2, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %for.end
  %37 = load i32, i32* %i, align 4, !tbaa !28
  %38 = load i32, i32* %n, align 4, !tbaa !28
  %add34 = add nsw i32 %38, 4
  %cmp35 = icmp slt i32 %37, %add34
  br i1 %cmp35, label %for.body.37, label %for.end.42

for.body.37:                                      ; preds = %for.cond.33
  %39 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom38 = sext i32 %39 to i64
  %40 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %40, i64 %idxprom38
  store i16 0, i16* %arrayidx39, align 2, !tbaa !42
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.37
  %41 = load i32, i32* %i, align 4, !tbaa !28
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !28
  br label %for.cond.33

for.end.42:                                       ; preds = %for.cond.33
  %42 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast [15 x i16]* %tmp to i8*
  call void @llvm.lifetime.end(i64 30, i8* %43) #2
  %44 = bitcast [3 x i16]* %in to i8*
  call void @llvm.lifetime.end(i64 6, i8* %44) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %45 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load i16, i16* %r.addr, align 2, !tbaa !42
  %47 = load i16, i16* %g.addr, align 2, !tbaa !42
  %48 = load i16, i16* %b.addr, align 2, !tbaa !42
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !94
  call void @color_rgb_to_cmyk(i16 signext %46, i16 signext %47, i16 signext %48, %struct.gs_imager_state_s* %49, i16* %arraydecay, %struct.gs_memory_s* %51) #5
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  %53 = load i16, i16* %arrayidx44, align 2, !tbaa !42
  %arrayidx45 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  %54 = load i16, i16* %arrayidx45, align 2, !tbaa !42
  %arrayidx46 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  %55 = load i16, i16* %arrayidx46, align 2, !tbaa !42
  %arrayidx47 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  %56 = load i16, i16* %arrayidx47, align 2, !tbaa !42
  %57 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_spotn_cm(%struct.gx_device_s* %52, i16 signext %53, i16 signext %54, i16 signext %55, i16 signext %56, i16* %57) #5
  %58 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.42
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i8** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_spotn_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %xdev = alloca %struct.psd_device_s*, align 8
  %n = alloca i32, align 4
  %link = alloca i8*, align 8
  %i = alloca i32, align 4
  %in = alloca [4 x i16], align 2
  %tmp = alloca [15 x i16], align 16
  %outn = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !42
  store i16 %m, i16* %m.addr, align 2, !tbaa !42
  store i16 %y, i16* %y.addr, align 2, !tbaa !42
  store i16 %k, i16* %k.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.psd_device_s*
  store %struct.psd_device_s* %2, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %4, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %5 = load i32, i32* %num_separations, align 4, !tbaa !67
  store i32 %5, i32* %n, align 4, !tbaa !28
  %6 = bitcast i8** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_icc_link = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %7, i32 0, i32 78
  %8 = load i8*, i8** %cmyk_icc_link, align 8, !tbaa !78
  store i8* %8, i8** %link, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i8*, i8** %link, align 8, !tbaa !1
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = bitcast [4 x i16]* %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast [15 x i16]* %tmp to i8*
  call void @llvm.lifetime.start(i64 30, i8* %12) #2
  %13 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.psd_device_s*, %struct.psd_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %14, i32 0, i32 77
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile, align 8, !tbaa !79
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 1
  %16 = load i8, i8* %num_comps_out, align 1, !tbaa !105
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %outn, align 4, !tbaa !28
  %17 = load i16, i16* %c.addr, align 2, !tbaa !42
  %conv2 = sext i16 %17 to i32
  %shl = shl i32 %conv2, 1
  %18 = load i16, i16* %c.addr, align 2, !tbaa !42
  %conv3 = sext i16 %18 to i32
  %shr = ashr i32 %conv3, 11
  %add = add nsw i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !42
  %19 = load i16, i16* %m.addr, align 2, !tbaa !42
  %conv5 = sext i16 %19 to i32
  %shl6 = shl i32 %conv5, 1
  %20 = load i16, i16* %m.addr, align 2, !tbaa !42
  %conv7 = sext i16 %20 to i32
  %shr8 = ashr i32 %conv7, 11
  %add9 = add nsw i32 %shl6, %shr8
  %conv10 = trunc i32 %add9 to i16
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !42
  %21 = load i16, i16* %y.addr, align 2, !tbaa !42
  %conv12 = sext i16 %21 to i32
  %shl13 = shl i32 %conv12, 1
  %22 = load i16, i16* %y.addr, align 2, !tbaa !42
  %conv14 = sext i16 %22 to i32
  %shr15 = ashr i32 %conv14, 11
  %add16 = add nsw i32 %shl13, %shr15
  %conv17 = trunc i32 %add16 to i16
  %arrayidx18 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 2
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !42
  %23 = load i16, i16* %k.addr, align 2, !tbaa !42
  %conv19 = sext i16 %23 to i32
  %shl20 = shl i32 %conv19, 1
  %24 = load i16, i16* %k.addr, align 2, !tbaa !42
  %conv21 = sext i16 %24 to i32
  %shr22 = ashr i32 %conv21, 11
  %add23 = add nsw i32 %shl20, %shr22
  %conv24 = trunc i32 %add23 to i16
  %arrayidx25 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 3
  store i16 %conv24, i16* %arrayidx25, align 2, !tbaa !42
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %link, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gsicc_link_s*
  %arrayidx26 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 0
  %28 = bitcast i16* %arrayidx26 to i8*
  %arrayidx27 = getelementptr inbounds [15 x i16], [15 x i16]* %tmp, i32 0, i64 0
  %29 = bitcast i16* %arrayidx27 to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %25, %struct.gsicc_link_s* %27, i8* %28, i8* %29, i32 2) #5
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %30 = load i32, i32* %i, align 4, !tbaa !28
  %31 = load i32, i32* %outn, align 4, !tbaa !28
  %cmp28 = icmp slt i32 %30, %31
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds [15 x i16], [15 x i16]* %tmp, i32 0, i64 %idxprom
  %33 = load i16, i16* %arrayidx30, align 2, !tbaa !42
  %conv31 = zext i16 %33 to i32
  %shr32 = ashr i32 %conv31, 1
  %34 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds [15 x i16], [15 x i16]* %tmp, i32 0, i64 %idxprom33
  %35 = load i16, i16* %arrayidx34, align 2, !tbaa !42
  %conv35 = zext i16 %35 to i32
  %shr36 = ashr i32 %conv35, 13
  %sub = sub nsw i32 %shr32, %shr36
  %conv37 = trunc i32 %sub to i16
  %36 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom38 = sext i32 %36 to i64
  %37 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %37, i64 %idxprom38
  store i16 %conv37, i16* %arrayidx39, align 2, !tbaa !42
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !28
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %for.end
  %39 = load i32, i32* %i, align 4, !tbaa !28
  %40 = load i32, i32* %n, align 4, !tbaa !28
  %add41 = add nsw i32 %40, 4
  %cmp42 = icmp slt i32 %39, %add41
  br i1 %cmp42, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %for.cond.40
  %41 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom45 = sext i32 %41 to i64
  %42 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i16, i16* %42, i64 %idxprom45
  store i16 0, i16* %arrayidx46, align 2, !tbaa !42
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.44
  %43 = load i32, i32* %i, align 4, !tbaa !28
  %inc48 = add nsw i32 %43, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !28
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  %44 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast [15 x i16]* %tmp to i8*
  call void @llvm.lifetime.end(i64 30, i8* %45) #2
  %46 = bitcast [4 x i16]* %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %47 = load i16, i16* %c.addr, align 2, !tbaa !42
  %48 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %48, i64 0
  store i16 %47, i16* %arrayidx50, align 2, !tbaa !42
  %49 = load i16, i16* %m.addr, align 2, !tbaa !42
  %50 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %50, i64 1
  store i16 %49, i16* %arrayidx51, align 2, !tbaa !42
  %51 = load i16, i16* %y.addr, align 2, !tbaa !42
  %52 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i16, i16* %52, i64 2
  store i16 %51, i16* %arrayidx52, align 2, !tbaa !42
  %53 = load i16, i16* %k.addr, align 2, !tbaa !42
  %54 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i16, i16* %54, i64 3
  store i16 %53, i16* %arrayidx53, align 2, !tbaa !42
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.61, %if.else
  %55 = load i32, i32* %i, align 4, !tbaa !28
  %56 = load i32, i32* %n, align 4, !tbaa !28
  %cmp55 = icmp slt i32 %55, %56
  br i1 %cmp55, label %for.body.57, label %for.end.63

for.body.57:                                      ; preds = %for.cond.54
  %57 = load i32, i32* %i, align 4, !tbaa !28
  %add58 = add nsw i32 4, %57
  %idxprom59 = sext i32 %add58 to i64
  %58 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i16, i16* %58, i64 %idxprom59
  store i16 0, i16* %arrayidx60, align 2, !tbaa !42
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.57
  %59 = load i32, i32* %i, align 4, !tbaa !28
  %inc62 = add nsw i32 %59, 1
  store i32 %inc62, i32* %i, align 4, !tbaa !28
  br label %for.cond.54

for.end.63:                                       ; preds = %for.cond.54
  br label %if.end

if.end:                                           ; preds = %for.end.63, %for.end.49
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i8** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast %struct.psd_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  ret void
}

declare void @gscms_transform_color(%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32) #0

declare void @color_rgb_to_cmyk(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_psdgray_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %gray.addr, align 2, !tbaa !42
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %0, i16* %arrayidx, align 2, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_psdgray_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !42
  store i16 %g, i16* %g.addr, align 2, !tbaa !42
  store i16 %b, i16* %b.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %r.addr, align 2, !tbaa !42
  %1 = load i16, i16* %g.addr, align 2, !tbaa !42
  %2 = load i16, i16* %b.addr, align 2, !tbaa !42
  %call = call signext i16 @color_rgb_to_gray(i16 signext %0, i16 signext %1, i16 signext %2, %struct.gs_imager_state_s* null) #5
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !42
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_psdgray_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !42
  store i16 %m, i16* %m.addr, align 2, !tbaa !42
  store i16 %y, i16* %y.addr, align 2, !tbaa !42
  store i16 %k, i16* %k.addr, align 2, !tbaa !42
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %c.addr, align 2, !tbaa !42
  %1 = load i16, i16* %m.addr, align 2, !tbaa !42
  %2 = load i16, i16* %y.addr, align 2, !tbaa !42
  %3 = load i16, i16* %k.addr, align 2, !tbaa !42
  %call = call signext i16 @color_cmyk_to_gray(i16 signext %0, i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* null) #5
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !42
  ret void
}

declare signext i16 @color_rgb_to_gray(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*) #0

declare signext i16 @color_cmyk_to_gray(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*) #0

declare i32 @gx_downscaler_scale(i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @psd_write_image_data(%struct.psd_write_ctx* %xc, %struct.gx_device_printer_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %xc.addr = alloca %struct.psd_write_ctx*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %raster_plane = alloca i32, align 4
  %planes = alloca [64 x i8*], align 16
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sep_line = alloca i8*, align 8
  %base_bytes_pp = alloca i32, align 4
  %chan_idx = alloca i32, align 4
  %unpacked = alloca i8*, align 8
  %num_comp = alloca i32, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %ds = alloca %struct.gx_downscaler_s, align 8
  %psd_dev = alloca %struct.psd_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  %data_pos = alloca i32, align 4
  store %struct.psd_write_ctx* %xc, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %raster_plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !5
  %mul = mul nsw i32 %2, 8
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %raster_plane, align 4, !tbaa !28
  %3 = bitcast [64 x i8*]* %planes to i8*
  call void @llvm.lifetime.start(i64 512, i8* %3) #2
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %code, align 4, !tbaa !28
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = bitcast i8** %sep_line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp1 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %9, i32 0, i32 3
  %10 = load i32, i32* %base_bytes_pp1, align 4, !tbaa !34
  store i32 %10, i32* %base_bytes_pp, align 4, !tbaa !28
  %11 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i8** %unpacked to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %num_channels = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %14, i32 0, i32 5
  %15 = load i32, i32* %num_channels, align 4, !tbaa !35
  store i32 %15, i32* %num_comp, align 4, !tbaa !28
  %16 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %16) #2
  %17 = bitcast %struct.gx_downscaler_s* %ds to i8*
  call void @llvm.lifetime.start(i64 624, i8* %17) #2
  %18 = bitcast %struct.gx_downscaler_s* %ds to i8*
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 624, i32 8, i1 false)
  %19 = bitcast %struct.psd_device_s** %psd_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_printer_s* %20 to %struct.psd_device_s*
  store %struct.psd_device_s* %21, %struct.psd_device_s** %psd_dev, align 8, !tbaa !1
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 292683793, i64* %options, align 8, !tbaa !106
  %x_offset = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 2
  store i32 0, i32* %x_offset, align 4, !tbaa !108
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width2, align 4, !tbaa !5
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %25 = load i16, i16* %depth, align 2, !tbaa !109
  %conv = zext i16 %25 to i32
  %mul3 = mul nsw i32 %23, %conv
  %add4 = add nsw i32 %mul3, 63
  %shr5 = ashr i32 %add4, 6
  %shl6 = shl i32 %shr5, 3
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 4
  store i32 %shl6, i32* %raster, align 4, !tbaa !110
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !111
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !112
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !111
  %31 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width8 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %31, i32 0, i32 1
  %32 = load i32, i32* %width8, align 4, !tbaa !39
  %call = call i8* %28(%struct.gs_memory_s* %30, i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0)) #5
  store i8* %call, i8** %sep_line, align 8, !tbaa !1
  store i32 0, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %34 = load i32, i32* %num_comp, align 4, !tbaa !28
  %cmp = icmp slt i32 %33, %34
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory10 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 3
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory10, align 8, !tbaa !111
  %procs11 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %36, i32 0, i32 1
  %alloc_bytes12 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs11, i32 0, i32 7
  %37 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes12, align 8, !tbaa !112
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !111
  %40 = load i32, i32* %raster_plane, align 4, !tbaa !28
  %call14 = call i8* %37(%struct.gs_memory_s* %39, i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0)) #5
  %41 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %planes, i32 0, i64 %idxprom
  store i8* %call14, i8** %arrayidx, align 8, !tbaa !1
  %42 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom15 = sext i32 %42 to i64
  %arrayidx16 = getelementptr inbounds [64 x i8*], [64 x i8*]* %planes, i32 0, i64 %idxprom15
  %43 = load i8*, i8** %arrayidx16, align 8, !tbaa !1
  %44 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom17 = sext i32 %44 to i64
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom17
  store i8* %43, i8** %arrayidx18, align 8, !tbaa !1
  %45 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom19 = sext i32 %45 to i64
  %data20 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data20, i32 0, i64 %idxprom19
  %46 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %46, null
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %47 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %48 = load i8*, i8** %sep_line, align 8, !tbaa !1
  %cmp24 = icmp eq i8* %48, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

if.end.27:                                        ; preds = %for.end
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gx_device_printer_s* %49 to %struct.gx_device_s*
  %51 = load i32, i32* %num_comp, align 4, !tbaa !28
  %52 = load %struct.psd_device_s*, %struct.psd_device_s** %psd_dev, align 8, !tbaa !1
  %downscale_factor = getelementptr inbounds %struct.psd_device_s, %struct.psd_device_s* %52, i32 0, i32 71
  %53 = load i64, i64* %downscale_factor, align 8, !tbaa !22
  %conv28 = trunc i64 %53 to i32
  %call29 = call i32 @gx_downscaler_init_planar(%struct.gx_downscaler_s* %ds, %struct.gx_device_s* %50, %struct.gs_get_bits_params_s* %params, i32 %51, i32 %conv28, i32 0, i32 8, i32 8) #5
  store i32 %call29, i32* %code, align 4, !tbaa !28
  %54 = load i32, i32* %code, align 4, !tbaa !28
  %cmp30 = icmp slt i32 %54, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.27
  br label %cleanup.95

if.end.33:                                        ; preds = %if.end.27
  store i32 0, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.92, %if.end.33
  %55 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %56 = load i32, i32* %num_comp, align 4, !tbaa !28
  %cmp35 = icmp slt i32 %55, %56
  br i1 %cmp35, label %for.body.37, label %for.end.94

for.body.37:                                      ; preds = %for.cond.34
  %57 = bitcast i32* %data_pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom38 = sext i32 %58 to i64
  %59 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %chnl_to_position = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %59, i32 0, i32 7
  %arrayidx39 = getelementptr inbounds [64 x i32], [64 x i32]* %chnl_to_position, i32 0, i64 %idxprom38
  %60 = load i32, i32* %arrayidx39, align 4, !tbaa !28
  store i32 %60, i32* %data_pos, align 4, !tbaa !28
  %61 = load i32, i32* %data_pos, align 4, !tbaa !28
  %cmp40 = icmp sge i32 %61, 0
  br i1 %cmp40, label %if.then.42, label %if.else.81

if.then.42:                                       ; preds = %for.body.37
  store i32 0, i32* %j, align 4, !tbaa !28
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.78, %if.then.42
  %62 = load i32, i32* %j, align 4, !tbaa !28
  %63 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %63, i32 0, i32 2
  %64 = load i32, i32* %height, align 4, !tbaa !40
  %cmp44 = icmp slt i32 %62, %64
  br i1 %cmp44, label %for.body.46, label %for.end.80

for.body.46:                                      ; preds = %for.cond.43
  %65 = load i32, i32* %j, align 4, !tbaa !28
  %call47 = call i32 @gx_downscaler_get_bits_rectangle(%struct.gx_downscaler_s* %ds, %struct.gs_get_bits_params_s* %params, i32 %65) #5
  store i32 %call47, i32* %code, align 4, !tbaa !28
  %66 = load i32, i32* %code, align 4, !tbaa !28
  %cmp48 = icmp slt i32 %66, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body.46
  store i32 5, i32* %cleanup.dest.slot
  br label %cleanup

if.end.51:                                        ; preds = %for.body.46
  %67 = load i32, i32* %data_pos, align 4, !tbaa !28
  %idxprom52 = sext i32 %67 to i64
  %data53 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data53, i32 0, i64 %idxprom52
  %68 = load i8*, i8** %arrayidx54, align 8, !tbaa !1
  store i8* %68, i8** %unpacked, align 8, !tbaa !1
  %69 = load i32, i32* %base_bytes_pp, align 4, !tbaa !28
  %cmp55 = icmp eq i32 %69, 3
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %if.end.51
  %70 = load i8*, i8** %sep_line, align 8, !tbaa !1
  %71 = load i8*, i8** %unpacked, align 8, !tbaa !1
  %72 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width58 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %72, i32 0, i32 1
  %73 = load i32, i32* %width58, align 4, !tbaa !39
  %conv59 = sext i32 %73 to i64
  %call60 = call i8* @memcpy(i8* %70, i8* %71, i64 %conv59) #7
  br label %if.end.75

if.else:                                          ; preds = %if.end.51
  store i32 0, i32* %i, align 4, !tbaa !28
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.72, %if.else
  %74 = load i32, i32* %i, align 4, !tbaa !28
  %75 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width62 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %75, i32 0, i32 1
  %76 = load i32, i32* %width62, align 4, !tbaa !39
  %cmp63 = icmp slt i32 %74, %76
  br i1 %cmp63, label %for.body.65, label %for.end.74

for.body.65:                                      ; preds = %for.cond.61
  %77 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom66 = sext i32 %77 to i64
  %78 = load i8*, i8** %unpacked, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %78, i64 %idxprom66
  %79 = load i8, i8* %arrayidx67, align 1, !tbaa !41
  %conv68 = zext i8 %79 to i32
  %sub = sub nsw i32 255, %conv68
  %conv69 = trunc i32 %sub to i8
  %80 = load i32, i32* %i, align 4, !tbaa !28
  %idxprom70 = sext i32 %80 to i64
  %81 = load i8*, i8** %sep_line, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %81, i64 %idxprom70
  store i8 %conv69, i8* %arrayidx71, align 1, !tbaa !41
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.65
  %82 = load i32, i32* %i, align 4, !tbaa !28
  %inc73 = add nsw i32 %82, 1
  store i32 %inc73, i32* %i, align 4, !tbaa !28
  br label %for.cond.61

for.end.74:                                       ; preds = %for.cond.61
  br label %if.end.75

if.end.75:                                        ; preds = %for.end.74, %if.then.57
  %83 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %84 = load i8*, i8** %sep_line, align 8, !tbaa !1
  %85 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width76 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %85, i32 0, i32 1
  %86 = load i32, i32* %width76, align 4, !tbaa !39
  %call77 = call i32 @psd_write(%struct.psd_write_ctx* %83, i8* %84, i32 %86) #5
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.75
  %87 = load i32, i32* %j, align 4, !tbaa !28
  %inc79 = add nsw i32 %87, 1
  store i32 %inc79, i32* %j, align 4, !tbaa !28
  br label %for.cond.43

for.end.80:                                       ; preds = %for.cond.43
  br label %if.end.91

if.else.81:                                       ; preds = %for.body.37
  %88 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %cmp82 = icmp slt i32 %88, 4
  br i1 %cmp82, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %if.else.81
  %89 = load i8*, i8** %sep_line, align 8, !tbaa !1
  %90 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width85 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %90, i32 0, i32 1
  %91 = load i32, i32* %width85, align 4, !tbaa !39
  %conv86 = sext i32 %91 to i64
  %call87 = call i8* @memset(i8* %89, i32 255, i64 %conv86) #7
  %92 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %93 = load i8*, i8** %sep_line, align 8, !tbaa !1
  %94 = load %struct.psd_write_ctx*, %struct.psd_write_ctx** %xc.addr, align 8, !tbaa !1
  %width88 = getelementptr inbounds %struct.psd_write_ctx, %struct.psd_write_ctx* %94, i32 0, i32 1
  %95 = load i32, i32* %width88, align 4, !tbaa !39
  %call89 = call i32 @psd_write(%struct.psd_write_ctx* %92, i8* %93, i32 %95) #5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.84, %if.else.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.end.80
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.50, %if.end.91
  %96 = bitcast i32* %data_pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.112 [
    i32 0, label %cleanup.cont
    i32 5, label %cleanup.95
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.92

for.inc.92:                                       ; preds = %cleanup.cont
  %97 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc93 = add nsw i32 %97, 1
  store i32 %inc93, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.34

for.end.94:                                       ; preds = %for.cond.34
  br label %cleanup.95

cleanup.95:                                       ; preds = %for.end.94, %cleanup, %if.then.32
  call void @gx_downscaler_fin(%struct.gx_downscaler_s* %ds) #5
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory96 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %98, i32 0, i32 3
  %99 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory96, align 8, !tbaa !111
  %procs97 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %99, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs97, i32 0, i32 2
  %100 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !115
  %101 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %101, i32 0, i32 3
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory98, align 8, !tbaa !111
  %103 = load i8*, i8** %sep_line, align 8, !tbaa !1
  call void %100(%struct.gs_memory_s* %102, i8* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0)) #5
  store i32 0, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.109, %cleanup.95
  %104 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %105 = load i32, i32* %num_comp, align 4, !tbaa !28
  %cmp100 = icmp slt i32 %104, %105
  br i1 %cmp100, label %for.body.102, label %for.end.111

for.body.102:                                     ; preds = %for.cond.99
  %106 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !111
  %procs104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 1
  %free_object105 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs104, i32 0, i32 2
  %108 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object105, align 8, !tbaa !115
  %109 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory106 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !111
  %111 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %idxprom107 = sext i32 %111 to i64
  %arrayidx108 = getelementptr inbounds [64 x i8*], [64 x i8*]* %planes, i32 0, i64 %idxprom107
  %112 = load i8*, i8** %arrayidx108, align 8, !tbaa !1
  call void %108(%struct.gs_memory_s* %110, i8* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0)) #5
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.102
  %113 = load i32, i32* %chan_idx, align 4, !tbaa !28
  %inc110 = add nsw i32 %113, 1
  store i32 %inc110, i32* %chan_idx, align 4, !tbaa !28
  br label %for.cond.99

for.end.111:                                      ; preds = %for.cond.99
  %114 = load i32, i32* %code, align 4, !tbaa !28
  store i32 %114, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.112

cleanup.112:                                      ; preds = %for.end.111, %cleanup, %if.then.26, %if.then
  %115 = bitcast %struct.psd_device_s** %psd_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %115) #2
  %116 = bitcast %struct.gx_downscaler_s* %ds to i8*
  call void @llvm.lifetime.end(i64 624, i8* %116) #2
  %117 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %117) #2
  %118 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i8** %unpacked to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #2
  %120 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i8** %sep_line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast [64 x i8*]* %planes to i8*
  call void @llvm.lifetime.end(i64 512, i8* %126) #2
  %127 = bitcast i32* %raster_plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @gx_downscaler_init_planar(%struct.gx_downscaler_s*, %struct.gx_device_s*, %struct.gs_get_bits_params_s*, i32, i32, i32, i32, i32) #0

declare i32 @gx_downscaler_get_bits_rectangle(%struct.gx_downscaler_s*, %struct.gs_get_bits_params_s*, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare void @gx_downscaler_fin(%struct.gx_downscaler_s*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 832}
!6 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
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
!19 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !20, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!20 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!21 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!22 = !{!23, !9, i64 21648}
!23 = !{!"psd_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !24, i64 18472, !26, i64 20872, !3, i64 21644, !9, i64 21648, !7, i64 21656, !3, i64 21660, !2, i64 21920, !2, i64 21928, !3, i64 21936, !2, i64 22192, !2, i64 22200, !3, i64 22208, !2, i64 22464, !2, i64 22472, !7, i64 22480}
!24 = !{!"gs_devn_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !25, i64 32, !7, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !25, i64 1368}
!25 = !{!"gs_separations_s", !7, i64 0, !3, i64 8}
!26 = !{!"equivalent_cmyk_color_params_s", !7, i64 0, !3, i64 4}
!27 = !{!6, !7, i64 836}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !2, i64 0}
!30 = !{!"", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !3, i64 28, !3, i64 284, !7, i64 540}
!31 = !{!32, !2, i64 18480}
!32 = !{!"gx_devn_prn_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !24, i64 18472, !26, i64 20872}
!33 = !{!32, !7, i64 18488}
!34 = !{!30, !7, i64 16}
!35 = !{!30, !7, i64 24}
!36 = !{!32, !7, i64 19536}
!37 = !{!32, !7, i64 18504}
!38 = !{!30, !7, i64 20}
!39 = !{!30, !7, i64 8}
!40 = !{!30, !7, i64 12}
!41 = !{!3, !3, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!44, !7, i64 0}
!44 = !{!"devn_separation_name_s", !7, i64 0, !2, i64 8}
!45 = !{!44, !2, i64 8}
!46 = !{!47, !7, i64 0}
!47 = !{!"cmyk_color_s", !7, i64 0, !11, i64 4, !11, i64 6, !11, i64 8, !11, i64 10}
!48 = !{!47, !11, i64 4}
!49 = !{!47, !11, i64 6}
!50 = !{!47, !11, i64 8}
!51 = !{!47, !11, i64 10}
!52 = !{!9, !9, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !3, i64 0}
!55 = !{!32, !7, i64 832}
!56 = !{!32, !7, i64 836}
!57 = !{!58, !2, i64 1680}
!58 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!59 = !{!60, !3, i64 0}
!60 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !61, i64 20, !9, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !62, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !8, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!61 = !{!"gs_range_icc_s", !3, i64 0}
!62 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!63 = !{!64, !2, i64 176}
!64 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !8, i64 200}
!65 = !{!23, !7, i64 22480}
!66 = !{!23, !7, i64 18496}
!67 = !{!23, !7, i64 18504}
!68 = !{!23, !7, i64 18488}
!69 = !{!58, !7, i64 100}
!70 = !{!58, !7, i64 96}
!71 = !{!23, !7, i64 21656}
!72 = !{!23, !7, i64 19536}
!73 = !{!23, !7, i64 18472}
!74 = !{!58, !11, i64 108}
!75 = !{!58, !3, i64 136}
!76 = !{!58, !2, i64 1104}
!77 = !{!64, !7, i64 168}
!78 = !{!23, !2, i64 22200}
!79 = !{!23, !2, i64 22192}
!80 = !{!60, !9, i64 288}
!81 = !{!60, !2, i64 304}
!82 = !{!60, !2, i64 296}
!83 = !{!23, !2, i64 21928}
!84 = !{!23, !2, i64 21920}
!85 = !{!23, !2, i64 22472}
!86 = !{!23, !2, i64 22464}
!87 = !{!23, !3, i64 21644}
!88 = !{i64 0, i64 4, !28, i64 4, i64 4, !28, i64 8, i64 4, !41, i64 12, i64 2, !42, i64 14, i64 1, !41, i64 16, i64 4, !28, i64 20, i64 4, !28, i64 24, i64 4, !28, i64 28, i64 4, !28, i64 32, i64 4, !28, i64 36, i64 4, !28, i64 40, i64 4, !41, i64 44, i64 64, !41, i64 108, i64 64, !41, i64 176, i64 512, !41, i64 688, i64 8, !1, i64 696, i64 4, !41, i64 704, i64 8, !52, i64 712, i64 4, !28}
!89 = !{!90, !2, i64 0}
!90 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!91 = !{!92, !2, i64 56}
!92 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!93 = !{!23, !2, i64 24}
!94 = !{!58, !2, i64 24}
!95 = !{!96, !7, i64 8}
!96 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!97 = !{!96, !2, i64 0}
!98 = !{!23, !2, i64 18480}
!99 = !{!23, !2, i64 784}
!100 = !{!23, !3, i64 104}
!101 = !{!102, !2, i64 32}
!102 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!103 = !{!102, !2, i64 40}
!104 = !{!24, !7, i64 1064}
!105 = !{!60, !3, i64 1}
!106 = !{!107, !9, i64 0}
!107 = !{!"gs_get_bits_params_s", !9, i64 0, !3, i64 8, !7, i64 520, !7, i64 524, !7, i64 528}
!108 = !{!107, !7, i64 520}
!109 = !{!6, !11, i64 108}
!110 = !{!107, !7, i64 528}
!111 = !{!6, !2, i64 24}
!112 = !{!113, !2, i64 64}
!113 = !{!"gs_memory_s", !2, i64 0, !114, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!114 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!115 = !{!113, !2, i64 24}
