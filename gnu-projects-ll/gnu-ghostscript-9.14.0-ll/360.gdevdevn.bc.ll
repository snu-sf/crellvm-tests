; ModuleID = './gdevdevn.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.struct_shared_procs_s = type opaque
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
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
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
%struct.gx_pattern_cache_s = type { %struct.gs_memory_s*, %struct.gx_color_tile_s*, i32, i32, i32, i64, i64, void (%struct.gx_pattern_cache_s*)* }
%struct.gx_color_tile_s = type { i64, i32, %struct.gs_uid_s, i32, i32, %struct.gs_matrix_s, %struct.gs_rect_s, %struct.gx_strip_bitmap_s, %struct.gx_strip_bitmap_s, %struct.gx_pattern_trans_s*, %union.gx_device_clist_s*, i8, i8, i8, [2 x i8], i32, i32, i32 }
%struct.gs_uid_s = type { i64, i64* }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gx_pattern_trans_s = type { %struct.gx_device_s*, i8*, %struct.gs_memory_s*, %struct.gx_pattern_trans_s*, %struct.gs_int_rect_s, i32, i32, i32, i32, i32, i32, %struct.pdf14_nonseparable_blending_procs_s*, i32, i32, %struct.gs_int_rect_s*, void (i32, i32, i32, i32, i32, i32, %struct.gx_color_tile_s*, %struct.gx_pattern_trans_s*)*, i32 (%struct.gx_image_enum_s*, i8*, i32, i32, i32, %struct.gx_device_s*)* }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.pdf14_nonseparable_blending_procs_s = type { void (i32, i8*, i8*, i8*)*, void (i32, i8*, i8*, i8*)* }
%struct.gx_image_enum_s = type opaque
%union.gx_device_clist_s = type { %struct.gx_device_clist_writer_s }
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
%struct.gs_pattern_type_s = type { i32, %struct.pp_ }
%struct.pp_ = type { i32 (%struct.gs_pattern_template_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_pattern_template_s*, %struct.gs_matrix_s*, %struct.gs_state_s*, %struct.gs_memory_s*)*, %struct.gs_pattern_template_s* (%struct.gs_pattern_instance_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.gs_pattern_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8* }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type { %struct.rc_header_s, %struct.gs_pattern_type_s*, %struct.gs_state_s*, i64 }
%struct.gs_paint_color_s = type { [64 x float] }
%struct.gs_pattern1_template_s = type { %struct.gs_pattern_type_s*, i32, %struct.gs_uid_s, i8*, i32, i32, i32, %struct.gs_rect_s, float, float, i32 (%struct.gs_client_color_s*, %struct.gs_state_s*)* }
%struct.clist_writer_cropping_buffer_s = type { i32, i32, i32, i32, %struct.clist_writer_cropping_buffer_s* }
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
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
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_clip_path_s = type opaque
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
%struct.pcx_header_s = type { i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, [48 x i8], i8, i8, i16, i16, [58 x i8] }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.gs_param_int_array_s = type { i32*, i32, i32 }
%struct.gx_devn_prn_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s }
%struct.gc_procs_common_s = type { i8* (i8*, %struct.gc_state_s*)*, void (%struct.gs_string_s*, %struct.gc_state_s*)*, void (%struct.gs_const_string_s*, %struct.gc_state_s*)*, void (%struct.gs_param_string_s*, %struct.gc_state_s*)* }
%struct.gs_string_s = type { i8*, i32 }

@bpc_to_depth.depths = internal constant [4 x [8 x i8]] [[8 x i8] c"\01\02\00\04\08\00\00\08", [8 x i8] c"\02\04\00\08\10\00\00\10", [8 x i8] c"\04\08\00\10\10\00\00\18", [8 x i8] c"\04\08\00\10 \00\00 "], align 16
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"devn_get_color_comp_index\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"CRDDefault\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"SeparationColorNames\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"SeparationOrder\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Separations\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"PageSpotColors\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c".EquivCMYKColors\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"devicen_put_params_no_sep_order\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"MaxSeparations\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"devn_free_params\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"devn_copy_params\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"./base/gdevdevn.c\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"List level = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"%3d%4d%4d %d \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@st_compressed_color_list = internal constant %struct.gs_memory_struct_type_s { i32 6168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @compressed_color_list_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @compressed_color_list_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"alloc_compressed_color_list\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"free_compressed_color_list\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"free_separation_names\00", align 1
@num_comp_bits = global [15 x i32] [i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 7, i32 6, i32 5, i32 5, i32 4, i32 4, i32 4], align 16
@comp_bit_factor = global [15 x i32] [i32 65793, i32 65793, i32 65793, i32 65793, i32 65793, i32 65793, i32 65793, i32 65793, i32 132104, i32 266305, i32 541200, i32 541200, i32 1118481, i32 1118481, i32 1118481], align 16
@.str.22 = private unnamed_addr constant [19 x i8] c"gx_devn_prn_device\00", align 1
@st_gx_devn_prn_device = constant %struct.gs_memory_struct_type_s { i32 21648, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gx_devn_prn_device_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gx_devn_prn_device_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @static_gx_devn_prn_device_finalize, i8* null }, align 8
@.str.23 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@DeviceCMYKComponents = global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* null], align 16
@spot_cmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @spotcmyk_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_devn_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_devn_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_devn_prn_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_devn_prn_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_devn_prn_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_devn_prn_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_devn_prn_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_devn_prn_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"spotcmyk\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_spotcmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s } { i32 21648, %struct.gx_device_procs_s* @spot_cmyk_procs, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 4, i32 0, i16 4, i8 0, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @spotcmyk_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, %struct.gs_devn_params_s { i32 1, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @DeviceCMYKComponents, i32 0, i32 0), i32 4, i32 0, i32 -1, %struct.gs_separations_s zeroinitializer, i32 0, [70 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.compressed_color_list_s* null, %struct.compressed_color_list_s* null, %struct.gs_separations_s zeroinitializer }, %struct.equivalent_cmyk_color_params_s zeroinitializer }, align 8
@devicen_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @spotcmyk_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_devn_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_devn_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_devn_prn_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @gx_devn_prn_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_devn_prn_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_devn_prn_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_devn_prn_update_spot_equivalent_colors, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_devn_prn_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"devicen\00", align 1
@gs_devicen_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s } { i32 21648, %struct.gx_device_procs_s* @devicen_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 4, i32 0, i16 32, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @spotcmyk_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, %struct.gs_devn_params_s { i32 8, i8** null, i32 0, i32 0, i32 -1, %struct.gs_separations_s zeroinitializer, i32 0, [70 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.compressed_color_list_s* null, %struct.compressed_color_list_s* null, %struct.gs_separations_s zeroinitializer }, %struct.equivalent_cmyk_color_params_s zeroinitializer }, align 8
@spotCMYK_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotcmyk_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotcmyk_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotcmyk_cm }, align 8
@.str.30 = private unnamed_addr constant [33 x i8] c"\00\00\FF\FFUU\92I\11\11\84!\10A@\81\01\01\02\01\04\01\08\01\10\01 \01@\01\80\01\00", align 1
@__func__.copy_color_list = private unnamed_addr constant [16 x i8] c"copy_color_list\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"copy_color_list allocation error\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"encode color list\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.33 = private unnamed_addr constant [24 x i8] c"spotcmyk_print_page(in)\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"spotcmyk_print_page(buf)\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"spotcmyk_print_page(spotname)\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"%ss%d\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"devn_write_pcx_file(outname)\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%s.pcx\00", align 1
@.str.41 = private unnamed_addr constant [29 x i8] c"spotcmyk_print_page(outname)\00", align 1
@pcx_header_prototype = internal constant %struct.pcx_header_s { i8 10, i8 0, i8 1, i8 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, [48 x i8] zeroinitializer, i8 0, i8 0, i16 0, i16 0, [58 x i8] zeroinitializer }, align 2
@.str.42 = private unnamed_addr constant [7 x i8] c"\00\00\00\FF\FF\FF\00", align 1
@pcx_ega_palette = internal constant [48 x i8] c"\00\00\00\00\00\AA\00\AA\00\00\AA\AA\AA\00\00\AA\00\AA\AA\AA\00\AA\AA\AAUUUUU\FFU\FFUU\FF\FF\FFUU\FFU\FF\FF\FFU\FF\FF\FF", align 16
@pcx_cmyk_palette = internal constant [48 x i8] c"\FF\FF\FF\00\00\00\FF\FF\00\0F\0F\00\FF\00\FF\0F\00\0F\FF\00\00\0F\00\00\00\FF\FF\00\0F\0F\00\FF\00\00\0F\00\00\00\FF\00\00\0F\1F\1F\1F\0F\0F\0F", align 16
@.str.43 = private unnamed_addr constant [16 x i8] c"pcx file buffer\00", align 1

; Function Attrs: nounwind uwtable
define void @gray_cs_to_devn_cm(%struct.gx_device_s* %dev, i32* %map, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %map.addr = alloca i32*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32* %map, i32** %map.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !7
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !20
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !20
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 3
  %8 = load i32, i32* %arrayidx1, align 4, !tbaa !20
  store i32 %8, i32* %i, align 4, !tbaa !20
  %cmp2 = icmp ne i32 %8, 64
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load i16, i16* %gray.addr, align 2, !tbaa !5
  %conv = sext i16 %9 to i32
  %sub3 = sub nsw i32 32760, %conv
  %conv4 = trunc i32 %sub3 to i16
  %10 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom5 = sext i32 %10 to i64
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom5
  store i16 %conv4, i16* %arrayidx6, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @rgb_cs_to_devn_cm(%struct.gx_device_s* %dev, i32* %map, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %map.addr = alloca i32*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %cmyk = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32* %map, i32** %map.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !5
  store i16 %g, i16* %g.addr, align 2, !tbaa !5
  store i16 %b, i16* %b.addr, align 2, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !7
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4, !tbaa !20
  %3 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !20
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %5 to i64
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !tbaa !20
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i16, i16* %r.addr, align 2, !tbaa !5
  %9 = load i16, i16* %g.addr, align 2, !tbaa !5
  %10 = load i16, i16* %b.addr, align 2, !tbaa !5
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  call void @color_rgb_to_cmyk(i16 signext %8, i16 signext %9, i16 signext %10, %struct.gs_imager_state_s* %11, i16* %arraydecay, %struct.gs_memory_s* %13) #5
  %14 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %14, i64 0
  %15 = load i32, i32* %arrayidx1, align 4, !tbaa !20
  store i32 %15, i32* %i, align 4, !tbaa !20
  %cmp2 = icmp ne i32 %15, 64
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %arrayidx3 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  %16 = load i16, i16* %arrayidx3, align 2, !tbaa !5
  %17 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom4 = sext i32 %17 to i64
  %18 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %18, i64 %idxprom4
  store i16 %16, i16* %arrayidx5, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %19 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i32, i32* %19, i64 1
  %20 = load i32, i32* %arrayidx6, align 4, !tbaa !20
  store i32 %20, i32* %i, align 4, !tbaa !20
  %cmp7 = icmp ne i32 %20, 64
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %arrayidx9 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  %21 = load i16, i16* %arrayidx9, align 2, !tbaa !5
  %22 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom10 = sext i32 %22 to i64
  %23 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %23, i64 %idxprom10
  store i16 %21, i16* %arrayidx11, align 2, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end
  %24 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i32, i32* %24, i64 2
  %25 = load i32, i32* %arrayidx13, align 4, !tbaa !20
  store i32 %25, i32* %i, align 4, !tbaa !20
  %cmp14 = icmp ne i32 %25, 64
  br i1 %cmp14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.end.12
  %arrayidx16 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  %26 = load i16, i16* %arrayidx16, align 2, !tbaa !5
  %27 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom17 = sext i32 %27 to i64
  %28 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %28, i64 %idxprom17
  store i16 %26, i16* %arrayidx18, align 2, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %if.end.12
  %29 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i32, i32* %29, i64 3
  %30 = load i32, i32* %arrayidx20, align 4, !tbaa !20
  store i32 %30, i32* %i, align 4, !tbaa !20
  %cmp21 = icmp ne i32 %30, 64
  br i1 %cmp21, label %if.then.22, label %if.end.26

if.then.22:                                       ; preds = %if.end.19
  %arrayidx23 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  %31 = load i16, i16* %arrayidx23, align 2, !tbaa !5
  %32 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom24 = sext i32 %32 to i64
  %33 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %33, i64 %idxprom24
  store i16 %31, i16* %arrayidx25, align 2, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.22, %if.end.19
  %34 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  ret void
}

declare void @color_rgb_to_cmyk(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #2

; Function Attrs: nounwind uwtable
define void @cmyk_cs_to_devn_cm(%struct.gx_device_s* %dev, i32* %map, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %map.addr = alloca i32*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32* %map, i32** %map.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !5
  store i16 %m, i16* %m.addr, align 2, !tbaa !5
  store i16 %y, i16* %y.addr, align 2, !tbaa !5
  store i16 %k, i16* %k.addr, align 2, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !7
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !20
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !20
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx1, align 4, !tbaa !20
  store i32 %8, i32* %i, align 4, !tbaa !20
  %cmp2 = icmp ne i32 %8, 64
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load i16, i16* %c.addr, align 2, !tbaa !5
  %10 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom3 = sext i32 %10 to i64
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %11, i64 %idxprom3
  store i16 %9, i16* %arrayidx4, align 2, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %12 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 1
  %13 = load i32, i32* %arrayidx5, align 4, !tbaa !20
  store i32 %13, i32* %i, align 4, !tbaa !20
  %cmp6 = icmp ne i32 %13, 64
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %14 = load i16, i16* %m.addr, align 2, !tbaa !5
  %15 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom8 = sext i32 %15 to i64
  %16 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds i16, i16* %16, i64 %idxprom8
  store i16 %14, i16* %arrayidx9, align 2, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  %17 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 2
  %18 = load i32, i32* %arrayidx11, align 4, !tbaa !20
  store i32 %18, i32* %i, align 4, !tbaa !20
  %cmp12 = icmp ne i32 %18, 64
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end.10
  %19 = load i16, i16* %y.addr, align 2, !tbaa !5
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom14 = sext i32 %20 to i64
  %21 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds i16, i16* %21, i64 %idxprom14
  store i16 %19, i16* %arrayidx15, align 2, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end.10
  %22 = load i32*, i32** %map.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 3
  %23 = load i32, i32* %arrayidx17, align 4, !tbaa !20
  store i32 %23, i32* %i, align 4, !tbaa !20
  %cmp18 = icmp ne i32 %23, 64
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.end.16
  %24 = load i16, i16* %k.addr, align 2, !tbaa !5
  %25 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom20 = sext i32 %25 to i64
  %26 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %26, i64 %idxprom20
  store i16 %24, i16* %arrayidx21, align 2, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.end.16
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @bpc_to_depth(i32 %ncomp, i32 %bpc) #0 {
entry:
  %retval = alloca i32, align 4
  %ncomp.addr = alloca i32, align 4
  %bpc.addr = alloca i32, align 4
  store i32 %ncomp, i32* %ncomp.addr, align 4, !tbaa !20
  store i32 %bpc, i32* %bpc.addr, align 4, !tbaa !20
  %0 = load i32, i32* %ncomp.addr, align 4, !tbaa !20
  %cmp = icmp sle i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %bpc.addr, align 4, !tbaa !20
  %cmp1 = icmp sle i32 %1, 8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %bpc.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i32, i32* %ncomp.addr, align 4, !tbaa !20
  %sub2 = sub nsw i32 %3, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @bpc_to_depth.depths, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !22
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %ncomp.addr, align 4, !tbaa !20
  %6 = load i32, i32* %bpc.addr, align 4, !tbaa !20
  %mul = mul nsw i32 %5, %6
  %add = add nsw i32 %mul, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @check_pcm_and_separation_names(%struct.gx_device_s* %dev, %struct.gs_devn_params_s* %pparams, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pparams.addr = alloca %struct.gs_devn_params_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %pcolor = alloca i8**, align 8
  %color_component_number = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %separations = alloca %struct.gs_separations_s*, align 8
  %num_spot = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pparams, %struct.gs_devn_params_s** %pparams.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !20
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !20
  %0 = bitcast i8*** %pcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pparams.addr, align 8, !tbaa !1
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %1, i32 0, i32 1
  %2 = load i8**, i8*** %std_colorant_names, align 8, !tbaa !23
  store i8** %2, i8*** %pcolor, align 8, !tbaa !1
  %3 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %color_component_number, align 4, !tbaa !20
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %tobool = icmp ne i8** %5, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %tobool1 = icmp ne i8* %7, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %conv = sext i32 %8 to i64
  %9 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %10) #6
  %cmp = icmp eq i64 %conv, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %11 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %12 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %14 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %conv3 = sext i32 %14 to i64
  %call4 = call i32 @strncmp(i8* %11, i8* %13, i64 %conv3) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %color_component_number, align 4, !tbaa !20
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

if.end:                                           ; preds = %land.lhs.true, %while.body
  %16 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %incdec.ptr, i8*** %pcolor, align 8, !tbaa !1
  %17 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %color_component_number, align 4, !tbaa !20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %entry
  %18 = bitcast %struct.gs_separations_s** %separations to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pparams.addr, align 8, !tbaa !1
  %separations9 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %19, i32 0, i32 5
  store %struct.gs_separations_s* %separations9, %struct.gs_separations_s** %separations, align 8, !tbaa !1
  %20 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  %21 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations, align 8, !tbaa !1
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %21, i32 0, i32 0
  %22 = load i32, i32* %num_separations, align 4, !tbaa !26
  store i32 %22, i32* %num_spot, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %23 = load i32, i32* %i, align 4, !tbaa !20
  %24 = load i32, i32* %num_spot, align 4, !tbaa !20
  %cmp10 = icmp slt i32 %23, %24
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx, i32 0, i32 0
  %27 = load i32, i32* %size, align 4, !tbaa !27
  %28 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %cmp12 = icmp eq i32 %27, %28
  br i1 %cmp12, label %land.lhs.true.14, label %if.end.27

land.lhs.true.14:                                 ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations, align 8, !tbaa !1
  %names16 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %30, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names16, i32 0, i64 %idxprom15
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx17, i32 0, i32 1
  %31 = load i8*, i8** %data, align 8, !tbaa !29
  %32 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %33 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations, align 8, !tbaa !1
  %names19 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %34, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names19, i32 0, i64 %idxprom18
  %size21 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx20, i32 0, i32 0
  %35 = load i32, i32* %size21, align 4, !tbaa !27
  %conv22 = sext i32 %35 to i64
  %call23 = call i32 @strncmp(i8* %31, i8* %32, i64 %conv22) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.14
  %36 = load i32, i32* %color_component_number, align 4, !tbaa !20
  store i32 %36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %land.lhs.true.14, %for.body
  %37 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %color_component_number, align 4, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %38 = load i32, i32* %i, align 4, !tbaa !20
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.26
  %39 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast %struct.gs_separations_s** %separations to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.31 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.31

cleanup.31:                                       ; preds = %cleanup.cont, %cleanup, %if.then.7
  %41 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i8*** %pcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @devn_get_color_comp_index(%struct.gx_device_s* %dev, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pequiv_colors, i8* %pname, i32 %name_size, i32 %component_type, i32 %auto_spot_colors) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pequiv_colors.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %auto_spot_colors.addr = alloca i32, align 4
  %num_order = alloca i32, align 4
  %color_component_number = alloca i32, align 4
  %max_spot_colors = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %sep_name = alloca i8*, align 8
  %separations27 = alloca %struct.gs_separations_s*, align 8
  %sep_num = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pequiv_colors, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !20
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !20
  store i32 %auto_spot_colors, i32* %auto_spot_colors.addr, align 4, !tbaa !20
  %0 = bitcast i32* %num_order to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %1, i32 0, i32 6
  %2 = load i32, i32* %num_separation_order_names, align 4, !tbaa !30
  store i32 %2, i32* %num_order, align 4, !tbaa !20
  %3 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %color_component_number, align 4, !tbaa !20
  %4 = bitcast i32* %max_spot_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 58, i32* %max_spot_colors, align 4, !tbaa !20
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %8 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %9 = load i32, i32* %component_type.addr, align 4, !tbaa !20
  %call = call i32 @check_pcm_and_separation_names(%struct.gx_device_s* %5, %struct.gs_devn_params_s* %6, i8* %7, i32 %8, i32 %9) #5
  store i32 %call, i32* %color_component_number, align 4, !tbaa !20
  %10 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %cmp = icmp sge i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %num_order, align 4, !tbaa !20
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %12 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %13, i32 0, i32 7
  %arrayidx = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !20
  store i32 %14, i32* %color_component_number, align 4, !tbaa !20
  br label %if.end.4

if.else:                                          ; preds = %if.then
  %15 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 0
  %17 = load i32, i32* %max_components, align 4, !tbaa !31
  %cmp2 = icmp sge i32 %15, %17
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store i32 64, i32* %color_component_number, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then.1
  %18 = load i32, i32* %color_component_number, align 4, !tbaa !20
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.5:                                         ; preds = %entry
  %19 = load i32, i32* %component_type.addr, align 4, !tbaa !20
  %cmp6 = icmp ne i32 %19, 1
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %20 = load i32, i32* %auto_spot_colors.addr, align 4, !tbaa !20
  %cmp7 = icmp eq i32 %20, 0
  br i1 %cmp7, label %if.then.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %21 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_separation_order_names9 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %21, i32 0, i32 6
  %22 = load i32, i32* %num_separation_order_names9, align 4, !tbaa !30
  %cmp10 = icmp ne i32 %22, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.end.5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.12:                                        ; preds = %lor.lhs.false.8
  %23 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %24 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %conv = sext i32 %24 to i64
  %call13 = call i32 @strncmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 %conv) #6
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.17:                                        ; preds = %if.end.12
  %25 = load i32, i32* %auto_spot_colors.addr, align 4, !tbaa !20
  %cmp18 = icmp eq i32 %25, 1
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.17
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 11
  %max_components22 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info21, i32 0, i32 0
  %27 = load i32, i32* %max_components22, align 4, !tbaa !31
  %28 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %28, i32 0, i32 2
  %29 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !32
  %sub = sub nsw i32 %27, %29
  store i32 %sub, i32* %max_spot_colors, align 4, !tbaa !20
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.17
  %30 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %30, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %31 = load i32, i32* %num_separations, align 4, !tbaa !33
  %32 = load i32, i32* %max_spot_colors, align 4, !tbaa !20
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %if.then.26, label %if.end.57

if.then.26:                                       ; preds = %if.end.23
  %33 = bitcast i8** %sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_separations_s** %separations27 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations28 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %35, i32 0, i32 5
  store %struct.gs_separations_s* %separations28, %struct.gs_separations_s** %separations27, align 8, !tbaa !1
  %36 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations27, align 8, !tbaa !1
  %num_separations29 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %37, i32 0, i32 0
  %38 = load i32, i32* %num_separations29, align 4, !tbaa !26
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %num_separations29, align 4, !tbaa !26
  store i32 %38, i32* %sep_num, align 4, !tbaa !20
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %40, i32 0, i32 0
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %42 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !21
  %stable_memory31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 0
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory31, align 8, !tbaa !34
  %46 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %call32 = call i8* %42(%struct.gs_memory_s* %45, i32 %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #5
  store i8* %call32, i8** %sep_name, align 8, !tbaa !1
  %47 = load i8*, i8** %sep_name, align 8, !tbaa !1
  %48 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %49 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %conv33 = sext i32 %49 to i64
  %call34 = call i8* @memcpy(i8* %47, i8* %48, i64 %conv33) #7
  %50 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %51 = load i32, i32* %sep_num, align 4, !tbaa !20
  %idxprom35 = sext i32 %51 to i64
  %52 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations27, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %52, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom35
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx36, i32 0, i32 0
  store i32 %50, i32* %size, align 4, !tbaa !27
  %53 = load i8*, i8** %sep_name, align 8, !tbaa !1
  %54 = load i32, i32* %sep_num, align 4, !tbaa !20
  %idxprom37 = sext i32 %54 to i64
  %55 = load %struct.gs_separations_s*, %struct.gs_separations_s** %separations27, align 8, !tbaa !1
  %names38 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %55, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names38, i32 0, i64 %idxprom37
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx39, i32 0, i32 1
  store i8* %53, i8** %data, align 8, !tbaa !29
  %56 = load i32, i32* %sep_num, align 4, !tbaa !20
  %57 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_std_colorant_names40 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %57, i32 0, i32 2
  %58 = load i32, i32* %num_std_colorant_names40, align 4, !tbaa !32
  %add = add nsw i32 %56, %58
  store i32 %add, i32* %color_component_number, align 4, !tbaa !20
  %59 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %60, i32 0, i32 11
  %max_components42 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info41, i32 0, i32 0
  %61 = load i32, i32* %max_components42, align 4, !tbaa !31
  %cmp43 = icmp sge i32 %59, %61
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.then.26
  store i32 64, i32* %color_component_number, align 4, !tbaa !20
  br label %if.end.50

if.else.46:                                       ; preds = %if.then.26
  %62 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %63 = load i32, i32* %color_component_number, align 4, !tbaa !20
  %idxprom47 = sext i32 %63 to i64
  %64 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separation_order_map48 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %64, i32 0, i32 7
  %arrayidx49 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map48, i32 0, i64 %idxprom47
  store i32 %62, i32* %arrayidx49, align 4, !tbaa !20
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.46, %if.then.45
  %65 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %cmp51 = icmp ne %struct.equivalent_cmyk_color_params_s* %65, null
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %66 = load i32, i32* %sep_num, align 4, !tbaa !20
  %idxprom54 = sext i32 %66 to i64
  %67 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %67, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom54
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx55, i32 0, i32 0
  store i32 0, i32* %color_info_valid, align 4, !tbaa !38
  %68 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %all_color_info_valid = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %68, i32 0, i32 0
  store i32 0, i32* %all_color_info_valid, align 4, !tbaa !40
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %69 = bitcast i32* %sep_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  %70 = bitcast %struct.gs_separations_s** %separations27 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast i8** %sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.23
  %72 = load i32, i32* %color_component_number, align 4, !tbaa !20
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.57, %if.then.16, %if.then.11, %if.end.4
  %73 = bitcast i32* %max_spot_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %num_order to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define i32 @devn_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pequiv_colors) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pequiv_colors.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %spot_num = alloca i32, align 4
  %seprs = alloca i32, align 4
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %sona = alloca %struct.gs_param_string_array_s, align 8
  %equiv_cmyk = alloca %struct.gs_param_int_array_s, align 8
  %equiv_elements = alloca [290 x i32], align 16
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pequiv_colors, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  %2 = bitcast i32* %spot_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %seprs, align 4, !tbaa !20
  %4 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #1
  %5 = bitcast %struct.gs_param_string_array_s* %sona to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_param_int_array_s* %equiv_cmyk to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast [290 x i32]* %equiv_elements to i8*
  call void @llvm.lifetime.start(i64 1160, i8* %7) #1
  %8 = bitcast [290 x i32]* %equiv_elements to i8*
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 1160, i32 16, i1 false)
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !42
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !44
  %persistent = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !45
  %data1 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data1, align 8, !tbaa !42
  %size2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 1
  store i32 0, i32* %size2, align 4, !tbaa !44
  %persistent3 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 2
  store i32 0, i32* %persistent3, align 4, !tbaa !45
  %9 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.equivalent_cmyk_color_params_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %spot_num, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %spot_num, align 4, !tbaa !20
  %11 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %11, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %12 = load i32, i32* %num_separations, align 4, !tbaa !33
  %cmp4 = icmp slt i32 %10, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx, i32 0, i32 0
  %15 = load i32, i32* %color_info_valid, align 4, !tbaa !38
  %tobool = icmp ne i32 %15, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %16 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  %idxprom5 = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds [290 x i32], [290 x i32]* %equiv_elements, i32 0, i64 %idxprom5
  store i32 %cond, i32* %arrayidx6, align 4, !tbaa !20
  %17 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color8 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %18, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color8, i32 0, i64 %idxprom7
  %c = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx9, i32 0, i32 1
  %19 = load i16, i16* %c, align 2, !tbaa !46
  %conv = sext i16 %19 to i32
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %inc10 = add nsw i32 %20, 1
  store i32 %inc10, i32* %i, align 4, !tbaa !20
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [290 x i32], [290 x i32]* %equiv_elements, i32 0, i64 %idxprom11
  store i32 %conv, i32* %arrayidx12, align 4, !tbaa !20
  %21 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color14 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %22, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color14, i32 0, i64 %idxprom13
  %m = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx15, i32 0, i32 2
  %23 = load i16, i16* %m, align 2, !tbaa !47
  %conv16 = sext i16 %23 to i32
  %24 = load i32, i32* %i, align 4, !tbaa !20
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !20
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [290 x i32], [290 x i32]* %equiv_elements, i32 0, i64 %idxprom18
  store i32 %conv16, i32* %arrayidx19, align 4, !tbaa !20
  %25 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom20 = sext i32 %25 to i64
  %26 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color21 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %26, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color21, i32 0, i64 %idxprom20
  %y = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx22, i32 0, i32 3
  %27 = load i16, i16* %y, align 2, !tbaa !48
  %conv23 = sext i16 %27 to i32
  %28 = load i32, i32* %i, align 4, !tbaa !20
  %inc24 = add nsw i32 %28, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !20
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds [290 x i32], [290 x i32]* %equiv_elements, i32 0, i64 %idxprom25
  store i32 %conv23, i32* %arrayidx26, align 4, !tbaa !20
  %29 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color28 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %30, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color28, i32 0, i64 %idxprom27
  %k = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx29, i32 0, i32 4
  %31 = load i16, i16* %k, align 2, !tbaa !49
  %conv30 = sext i16 %31 to i32
  %32 = load i32, i32* %i, align 4, !tbaa !20
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !20
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds [290 x i32], [290 x i32]* %equiv_elements, i32 0, i64 %idxprom32
  store i32 %conv30, i32* %arrayidx33, align 4, !tbaa !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %spot_num, align 4, !tbaa !20
  %inc34 = add nsw i32 %33, 1
  store i32 %inc34, i32* %spot_num, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %arraydecay = getelementptr inbounds [290 x i32], [290 x i32]* %equiv_elements, i32 0, i32 0
  %data35 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  store i32* %arraydecay, i32** %data35, align 8, !tbaa !50
  %34 = load i32, i32* %i, align 4, !tbaa !20
  %size36 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 1
  store i32 %34, i32* %size36, align 4, !tbaa !52
  %persistent37 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 2
  store i32 0, i32* %persistent37, align 4, !tbaa !53
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @sample_device_crd_get_params(%struct.gx_device_s* %35, %struct.gs_param_list_s* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %cmp38 = icmp slt i32 %call, 0
  br i1 %cmp38, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call40 = call i32 @param_write_name_array(%struct.gs_param_list_s* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #5
  store i32 %call40, i32* %code, align 4, !tbaa !20
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then.55, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call44 = call i32 @param_write_name_array(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_string_array_s* %sona) #5
  store i32 %call44, i32* %code, align 4, !tbaa !20
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.then.55, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call48 = call i32 @param_write_bool(%struct.gs_param_list_s* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32* %seprs) #5
  store i32 %call48, i32* %code, align 4, !tbaa !20
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.55, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %page_spot_colors = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %41, i32 0, i32 4
  %call52 = call i32 @param_write_int(%struct.gs_param_list_s* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32* %page_spot_colors) #5
  store i32 %call52, i32* %code, align 4, !tbaa !20
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false, %if.end
  %42 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %42, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false.51
  %43 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations57 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %43, i32 0, i32 5
  %num_separations58 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations57, i32 0, i32 0
  %44 = load i32, i32* %num_separations58, align 4, !tbaa !33
  %cmp59 = icmp sgt i32 %44, 0
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.56
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call62 = call i32 @param_write_int_array(%struct.gs_param_list_s* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_int_array_s* %equiv_cmyk) #5
  store i32 %call62, i32* %code, align 4, !tbaa !20
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.56
  %46 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.63, %if.then.55
  %47 = bitcast [290 x i32]* %equiv_elements to i8*
  call void @llvm.lifetime.end(i64 1160, i8* %47) #1
  %48 = bitcast %struct.gs_param_int_array_s* %equiv_cmyk to i8*
  call void @llvm.lifetime.end(i64 16, i8* %48) #1
  %49 = bitcast %struct.gs_param_string_array_s* %sona to i8*
  call void @llvm.lifetime.end(i64 16, i8* %49) #1
  %50 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %50) #1
  %51 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %spot_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #1
  %54 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @sample_device_crd_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i8*) #2

declare i32 @param_write_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #2

declare i32 @param_write_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

; Function Attrs: nounwind uwtable
define i32 @devn_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pequiv_colors) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pequiv_colors.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %i = alloca i32, align 4
  %param_name = alloca i8*, align 8
  %npcmcolors = alloca i32, align 4
  %num_spot = alloca i32, align 4
  %num_spot_changed = alloca i32, align 4
  %num_order = alloca i32, align 4
  %max_sep = alloca i32, align 4
  %page_spot_colors = alloca i32, align 4
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %sona = alloca %struct.gs_param_string_array_s, align 8
  %equiv_cmyk = alloca %struct.gs_param_int_array_s, align 8
  %cleanup.dest.slot = alloca i32
  %num_names = alloca i32, align 4
  %pcomp_names = alloca i8**, align 8
  %sep_name = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %spot_num = alloca i32, align 4
  %comp_num = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pequiv_colors, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !20
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %5, i32 0, i32 2
  %6 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !32
  store i32 %6, i32* %npcmcolors, align 4, !tbaa !20
  %7 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %8, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %9 = load i32, i32* %num_separations, align 4, !tbaa !33
  store i32 %9, i32* %num_spot, align 4, !tbaa !20
  %10 = bitcast i32* %num_spot_changed to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  store i32 0, i32* %num_spot_changed, align 4, !tbaa !20
  %11 = bitcast i32* %num_order to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %12, i32 0, i32 6
  %13 = load i32, i32* %num_separation_order_names, align 4, !tbaa !30
  store i32 %13, i32* %num_order, align 4, !tbaa !20
  %14 = bitcast i32* %max_sep to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %max_separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %15, i32 0, i32 3
  %16 = load i32, i32* %max_separations, align 4, !tbaa !54
  store i32 %16, i32* %max_sep, align 4, !tbaa !20
  %17 = bitcast i32* %page_spot_colors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %page_spot_colors1 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %18, i32 0, i32 4
  %19 = load i32, i32* %page_spot_colors1, align 4, !tbaa !55
  store i32 %19, i32* %page_spot_colors, align 4, !tbaa !20
  %20 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %20) #1
  %21 = bitcast %struct.gs_param_string_array_s* %sona to i8*
  call void @llvm.lifetime.start(i64 16, i8* %21) #1
  %22 = bitcast %struct.gs_param_int_array_s* %equiv_cmyk to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_name_array(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_string_array_s* %sona) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %do.body
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 1
  %24 = load i32, i32* %size, align 4, !tbaa !44
  %size2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 1
  %25 = load i32, i32* %size2, align 4, !tbaa !44
  %cmp = icmp ne i32 %24, %25
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !20
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !42
  br label %if.end

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %sone

sw.default:                                       ; preds = %do.body
  %26 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %26, i32* %ecode, align 4, !tbaa !20
  br label %sone

sone:                                             ; preds = %sw.default, %if.end
  %27 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %27, i32 0, i32 0
  %28 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !56
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %28, i32 0, i32 7
  %29 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !58
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %param_name, align 8, !tbaa !1
  %32 = load i32, i32* %ecode, align 4, !tbaa !20
  %call3 = call i32 %29(%struct.gs_param_list_s* %30, i8* %31, i32 %32) #5
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %do.body, %sone
  %data5 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data5, align 8, !tbaa !42
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %if.else
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  %data6 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  %33 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data6, align 8, !tbaa !42
  %cmp7 = icmp ne %struct.gs_param_string_s* %33, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %do.end
  %size8 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 1
  %34 = load i32, i32* %size8, align 4, !tbaa !44
  %cmp9 = icmp ugt i32 %34, 64
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %land.lhs.true
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs11 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %35, i32 0, i32 0
  %36 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs11, align 8, !tbaa !56
  %signal_error12 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %36, i32 0, i32 7
  %37 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error12, align 8, !tbaa !58
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call13 = call i32 %37(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 -15) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.14:                                        ; preds = %land.lhs.true, %do.end
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %39 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call16 = call i32 @param_read_name_array(%struct.gs_param_list_s* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #5
  store i32 %call16, i32* %code, align 4, !tbaa !20
  switch i32 %call16, label %sw.default.25 [
    i32 0, label %sw.bb.17
    i32 1, label %sw.bb.29
  ]

sw.bb.17:                                         ; preds = %do.body.15
  %size18 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %40 = load i32, i32* %size18, align 4, !tbaa !44
  %size19 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %41 = load i32, i32* %size19, align 4, !tbaa !44
  %cmp20 = icmp ne i32 %40, %41
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %sw.bb.17
  store i32 -15, i32* %ecode, align 4, !tbaa !20
  %data22 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data22, align 8, !tbaa !42
  br label %if.end.24

if.else.23:                                       ; preds = %sw.bb.17
  br label %sw.epilog.31

if.end.24:                                        ; preds = %if.then.21
  br label %scne

sw.default.25:                                    ; preds = %do.body.15
  %42 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %42, i32* %ecode, align 4, !tbaa !20
  br label %scne

scne:                                             ; preds = %sw.default.25, %if.end.24
  %43 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs26 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %43, i32 0, i32 0
  %44 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs26, align 8, !tbaa !56
  %signal_error27 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %44, i32 0, i32 7
  %45 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error27, align 8, !tbaa !58
  %46 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %47 = load i8*, i8** %param_name, align 8, !tbaa !1
  %48 = load i32, i32* %ecode, align 4, !tbaa !20
  %call28 = call i32 %45(%struct.gs_param_list_s* %46, i8* %47, i32 %48) #5
  br label %sw.bb.29

sw.bb.29:                                         ; preds = %do.body.15, %scne
  %data30 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data30, align 8, !tbaa !42
  br label %sw.epilog.31

sw.epilog.31:                                     ; preds = %sw.bb.29, %if.else.23
  br label %do.cond.32

do.cond.32:                                       ; preds = %sw.epilog.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %data34 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %49 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data34, align 8, !tbaa !42
  %cmp35 = icmp ne %struct.gs_param_string_s* %49, null
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.43

land.lhs.true.36:                                 ; preds = %do.end.33
  %size37 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %50 = load i32, i32* %size37, align 4, !tbaa !44
  %cmp38 = icmp ugt i32 %50, 64
  br i1 %cmp38, label %if.then.39, label %if.end.43

if.then.39:                                       ; preds = %land.lhs.true.36
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs40 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %51, i32 0, i32 0
  %52 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs40, align 8, !tbaa !56
  %signal_error41 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %52, i32 0, i32 7
  %53 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error41, align 8, !tbaa !58
  %54 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call42 = call i32 %53(%struct.gs_param_list_s* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i32 -15) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.43:                                        ; preds = %land.lhs.true.36, %do.end.33
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call45 = call i32 @param_read_int_array(%struct.gs_param_list_s* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_int_array_s* %equiv_cmyk) #5
  store i32 %call45, i32* %code, align 4, !tbaa !20
  switch i32 %call45, label %sw.default.54 [
    i32 0, label %sw.bb.46
    i32 1, label %sw.bb.58
  ]

sw.bb.46:                                         ; preds = %do.body.44
  %size47 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 1
  %56 = load i32, i32* %size47, align 4, !tbaa !52
  %size48 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 1
  %57 = load i32, i32* %size48, align 4, !tbaa !52
  %cmp49 = icmp ne i32 %56, %57
  br i1 %cmp49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %sw.bb.46
  store i32 -15, i32* %ecode, align 4, !tbaa !20
  %data51 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  store i32* null, i32** %data51, align 8, !tbaa !50
  br label %if.end.53

if.else.52:                                       ; preds = %sw.bb.46
  br label %sw.epilog.60

if.end.53:                                        ; preds = %if.then.50
  br label %equiv_cmyk_e

sw.default.54:                                    ; preds = %do.body.44
  %58 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %58, i32* %ecode, align 4, !tbaa !20
  br label %equiv_cmyk_e

equiv_cmyk_e:                                     ; preds = %sw.default.54, %if.end.53
  %59 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs55 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %59, i32 0, i32 0
  %60 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs55, align 8, !tbaa !56
  %signal_error56 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %60, i32 0, i32 7
  %61 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error56, align 8, !tbaa !58
  %62 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %63 = load i8*, i8** %param_name, align 8, !tbaa !1
  %64 = load i32, i32* %ecode, align 4, !tbaa !20
  %call57 = call i32 %61(%struct.gs_param_list_s* %62, i8* %63, i32 %64) #5
  br label %sw.bb.58

sw.bb.58:                                         ; preds = %do.body.44, %equiv_cmyk_e
  %data59 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  store i32* null, i32** %data59, align 8, !tbaa !50
  br label %sw.epilog.60

sw.epilog.60:                                     ; preds = %sw.bb.58, %if.else.52
  br label %do.cond.61

do.cond.61:                                       ; preds = %sw.epilog.60
  br label %do.end.62

do.end.62:                                        ; preds = %do.cond.61
  %65 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %65, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 2
  %66 = load i32, i32* %polarity, align 4, !tbaa !60
  %cmp63 = icmp eq i32 %66, 0
  br i1 %cmp63, label %if.then.64, label %if.end.320

if.then.64:                                       ; preds = %do.end.62
  %data65 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %67 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data65, align 8, !tbaa !42
  %cmp66 = icmp ne %struct.gs_param_string_s* %67, null
  br i1 %cmp66, label %if.then.67, label %if.end.120

if.then.67:                                       ; preds = %if.then.64
  %68 = bitcast i32* %num_names to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %size68 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %69 = load i32, i32* %size68, align 4, !tbaa !44
  store i32 %69, i32* %num_names, align 4, !tbaa !20
  %70 = bitcast i8*** %pcomp_names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %70) #1
  %71 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %71, i32 0, i32 1
  %72 = load i8**, i8*** %std_colorant_names, align 8, !tbaa !23
  store i8** %72, i8*** %pcomp_names, align 8, !tbaa !1
  %73 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations69 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %73, i32 0, i32 5
  %num_separations70 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations69, i32 0, i32 0
  %74 = load i32, i32* %num_separations70, align 4, !tbaa !33
  store i32 %74, i32* %num_spot, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.67
  %75 = load i32, i32* %i, align 4, !tbaa !20
  %76 = load i32, i32* %num_names, align 4, !tbaa !20
  %cmp71 = icmp slt i32 %75, %76
  br i1 %cmp71, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load i8**, i8*** %pcomp_names, align 8, !tbaa !1
  %78 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %78 to i64
  %data72 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %79 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data72, align 8, !tbaa !42
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %79, i64 %idxprom
  %call73 = call i32 @check_process_color_names(i8** %77, %struct.gs_param_string_s* %arrayidx) #5
  %tobool = icmp ne i32 %call73, 0
  br i1 %tobool, label %if.end.102, label %if.then.74

if.then.74:                                       ; preds = %for.body
  %80 = bitcast i8** %sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %80) #1
  %81 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %81) #1
  %82 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom75 = sext i32 %82 to i64
  %data76 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %83 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data76, align 8, !tbaa !42
  %arrayidx77 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %83, i64 %idxprom75
  %size78 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx77, i32 0, i32 1
  %84 = load i32, i32* %size78, align 4, !tbaa !61
  store i32 %84, i32* %name_size, align 4, !tbaa !20
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 3
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %procs79 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %86, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs79, i32 0, i32 7
  %87 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 3
  %89 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory80, align 8, !tbaa !21
  %90 = load i32, i32* %name_size, align 4, !tbaa !20
  %call81 = call i8* %87(%struct.gs_memory_s* %89, i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i32 0, i32 0)) #5
  store i8* %call81, i8** %sep_name, align 8, !tbaa !1
  %91 = load i8*, i8** %sep_name, align 8, !tbaa !1
  %92 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom82 = sext i32 %92 to i64
  %data83 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %93 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data83, align 8, !tbaa !42
  %arrayidx84 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %93, i64 %idxprom82
  %data85 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx84, i32 0, i32 0
  %94 = load i8*, i8** %data85, align 8, !tbaa !63
  %95 = load i32, i32* %name_size, align 4, !tbaa !20
  %conv = sext i32 %95 to i64
  %call86 = call i8* @memcpy(i8* %91, i8* %94, i64 %conv) #7
  %96 = load i32, i32* %name_size, align 4, !tbaa !20
  %97 = load i32, i32* %num_spot, align 4, !tbaa !20
  %idxprom87 = sext i32 %97 to i64
  %98 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations88 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %98, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations88, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom87
  %size90 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx89, i32 0, i32 0
  store i32 %96, i32* %size90, align 4, !tbaa !27
  %99 = load i8*, i8** %sep_name, align 8, !tbaa !1
  %100 = load i32, i32* %num_spot, align 4, !tbaa !20
  %idxprom91 = sext i32 %100 to i64
  %101 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations92 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %101, i32 0, i32 5
  %names93 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations92, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names93, i32 0, i64 %idxprom91
  %data95 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx94, i32 0, i32 1
  store i8* %99, i8** %data95, align 8, !tbaa !29
  %102 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %cmp96 = icmp ne %struct.equivalent_cmyk_color_params_s* %102, null
  br i1 %cmp96, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.then.74
  %103 = load i32, i32* %num_spot, align 4, !tbaa !20
  %idxprom99 = sext i32 %103 to i64
  %104 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %104, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom99
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx100, i32 0, i32 0
  store i32 0, i32* %color_info_valid, align 4, !tbaa !38
  %105 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %all_color_info_valid = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %105, i32 0, i32 0
  store i32 0, i32* %all_color_info_valid, align 4, !tbaa !40
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.then.74
  %106 = load i32, i32* %num_spot, align 4, !tbaa !20
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %num_spot, align 4, !tbaa !20
  %107 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i8** %sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %109 = load i32, i32* %i, align 4, !tbaa !20
  %inc103 = add nsw i32 %109, 1
  store i32 %inc103, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %num_spot_changed, align 4, !tbaa !20
  %110 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations104 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %110, i32 0, i32 5
  %num_separations105 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations104, i32 0, i32 0
  %111 = load i32, i32* %num_separations105, align 4, !tbaa !33
  store i32 %111, i32* %i, align 4, !tbaa !20
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.115, %for.end
  %112 = load i32, i32* %i, align 4, !tbaa !20
  %113 = load i32, i32* %num_spot, align 4, !tbaa !20
  %cmp107 = icmp slt i32 %112, %113
  br i1 %cmp107, label %for.body.109, label %for.end.117

for.body.109:                                     ; preds = %for.cond.106
  %114 = load i32, i32* %i, align 4, !tbaa !20
  %115 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_std_colorant_names110 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %115, i32 0, i32 2
  %116 = load i32, i32* %num_std_colorant_names110, align 4, !tbaa !32
  %add = add nsw i32 %114, %116
  %117 = load i32, i32* %i, align 4, !tbaa !20
  %118 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_std_colorant_names111 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %118, i32 0, i32 2
  %119 = load i32, i32* %num_std_colorant_names111, align 4, !tbaa !32
  %add112 = add nsw i32 %117, %119
  %idxprom113 = sext i32 %add112 to i64
  %120 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %120, i32 0, i32 7
  %arrayidx114 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i64 %idxprom113
  store i32 %add, i32* %arrayidx114, align 4, !tbaa !20
  br label %for.inc.115

for.inc.115:                                      ; preds = %for.body.109
  %121 = load i32, i32* %i, align 4, !tbaa !20
  %inc116 = add nsw i32 %121, 1
  store i32 %inc116, i32* %i, align 4, !tbaa !20
  br label %for.cond.106

for.end.117:                                      ; preds = %for.cond.106
  %122 = load i32, i32* %num_spot, align 4, !tbaa !20
  %123 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations118 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %123, i32 0, i32 5
  %num_separations119 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations118, i32 0, i32 0
  store i32 %122, i32* %num_separations119, align 4, !tbaa !33
  %124 = bitcast i8*** %pcomp_names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast i32* %num_names to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.117, %if.then.64
  %data121 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  %126 = load i32*, i32** %data121, align 8, !tbaa !50
  %cmp122 = icmp ne i32* %126, null
  br i1 %cmp122, label %if.then.124, label %if.end.183

if.then.124:                                      ; preds = %if.end.120
  %127 = bitcast i32* %spot_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %127) #1
  store i32 0, i32* %spot_num, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.180, %if.then.124
  %128 = load i32, i32* %i, align 4, !tbaa !20
  %size126 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 1
  %129 = load i32, i32* %size126, align 4, !tbaa !52
  %cmp127 = icmp ult i32 %128, %129
  br i1 %cmp127, label %for.body.129, label %for.end.182

for.body.129:                                     ; preds = %for.cond.125
  %130 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom130 = sext i32 %130 to i64
  %data131 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  %131 = load i32*, i32** %data131, align 8, !tbaa !50
  %arrayidx132 = getelementptr inbounds i32, i32* %131, i64 %idxprom130
  %132 = load i32, i32* %arrayidx132, align 4, !tbaa !20
  %cmp133 = icmp eq i32 %132, 0
  br i1 %cmp133, label %if.then.135, label %if.else.141

if.then.135:                                      ; preds = %for.body.129
  %133 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom136 = sext i32 %133 to i64
  %134 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color137 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %134, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color137, i32 0, i64 %idxprom136
  %color_info_valid139 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx138, i32 0, i32 0
  store i32 0, i32* %color_info_valid139, align 4, !tbaa !38
  %135 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %all_color_info_valid140 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %135, i32 0, i32 0
  store i32 0, i32* %all_color_info_valid140, align 4, !tbaa !40
  br label %if.end.178

if.else.141:                                      ; preds = %for.body.129
  %136 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom142 = sext i32 %136 to i64
  %137 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color143 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %137, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color143, i32 0, i64 %idxprom142
  %color_info_valid145 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx144, i32 0, i32 0
  store i32 1, i32* %color_info_valid145, align 4, !tbaa !38
  %138 = load i32, i32* %i, align 4, !tbaa !20
  %add146 = add nsw i32 %138, 1
  %idxprom147 = sext i32 %add146 to i64
  %data148 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  %139 = load i32*, i32** %data148, align 8, !tbaa !50
  %arrayidx149 = getelementptr inbounds i32, i32* %139, i64 %idxprom147
  %140 = load i32, i32* %arrayidx149, align 4, !tbaa !20
  %conv150 = trunc i32 %140 to i16
  %141 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom151 = sext i32 %141 to i64
  %142 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color152 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %142, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color152, i32 0, i64 %idxprom151
  %c = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx153, i32 0, i32 1
  store i16 %conv150, i16* %c, align 2, !tbaa !46
  %143 = load i32, i32* %i, align 4, !tbaa !20
  %add154 = add nsw i32 %143, 2
  %idxprom155 = sext i32 %add154 to i64
  %data156 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  %144 = load i32*, i32** %data156, align 8, !tbaa !50
  %arrayidx157 = getelementptr inbounds i32, i32* %144, i64 %idxprom155
  %145 = load i32, i32* %arrayidx157, align 4, !tbaa !20
  %conv158 = trunc i32 %145 to i16
  %146 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom159 = sext i32 %146 to i64
  %147 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color160 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %147, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color160, i32 0, i64 %idxprom159
  %m = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx161, i32 0, i32 2
  store i16 %conv158, i16* %m, align 2, !tbaa !47
  %148 = load i32, i32* %i, align 4, !tbaa !20
  %add162 = add nsw i32 %148, 3
  %idxprom163 = sext i32 %add162 to i64
  %data164 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  %149 = load i32*, i32** %data164, align 8, !tbaa !50
  %arrayidx165 = getelementptr inbounds i32, i32* %149, i64 %idxprom163
  %150 = load i32, i32* %arrayidx165, align 4, !tbaa !20
  %conv166 = trunc i32 %150 to i16
  %151 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom167 = sext i32 %151 to i64
  %152 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color168 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %152, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color168, i32 0, i64 %idxprom167
  %y = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx169, i32 0, i32 3
  store i16 %conv166, i16* %y, align 2, !tbaa !48
  %153 = load i32, i32* %i, align 4, !tbaa !20
  %add170 = add nsw i32 %153, 4
  %idxprom171 = sext i32 %add170 to i64
  %data172 = getelementptr inbounds %struct.gs_param_int_array_s, %struct.gs_param_int_array_s* %equiv_cmyk, i32 0, i32 0
  %154 = load i32*, i32** %data172, align 8, !tbaa !50
  %arrayidx173 = getelementptr inbounds i32, i32* %154, i64 %idxprom171
  %155 = load i32, i32* %arrayidx173, align 4, !tbaa !20
  %conv174 = trunc i32 %155 to i16
  %156 = load i32, i32* %spot_num, align 4, !tbaa !20
  %idxprom175 = sext i32 %156 to i64
  %157 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %color176 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %157, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color176, i32 0, i64 %idxprom175
  %k = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx177, i32 0, i32 4
  store i16 %conv174, i16* %k, align 2, !tbaa !49
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.141, %if.then.135
  %158 = load i32, i32* %spot_num, align 4, !tbaa !20
  %inc179 = add nsw i32 %158, 1
  store i32 %inc179, i32* %spot_num, align 4, !tbaa !20
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.178
  %159 = load i32, i32* %i, align 4, !tbaa !20
  %add181 = add nsw i32 %159, 5
  store i32 %add181, i32* %i, align 4, !tbaa !20
  br label %for.cond.125

for.end.182:                                      ; preds = %for.cond.125
  %160 = bitcast i32* %spot_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  br label %if.end.183

if.end.183:                                       ; preds = %for.end.182, %if.end.120
  %data184 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  %161 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data184, align 8, !tbaa !42
  %cmp185 = icmp ne %struct.gs_param_string_s* %161, null
  br i1 %cmp185, label %if.then.187, label %if.end.224

if.then.187:                                      ; preds = %if.end.183
  %162 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #1
  %size188 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 1
  %163 = load i32, i32* %size188, align 4, !tbaa !44
  store i32 %163, i32* %num_order, align 4, !tbaa !20
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.221, %if.then.187
  %164 = load i32, i32* %i, align 4, !tbaa !20
  %165 = load i32, i32* %num_order, align 4, !tbaa !20
  %cmp190 = icmp slt i32 %164, %165
  br i1 %cmp190, label %for.body.192, label %for.end.223

for.body.192:                                     ; preds = %for.cond.189
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs193 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %166, i32 0, i32 42
  %get_color_comp_index = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs193, i32 0, i32 50
  %167 = load i32 (%struct.gx_device_s*, i8*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32)** %get_color_comp_index, align 8, !tbaa !64
  %168 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %169 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom194 = sext i32 %169 to i64
  %data195 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  %170 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data195, align 8, !tbaa !42
  %arrayidx196 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %170, i64 %idxprom194
  %data197 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx196, i32 0, i32 0
  %171 = load i8*, i8** %data197, align 8, !tbaa !63
  %172 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom198 = sext i32 %172 to i64
  %data199 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  %173 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data199, align 8, !tbaa !42
  %arrayidx200 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %173, i64 %idxprom198
  %size201 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %arrayidx200, i32 0, i32 1
  %174 = load i32, i32* %size201, align 4, !tbaa !61
  %call202 = call i32 %167(%struct.gx_device_s* %168, i8* %171, i32 %174, i32 1) #5
  store i32 %call202, i32* %comp_num, align 4, !tbaa !20
  %cmp203 = icmp slt i32 %call202, 0
  br i1 %cmp203, label %if.then.205, label %if.end.209

if.then.205:                                      ; preds = %for.body.192
  %175 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs206 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %175, i32 0, i32 0
  %176 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs206, align 8, !tbaa !56
  %signal_error207 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %176, i32 0, i32 7
  %177 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error207, align 8, !tbaa !58
  %178 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call208 = call i32 %177(%struct.gs_param_list_s* %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 -15) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.209:                                       ; preds = %for.body.192
  %179 = load i32, i32* %comp_num, align 4, !tbaa !20
  %180 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom210 = sext i32 %180 to i64
  %181 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separation_order_map211 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %181, i32 0, i32 7
  %arrayidx212 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map211, i32 0, i64 %idxprom210
  store i32 %179, i32* %arrayidx212, align 4, !tbaa !20
  %182 = load i32, i32* %num_spot, align 4, !tbaa !20
  %183 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations213 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %183, i32 0, i32 5
  %num_separations214 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations213, i32 0, i32 0
  %184 = load i32, i32* %num_separations214, align 4, !tbaa !33
  %cmp215 = icmp ne i32 %182, %184
  br i1 %cmp215, label %if.then.217, label %if.end.220

if.then.217:                                      ; preds = %if.end.209
  %185 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations218 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %185, i32 0, i32 5
  %num_separations219 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations218, i32 0, i32 0
  %186 = load i32, i32* %num_separations219, align 4, !tbaa !33
  store i32 %186, i32* %num_spot, align 4, !tbaa !20
  store i32 1, i32* %num_spot_changed, align 4, !tbaa !20
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.217, %if.end.209
  br label %for.inc.221

for.inc.221:                                      ; preds = %if.end.220
  %187 = load i32, i32* %i, align 4, !tbaa !20
  %inc222 = add nsw i32 %187, 1
  store i32 %inc222, i32* %i, align 4, !tbaa !20
  br label %for.cond.189

for.end.223:                                      ; preds = %for.cond.189
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.223, %if.then.205
  %188 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.321 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.224

if.end.224:                                       ; preds = %cleanup.cont, %if.end.183
  %189 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call225 = call i32 @param_read_int(%struct.gs_param_list_s* %189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32* %max_sep) #5
  store i32 %call225, i32* %code, align 4, !tbaa !20
  %190 = load i32, i32* %code, align 4, !tbaa !20
  switch i32 %190, label %sw.default.226 [
    i32 1, label %sw.epilog.240
    i32 0, label %sw.bb.230
  ]

sw.default.226:                                   ; preds = %if.end.224
  %191 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs227 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %191, i32 0, i32 0
  %192 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs227, align 8, !tbaa !56
  %signal_error228 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %192, i32 0, i32 7
  %193 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error228, align 8, !tbaa !58
  %194 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %195 = load i8*, i8** %param_name, align 8, !tbaa !1
  %196 = load i32, i32* %code, align 4, !tbaa !20
  %call229 = call i32 %193(%struct.gs_param_list_s* %194, i8* %195, i32 %196) #5
  br label %sw.epilog.240

sw.bb.230:                                        ; preds = %if.end.224
  %197 = load i32, i32* %max_sep, align 4, !tbaa !20
  %cmp231 = icmp slt i32 %197, 1
  br i1 %cmp231, label %if.then.235, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.230
  %198 = load i32, i32* %max_sep, align 4, !tbaa !20
  %cmp233 = icmp sgt i32 %198, 64
  br i1 %cmp233, label %if.then.235, label %if.end.239

if.then.235:                                      ; preds = %lor.lhs.false, %sw.bb.230
  %199 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs236 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %199, i32 0, i32 0
  %200 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs236, align 8, !tbaa !56
  %signal_error237 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %200, i32 0, i32 7
  %201 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error237, align 8, !tbaa !58
  %202 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call238 = call i32 %201(%struct.gs_param_list_s* %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 -15) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.239:                                       ; preds = %lor.lhs.false
  br label %sw.epilog.240

sw.epilog.240:                                    ; preds = %if.end.239, %sw.default.226, %if.end.224
  %203 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call241 = call i32 @param_read_int(%struct.gs_param_list_s* %203, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32* %page_spot_colors) #5
  store i32 %call241, i32* %code, align 4, !tbaa !20
  %204 = load i32, i32* %code, align 4, !tbaa !20
  switch i32 %204, label %sw.default.242 [
    i32 1, label %sw.epilog.258
    i32 0, label %sw.bb.246
  ]

sw.default.242:                                   ; preds = %sw.epilog.240
  %205 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs243 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %205, i32 0, i32 0
  %206 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs243, align 8, !tbaa !56
  %signal_error244 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %206, i32 0, i32 7
  %207 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error244, align 8, !tbaa !58
  %208 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %209 = load i8*, i8** %param_name, align 8, !tbaa !1
  %210 = load i32, i32* %code, align 4, !tbaa !20
  %call245 = call i32 %207(%struct.gs_param_list_s* %208, i8* %209, i32 %210) #5
  br label %sw.epilog.258

sw.bb.246:                                        ; preds = %sw.epilog.240
  %211 = load i32, i32* %page_spot_colors, align 4, !tbaa !20
  %cmp247 = icmp slt i32 %211, -1
  br i1 %cmp247, label %if.then.249, label %if.end.253

if.then.249:                                      ; preds = %sw.bb.246
  %212 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs250 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %212, i32 0, i32 0
  %213 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs250, align 8, !tbaa !56
  %signal_error251 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %213, i32 0, i32 7
  %214 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error251, align 8, !tbaa !58
  %215 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call252 = call i32 %214(%struct.gs_param_list_s* %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 -15) #5
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

if.end.253:                                       ; preds = %sw.bb.246
  %216 = load i32, i32* %page_spot_colors, align 4, !tbaa !20
  %cmp254 = icmp sgt i32 %216, 58
  br i1 %cmp254, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.end.253
  store i32 58, i32* %page_spot_colors, align 4, !tbaa !20
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.256, %if.end.253
  br label %sw.epilog.258

sw.epilog.258:                                    ; preds = %if.end.257, %sw.default.242, %sw.epilog.240
  %217 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info259 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %217, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info259, i32 0, i32 1
  %218 = load i32, i32* %num_components, align 4, !tbaa !7
  %tobool260 = icmp ne i32 %218, 0
  br i1 %tobool260, label %if.end.264, label %if.then.261

if.then.261:                                      ; preds = %sw.epilog.258
  %219 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info262 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %219, i32 0, i32 11
  %num_components263 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info262, i32 0, i32 1
  store i32 1, i32* %num_components263, align 4, !tbaa !7
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.261, %sw.epilog.258
  %220 = load i32, i32* %num_spot_changed, align 4, !tbaa !20
  %tobool265 = icmp ne i32 %220, 0
  br i1 %tobool265, label %if.then.278, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %if.end.264
  %221 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %max_separations267 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %221, i32 0, i32 3
  %222 = load i32, i32* %max_separations267, align 4, !tbaa !54
  %223 = load i32, i32* %max_sep, align 4, !tbaa !20
  %cmp268 = icmp ne i32 %222, %223
  br i1 %cmp268, label %if.then.278, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %lor.lhs.false.266
  %224 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_separation_order_names271 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %224, i32 0, i32 6
  %225 = load i32, i32* %num_separation_order_names271, align 4, !tbaa !30
  %226 = load i32, i32* %num_order, align 4, !tbaa !20
  %cmp272 = icmp ne i32 %225, %226
  br i1 %cmp272, label %if.then.278, label %lor.lhs.false.274

lor.lhs.false.274:                                ; preds = %lor.lhs.false.270
  %227 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %page_spot_colors275 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %227, i32 0, i32 4
  %228 = load i32, i32* %page_spot_colors275, align 4, !tbaa !55
  %229 = load i32, i32* %page_spot_colors, align 4, !tbaa !20
  %cmp276 = icmp ne i32 %228, %229
  br i1 %cmp276, label %if.then.278, label %if.end.319

if.then.278:                                      ; preds = %lor.lhs.false.274, %lor.lhs.false.270, %lor.lhs.false.266, %if.end.264
  %230 = load i32, i32* %num_spot, align 4, !tbaa !20
  %231 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %separations279 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %231, i32 0, i32 5
  %num_separations280 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations279, i32 0, i32 0
  store i32 %230, i32* %num_separations280, align 4, !tbaa !33
  %232 = load i32, i32* %num_order, align 4, !tbaa !20
  %233 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %num_separation_order_names281 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %233, i32 0, i32 6
  store i32 %232, i32* %num_separation_order_names281, align 4, !tbaa !30
  %234 = load i32, i32* %max_sep, align 4, !tbaa !20
  %235 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %max_separations282 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %235, i32 0, i32 3
  store i32 %234, i32* %max_separations282, align 4, !tbaa !54
  %236 = load i32, i32* %page_spot_colors, align 4, !tbaa !20
  %237 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %page_spot_colors283 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %237, i32 0, i32 4
  store i32 %236, i32* %page_spot_colors283, align 4, !tbaa !55
  %238 = load i32, i32* %max_sep, align 4, !tbaa !20
  %cmp284 = icmp ne i32 %238, 0
  br i1 %cmp284, label %if.then.286, label %if.end.288

if.then.286:                                      ; preds = %if.then.278
  %239 = load i32, i32* %max_sep, align 4, !tbaa !20
  %240 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info287 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %240, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info287, i32 0, i32 0
  store i32 %239, i32* %max_components, align 4, !tbaa !31
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.286, %if.then.278
  %241 = load i32, i32* %num_order, align 4, !tbaa !20
  %tobool289 = icmp ne i32 %241, 0
  br i1 %tobool289, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.288
  %242 = load i32, i32* %num_order, align 4, !tbaa !20
  br label %cond.end.298

cond.false:                                       ; preds = %if.end.288
  %243 = load i32, i32* %page_spot_colors, align 4, !tbaa !20
  %cmp290 = icmp sge i32 %243, 0
  br i1 %cmp290, label %cond.true.292, label %cond.false.295

cond.true.292:                                    ; preds = %cond.false
  %244 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %245 = load i32, i32* %num_spot, align 4, !tbaa !20
  %add293 = add nsw i32 %244, %245
  %246 = load i32, i32* %page_spot_colors, align 4, !tbaa !20
  %add294 = add nsw i32 %add293, %246
  br label %cond.end

cond.false.295:                                   ; preds = %cond.false
  %247 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info296 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %247, i32 0, i32 11
  %max_components297 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info296, i32 0, i32 0
  %248 = load i32, i32* %max_components297, align 4, !tbaa !31
  br label %cond.end

cond.end:                                         ; preds = %cond.false.295, %cond.true.292
  %cond = phi i32 [ %add294, %cond.true.292 ], [ %248, %cond.false.295 ]
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.end, %cond.true
  %cond299 = phi i32 [ %242, %cond.true ], [ %cond, %cond.end ]
  %249 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info300 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %249, i32 0, i32 11
  %num_components301 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info300, i32 0, i32 1
  store i32 %cond299, i32* %num_components301, align 4, !tbaa !7
  %250 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info302 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %250, i32 0, i32 11
  %num_components303 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info302, i32 0, i32 1
  %251 = load i32, i32* %num_components303, align 4, !tbaa !7
  %252 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info304 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %252, i32 0, i32 11
  %max_components305 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info304, i32 0, i32 0
  %253 = load i32, i32* %max_components305, align 4, !tbaa !31
  %cmp306 = icmp sgt i32 %251, %253
  br i1 %cmp306, label %if.then.308, label %if.end.313

if.then.308:                                      ; preds = %cond.end.298
  %254 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info309 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %254, i32 0, i32 11
  %max_components310 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info309, i32 0, i32 0
  %255 = load i32, i32* %max_components310, align 4, !tbaa !31
  %256 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info311 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %256, i32 0, i32 11
  %num_components312 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info311, i32 0, i32 1
  store i32 %255, i32* %num_components312, align 4, !tbaa !7
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.308, %cond.end.298
  %257 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info314 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %257, i32 0, i32 11
  %num_components315 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info314, i32 0, i32 1
  %258 = load i32, i32* %num_components315, align 4, !tbaa !7
  %259 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %bitspercomponent = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %259, i32 0, i32 0
  %260 = load i32, i32* %bitspercomponent, align 4, !tbaa !65
  %call316 = call i32 @bpc_to_depth(i32 %258, i32 %260) #5
  %conv317 = trunc i32 %call316 to i16
  %261 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info318 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %261, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info318, i32 0, i32 3
  store i16 %conv317, i16* %depth, align 2, !tbaa !66
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.313, %lor.lhs.false.274
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %do.end.62
  %262 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %262, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.321

cleanup.321:                                      ; preds = %if.end.320, %if.then.249, %if.then.235, %cleanup, %if.then.39, %if.then.10
  %263 = bitcast %struct.gs_param_int_array_s* %equiv_cmyk to i8*
  call void @llvm.lifetime.end(i64 16, i8* %263) #1
  %264 = bitcast %struct.gs_param_string_array_s* %sona to i8*
  call void @llvm.lifetime.end(i64 16, i8* %264) #1
  %265 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %265) #1
  %266 = bitcast i32* %page_spot_colors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %266) #1
  %267 = bitcast i32* %max_sep to i8*
  call void @llvm.lifetime.end(i64 4, i8* %267) #1
  %268 = bitcast i32* %num_order to i8*
  call void @llvm.lifetime.end(i64 4, i8* %268) #1
  %269 = bitcast i32* %num_spot_changed to i8*
  call void @llvm.lifetime.end(i64 4, i8* %269) #1
  %270 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %270) #1
  %271 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %271) #1
  %272 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %272) #1
  %273 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %273) #1
  %274 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = load i32, i32* %retval
  ret i32 %276
}

declare i32 @param_read_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #2

declare i32 @param_read_int_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_int_array_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @check_process_color_names(i8** %plist, %struct.gs_param_string_s* %pstring) #0 {
entry:
  %retval = alloca i32, align 4
  %plist.addr = alloca i8**, align 8
  %pstring.addr = alloca %struct.gs_param_string_s*, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8** %plist, i8*** %plist.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pstring, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %plist.addr, align 8, !tbaa !1
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %2, i32 0, i32 1
  %3 = load i32, i32* %size1, align 4, !tbaa !61
  store i32 %3, i32* %size, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %4 = load i8**, i8*** %plist.addr, align 8, !tbaa !1
  %5 = load i8*, i8** %4, align 8, !tbaa !1
  %tobool2 = icmp ne i8* %5, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8**, i8*** %plist.addr, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %7) #6
  %8 = load i32, i32* %size, align 4, !tbaa !20
  %conv = zext i32 %8 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %9 = load i8**, i8*** %plist.addr, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8, !tbaa !63
  %13 = load i8**, i8*** %plist.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %13, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %14) #6
  %call5 = call i32 @strncmp(i8* %10, i8* %12, i64 %call4) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %while.body
  %15 = load i8**, i8*** %plist.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %incdec.ptr, i8*** %plist.addr, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.8
  %16 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.9

if.end.9:                                         ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %cleanup
  %17 = load i32, i32* %retval
  ret i32 %17

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #2

; Function Attrs: nounwind uwtable
define void @devn_free_params(%struct.gx_device_s* %thread_cdev) #0 {
entry:
  %thread_cdev.addr = alloca %struct.gx_device_s*, align 8
  %devn_params = alloca %struct.gs_devn_params_s*, align 8
  %k = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %thread_cdev, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_devn_params_s** %devn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %3 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !67
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %call = call %struct.gs_devn_params_s* %3(%struct.gx_device_s* %4) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %5 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_devn_params_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %k, align 4, !tbaa !20
  %7 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %7, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %8 = load i32, i32* %num_separations, align 4, !tbaa !33
  %cmp1 = icmp slt i32 %6, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %procs2 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs2, i32 0, i32 2
  %11 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !21
  %14 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %separations4 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %15, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx, i32 0, i32 1
  %16 = load i8*, i8** %data, align 8, !tbaa !29
  call void %11(%struct.gs_memory_s* %13, i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %17 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %separations6 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %18, i32 0, i32 5
  %names7 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names7, i32 0, i64 %idxprom5
  %data9 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx8, i32 0, i32 1
  store i8* null, i8** %data9, align 8, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %k, align 4, !tbaa !20
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %20, i32 0, i32 8
  %21 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list, align 8, !tbaa !69
  call void @free_compressed_color_list(%struct.compressed_color_list_s* %21) #5
  %22 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %compressed_color_list10 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %22, i32 0, i32 8
  store %struct.compressed_color_list_s* null, %struct.compressed_color_list_s** %compressed_color_list10, align 8, !tbaa !69
  store i32 0, i32* %k, align 4, !tbaa !20
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.29, %for.end
  %23 = load i32, i32* %k, align 4, !tbaa !20
  %24 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %pdf14_separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %24, i32 0, i32 10
  %num_separations12 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations, i32 0, i32 0
  %25 = load i32, i32* %num_separations12, align 4, !tbaa !70
  %cmp13 = icmp slt i32 %23, %25
  br i1 %cmp13, label %for.body.14, label %for.end.31

for.body.14:                                      ; preds = %for.cond.11
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !21
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object17, align 8, !tbaa !68
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %thread_cdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !21
  %31 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom19 = sext i32 %31 to i64
  %32 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %pdf14_separations20 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %32, i32 0, i32 10
  %names21 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names21, i32 0, i64 %idxprom19
  %data23 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx22, i32 0, i32 1
  %33 = load i8*, i8** %data23, align 8, !tbaa !29
  call void %28(%struct.gs_memory_s* %30, i8* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0)) #5
  %34 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom24 = sext i32 %34 to i64
  %35 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %pdf14_separations25 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %35, i32 0, i32 10
  %names26 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names26, i32 0, i64 %idxprom24
  %data28 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx27, i32 0, i32 1
  store i8* null, i8** %data28, align 8, !tbaa !29
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.14
  %36 = load i32, i32* %k, align 4, !tbaa !20
  %inc30 = add nsw i32 %36, 1
  store i32 %inc30, i32* %k, align 4, !tbaa !20
  br label %for.cond.11

for.end.31:                                       ; preds = %for.cond.11
  %37 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %pdf14_compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %37, i32 0, i32 9
  %38 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pdf14_compressed_color_list, align 8, !tbaa !71
  call void @free_compressed_color_list(%struct.compressed_color_list_s* %38) #5
  %39 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %devn_params, align 8, !tbaa !1
  %pdf14_compressed_color_list32 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %39, i32 0, i32 9
  store %struct.compressed_color_list_s* null, %struct.compressed_color_list_s** %pdf14_compressed_color_list32, align 8, !tbaa !71
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.31, %if.then
  %40 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast %struct.gs_devn_params_s** %devn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
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
define void @free_compressed_color_list(%struct.compressed_color_list_s* %pcomp_list) #0 {
entry:
  %pcomp_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.compressed_color_list_s* %pcomp_list, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.compressed_color_list_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !20
  %3 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %3, i32 0, i32 2
  %4 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %6, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u to [256 x %struct.compressed_color_list_s*]*
  %arrayidx = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom
  %7 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx, align 8, !tbaa !1
  call void @free_compressed_color_list(%struct.compressed_color_list_s* %7) #5
  %8 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %9, i32 0, i32 4
  %sub_level_ptrs4 = bitcast %union.anon.10* %u3 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx5 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs4, i32 0, i64 %idxprom2
  store %struct.compressed_color_list_s* null, %struct.compressed_color_list_s** %arrayidx5, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %11, i32 0, i32 0
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !74
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %12, i32 0, i32 0
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %14 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %15 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %mem6 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %15, i32 0, i32 0
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem6, align 8, !tbaa !74
  %stable_memory7 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %16, i32 0, i32 0
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory7, align 8, !tbaa !34
  %18 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %19 = bitcast %struct.compressed_color_list_s* %18 to i8*
  call void %14(%struct.gs_memory_s* %17, i8* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0)) #5
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @devn_copy_params(%struct.gx_device_s* %psrcdev, %struct.gx_device_s* %pdesdev) #0 {
entry:
  %psrcdev.addr = alloca %struct.gx_device_s*, align 8
  %pdesdev.addr = alloca %struct.gx_device_s*, align 8
  %src_devn_params = alloca %struct.gs_devn_params_s*, align 8
  %des_devn_params = alloca %struct.gs_devn_params_s*, align 8
  %code = alloca i32, align 4
  %k = alloca i32, align 4
  %src_color_list = alloca %struct.compressed_color_list_s*, align 8
  %des_color_list = alloca %struct.compressed_color_list_s*, align 8
  %sep_name = alloca i8*, align 8
  %name_size = alloca i32, align 4
  %sep_name55 = alloca i8*, align 8
  %name_size56 = alloca i32, align 4
  store %struct.gx_device_s* %psrcdev, %struct.gx_device_s** %psrcdev.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %pdesdev, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_devn_params_s** %src_devn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast %struct.gs_devn_params_s** %des_devn_params to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  store i32 0, i32* %code, align 4, !tbaa !20
  %3 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.compressed_color_list_s** %src_color_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.compressed_color_list_s** %des_color_list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %psrcdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %ret_devn_params = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 60
  %7 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params, align 8, !tbaa !67
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %psrcdev.addr, align 8, !tbaa !1
  %call = call %struct.gs_devn_params_s* %7(%struct.gx_device_s* %8) #5
  store %struct.gs_devn_params_s* %call, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %ret_devn_params2 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 60
  %10 = load %struct.gs_devn_params_s* (%struct.gx_device_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)** %ret_devn_params2, align 8, !tbaa !67
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %call3 = call %struct.gs_devn_params_s* %10(%struct.gx_device_s* %11) #5
  store %struct.gs_devn_params_s* %call3, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %12 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %bitspercomponent = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %12, i32 0, i32 0
  %13 = load i32, i32* %bitspercomponent, align 4, !tbaa !65
  %14 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %bitspercomponent4 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %14, i32 0, i32 0
  store i32 %13, i32* %bitspercomponent4, align 4, !tbaa !65
  %15 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %max_separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %15, i32 0, i32 3
  %16 = load i32, i32* %max_separations, align 4, !tbaa !54
  %17 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %max_separations5 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %17, i32 0, i32 3
  store i32 %16, i32* %max_separations5, align 4, !tbaa !54
  %18 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %num_separation_order_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %18, i32 0, i32 6
  %19 = load i32, i32* %num_separation_order_names, align 4, !tbaa !30
  %20 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %num_separation_order_names6 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %20, i32 0, i32 6
  store i32 %19, i32* %num_separation_order_names6, align 4, !tbaa !30
  %21 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %21, i32 0, i32 2
  %22 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !32
  %23 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %num_std_colorant_names7 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %23, i32 0, i32 2
  store i32 %22, i32* %num_std_colorant_names7, align 4, !tbaa !32
  %24 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %page_spot_colors = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %24, i32 0, i32 4
  %25 = load i32, i32* %page_spot_colors, align 4, !tbaa !55
  %26 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %page_spot_colors8 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %26, i32 0, i32 4
  store i32 %25, i32* %page_spot_colors8, align 4, !tbaa !55
  %27 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %27, i32 0, i32 1
  %28 = load i8**, i8*** %std_colorant_names, align 8, !tbaa !23
  %29 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %std_colorant_names9 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %29, i32 0, i32 1
  store i8** %28, i8*** %std_colorant_names9, align 8, !tbaa !23
  %30 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %30, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %31 = load i32, i32* %num_separations, align 4, !tbaa !33
  %32 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %separations10 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %32, i32 0, i32 5
  %num_separations11 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations10, i32 0, i32 0
  store i32 %31, i32* %num_separations11, align 4, !tbaa !33
  store i32 0, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %33 = load i32, i32* %k, align 4, !tbaa !20
  %34 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %separations12 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %34, i32 0, i32 5
  %num_separations13 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations12, i32 0, i32 0
  %35 = load i32, i32* %num_separations13, align 4, !tbaa !33
  %cmp = icmp slt i32 %33, %35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = bitcast i8** %sep_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %separations14 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %39, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx, i32 0, i32 0
  %40 = load i32, i32* %size, align 4, !tbaa !27
  store i32 %40, i32* %name_size, align 4, !tbaa !20
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 0
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !34
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 7
  %44 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !21
  %stable_memory17 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 0
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory17, align 8, !tbaa !34
  %48 = load i32, i32* %name_size, align 4, !tbaa !20
  %call18 = call i8* %44(%struct.gs_memory_s* %47, i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #5
  store i8* %call18, i8** %sep_name, align 8, !tbaa !1
  %49 = load i8*, i8** %sep_name, align 8, !tbaa !1
  %50 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom19 = sext i32 %50 to i64
  %51 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %separations20 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %51, i32 0, i32 5
  %names21 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names21, i32 0, i64 %idxprom19
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx22, i32 0, i32 1
  %52 = load i8*, i8** %data, align 8, !tbaa !29
  %53 = load i32, i32* %name_size, align 4, !tbaa !20
  %conv = sext i32 %53 to i64
  %call23 = call i8* @memcpy(i8* %49, i8* %52, i64 %conv) #7
  %54 = load i32, i32* %name_size, align 4, !tbaa !20
  %55 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom24 = sext i32 %55 to i64
  %56 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %separations25 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %56, i32 0, i32 5
  %names26 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names26, i32 0, i64 %idxprom24
  %size28 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx27, i32 0, i32 0
  store i32 %54, i32* %size28, align 4, !tbaa !27
  %57 = load i8*, i8** %sep_name, align 8, !tbaa !1
  %58 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom29 = sext i32 %58 to i64
  %59 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %separations30 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %59, i32 0, i32 5
  %names31 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names31, i32 0, i64 %idxprom29
  %data33 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx32, i32 0, i32 1
  store i8* %57, i8** %data33, align 8, !tbaa !29
  %60 = bitcast i32* %name_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i8** %sep_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load i32, i32* %k, align 4, !tbaa !20
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %63, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  %64 = bitcast i32* %arraydecay to i8*
  %65 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %separation_order_map34 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %65, i32 0, i32 7
  %arraydecay35 = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map34, i32 0, i32 0
  %66 = bitcast i32* %arraydecay35 to i8*
  %call36 = call i8* @memcpy(i8* %64, i8* %66, i64 280) #7
  %67 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %67, i32 0, i32 8
  %68 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list, align 8, !tbaa !69
  store %struct.compressed_color_list_s* %68, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %69 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.compressed_color_list_s* %69, null
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %70 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %70, i32 0, i32 0
  %71 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !74
  %call39 = call %struct.compressed_color_list_s* @alloc_compressed_color_list_elem(%struct.gs_memory_s* %71, i32 7) #5
  store %struct.compressed_color_list_s* %call39, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %72 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %first_bit_map = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %72, i32 0, i32 3
  %73 = load i32, i32* %first_bit_map, align 4, !tbaa !75
  %74 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %first_bit_map40 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %74, i32 0, i32 3
  store i32 %73, i32* %first_bit_map40, align 4, !tbaa !75
  %75 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %75, i32 0, i32 2
  %76 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %77 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %num_sub_level_ptrs41 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %77, i32 0, i32 2
  store i32 %76, i32* %num_sub_level_ptrs41, align 4, !tbaa !72
  %78 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %79 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %memory42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory42, align 8, !tbaa !21
  %call43 = call i32 @copy_color_list(%struct.compressed_color_list_s* %78, %struct.compressed_color_list_s* %79, %struct.gs_memory_s* %81) #5
  store i32 %call43, i32* %code, align 4, !tbaa !20
  %82 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %83 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %compressed_color_list44 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %83, i32 0, i32 8
  store %struct.compressed_color_list_s* %82, %struct.compressed_color_list_s** %compressed_color_list44, align 8, !tbaa !69
  br label %if.end

if.else:                                          ; preds = %for.end
  %84 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %compressed_color_list45 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %84, i32 0, i32 8
  store %struct.compressed_color_list_s* null, %struct.compressed_color_list_s** %compressed_color_list45, align 8, !tbaa !69
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %85 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %pdf14_separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %85, i32 0, i32 10
  %num_separations46 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations, i32 0, i32 0
  %86 = load i32, i32* %num_separations46, align 4, !tbaa !70
  %87 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %pdf14_separations47 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %87, i32 0, i32 10
  %num_separations48 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations47, i32 0, i32 0
  store i32 %86, i32* %num_separations48, align 4, !tbaa !70
  store i32 0, i32* %k, align 4, !tbaa !20
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.86, %if.end
  %88 = load i32, i32* %k, align 4, !tbaa !20
  %89 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %pdf14_separations50 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %89, i32 0, i32 10
  %num_separations51 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations50, i32 0, i32 0
  %90 = load i32, i32* %num_separations51, align 4, !tbaa !70
  %cmp52 = icmp slt i32 %88, %90
  br i1 %cmp52, label %for.body.54, label %for.end.88

for.body.54:                                      ; preds = %for.cond.49
  %91 = bitcast i8** %sep_name55 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %91) #1
  %92 = bitcast i32* %name_size56 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %92) #1
  %93 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom57 = sext i32 %93 to i64
  %94 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %pdf14_separations58 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %94, i32 0, i32 10
  %names59 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations58, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names59, i32 0, i64 %idxprom57
  %size61 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx60, i32 0, i32 0
  %95 = load i32, i32* %size61, align 4, !tbaa !27
  store i32 %95, i32* %name_size56, align 4, !tbaa !20
  %96 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %96, i32 0, i32 3
  %97 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !21
  %stable_memory63 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %97, i32 0, i32 0
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory63, align 8, !tbaa !34
  %procs64 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %98, i32 0, i32 1
  %alloc_bytes65 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs64, i32 0, i32 7
  %99 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes65, align 8, !tbaa !37
  %100 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %memory66 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %100, i32 0, i32 3
  %101 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory66, align 8, !tbaa !21
  %stable_memory67 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %101, i32 0, i32 0
  %102 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory67, align 8, !tbaa !34
  %103 = load i32, i32* %name_size56, align 4, !tbaa !20
  %call68 = call i8* %99(%struct.gs_memory_s* %102, i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0)) #5
  store i8* %call68, i8** %sep_name55, align 8, !tbaa !1
  %104 = load i8*, i8** %sep_name55, align 8, !tbaa !1
  %105 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom69 = sext i32 %105 to i64
  %106 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %pdf14_separations70 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %106, i32 0, i32 10
  %names71 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations70, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names71, i32 0, i64 %idxprom69
  %data73 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx72, i32 0, i32 1
  %107 = load i8*, i8** %data73, align 8, !tbaa !29
  %108 = load i32, i32* %name_size56, align 4, !tbaa !20
  %conv74 = sext i32 %108 to i64
  %call75 = call i8* @memcpy(i8* %104, i8* %107, i64 %conv74) #7
  %109 = load i32, i32* %name_size56, align 4, !tbaa !20
  %110 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom76 = sext i32 %110 to i64
  %111 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %pdf14_separations77 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %111, i32 0, i32 10
  %names78 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations77, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names78, i32 0, i64 %idxprom76
  %size80 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx79, i32 0, i32 0
  store i32 %109, i32* %size80, align 4, !tbaa !27
  %112 = load i8*, i8** %sep_name55, align 8, !tbaa !1
  %113 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom81 = sext i32 %113 to i64
  %114 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %pdf14_separations82 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %114, i32 0, i32 10
  %names83 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %pdf14_separations82, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names83, i32 0, i64 %idxprom81
  %data85 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx84, i32 0, i32 1
  store i8* %112, i8** %data85, align 8, !tbaa !29
  %115 = bitcast i32* %name_size56 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast i8** %sep_name55 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.54
  %117 = load i32, i32* %k, align 4, !tbaa !20
  %inc87 = add nsw i32 %117, 1
  store i32 %inc87, i32* %k, align 4, !tbaa !20
  br label %for.cond.49

for.end.88:                                       ; preds = %for.cond.49
  %118 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %src_devn_params, align 8, !tbaa !1
  %pdf14_compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %118, i32 0, i32 9
  %119 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pdf14_compressed_color_list, align 8, !tbaa !71
  store %struct.compressed_color_list_s* %119, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %120 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %cmp89 = icmp ne %struct.compressed_color_list_s* %120, null
  br i1 %cmp89, label %if.then.91, label %if.else.101

if.then.91:                                       ; preds = %for.end.88
  %121 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %mem92 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %121, i32 0, i32 0
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem92, align 8, !tbaa !74
  %call93 = call %struct.compressed_color_list_s* @alloc_compressed_color_list_elem(%struct.gs_memory_s* %122, i32 7) #5
  store %struct.compressed_color_list_s* %call93, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %123 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %first_bit_map94 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %123, i32 0, i32 3
  %124 = load i32, i32* %first_bit_map94, align 4, !tbaa !75
  %125 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %first_bit_map95 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %125, i32 0, i32 3
  store i32 %124, i32* %first_bit_map95, align 4, !tbaa !75
  %126 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %num_sub_level_ptrs96 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %126, i32 0, i32 2
  %127 = load i32, i32* %num_sub_level_ptrs96, align 4, !tbaa !72
  %128 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %num_sub_level_ptrs97 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %128, i32 0, i32 2
  store i32 %127, i32* %num_sub_level_ptrs97, align 4, !tbaa !72
  %129 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list, align 8, !tbaa !1
  %130 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %131 = load %struct.gx_device_s*, %struct.gx_device_s** %pdesdev.addr, align 8, !tbaa !1
  %memory98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory98, align 8, !tbaa !21
  %call99 = call i32 @copy_color_list(%struct.compressed_color_list_s* %129, %struct.compressed_color_list_s* %130, %struct.gs_memory_s* %132) #5
  store i32 %call99, i32* %code, align 4, !tbaa !20
  %133 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list, align 8, !tbaa !1
  %134 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %pdf14_compressed_color_list100 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %134, i32 0, i32 9
  store %struct.compressed_color_list_s* %133, %struct.compressed_color_list_s** %pdf14_compressed_color_list100, align 8, !tbaa !71
  br label %if.end.103

if.else.101:                                      ; preds = %for.end.88
  %135 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %des_devn_params, align 8, !tbaa !1
  %pdf14_compressed_color_list102 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %135, i32 0, i32 9
  store %struct.compressed_color_list_s* null, %struct.compressed_color_list_s** %pdf14_compressed_color_list102, align 8, !tbaa !71
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.91
  %136 = load i32, i32* %code, align 4, !tbaa !20
  %137 = bitcast %struct.compressed_color_list_s** %des_color_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast %struct.compressed_color_list_s** %src_color_list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast %struct.gs_devn_params_s** %des_devn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast %struct.gs_devn_params_s** %src_devn_params to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  ret i32 %136
}

; Function Attrs: nounwind uwtable
define %struct.compressed_color_list_s* @alloc_compressed_color_list_elem(%struct.gs_memory_s* %mem, i32 %num_comps) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %num_comps.addr = alloca i32, align 4
  %plist = alloca %struct.compressed_color_list_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !20
  %0 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %1, i32 0, i32 0
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %3 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !76
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !34
  %call = call i8* %3(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* @st_compressed_color_list, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0)) #5
  %6 = bitcast i8* %call to %struct.compressed_color_list_s*
  store %struct.compressed_color_list_s* %6, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %7 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %cmp = icmp ne %struct.compressed_color_list_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %9 = bitcast %struct.compressed_color_list_s* %8 to i8*
  %call2 = call i8* @memset(i8* %9, i32 0, i64 6168) #7
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 0
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory3, align 8, !tbaa !34
  %12 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %mem4 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %12, i32 0, i32 0
  store %struct.gs_memory_s* %11, %struct.gs_memory_s** %mem4, align 8, !tbaa !74
  %13 = load i32, i32* %num_comps.addr, align 4, !tbaa !20
  %14 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %level_num_comp = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %14, i32 0, i32 1
  store i32 %13, i32* %level_num_comp, align 4, !tbaa !77
  %15 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %first_bit_map = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %15, i32 0, i32 3
  store i32 256, i32* %first_bit_map, align 4, !tbaa !75
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %17 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %17) #1
  ret %struct.compressed_color_list_s* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_color_list(%struct.compressed_color_list_s* %src_color_list, %struct.compressed_color_list_s* %des_color_list, %struct.gs_memory_s* %memory) #0 {
entry:
  %retval = alloca i32, align 4
  %src_color_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %des_color_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %k = alloca i32, align 4
  %num_sub_levels = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.compressed_color_list_s* %src_color_list, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  store %struct.compressed_color_list_s* %des_color_list, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %num_sub_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %2, i32 0, i32 2
  %3 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  store i32 %3, i32* %num_sub_levels, align 4, !tbaa !20
  %4 = load i32, i32* %num_sub_levels, align 4, !tbaa !20
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %k, align 4, !tbaa !20
  %6 = load i32, i32* %num_sub_levels, align 4, !tbaa !20
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  %mem = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem, align 8, !tbaa !74
  %9 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %level_num_comp = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %9, i32 0, i32 1
  %10 = load i32, i32* %level_num_comp, align 4, !tbaa !77
  %sub = sub nsw i32 %10, 1
  %call = call %struct.compressed_color_list_s* @alloc_compressed_color_list_elem(%struct.gs_memory_s* %8, i32 %sub) #5
  %11 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %12, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u to [256 x %struct.compressed_color_list_s*]*
  %arrayidx = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom
  store %struct.compressed_color_list_s* %call, %struct.compressed_color_list_s** %arrayidx, align 8, !tbaa !1
  %13 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom2 = sext i32 %13 to i64
  %14 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %u3 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %14, i32 0, i32 4
  %sub_level_ptrs4 = bitcast %union.anon.10* %u3 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx5 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs4, i32 0, i64 %idxprom2
  %15 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx5, align 8, !tbaa !1
  %cmp6 = icmp eq %struct.compressed_color_list_s* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.copy_color_list, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 612, i32 1, i32 -1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.31, i32 0, i32 0)) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  %16 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  %u10 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %17, i32 0, i32 4
  %sub_level_ptrs11 = bitcast %union.anon.10* %u10 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx12 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs11, i32 0, i64 %idxprom9
  %18 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx12, align 8, !tbaa !1
  %first_bit_map = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %18, i32 0, i32 3
  %19 = load i32, i32* %first_bit_map, align 4, !tbaa !75
  %20 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom13 = sext i32 %20 to i64
  %21 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %u14 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %21, i32 0, i32 4
  %sub_level_ptrs15 = bitcast %union.anon.10* %u14 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx16 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs15, i32 0, i64 %idxprom13
  %22 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx16, align 8, !tbaa !1
  %first_bit_map17 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %22, i32 0, i32 3
  store i32 %19, i32* %first_bit_map17, align 4, !tbaa !75
  %23 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  %u19 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %24, i32 0, i32 4
  %sub_level_ptrs20 = bitcast %union.anon.10* %u19 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx21 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs20, i32 0, i64 %idxprom18
  %25 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx21, align 8, !tbaa !1
  %num_sub_level_ptrs22 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %25, i32 0, i32 2
  %26 = load i32, i32* %num_sub_level_ptrs22, align 4, !tbaa !72
  %27 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %u24 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %28, i32 0, i32 4
  %sub_level_ptrs25 = bitcast %union.anon.10* %u24 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx26 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs25, i32 0, i64 %idxprom23
  %29 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx26, align 8, !tbaa !1
  %num_sub_level_ptrs27 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %29, i32 0, i32 2
  store i32 %26, i32* %num_sub_level_ptrs27, align 4, !tbaa !72
  %30 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom28 = sext i32 %30 to i64
  %31 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  %u29 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %31, i32 0, i32 4
  %sub_level_ptrs30 = bitcast %union.anon.10* %u29 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx31 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs30, i32 0, i64 %idxprom28
  %32 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx31, align 8, !tbaa !1
  %33 = load i32, i32* %k, align 4, !tbaa !20
  %idxprom32 = sext i32 %33 to i64
  %34 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %u33 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %34, i32 0, i32 4
  %sub_level_ptrs34 = bitcast %union.anon.10* %u33 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx35 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs34, i32 0, i64 %idxprom32
  %35 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx35, align 8, !tbaa !1
  %36 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call36 = call i32 @copy_color_list(%struct.compressed_color_list_s* %32, %struct.compressed_color_list_s* %35, %struct.gs_memory_s* %36) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %k, align 4, !tbaa !20
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %k, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.else:                                          ; preds = %entry
  %38 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %des_color_list.addr, align 8, !tbaa !1
  %u37 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %38, i32 0, i32 4
  %comp_data = bitcast %union.anon.10* %u37 to [256 x %struct.comp_bit_map_list_s]*
  %arrayidx38 = getelementptr inbounds [256 x %struct.comp_bit_map_list_s], [256 x %struct.comp_bit_map_list_s]* %comp_data, i32 0, i64 0
  %39 = bitcast %struct.comp_bit_map_list_s* %arrayidx38 to i8*
  %40 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %src_color_list.addr, align 8, !tbaa !1
  %u39 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %40, i32 0, i32 4
  %comp_data40 = bitcast %union.anon.10* %u39 to [256 x %struct.comp_bit_map_list_s]*
  %arrayidx41 = getelementptr inbounds [256 x %struct.comp_bit_map_list_s], [256 x %struct.comp_bit_map_list_s]* %comp_data40, i32 0, i64 0
  %41 = bitcast %struct.comp_bit_map_list_s* %arrayidx41 to i8*
  %call42 = call i8* @memcpy(i8* %39, i8* %41, i64 6144) #7
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.7
  %42 = bitcast i32* %num_sub_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @devn_printer_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist, %struct.gs_devn_params_s* %pdevn_params, %struct.equivalent_cmyk_color_params_s* %pequiv_colors) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %pequiv_colors.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %code = alloca i32, align 4
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %saved_devn_params = alloca %struct.gs_devn_params_s, align 8
  %saved_equiv_colors = alloca %struct.equivalent_cmyk_color_params_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pequiv_colors, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %1) #1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %3 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %4 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 720, i32 8, i1 false), !tbaa.struct !78
  %5 = bitcast %struct.gs_devn_params_s* %saved_devn_params to i8*
  call void @llvm.lifetime.start(i64 2400, i8* %5) #1
  %6 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gs_devn_params_s* %saved_devn_params to i8*
  %8 = bitcast %struct.gs_devn_params_s* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 2400, i32 8, i1 false), !tbaa.struct !80
  %9 = bitcast %struct.equivalent_cmyk_color_params_s* %saved_equiv_colors to i8*
  call void @llvm.lifetime.start(i64 772, i8* %9) #1
  %10 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.equivalent_cmyk_color_params_s* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %12 = bitcast %struct.equivalent_cmyk_color_params_s* %saved_equiv_colors to i8*
  %13 = bitcast %struct.equivalent_cmyk_color_params_s* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 772, i32 4, i1 false), !tbaa.struct !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %16 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %17 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %call = call i32 @devn_put_params(%struct.gx_device_s* %14, %struct.gs_param_list_s* %15, %struct.gs_devn_params_s* %16, %struct.equivalent_cmyk_color_params_s* %17) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %18 = load i32, i32* %code, align 4, !tbaa !20
  %cmp1 = icmp sge i32 %18, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call3 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %19, %struct.gs_param_list_s* %20) #5
  store i32 %call3, i32* %code, align 4, !tbaa !20
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %21 = load i32, i32* %code, align 4, !tbaa !20
  %cmp5 = icmp slt i32 %21, 0
  br i1 %cmp5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end.4
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 11
  %23 = bitcast %struct.gx_device_color_info_s* %color_info7 to i8*
  %24 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 720, i32 8, i1 false), !tbaa.struct !78
  %25 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gs_devn_params_s* %25 to i8*
  %27 = bitcast %struct.gs_devn_params_s* %saved_devn_params to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 2400, i32 8, i1 false), !tbaa.struct !80
  %28 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %cmp8 = icmp ne %struct.equivalent_cmyk_color_params_s* %28, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.6
  %29 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %30 = bitcast %struct.equivalent_cmyk_color_params_s* %29 to i8*
  %31 = bitcast %struct.equivalent_cmyk_color_params_s* %saved_equiv_colors to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 772, i32 4, i1 false), !tbaa.struct !81
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.then.6
  %32 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.end.4
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 11
  %34 = bitcast %struct.gx_device_color_info_s* %color_info12 to i8*
  %35 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %call13 = call i32 @memcmp(i8* %34, i8* %35, i64 720) #6
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.11
  %36 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %37 = bitcast %struct.gs_devn_params_s* %36 to i8*
  %38 = bitcast %struct.gs_devn_params_s* %saved_devn_params to i8*
  %call14 = call i32 @memcmp(i8* %37, i8* %38, i64 2400) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %39 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %cmp17 = icmp ne %struct.equivalent_cmyk_color_params_s* %39, null
  br i1 %cmp17, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %lor.lhs.false.16
  %40 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors.addr, align 8, !tbaa !1
  %call18 = call i32 @compare_equivalent_cmyk_color_params(%struct.equivalent_cmyk_color_params_s* %40, %struct.equivalent_cmyk_color_params_s* %saved_equiv_colors) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.11
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call21 = call i32 @gs_closedevice(%struct.gx_device_s* %41) #5
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %42) #5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %land.lhs.true, %lor.lhs.false.16
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %44 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %45 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call23 = call i32 @pdf14_put_devn_params(%struct.gx_device_s* %43, %struct.gs_devn_params_s* %44, %struct.gs_param_list_s* %45) #5
  store i32 %call23, i32* %code, align 4, !tbaa !20
  %46 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.end.10
  %47 = bitcast %struct.equivalent_cmyk_color_params_s* %saved_equiv_colors to i8*
  call void @llvm.lifetime.end(i64 772, i8* %47) #1
  %48 = bitcast %struct.gs_devn_params_s* %saved_devn_params to i8*
  call void @llvm.lifetime.end(i64 2400, i8* %48) #1
  %49 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %49) #1
  %50 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @compare_equivalent_cmyk_color_params(%struct.equivalent_cmyk_color_params_s* %pequiv_colors1, %struct.equivalent_cmyk_color_params_s* %pequiv_colors2) #0 {
entry:
  %retval = alloca i32, align 4
  %pequiv_colors1.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %pequiv_colors2.addr = alloca %struct.equivalent_cmyk_color_params_s*, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.equivalent_cmyk_color_params_s* %pequiv_colors1, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  store %struct.equivalent_cmyk_color_params_s* %pequiv_colors2, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  %all_color_info_valid = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %1, i32 0, i32 0
  %2 = load i32, i32* %all_color_info_valid, align 4, !tbaa !40
  %3 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %all_color_info_valid1 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %3, i32 0, i32 0
  %4 = load i32, i32* %all_color_info_valid1, align 4, !tbaa !40
  %cmp = icmp ne i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %5, 64
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  %color = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color, i32 0, i64 %idxprom
  %color_info_valid = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %color_info_valid, align 4, !tbaa !38
  %9 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %color4 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color4, i32 0, i64 %idxprom3
  %color_info_valid6 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx5, i32 0, i32 0
  %11 = load i32, i32* %color_info_valid6, align 4, !tbaa !38
  %cmp7 = icmp ne i32 %8, %11
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom10 = sext i32 %12 to i64
  %13 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  %color11 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color11, i32 0, i64 %idxprom10
  %c = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx12, i32 0, i32 1
  %14 = load i16, i16* %c, align 2, !tbaa !46
  %conv = sext i16 %14 to i32
  %15 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom13 = sext i32 %15 to i64
  %16 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %color14 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color14, i32 0, i64 %idxprom13
  %c16 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx15, i32 0, i32 1
  %17 = load i16, i16* %c16, align 2, !tbaa !46
  %conv17 = sext i16 %17 to i32
  %cmp18 = icmp ne i32 %conv, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.9
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.21:                                        ; preds = %if.end.9
  %18 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom22 = sext i32 %18 to i64
  %19 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  %color23 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color23, i32 0, i64 %idxprom22
  %m = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx24, i32 0, i32 2
  %20 = load i16, i16* %m, align 2, !tbaa !47
  %conv25 = sext i16 %20 to i32
  %21 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom26 = sext i32 %21 to i64
  %22 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %color27 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %22, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color27, i32 0, i64 %idxprom26
  %m29 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx28, i32 0, i32 2
  %23 = load i16, i16* %m29, align 2, !tbaa !47
  %conv30 = sext i16 %23 to i32
  %cmp31 = icmp ne i32 %conv25, %conv30
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.21
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %if.end.21
  %24 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom35 = sext i32 %24 to i64
  %25 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  %color36 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %25, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color36, i32 0, i64 %idxprom35
  %y = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx37, i32 0, i32 3
  %26 = load i16, i16* %y, align 2, !tbaa !48
  %conv38 = sext i16 %26 to i32
  %27 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom39 = sext i32 %27 to i64
  %28 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %color40 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %28, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color40, i32 0, i64 %idxprom39
  %y42 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx41, i32 0, i32 3
  %29 = load i16, i16* %y42, align 2, !tbaa !48
  %conv43 = sext i16 %29 to i32
  %cmp44 = icmp ne i32 %conv38, %conv43
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.34
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.34
  %30 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom48 = sext i32 %30 to i64
  %31 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors1.addr, align 8, !tbaa !1
  %color49 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %31, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color49, i32 0, i64 %idxprom48
  %k = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx50, i32 0, i32 4
  %32 = load i16, i16* %k, align 2, !tbaa !49
  %conv51 = sext i16 %32 to i32
  %33 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom52 = sext i32 %33 to i64
  %34 = load %struct.equivalent_cmyk_color_params_s*, %struct.equivalent_cmyk_color_params_s** %pequiv_colors2.addr, align 8, !tbaa !1
  %color53 = getelementptr inbounds %struct.equivalent_cmyk_color_params_s, %struct.equivalent_cmyk_color_params_s* %34, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [64 x %struct.cmyk_color_s], [64 x %struct.cmyk_color_s]* %color53, i32 0, i64 %idxprom52
  %k55 = getelementptr inbounds %struct.cmyk_color_s, %struct.cmyk_color_s* %arrayidx54, i32 0, i32 4
  %35 = load i16, i16* %k55, align 2, !tbaa !49
  %conv56 = sext i16 %35 to i32
  %cmp57 = icmp ne i32 %conv51, %conv56
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.47
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %36 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.59, %if.then.46, %if.then.33, %if.then.20, %if.then.8, %if.then
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @gs_closedevice(%struct.gx_device_s*) #2

declare void @set_linear_color_bits_mask_shift(%struct.gx_device_s*) #2

declare i32 @pdf14_put_devn_params(%struct.gx_device_s*, %struct.gs_devn_params_s*, %struct.gs_param_list_s*) #2

; Function Attrs: nounwind uwtable
define void @print_compressed_color_list(%struct.gs_memory_s* %mem, %struct.compressed_color_list_s* %pcomp_list, i32 %num_comp) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pcomp_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %num_comp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %comp_num = alloca i32, align 4
  %comp = alloca i32, align 4
  %pcomp_bit_map = alloca %struct.comp_bit_map_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.compressed_color_list_s* %pcomp_list, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !20
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.comp_bit_map_list_s** %pcomp_bit_map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.compressed_color_list_s* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %level_num_comp = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %6, i32 0, i32 1
  %7 = load i32, i32* %level_num_comp, align 4, !tbaa !77
  %sub = sub nsw i32 7, %7
  store i32 %sub, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !tbaa !20
  %cmp1 = icmp sgt i32 %8, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 865) #5
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !20
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 866) #5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %14 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %level_num_comp2 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %14, i32 0, i32 1
  %15 = load i32, i32* %level_num_comp2, align 4, !tbaa !77
  %call3 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i32 %15) #5
  store i32 255, i32* %i, align 4, !tbaa !20
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.56, %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !20
  %17 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %first_bit_map = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %17, i32 0, i32 3
  %18 = load i32, i32* %first_bit_map, align 4, !tbaa !75
  %cmp5 = icmp sge i32 %16, %18
  br i1 %cmp5, label %for.body.6, label %for.end.58

for.body.6:                                       ; preds = %for.cond.4
  %19 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %20, i32 0, i32 4
  %comp_data = bitcast %union.anon.10* %u to [256 x %struct.comp_bit_map_list_s]*
  %arrayidx = getelementptr inbounds [256 x %struct.comp_bit_map_list_s], [256 x %struct.comp_bit_map_list_s]* %comp_data, i32 0, i64 %idxprom
  store %struct.comp_bit_map_list_s* %arrayidx, %struct.comp_bit_map_list_s** %pcomp_bit_map, align 8, !tbaa !1
  %21 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %level_num_comp7 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %21, i32 0, i32 1
  %22 = load i32, i32* %level_num_comp7, align 4, !tbaa !77
  %sub8 = sub nsw i32 7, %22
  store i32 %sub8, i32* %j, align 4, !tbaa !20
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.13, %for.body.6
  %23 = load i32, i32* %j, align 4, !tbaa !20
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %for.body.11, label %for.end.15

for.body.11:                                      ; preds = %for.cond.9
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 874) #5
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call12 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.11
  %26 = load i32, i32* %j, align 4, !tbaa !20
  %dec14 = add nsw i32 %26, -1
  store i32 %dec14, i32* %j, align 4, !tbaa !20
  br label %for.cond.9

for.end.15:                                       ; preds = %for.cond.9
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 877) #5
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %29 = load i32, i32* %i, align 4, !tbaa !20
  %30 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pcomp_bit_map, align 8, !tbaa !1
  %num_comp16 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %30, i32 0, i32 0
  %31 = load i16, i16* %num_comp16, align 2, !tbaa !82
  %conv = sext i16 %31 to i32
  %32 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pcomp_bit_map, align 8, !tbaa !1
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %32, i32 0, i32 1
  %33 = load i16, i16* %num_non_solid_comp, align 2, !tbaa !84
  %conv17 = sext i16 %33 to i32
  %34 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pcomp_bit_map, align 8, !tbaa !1
  %solid_not_100 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %34, i32 0, i32 2
  %35 = load i32, i32* %solid_not_100, align 4, !tbaa !85
  %call18 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 %29, i32 %conv, i32 %conv17, i32 %35) #5
  %36 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %sub19 = sub nsw i32 %36, 1
  store i32 %sub19, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.32, %for.end.15
  %37 = load i32, i32* %comp_num, align 4, !tbaa !20
  %cmp21 = icmp sge i32 %37, 0
  br i1 %cmp21, label %for.body.23, label %for.end.34

for.body.23:                                      ; preds = %for.cond.20
  %38 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pcomp_bit_map, align 8, !tbaa !1
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %38, i32 0, i32 3
  %39 = load i64, i64* %colorants, align 8, !tbaa !86
  %40 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom = zext i32 %40 to i64
  %shr = lshr i64 %39, %sh_prom
  %conv24 = trunc i64 %shr to i32
  %and = and i32 %conv24, 1
  store i32 %and, i32* %comp, align 4, !tbaa !20
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 880) #5
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %43 = load i32, i32* %comp, align 4, !tbaa !20
  %call25 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %43) #5
  %44 = load i32, i32* %comp_num, align 4, !tbaa !20
  %and26 = and i32 %44, 7
  %cmp27 = icmp eq i32 %and26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %for.body.23
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 882) #5
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call30 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.body.23
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %47 = load i32, i32* %comp_num, align 4, !tbaa !20
  %dec33 = add nsw i32 %47, -1
  store i32 %dec33, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 884) #5
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call35 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #5
  %50 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %sub36 = sub nsw i32 %50, 1
  store i32 %sub36, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.52, %for.end.34
  %51 = load i32, i32* %comp_num, align 4, !tbaa !20
  %cmp38 = icmp sge i32 %51, 0
  br i1 %cmp38, label %for.body.40, label %for.end.54

for.body.40:                                      ; preds = %for.cond.37
  %52 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pcomp_bit_map, align 8, !tbaa !1
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %52, i32 0, i32 4
  %53 = load i64, i64* %solid_colorants, align 8, !tbaa !87
  %54 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom41 = zext i32 %54 to i64
  %shr42 = lshr i64 %53, %sh_prom41
  %conv43 = trunc i64 %shr42 to i32
  %and44 = and i32 %conv43, 1
  store i32 %and44, i32* %comp, align 4, !tbaa !20
  %55 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 887) #5
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %57 = load i32, i32* %comp, align 4, !tbaa !20
  %call45 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i32 %57) #5
  %58 = load i32, i32* %comp_num, align 4, !tbaa !20
  %and46 = and i32 %58, 7
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.body.40
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 889) #5
  %60 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call50 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0)) #5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.body.40
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %61 = load i32, i32* %comp_num, align 4, !tbaa !20
  %dec53 = add nsw i32 %61, -1
  store i32 %dec53, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.37

for.end.54:                                       ; preds = %for.cond.37
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i32 891) #5
  %63 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call55 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #5
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.54
  %64 = load i32, i32* %i, align 4, !tbaa !20
  %dec57 = add nsw i32 %64, -1
  store i32 %dec57, i32* %i, align 4, !tbaa !20
  br label %for.cond.4

for.end.58:                                       ; preds = %for.cond.4
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.66, %for.end.58
  %65 = load i32, i32* %i, align 4, !tbaa !20
  %66 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %66, i32 0, i32 2
  %67 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp60 = icmp slt i32 %65, %67
  br i1 %cmp60, label %for.body.62, label %for.end.67

for.body.62:                                      ; preds = %for.cond.59
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %69 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom63 = sext i32 %69 to i64
  %70 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u64 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %70, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u64 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx65 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom63
  %71 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx65, align 8, !tbaa !1
  %72 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  call void @print_compressed_color_list(%struct.gs_memory_s* %68, %struct.compressed_color_list_s* %71, i32 %72) #5
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.62
  %73 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond.59

for.end.67:                                       ; preds = %for.cond.59
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.67, %if.then
  %74 = bitcast %struct.comp_bit_map_list_s** %pcomp_bit_map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  ret void
}

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #2

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define void @free_separation_names(%struct.gs_memory_s* %mem, %struct.gs_separations_s* %pseparation) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pseparation.addr = alloca %struct.gs_separations_s*, align 8
  %i = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_separations_s* %pseparation, %struct.gs_separations_s** %pseparation.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !20
  %2 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparation.addr, align 8, !tbaa !1
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %2, i32 0, i32 0
  %3 = load i32, i32* %num_separations, align 4, !tbaa !26
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 0
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !34
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %6 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %stable_memory1 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 0
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory1, align 8, !tbaa !34
  %9 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparation.addr, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx, i32 0, i32 1
  %11 = load i8*, i8** %data, align 8, !tbaa !29
  call void %6(%struct.gs_memory_s* %8, i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0)) #5
  %12 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparation.addr, align 8, !tbaa !1
  %names3 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %13, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names3, i32 0, i64 %idxprom2
  %data5 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx4, i32 0, i32 1
  store i8* null, i8** %data5, align 8, !tbaa !29
  %14 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparation.addr, align 8, !tbaa !1
  %names7 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %15, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names7, i32 0, i64 %idxprom6
  %size = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx8, i32 0, i32 0
  store i32 0, i32* %size, align 4, !tbaa !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.gs_separations_s*, %struct.gs_separations_s** %pseparation.addr, align 8, !tbaa !1
  %num_separations9 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %17, i32 0, i32 0
  store i32 0, i32* %num_separations9, align 4, !tbaa !26
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @devn_encode_compressed_color(%struct.gx_device_s* %pdev, i16* %colors, %struct.gs_devn_params_s* %pdevn_params) #0 {
entry:
  %retval = alloca i64, align 8
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %num_comp = alloca i32, align 4
  %comp_num = alloca i32, align 4
  %comp_count = alloca i32, align 4
  %solid_comp_count = alloca i32, align 4
  %bit_pos = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %group = alloca i32, align 4
  %color_resolution = alloca i32, align 4
  %found = alloca i32, align 4
  %added = alloca i32, align 4
  %new_comp_bit_map = alloca %struct.comp_bit_map_list_s, align 8
  %pbit_map = alloca %struct.comp_bit_map_list_s*, align 8
  %color = alloca i64, align 8
  %list_index = alloca i64, align 8
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  %group_size = alloca [256 x i16], align 16
  %value = alloca i32, align 4
  %largest_group_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %2 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %2, i32* %num_comp, align 4, !tbaa !20
  %3 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %comp_count, align 4, !tbaa !20
  %5 = bitcast i32* %solid_comp_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %solid_comp_count, align 4, !tbaa !20
  %6 = bitcast i32* %bit_pos to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %bit_pos, align 4, !tbaa !20
  %7 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %group to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %group, align 4, !tbaa !20
  %9 = bitcast i32* %color_resolution to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 255, i32* %color_resolution, align 4, !tbaa !20
  %10 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %added to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = bitcast %struct.comp_bit_map_list_s* %new_comp_bit_map to i8*
  call void @llvm.lifetime.start(i64 24, i8* %12) #1
  %13 = bitcast %struct.comp_bit_map_list_s* %new_comp_bit_map to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 24, i32 8, i1 false)
  %14 = bitcast %struct.comp_bit_map_list_s** %pbit_map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  store i64 0, i64* %color, align 8, !tbaa !79
  %16 = bitcast i64* %list_index to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #1
  %17 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %comp_num, align 4, !tbaa !20
  %21 = load i32, i32* %num_comp, align 4, !tbaa !20
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom = sext i32 %22 to i64
  %23 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %23, i64 %idxprom
  %24 = load i16, i16* %arrayidx, align 2, !tbaa !5
  %conv = zext i16 %24 to i32
  %25 = load i32, i32* %color_resolution, align 4, !tbaa !20
  %cmp1 = icmp sgt i32 %conv, %25
  br i1 %cmp1, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %26 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom = zext i32 %26 to i64
  %shl = shl i64 1, %sh_prom
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 3
  %27 = load i64, i64* %colorants, align 8, !tbaa !86
  %or = or i64 %27, %shl
  store i64 %or, i64* %colorants, align 8, !tbaa !86
  %28 = load i32, i32* %comp_count, align 4, !tbaa !20
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %comp_count, align 4, !tbaa !20
  %29 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom3 = sext i32 %29 to i64
  %30 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %30, i64 %idxprom3
  %31 = load i16, i16* %arrayidx4, align 2, !tbaa !5
  %conv5 = zext i16 %31 to i32
  %32 = load i32, i32* %color_resolution, align 4, !tbaa !20
  %sub = sub nsw i32 65535, %32
  %cmp6 = icmp sgt i32 %conv5, %sub
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %33 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom9 = zext i32 %33 to i64
  %shl10 = shl i64 1, %sh_prom9
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 4
  %34 = load i64, i64* %solid_colorants, align 8, !tbaa !87
  %or11 = or i64 %34, %shl10
  store i64 %or11, i64* %solid_colorants, align 8, !tbaa !87
  %35 = load i32, i32* %solid_comp_count, align 4, !tbaa !20
  %inc12 = add nsw i32 %35, 1
  store i32 %inc12, i32* %solid_comp_count, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %36 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc14 = add nsw i32 %36, 1
  store i32 %inc14, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %comp_count, align 4, !tbaa !20
  %conv15 = trunc i32 %37 to i16
  %num_comp16 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 0
  store i16 %conv15, i16* %num_comp16, align 2, !tbaa !82
  %38 = load i32, i32* %comp_count, align 4, !tbaa !20
  %39 = load i32, i32* %solid_comp_count, align 4, !tbaa !20
  %sub17 = sub nsw i32 %38, %39
  %conv18 = trunc i32 %sub17 to i16
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 1
  store i16 %conv18, i16* %num_non_solid_comp, align 2, !tbaa !84
  %num_non_solid_comp19 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 1
  %40 = load i16, i16* %num_non_solid_comp19, align 2, !tbaa !84
  %conv20 = sext i16 %40 to i32
  %cmp21 = icmp sgt i32 %conv20, 7
  br i1 %cmp21, label %land.lhs.true, label %if.end.82

land.lhs.true:                                    ; preds = %for.end
  %41 = load i32, i32* %solid_comp_count, align 4, !tbaa !20
  %42 = load i32, i32* %comp_count, align 4, !tbaa !20
  %div = sdiv i32 %42, 2
  %cmp23 = icmp slt i32 %41, %div
  br i1 %cmp23, label %if.then.25, label %if.end.82

if.then.25:                                       ; preds = %land.lhs.true
  %43 = bitcast [256 x i16]* %group_size to i8*
  call void @llvm.lifetime.start(i64 512, i8* %43) #1
  %44 = bitcast [256 x i16]* %group_size to i8*
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 512, i32 16, i1 false)
  %45 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = bitcast i32* %largest_group_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  store i32 0, i32* %largest_group_size, align 4, !tbaa !20
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.47, %if.then.25
  %47 = load i32, i32* %comp_num, align 4, !tbaa !20
  %48 = load i32, i32* %num_comp, align 4, !tbaa !20
  %cmp27 = icmp slt i32 %47, %48
  br i1 %cmp27, label %for.body.29, label %for.end.49

for.body.29:                                      ; preds = %for.cond.26
  %49 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom30 = sext i32 %49 to i64
  %50 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %50, i64 %idxprom30
  %51 = load i16, i16* %arrayidx31, align 2, !tbaa !5
  %conv32 = zext i16 %51 to i32
  %div33 = sdiv i32 %conv32, 256
  store i32 %div33, i32* %value, align 4, !tbaa !20
  %52 = load i32, i32* %value, align 4, !tbaa !20
  %idxprom34 = sext i32 %52 to i64
  %arrayidx35 = getelementptr inbounds [256 x i16], [256 x i16]* %group_size, i32 0, i64 %idxprom34
  %53 = load i16, i16* %arrayidx35, align 2, !tbaa !5
  %inc36 = add i16 %53, 1
  store i16 %inc36, i16* %arrayidx35, align 2, !tbaa !5
  %54 = load i32, i32* %value, align 4, !tbaa !20
  %idxprom37 = sext i32 %54 to i64
  %arrayidx38 = getelementptr inbounds [256 x i16], [256 x i16]* %group_size, i32 0, i64 %idxprom37
  %55 = load i16, i16* %arrayidx38, align 2, !tbaa !5
  %conv39 = sext i16 %55 to i32
  %56 = load i32, i32* %largest_group_size, align 4, !tbaa !20
  %cmp40 = icmp sgt i32 %conv39, %56
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %for.body.29
  %57 = load i32, i32* %value, align 4, !tbaa !20
  %idxprom43 = sext i32 %57 to i64
  %arrayidx44 = getelementptr inbounds [256 x i16], [256 x i16]* %group_size, i32 0, i64 %idxprom43
  %58 = load i16, i16* %arrayidx44, align 2, !tbaa !5
  %conv45 = sext i16 %58 to i32
  store i32 %conv45, i32* %largest_group_size, align 4, !tbaa !20
  %59 = load i32, i32* %value, align 4, !tbaa !20
  store i32 %59, i32* %group, align 4, !tbaa !20
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %for.body.29
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %60 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc48 = add nsw i32 %60, 1
  store i32 %inc48, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.26

for.end.49:                                       ; preds = %for.cond.26
  %61 = load i32, i32* %largest_group_size, align 4, !tbaa !20
  %62 = load i32, i32* %solid_comp_count, align 4, !tbaa !20
  %add = add nsw i32 %62, 1
  %cmp50 = icmp sgt i32 %61, %add
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.81

land.lhs.true.52:                                 ; preds = %for.end.49
  %63 = load i32, i32* %comp_count, align 4, !tbaa !20
  %64 = load i32, i32* %largest_group_size, align 4, !tbaa !20
  %sub53 = sub nsw i32 %63, %64
  %cmp54 = icmp slt i32 %sub53, 14
  br i1 %cmp54, label %if.then.56, label %if.end.81

if.then.56:                                       ; preds = %land.lhs.true.52
  %solid_colorants57 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 4
  %65 = bitcast i64* %solid_colorants57 to i8*
  %call = call i8* @memset(i8* %65, i32 0, i64 8) #7
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.74, %if.then.56
  %66 = load i32, i32* %comp_num, align 4, !tbaa !20
  %67 = load i32, i32* %num_comp, align 4, !tbaa !20
  %cmp59 = icmp slt i32 %66, %67
  br i1 %cmp59, label %for.body.61, label %for.end.76

for.body.61:                                      ; preds = %for.cond.58
  %68 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom62 = sext i32 %68 to i64
  %69 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx63 = getelementptr inbounds i16, i16* %69, i64 %idxprom62
  %70 = load i16, i16* %arrayidx63, align 2, !tbaa !5
  %conv64 = zext i16 %70 to i32
  %div65 = sdiv i32 %conv64, 256
  store i32 %div65, i32* %value, align 4, !tbaa !20
  %71 = load i32, i32* %value, align 4, !tbaa !20
  %72 = load i32, i32* %group, align 4, !tbaa !20
  %cmp66 = icmp eq i32 %71, %72
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %for.body.61
  %73 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom69 = zext i32 %73 to i64
  %shl70 = shl i64 1, %sh_prom69
  %solid_colorants71 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 4
  %74 = load i64, i64* %solid_colorants71, align 8, !tbaa !87
  %or72 = or i64 %74, %shl70
  store i64 %or72, i64* %solid_colorants71, align 8, !tbaa !87
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %for.body.61
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.73
  %75 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc75 = add nsw i32 %75, 1
  store i32 %inc75, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.58

for.end.76:                                       ; preds = %for.cond.58
  %solid_not_100 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 2
  store i32 1, i32* %solid_not_100, align 4, !tbaa !85
  %76 = load i32, i32* %comp_count, align 4, !tbaa !20
  %77 = load i32, i32* %largest_group_size, align 4, !tbaa !20
  %sub77 = sub nsw i32 %76, %77
  %add78 = add nsw i32 %sub77, 1
  %conv79 = trunc i32 %add78 to i16
  %num_non_solid_comp80 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 1
  store i16 %conv79, i16* %num_non_solid_comp80, align 2, !tbaa !84
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.76, %land.lhs.true.52, %for.end.49
  %78 = bitcast i32* %largest_group_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #1
  %79 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #1
  %80 = bitcast [256 x i16]* %group_size to i8*
  call void @llvm.lifetime.end(i64 512, i8* %80) #1
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true, %for.end
  %num_non_solid_comp83 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %new_comp_bit_map, i32 0, i32 1
  %81 = load i16, i16* %num_non_solid_comp83, align 2, !tbaa !84
  %conv84 = sext i16 %81 to i32
  %cmp85 = icmp sgt i32 %conv84, 14
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.82
  store i64 -2, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.88:                                        ; preds = %if.end.82
  %82 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %82, i32 0, i32 8
  %83 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list, align 8, !tbaa !69
  %cmp89 = icmp eq %struct.compressed_color_list_s* %83, null
  br i1 %cmp89, label %if.then.91, label %if.end.99

if.then.91:                                       ; preds = %if.end.88
  %84 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %84, i32 0, i32 3
  %85 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !21
  %stable_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %85, i32 0, i32 0
  %86 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory, align 8, !tbaa !34
  %call92 = call %struct.compressed_color_list_s* @init_compressed_color_list(%struct.gs_memory_s* %86) #5
  %87 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list93 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %87, i32 0, i32 8
  store %struct.compressed_color_list_s* %call92, %struct.compressed_color_list_s** %compressed_color_list93, align 8, !tbaa !69
  %88 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list94 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %88, i32 0, i32 8
  %89 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list94, align 8, !tbaa !69
  %cmp95 = icmp eq %struct.compressed_color_list_s* %89, null
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.then.91
  store i64 -2, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.98:                                        ; preds = %if.then.91
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.88
  %90 = load i32, i32* %num_comp, align 4, !tbaa !20
  %91 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list100 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %91, i32 0, i32 8
  %92 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list100, align 8, !tbaa !69
  %call101 = call i32 @search_compressed_color_list(i32 %90, %struct.compressed_color_list_s* %92, %struct.comp_bit_map_list_s* %new_comp_bit_map, i64* %list_index, %struct.comp_bit_map_list_s** %pbit_map) #5
  store i32 %call101, i32* %found, align 4, !tbaa !20
  %93 = load i32, i32* %found, align 4, !tbaa !20
  %tobool = icmp ne i32 %93, 0
  br i1 %tobool, label %if.end.110, label %if.then.102

if.then.102:                                      ; preds = %if.end.99
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %memory103 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory103, align 8, !tbaa !21
  %stable_memory104 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 0
  %96 = load %struct.gs_memory_s*, %struct.gs_memory_s** %stable_memory104, align 8, !tbaa !34
  %97 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list105 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %97, i32 0, i32 8
  %98 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list105, align 8, !tbaa !69
  %call106 = call i32 @add_compressed_color_list(%struct.gs_memory_s* %96, %struct.comp_bit_map_list_s* %new_comp_bit_map, %struct.compressed_color_list_s* %98, i64* %list_index) #5
  store i32 %call106, i32* %added, align 4, !tbaa !20
  %99 = load i32, i32* %added, align 4, !tbaa !20
  %tobool107 = icmp ne i32 %99, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %if.then.102
  store i64 -2, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.109:                                       ; preds = %if.then.102
  store %struct.comp_bit_map_list_s* %new_comp_bit_map, %struct.comp_bit_map_list_s** %pbit_map, align 8, !tbaa !1
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.end.99
  %100 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbit_map, align 8, !tbaa !1
  %num_non_solid_comp111 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %100, i32 0, i32 1
  %101 = load i16, i16* %num_non_solid_comp111, align 2, !tbaa !84
  %idxprom112 = sext i16 %101 to i64
  %arrayidx113 = getelementptr inbounds [15 x i32], [15 x i32]* @num_comp_bits, i32 0, i64 %idxprom112
  %102 = load i32, i32* %arrayidx113, align 4, !tbaa !20
  store i32 %102, i32* %bit_count, align 4, !tbaa !20
  %103 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbit_map, align 8, !tbaa !1
  %solid_not_100114 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %103, i32 0, i32 2
  %104 = load i32, i32* %solid_not_100114, align 4, !tbaa !85
  %tobool115 = icmp ne i32 %104, 0
  br i1 %tobool115, label %if.then.116, label %if.end.120

if.then.116:                                      ; preds = %if.end.110
  %105 = load i32, i32* %group, align 4, !tbaa !20
  %106 = load i32, i32* %bit_count, align 4, !tbaa !20
  %sub117 = sub nsw i32 8, %106
  %shr = ashr i32 %105, %sub117
  %conv118 = sext i32 %shr to i64
  store i64 %conv118, i64* %color, align 8, !tbaa !79
  %107 = load i32, i32* %bit_count, align 4, !tbaa !20
  %108 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %add119 = add nsw i32 %108, %107
  store i32 %add119, i32* %bit_pos, align 4, !tbaa !20
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.116, %if.end.110
  br label %do.body

do.body:                                          ; preds = %if.end.120
  %109 = load i32, i32* %bit_count, align 4, !tbaa !20
  %shl121 = shl i32 1, %109
  %sub122 = sub nsw i32 %shl121, 1
  %110 = load i32, i32* %bit_count, align 4, !tbaa !20
  %conv123 = sext i32 %110 to i64
  %sub124 = sub i64 16, %conv123
  %sh_prom125 = trunc i64 %sub124 to i32
  %shl126 = shl i32 %sub122, %sh_prom125
  %add127 = add nsw i32 %shl126, 1
  store i32 %add127, i32* %COLROUND_M, align 4, !tbaa !20
  %111 = load i32, i32* %bit_count, align 4, !tbaa !20
  %conv128 = sext i32 %111 to i64
  %sub129 = sub i64 32, %conv128
  %conv130 = trunc i64 %sub129 to i32
  store i32 %conv130, i32* %COLROUND_S, align 4, !tbaa !20
  %112 = load i32, i32* %COLROUND_S, align 4, !tbaa !20
  %sub131 = sub i32 %112, 1
  %shl132 = shl i32 1, %sub131
  store i32 %shl132, i32* %COLROUND_R, align 4, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.161, %do.end
  %113 = load i32, i32* %comp_num, align 4, !tbaa !20
  %114 = load i32, i32* %num_comp, align 4, !tbaa !20
  %cmp134 = icmp slt i32 %113, %114
  br i1 %cmp134, label %for.body.136, label %for.end.163

for.body.136:                                     ; preds = %for.cond.133
  %115 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbit_map, align 8, !tbaa !1
  %colorants137 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %115, i32 0, i32 3
  %116 = load i64, i64* %colorants137, align 8, !tbaa !86
  %117 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom138 = zext i32 %117 to i64
  %shr139 = lshr i64 %116, %sh_prom138
  %conv140 = trunc i64 %shr139 to i32
  %and = and i32 %conv140, 1
  %tobool141 = icmp ne i32 %and, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.160

land.lhs.true.142:                                ; preds = %for.body.136
  %118 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbit_map, align 8, !tbaa !1
  %solid_colorants143 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %118, i32 0, i32 4
  %119 = load i64, i64* %solid_colorants143, align 8, !tbaa !87
  %120 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom144 = zext i32 %120 to i64
  %shr145 = lshr i64 %119, %sh_prom144
  %conv146 = trunc i64 %shr145 to i32
  %and147 = and i32 %conv146, 1
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %if.end.160, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.142
  %121 = load i32, i32* %COLROUND_M, align 4, !tbaa !20
  %122 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom150 = sext i32 %122 to i64
  %123 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds i16, i16* %123, i64 %idxprom150
  %124 = load i16, i16* %arrayidx151, align 2, !tbaa !5
  %conv152 = zext i16 %124 to i32
  %mul = mul i32 %121, %conv152
  %125 = load i32, i32* %COLROUND_R, align 4, !tbaa !20
  %add153 = add i32 %mul, %125
  %126 = load i32, i32* %COLROUND_S, align 4, !tbaa !20
  %shr154 = lshr i32 %add153, %126
  %conv155 = zext i32 %shr154 to i64
  %127 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %sh_prom156 = zext i32 %127 to i64
  %shl157 = shl i64 %conv155, %sh_prom156
  %128 = load i64, i64* %color, align 8, !tbaa !79
  %or158 = or i64 %128, %shl157
  store i64 %or158, i64* %color, align 8, !tbaa !79
  %129 = load i32, i32* %bit_count, align 4, !tbaa !20
  %130 = load i32, i32* %bit_pos, align 4, !tbaa !20
  %add159 = add nsw i32 %130, %129
  store i32 %add159, i32* %bit_pos, align 4, !tbaa !20
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.149, %land.lhs.true.142, %for.body.136
  br label %for.inc.161

for.inc.161:                                      ; preds = %if.end.160
  %131 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc162 = add nsw i32 %131, 1
  store i32 %inc162, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.133

for.end.163:                                      ; preds = %for.cond.133
  %132 = load i64, i64* %list_index, align 8, !tbaa !79
  %133 = load i64, i64* %color, align 8, !tbaa !79
  %or164 = or i64 %133, %132
  store i64 %or164, i64* %color, align 8, !tbaa !79
  %134 = load i64, i64* %color, align 8, !tbaa !79
  %cmp165 = icmp eq i64 %134, -2
  br i1 %cmp165, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %for.end.163
  %135 = load i64, i64* %color, align 8, !tbaa !79
  %sub168 = sub i64 %135, 1
  store i64 %sub168, i64* %color, align 8, !tbaa !79
  br label %if.end.174

if.else:                                          ; preds = %for.end.163
  %136 = load i64, i64* %color, align 8, !tbaa !79
  %cmp169 = icmp eq i64 %136, -1
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %if.else
  %137 = load i64, i64* %color, align 8, !tbaa !79
  %sub172 = sub i64 %137, 2
  store i64 %sub172, i64* %color, align 8, !tbaa !79
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %if.else
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.then.167
  %138 = load i64, i64* %color, align 8, !tbaa !79
  store i64 %138, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.174, %if.then.108, %if.then.97, %if.then.87
  %139 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #1
  %140 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  %142 = bitcast i64* %list_index to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast %struct.comp_bit_map_list_s** %pbit_map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast %struct.comp_bit_map_list_s* %new_comp_bit_map to i8*
  call void @llvm.lifetime.end(i64 24, i8* %145) #1
  %146 = bitcast i32* %added to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %147) #1
  %148 = bitcast i32* %color_resolution to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %group to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %bit_pos to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %solid_comp_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %comp_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = load i64, i64* %retval
  ret i64 %156
}

; Function Attrs: nounwind uwtable
define internal %struct.compressed_color_list_s* @init_compressed_color_list(%struct.gs_memory_s* %mem) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %plist = alloca %struct.compressed_color_list_s*, align 8
  %comp_num = alloca i32, align 4
  %comp_bit_map = alloca %struct.comp_bit_map_list_s, align 8
  %temp = alloca i64, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %0 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call %struct.compressed_color_list_s* @alloc_compressed_color_list_elem(%struct.gs_memory_s* %1, i32 7) #5
  store %struct.compressed_color_list_s* %call, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %2 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %cmp = icmp ne %struct.compressed_color_list_s* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast %struct.comp_bit_map_list_s* %comp_bit_map to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #1
  %5 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast %struct.comp_bit_map_list_s* %comp_bit_map to i8*
  %call1 = call i8* @memset(i8* %6, i32 0, i64 24) #7
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %comp_num, align 4, !tbaa !20
  %cmp2 = icmp slt i32 %7, 7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom = zext i32 %8 to i64
  %shl = shl i64 1, %sh_prom
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %comp_bit_map, i32 0, i32 3
  %9 = load i64, i64* %colorants, align 8, !tbaa !86
  %or = or i64 %9, %shl
  store i64 %or, i64* %colorants, align 8, !tbaa !86
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %comp_bit_map, i32 0, i32 1
  store i16 7, i16* %num_non_solid_comp, align 2, !tbaa !84
  %num_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %comp_bit_map, i32 0, i32 0
  store i16 7, i16* %num_comp, align 2, !tbaa !82
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %12 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %call3 = call i32 @add_compressed_color_list(%struct.gs_memory_s* %11, %struct.comp_bit_map_list_s* %comp_bit_map, %struct.compressed_color_list_s* %12, i64* %temp) #5
  %13 = bitcast %struct.comp_bit_map_list_s* %comp_bit_map to i8*
  %call4 = call i8* @memset(i8* %13, i32 0, i64 24) #7
  store i32 4, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.12, %for.end
  %14 = load i32, i32* %comp_num, align 4, !tbaa !20
  %cmp6 = icmp slt i32 %14, 11
  br i1 %cmp6, label %for.body.7, label %for.end.14

for.body.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom8 = zext i32 %15 to i64
  %shl9 = shl i64 1, %sh_prom8
  %colorants10 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %comp_bit_map, i32 0, i32 3
  %16 = load i64, i64* %colorants10, align 8, !tbaa !86
  %or11 = or i64 %16, %shl9
  store i64 %or11, i64* %colorants10, align 8, !tbaa !86
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.7
  %17 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.5

for.end.14:                                       ; preds = %for.cond.5
  %num_non_solid_comp15 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %comp_bit_map, i32 0, i32 1
  store i16 7, i16* %num_non_solid_comp15, align 2, !tbaa !84
  %num_comp16 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %comp_bit_map, i32 0, i32 0
  store i16 7, i16* %num_comp16, align 2, !tbaa !82
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %19 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %call17 = call i32 @add_compressed_color_list(%struct.gs_memory_s* %18, %struct.comp_bit_map_list_s* %comp_bit_map, %struct.compressed_color_list_s* %19, i64* %temp) #5
  %20 = bitcast i64* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = bitcast %struct.comp_bit_map_list_s* %comp_bit_map to i8*
  call void @llvm.lifetime.end(i64 24, i8* %21) #1
  %22 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  br label %if.end

if.end:                                           ; preds = %for.end.14, %entry
  %23 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %24 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  ret %struct.compressed_color_list_s* %23
}

; Function Attrs: nounwind uwtable
define internal i32 @search_compressed_color_list(i32 %num_comp, %struct.compressed_color_list_s* %pcomp_list, %struct.comp_bit_map_list_s* %pnew_comp_bit_map, i64* %plist_index, %struct.comp_bit_map_list_s** %pcomp_bit_map) #0 {
entry:
  %retval = alloca i32, align 4
  %num_comp.addr = alloca i32, align 4
  %pcomp_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %pnew_comp_bit_map.addr = alloca %struct.comp_bit_map_list_s*, align 8
  %plist_index.addr = alloca i64*, align 8
  %pcomp_bit_map.addr = alloca %struct.comp_bit_map_list_s**, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !20
  store %struct.compressed_color_list_s* %pcomp_list, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  store %struct.comp_bit_map_list_s* %pnew_comp_bit_map, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  store i64* %plist_index, i64** %plist_index.addr, align 8, !tbaa !1
  store %struct.comp_bit_map_list_s** %pcomp_bit_map, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %found to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 255, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !20
  %3 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %first_bit_map = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %3, i32 0, i32 3
  %4 = load i32, i32* %first_bit_map, align 4, !tbaa !75
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %6, i32 0, i32 4
  %comp_data = bitcast %union.anon.10* %u to [256 x %struct.comp_bit_map_list_s]*
  %arrayidx = getelementptr inbounds [256 x %struct.comp_bit_map_list_s], [256 x %struct.comp_bit_map_list_s]* %comp_data, i32 0, i64 %idxprom
  %7 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  store %struct.comp_bit_map_list_s* %arrayidx, %struct.comp_bit_map_list_s** %7, align 8, !tbaa !1
  %8 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %solid_not_100 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %8, i32 0, i32 2
  %9 = load i32, i32* %solid_not_100, align 4, !tbaa !85
  %10 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %11 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %10, align 8, !tbaa !1
  %solid_not_1001 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %11, i32 0, i32 2
  %12 = load i32, i32* %solid_not_1001, align 4, !tbaa !85
  %cmp2 = icmp ne i32 %9, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %13 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %13, i32 0, i32 3
  %14 = load i64, i64* %colorants, align 8, !tbaa !86
  %15 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %16 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %15, align 8, !tbaa !1
  %colorants3 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %16, i32 0, i32 3
  %17 = load i64, i64* %colorants3, align 8, !tbaa !86
  %and = and i64 %14, %17
  %18 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %colorants4 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %18, i32 0, i32 3
  %19 = load i64, i64* %colorants4, align 8, !tbaa !86
  %cmp5 = icmp eq i64 %and, %19
  br i1 %cmp5, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %20, i32 0, i32 4
  %21 = load i64, i64* %solid_colorants, align 8, !tbaa !87
  %22 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %23 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %22, align 8, !tbaa !1
  %solid_colorants6 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %23, i32 0, i32 4
  %24 = load i64, i64* %solid_colorants6, align 8, !tbaa !87
  %and7 = and i64 %21, %24
  %25 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %26 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %25, align 8, !tbaa !1
  %solid_colorants8 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %26, i32 0, i32 4
  %27 = load i64, i64* %solid_colorants8, align 8, !tbaa !87
  %cmp9 = icmp eq i64 %and7, %27
  br i1 %cmp9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %land.lhs.true
  %28 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_comp11 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %28, i32 0, i32 0
  %29 = load i16, i16* %num_comp11, align 2, !tbaa !82
  %idxprom12 = sext i16 %29 to i64
  %arrayidx13 = getelementptr inbounds [15 x i32], [15 x i32]* @num_comp_bits, i32 0, i64 %idxprom12
  %30 = load i32, i32* %arrayidx13, align 4, !tbaa !20
  %31 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %32 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %31, align 8, !tbaa !1
  %num_comp14 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %32, i32 0, i32 0
  %33 = load i16, i16* %num_comp14, align 2, !tbaa !82
  %idxprom15 = sext i16 %33 to i64
  %arrayidx16 = getelementptr inbounds [15 x i32], [15 x i32]* @num_comp_bits, i32 0, i64 %idxprom15
  %34 = load i32, i32* %arrayidx16, align 4, !tbaa !20
  %cmp17 = icmp sgt i32 %30, %34
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.10
  br label %for.end

if.end.19:                                        ; preds = %if.then.10
  %35 = load i32, i32* %i, align 4, !tbaa !20
  %conv = sext i32 %35 to i64
  %shl = shl i64 %conv, 56
  %36 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  store i64 %shl, i64* %36, align 8, !tbaa !79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.20, %if.then
  %37 = load i32, i32* %i, align 4, !tbaa !20
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %38 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %level_num_comp = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %38, i32 0, i32 1
  %39 = load i32, i32* %level_num_comp, align 4, !tbaa !77
  %40 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %40, i32 0, i32 1
  %41 = load i16, i16* %num_non_solid_comp, align 2, !tbaa !84
  %conv21 = sext i16 %41 to i32
  %cmp22 = icmp sle i32 %39, %conv21
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.37, %if.end.25
  %42 = load i32, i32* %i, align 4, !tbaa !20
  %43 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %43, i32 0, i32 2
  %44 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp27 = icmp slt i32 %42, %44
  br i1 %cmp27, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.26
  %45 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %46 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom30 = sext i32 %46 to i64
  %47 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u31 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %47, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u31 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx32 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom30
  %48 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx32, align 8, !tbaa !1
  %49 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %50 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %51 = load %struct.comp_bit_map_list_s**, %struct.comp_bit_map_list_s*** %pcomp_bit_map.addr, align 8, !tbaa !1
  %call = call i32 @search_compressed_color_list(i32 %45, %struct.compressed_color_list_s* %48, %struct.comp_bit_map_list_s* %49, i64* %50, %struct.comp_bit_map_list_s** %51) #5
  store i32 %call, i32* %found, align 4, !tbaa !20
  %52 = load i32, i32* %found, align 4, !tbaa !20
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %for.body.29
  %53 = load i32, i32* %i, align 4, !tbaa !20
  %conv34 = sext i32 %53 to i64
  %shl35 = shl i64 %conv34, 56
  %54 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %55 = load i64, i64* %54, align 8, !tbaa !79
  %shr = lshr i64 %55, 8
  %add = add i64 %shl35, %shr
  %56 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  store i64 %add, i64* %56, align 8, !tbaa !79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.36:                                        ; preds = %for.body.29
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %57 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond.26

for.end.38:                                       ; preds = %for.cond.26
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.38, %if.then.33, %if.then.24, %if.end.19
  %58 = bitcast i32* %found to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal i32 @add_compressed_color_list(%struct.gs_memory_s* %mem, %struct.comp_bit_map_list_s* %pnew_comp_bit_map, %struct.compressed_color_list_s* %pcomp_list, i64* %plist_index) #0 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnew_comp_bit_map.addr = alloca %struct.comp_bit_map_list_s*, align 8
  %pcomp_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %plist_index.addr = alloca i64*, align 8
  %num_comp = alloca i32, align 4
  %num_non_solid = alloca i32, align 4
  %num_solid = alloca i32, align 4
  %comp_num = alloca i32, align 4
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.comp_bit_map_list_s* %pnew_comp_bit_map, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  store %struct.compressed_color_list_s* %pcomp_list, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  store i64* %plist_index, i64** %plist_index.addr, align 8, !tbaa !1
  %0 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_comp1 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %1, i32 0, i32 0
  %2 = load i16, i16* %num_comp1, align 2, !tbaa !82
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %num_comp, align 4, !tbaa !20
  %3 = bitcast i32* %num_non_solid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %4, i32 0, i32 1
  %5 = load i16, i16* %num_non_solid_comp, align 2, !tbaa !84
  %conv2 = sext i16 %5 to i32
  store i32 %conv2, i32* %num_non_solid, align 4, !tbaa !20
  %6 = bitcast i32* %num_solid to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %num_comp, align 4, !tbaa !20
  %8 = load i32, i32* %num_non_solid, align 4, !tbaa !20
  %sub = sub nsw i32 %7, %8
  store i32 %sub, i32* %num_solid, align 4, !tbaa !20
  %9 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %10 = load i32, i32* %num_non_solid, align 4, !tbaa !20
  %cmp = icmp slt i32 %10, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load i32, i32* %num_solid, align 4, !tbaa !20
  %cmp4 = icmp sgt i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %13, i32 0, i32 4
  %14 = load i64, i64* %solid_colorants, align 8, !tbaa !87
  %15 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom = zext i32 %15 to i64
  %shr = lshr i64 %14, %sh_prom
  %conv6 = trunc i64 %shr to i32
  %and = and i32 %conv6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %16 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom7 = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom7
  %neg = xor i64 %shl, -1
  %17 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %solid_colorants8 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %17, i32 0, i32 4
  %18 = load i64, i64* %solid_colorants8, align 8, !tbaa !87
  %and9 = and i64 %18, %neg
  store i64 %and9, i64* %solid_colorants8, align 8, !tbaa !87
  %19 = load i32, i32* %num_solid, align 4, !tbaa !20
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %num_solid, align 4, !tbaa !20
  %20 = load i32, i32* %num_non_solid, align 4, !tbaa !20
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %num_non_solid, align 4, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %21 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc10 = add nsw i32 %21, 1
  store i32 %inc10, i32* %comp_num, align 4, !tbaa !20
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load i32, i32* %num_non_solid, align 4, !tbaa !20
  %cmp11 = icmp slt i32 %22, 5
  br i1 %cmp11, label %if.then.13, label %if.end.30

if.then.13:                                       ; preds = %while.end
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %23 = load i32, i32* %num_comp, align 4, !tbaa !20
  %cmp14 = icmp slt i32 %23, 5
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %24, i32 0, i32 3
  %25 = load i64, i64* %colorants, align 8, !tbaa !86
  %26 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom16 = zext i32 %26 to i64
  %shr17 = lshr i64 %25, %sh_prom16
  %conv18 = trunc i64 %shr17 to i32
  %and19 = and i32 %conv18, 1
  %cmp20 = icmp eq i32 %and19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %for.body
  %27 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom23 = zext i32 %27 to i64
  %shl24 = shl i64 1, %sh_prom23
  %28 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %colorants25 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %28, i32 0, i32 3
  %29 = load i64, i64* %colorants25, align 8, !tbaa !86
  %or = or i64 %29, %shl24
  store i64 %or, i64* %colorants25, align 8, !tbaa !86
  %30 = load i32, i32* %num_non_solid, align 4, !tbaa !20
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %num_non_solid, align 4, !tbaa !20
  %31 = load i32, i32* %num_comp, align 4, !tbaa !20
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %num_comp, align 4, !tbaa !20
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %32 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc29 = add nsw i32 %32, 1
  store i32 %inc29, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %while.end
  %33 = load i32, i32* %num_comp, align 4, !tbaa !20
  %conv31 = trunc i32 %33 to i16
  %34 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_comp32 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %34, i32 0, i32 0
  store i16 %conv31, i16* %num_comp32, align 2, !tbaa !82
  %35 = load i32, i32* %num_non_solid, align 4, !tbaa !20
  %conv33 = trunc i32 %35 to i16
  %36 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_non_solid_comp34 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %36, i32 0, i32 1
  store i16 %conv33, i16* %num_non_solid_comp34, align 2, !tbaa !84
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %38 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %39 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %40 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %call = call i32 @sub_level_add_compressed_color_list(%struct.gs_memory_s* %37, %struct.comp_bit_map_list_s* %38, %struct.compressed_color_list_s* %39, i64* %40) #5
  %41 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %42 = bitcast i32* %num_solid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #1
  %43 = bitcast i32* %num_non_solid to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  %44 = bitcast i32* %num_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.comp_bit_map_list_s* @find_bit_map(i64 %index, %struct.compressed_color_list_s* %pcomp_list) #0 {
entry:
  %index.addr = alloca i64, align 8
  %pcomp_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %loc = alloca i32, align 4
  store i64 %index, i64* %index.addr, align 8, !tbaa !79
  store %struct.compressed_color_list_s* %pcomp_list, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %0 = bitcast i32* %loc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i64, i64* %index.addr, align 8, !tbaa !79
  %shr = lshr i64 %1, 56
  %conv = trunc i64 %shr to i32
  store i32 %conv, i32* %loc, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %loc, align 4, !tbaa !20
  %3 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %3, i32 0, i32 2
  %4 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %loc, align 4, !tbaa !20
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %6, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u to [256 x %struct.compressed_color_list_s*]*
  %arrayidx = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom
  %7 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx, align 8, !tbaa !1
  store %struct.compressed_color_list_s* %7, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %8 = load i64, i64* %index.addr, align 8, !tbaa !79
  %shl = shl i64 %8, 8
  store i64 %shl, i64* %index.addr, align 8, !tbaa !79
  %9 = load i64, i64* %index.addr, align 8, !tbaa !79
  %shr2 = lshr i64 %9, 56
  %conv3 = trunc i64 %shr2 to i32
  store i32 %conv3, i32* %loc, align 4, !tbaa !20
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %loc, align 4, !tbaa !20
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u5 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %11, i32 0, i32 4
  %comp_data = bitcast %union.anon.10* %u5 to [256 x %struct.comp_bit_map_list_s]*
  %arrayidx6 = getelementptr inbounds [256 x %struct.comp_bit_map_list_s], [256 x %struct.comp_bit_map_list_s]* %comp_data, i32 0, i64 %idxprom4
  %12 = bitcast i32* %loc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret %struct.comp_bit_map_list_s* %arrayidx6
}

; Function Attrs: nounwind uwtable
define i32 @devn_decode_compressed_color(%struct.gx_device_s* %dev, i64 %color, i16* %out, %struct.gs_devn_params_s* %pdevn_params) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %out.addr = alloca i16*, align 8
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %comp_num = alloca i32, align 4
  %factor = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %bit_mask = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %pbitmap = alloca %struct.comp_bit_map_list_s*, align 8
  %solid_color = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !79
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %0 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  %1 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %bit_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %6, i32* %ncomp, align 4, !tbaa !20
  %7 = bitcast %struct.comp_bit_map_list_s** %pbitmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i16* %solid_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #1
  store i16 -1, i16* %solid_color, align 2, !tbaa !5
  %9 = load i64, i64* %color.addr, align 8, !tbaa !79
  %cmp = icmp eq i64 %9, -2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %comp_num, align 4, !tbaa !20
  %11 = load i32, i32* %ncomp, align 4, !tbaa !20
  %cmp1 = icmp slt i32 %10, %11
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom = sext i32 %12 to i64
  %13 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  store i16 -1, i16* %arrayidx, align 2, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = load i64, i64* %color.addr, align 8, !tbaa !79
  %16 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %16, i32 0, i32 8
  %17 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list, align 8, !tbaa !69
  %call = call %struct.comp_bit_map_list_s* @find_bit_map(i64 %15, %struct.compressed_color_list_s* %17) #5
  store %struct.comp_bit_map_list_s* %call, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %18 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %18, i32 0, i32 1
  %19 = load i16, i16* %num_non_solid_comp, align 2, !tbaa !84
  %idxprom2 = sext i16 %19 to i64
  %arrayidx3 = getelementptr inbounds [15 x i32], [15 x i32]* @num_comp_bits, i32 0, i64 %idxprom2
  %20 = load i32, i32* %arrayidx3, align 4, !tbaa !20
  store i32 %20, i32* %bit_count, align 4, !tbaa !20
  %21 = load i32, i32* %bit_count, align 4, !tbaa !20
  %shl = shl i32 1, %21
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %bit_mask, align 4, !tbaa !20
  %22 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %num_non_solid_comp4 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %22, i32 0, i32 1
  %23 = load i16, i16* %num_non_solid_comp4, align 2, !tbaa !84
  %idxprom5 = sext i16 %23 to i64
  %arrayidx6 = getelementptr inbounds [15 x i32], [15 x i32]* @comp_bit_factor, i32 0, i64 %idxprom5
  %24 = load i32, i32* %arrayidx6, align 4, !tbaa !20
  store i32 %24, i32* %factor, align 4, !tbaa !20
  %25 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %solid_not_100 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %25, i32 0, i32 2
  %26 = load i32, i32* %solid_not_100, align 4, !tbaa !85
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %27 = load i32, i32* %factor, align 4, !tbaa !20
  %28 = load i64, i64* %color.addr, align 8, !tbaa !79
  %conv = trunc i64 %28 to i32
  %29 = load i32, i32* %bit_mask, align 4, !tbaa !20
  %and = and i32 %conv, %29
  %mul = mul nsw i32 %27, %and
  %shr = ashr i32 %mul, 8
  %conv8 = trunc i32 %shr to i16
  store i16 %conv8, i16* %solid_color, align 2, !tbaa !5
  %30 = load i32, i32* %bit_count, align 4, !tbaa !20
  %31 = load i64, i64* %color.addr, align 8, !tbaa !79
  %sh_prom = zext i32 %30 to i64
  %shr9 = lshr i64 %31, %sh_prom
  store i64 %shr9, i64* %color.addr, align 8, !tbaa !79
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.43, %if.end.10
  %32 = load i32, i32* %comp_num, align 4, !tbaa !20
  %33 = load i32, i32* %ncomp, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %32, %33
  br i1 %cmp12, label %for.body.14, label %for.end.45

for.body.14:                                      ; preds = %for.cond.11
  %34 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %34, i32 0, i32 3
  %35 = load i64, i64* %colorants, align 8, !tbaa !86
  %36 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom15 = zext i32 %36 to i64
  %shr16 = lshr i64 %35, %sh_prom15
  %conv17 = trunc i64 %shr16 to i32
  %and18 = and i32 %conv17, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.39

if.then.20:                                       ; preds = %for.body.14
  %37 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %37, i32 0, i32 4
  %38 = load i64, i64* %solid_colorants, align 8, !tbaa !87
  %39 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom21 = zext i32 %39 to i64
  %shr22 = lshr i64 %38, %sh_prom21
  %conv23 = trunc i64 %shr22 to i32
  %and24 = and i32 %conv23, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.20
  %40 = load i16, i16* %solid_color, align 2, !tbaa !5
  %41 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom27 = sext i32 %41 to i64
  %42 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds i16, i16* %42, i64 %idxprom27
  store i16 %40, i16* %arrayidx28, align 2, !tbaa !5
  br label %if.end.38

if.else:                                          ; preds = %if.then.20
  %43 = load i32, i32* %factor, align 4, !tbaa !20
  %44 = load i64, i64* %color.addr, align 8, !tbaa !79
  %conv29 = trunc i64 %44 to i32
  %45 = load i32, i32* %bit_mask, align 4, !tbaa !20
  %and30 = and i32 %conv29, %45
  %mul31 = mul nsw i32 %43, %and30
  %shr32 = ashr i32 %mul31, 8
  %conv33 = trunc i32 %shr32 to i16
  %46 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom34 = sext i32 %46 to i64
  %47 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i16, i16* %47, i64 %idxprom34
  store i16 %conv33, i16* %arrayidx35, align 2, !tbaa !5
  %48 = load i32, i32* %bit_count, align 4, !tbaa !20
  %49 = load i64, i64* %color.addr, align 8, !tbaa !79
  %sh_prom36 = zext i32 %48 to i64
  %shr37 = lshr i64 %49, %sh_prom36
  store i64 %shr37, i64* %color.addr, align 8, !tbaa !79
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.26
  br label %if.end.42

if.else.39:                                       ; preds = %for.body.14
  %50 = load i32, i32* %comp_num, align 4, !tbaa !20
  %idxprom40 = sext i32 %50 to i64
  %51 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %51, i64 %idxprom40
  store i16 0, i16* %arrayidx41, align 2, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.end.38
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %52 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc44 = add nsw i32 %52, 1
  store i32 %inc44, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.11

for.end.45:                                       ; preds = %for.cond.11
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.45, %for.end
  %53 = bitcast i16* %solid_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %53) #1
  %54 = bitcast %struct.comp_bit_map_list_s** %pbitmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #1
  %55 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %bit_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @devn_unpack_row(%struct.gx_device_s* %dev, i32 %num_comp, %struct.gs_devn_params_s* %pdevn_params, i32 %width, i8* %in, i8* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %num_comp.addr = alloca i32, align 4
  %pdevn_params.addr = alloca %struct.gs_devn_params_s*, align 8
  %width.addr = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %comp_num = alloca i32, align 4
  %pixel_num = alloca i32, align 4
  %bytes_pp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %non_encodeable_count = alloca i32, align 4
  %factor = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %bit_mask = alloca i32, align 4
  %pbitmap = alloca %struct.comp_bit_map_list_s*, align 8
  %color = alloca i64, align 8
  %solid_color = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %num_comp, i32* %num_comp.addr, align 4, !tbaa !20
  store %struct.gs_devn_params_s* %pdevn_params, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !20
  store i8* %in, i8** %in.addr, align 8, !tbaa !1
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %pixel_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %3, i32 0, i32 8
  %4 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list, align 8, !tbaa !69
  %cmp = icmp eq %struct.compressed_color_list_s* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %7 = load i16, i16* %depth, align 2, !tbaa !66
  %conv = zext i16 %7 to i32
  %shr = ashr i32 %conv, 3
  store i32 %shr, i32* %bytes_pp, align 4, !tbaa !20
  store i32 0, i32* %pixel_num, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %if.then
  %8 = load i32, i32* %pixel_num, align 4, !tbaa !20
  %9 = load i32, i32* %width.addr, align 4, !tbaa !20
  %cmp1 = icmp slt i32 %8, %9
  br i1 %cmp1, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !20
  %11 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %12 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %in.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !22
  %14 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr7, i8** %out.addr, align 8, !tbaa !1
  store i8 %13, i8* %14, align 1, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %15 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %16 = load i32, i32* %bytes_pp, align 4, !tbaa !20
  %17 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %sub = sub nsw i32 %16, %17
  %18 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %in.addr, align 8, !tbaa !1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %19 = load i32, i32* %pixel_num, align 4, !tbaa !20
  %inc9 = add nsw i32 %19, 1
  store i32 %inc9, i32* %pixel_num, align 4, !tbaa !20
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %20 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #1
  br label %cleanup

if.else:                                          ; preds = %entry
  %21 = bitcast i32* %non_encodeable_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  store i32 0, i32* %non_encodeable_count, align 4, !tbaa !20
  %22 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %bit_mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = bitcast %struct.comp_bit_map_list_s** %pbitmap to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #1
  %26 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  store i32 0, i32* %pixel_num, align 4, !tbaa !20
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.89, %if.else
  %27 = load i32, i32* %pixel_num, align 4, !tbaa !20
  %28 = load i32, i32* %width.addr, align 4, !tbaa !20
  %cmp12 = icmp slt i32 %27, %28
  br i1 %cmp12, label %for.body.14, label %for.end.91

for.body.14:                                      ; preds = %for.cond.11
  %29 = bitcast i16* %solid_color to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #1
  store i16 -1, i16* %solid_color, align 2, !tbaa !5
  %30 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr15, i8** %in.addr, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !22
  %conv16 = zext i8 %31 to i64
  %shl = shl i64 %conv16, 56
  store i64 %shl, i64* %color, align 8, !tbaa !79
  store i32 48, i32* %i, align 4, !tbaa !20
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.24, %for.body.14
  %32 = load i32, i32* %i, align 4, !tbaa !20
  %cmp18 = icmp sge i32 %32, 0
  br i1 %cmp18, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.17
  %33 = load i8*, i8** %in.addr, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr21, i8** %in.addr, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !22
  %conv22 = zext i8 %34 to i64
  %35 = load i32, i32* %i, align 4, !tbaa !20
  %sh_prom = zext i32 %35 to i64
  %shl23 = shl i64 %conv22, %sh_prom
  %36 = load i64, i64* %color, align 8, !tbaa !79
  %or = or i64 %36, %shl23
  store i64 %or, i64* %color, align 8, !tbaa !79
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %37 = load i32, i32* %i, align 4, !tbaa !20
  %sub25 = sub nsw i32 %37, 8
  store i32 %sub25, i32* %i, align 4, !tbaa !20
  br label %for.cond.17

for.end.26:                                       ; preds = %for.cond.17
  %38 = load i64, i64* %color, align 8, !tbaa !79
  %cmp27 = icmp eq i64 %38, -2
  br i1 %cmp27, label %if.then.29, label %if.else.39

if.then.29:                                       ; preds = %for.end.26
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.35, %if.then.29
  %39 = load i32, i32* %comp_num, align 4, !tbaa !20
  %40 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %cmp31 = icmp slt i32 %39, %40
  br i1 %cmp31, label %for.body.33, label %for.end.37

for.body.33:                                      ; preds = %for.cond.30
  %41 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr34, i8** %out.addr, align 8, !tbaa !1
  store i8 0, i8* %41, align 1, !tbaa !22
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.33
  %42 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc36 = add nsw i32 %42, 1
  store i32 %inc36, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.30

for.end.37:                                       ; preds = %for.cond.30
  %43 = load i32, i32* %non_encodeable_count, align 4, !tbaa !20
  %inc38 = add nsw i32 %43, 1
  store i32 %inc38, i32* %non_encodeable_count, align 4, !tbaa !20
  br label %if.end.88

if.else.39:                                       ; preds = %for.end.26
  %44 = load i64, i64* %color, align 8, !tbaa !79
  %45 = load %struct.gs_devn_params_s*, %struct.gs_devn_params_s** %pdevn_params.addr, align 8, !tbaa !1
  %compressed_color_list40 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %45, i32 0, i32 8
  %46 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %compressed_color_list40, align 8, !tbaa !69
  %call = call %struct.comp_bit_map_list_s* @find_bit_map(i64 %44, %struct.compressed_color_list_s* %46) #5
  store %struct.comp_bit_map_list_s* %call, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %47 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %num_non_solid_comp = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %47, i32 0, i32 1
  %48 = load i16, i16* %num_non_solid_comp, align 2, !tbaa !84
  %idxprom = sext i16 %48 to i64
  %arrayidx = getelementptr inbounds [15 x i32], [15 x i32]* @num_comp_bits, i32 0, i64 %idxprom
  %49 = load i32, i32* %arrayidx, align 4, !tbaa !20
  store i32 %49, i32* %bit_count, align 4, !tbaa !20
  %50 = load i32, i32* %bit_count, align 4, !tbaa !20
  %shl41 = shl i32 1, %50
  %sub42 = sub nsw i32 %shl41, 1
  store i32 %sub42, i32* %bit_mask, align 4, !tbaa !20
  %51 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %num_non_solid_comp43 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %51, i32 0, i32 1
  %52 = load i16, i16* %num_non_solid_comp43, align 2, !tbaa !84
  %idxprom44 = sext i16 %52 to i64
  %arrayidx45 = getelementptr inbounds [15 x i32], [15 x i32]* @comp_bit_factor, i32 0, i64 %idxprom44
  %53 = load i32, i32* %arrayidx45, align 4, !tbaa !20
  store i32 %53, i32* %factor, align 4, !tbaa !20
  %54 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %solid_not_100 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %54, i32 0, i32 2
  %55 = load i32, i32* %solid_not_100, align 4, !tbaa !85
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %if.else.39
  %56 = load i32, i32* %factor, align 4, !tbaa !20
  %57 = load i64, i64* %color, align 8, !tbaa !79
  %conv47 = trunc i64 %57 to i32
  %58 = load i32, i32* %bit_mask, align 4, !tbaa !20
  %and = and i32 %conv47, %58
  %mul = mul nsw i32 %56, %and
  %shr48 = ashr i32 %mul, 8
  %conv49 = trunc i32 %shr48 to i16
  store i16 %conv49, i16* %solid_color, align 2, !tbaa !5
  %59 = load i32, i32* %bit_count, align 4, !tbaa !20
  %60 = load i64, i64* %color, align 8, !tbaa !79
  %sh_prom50 = zext i32 %59 to i64
  %shr51 = lshr i64 %60, %sh_prom50
  store i64 %shr51, i64* %color, align 8, !tbaa !79
  br label %if.end

if.end:                                           ; preds = %if.then.46, %if.else.39
  store i32 0, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.85, %if.end
  %61 = load i32, i32* %comp_num, align 4, !tbaa !20
  %62 = load i32, i32* %num_comp.addr, align 4, !tbaa !20
  %cmp53 = icmp slt i32 %61, %62
  br i1 %cmp53, label %for.body.55, label %for.end.87

for.body.55:                                      ; preds = %for.cond.52
  %63 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %63, i32 0, i32 3
  %64 = load i64, i64* %colorants, align 8, !tbaa !86
  %65 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom56 = zext i32 %65 to i64
  %shr57 = lshr i64 %64, %sh_prom56
  %conv58 = trunc i64 %shr57 to i32
  %and59 = and i32 %conv58, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.82

if.then.61:                                       ; preds = %for.body.55
  %66 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pbitmap, align 8, !tbaa !1
  %solid_colorants = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %66, i32 0, i32 4
  %67 = load i64, i64* %solid_colorants, align 8, !tbaa !87
  %68 = load i32, i32* %comp_num, align 4, !tbaa !20
  %sh_prom62 = zext i32 %68 to i64
  %shr63 = lshr i64 %67, %sh_prom62
  %conv64 = trunc i64 %shr63 to i32
  %and65 = and i32 %conv64, 1
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.then.61
  %69 = load i16, i16* %solid_color, align 2, !tbaa !5
  %conv68 = zext i16 %69 to i32
  %shr69 = ashr i32 %conv68, 8
  %conv70 = trunc i32 %shr69 to i8
  %70 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr71, i8** %out.addr, align 8, !tbaa !1
  store i8 %conv70, i8* %70, align 1, !tbaa !22
  br label %if.end.81

if.else.72:                                       ; preds = %if.then.61
  %71 = load i32, i32* %factor, align 4, !tbaa !20
  %72 = load i64, i64* %color, align 8, !tbaa !79
  %conv73 = trunc i64 %72 to i32
  %73 = load i32, i32* %bit_mask, align 4, !tbaa !20
  %and74 = and i32 %conv73, %73
  %mul75 = mul nsw i32 %71, %and74
  %shr76 = ashr i32 %mul75, 16
  %conv77 = trunc i32 %shr76 to i8
  %74 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr78 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr78, i8** %out.addr, align 8, !tbaa !1
  store i8 %conv77, i8* %74, align 1, !tbaa !22
  %75 = load i32, i32* %bit_count, align 4, !tbaa !20
  %76 = load i64, i64* %color, align 8, !tbaa !79
  %sh_prom79 = zext i32 %75 to i64
  %shr80 = lshr i64 %76, %sh_prom79
  store i64 %shr80, i64* %color, align 8, !tbaa !79
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.72, %if.then.67
  br label %if.end.84

if.else.82:                                       ; preds = %for.body.55
  %77 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %incdec.ptr83 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr83, i8** %out.addr, align 8, !tbaa !1
  store i8 0, i8* %77, align 1, !tbaa !22
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.82, %if.end.81
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %78 = load i32, i32* %comp_num, align 4, !tbaa !20
  %inc86 = add nsw i32 %78, 1
  store i32 %inc86, i32* %comp_num, align 4, !tbaa !20
  br label %for.cond.52

for.end.87:                                       ; preds = %for.cond.52
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %for.end.37
  %79 = bitcast i16* %solid_color to i8*
  call void @llvm.lifetime.end(i64 2, i8* %79) #1
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %80 = load i32, i32* %pixel_num, align 4, !tbaa !20
  %inc90 = add nsw i32 %80, 1
  store i32 %inc90, i32* %pixel_num, align 4, !tbaa !20
  br label %for.cond.11

for.end.91:                                       ; preds = %for.cond.11
  %81 = load i32, i32* %non_encodeable_count, align 4, !tbaa !20
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %82 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast %struct.comp_bit_map_list_s** %pbitmap to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #1
  %84 = bitcast i32* %bit_mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %bit_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %non_encodeable_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  br label %cleanup

cleanup:                                          ; preds = %for.end.91, %for.end.10
  %88 = bitcast i32* %pixel_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %comp_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = load i32, i32* %retval
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define void @gx_devn_prn_device_finalize(%struct.gs_memory_s* %cmem, i8* %vpdev) #0 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vpdev.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vpdev, i8** %vpdev.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %vpdev.addr, align 8, !tbaa !1
  %1 = bitcast i8* %0 to %struct.gx_device_s*
  call void @devn_free_params(%struct.gx_device_s* %1) #5
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %vpdev.addr, align 8, !tbaa !1
  call void @gx_device_finalize(%struct.gs_memory_s* %2, i8* %3) #5
  ret void
}

declare void @gx_device_finalize(%struct.gs_memory_s*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @gx_devn_prn_device_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  store i32 %index, i32* %index.addr, align 4, !tbaa !20
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !20
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !20
  %5 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %5, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %6 = load i32, i32* %num_separations, align 4, !tbaa !88
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %7 = load i32, i32* %index.addr, align 4, !tbaa !20
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params1 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %8, i32 0, i32 68
  %separations2 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params1, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx, i32 0, i32 1
  %9 = load i8*, i8** %data, align 8, !tbaa !29
  %10 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %10, i32 0, i32 0
  store i8* %9, i8** %ptr, align 8, !tbaa !93
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  %11 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, i32 4), align 8, !tbaa !95
  %12 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %13 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %14 = load i32, i32* %size.addr, align 4, !tbaa !20
  %15 = load i32, i32* %index.addr, align 4, !tbaa !20
  %16 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params3 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %16, i32 0, i32 68
  %separations4 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params3, i32 0, i32 5
  %num_separations5 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations4, i32 0, i32 0
  %17 = load i32, i32* %num_separations5, align 4, !tbaa !88
  %sub = sub nsw i32 %15, %17
  %18 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %11(%struct.gs_memory_s* %12, i8* %13, i32 %14, i32 %sub, %struct.enum_ptr_s* %18, %struct.gs_memory_struct_type_s* @st_device_printer, %struct.gc_state_s* %19) #5
  store %struct.gs_ptr_procs_s* %call, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  %21 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %21
}

; Function Attrs: nounwind uwtable
define internal void @gx_devn_prn_device_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, i32 5), align 8, !tbaa !97
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !20
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_device_printer, %struct.gc_state_s* %6) #5
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !20
  %9 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %9, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %10 = load i32, i32* %num_separations, align 4, !tbaa !88
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %12 = bitcast %struct.gc_state_s* %11 to %struct.gc_procs_common_s**
  %13 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %12, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %13, i32 0, i32 0
  %14 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !98
  %15 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %15 to i64
  %16 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %17 = bitcast i8* %16 to %struct.gx_devn_prn_device_s*
  %devn_params1 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %17, i32 0, i32 68
  %separations2 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params1, i32 0, i32 5
  %names = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names, i32 0, i64 %idxprom
  %data = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx, i32 0, i32 1
  %18 = load i8*, i8** %data, align 8, !tbaa !29
  %19 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %14(i8* %18, %struct.gc_state_s* %19) #5
  %20 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom3 = sext i32 %20 to i64
  %21 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %22 = bitcast i8* %21 to %struct.gx_devn_prn_device_s*
  %devn_params4 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %22, i32 0, i32 68
  %separations5 = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params4, i32 0, i32 5
  %names6 = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations5, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [64 x %struct.devn_separation_name_s], [64 x %struct.devn_separation_name_s]* %names6, i32 0, i64 %idxprom3
  %data8 = getelementptr inbounds %struct.devn_separation_name_s, %struct.devn_separation_name_s* %arrayidx7, i32 0, i32 1
  store i8* %call, i8** %data8, align 8, !tbaa !29
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @static_gx_devn_prn_device_finalize(%struct.gs_memory_s* %cmem, i8* %vpdev) #0 {
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

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #2

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #2

; Function Attrs: nounwind uwtable
define internal i32 @spotcmyk_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %buf = alloca i8*, align 8
  %pdevn = alloca %struct.gx_devn_prn_device_s*, align 8
  %npcmcolors = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %depth = alloca i32, align 4
  %nspot = alloca i32, align 4
  %bpc = alloca i32, align 4
  %lnum = alloca i32, align 4
  %bottom = alloca i32, align 4
  %width = alloca i32, align 4
  %spot_file = alloca [64 x %struct._IO_FILE*], align 16
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %first_bit = alloca i32, align 4
  %pcmlinelength = alloca i32, align 4
  %linelength = alloca [64 x i32], align 16
  %data = alloca i8*, align 8
  %spotname = alloca i8*, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !20
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !100
  %11 = load i32, i32* %line_size, align 4, !tbaa !20
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0)) #5
  store i8* %call2, i8** %in, align 8, !tbaa !1
  %12 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !100
  %procs4 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %14, i32 0, i32 1
  %alloc_bytes5 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs4, i32 0, i32 7
  %15 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes5, align 8, !tbaa !37
  %16 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %16, i32 0, i32 3
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory6, align 8, !tbaa !100
  %18 = load i32, i32* %line_size, align 4, !tbaa !20
  %add = add nsw i32 %18, 3
  %call7 = call i8* %15(%struct.gs_memory_s* %17, i32 %add, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0)) #5
  store i8* %call7, i8** %buf, align 8, !tbaa !1
  %19 = bitcast %struct.gx_devn_prn_device_s** %pdevn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %21 = bitcast %struct.gx_device_printer_s* %20 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %21, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %22 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %23, i32 0, i32 68
  %num_std_colorant_names = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 2
  %24 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !102
  store i32 %24, i32* %npcmcolors, align 4, !tbaa !20
  %25 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %26, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %27 = load i32, i32* %num_components, align 4, !tbaa !103
  store i32 %27, i32* %ncomp, align 4, !tbaa !20
  %28 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %28) #1
  %29 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %29, i32 0, i32 11
  %depth9 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 3
  %30 = load i16, i16* %depth9, align 2, !tbaa !104
  %conv = zext i16 %30 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !20
  %31 = bitcast i32* %nspot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %31) #1
  %32 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %devn_params10 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %32, i32 0, i32 68
  %separations = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params10, i32 0, i32 5
  %num_separations = getelementptr inbounds %struct.gs_separations_s, %struct.gs_separations_s* %separations, i32 0, i32 0
  %33 = load i32, i32* %num_separations, align 4, !tbaa !88
  store i32 %33, i32* %nspot, align 4, !tbaa !20
  %34 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %devn_params11 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %35, i32 0, i32 68
  %bitspercomponent = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params11, i32 0, i32 0
  %36 = load i32, i32* %bitspercomponent, align 4, !tbaa !105
  store i32 %36, i32* %bpc, align 4, !tbaa !20
  %37 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  store i32 0, i32* %lnum, align 4, !tbaa !20
  %38 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 14
  %40 = load i32, i32* %height, align 4, !tbaa !106
  store i32 %40, i32* %bottom, align 4, !tbaa !20
  %41 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 13
  %43 = load i32, i32* %width12, align 4, !tbaa !107
  store i32 %43, i32* %width, align 4, !tbaa !20
  %44 = bitcast [64 x %struct._IO_FILE*]* %spot_file to i8*
  call void @llvm.lifetime.start(i64 512, i8* %44) #1
  %45 = bitcast [64 x %struct._IO_FILE*]* %spot_file to i8*
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 512, i32 16, i1 false)
  %46 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %46) #1
  %47 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  store i32 0, i32* %code, align 4, !tbaa !20
  %48 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = bitcast i32* %pcmlinelength to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  store i32 0, i32* %pcmlinelength, align 4, !tbaa !20
  %50 = bitcast [64 x i32]* %linelength to i8*
  call void @llvm.lifetime.start(i64 256, i8* %50) #1
  %51 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = bitcast i8** %spotname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #1
  %53 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !100
  %procs14 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %alloc_bytes15 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs14, i32 0, i32 7
  %55 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes15, align 8, !tbaa !37
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !100
  %call17 = call i8* %55(%struct.gs_memory_s* %57, i32 4096, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0)) #5
  store i8* %call17, i8** %spotname, align 8, !tbaa !1
  %58 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp = icmp eq i8* %58, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %59 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp19 = icmp eq i8* %59, null
  br i1 %cmp19, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %60 = load i8*, i8** %spotname, align 8, !tbaa !1
  %cmp22 = icmp eq i8* %60, null
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.21, %lor.lhs.false, %entry
  store i32 -25, i32* %code, align 4, !tbaa !20
  br label %prn_done

if.end:                                           ; preds = %lor.lhs.false.21
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %61 = load i32, i32* %i, align 4, !tbaa !20
  %62 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %cmp24 = icmp slt i32 %61, %62
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %63 to i64
  %64 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %devn_params26 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %64, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params26, i32 0, i32 7
  %arrayidx = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i64 %idxprom
  %65 = load i32, i32* %arrayidx, align 4, !tbaa !20
  %66 = load i32, i32* %i, align 4, !tbaa !20
  %cmp27 = icmp ne i32 %65, %66
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %for.body
  br label %for.end

if.end.30:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %67 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %if.then.29, %for.cond
  %68 = load i32, i32* %i, align 4, !tbaa !20
  %69 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %cmp31 = icmp slt i32 %68, %69
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %for.end
  %70 = load i32, i32* %ncomp, align 4, !tbaa !20
  %71 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %cmp34 = icmp slt i32 %70, %71
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.33, %for.end
  %72 = load i32, i32* %ncomp, align 4, !tbaa !20
  store i32 %72, i32* %nspot, align 4, !tbaa !20
  store i32 0, i32* %npcmcolors, align 4, !tbaa !20
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %lor.lhs.false.33
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.52, %if.end.37
  %73 = load i32, i32* %i, align 4, !tbaa !20
  %74 = load i32, i32* %nspot, align 4, !tbaa !20
  %cmp39 = icmp slt i32 %73, %74
  br i1 %cmp39, label %for.body.41, label %for.end.54

for.body.41:                                      ; preds = %for.cond.38
  %75 = load i8*, i8** %spotname, align 8, !tbaa !1
  %76 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %76, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  %77 = load i32, i32* %i, align 4, !tbaa !20
  %call42 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay, i32 %77) #5
  %78 = load i8*, i8** %spotname, align 8, !tbaa !1
  %call43 = call %struct._IO_FILE* @gp_fopen(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)) #5
  %79 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom44 = sext i32 %79 to i64
  %arrayidx45 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom44
  store %struct._IO_FILE* %call43, %struct._IO_FILE** %arrayidx45, align 8, !tbaa !1
  %80 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom46 = sext i32 %80 to i64
  %arrayidx47 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom46
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx47, align 8, !tbaa !1
  %cmp48 = icmp eq %struct._IO_FILE* %81, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.body.41
  store i32 -25, i32* %code, align 4, !tbaa !20
  br label %prn_done

if.end.51:                                        ; preds = %for.body.41
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %82 = load i32, i32* %i, align 4, !tbaa !20
  %inc53 = add nsw i32 %82, 1
  store i32 %inc53, i32* %i, align 4, !tbaa !20
  br label %for.cond.38

for.end.54:                                       ; preds = %for.cond.38
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.85, %for.end.54
  %83 = load i32, i32* %lnum, align 4, !tbaa !20
  %84 = load i32, i32* %bottom, align 4, !tbaa !20
  %cmp56 = icmp slt i32 %83, %84
  br i1 %cmp56, label %for.body.58, label %for.end.87

for.body.58:                                      ; preds = %for.cond.55
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %86 = load i32, i32* %lnum, align 4, !tbaa !20
  %87 = load i8*, i8** %in, align 8, !tbaa !1
  %call59 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %85, i32 %86, i8* %87, i8** %data) #5
  %88 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %tobool = icmp ne i32 %88, 0
  br i1 %tobool, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %for.body.58
  %89 = load i32, i32* %bpc, align 4, !tbaa !20
  %90 = load i32, i32* %ncomp, align 4, !tbaa !20
  %91 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %sub = sub nsw i32 %90, %91
  %mul = mul nsw i32 %89, %sub
  store i32 %mul, i32* %first_bit, align 4, !tbaa !20
  %92 = load i8*, i8** %data, align 8, !tbaa !1
  %93 = load i8*, i8** %buf, align 8, !tbaa !1
  %94 = load i32, i32* %depth, align 4, !tbaa !20
  %95 = load i32, i32* %first_bit, align 4, !tbaa !20
  %96 = load i32, i32* %bpc, align 4, !tbaa !20
  %97 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %mul61 = mul nsw i32 %96, %97
  %98 = load i32, i32* %width, align 4, !tbaa !20
  %call62 = call i32 @repack_data(i8* %92, i8* %93, i32 %94, i32 %95, i32 %mul61, i32 %98) #5
  store i32 %call62, i32* %pcmlinelength, align 4, !tbaa !20
  %99 = load i8*, i8** %buf, align 8, !tbaa !1
  %100 = load i32, i32* %pcmlinelength, align 4, !tbaa !20
  %conv63 = sext i32 %100 to i64
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call64 = call i64 @fwrite(i8* %99, i64 1, i64 %conv63, %struct._IO_FILE* %101) #5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %for.body.58
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.82, %if.end.65
  %102 = load i32, i32* %i, align 4, !tbaa !20
  %103 = load i32, i32* %nspot, align 4, !tbaa !20
  %cmp67 = icmp slt i32 %102, %103
  br i1 %cmp67, label %for.body.69, label %for.end.84

for.body.69:                                      ; preds = %for.cond.66
  %104 = load i32, i32* %bpc, align 4, !tbaa !20
  %105 = load i32, i32* %nspot, align 4, !tbaa !20
  %sub70 = sub nsw i32 %105, 1
  %106 = load i32, i32* %i, align 4, !tbaa !20
  %sub71 = sub nsw i32 %sub70, %106
  %mul72 = mul nsw i32 %104, %sub71
  store i32 %mul72, i32* %first_bit, align 4, !tbaa !20
  %107 = load i8*, i8** %data, align 8, !tbaa !1
  %108 = load i8*, i8** %buf, align 8, !tbaa !1
  %109 = load i32, i32* %depth, align 4, !tbaa !20
  %110 = load i32, i32* %first_bit, align 4, !tbaa !20
  %111 = load i32, i32* %bpc, align 4, !tbaa !20
  %112 = load i32, i32* %width, align 4, !tbaa !20
  %call73 = call i32 @repack_data(i8* %107, i8* %108, i32 %109, i32 %110, i32 %111, i32 %112) #5
  %113 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom74 = sext i32 %113 to i64
  %arrayidx75 = getelementptr inbounds [64 x i32], [64 x i32]* %linelength, i32 0, i64 %idxprom74
  store i32 %call73, i32* %arrayidx75, align 4, !tbaa !20
  %114 = load i8*, i8** %buf, align 8, !tbaa !1
  %115 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom76 = sext i32 %115 to i64
  %arrayidx77 = getelementptr inbounds [64 x i32], [64 x i32]* %linelength, i32 0, i64 %idxprom76
  %116 = load i32, i32* %arrayidx77, align 4, !tbaa !20
  %conv78 = sext i32 %116 to i64
  %117 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom79 = sext i32 %117 to i64
  %arrayidx80 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom79
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx80, align 8, !tbaa !1
  %call81 = call i64 @fwrite(i8* %114, i64 1, i64 %conv78, %struct._IO_FILE* %118) #5
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.69
  %119 = load i32, i32* %i, align 4, !tbaa !20
  %inc83 = add nsw i32 %119, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !20
  br label %for.cond.66

for.end.84:                                       ; preds = %for.cond.66
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %120 = load i32, i32* %lnum, align 4, !tbaa !20
  %inc86 = add nsw i32 %120, 1
  store i32 %inc86, i32* %lnum, align 4, !tbaa !20
  br label %for.cond.55

for.end.87:                                       ; preds = %for.cond.55
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.97, %for.end.87
  %121 = load i32, i32* %i, align 4, !tbaa !20
  %122 = load i32, i32* %nspot, align 4, !tbaa !20
  %cmp89 = icmp slt i32 %121, %122
  br i1 %cmp89, label %for.body.91, label %for.end.99

for.body.91:                                      ; preds = %for.cond.88
  %123 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom92 = sext i32 %123 to i64
  %arrayidx93 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom92
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx93, align 8, !tbaa !1
  %call94 = call i32 @fclose(%struct._IO_FILE* %124) #5
  %125 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom95 = sext i32 %125 to i64
  %arrayidx96 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom95
  store %struct._IO_FILE* null, %struct._IO_FILE** %arrayidx96, align 8, !tbaa !1
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.91
  %126 = load i32, i32* %i, align 4, !tbaa !20
  %inc98 = add nsw i32 %126, 1
  store i32 %inc98, i32* %i, align 4, !tbaa !20
  br label %for.cond.88

for.end.99:                                       ; preds = %for.cond.88
  %127 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %tobool100 = icmp ne i32 %127, 0
  br i1 %tobool100, label %if.then.101, label %if.end.108

if.then.101:                                      ; preds = %for.end.99
  %128 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %129 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %fname102 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %129, i32 0, i32 45
  %130 = bitcast [4096 x i8]* %fname102 to i8*
  %131 = load i32, i32* %npcmcolors, align 4, !tbaa !20
  %132 = load i32, i32* %bpc, align 4, !tbaa !20
  %133 = load i32, i32* %pcmlinelength, align 4, !tbaa !20
  %call103 = call i32 @devn_write_pcx_file(%struct.gx_device_printer_s* %128, i8* %130, i32 %131, i32 %132, i32 %133) #5
  store i32 %call103, i32* %code, align 4, !tbaa !20
  %134 = load i32, i32* %code, align 4, !tbaa !20
  %cmp104 = icmp slt i32 %134, 0
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.101
  br label %prn_done

if.end.107:                                       ; preds = %if.then.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %for.end.99
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.123, %if.end.108
  %135 = load i32, i32* %i, align 4, !tbaa !20
  %136 = load i32, i32* %nspot, align 4, !tbaa !20
  %cmp110 = icmp slt i32 %135, %136
  br i1 %cmp110, label %for.body.112, label %for.end.125

for.body.112:                                     ; preds = %for.cond.109
  %137 = load i8*, i8** %spotname, align 8, !tbaa !1
  %138 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdevn, align 8, !tbaa !1
  %fname113 = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %138, i32 0, i32 45
  %arraydecay114 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname113, i32 0, i32 0
  %139 = load i32, i32* %i, align 4, !tbaa !20
  %call115 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* %arraydecay114, i32 %139) #5
  %140 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %141 = load i8*, i8** %spotname, align 8, !tbaa !1
  %142 = load i32, i32* %bpc, align 4, !tbaa !20
  %143 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom116 = sext i32 %143 to i64
  %arrayidx117 = getelementptr inbounds [64 x i32], [64 x i32]* %linelength, i32 0, i64 %idxprom116
  %144 = load i32, i32* %arrayidx117, align 4, !tbaa !20
  %call118 = call i32 @devn_write_pcx_file(%struct.gx_device_printer_s* %140, i8* %141, i32 1, i32 %142, i32 %144) #5
  store i32 %call118, i32* %code, align 4, !tbaa !20
  %145 = load i32, i32* %code, align 4, !tbaa !20
  %cmp119 = icmp slt i32 %145, 0
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.body.112
  br label %prn_done

if.end.122:                                       ; preds = %for.body.112
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %146 = load i32, i32* %i, align 4, !tbaa !20
  %inc124 = add nsw i32 %146, 1
  store i32 %inc124, i32* %i, align 4, !tbaa !20
  br label %for.cond.109

for.end.125:                                      ; preds = %for.cond.109
  br label %prn_done

prn_done:                                         ; preds = %for.end.125, %if.then.121, %if.then.106, %if.then.50, %if.then
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.139, %prn_done
  %147 = load i32, i32* %i, align 4, !tbaa !20
  %148 = load i32, i32* %nspot, align 4, !tbaa !20
  %cmp127 = icmp slt i32 %147, %148
  br i1 %cmp127, label %for.body.129, label %for.end.141

for.body.129:                                     ; preds = %for.cond.126
  %149 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom130 = sext i32 %149 to i64
  %arrayidx131 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom130
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx131, align 8, !tbaa !1
  %cmp132 = icmp ne %struct._IO_FILE* %150, null
  br i1 %cmp132, label %if.then.134, label %if.end.138

if.then.134:                                      ; preds = %for.body.129
  %151 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom135 = sext i32 %151 to i64
  %arrayidx136 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom135
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx136, align 8, !tbaa !1
  %call137 = call i32 @fclose(%struct._IO_FILE* %152) #5
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.134, %for.body.129
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %153 = load i32, i32* %i, align 4, !tbaa !20
  %inc140 = add nsw i32 %153, 1
  store i32 %inc140, i32* %i, align 4, !tbaa !20
  br label %for.cond.126

for.end.141:                                      ; preds = %for.cond.126
  %154 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp142 = icmp ne i8* %154, null
  br i1 %cmp142, label %if.then.144, label %if.end.148

if.then.144:                                      ; preds = %for.end.141
  %155 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory145 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %155, i32 0, i32 3
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory145, align 8, !tbaa !100
  %procs146 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %156, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs146, i32 0, i32 2
  %157 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %158 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory147 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %158, i32 0, i32 3
  %159 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory147, align 8, !tbaa !100
  %160 = load i8*, i8** %in, align 8, !tbaa !1
  call void %157(%struct.gs_memory_s* %159, i8* %160, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i32 0, i32 0)) #5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.144, %for.end.141
  %161 = load i8*, i8** %buf, align 8, !tbaa !1
  %cmp149 = icmp ne i8* %161, null
  br i1 %cmp149, label %if.then.151, label %if.end.156

if.then.151:                                      ; preds = %if.end.148
  %162 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory152 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %162, i32 0, i32 3
  %163 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory152, align 8, !tbaa !100
  %procs153 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %163, i32 0, i32 1
  %free_object154 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs153, i32 0, i32 2
  %164 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object154, align 8, !tbaa !68
  %165 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory155 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %165, i32 0, i32 3
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory155, align 8, !tbaa !100
  %167 = load i8*, i8** %buf, align 8, !tbaa !1
  call void %164(%struct.gs_memory_s* %166, i8* %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0)) #5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.151, %if.end.148
  %168 = load i8*, i8** %spotname, align 8, !tbaa !1
  %cmp157 = icmp ne i8* %168, null
  br i1 %cmp157, label %if.then.159, label %if.end.164

if.then.159:                                      ; preds = %if.end.156
  %169 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory160 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory160, align 8, !tbaa !100
  %procs161 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 1
  %free_object162 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs161, i32 0, i32 2
  %171 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object162, align 8, !tbaa !68
  %172 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %172, i32 0, i32 3
  %173 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory163, align 8, !tbaa !100
  %174 = load i8*, i8** %spotname, align 8, !tbaa !1
  call void %171(%struct.gs_memory_s* %173, i8* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i32 0, i32 0)) #5
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.159, %if.end.156
  %175 = load i32, i32* %code, align 4, !tbaa !20
  %176 = bitcast i8** %spotname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %176) #1
  %177 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast [64 x i32]* %linelength to i8*
  call void @llvm.lifetime.end(i64 256, i8* %178) #1
  %179 = bitcast i32* %pcmlinelength to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %first_bit to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %183 = bitcast [64 x %struct._IO_FILE*]* %spot_file to i8*
  call void @llvm.lifetime.end(i64 512, i8* %183) #1
  %184 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  %185 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %185) #1
  %186 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %187 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %nspot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %190) #1
  %191 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast %struct.gx_devn_prn_device_s** %pdevn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %192) #1
  %193 = bitcast i8** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  ret i32 %175
}

declare i32 @gx_default_print_page_copies(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #2

declare i32 @gx_default_create_buf_device(%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #2

declare i32 @gx_default_size_buf_device(%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32) #2

declare i32 @gx_default_setup_buf_device(%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32) #2

declare void @gx_default_destroy_buf_device(%struct.gx_device_s*) #2

declare void @gx_default_get_space_params(%struct.gx_device_printer_s*, %struct.gdev_space_params_s*) #2

declare i32 @gx_default_start_render_thread(%struct.gdev_prn_start_render_params_s*) #2

declare i32 @gx_default_open_render_device(%struct.gx_device_printer_s*) #2

declare i32 @gx_default_close_render_device(%struct.gx_device_printer_s*) #2

declare i32 @gx_default_buffer_page(%struct.gx_device_printer_s*, %struct._IO_FILE*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.gx_cm_color_map_procs_s* @gx_devn_prn_get_color_mapping_procs(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @spotCMYK_procs
}

; Function Attrs: nounwind uwtable
define i64 @gx_devn_prn_encode_color(%struct.gx_device_s* %dev, i16* %colors) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %colors.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %color = alloca i64, align 8
  %i = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %COLROUND_M = alloca i32, align 4
  %COLROUND_S = alloca i32, align 4
  %COLROUND_R = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %colors, i16** %colors.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %2, i32 0, i32 68
  %bitspercomponent = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 0
  %3 = load i32, i32* %bitspercomponent, align 4, !tbaa !105
  store i32 %3, i32* %bpc, align 4, !tbaa !20
  %4 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 0, i64* %color, align 8, !tbaa !79
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  %6 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %8 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %8, i32* %ncomp, align 4, !tbaa !20
  %9 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i32, i32* %bpc, align 4, !tbaa !20
  %shl = shl i32 1, %12
  %sub = sub nsw i32 %shl, 1
  %13 = load i32, i32* %bpc, align 4, !tbaa !20
  %conv = sext i32 %13 to i64
  %sub1 = sub i64 16, %conv
  %sh_prom = trunc i64 %sub1 to i32
  %shl2 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl2, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !20
  %14 = load i32, i32* %bpc, align 4, !tbaa !20
  %conv3 = sext i32 %14 to i64
  %sub4 = sub i64 32, %conv3
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, i32* %COLROUND_S, align 4, !tbaa !20
  %15 = load i32, i32* %COLROUND_S, align 4, !tbaa !20
  %sub6 = sub i32 %15, 1
  %shl7 = shl i32 1, %sub6
  store i32 %shl7, i32* %COLROUND_R, align 4, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !20
  %17 = load i32, i32* %ncomp, align 4, !tbaa !20
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %bpc, align 4, !tbaa !20
  %19 = load i64, i64* %color, align 8, !tbaa !79
  %sh_prom9 = zext i32 %18 to i64
  %shl10 = shl i64 %19, %sh_prom9
  store i64 %shl10, i64* %color, align 8, !tbaa !79
  %20 = load i32, i32* %COLROUND_M, align 4, !tbaa !20
  %21 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %21 to i64
  %22 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx, align 2, !tbaa !5
  %conv11 = zext i16 %23 to i32
  %mul = mul i32 %20, %conv11
  %24 = load i32, i32* %COLROUND_R, align 4, !tbaa !20
  %add12 = add i32 %mul, %24
  %25 = load i32, i32* %COLROUND_S, align 4, !tbaa !20
  %shr = lshr i32 %add12, %25
  %conv13 = zext i32 %shr to i64
  %26 = load i64, i64* %color, align 8, !tbaa !79
  %or = or i64 %26, %conv13
  store i64 %or, i64* %color, align 8, !tbaa !79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %color, align 8, !tbaa !79
  %cmp14 = icmp eq i64 %28, -1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %29 = load i64, i64* %color, align 8, !tbaa !79
  %xor = xor i64 %29, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i64, i64* %color, align 8, !tbaa !79
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %30, %cond.false ]
  %31 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define i32 @gx_devn_prn_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %out.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %mask = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %COLDUP_M = alloca i32, align 4
  %COLDUP_S = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !79
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %2, i32 0, i32 68
  %bitspercomponent = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 0
  %3 = load i32, i32* %bitspercomponent, align 4, !tbaa !105
  store i32 %3, i32* %bpc, align 4, !tbaa !20
  %4 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load i32, i32* %bpc, align 4, !tbaa !20
  %shl = shl i32 1, %5
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !20
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  %7 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !7
  store i32 %9, i32* %ncomp, align 4, !tbaa !20
  %10 = bitcast i32* %COLDUP_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %COLDUP_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i32, i32* %bpc, align 4, !tbaa !20
  %mul = mul nsw i32 2, %12
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* @.str.30, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !22
  %conv = zext i8 %13 to i32
  %shl1 = shl i32 %conv, 8
  %14 = load i32, i32* %bpc, align 4, !tbaa !20
  %mul2 = mul nsw i32 2, %14
  %add = add nsw i32 %mul2, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.30, i32 0, i64 %idxprom3
  %15 = load i8, i8* %arrayidx4, align 1, !tbaa !22
  %conv5 = zext i8 %15 to i32
  %or = or i32 %shl1, %conv5
  store i32 %or, i32* %COLDUP_M, align 4, !tbaa !20
  %16 = load i32, i32* %bpc, align 4, !tbaa !20
  %conv6 = sext i32 %16 to i64
  %17 = load i32, i32* %bpc, align 4, !tbaa !20
  %conv7 = sext i32 %17 to i64
  %rem = urem i64 16, %conv7
  %sub8 = sub i64 %conv6, %rem
  %18 = load i32, i32* %bpc, align 4, !tbaa !20
  %conv9 = sext i32 %18 to i64
  %rem10 = urem i64 %sub8, %conv9
  %conv11 = trunc i64 %rem10 to i32
  store i32 %conv11, i32* %COLDUP_S, align 4, !tbaa !20
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %19 = load i32, i32* %i, align 4, !tbaa !20
  %20 = load i32, i32* %ncomp, align 4, !tbaa !20
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %color.addr, align 8, !tbaa !79
  %conv13 = trunc i64 %21 to i32
  %22 = load i32, i32* %mask, align 4, !tbaa !20
  %and = and i32 %conv13, %22
  %23 = load i32, i32* %COLDUP_M, align 4, !tbaa !20
  %mul14 = mul i32 %and, %23
  %conv15 = trunc i32 %mul14 to i16
  %conv16 = zext i16 %conv15 to i32
  %24 = load i32, i32* %COLDUP_S, align 4, !tbaa !20
  %shr = ashr i32 %conv16, %24
  %conv17 = trunc i32 %shr to i16
  %25 = load i32, i32* %ncomp, align 4, !tbaa !20
  %26 = load i32, i32* %i, align 4, !tbaa !20
  %sub18 = sub nsw i32 %25, %26
  %sub19 = sub nsw i32 %sub18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %27 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %27, i64 %idxprom20
  store i16 %conv17, i16* %arrayidx21, align 2, !tbaa !5
  %28 = load i32, i32* %bpc, align 4, !tbaa !20
  %29 = load i64, i64* %color.addr, align 8, !tbaa !79
  %sh_prom = zext i32 %28 to i64
  %shr22 = lshr i64 %29, %sh_prom
  store i64 %shr22, i64* %color.addr, align 8, !tbaa !79
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = bitcast i32* %COLDUP_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #1
  %32 = bitcast i32* %COLDUP_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #1
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #1
  %35 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #1
  %36 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gx_devn_prn_get_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %5 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %4, %struct.gs_param_list_s* %5) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %6 = load i32, i32* %code, align 4, !tbaa !20
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %10 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %10, i32 0, i32 68
  %11 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %equiv_cmyk_colors = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %11, i32 0, i32 69
  %call1 = call i32 @devn_get_params(%struct.gx_device_s* %8, %struct.gs_param_list_s* %9, %struct.gs_devn_params_s* %devn_params, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors) #5
  store i32 %call1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_devn_prn_put_params(%struct.gx_device_s* %dev, %struct.gs_param_list_s* %plist) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %5 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %5, i32 0, i32 68
  %6 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %equiv_cmyk_colors = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %6, i32 0, i32 69
  %call = call i32 @devn_printer_put_params(%struct.gx_device_s* %3, %struct.gs_param_list_s* %4, %struct.gs_devn_params_s* %devn_params, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors) #5
  %7 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct.gs_devn_params_s* @gx_devn_prn_ret_devn_params(%struct.gx_device_s* %dev) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %3, i32 0, i32 68
  %4 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret %struct.gs_devn_params_s* %devn_params
}

; Function Attrs: nounwind uwtable
define i32 @gx_devn_prn_update_spot_equivalent_colors(%struct.gx_device_s* %dev, %struct.gs_state_s* %pgs) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %5 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %5, i32 0, i32 68
  %6 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %equiv_cmyk_colors = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %6, i32 0, i32 69
  call void @update_spot_equivalent_cmyk_colors(%struct.gx_device_s* %3, %struct.gs_state_s* %4, %struct.gs_devn_params_s* %devn_params, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors) #5
  %7 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret i32 0
}

declare void @update_spot_equivalent_cmyk_colors(%struct.gx_device_s*, %struct.gs_state_s*, %struct.gs_devn_params_s*, %struct.equivalent_cmyk_color_params_s*) #2

; Function Attrs: nounwind uwtable
define i32 @gx_devn_prn_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %pdev = alloca %struct.gx_devn_prn_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !20
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !20
  %0 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  store %struct.gx_devn_prn_device_s* %2, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %4, i32 0, i32 68
  %5 = load %struct.gx_devn_prn_device_s*, %struct.gx_devn_prn_device_s** %pdev, align 8, !tbaa !1
  %equiv_cmyk_colors = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %5, i32 0, i32 69
  %6 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %7 = load i32, i32* %name_size.addr, align 4, !tbaa !20
  %8 = load i32, i32* %component_type.addr, align 4, !tbaa !20
  %call = call i32 @devn_get_color_comp_index(%struct.gx_device_s* %3, %struct.gs_devn_params_s* %devn_params, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors, i8* %6, i32 %7, i32 %8, i32 1) #5
  %9 = bitcast %struct.gx_devn_prn_device_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @repack_data(i8* %source, i8* %dest, i32 %depth, i32 %first_bit, i32 %bit_width, i32 %npixel) #0 {
entry:
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %depth.addr = alloca i32, align 4
  %first_bit.addr = alloca i32, align 4
  %bit_width.addr = alloca i32, align 4
  %npixel.addr = alloca i32, align 4
  %in_nbyte = alloca i32, align 4
  %out_nbyte = alloca i32, align 4
  %mask = alloca i64, align 8
  %data = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %length = alloca i32, align 4
  %temp = alloca i8, align 1
  %out = alloca i8*, align 8
  %in_bit_start = alloca i32, align 4
  %out_bit_start = alloca i32, align 4
  %in_byte_loc = alloca i32, align 4
  %out_byte_loc = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8* %dest, i8** %dest.addr, align 8, !tbaa !1
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !20
  store i32 %first_bit, i32* %first_bit.addr, align 4, !tbaa !20
  store i32 %bit_width, i32* %bit_width.addr, align 4, !tbaa !20
  store i32 %npixel, i32* %npixel.addr, align 4, !tbaa !20
  %0 = bitcast i32* %in_nbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %shr = ashr i32 %1, 3
  store i32 %shr, i32* %in_nbyte, align 4, !tbaa !20
  %2 = bitcast i32* %out_nbyte to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %bit_width.addr, align 4, !tbaa !20
  %shr1 = ashr i32 %3, 3
  store i32 %shr1, i32* %out_nbyte, align 4, !tbaa !20
  %4 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store i64 1, i64* %mask, align 8, !tbaa !79
  %5 = bitcast i64* %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %length, align 4, !tbaa !20
  call void @llvm.lifetime.start(i64 1, i8* %temp) #1
  %9 = bitcast i8** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  store i8* %10, i8** %out, align 8, !tbaa !1
  %11 = bitcast i32* %in_bit_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %sub = sub nsw i32 8, %12
  store i32 %sub, i32* %in_bit_start, align 4, !tbaa !20
  %13 = bitcast i32* %out_bit_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %bit_width.addr, align 4, !tbaa !20
  %sub2 = sub nsw i32 8, %14
  store i32 %sub2, i32* %out_bit_start, align 4, !tbaa !20
  %15 = bitcast i32* %in_byte_loc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %in_bit_start, align 4, !tbaa !20
  store i32 %16, i32* %in_byte_loc, align 4, !tbaa !20
  %17 = bitcast i32* %out_byte_loc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %out_bit_start, align 4, !tbaa !20
  store i32 %18, i32* %out_byte_loc, align 4, !tbaa !20
  %19 = load i64, i64* %mask, align 8, !tbaa !79
  %20 = load i32, i32* %bit_width.addr, align 4, !tbaa !20
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 %19, %sh_prom
  %sub3 = sub i64 %shl, 1
  store i64 %sub3, i64* %mask, align 8, !tbaa !79
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %21 = load i32, i32* %i, align 4, !tbaa !20
  %22 = load i32, i32* %npixel.addr, align 4, !tbaa !20
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %in_nbyte, align 4, !tbaa !20
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %24 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !22
  %conv = zext i8 %25 to i64
  store i64 %conv, i64* %data, align 8, !tbaa !79
  %26 = load i32, i32* %in_byte_loc, align 4, !tbaa !20
  %27 = load i64, i64* %data, align 8, !tbaa !79
  %sh_prom4 = zext i32 %26 to i64
  %shr5 = lshr i64 %27, %sh_prom4
  store i64 %shr5, i64* %data, align 8, !tbaa !79
  %28 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %29 = load i32, i32* %in_byte_loc, align 4, !tbaa !20
  %sub6 = sub nsw i32 %29, %28
  store i32 %sub6, i32* %in_byte_loc, align 4, !tbaa !20
  %30 = load i32, i32* %in_byte_loc, align 4, !tbaa !20
  %cmp7 = icmp slt i32 %30, 0
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %31 = load i32, i32* %in_bit_start, align 4, !tbaa !20
  store i32 %31, i32* %in_byte_loc, align 4, !tbaa !20
  %32 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %source.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %33 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr10, i8** %source.addr, align 8, !tbaa !1
  %34 = load i8, i8* %33, align 1, !tbaa !22
  %conv11 = zext i8 %34 to i64
  store i64 %conv11, i64* %data, align 8, !tbaa !79
  store i32 1, i32* %j, align 4, !tbaa !20
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.else
  %35 = load i32, i32* %j, align 4, !tbaa !20
  %36 = load i32, i32* %in_nbyte, align 4, !tbaa !20
  %cmp13 = icmp slt i32 %35, %36
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %37 = load i64, i64* %data, align 8, !tbaa !79
  %shl16 = shl i64 %37, 8
  %38 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr17, i8** %source.addr, align 8, !tbaa !1
  %39 = load i8, i8* %38, align 1, !tbaa !22
  %conv18 = zext i8 %39 to i64
  %add = add i64 %shl16, %conv18
  store i64 %add, i64* %data, align 8, !tbaa !79
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %40 = load i32, i32* %j, align 4, !tbaa !20
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4, !tbaa !20
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %if.end
  %41 = load i32, i32* %first_bit.addr, align 4, !tbaa !20
  %42 = load i64, i64* %data, align 8, !tbaa !79
  %sh_prom20 = zext i32 %41 to i64
  %shr21 = lshr i64 %42, %sh_prom20
  store i64 %shr21, i64* %data, align 8, !tbaa !79
  %43 = load i64, i64* %mask, align 8, !tbaa !79
  %44 = load i64, i64* %data, align 8, !tbaa !79
  %and = and i64 %44, %43
  store i64 %and, i64* %data, align 8, !tbaa !79
  %45 = load i32, i32* %out_nbyte, align 4, !tbaa !20
  %tobool22 = icmp ne i32 %45, 0
  br i1 %tobool22, label %if.else.39, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  %46 = load i8*, i8** %out, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !22
  %conv24 = zext i8 %47 to i64
  %48 = load i64, i64* %mask, align 8, !tbaa !79
  %49 = load i32, i32* %out_byte_loc, align 4, !tbaa !20
  %sh_prom25 = zext i32 %49 to i64
  %shl26 = shl i64 %48, %sh_prom25
  %neg = xor i64 %shl26, -1
  %and27 = and i64 %conv24, %neg
  %conv28 = trunc i64 %and27 to i8
  store i8 %conv28, i8* %temp, align 1, !tbaa !22
  %50 = load i8, i8* %temp, align 1, !tbaa !22
  %conv29 = zext i8 %50 to i64
  %51 = load i64, i64* %data, align 8, !tbaa !79
  %52 = load i32, i32* %out_byte_loc, align 4, !tbaa !20
  %sh_prom30 = zext i32 %52 to i64
  %shl31 = shl i64 %51, %sh_prom30
  %or = or i64 %conv29, %shl31
  %conv32 = trunc i64 %or to i8
  %53 = load i8*, i8** %out, align 8, !tbaa !1
  store i8 %conv32, i8* %53, align 1, !tbaa !22
  %54 = load i32, i32* %bit_width.addr, align 4, !tbaa !20
  %55 = load i32, i32* %out_byte_loc, align 4, !tbaa !20
  %sub33 = sub nsw i32 %55, %54
  store i32 %sub33, i32* %out_byte_loc, align 4, !tbaa !20
  %56 = load i32, i32* %out_byte_loc, align 4, !tbaa !20
  %cmp34 = icmp slt i32 %56, 0
  br i1 %cmp34, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.then.23
  %57 = load i32, i32* %out_bit_start, align 4, !tbaa !20
  store i32 %57, i32* %out_byte_loc, align 4, !tbaa !20
  %58 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr37, i8** %out, align 8, !tbaa !1
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.then.23
  br label %if.end.59

if.else.39:                                       ; preds = %if.end.19
  %59 = load i64, i64* %data, align 8, !tbaa !79
  %60 = load i32, i32* %out_nbyte, align 4, !tbaa !20
  %sub40 = sub nsw i32 %60, 1
  %mul = mul nsw i32 %sub40, 8
  %sh_prom41 = zext i32 %mul to i64
  %shr42 = lshr i64 %59, %sh_prom41
  %conv43 = trunc i64 %shr42 to i8
  %61 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr44, i8** %out, align 8, !tbaa !1
  store i8 %conv43, i8* %61, align 1, !tbaa !22
  store i32 1, i32* %j, align 4, !tbaa !20
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.56, %if.else.39
  %62 = load i32, i32* %j, align 4, !tbaa !20
  %63 = load i32, i32* %out_nbyte, align 4, !tbaa !20
  %cmp46 = icmp slt i32 %62, %63
  br i1 %cmp46, label %for.body.48, label %for.end.58

for.body.48:                                      ; preds = %for.cond.45
  %64 = load i64, i64* %data, align 8, !tbaa !79
  %65 = load i32, i32* %out_nbyte, align 4, !tbaa !20
  %sub49 = sub nsw i32 %65, 1
  %66 = load i32, i32* %j, align 4, !tbaa !20
  %sub50 = sub nsw i32 %sub49, %66
  %mul51 = mul nsw i32 %sub50, 8
  %sh_prom52 = zext i32 %mul51 to i64
  %shr53 = lshr i64 %64, %sh_prom52
  %conv54 = trunc i64 %shr53 to i8
  %67 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr55 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr55, i8** %out, align 8, !tbaa !1
  store i8 %conv54, i8* %67, align 1, !tbaa !22
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.48
  %68 = load i32, i32* %j, align 4, !tbaa !20
  %inc57 = add nsw i32 %68, 1
  store i32 %inc57, i32* %j, align 4, !tbaa !20
  br label %for.cond.45

for.end.58:                                       ; preds = %for.cond.45
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %if.end.38
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %69 = load i32, i32* %i, align 4, !tbaa !20
  %inc61 = add nsw i32 %69, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  %70 = load i32, i32* %out_byte_loc, align 4, !tbaa !20
  %71 = load i32, i32* %out_bit_start, align 4, !tbaa !20
  %cmp63 = icmp ne i32 %70, %71
  br i1 %cmp63, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %for.end.62
  %72 = load i8*, i8** %out, align 8, !tbaa !1
  %73 = load i8, i8* %72, align 1, !tbaa !22
  %conv66 = zext i8 %73 to i32
  %74 = load i32, i32* %out_byte_loc, align 4, !tbaa !20
  %shl67 = shl i32 -1, %74
  %and68 = and i32 %conv66, %shl67
  %conv69 = trunc i32 %and68 to i8
  %75 = load i8*, i8** %out, align 8, !tbaa !1
  store i8 %conv69, i8* %75, align 1, !tbaa !22
  %76 = load i8*, i8** %out, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr70, i8** %out, align 8, !tbaa !1
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.65, %for.end.62
  %77 = load i8*, i8** %out, align 8, !tbaa !1
  %78 = load i8*, i8** %dest.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %78 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv72 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv72, i32* %length, align 4, !tbaa !20
  %79 = load i32, i32* %length, align 4, !tbaa !20
  %80 = bitcast i32* %out_byte_loc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %81 = bitcast i32* %in_byte_loc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i32* %out_bit_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  %83 = bitcast i32* %in_bit_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = bitcast i8** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #1
  call void @llvm.lifetime.end(i64 1, i8* %temp) #1
  %85 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i64* %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %88) #1
  %89 = bitcast i64* %mask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast i32* %out_nbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %in_nbyte to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  ret i32 %79
}

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @compressed_color_list_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %plist = alloca %struct.compressed_color_list_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  store i32 %index, i32* %index.addr, align 4, !tbaa !20
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.compressed_color_list_s*
  store %struct.compressed_color_list_s* %2, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !20
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4, !tbaa !20
  %5 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %5, i32 0, i32 2
  %6 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %7 = load i32, i32* %index.addr, align 4, !tbaa !20
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %8, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u to [256 x %struct.compressed_color_list_s*]*
  %arrayidx = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom
  %9 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx, align 8, !tbaa !1
  %10 = bitcast %struct.compressed_color_list_s* %9 to i8*
  %11 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %11, i32 0, i32 0
  store i8* %10, i8** %ptr, align 8, !tbaa !93
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.default
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  %13 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %13
}

; Function Attrs: nounwind uwtable
define internal void @compressed_color_list_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %plist = alloca %struct.compressed_color_list_s*, align 8
  %i = alloca i32, align 4
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !20
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.compressed_color_list_s*
  store %struct.compressed_color_list_s* %2, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !20
  %5 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %plist, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %5, i32 0, i32 2
  %6 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gc_state_s* %7 to %struct.gc_procs_common_s**
  %9 = load %struct.gc_procs_common_s*, %struct.gc_procs_common_s** %8, align 8, !tbaa !1
  %reloc_struct_ptr = getelementptr inbounds %struct.gc_procs_common_s, %struct.gc_procs_common_s* %9, i32 0, i32 0
  %10 = load i8* (i8*, %struct.gc_state_s*)*, i8* (i8*, %struct.gc_state_s*)** %reloc_struct_ptr, align 8, !tbaa !98
  %11 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %13 = bitcast i8* %12 to %struct.compressed_color_list_s*
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %13, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u to [256 x %struct.compressed_color_list_s*]*
  %arrayidx = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom
  %14 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx, align 8, !tbaa !1
  %15 = bitcast %struct.compressed_color_list_s* %14 to i8*
  %16 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call i8* %10(i8* %15, %struct.gc_state_s* %16) #5
  %17 = bitcast i8* %call to %struct.compressed_color_list_s*
  %18 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom1 = sext i32 %18 to i64
  %19 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %20 = bitcast i8* %19 to %struct.compressed_color_list_s*
  %u2 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %20, i32 0, i32 4
  %sub_level_ptrs3 = bitcast %union.anon.10* %u2 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx4 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs3, i32 0, i64 %idxprom1
  store %struct.compressed_color_list_s* %17, %struct.compressed_color_list_s** %arrayidx4, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast %struct.compressed_color_list_s** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @sub_level_add_compressed_color_list(%struct.gs_memory_s* %mem, %struct.comp_bit_map_list_s* %pnew_comp_bit_map, %struct.compressed_color_list_s* %pcomp_list, i64* %plist_index) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pnew_comp_bit_map.addr = alloca %struct.comp_bit_map_list_s*, align 8
  %pcomp_list.addr = alloca %struct.compressed_color_list_s*, align 8
  %plist_index.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %entry_num = alloca i32, align 4
  %num_non_solid_comp = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.comp_bit_map_list_s* %pnew_comp_bit_map, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  store %struct.compressed_color_list_s* %pcomp_list, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  store i64* %plist_index, i64** %plist_index.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %entry_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %num_non_solid_comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %num_non_solid_comp1 = getelementptr inbounds %struct.comp_bit_map_list_s, %struct.comp_bit_map_list_s* %3, i32 0, i32 1
  %4 = load i16, i16* %num_non_solid_comp1, align 2, !tbaa !84
  %conv = sext i16 %4 to i32
  store i32 %conv, i32* %num_non_solid_comp, align 4, !tbaa !20
  %5 = bitcast i32* %status to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load i32, i32* %num_non_solid_comp, align 4, !tbaa !20
  %7 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %level_num_comp = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %7, i32 0, i32 1
  %8 = load i32, i32* %level_num_comp, align 4, !tbaa !77
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %9 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %first_bit_map = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %9, i32 0, i32 3
  %10 = load i32, i32* %first_bit_map, align 4, !tbaa !75
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %entry_num, align 4, !tbaa !20
  %11 = load i32, i32* %entry_num, align 4, !tbaa !20
  %12 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %12, i32 0, i32 2
  %13 = load i32, i32* %num_sub_level_ptrs, align 4, !tbaa !72
  %cmp3 = icmp sgt i32 %11, %13
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %14 = load i32, i32* %entry_num, align 4, !tbaa !20
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %15, i32 0, i32 4
  %comp_data = bitcast %union.anon.10* %u to [256 x %struct.comp_bit_map_list_s]*
  %arrayidx = getelementptr inbounds [256 x %struct.comp_bit_map_list_s], [256 x %struct.comp_bit_map_list_s]* %comp_data, i32 0, i64 %idxprom
  %16 = bitcast %struct.comp_bit_map_list_s* %arrayidx to i8*
  %17 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %18 = bitcast %struct.comp_bit_map_list_s* %17 to i8*
  %call = call i8* @memcpy(i8* %16, i8* %18, i64 24) #7
  %19 = load i32, i32* %entry_num, align 4, !tbaa !20
  %20 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %first_bit_map6 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %20, i32 0, i32 3
  store i32 %19, i32* %first_bit_map6, align 4, !tbaa !75
  %21 = load i32, i32* %entry_num, align 4, !tbaa !20
  %conv7 = sext i32 %21 to i64
  %shl = shl i64 %conv7, 56
  %22 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  store i64 %shl, i64* %22, align 8, !tbaa !79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %23 = load i32, i32* %i, align 4, !tbaa !20
  %24 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs9 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %24, i32 0, i32 2
  %25 = load i32, i32* %num_sub_level_ptrs9, align 4, !tbaa !72
  %cmp10 = icmp slt i32 %23, %25
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !20
  %idxprom12 = sext i32 %28 to i64
  %29 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u13 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %29, i32 0, i32 4
  %sub_level_ptrs = bitcast %union.anon.10* %u13 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx14 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs, i32 0, i64 %idxprom12
  %30 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx14, align 8, !tbaa !1
  %31 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %call15 = call i32 @sub_level_add_compressed_color_list(%struct.gs_memory_s* %26, %struct.comp_bit_map_list_s* %27, %struct.compressed_color_list_s* %30, i64* %31) #5
  store i32 %call15, i32* %status, align 4, !tbaa !20
  %32 = load i32, i32* %status, align 4, !tbaa !20
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !20
  %conv17 = sext i32 %33 to i64
  %shl18 = shl i64 %conv17, 56
  %34 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %35 = load i64, i64* %34, align 8, !tbaa !79
  %shr = lshr i64 %35, 8
  %add = add i64 %shl18, %shr
  %36 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  store i64 %add, i64* %36, align 8, !tbaa !79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %37 = load i32, i32* %i, align 4, !tbaa !20
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs20 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %38, i32 0, i32 2
  %39 = load i32, i32* %num_sub_level_ptrs20, align 4, !tbaa !72
  store i32 %39, i32* %entry_num, align 4, !tbaa !20
  %40 = load i32, i32* %entry_num, align 4, !tbaa !20
  %41 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %first_bit_map21 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %41, i32 0, i32 3
  %42 = load i32, i32* %first_bit_map21, align 4, !tbaa !75
  %cmp22 = icmp slt i32 %40, %42
  br i1 %cmp22, label %if.then.24, label %if.end.55

if.then.24:                                       ; preds = %for.end
  %43 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %mem25 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %43, i32 0, i32 0
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem25, align 8, !tbaa !74
  %45 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %level_num_comp26 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %45, i32 0, i32 1
  %46 = load i32, i32* %level_num_comp26, align 4, !tbaa !77
  %sub27 = sub nsw i32 %46, 1
  %call28 = call %struct.compressed_color_list_s* @alloc_compressed_color_list_elem(%struct.gs_memory_s* %44, i32 %sub27) #5
  %47 = load i32, i32* %entry_num, align 4, !tbaa !20
  %idxprom29 = sext i32 %47 to i64
  %48 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u30 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %48, i32 0, i32 4
  %sub_level_ptrs31 = bitcast %union.anon.10* %u30 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx32 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs31, i32 0, i64 %idxprom29
  store %struct.compressed_color_list_s* %call28, %struct.compressed_color_list_s** %arrayidx32, align 8, !tbaa !1
  %49 = load i32, i32* %entry_num, align 4, !tbaa !20
  %idxprom33 = sext i32 %49 to i64
  %50 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u34 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %50, i32 0, i32 4
  %sub_level_ptrs35 = bitcast %union.anon.10* %u34 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx36 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs35, i32 0, i64 %idxprom33
  %51 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx36, align 8, !tbaa !1
  %cmp37 = icmp ne %struct.compressed_color_list_s* %51, null
  br i1 %cmp37, label %if.then.39, label %if.end.54

if.then.39:                                       ; preds = %if.then.24
  %52 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %num_sub_level_ptrs40 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %52, i32 0, i32 2
  %53 = load i32, i32* %num_sub_level_ptrs40, align 4, !tbaa !72
  %inc41 = add nsw i32 %53, 1
  store i32 %inc41, i32* %num_sub_level_ptrs40, align 4, !tbaa !72
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %55 = load %struct.comp_bit_map_list_s*, %struct.comp_bit_map_list_s** %pnew_comp_bit_map.addr, align 8, !tbaa !1
  %56 = load i32, i32* %entry_num, align 4, !tbaa !20
  %idxprom42 = sext i32 %56 to i64
  %57 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %pcomp_list.addr, align 8, !tbaa !1
  %u43 = getelementptr inbounds %struct.compressed_color_list_s, %struct.compressed_color_list_s* %57, i32 0, i32 4
  %sub_level_ptrs44 = bitcast %union.anon.10* %u43 to [256 x %struct.compressed_color_list_s*]*
  %arrayidx45 = getelementptr inbounds [256 x %struct.compressed_color_list_s*], [256 x %struct.compressed_color_list_s*]* %sub_level_ptrs44, i32 0, i64 %idxprom42
  %58 = load %struct.compressed_color_list_s*, %struct.compressed_color_list_s** %arrayidx45, align 8, !tbaa !1
  %59 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %call46 = call i32 @sub_level_add_compressed_color_list(%struct.gs_memory_s* %54, %struct.comp_bit_map_list_s* %55, %struct.compressed_color_list_s* %58, i64* %59) #5
  store i32 %call46, i32* %status, align 4, !tbaa !20
  %60 = load i32, i32* %status, align 4, !tbaa !20
  %tobool47 = icmp ne i32 %60, 0
  br i1 %tobool47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.then.39
  %61 = load i32, i32* %i, align 4, !tbaa !20
  %conv49 = sext i32 %61 to i64
  %shl50 = shl i64 %conv49, 56
  %62 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  %63 = load i64, i64* %62, align 8, !tbaa !79
  %shr51 = lshr i64 %63, 8
  %add52 = add i64 %shl50, %shr51
  %64 = load i64*, i64** %plist_index.addr, align 8, !tbaa !1
  store i64 %add52, i64* %64, align 8, !tbaa !79
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %if.then.39
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.24
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %for.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.then.48, %if.then.16, %if.end, %if.then.5
  %65 = bitcast i32* %status to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %num_non_solid_comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %entry_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @spotcmyk_prn_open(%struct.gx_device_s* %pdev) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open(%struct.gx_device_s* %1) #5
  store i32 %call, i32* %code, align 4, !tbaa !20
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %2) #5
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !108
  %4 = load i32, i32* %code, align 4, !tbaa !20
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #2

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #2

declare i32 @gdev_prn_close(%struct.gx_device_s*) #2

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #2

declare i32 @gdev_prn_open(%struct.gx_device_s*) #2

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %map = alloca i32*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %2, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %map, align 8, !tbaa !1
  %5 = load i16, i16* %gray.addr, align 2, !tbaa !5
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @gray_cs_to_devn_cm(%struct.gx_device_s* %3, i32* %4, i16 signext %5, i16* %6) #5
  %7 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #0 {
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
  store i16 %r, i16* %r.addr, align 2, !tbaa !5
  store i16 %g, i16* %g.addr, align 2, !tbaa !5
  store i16 %b, i16* %b.addr, align 2, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %2, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %map, align 8, !tbaa !1
  %5 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %6 = load i16, i16* %r.addr, align 2, !tbaa !5
  %7 = load i16, i16* %g.addr, align 2, !tbaa !5
  %8 = load i16, i16* %b.addr, align 2, !tbaa !5
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @rgb_cs_to_devn_cm(%struct.gx_device_s* %3, i32* %4, %struct.gs_imager_state_s* %5, i16 signext %6, i16 signext %7, i16 signext %8, i16* %9) #5
  %10 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %map = alloca i32*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !5
  store i16 %m, i16* %m.addr, align 2, !tbaa !5
  store i16 %y, i16* %y.addr, align 2, !tbaa !5
  store i16 %k, i16* %k.addr, align 2, !tbaa !5
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32** %map to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_devn_prn_device_s*
  %devn_params = getelementptr inbounds %struct.gx_devn_prn_device_s, %struct.gx_devn_prn_device_s* %2, i32 0, i32 68
  %separation_order_map = getelementptr inbounds %struct.gs_devn_params_s, %struct.gs_devn_params_s* %devn_params, i32 0, i32 7
  %arraydecay = getelementptr inbounds [70 x i32], [70 x i32]* %separation_order_map, i32 0, i32 0
  store i32* %arraydecay, i32** %map, align 8, !tbaa !1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %4 = load i32*, i32** %map, align 8, !tbaa !1
  %5 = load i16, i16* %c.addr, align 2, !tbaa !5
  %6 = load i16, i16* %m.addr, align 2, !tbaa !5
  %7 = load i16, i16* %y.addr, align 2, !tbaa !5
  %8 = load i16, i16* %k.addr, align 2, !tbaa !5
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_devn_cm(%struct.gx_device_s* %3, i32* %4, i16 signext %5, i16 signext %6, i16 signext %7, i16 signext %8, i16* %9) #5
  %10 = bitcast i32** %map to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret void
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #2

declare i32 @gs_sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #2

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #2

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @devn_write_pcx_file(%struct.gx_device_printer_s* %pdev, i8* %filename, i32 %ncomp, i32 %bpc, i32 %linesize) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %filename.addr = alloca i8*, align 8
  %ncomp.addr = alloca i32, align 4
  %bpc.addr = alloca i32, align 4
  %linesize.addr = alloca i32, align 4
  %header = alloca %struct.pcx_header_s, align 2
  %code = alloca i32, align 4
  %planar = alloca i32, align 4
  %outname = alloca i8*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %depth = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store i8* %filename, i8** %filename.addr, align 8, !tbaa !1
  store i32 %ncomp, i32* %ncomp.addr, align 4, !tbaa !20
  store i32 %bpc, i32* %bpc.addr, align 4, !tbaa !20
  store i32 %linesize, i32* %linesize.addr, align 4, !tbaa !20
  %0 = bitcast %struct.pcx_header_s* %header to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %outname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 3
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !100
  %call = call i8* %6(%struct.gs_memory_s* %8, i32 4096, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0)) #5
  store i8* %call, i8** %outname, align 8, !tbaa !1
  %9 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store %struct._IO_FILE* null, %struct._IO_FILE** %in, align 8, !tbaa !1
  %10 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  store %struct._IO_FILE* null, %struct._IO_FILE** %out, align 8, !tbaa !1
  %11 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %ncomp.addr, align 4, !tbaa !20
  %13 = load i32, i32* %bpc.addr, align 4, !tbaa !20
  %call2 = call i32 @bpc_to_depth(i32 %12, i32 %13) #5
  store i32 %call2, i32* %depth, align 4, !tbaa !20
  %14 = load i8*, i8** %outname, align 8, !tbaa !1
  %cmp = icmp eq i8* %14, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %code, align 4, !tbaa !20
  br label %done

if.end:                                           ; preds = %entry
  %15 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call3 = call %struct._IO_FILE* @gp_fopen(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %in, align 8, !tbaa !1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %tobool = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -9, i32* %code, align 4, !tbaa !20
  br label %done

if.end.5:                                         ; preds = %if.end
  %17 = load i8*, i8** %outname, align 8, !tbaa !1
  %18 = load i8*, i8** %filename.addr, align 8, !tbaa !1
  %call6 = call i32 (i8*, i8*, ...) @gs_sprintf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* %18) #5
  %19 = load i8*, i8** %outname, align 8, !tbaa !1
  %call7 = call %struct._IO_FILE* @gp_fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0)) #5
  store %struct._IO_FILE* %call7, %struct._IO_FILE** %out, align 8, !tbaa !1
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %tobool8 = icmp ne %struct._IO_FILE* %20, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.5
  store i32 -9, i32* %code, align 4, !tbaa !20
  br label %done

if.end.10:                                        ; preds = %if.end.5
  %21 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %22 = load i32, i32* %ncomp.addr, align 4, !tbaa !20
  %23 = load i32, i32* %bpc.addr, align 4, !tbaa !20
  %call11 = call i32 @devn_setup_pcx_header(%struct.gx_device_printer_s* %21, %struct.pcx_header_s* %header, i32 %22, i32 %23) #5
  store i32 %call11, i32* %planar, align 4, !tbaa !20
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %26 = load i32, i32* %linesize.addr, align 4, !tbaa !20
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %28 = load i32, i32* %planar, align 4, !tbaa !20
  %29 = load i32, i32* %depth, align 4, !tbaa !20
  %call12 = call i32 @devn_pcx_write_page(%struct.gx_device_printer_s* %24, %struct._IO_FILE* %25, i32 %26, %struct._IO_FILE* %27, %struct.pcx_header_s* %header, i32 %28, i32 %29) #5
  store i32 %call12, i32* %code, align 4, !tbaa !20
  %30 = load i32, i32* %code, align 4, !tbaa !20
  %cmp13 = icmp sge i32 %30, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.10
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %33 = load i32, i32* %ncomp.addr, align 4, !tbaa !20
  %34 = load i32, i32* %bpc.addr, align 4, !tbaa !20
  %call15 = call i32 @devn_finish_pcx_file(%struct.gx_device_printer_s* %31, %struct._IO_FILE* %32, %struct.pcx_header_s* %header, i32 %33, i32 %34) #5
  store i32 %call15, i32* %code, align 4, !tbaa !20
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.10
  br label %done

done:                                             ; preds = %if.end.16, %if.then.9, %if.then.4, %if.then
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %tobool17 = icmp ne %struct._IO_FILE* %35, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %done
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8, !tbaa !1
  %call19 = call i32 @fclose(%struct._IO_FILE* %36) #5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %done
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %tobool21 = icmp ne %struct._IO_FILE* %37, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8, !tbaa !1
  %call23 = call i32 @fclose(%struct._IO_FILE* %38) #5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  %39 = load i8*, i8** %outname, align 8, !tbaa !1
  %tobool25 = icmp ne i8* %39, null
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.24
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !100
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %41, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %42 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %43 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory29 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory29, align 8, !tbaa !100
  %45 = load i8*, i8** %outname, align 8, !tbaa !1
  call void %42(%struct.gs_memory_s* %44, i8* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.41, i32 0, i32 0)) #5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.24
  %46 = load i32, i32* %code, align 4, !tbaa !20
  %47 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast %struct._IO_FILE** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %48) #1
  %49 = bitcast %struct._IO_FILE** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %50 = bitcast i8** %outname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #1
  %51 = bitcast i32* %planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast %struct.pcx_header_s* %header to i8*
  call void @llvm.lifetime.end(i64 128, i8* %53) #1
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal i32 @devn_setup_pcx_header(%struct.gx_device_printer_s* %pdev, %struct.pcx_header_s* %phdr, i32 %num_planes, i32 %bits_per_plane) #0 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %phdr.addr = alloca %struct.pcx_header_s*, align 8
  %num_planes.addr = alloca i32, align 4
  %bits_per_plane.addr = alloca i32, align 4
  %planar = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.pcx_header_s* %phdr, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !20
  store i32 %bits_per_plane, i32* %bits_per_plane.addr, align 4, !tbaa !20
  %0 = bitcast i32* %planar to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 1, i32* %planar, align 4, !tbaa !20
  %1 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %2 = bitcast %struct.pcx_header_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* getelementptr inbounds (%struct.pcx_header_s, %struct.pcx_header_s* @pcx_header_prototype, i32 0, i32 0), i64 128, i32 2, i1 false), !tbaa.struct !109
  %3 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  %conv = trunc i32 %3 to i8
  %4 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %4, i32 0, i32 3
  store i8 %conv, i8* %bpp, align 1, !tbaa !110
  %5 = load i32, i32* %num_planes.addr, align 4, !tbaa !20
  %conv1 = trunc i32 %5 to i8
  %6 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %nplanes = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %6, i32 0, i32 12
  store i8 %conv1, i8* %nplanes, align 1, !tbaa !112
  %7 = load i32, i32* %num_planes.addr, align 4, !tbaa !20
  switch i32 %7, label %sw.epilog.27 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.13
    i32 4, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %entry
  %8 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb.2
    i32 2, label %sw.epilog
    i32 4, label %sw.bb.3
    i32 5, label %sw.epilog
    i32 8, label %sw.bb.8
    i32 16, label %sw.epilog
  ]

sw.bb.2:                                          ; preds = %sw.bb
  %9 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %version = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %9, i32 0, i32 1
  store i8 2, i8* %version, align 1, !tbaa !113
  %10 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %palinfo = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %10, i32 0, i32 14
  store i16 2, i16* %palinfo, align 2, !tbaa !114
  %11 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %palette = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %11, i32 0, i32 10
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %palette, i32 0, i32 0
  %call = call i8* @memcpy(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i64 6) #7
  store i32 0, i32* %planar, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.3:                                          ; preds = %sw.bb
  %12 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %version4 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %12, i32 0, i32 1
  store i8 2, i8* %version4, align 1, !tbaa !113
  %13 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %palette5 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %13, i32 0, i32 10
  %arraydecay6 = getelementptr inbounds [48 x i8], [48 x i8]* %palette5, i32 0, i32 0
  %call7 = call i8* @memcpy(i8* %arraydecay6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @pcx_ega_palette, i32 0, i32 0), i64 48) #7
  store i32 1, i32* %planar, align 4, !tbaa !20
  br label %sw.epilog

sw.bb.8:                                          ; preds = %sw.bb
  %14 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %version9 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %14, i32 0, i32 1
  store i8 5, i8* %version9, align 1, !tbaa !113
  %15 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %palinfo10 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %15, i32 0, i32 14
  store i16 2, i16* %palinfo10, align 2, !tbaa !114
  store i32 0, i32* %planar, align 4, !tbaa !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %sw.bb, %sw.bb.8, %sw.bb, %sw.bb.3, %sw.bb, %sw.bb.2
  br label %sw.epilog.27

sw.bb.11:                                         ; preds = %entry
  %16 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %16, label %sw.epilog.12 [
    i32 1, label %sw.epilog.12
    i32 2, label %sw.epilog.12
    i32 4, label %sw.epilog.12
    i32 5, label %sw.epilog.12
    i32 8, label %sw.epilog.12
    i32 16, label %sw.epilog.12
  ]

sw.epilog.12:                                     ; preds = %sw.bb.11, %sw.bb.11, %sw.bb.11, %sw.bb.11, %sw.bb.11, %sw.bb.11, %sw.bb.11
  br label %sw.epilog.27

sw.bb.13:                                         ; preds = %entry
  %17 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %17, label %sw.epilog.17 [
    i32 1, label %sw.epilog.17
    i32 2, label %sw.epilog.17
    i32 4, label %sw.epilog.17
    i32 5, label %sw.epilog.17
    i32 8, label %sw.bb.14
    i32 16, label %sw.epilog.17
  ]

sw.bb.14:                                         ; preds = %sw.bb.13
  %18 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %version15 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %18, i32 0, i32 1
  store i8 5, i8* %version15, align 1, !tbaa !113
  %19 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %palinfo16 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %19, i32 0, i32 14
  store i16 1, i16* %palinfo16, align 2, !tbaa !114
  store i32 1, i32* %planar, align 4, !tbaa !20
  br label %sw.epilog.17

sw.epilog.17:                                     ; preds = %sw.bb.13, %sw.bb.13, %sw.bb.14, %sw.bb.13, %sw.bb.13, %sw.bb.13, %sw.bb.13
  br label %sw.epilog.27

sw.bb.18:                                         ; preds = %entry
  %20 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %20, label %sw.epilog.26 [
    i32 1, label %sw.bb.19
    i32 2, label %sw.epilog.26
    i32 4, label %sw.epilog.26
    i32 5, label %sw.epilog.26
    i32 8, label %sw.epilog.26
    i32 16, label %sw.epilog.26
  ]

sw.bb.19:                                         ; preds = %sw.bb.18
  %21 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %version20 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %21, i32 0, i32 1
  store i8 2, i8* %version20, align 1, !tbaa !113
  %22 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %palette21 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %22, i32 0, i32 10
  %arraydecay22 = getelementptr inbounds [48 x i8], [48 x i8]* %palette21, i32 0, i32 0
  %call23 = call i8* @memcpy(i8* %arraydecay22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @pcx_cmyk_palette, i32 0, i32 0), i64 48) #7
  store i32 0, i32* %planar, align 4, !tbaa !20
  %23 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %bpp24 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %23, i32 0, i32 3
  store i8 4, i8* %bpp24, align 1, !tbaa !110
  %24 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %nplanes25 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %24, i32 0, i32 12
  store i8 1, i8* %nplanes25, align 1, !tbaa !112
  br label %sw.epilog.26

sw.epilog.26:                                     ; preds = %sw.bb.18, %sw.bb.18, %sw.bb.18, %sw.bb.18, %sw.bb.18, %sw.bb.18, %sw.bb.19
  br label %sw.epilog.27

sw.epilog.27:                                     ; preds = %entry, %sw.epilog.26, %sw.epilog.17, %sw.epilog.12, %sw.epilog
  %25 = load i32, i32* %planar, align 4, !tbaa !20
  %26 = bitcast i32* %planar to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #1
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @devn_pcx_write_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %infile, i32 %linesize, %struct._IO_FILE* %outfile, %struct.pcx_header_s* %phdr, i32 %planar, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %infile.addr = alloca %struct._IO_FILE*, align 8
  %linesize.addr = alloca i32, align 4
  %outfile.addr = alloca %struct._IO_FILE*, align 8
  %phdr.addr = alloca %struct.pcx_header_s*, align 8
  %planar.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %raster = alloca i32, align 4
  %rsize = alloca i32, align 4
  %height = alloca i32, align 4
  %lsize = alloca i32, align 4
  %line = alloca i8*, align 8
  %plane = alloca i8*, align 8
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %row = alloca i8*, align 8
  %end = alloca i8*, align 8
  %pend = alloca i8*, align 8
  %shift = alloca i32, align 4
  %from = alloca i8*, align 8
  %to = alloca i8*, align 8
  %bright = alloca i32, align 4
  %bleft = alloca i32, align 4
  %pnum = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %infile, %struct._IO_FILE** %infile.addr, align 8, !tbaa !1
  store i32 %linesize, i32* %linesize.addr, align 4, !tbaa !20
  store %struct._IO_FILE* %outfile, %struct._IO_FILE** %outfile.addr, align 8, !tbaa !1
  store %struct.pcx_header_s* %phdr, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  store i32 %planar, i32* %planar.addr, align 4, !tbaa !20
  store i32 %depth, i32* %depth.addr, align 4, !tbaa !20
  %0 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %linesize.addr, align 4, !tbaa !20
  store i32 %1, i32* %raster, align 4, !tbaa !20
  %2 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 13
  %4 = load i32, i32* %width, align 4, !tbaa !107
  %5 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %bpp = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %5, i32 0, i32 3
  %6 = load i8, i8* %bpp, align 1, !tbaa !110
  %conv = zext i8 %6 to i32
  %mul = mul nsw i32 %4, %conv
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  %add1 = add nsw i32 %shr, 1
  %and = and i32 %add1, -2
  store i32 %and, i32* %rsize, align 4, !tbaa !20
  %7 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 14
  %9 = load i32, i32* %height2, align 4, !tbaa !106
  store i32 %9, i32* %height, align 4, !tbaa !20
  %10 = bitcast i32* %lsize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %raster, align 4, !tbaa !20
  %12 = load i32, i32* %rsize, align 4, !tbaa !20
  %add3 = add i32 %11, %12
  store i32 %add3, i32* %lsize, align 4, !tbaa !20
  %13 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %14, i32 0, i32 3
  %15 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !100
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %15, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %16 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !37
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !100
  %19 = load i32, i32* %lsize, align 4, !tbaa !20
  %call = call i8* %16(%struct.gs_memory_s* %18, i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0)) #5
  store i8* %call, i8** %line, align 8, !tbaa !1
  %20 = bitcast i8** %plane to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load i8*, i8** %line, align 8, !tbaa !1
  %22 = load i32, i32* %raster, align 4, !tbaa !20
  %idx.ext = sext i32 %22 to i64
  %add.ptr = getelementptr inbounds i8, i8* %21, i64 %idx.ext
  store i8* %add.ptr, i8** %plane, align 8, !tbaa !1
  %23 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  store i32 0, i32* %code, align 4, !tbaa !20
  %25 = load i8*, i8** %line, align 8, !tbaa !1
  %cmp = icmp eq i8* %25, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

if.end:                                           ; preds = %entry
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width6 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 13
  %27 = load i32, i32* %width6, align 4, !tbaa !107
  %sub = sub nsw i32 %27, 1
  %conv7 = trunc i32 %sub to i16
  %28 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %x2 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %28, i32 0, i32 6
  store i16 %conv7, i16* %x2, align 2, !tbaa !115
  %29 = load i32, i32* %height, align 4, !tbaa !20
  %sub8 = sub nsw i32 %29, 1
  %conv9 = trunc i32 %sub8 to i16
  %30 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %30, i32 0, i32 7
  store i16 %conv9, i16* %y2, align 2, !tbaa !116
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %32 = load float, float* %arrayidx, align 4, !tbaa !117
  %conv10 = fptosi float %32 to i32
  %conv11 = trunc i32 %conv10 to i16
  %33 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %hres = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %33, i32 0, i32 8
  store i16 %conv11, i16* %hres, align 2, !tbaa !119
  %34 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution12 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %34, i32 0, i32 22
  %arrayidx13 = getelementptr inbounds [2 x float], [2 x float]* %HWResolution12, i32 0, i64 1
  %35 = load float, float* %arrayidx13, align 4, !tbaa !117
  %conv14 = fptosi float %35 to i32
  %conv15 = trunc i32 %conv14 to i16
  %36 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %vres = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %36, i32 0, i32 9
  store i16 %conv15, i16* %vres, align 2, !tbaa !120
  %37 = load i32, i32* %planar.addr, align 4, !tbaa !20
  %tobool = icmp ne i32 %37, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %38 = load i32, i32* %depth.addr, align 4, !tbaa !20
  %cmp16 = icmp eq i32 %38, 1
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %39 = load i32, i32* %rsize, align 4, !tbaa !20
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %40 = load i32, i32* %raster, align 4, !tbaa !20
  %41 = load i32, i32* %raster, align 4, !tbaa !20
  %and18 = and i32 %41, 1
  %add19 = add nsw i32 %40, %and18
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %39, %cond.true ], [ %add19, %cond.false ]
  %conv20 = trunc i32 %cond to i16
  %42 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %bpl = getelementptr inbounds %struct.pcx_header_s, %struct.pcx_header_s* %42, i32 0, i32 13
  store i16 %conv20, i16* %bpl, align 2, !tbaa !121
  %43 = load %struct.pcx_header_s*, %struct.pcx_header_s** %phdr.addr, align 8, !tbaa !1
  %44 = bitcast %struct.pcx_header_s* %43 to i8*
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8, !tbaa !1
  %call21 = call i64 @fwrite(i8* %44, i64 1, i64 128, %struct._IO_FILE* %45) #5
  %cmp22 = icmp ult i64 %call21, 128
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %cond.end
  store i32 -12, i32* %code, align 4, !tbaa !20
  br label %pcx_done

if.end.25:                                        ; preds = %cond.end
  store i32 0, i32* %y, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.131, %if.end.25
  %46 = load i32, i32* %y, align 4, !tbaa !20
  %47 = load i32, i32* %height, align 4, !tbaa !20
  %cmp26 = icmp slt i32 %46, %47
  br i1 %cmp26, label %for.body, label %for.end.133

for.body:                                         ; preds = %for.cond
  %48 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i8*, i8** %line, align 8, !tbaa !1
  store i8* %49, i8** %row, align 8, !tbaa !1
  %50 = bitcast i8** %end to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #1
  %51 = load i8*, i8** %line, align 8, !tbaa !1
  %52 = load i32, i32* %linesize.addr, align 4, !tbaa !20
  %conv28 = sext i32 %52 to i64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %infile.addr, align 8, !tbaa !1
  %call29 = call i64 @fread(i8* %51, i64 1, i64 %conv28, %struct._IO_FILE* %53) #5
  %conv30 = trunc i64 %call29 to i32
  store i32 %conv30, i32* %code, align 4, !tbaa !20
  %54 = load i32, i32* %code, align 4, !tbaa !20
  %cmp31 = icmp slt i32 %54, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.body
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.34:                                        ; preds = %for.body
  %55 = load i8*, i8** %row, align 8, !tbaa !1
  %56 = load i32, i32* %raster, align 4, !tbaa !20
  %idx.ext35 = sext i32 %56 to i64
  %add.ptr36 = getelementptr inbounds i8, i8* %55, i64 %idx.ext35
  store i8* %add.ptr36, i8** %end, align 8, !tbaa !1
  %57 = load i32, i32* %planar.addr, align 4, !tbaa !20
  %tobool37 = icmp ne i32 %57, 0
  br i1 %tobool37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %if.end.34
  %58 = load i32, i32* %raster, align 4, !tbaa !20
  %and39 = and i32 %58, 1
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.38
  %59 = load i8*, i8** %end, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds i8, i8* %59, i64 -1
  %60 = load i8, i8* %arrayidx42, align 1, !tbaa !22
  %61 = load i8*, i8** %end, align 8, !tbaa !1
  store i8 %60, i8* %61, align 1, !tbaa !22
  %62 = load i8*, i8** %end, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr, i8** %end, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.38
  %63 = load i8*, i8** %row, align 8, !tbaa !1
  %64 = load i8*, i8** %end, align 8, !tbaa !1
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8, !tbaa !1
  call void @devn_pcx_write_rle(i8* %63, i8* %64, i32 1, %struct._IO_FILE* %65) #5
  br label %if.end.129

if.else:                                          ; preds = %if.end.34
  %66 = load i32, i32* %depth.addr, align 4, !tbaa !20
  switch i32 %66, label %sw.default [
    i32 4, label %sw.bb
    i32 24, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %if.else
  %67 = bitcast i8** %pend to i8*
  call void @llvm.lifetime.start(i64 8, i8* %67) #1
  %68 = load i8*, i8** %plane, align 8, !tbaa !1
  %69 = load i32, i32* %rsize, align 4, !tbaa !20
  %idx.ext44 = zext i32 %69 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %68, i64 %idx.ext44
  store i8* %add.ptr45, i8** %pend, align 8, !tbaa !1
  %70 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.start(i64 4, i8* %70) #1
  store i32 0, i32* %shift, align 4, !tbaa !20
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.109, %sw.bb
  %71 = load i32, i32* %shift, align 4, !tbaa !20
  %cmp47 = icmp slt i32 %71, 4
  br i1 %cmp47, label %for.body.49, label %for.end.110

for.body.49:                                      ; preds = %for.cond.46
  %72 = bitcast i8** %from to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = bitcast i8** %to to i8*
  call void @llvm.lifetime.start(i64 8, i8* %73) #1
  %74 = bitcast i32* %bright to i8*
  call void @llvm.lifetime.start(i64 4, i8* %74) #1
  %75 = load i32, i32* %shift, align 4, !tbaa !20
  %shl = shl i32 1, %75
  store i32 %shl, i32* %bright, align 4, !tbaa !20
  %76 = bitcast i32* %bleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %76) #1
  %77 = load i32, i32* %bright, align 4, !tbaa !20
  %shl50 = shl i32 %77, 4
  store i32 %shl50, i32* %bleft, align 4, !tbaa !20
  %78 = load i8*, i8** %row, align 8, !tbaa !1
  store i8* %78, i8** %from, align 8, !tbaa !1
  %79 = load i8*, i8** %plane, align 8, !tbaa !1
  store i8* %79, i8** %to, align 8, !tbaa !1
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %for.body.49
  %80 = load i8*, i8** %from, align 8, !tbaa !1
  %81 = load i8*, i8** %end, align 8, !tbaa !1
  %cmp52 = icmp ult i8* %80, %81
  br i1 %cmp52, label %for.body.54, label %for.end

for.body.54:                                      ; preds = %for.cond.51
  %82 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx55 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx55, align 1, !tbaa !22
  %conv56 = zext i8 %83 to i32
  %84 = load i32, i32* %bleft, align 4, !tbaa !20
  %and57 = and i32 %conv56, %84
  %tobool58 = icmp ne i32 %and57, 0
  %cond59 = select i1 %tobool58, i32 128, i32 0
  %85 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx60, align 1, !tbaa !22
  %conv61 = zext i8 %86 to i32
  %87 = load i32, i32* %bright, align 4, !tbaa !20
  %and62 = and i32 %conv61, %87
  %tobool63 = icmp ne i32 %and62, 0
  %cond64 = select i1 %tobool63, i32 64, i32 0
  %or = or i32 %cond59, %cond64
  %88 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds i8, i8* %88, i64 1
  %89 = load i8, i8* %arrayidx65, align 1, !tbaa !22
  %conv66 = zext i8 %89 to i32
  %90 = load i32, i32* %bleft, align 4, !tbaa !20
  %and67 = and i32 %conv66, %90
  %tobool68 = icmp ne i32 %and67, 0
  %cond69 = select i1 %tobool68, i32 32, i32 0
  %or70 = or i32 %or, %cond69
  %91 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx71, align 1, !tbaa !22
  %conv72 = zext i8 %92 to i32
  %93 = load i32, i32* %bright, align 4, !tbaa !20
  %and73 = and i32 %conv72, %93
  %tobool74 = icmp ne i32 %and73, 0
  %cond75 = select i1 %tobool74, i32 16, i32 0
  %or76 = or i32 %or70, %cond75
  %94 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8, i8* %arrayidx77, align 1, !tbaa !22
  %conv78 = zext i8 %95 to i32
  %96 = load i32, i32* %bleft, align 4, !tbaa !20
  %and79 = and i32 %conv78, %96
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 8, i32 0
  %or82 = or i32 %or76, %cond81
  %97 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i8, i8* %97, i64 2
  %98 = load i8, i8* %arrayidx83, align 1, !tbaa !22
  %conv84 = zext i8 %98 to i32
  %99 = load i32, i32* %bright, align 4, !tbaa !20
  %and85 = and i32 %conv84, %99
  %tobool86 = icmp ne i32 %and85, 0
  %cond87 = select i1 %tobool86, i32 4, i32 0
  %or88 = or i32 %or82, %cond87
  %100 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %100, i64 3
  %101 = load i8, i8* %arrayidx89, align 1, !tbaa !22
  %conv90 = zext i8 %101 to i32
  %102 = load i32, i32* %bleft, align 4, !tbaa !20
  %and91 = and i32 %conv90, %102
  %tobool92 = icmp ne i32 %and91, 0
  %cond93 = select i1 %tobool92, i32 2, i32 0
  %or94 = or i32 %or88, %cond93
  %103 = load i8*, i8** %from, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %103, i64 3
  %104 = load i8, i8* %arrayidx95, align 1, !tbaa !22
  %conv96 = zext i8 %104 to i32
  %105 = load i32, i32* %bright, align 4, !tbaa !20
  %and97 = and i32 %conv96, %105
  %tobool98 = icmp ne i32 %and97, 0
  %cond99 = select i1 %tobool98, i32 1, i32 0
  %or100 = or i32 %or94, %cond99
  %conv101 = trunc i32 %or100 to i8
  %106 = load i8*, i8** %to, align 8, !tbaa !1
  %incdec.ptr102 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr102, i8** %to, align 8, !tbaa !1
  store i8 %conv101, i8* %106, align 1, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body.54
  %107 = load i8*, i8** %from, align 8, !tbaa !1
  %add.ptr103 = getelementptr inbounds i8, i8* %107, i64 4
  store i8* %add.ptr103, i8** %from, align 8, !tbaa !1
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  %108 = load i8*, i8** %to, align 8, !tbaa !1
  %109 = load i8*, i8** %pend, align 8, !tbaa !1
  %cmp104 = icmp ult i8* %108, %109
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %for.end
  %110 = load i8*, i8** %to, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %110, i64 -1
  %111 = load i8, i8* %arrayidx107, align 1, !tbaa !22
  %112 = load i8*, i8** %to, align 8, !tbaa !1
  store i8 %111, i8* %112, align 1, !tbaa !22
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %for.end
  %113 = load i8*, i8** %plane, align 8, !tbaa !1
  %114 = load i8*, i8** %pend, align 8, !tbaa !1
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8, !tbaa !1
  call void @devn_pcx_write_rle(i8* %113, i8* %114, i32 1, %struct._IO_FILE* %115) #5
  %116 = bitcast i32* %bleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast i32* %bright to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i8** %to to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast i8** %from to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %120 = load i32, i32* %shift, align 4, !tbaa !20
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %shift, align 4, !tbaa !20
  br label %for.cond.46

for.end.110:                                      ; preds = %for.cond.46
  %121 = bitcast i32* %shift to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i8** %pend to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.else
  %123 = bitcast i32* %pnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %123) #1
  store i32 0, i32* %pnum, align 4, !tbaa !20
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.126, %sw.bb.111
  %124 = load i32, i32* %pnum, align 4, !tbaa !20
  %cmp113 = icmp slt i32 %124, 3
  br i1 %cmp113, label %for.body.115, label %for.end.128

for.body.115:                                     ; preds = %for.cond.112
  %125 = load i8*, i8** %row, align 8, !tbaa !1
  %126 = load i32, i32* %pnum, align 4, !tbaa !20
  %idx.ext116 = sext i32 %126 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %125, i64 %idx.ext116
  %127 = load i8*, i8** %row, align 8, !tbaa !1
  %128 = load i32, i32* %raster, align 4, !tbaa !20
  %idx.ext118 = sext i32 %128 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %127, i64 %idx.ext118
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8, !tbaa !1
  call void @devn_pcx_write_rle(i8* %add.ptr117, i8* %add.ptr119, i32 3, %struct._IO_FILE* %129) #5
  %130 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width120 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %130, i32 0, i32 13
  %131 = load i32, i32* %width120, align 4, !tbaa !107
  %and121 = and i32 %131, 1
  %tobool122 = icmp ne i32 %and121, 0
  br i1 %tobool122, label %if.then.123, label %if.end.125

if.then.123:                                      ; preds = %for.body.115
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %outfile.addr, align 8, !tbaa !1
  %call124 = call i32 @fputc(i32 0, %struct._IO_FILE* %132) #5
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.123, %for.body.115
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %133 = load i32, i32* %pnum, align 4, !tbaa !20
  %inc127 = add nsw i32 %133, 1
  store i32 %inc127, i32* %pnum, align 4, !tbaa !20
  br label %for.cond.112

for.end.128:                                      ; preds = %for.cond.112
  %134 = bitcast i32* %pnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  store i32 -15, i32* %code, align 4, !tbaa !20
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %for.end.128, %for.end.110
  br label %if.end.129

if.end.129:                                       ; preds = %sw.epilog, %if.end.43
  store i32 0, i32* %code, align 4, !tbaa !20
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.129, %if.then.33
  %135 = bitcast i8** %end to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.137 [
    i32 0, label %cleanup.cont
    i32 3, label %for.end.133
    i32 2, label %pcx_done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.131

for.inc.131:                                      ; preds = %cleanup.cont
  %137 = load i32, i32* %y, align 4, !tbaa !20
  %inc132 = add nsw i32 %137, 1
  store i32 %inc132, i32* %y, align 4, !tbaa !20
  br label %for.cond

for.end.133:                                      ; preds = %cleanup, %for.cond
  br label %pcx_done

pcx_done:                                         ; preds = %for.end.133, %cleanup, %if.then.24
  %138 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory134, align 8, !tbaa !100
  %procs135 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs135, i32 0, i32 2
  %140 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !68
  %141 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory136 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %141, i32 0, i32 3
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory136, align 8, !tbaa !100
  %143 = load i8*, i8** %line, align 8, !tbaa !1
  call void %140(%struct.gs_memory_s* %142, i8* %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0)) #5
  %144 = load i32, i32* %code, align 4, !tbaa !20
  store i32 %144, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.137

cleanup.137:                                      ; preds = %pcx_done, %cleanup, %if.then
  %145 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  %146 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %146) #1
  %147 = bitcast i8** %plane to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast i32* %lsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32* %rsize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = load i32, i32* %retval
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal i32 @devn_finish_pcx_file(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file, %struct.pcx_header_s* %header, i32 %num_planes, i32 %bits_per_plane) #0 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %header.addr = alloca %struct.pcx_header_s*, align 8
  %num_planes.addr = alloca i32, align 4
  %bits_per_plane.addr = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store %struct.pcx_header_s* %header, %struct.pcx_header_s** %header.addr, align 8, !tbaa !1
  store i32 %num_planes, i32* %num_planes.addr, align 4, !tbaa !20
  store i32 %bits_per_plane, i32* %bits_per_plane.addr, align 4, !tbaa !20
  %0 = load i32, i32* %num_planes.addr, align 4, !tbaa !20
  switch i32 %0, label %sw.epilog.9 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.epilog
    i32 2, label %sw.epilog
    i32 4, label %sw.epilog
    i32 5, label %sw.epilog
    i32 8, label %sw.bb.1
    i32 16, label %sw.epilog
  ]

sw.bb.1:                                          ; preds = %sw.bb
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 12, %struct._IO_FILE* %2) #5
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call2 = call i32 @pc_write_mono_palette(%struct.gx_device_s* %4, i32 256, %struct._IO_FILE* %5) #5
  store i32 %call2, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb, %sw.bb
  br label %sw.epilog.9

sw.bb.3:                                          ; preds = %entry
  %6 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %6, label %sw.epilog.4 [
    i32 1, label %sw.epilog.4
    i32 2, label %sw.epilog.4
    i32 4, label %sw.epilog.4
    i32 5, label %sw.epilog.4
    i32 8, label %sw.epilog.4
    i32 16, label %sw.epilog.4
  ]

sw.epilog.4:                                      ; preds = %sw.bb.3, %sw.bb.3, %sw.bb.3, %sw.bb.3, %sw.bb.3, %sw.bb.3, %sw.bb.3
  br label %sw.epilog.9

sw.bb.5:                                          ; preds = %entry
  %7 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %7, label %sw.epilog.6 [
    i32 1, label %sw.epilog.6
    i32 2, label %sw.epilog.6
    i32 4, label %sw.epilog.6
    i32 5, label %sw.epilog.6
    i32 8, label %sw.epilog.6
    i32 16, label %sw.epilog.6
  ]

sw.epilog.6:                                      ; preds = %sw.bb.5, %sw.bb.5, %sw.bb.5, %sw.bb.5, %sw.bb.5, %sw.bb.5, %sw.bb.5
  br label %sw.epilog.9

sw.bb.7:                                          ; preds = %entry
  %8 = load i32, i32* %bits_per_plane.addr, align 4, !tbaa !20
  switch i32 %8, label %sw.epilog.8 [
    i32 1, label %sw.epilog.8
    i32 2, label %sw.epilog.8
    i32 4, label %sw.epilog.8
    i32 5, label %sw.epilog.8
    i32 8, label %sw.epilog.8
    i32 16, label %sw.epilog.8
  ]

sw.epilog.8:                                      ; preds = %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7, %sw.bb.7
  br label %sw.epilog.9

sw.epilog.9:                                      ; preds = %entry, %sw.epilog.8, %sw.epilog.6, %sw.epilog.4, %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog.9, %sw.bb.1
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @devn_pcx_write_rle(i8* %from, i8* %end, i32 %step, %struct._IO_FILE* %file) #0 {
entry:
  %from.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %step.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %max_run = alloca i32, align 4
  %data = alloca i8, align 1
  %start = alloca i8*, align 8
  store i8* %from, i8** %from.addr, align 8, !tbaa !1
  store i8* %end, i8** %end.addr, align 8, !tbaa !1
  store i32 %step, i32* %step.addr, align 4, !tbaa !20
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %max_run to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %step.addr, align 4, !tbaa !20
  %mul = mul nsw i32 %1, 15
  store i32 %mul, i32* %max_run, align 4, !tbaa !20
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %entry
  %2 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %while.body, label %while.end.48

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %data) #1
  %4 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %5 = load i8, i8* %4, align 1, !tbaa !22
  store i8 %5, i8* %data, align 1, !tbaa !22
  %6 = load i32, i32* %step.addr, align 4, !tbaa !20
  %7 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  store i8* %add.ptr, i8** %from.addr, align 8, !tbaa !1
  %8 = load i8, i8* %data, align 1, !tbaa !22
  %conv = zext i8 %8 to i32
  %9 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !22
  %conv1 = zext i8 %10 to i32
  %cmp2 = icmp ne i32 %conv, %conv1
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %11 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp4 = icmp eq i8* %11, %12
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %13 = load i8, i8* %data, align 1, !tbaa !22
  %conv6 = zext i8 %13 to i32
  %cmp7 = icmp sge i32 %conv6, 192
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 193, %struct._IO_FILE* %14) #5
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.45

if.else:                                          ; preds = %lor.lhs.false
  %15 = bitcast i8** %start to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load i8*, i8** %from.addr, align 8, !tbaa !1
  store i8* %16, i8** %start, align 8, !tbaa !1
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.17, %if.else
  %17 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %end.addr, align 8, !tbaa !1
  %cmp11 = icmp ult i8* %17, %18
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.10
  %19 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !22
  %conv13 = zext i8 %20 to i32
  %21 = load i8, i8* %data, align 1, !tbaa !22
  %conv14 = zext i8 %21 to i32
  %cmp15 = icmp eq i32 %conv13, %conv14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.10
  %22 = phi i1 [ false, %while.cond.10 ], [ %cmp15, %land.rhs ]
  br i1 %22, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %land.end
  %23 = load i32, i32* %step.addr, align 4, !tbaa !20
  %24 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %idx.ext18 = sext i32 %23 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %24, i64 %idx.ext18
  store i8* %add.ptr19, i8** %from.addr, align 8, !tbaa !1
  br label %while.cond.10

while.end:                                        ; preds = %land.end
  br label %while.cond.20

while.cond.20:                                    ; preds = %while.body.24, %while.end
  %25 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %start, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %26 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %27 = load i32, i32* %max_run, align 4, !tbaa !20
  %conv21 = sext i32 %27 to i64
  %cmp22 = icmp sge i64 %sub.ptr.sub, %conv21
  br i1 %cmp22, label %while.body.24, label %while.end.30

while.body.24:                                    ; preds = %while.cond.20
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call25 = call i32 @_IO_putc(i32 207, %struct._IO_FILE* %28) #5
  %29 = load i8, i8* %data, align 1, !tbaa !22
  %conv26 = zext i8 %29 to i32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call27 = call i32 @_IO_putc(i32 %conv26, %struct._IO_FILE* %30) #5
  %31 = load i32, i32* %max_run, align 4, !tbaa !20
  %32 = load i8*, i8** %start, align 8, !tbaa !1
  %idx.ext28 = sext i32 %31 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %32, i64 %idx.ext28
  store i8* %add.ptr29, i8** %start, align 8, !tbaa !1
  br label %while.cond.20

while.end.30:                                     ; preds = %while.cond.20
  %33 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %34 = load i8*, i8** %start, align 8, !tbaa !1
  %cmp31 = icmp ugt i8* %33, %34
  br i1 %cmp31, label %if.then.37, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %while.end.30
  %35 = load i8, i8* %data, align 1, !tbaa !22
  %conv34 = zext i8 %35 to i32
  %cmp35 = icmp sge i32 %conv34, 192
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %lor.lhs.false.33, %while.end.30
  %36 = load i8*, i8** %from.addr, align 8, !tbaa !1
  %37 = load i8*, i8** %start, align 8, !tbaa !1
  %sub.ptr.lhs.cast38 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %37 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %38 = load i32, i32* %step.addr, align 4, !tbaa !20
  %conv41 = sext i32 %38 to i64
  %div = sdiv i64 %sub.ptr.sub40, %conv41
  %add = add nsw i64 %div, 193
  %conv42 = trunc i64 %add to i32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call43 = call i32 @_IO_putc(i32 %conv42, %struct._IO_FILE* %39) #5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %lor.lhs.false.33
  %40 = bitcast i8** %start to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  %41 = load i8, i8* %data, align 1, !tbaa !22
  %conv46 = zext i8 %41 to i32
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call47 = call i32 @_IO_putc(i32 %conv46, %struct._IO_FILE* %42) #5
  call void @llvm.lifetime.end(i64 1, i8* %data) #1
  br label %while.cond

while.end.48:                                     ; preds = %while.cond
  %43 = bitcast i32* %max_run to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pc_write_mono_palette(%struct.gx_device_s* %dev, i32 %max_index, %struct._IO_FILE* %file) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %max_index.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %rgb = alloca [3 x i16], align 2
  %b = alloca i8, align 1
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %max_index, i32* %max_index.addr, align 4, !tbaa !20
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.start(i64 6, i8* %2) #1
  store i32 0, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !20
  %4 = load i32, i32* %max_index.addr, align 4, !tbaa !20
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !20
  %shl = shl i32 %5, 8
  %conv = trunc i32 %shl to i16
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 2
  store i16 %conv, i16* %arrayidx, align 2, !tbaa !5
  %arrayidx1 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 1
  store i16 %conv, i16* %arrayidx1, align 2, !tbaa !5
  %arrayidx2 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 0
  store i16 %conv, i16* %arrayidx2, align 2, !tbaa !5
  store i32 0, i32* %c, align 4, !tbaa !20
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %c, align 4, !tbaa !20
  %cmp4 = icmp ult i32 %6, 3
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  call void @llvm.lifetime.start(i64 1, i8* %b) #1
  %7 = load i32, i32* %c, align 4, !tbaa !20
  %idxprom = zext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [3 x i16], [3 x i16]* %rgb, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx7, align 2, !tbaa !5
  %conv8 = zext i16 %8 to i32
  %mul = mul i32 %conv8, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv9 = trunc i32 %shr to i16
  %conv10 = trunc i16 %conv9 to i8
  store i8 %conv10, i8* %b, align 1, !tbaa !22
  %9 = load i8, i8* %b, align 1, !tbaa !22
  %conv11 = zext i8 %9 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv11, %struct._IO_FILE* %10) #5
  call void @llvm.lifetime.end(i64 1, i8* %b) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %11 = load i32, i32* %c, align 4, !tbaa !20
  %inc = add i32 %11, 1
  store i32 %inc, i32* %c, align 4, !tbaa !20
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %12 = load i32, i32* %i, align 4, !tbaa !20
  %inc13 = add i32 %12, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !20
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %13 = bitcast [3 x i16]* %rgb to i8*
  call void @llvm.lifetime.end(i64 6, i8* %13) #1
  %14 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !3, i64 0}
!7 = !{!8, !9, i64 100}
!8 = !{!"gx_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"int", !3, i64 0}
!10 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!11 = !{!"long", !3, i64 0}
!12 = !{!"gx_device_color_info_s", !9, i64 0, !9, i64 4, !3, i64 8, !6, i64 12, !3, i64 14, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !9, i64 712}
!13 = !{!"gx_device_anti_alias_info_s", !9, i64 0, !9, i64 4}
!14 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !9, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !17, i64 16, !9, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !9, i64 0, !9, i64 4, !11, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!9, !9, i64 0}
!21 = !{!8, !2, i64 24}
!22 = !{!3, !3, i64 0}
!23 = !{!24, !2, i64 8}
!24 = !{!"gs_devn_params_s", !9, i64 0, !2, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !25, i64 32, !9, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !25, i64 1368}
!25 = !{!"gs_separations_s", !9, i64 0, !3, i64 8}
!26 = !{!25, !9, i64 0}
!27 = !{!28, !9, i64 0}
!28 = !{!"devn_separation_name_s", !9, i64 0, !2, i64 8}
!29 = !{!28, !2, i64 8}
!30 = !{!24, !9, i64 1064}
!31 = !{!8, !9, i64 96}
!32 = !{!24, !9, i64 16}
!33 = !{!24, !9, i64 32}
!34 = !{!35, !2, i64 0}
!35 = !{!"gs_memory_s", !2, i64 0, !36, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!36 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!37 = !{!35, !2, i64 64}
!38 = !{!39, !9, i64 0}
!39 = !{!"cmyk_color_s", !9, i64 0, !6, i64 4, !6, i64 6, !6, i64 8, !6, i64 10}
!40 = !{!41, !9, i64 0}
!41 = !{!"equivalent_cmyk_color_params_s", !9, i64 0, !3, i64 4}
!42 = !{!43, !2, i64 0}
!43 = !{!"gs_param_string_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!44 = !{!43, !9, i64 8}
!45 = !{!43, !9, i64 12}
!46 = !{!39, !6, i64 4}
!47 = !{!39, !6, i64 6}
!48 = !{!39, !6, i64 8}
!49 = !{!39, !6, i64 10}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_param_int_array_s", !2, i64 0, !9, i64 8, !9, i64 12}
!52 = !{!51, !9, i64 8}
!53 = !{!51, !9, i64 12}
!54 = !{!24, !9, i64 20}
!55 = !{!24, !9, i64 24}
!56 = !{!57, !2, i64 0}
!57 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !9, i64 16}
!58 = !{!59, !2, i64 56}
!59 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!60 = !{!8, !3, i64 104}
!61 = !{!62, !9, i64 8}
!62 = !{!"gs_param_string_s", !2, i64 0, !9, i64 8, !9, i64 12}
!63 = !{!62, !2, i64 0}
!64 = !{!8, !2, i64 1544}
!65 = !{!24, !9, i64 0}
!66 = !{!8, !6, i64 108}
!67 = !{!8, !2, i64 1624}
!68 = !{!35, !2, i64 24}
!69 = !{!24, !2, i64 1352}
!70 = !{!24, !9, i64 1368}
!71 = !{!24, !2, i64 1360}
!72 = !{!73, !9, i64 12}
!73 = !{!"compressed_color_list_s", !2, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !3, i64 24}
!74 = !{!73, !2, i64 0}
!75 = !{!73, !9, i64 16}
!76 = !{!35, !2, i64 72}
!77 = !{!73, !9, i64 8}
!78 = !{i64 0, i64 4, !20, i64 4, i64 4, !20, i64 8, i64 4, !22, i64 12, i64 2, !5, i64 14, i64 1, !22, i64 16, i64 4, !20, i64 20, i64 4, !20, i64 24, i64 4, !20, i64 28, i64 4, !20, i64 32, i64 4, !20, i64 36, i64 4, !20, i64 40, i64 4, !22, i64 44, i64 64, !22, i64 108, i64 64, !22, i64 176, i64 512, !22, i64 688, i64 8, !1, i64 696, i64 4, !22, i64 704, i64 8, !79, i64 712, i64 4, !20}
!79 = !{!11, !11, i64 0}
!80 = !{i64 0, i64 4, !20, i64 8, i64 8, !1, i64 16, i64 4, !20, i64 20, i64 4, !20, i64 24, i64 4, !20, i64 32, i64 4, !20, i64 40, i64 1024, !22, i64 1064, i64 4, !20, i64 1068, i64 280, !22, i64 1352, i64 8, !1, i64 1360, i64 8, !1, i64 1368, i64 4, !20, i64 1376, i64 1024, !22}
!81 = !{i64 0, i64 4, !20, i64 4, i64 768, !22}
!82 = !{!83, !6, i64 0}
!83 = !{!"comp_bit_map_list_s", !6, i64 0, !6, i64 2, !9, i64 4, !11, i64 8, !11, i64 16}
!84 = !{!83, !6, i64 2}
!85 = !{!83, !9, i64 4}
!86 = !{!83, !11, i64 8}
!87 = !{!83, !11, i64 16}
!88 = !{!89, !9, i64 18504}
!89 = !{!"gx_devn_prn_device_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !90, i64 12968, !3, i64 13056, !9, i64 17152, !9, i64 17156, !9, i64 17160, !9, i64 17164, !9, i64 17168, !9, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !9, i64 17232, !2, i64 17240, !9, i64 17248, !9, i64 17252, !92, i64 17256, !9, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !24, i64 18472, !41, i64 20872}
!90 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !91, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!91 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!92 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !9, i64 24, !9, i64 28}
!93 = !{!94, !2, i64 0}
!94 = !{!"enum_ptr_s", !2, i64 0, !9, i64 8}
!95 = !{!96, !2, i64 32}
!96 = !{!"gs_memory_struct_type_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!97 = !{!96, !2, i64 40}
!98 = !{!99, !2, i64 0}
!99 = !{!"gc_procs_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!100 = !{!101, !2, i64 24}
!101 = !{!"gx_device_printer_s", !9, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !9, i64 40, !2, i64 48, !10, i64 56, !9, i64 80, !9, i64 84, !9, i64 88, !12, i64 96, !14, i64 816, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !3, i64 856, !3, i64 864, !9, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !9, i64 944, !9, i64 948, !9, i64 952, !9, i64 956, !9, i64 960, !11, i64 968, !11, i64 976, !15, i64 984, !9, i64 1052, !9, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !90, i64 12968, !3, i64 13056, !9, i64 17152, !9, i64 17156, !9, i64 17160, !9, i64 17164, !9, i64 17168, !9, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !9, i64 17232, !2, i64 17240, !9, i64 17248, !9, i64 17252, !92, i64 17256, !9, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!102 = !{!89, !9, i64 18488}
!103 = !{!89, !9, i64 100}
!104 = !{!89, !6, i64 108}
!105 = !{!89, !9, i64 18472}
!106 = !{!101, !9, i64 836}
!107 = !{!101, !9, i64 832}
!108 = !{!8, !3, i64 136}
!109 = !{i64 0, i64 1, !22, i64 1, i64 1, !22, i64 2, i64 1, !22, i64 3, i64 1, !22, i64 4, i64 2, !5, i64 6, i64 2, !5, i64 8, i64 2, !5, i64 10, i64 2, !5, i64 12, i64 2, !5, i64 14, i64 2, !5, i64 16, i64 48, !22, i64 64, i64 1, !22, i64 65, i64 1, !22, i64 66, i64 2, !5, i64 68, i64 2, !5, i64 70, i64 58, !22}
!110 = !{!111, !3, i64 3}
!111 = !{!"pcx_header_s", !3, i64 0, !3, i64 1, !3, i64 2, !3, i64 3, !6, i64 4, !6, i64 6, !6, i64 8, !6, i64 10, !6, i64 12, !6, i64 14, !3, i64 16, !3, i64 64, !3, i64 65, !6, i64 66, !6, i64 68, !3, i64 70}
!112 = !{!111, !3, i64 65}
!113 = !{!111, !3, i64 1}
!114 = !{!111, !6, i64 68}
!115 = !{!111, !6, i64 8}
!116 = !{!111, !6, i64 10}
!117 = !{!118, !118, i64 0}
!118 = !{!"float", !3, i64 0}
!119 = !{!111, !6, i64 12}
!120 = !{!111, !6, i64 14}
!121 = !{!111, !6, i64 66}
