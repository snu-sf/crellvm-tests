; ModuleID = './gdevxcf.bc'
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
%struct.gs_get_bits_params_s = type opaque
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
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { {}*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.gs_separation_names_s = type { i32, [64 x %struct.gs_param_string_s*] }
%struct.xcf_write_ctx = type { %struct._IO_FILE*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xcf_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, [0 x i8*]*, i32, %struct.gs_separation_names_s, %struct.gs_separation_names_s, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8* }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }

@spot_rgb_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @xcf_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @xcf_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @xcf_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @xcf_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @get_spotrgb_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @xcf_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @xcf_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @xcf_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"xcf\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"DeviceN\00", align 1
@DeviceRGBComponents = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* null], align 16
@gs_xcf_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, [0 x i8*]*, i32, %struct.gs_separation_names_s, %struct.gs_separation_names_s, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8* } { i32 20352, %struct.gx_device_procs_s* @spot_rgb_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 3, i32 1, i16 24, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @xcf_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 1, i32 8, [0 x i8*]* bitcast ([4 x i8*]* @DeviceRGBComponents to [0 x i8*]*), i32 3, %struct.gs_separation_names_s zeroinitializer, %struct.gs_separation_names_s zeroinitializer, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null }, align 8
@spot_cmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @xcf_prn_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @xcf_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @xcf_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @xcf_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @get_xcf_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @xcf_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @xcf_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @xcf_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"xcfcmyk\00", align 1
@DeviceCMYKComponents = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@gs_xcfcmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, [0 x i8*]*, i32, %struct.gs_separation_names_s, %struct.gs_separation_names_s, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8*, [256 x i8], %struct.cmm_profile_s*, i8* } { i32 20352, %struct.gx_device_procs_s* @spot_cmyk_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 4, i32 0, i16 32, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @xcf_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 2, i32 8, [0 x i8*]* bitcast ([5 x i8*]* @DeviceCMYKComponents to [0 x i8*]*), i32 4, %struct.gs_separation_names_s zeroinitializer, %struct.gs_separation_names_s zeroinitializer, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null, [256 x i8] zeroinitializer, %struct.cmm_profile_s* null, i8* null }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"xcf_prn_close\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"CRDDefault\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"SeparationColorNames\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Separations\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ProfileOut\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ProfileRgb\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"ProfileCmyk\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@DeviceGrayComponents = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@bpc_to_depth.depths = internal constant [4 x [8 x i8]] [[8 x i8] c"\01\02\00\04\08\00\00\08", [8 x i8] c"\02\04\00\08\10\00\00\10", [8 x i8] c"\04\08\00\10\10\00\00\18", [8 x i8] c"\04\08\00\10 \00\00 "], align 16
@__func__.xcf_open_profile = private unnamed_addr constant [17 x i8] c"xcf_open_profile\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"./devices/gdevxcf.c\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Could not create profile for xcf device\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Could not create link handle for xdev device\00", align 1
@spotRGB_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotrgb_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotrgb_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotrgb_cm }, align 8
@.str.18 = private unnamed_addr constant [33 x i8] c"\00\00\FF\FFUU\92I\11\11\84!\10A@\81\01\01\02\01\04\01\08\01\10\01 \01@\01\80\01\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@spotCMYK_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotcmyk_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotcmyk_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotcmyk_cm }, align 8
@spotN_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotn_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotn_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotn_cm }, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"gimp xcf file\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"tile offset: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"xcf_write_image_data\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"actual tile offset: %d %d\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @xcf_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %xc = alloca %struct.xcf_write_ctx, align 8
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_write_ctx* %xc to i8*
  call void @llvm.lifetime.start(i64 48, i8* %0) #2
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %xc, i32 0, i32 0
  store %struct._IO_FILE* %1, %struct._IO_FILE** %f, align 8, !tbaa !5
  %offset = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %xc, i32 0, i32 1
  store i32 0, i32* %offset, align 4, !tbaa !8
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.xcf_device_s*
  %call = call i32 @xcf_setup_tiles(%struct.xcf_write_ctx* %xc, %struct.xcf_device_s* %3) #5
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.xcf_device_s*
  %call1 = call i32 @xcf_write_header(%struct.xcf_write_ctx* %xc, %struct.xcf_device_s* %5) #5
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @xcf_write_image_data(%struct.xcf_write_ctx* %xc, %struct.gx_device_printer_s* %6) #5
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_printer_s* %7 to %struct.xcf_device_s*
  %call3 = call i32 @xcf_write_footer(%struct.xcf_write_ctx* %xc, %struct.xcf_device_s* %8) #5
  %9 = bitcast %struct.xcf_write_ctx* %xc to i8*
  call void @llvm.lifetime.end(i64 48, i8* %9) #2
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

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @xcf_prn_close(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.xcf_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %3, i32 0, i32 79
  %4 = load i8*, i8** %cmyk_icc_link, align 8, !tbaa !9
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %5 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_icc_link1 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %5, i32 0, i32 79
  %6 = load i8*, i8** %cmyk_icc_link1, align 8, !tbaa !9
  %7 = bitcast i8* %6 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %7) #5
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %8, i32 0, i32 78
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile, align 8, !tbaa !26
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
  %10 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile5 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %10, i32 0, i32 78
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile5, align 8, !tbaa !26
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %11, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %12 = load i64, i64* %ref_count, align 8, !tbaa !27
  %add = add nsw i64 %12, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !27
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  %13 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile8 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %13, i32 0, i32 78
  %14 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile8, align 8, !tbaa !26
  %rc9 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %14, i32 0, i32 18
  %ref_count10 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc9, i32 0, i32 0
  %15 = load i64, i64* %ref_count10, align 8, !tbaa !27
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
  %16 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile17 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %16, i32 0, i32 78
  %17 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile17, align 8, !tbaa !26
  %rc18 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %17, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 2
  %18 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !31
  %19 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile19 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %19, i32 0, i32 78
  %20 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile19, align 8, !tbaa !26
  %rc20 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %20, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 1
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %22 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile21 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %22, i32 0, i32 78
  %23 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile21, align 8, !tbaa !26
  %24 = bitcast %struct.cmm_profile_s* %23 to i8*
  call void %18(%struct.gs_memory_s* %21, i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %do.cond.22

do.cond.22:                                       ; preds = %do.end.16
  br label %do.end.23

do.end.23:                                        ; preds = %do.cond.22
  %25 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile24 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %25, i32 0, i32 78
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %cmyk_profile24, align 8, !tbaa !26
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
  %26 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %26, i32 0, i32 76
  %27 = load i8*, i8** %rgb_icc_link, align 8, !tbaa !33
  %cmp32 = icmp ne i8* %27, null
  br i1 %cmp32, label %if.then.33, label %if.end.75

if.then.33:                                       ; preds = %if.end.31
  %28 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_icc_link34 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %28, i32 0, i32 76
  %29 = load i8*, i8** %rgb_icc_link34, align 8, !tbaa !33
  %30 = bitcast i8* %29 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %30) #5
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.33
  %31 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %31, i32 0, i32 75
  %32 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile, align 8, !tbaa !34
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
  %33 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile42 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %33, i32 0, i32 75
  %34 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile42, align 8, !tbaa !34
  %rc43 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %34, i32 0, i32 18
  %ref_count44 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc43, i32 0, i32 0
  %35 = load i64, i64* %ref_count44, align 8, !tbaa !27
  %add45 = add nsw i64 %35, -1
  store i64 %add45, i64* %ref_count44, align 8, !tbaa !27
  br label %do.cond.46

do.cond.46:                                       ; preds = %do.end.41
  br label %do.end.47

do.end.47:                                        ; preds = %do.cond.46
  %36 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile48 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %36, i32 0, i32 75
  %37 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile48, align 8, !tbaa !34
  %rc49 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %37, i32 0, i32 18
  %ref_count50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 0
  %38 = load i64, i64* %ref_count50, align 8, !tbaa !27
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
  %39 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile57 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %39, i32 0, i32 75
  %40 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile57, align 8, !tbaa !34
  %rc58 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %40, i32 0, i32 18
  %free59 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc58, i32 0, i32 2
  %41 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free59, align 8, !tbaa !31
  %42 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile60 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %42, i32 0, i32 75
  %43 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile60, align 8, !tbaa !34
  %rc61 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %43, i32 0, i32 18
  %memory62 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc61, i32 0, i32 1
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !32
  %45 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile63 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %45, i32 0, i32 75
  %46 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile63, align 8, !tbaa !34
  %47 = bitcast %struct.cmm_profile_s* %46 to i8*
  call void %41(%struct.gs_memory_s* %44, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %do.cond.64

do.cond.64:                                       ; preds = %do.end.56
  br label %do.end.65

do.end.65:                                        ; preds = %do.cond.64
  %48 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile66 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %48, i32 0, i32 75
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %rgb_profile66, align 8, !tbaa !34
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
  %49 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %49, i32 0, i32 82
  %50 = load i8*, i8** %output_icc_link, align 8, !tbaa !35
  %cmp76 = icmp ne i8* %50, null
  br i1 %cmp76, label %if.then.77, label %if.end.119

if.then.77:                                       ; preds = %if.end.75
  %51 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_icc_link78 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %51, i32 0, i32 82
  %52 = load i8*, i8** %output_icc_link78, align 8, !tbaa !35
  %53 = bitcast i8* %52 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %53) #5
  br label %do.body.79

do.body.79:                                       ; preds = %if.then.77
  %54 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %54, i32 0, i32 81
  %55 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile, align 8, !tbaa !36
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
  %56 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile86 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %56, i32 0, i32 81
  %57 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile86, align 8, !tbaa !36
  %rc87 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %57, i32 0, i32 18
  %ref_count88 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc87, i32 0, i32 0
  %58 = load i64, i64* %ref_count88, align 8, !tbaa !27
  %add89 = add nsw i64 %58, -1
  store i64 %add89, i64* %ref_count88, align 8, !tbaa !27
  br label %do.cond.90

do.cond.90:                                       ; preds = %do.end.85
  br label %do.end.91

do.end.91:                                        ; preds = %do.cond.90
  %59 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile92 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %59, i32 0, i32 81
  %60 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile92, align 8, !tbaa !36
  %rc93 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %60, i32 0, i32 18
  %ref_count94 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc93, i32 0, i32 0
  %61 = load i64, i64* %ref_count94, align 8, !tbaa !27
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
  %62 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile101 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %62, i32 0, i32 81
  %63 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile101, align 8, !tbaa !36
  %rc102 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %63, i32 0, i32 18
  %free103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 2
  %64 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free103, align 8, !tbaa !31
  %65 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile104 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %65, i32 0, i32 81
  %66 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile104, align 8, !tbaa !36
  %rc105 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %66, i32 0, i32 18
  %memory106 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc105, i32 0, i32 1
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory106, align 8, !tbaa !32
  %68 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile107 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %68, i32 0, i32 81
  %69 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile107, align 8, !tbaa !36
  %70 = bitcast %struct.cmm_profile_s* %69 to i8*
  call void %64(%struct.gs_memory_s* %67, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.end.100
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  %71 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_profile110 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %71, i32 0, i32 81
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %output_profile110, align 8, !tbaa !36
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
  %73 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  %xdev = alloca %struct.xcf_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !37
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %color_model = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %3, i32 0, i32 68
  %4 = load i32, i32* %color_model, align 4, !tbaa !38
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i64, i64* %color.addr, align 8, !tbaa !37
  %7 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %call = call i32 @xcf_decode_color(%struct.gx_device_s* %5, i64 %6, i16* %7) #5
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 0, i16* %arrayidx, align 2, !tbaa !39
  %9 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !39
  %10 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 0, i16* %arrayidx2, align 2, !tbaa !39
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %xdev = alloca %struct.xcf_device_s*, align 8
  %code = alloca i32, align 4
  %seprs = alloca i32, align 4
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %pos = alloca %struct.gs_param_string_s, align 8
  %prgbs = alloca %struct.gs_param_string_s, align 8
  %pcmyks = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %seprs, align 4, !tbaa !40
  %5 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast %struct.gs_param_string_s* %pos to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %prgbs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %8 = bitcast %struct.gs_param_string_s* %pcmyks to i8*
  call void @llvm.lifetime.start(i64 16, i8* %8) #2
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !41
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !43
  %persistent = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !44
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %10 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %9, %struct.gs_param_list_s* %10) #5
  store i32 %call, i32* %code, align 4, !tbaa !40
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @sample_device_crd_get_params(%struct.gx_device_s* %11, %struct.gs_param_list_s* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #5
  store i32 %call1, i32* %code, align 4, !tbaa !40
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_write_name_array(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #5
  store i32 %call4, i32* %code, align 4, !tbaa !40
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %14 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @param_write_bool(%struct.gs_param_list_s* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32* %seprs) #5
  store i32 %call7, i32* %code, align 4, !tbaa !40
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %15 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %16 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %profile_out_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %16, i32 0, i32 80
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn, i32 0, i32 0
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pos, i32 0, i32 0
  store i8* %arraydecay, i8** %data9, align 8, !tbaa !45
  %17 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %profile_out_fn10 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %17, i32 0, i32 80
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn10, i32 0, i32 0
  %call12 = call i64 @strlen(i8* %arraydecay11) #6
  %conv = trunc i64 %call12 to i32
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pos, i32 0, i32 1
  store i32 %conv, i32* %size13, align 4, !tbaa !47
  %persistent14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pos, i32 0, i32 2
  store i32 0, i32* %persistent14, align 4, !tbaa !48
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 @param_write_string(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_string_s* %pos) #5
  store i32 %call15, i32* %code, align 4, !tbaa !40
  %19 = load i32, i32* %code, align 4, !tbaa !40
  %cmp16 = icmp slt i32 %19, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  %20 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %20, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end
  %21 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %profile_rgb_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %21, i32 0, i32 74
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_rgb_fn, i32 0, i32 0
  %data21 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgbs, i32 0, i32 0
  store i8* %arraydecay20, i8** %data21, align 8, !tbaa !45
  %22 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %profile_rgb_fn22 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %22, i32 0, i32 74
  %arraydecay23 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_rgb_fn22, i32 0, i32 0
  %call24 = call i64 @strlen(i8* %arraydecay23) #6
  %conv25 = trunc i64 %call24 to i32
  %size26 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgbs, i32 0, i32 1
  store i32 %conv25, i32* %size26, align 4, !tbaa !47
  %persistent27 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgbs, i32 0, i32 2
  store i32 0, i32* %persistent27, align 4, !tbaa !48
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call28 = call i32 @param_write_string(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct.gs_param_string_s* %prgbs) #5
  store i32 %call28, i32* %code, align 4, !tbaa !40
  %24 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %profile_cmyk_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %24, i32 0, i32 77
  %arraydecay29 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_cmyk_fn, i32 0, i32 0
  %data30 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyks, i32 0, i32 0
  store i8* %arraydecay29, i8** %data30, align 8, !tbaa !45
  %25 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %profile_cmyk_fn31 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %25, i32 0, i32 77
  %arraydecay32 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_cmyk_fn31, i32 0, i32 0
  %call33 = call i64 @strlen(i8* %arraydecay32) #6
  %conv34 = trunc i64 %call33 to i32
  %size35 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyks, i32 0, i32 1
  store i32 %conv34, i32* %size35, align 4, !tbaa !47
  %persistent36 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyks, i32 0, i32 2
  store i32 0, i32* %persistent36, align 4, !tbaa !48
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call37 = call i32 @param_write_string(%struct.gs_param_list_s* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %prgbs) #5
  store i32 %call37, i32* %code, align 4, !tbaa !40
  %27 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %27, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then
  %28 = bitcast %struct.gs_param_string_s* %pcmyks to i8*
  call void @llvm.lifetime.end(i64 16, i8* %28) #2
  %29 = bitcast %struct.gs_param_string_s* %prgbs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %29) #2
  %30 = bitcast %struct.gs_param_string_s* %pos to i8*
  call void @llvm.lifetime.end(i64 16, i8* %30) #2
  %31 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %31) #2
  %32 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdevn = alloca %struct.xcf_device_s*, align 8
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %param_name = alloca i8*, align 8
  %npcmcolors = alloca i32, align 4
  %num_spot = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %po = alloca %struct.gs_param_string_s, align 8
  %prgb = alloca %struct.gs_param_string_s, align 8
  %pcmyk = alloca %struct.gs_param_string_s, align 8
  %pcm = alloca %struct.gs_param_string_s, align 8
  %color_model = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %num_names65 = alloca i32, align 4
  %pcomp_names = alloca [0 x i8*]*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %pdevn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %3) #2
  %4 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %7, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %8 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %8, i32* %num_spot, align 4, !tbaa !40
  %9 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %ecode, align 4, !tbaa !40
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #2
  %12 = bitcast %struct.gs_param_string_s* %po to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast %struct.gs_param_string_s* %prgb to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #2
  %14 = bitcast %struct.gs_param_string_s* %pcmyk to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = bitcast %struct.gs_param_string_s* %pcm to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #2
  %16 = bitcast i32* %color_model to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %17, i32 0, i32 68
  %18 = load i32, i32* %color_model1, align 4, !tbaa !38
  store i32 %18, i32* %color_model, align 4, !tbaa !50
  br label %do.body

do.body:                                          ; preds = %entry
  %19 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_name_array(%struct.gs_param_list_s* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #5
  store i32 %call, i32* %code, align 4, !tbaa !40
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %do.body
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %20 = load i32, i32* %size, align 4, !tbaa !43
  %size2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %21 = load i32, i32* %size2, align 4, !tbaa !43
  %cmp = icmp ne i32 %20, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !40
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !41
  br label %if.end

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %scne

sw.default:                                       ; preds = %do.body
  %22 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %22, i32* %ecode, align 4, !tbaa !40
  br label %scne

scne:                                             ; preds = %sw.default, %if.end
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %23, i32 0, i32 0
  %24 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !51
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %24, i32 0, i32 7
  %25 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !53
  %26 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %27 = load i8*, i8** %param_name, align 8, !tbaa !1
  %28 = load i32, i32* %ecode, align 4, !tbaa !40
  %call3 = call i32 %25(%struct.gs_param_list_s* %26, i8* %27, i32 %28) #5
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %do.body, %scne
  %data5 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data5, align 8, !tbaa !41
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %if.else
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  %29 = load i32, i32* %code, align 4, !tbaa !40
  %cmp6 = icmp sge i32 %29, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.end
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call8 = call i32 @xcf_param_read_fn(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_string_s* %po, i32 256) #5
  store i32 %call8, i32* %code, align 4, !tbaa !40
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.end
  %31 = load i32, i32* %code, align 4, !tbaa !40
  %cmp10 = icmp sge i32 %31, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call12 = call i32 @xcf_param_read_fn(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct.gs_param_string_s* %prgb, i32 256) #5
  store i32 %call12, i32* %code, align 4, !tbaa !40
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %33 = load i32, i32* %code, align 4, !tbaa !40
  %cmp14 = icmp sge i32 %33, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %34 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call16 = call i32 @xcf_param_read_fn(%struct.gs_param_list_s* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct.gs_param_string_s* %pcmyk, i32 256) #5
  store i32 %call16, i32* %code, align 4, !tbaa !40
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %35 = load i32, i32* %code, align 4, !tbaa !40
  %cmp18 = icmp sge i32 %35, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %36 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call20 = call i32 @param_read_name(%struct.gs_param_list_s* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), %struct.gs_param_string_s* %pcm) #5
  store i32 %call20, i32* %code, align 4, !tbaa !40
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  %37 = load i32, i32* %code, align 4, !tbaa !40
  %cmp22 = icmp eq i32 %37, 0
  br i1 %cmp22, label %if.then.23, label %if.end.46

if.then.23:                                       ; preds = %if.end.21
  %call24 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #5
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.then.23
  store i32 0, i32* %color_model, align 4, !tbaa !50
  br label %if.end.45

if.else.26:                                       ; preds = %if.then.23
  %call27 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.26
  store i32 1, i32* %color_model, align 4, !tbaa !50
  br label %if.end.44

if.else.30:                                       ; preds = %if.else.26
  %call31 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.30
  store i32 2, i32* %color_model, align 4, !tbaa !50
  br label %if.end.43

if.else.34:                                       ; preds = %if.else.30
  %call35 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #5
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.else.34
  store i32 3, i32* %color_model, align 4, !tbaa !50
  br label %if.end.42

if.else.38:                                       ; preds = %if.else.34
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs39 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %38, i32 0, i32 0
  %39 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs39, align 8, !tbaa !51
  %signal_error40 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %39, i32 0, i32 7
  %40 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error40, align 8, !tbaa !53
  %41 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 -15, i32* %code, align 4, !tbaa !40
  %call41 = call i32 %40(%struct.gs_param_list_s* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 -15) #5
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.38, %if.then.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.29
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.25
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.21
  %42 = load i32, i32* %code, align 4, !tbaa !40
  %cmp47 = icmp slt i32 %42, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  %43 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %43, i32* %ecode, align 4, !tbaa !40
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  %44 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %44, i32 0, i32 11
  %45 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %46 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 720, i32 8, i1 false), !tbaa.struct !55
  %47 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %48 = load i32, i32* %color_model, align 4, !tbaa !50
  %call50 = call i32 @xcf_set_color_model(%struct.xcf_device_s* %47, i32 %48) #5
  store i32 %call50, i32* %ecode, align 4, !tbaa !40
  %49 = load i32, i32* %ecode, align 4, !tbaa !40
  %cmp51 = icmp eq i32 %49, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.49
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %51 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call53 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %50, %struct.gs_param_list_s* %51) #5
  store i32 %call53, i32* %ecode, align 4, !tbaa !40
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.49
  %52 = load i32, i32* %ecode, align 4, !tbaa !40
  %cmp55 = icmp slt i32 %52, 0
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.54
  %53 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info57 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %53, i32 0, i32 11
  %54 = bitcast %struct.gx_device_color_info_s* %color_info57 to i8*
  %55 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 720, i32 8, i1 false), !tbaa.struct !55
  %56 = load i32, i32* %ecode, align 4, !tbaa !40
  store i32 %56, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %if.end.54
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info59 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %57, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info59, i32 0, i32 2
  %58 = load i32, i32* %polarity, align 4, !tbaa !56
  %cmp60 = icmp eq i32 %58, 0
  br i1 %cmp60, label %if.then.61, label %if.end.109

if.then.61:                                       ; preds = %if.end.58
  %data62 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %59 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data62, align 8, !tbaa !41
  %cmp63 = icmp ne %struct.gs_param_string_s* %59, null
  br i1 %cmp63, label %if.then.64, label %if.end.86

if.then.64:                                       ; preds = %if.then.61
  %60 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = bitcast i32* %num_names65 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %61) #2
  %size66 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %62 = load i32, i32* %size66, align 4, !tbaa !43
  store i32 %62, i32* %num_names65, align 4, !tbaa !40
  %63 = bitcast [0 x i8*]** %pcomp_names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %63) #2
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %65 = bitcast %struct.gx_device_s* %64 to %struct.xcf_device_s*
  %std_colorant_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %65, i32 0, i32 70
  %66 = load [0 x i8*]*, [0 x i8*]** %std_colorant_names, align 8, !tbaa !58
  store [0 x i8*]* %66, [0 x i8*]** %pcomp_names, align 8, !tbaa !1
  store i32 0, i32* %num_spot, align 4, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.64
  %67 = load i32, i32* %i, align 4, !tbaa !40
  %68 = load i32, i32* %num_names65, align 4, !tbaa !40
  %cmp67 = icmp slt i32 %67, %68
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %69 = load [0 x i8*]*, [0 x i8*]** %pcomp_names, align 8, !tbaa !1
  %70 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom = sext i32 %70 to i64
  %data68 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %71 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data68, align 8, !tbaa !41
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %71, i64 %idxprom
  %call69 = call i32 @check_process_color_names([0 x i8*]* %69, %struct.gs_param_string_s* %arrayidx) #5
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.78, label %if.then.71

if.then.71:                                       ; preds = %for.body
  %72 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom72 = sext i32 %72 to i64
  %data73 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %73 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data73, align 8, !tbaa !41
  %arrayidx74 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %73, i64 %idxprom72
  %74 = load i32, i32* %num_spot, align 4, !tbaa !40
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %num_spot, align 4, !tbaa !40
  %idxprom75 = sext i32 %74 to i64
  %75 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %separation_names76 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %75, i32 0, i32 72
  %names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names76, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names, i32 0, i64 %idxprom75
  store %struct.gs_param_string_s* %arrayidx74, %struct.gs_param_string_s** %arrayidx77, align 8, !tbaa !1
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.71, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %76 = load i32, i32* %i, align 4, !tbaa !40
  %inc79 = add nsw i32 %76, 1
  store i32 %inc79, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load i32, i32* %num_spot, align 4, !tbaa !40
  %78 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %separation_names80 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %78, i32 0, i32 72
  %num_names81 = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names80, i32 0, i32 0
  store i32 %77, i32* %num_names81, align 4, !tbaa !49
  %79 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %79, i32 0, i32 9
  %80 = load i32, i32* %is_open, align 4, !tbaa !59
  %tobool82 = icmp ne i32 %80, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %for.end
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call84 = call i32 @gs_closedevice(%struct.gx_device_s* %81) #5
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %for.end
  %82 = bitcast [0 x i8*]** %pcomp_names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #2
  %83 = bitcast i32* %num_names65 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.61
  %85 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %85, i32 0, i32 71
  %86 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !60
  store i32 %86, i32* %npcmcolors, align 4, !tbaa !40
  %87 = load i32, i32* %npcmcolors, align 4, !tbaa !40
  %88 = load i32, i32* %num_spot, align 4, !tbaa !40
  %add = add nsw i32 %87, %88
  %89 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info87 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %89, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info87, i32 0, i32 1
  store i32 %add, i32* %num_components, align 4, !tbaa !61
  %90 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info88 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %90, i32 0, i32 11
  %num_components89 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info88, i32 0, i32 1
  %91 = load i32, i32* %num_components89, align 4, !tbaa !61
  %tobool90 = icmp ne i32 %91, 0
  br i1 %tobool90, label %if.end.94, label %if.then.91

if.then.91:                                       ; preds = %if.end.86
  %92 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info92 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %92, i32 0, i32 11
  %num_components93 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info92, i32 0, i32 1
  store i32 1, i32* %num_components93, align 4, !tbaa !61
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.86
  %93 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info95 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %93, i32 0, i32 11
  %num_components96 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info95, i32 0, i32 1
  %94 = load i32, i32* %num_components96, align 4, !tbaa !61
  %95 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %bitspercomponent = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %95, i32 0, i32 69
  %96 = load i32, i32* %bitspercomponent, align 4, !tbaa !62
  %call97 = call i32 @bpc_to_depth(i32 %94, i32 %96) #5
  %conv = trunc i32 %call97 to i16
  %97 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info98 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %97, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info98, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !63
  %98 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %color_info99 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %98, i32 0, i32 11
  %depth100 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info99, i32 0, i32 3
  %99 = load i16, i16* %depth100, align 2, !tbaa !63
  %conv101 = zext i16 %99 to i32
  %depth102 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 3
  %100 = load i16, i16* %depth102, align 2, !tbaa !64
  %conv103 = zext i16 %100 to i32
  %cmp104 = icmp ne i32 %conv101, %conv103
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %if.end.94
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call107 = call i32 @gs_closedevice(%struct.gx_device_s* %101) #5
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %if.end.94
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.end.58
  %data110 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 0
  %102 = load i8*, i8** %data110, align 8, !tbaa !45
  %cmp111 = icmp ne i8* %102, null
  br i1 %cmp111, label %if.then.113, label %if.end.122

if.then.113:                                      ; preds = %if.end.109
  %103 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %profile_out_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %103, i32 0, i32 80
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn, i32 0, i32 0
  %data114 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 0
  %104 = load i8*, i8** %data114, align 8, !tbaa !45
  %size115 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 1
  %105 = load i32, i32* %size115, align 4, !tbaa !47
  %conv116 = zext i32 %105 to i64
  %call117 = call i8* @memcpy(i8* %arraydecay, i8* %104, i64 %conv116) #7
  %size118 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 1
  %106 = load i32, i32* %size118, align 4, !tbaa !47
  %idxprom119 = zext i32 %106 to i64
  %107 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %profile_out_fn120 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %107, i32 0, i32 80
  %arrayidx121 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn120, i32 0, i64 %idxprom119
  store i8 0, i8* %arrayidx121, align 1, !tbaa !50
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.113, %if.end.109
  %data123 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgb, i32 0, i32 0
  %108 = load i8*, i8** %data123, align 8, !tbaa !45
  %cmp124 = icmp ne i8* %108, null
  br i1 %cmp124, label %if.then.126, label %if.end.136

if.then.126:                                      ; preds = %if.end.122
  %109 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %profile_rgb_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %109, i32 0, i32 74
  %arraydecay127 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_rgb_fn, i32 0, i32 0
  %data128 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgb, i32 0, i32 0
  %110 = load i8*, i8** %data128, align 8, !tbaa !45
  %size129 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgb, i32 0, i32 1
  %111 = load i32, i32* %size129, align 4, !tbaa !47
  %conv130 = zext i32 %111 to i64
  %call131 = call i8* @memcpy(i8* %arraydecay127, i8* %110, i64 %conv130) #7
  %size132 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %prgb, i32 0, i32 1
  %112 = load i32, i32* %size132, align 4, !tbaa !47
  %idxprom133 = zext i32 %112 to i64
  %113 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %profile_rgb_fn134 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %113, i32 0, i32 74
  %arrayidx135 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_rgb_fn134, i32 0, i64 %idxprom133
  store i8 0, i8* %arrayidx135, align 1, !tbaa !50
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.126, %if.end.122
  %data137 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyk, i32 0, i32 0
  %114 = load i8*, i8** %data137, align 8, !tbaa !45
  %cmp138 = icmp ne i8* %114, null
  br i1 %cmp138, label %if.then.140, label %if.end.150

if.then.140:                                      ; preds = %if.end.136
  %115 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %profile_cmyk_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %115, i32 0, i32 77
  %arraydecay141 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_cmyk_fn, i32 0, i32 0
  %data142 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyk, i32 0, i32 0
  %116 = load i8*, i8** %data142, align 8, !tbaa !45
  %size143 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyk, i32 0, i32 1
  %117 = load i32, i32* %size143, align 4, !tbaa !47
  %conv144 = zext i32 %117 to i64
  %call145 = call i8* @memcpy(i8* %arraydecay141, i8* %116, i64 %conv144) #7
  %size146 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pcmyk, i32 0, i32 1
  %118 = load i32, i32* %size146, align 4, !tbaa !47
  %idxprom147 = zext i32 %118 to i64
  %119 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %profile_cmyk_fn148 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %119, i32 0, i32 77
  %arrayidx149 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_cmyk_fn148, i32 0, i64 %idxprom147
  store i8 0, i8* %arrayidx149, align 1, !tbaa !50
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.140, %if.end.136
  %120 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdevn, align 8, !tbaa !1
  %call151 = call i32 @xcf_open_profiles(%struct.xcf_device_s* %120) #5
  store i32 %call151, i32* %code, align 4, !tbaa !40
  %121 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.150, %if.then.56
  %122 = bitcast i32* %color_model to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast %struct.gs_param_string_s* %pcm to i8*
  call void @llvm.lifetime.end(i64 16, i8* %123) #2
  %124 = bitcast %struct.gs_param_string_s* %pcmyk to i8*
  call void @llvm.lifetime.end(i64 16, i8* %124) #2
  %125 = bitcast %struct.gs_param_string_s* %prgb to i8*
  call void @llvm.lifetime.end(i64 16, i8* %125) #2
  %126 = bitcast %struct.gs_param_string_s* %po to i8*
  call void @llvm.lifetime.end(i64 16, i8* %126) #2
  %127 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %127) #2
  %128 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %133) #2
  %134 = bitcast %struct.xcf_device_s** %pdevn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #2
  %135 = load i32, i32* %retval
  ret i32 %135
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gx_cm_color_map_procs_s* @get_spotrgb_color_mapping_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @spotRGB_procs
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %list = alloca [0 x i8*]*, align 8
  %pcolor = alloca i8**, align 8
  %color_component_number = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %separations = alloca %struct.gs_separation_names_s*, align 8
  %num_spot = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !40
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !40
  %0 = bitcast [0 x i8*]** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %std_colorant_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 70
  %3 = load [0 x i8*]*, [0 x i8*]** %std_colorant_names, align 8, !tbaa !58
  store [0 x i8*]* %3, [0 x i8*]** %list, align 8, !tbaa !1
  %4 = bitcast i8*** %pcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load [0 x i8*]*, [0 x i8*]** %list, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %5, i32 0, i32 0
  store i8** %arraydecay, i8*** %pcolor, align 8, !tbaa !1
  %6 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %color_component_number, align 4, !tbaa !40
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %tobool = icmp ne i8** %8, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %9 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %10 = load i8*, i8** %9, align 8, !tbaa !1
  %tobool1 = icmp ne i8* %10, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %name_size.addr, align 4, !tbaa !40
  %conv = sext i32 %11 to i64
  %12 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %13) #6
  %cmp = icmp eq i64 %conv, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %15 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %17 = load i32, i32* %name_size.addr, align 4, !tbaa !40
  %conv3 = sext i32 %17 to i64
  %call4 = call i32 @strncmp(i8* %14, i8* %16, i64 %conv3) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %color_component_number, align 4, !tbaa !40
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %land.lhs.true, %while.body
  %19 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %pcolor, align 8, !tbaa !1
  %20 = load i32, i32* %color_component_number, align 4, !tbaa !40
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %color_component_number, align 4, !tbaa !40
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %entry
  %21 = bitcast %struct.gs_separation_names_s** %separations to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.xcf_device_s*
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %23, i32 0, i32 72
  store %struct.gs_separation_names_s* %separation_names, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %24 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %25, i32 0, i32 0
  %26 = load i32, i32* %num_names, align 4, !tbaa !65
  store i32 %26, i32* %num_spot, align 4, !tbaa !40
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %27 = load i32, i32* %i, align 4, !tbaa !40
  %28 = load i32, i32* %num_spot, align 4, !tbaa !40
  %cmp9 = icmp slt i32 %27, %28
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %30, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names, i32 0, i64 %idxprom
  %31 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %31, i32 0, i32 1
  %32 = load i32, i32* %size, align 4, !tbaa !47
  %33 = load i32, i32* %name_size.addr, align 4, !tbaa !40
  %cmp11 = icmp eq i32 %32, %33
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.26

land.lhs.true.13:                                 ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom14 = sext i32 %34 to i64
  %35 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %names15 = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %35, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names15, i32 0, i64 %idxprom14
  %36 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx16, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8, !tbaa !45
  %38 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %names18 = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %40, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names18, i32 0, i64 %idxprom17
  %41 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx19, align 8, !tbaa !1
  %size20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %41, i32 0, i32 1
  %42 = load i32, i32* %size20, align 4, !tbaa !47
  %conv21 = zext i32 %42 to i64
  %call22 = call i32 @strncmp(i8* %37, i8* %38, i64 %conv21) #6
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.13
  %43 = load i32, i32* %color_component_number, align 4, !tbaa !40
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.13, %for.body
  %44 = load i32, i32* %color_component_number, align 4, !tbaa !40
  %inc27 = add nsw i32 %44, 1
  store i32 %inc27, i32* %color_component_number, align 4, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %45 = load i32, i32* %i, align 4, !tbaa !40
  %inc28 = add nsw i32 %45, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.25
  %46 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #2
  %47 = bitcast %struct.gs_separation_names_s** %separations to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

cleanup.30:                                       ; preds = %cleanup.cont, %cleanup, %if.then.7
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #2
  %49 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i8*** %pcolor to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = bitcast [0 x i8*]** %list to i8*
  call void @llvm.lifetime.end(i64 8, i8* %51) #2
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i64 @xcf_encode_color(%struct.gx_device_s* %dev, i16* %colors) #1 {
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
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %bitspercomponent = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 69
  %3 = load i32, i32* %bitspercomponent, align 4, !tbaa !62
  store i32 %3, i32* %bpc, align 4, !tbaa !40
  %4 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i64 0, i64* %color, align 8, !tbaa !37
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %i, align 4, !tbaa !40
  %6 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %8 = load i32, i32* %num_components, align 4, !tbaa !66
  store i32 %8, i32* %ncomp, align 4, !tbaa !40
  %9 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i32, i32* %bpc, align 4, !tbaa !40
  %shl = shl i32 1, %12
  %sub = sub nsw i32 %shl, 1
  %13 = load i32, i32* %bpc, align 4, !tbaa !40
  %conv = sext i32 %13 to i64
  %sub1 = sub i64 16, %conv
  %sh_prom = trunc i64 %sub1 to i32
  %shl2 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl2, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !40
  %14 = load i32, i32* %bpc, align 4, !tbaa !40
  %conv3 = sext i32 %14 to i64
  %sub4 = sub i64 32, %conv3
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, i32* %COLROUND_S, align 4, !tbaa !40
  %15 = load i32, i32* %COLROUND_S, align 4, !tbaa !40
  %sub6 = sub i32 %15, 1
  %shl7 = shl i32 1, %sub6
  store i32 %shl7, i32* %COLROUND_R, align 4, !tbaa !40
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !40
  %17 = load i32, i32* %ncomp, align 4, !tbaa !40
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %bpc, align 4, !tbaa !40
  %19 = load i64, i64* %color, align 8, !tbaa !37
  %sh_prom9 = zext i32 %18 to i64
  %shl10 = shl i64 %19, %sh_prom9
  store i64 %shl10, i64* %color, align 8, !tbaa !37
  %20 = load i32, i32* %COLROUND_M, align 4, !tbaa !40
  %21 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom = sext i32 %21 to i64
  %22 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx, align 2, !tbaa !39
  %conv11 = zext i16 %23 to i32
  %mul = mul i32 %20, %conv11
  %24 = load i32, i32* %COLROUND_R, align 4, !tbaa !40
  %add12 = add i32 %mul, %24
  %25 = load i32, i32* %COLROUND_S, align 4, !tbaa !40
  %shr = lshr i32 %add12, %25
  %conv13 = zext i32 %shr to i64
  %26 = load i64, i64* %color, align 8, !tbaa !37
  %or = or i64 %26, %conv13
  store i64 %or, i64* %color, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %color, align 8, !tbaa !37
  %cmp14 = icmp eq i64 %28, -1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %29 = load i64, i64* %color, align 8, !tbaa !37
  %xor = xor i64 %29, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i64, i64* %color, align 8, !tbaa !37
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %30, %cond.false ]
  %31 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #2
  %37 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  ret i64 %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %out) #1 {
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
  store i64 %color, i64* %color.addr, align 8, !tbaa !37
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %bitspercomponent = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 69
  %3 = load i32, i32* %bitspercomponent, align 4, !tbaa !62
  store i32 %3, i32* %bpc, align 4, !tbaa !40
  %4 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %bpc, align 4, !tbaa !40
  %shl = shl i32 1, %5
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !40
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %i, align 4, !tbaa !40
  %7 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %9 = load i32, i32* %num_components, align 4, !tbaa !66
  store i32 %9, i32* %ncomp, align 4, !tbaa !40
  %10 = bitcast i32* %COLDUP_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %COLDUP_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i32, i32* %bpc, align 4, !tbaa !40
  %mul = mul nsw i32 2, %12
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* @.str.18, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !50
  %conv = zext i8 %13 to i32
  %shl1 = shl i32 %conv, 8
  %14 = load i32, i32* %bpc, align 4, !tbaa !40
  %mul2 = mul nsw i32 2, %14
  %add = add nsw i32 %mul2, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [33 x i8], [33 x i8]* @.str.18, i32 0, i64 %idxprom3
  %15 = load i8, i8* %arrayidx4, align 1, !tbaa !50
  %conv5 = zext i8 %15 to i32
  %or = or i32 %shl1, %conv5
  store i32 %or, i32* %COLDUP_M, align 4, !tbaa !40
  %16 = load i32, i32* %bpc, align 4, !tbaa !40
  %conv6 = sext i32 %16 to i64
  %17 = load i32, i32* %bpc, align 4, !tbaa !40
  %conv7 = sext i32 %17 to i64
  %rem = urem i64 16, %conv7
  %sub8 = sub i64 %conv6, %rem
  %18 = load i32, i32* %bpc, align 4, !tbaa !40
  %conv9 = sext i32 %18 to i64
  %rem10 = urem i64 %sub8, %conv9
  %conv11 = trunc i64 %rem10 to i32
  store i32 %conv11, i32* %COLDUP_S, align 4, !tbaa !40
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %19 = load i32, i32* %i, align 4, !tbaa !40
  %20 = load i32, i32* %ncomp, align 4, !tbaa !40
  %cmp = icmp slt i32 %19, %20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i64, i64* %color.addr, align 8, !tbaa !37
  %conv13 = trunc i64 %21 to i32
  %22 = load i32, i32* %mask, align 4, !tbaa !40
  %and = and i32 %conv13, %22
  %23 = load i32, i32* %COLDUP_M, align 4, !tbaa !40
  %mul14 = mul i32 %and, %23
  %conv15 = trunc i32 %mul14 to i16
  %conv16 = zext i16 %conv15 to i32
  %24 = load i32, i32* %COLDUP_S, align 4, !tbaa !40
  %shr = ashr i32 %conv16, %24
  %conv17 = trunc i32 %shr to i16
  %25 = load i32, i32* %ncomp, align 4, !tbaa !40
  %26 = load i32, i32* %i, align 4, !tbaa !40
  %sub18 = sub nsw i32 %25, %26
  %sub19 = sub nsw i32 %sub18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %27 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i16, i16* %27, i64 %idxprom20
  store i16 %conv17, i16* %arrayidx21, align 2, !tbaa !39
  %28 = load i32, i32* %bpc, align 4, !tbaa !40
  %29 = load i64, i64* %color.addr, align 8, !tbaa !37
  %sh_prom = zext i32 %28 to i64
  %shr22 = lshr i64 %29, %sh_prom
  store i64 %shr22, i64* %color.addr, align 8, !tbaa !37
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = bitcast i32* %COLDUP_S to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  %32 = bitcast i32* %COLDUP_M to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #2
  %33 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %34) #2
  %35 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %35) #2
  %36 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @gscms_release_link(%struct.gsicc_link_s*) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @sample_device_crd_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i8*) #0

declare i32 @param_write_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #0

declare i32 @param_write_bool(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @param_write_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

declare i32 @param_read_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @xcf_param_read_fn(%struct.gs_param_list_s* %plist, i8* %name, %struct.gs_param_string_s* %pstr, i32 %max_len) #1 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %name.addr = alloca i8*, align 8
  %pstr.addr = alloca %struct.gs_param_string_s*, align 8
  %max_len.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pstr, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  store i32 %max_len, i32* %max_len.addr, align 4, !tbaa !40
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %1, i8* %2, %struct.gs_param_string_s* %3) #5
  store i32 %call, i32* %code, align 4, !tbaa !40
  %4 = load i32, i32* %code, align 4, !tbaa !40
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !47
  %7 = load i32, i32* %max_len.addr, align 4, !tbaa !40
  %cmp1 = icmp uge i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %8, i32 0, i32 0
  %9 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !51
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %9, i32 0, i32 7
  %10 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !53
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i32 -15, i32* %code, align 4, !tbaa !40
  %call3 = call i32 %10(%struct.gs_param_list_s* %11, i8* %12, i32 -15) #5
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !45
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !40
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 %14
}

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
  %2 = load i32, i32* %size, align 4, !tbaa !47
  %conv = zext i32 %2 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !45
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !47
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

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @xcf_set_color_model(%struct.xcf_device_s* %xdev, i32 %color_model) #1 {
entry:
  %retval = alloca i32, align 4
  %xdev.addr = alloca %struct.xcf_device_s*, align 8
  %color_model.addr = alloca i32, align 4
  store %struct.xcf_device_s* %xdev, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  store i32 %color_model, i32* %color_model.addr, align 4, !tbaa !50
  %0 = load i32, i32* %color_model.addr, align 4, !tbaa !50
  %1 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %1, i32 0, i32 68
  store i32 %0, i32* %color_model1, align 4, !tbaa !38
  %2 = load i32, i32* %color_model.addr, align 4, !tbaa !50
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %std_colorant_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %3, i32 0, i32 70
  store [0 x i8*]* bitcast ([2 x i8*]* @DeviceGrayComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names, align 8, !tbaa !58
  %4 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %4, i32 0, i32 71
  store i32 1, i32* %num_std_colorant_names, align 4, !tbaa !60
  %5 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %5, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8** %cm_name, align 8, !tbaa !67
  %6 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %6, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 2
  store i32 1, i32* %polarity, align 4, !tbaa !68
  br label %if.end.32

if.else:                                          ; preds = %entry
  %7 = load i32, i32* %color_model.addr, align 4, !tbaa !50
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %if.else
  %8 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %std_colorant_names5 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %8, i32 0, i32 70
  store [0 x i8*]* bitcast ([4 x i8*]* @DeviceRGBComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names5, align 8, !tbaa !58
  %9 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %num_std_colorant_names6 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %9, i32 0, i32 71
  store i32 3, i32* %num_std_colorant_names6, align 4, !tbaa !60
  %10 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %10, i32 0, i32 11
  %cm_name8 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 14
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8** %cm_name8, align 8, !tbaa !67
  %11 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %11, i32 0, i32 11
  %polarity10 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 2
  store i32 1, i32* %polarity10, align 4, !tbaa !68
  br label %if.end.31

if.else.11:                                       ; preds = %if.else
  %12 = load i32, i32* %color_model.addr, align 4, !tbaa !50
  %cmp12 = icmp eq i32 %12, 2
  br i1 %cmp12, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %if.else.11
  %13 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %std_colorant_names14 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %13, i32 0, i32 70
  store [0 x i8*]* bitcast ([5 x i8*]* @DeviceCMYKComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names14, align 8, !tbaa !58
  %14 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %num_std_colorant_names15 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %14, i32 0, i32 71
  store i32 4, i32* %num_std_colorant_names15, align 4, !tbaa !60
  %15 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %15, i32 0, i32 11
  %cm_name17 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i8** %cm_name17, align 8, !tbaa !67
  %16 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info18 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %16, i32 0, i32 11
  %polarity19 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info18, i32 0, i32 2
  store i32 0, i32* %polarity19, align 4, !tbaa !68
  br label %if.end.30

if.else.20:                                       ; preds = %if.else.11
  %17 = load i32, i32* %color_model.addr, align 4, !tbaa !50
  %cmp21 = icmp eq i32 %17, 3
  br i1 %cmp21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.else.20
  %18 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %std_colorant_names23 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %18, i32 0, i32 70
  store [0 x i8*]* bitcast ([5 x i8*]* @DeviceCMYKComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names23, align 8, !tbaa !58
  %19 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %num_std_colorant_names24 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %19, i32 0, i32 71
  store i32 4, i32* %num_std_colorant_names24, align 4, !tbaa !60
  %20 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %20, i32 0, i32 11
  %cm_name26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %cm_name26, align 8, !tbaa !67
  %21 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %color_info27 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %21, i32 0, i32 11
  %polarity28 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info27, i32 0, i32 2
  store i32 0, i32* %polarity28, align 4, !tbaa !68
  br label %if.end

if.else.29:                                       ; preds = %if.else.20
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.13
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.else.29
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @check_process_color_names([0 x i8*]* %pcomp_list, %struct.gs_param_string_s* %pstring) #1 {
entry:
  %retval = alloca i32, align 4
  %pcomp_list.addr = alloca [0 x i8*]*, align 8
  %pstring.addr = alloca %struct.gs_param_string_s*, align 8
  %plist = alloca i8**, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store [0 x i8*]* %pcomp_list, [0 x i8*]** %pcomp_list.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pstring, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %0 = load [0 x i8*]*, [0 x i8*]** %pcomp_list.addr, align 8, !tbaa !1
  %tobool = icmp ne [0 x i8*]* %0, null
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = bitcast i8*** %plist to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load [0 x i8*]*, [0 x i8*]** %pcomp_list.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %2, i32 0, i32 0
  store i8** %arraydecay, i8*** %plist, align 8, !tbaa !1
  %3 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %size1 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 1
  %5 = load i32, i32* %size1, align 4, !tbaa !47
  store i32 %5, i32* %size, align 4, !tbaa !40
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load i8**, i8*** %plist, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8**, i8*** %plist, align 8, !tbaa !1
  %9 = load i8*, i8** %8, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %9) #6
  %10 = load i32, i32* %size, align 4, !tbaa !40
  %conv = zext i32 %10 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %11 = load i8**, i8*** %plist, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !45
  %15 = load i8**, i8*** %plist, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %16) #6
  %call5 = call i32 @strncmp(i8* %12, i8* %14, i64 %call4) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %while.body
  %17 = load i8**, i8*** %plist, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %incdec.ptr, i8*** %plist, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then.8
  %18 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i8*** %plist to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.10

if.end.10:                                        ; preds = %cleanup.cont, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %cleanup
  %20 = load i32, i32* %retval
  ret i32 %20

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bpc_to_depth(i32 %ncomp, i32 %bpc) #1 {
entry:
  %retval = alloca i32, align 4
  %ncomp.addr = alloca i32, align 4
  %bpc.addr = alloca i32, align 4
  store i32 %ncomp, i32* %ncomp.addr, align 4, !tbaa !40
  store i32 %bpc, i32* %bpc.addr, align 4, !tbaa !40
  %0 = load i32, i32* %ncomp.addr, align 4, !tbaa !40
  %cmp = icmp sle i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %bpc.addr, align 4, !tbaa !40
  %cmp1 = icmp sle i32 %1, 8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %bpc.addr, align 4, !tbaa !40
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i32, i32* %ncomp.addr, align 4, !tbaa !40
  %sub2 = sub nsw i32 %3, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @bpc_to_depth.depths, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !50
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %ncomp.addr, align 4, !tbaa !40
  %6 = load i32, i32* %bpc.addr, align 4, !tbaa !40
  %mul = mul nsw i32 %5, %6
  %add = add nsw i32 %mul, 7
  %and = and i32 %add, -8
  store i32 %and, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @xcf_open_profiles(%struct.xcf_device_s* %xdev) #1 {
entry:
  %xdev.addr = alloca %struct.xcf_device_s*, align 8
  %code = alloca i32, align 4
  store %struct.xcf_device_s* %xdev, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !40
  %1 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %output_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %1, i32 0, i32 82
  %2 = load i8*, i8** %output_icc_link, align 8, !tbaa !35
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %profile_out_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %3, i32 0, i32 80
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !50
  %conv = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %profile_out_fn1 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %5, i32 0, i32 80
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn1, i32 0, i32 0
  %6 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %output_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %6, i32 0, i32 81
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %output_profile, align 8, !tbaa !36
  %8 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %output_icc_link2 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %8, i32 0, i32 82
  %9 = load i8*, i8** %output_icc_link2, align 8, !tbaa !35
  %10 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %10, i32 0, i32 3
  %11 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  %call = call i32 @xcf_open_profile(i8* %arraydecay, %struct.cmm_profile_s* %7, i8* %9, %struct.gs_memory_s* %11) #5
  store i32 %call, i32* %code, align 4, !tbaa !40
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i32, i32* %code, align 4, !tbaa !40
  %cmp3 = icmp sge i32 %12, 0
  br i1 %cmp3, label %land.lhs.true.5, label %if.end.18

land.lhs.true.5:                                  ; preds = %if.end
  %13 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %rgb_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %13, i32 0, i32 76
  %14 = load i8*, i8** %rgb_icc_link, align 8, !tbaa !33
  %cmp6 = icmp eq i8* %14, null
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.18

land.lhs.true.8:                                  ; preds = %land.lhs.true.5
  %15 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %profile_rgb_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %15, i32 0, i32 74
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_rgb_fn, i32 0, i64 0
  %16 = load i8, i8* %arrayidx9, align 1, !tbaa !50
  %conv10 = sext i8 %16 to i32
  %tobool11 = icmp ne i32 %conv10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %land.lhs.true.8
  %17 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %profile_rgb_fn13 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %17, i32 0, i32 74
  %arraydecay14 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_rgb_fn13, i32 0, i32 0
  %18 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %rgb_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %18, i32 0, i32 75
  %19 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile, align 8, !tbaa !34
  %20 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %rgb_icc_link15 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %20, i32 0, i32 76
  %21 = load i8*, i8** %rgb_icc_link15, align 8, !tbaa !33
  %22 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !69
  %call17 = call i32 @xcf_open_profile(i8* %arraydecay14, %struct.cmm_profile_s* %19, i8* %21, %struct.gs_memory_s* %23) #5
  store i32 %call17, i32* %code, align 4, !tbaa !40
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %land.lhs.true.8, %land.lhs.true.5, %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !40
  %cmp19 = icmp sge i32 %24, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.34

land.lhs.true.21:                                 ; preds = %if.end.18
  %25 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %cmyk_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %25, i32 0, i32 79
  %26 = load i8*, i8** %cmyk_icc_link, align 8, !tbaa !9
  %cmp22 = icmp eq i8* %26, null
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.34

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %27 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %profile_cmyk_fn = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %27, i32 0, i32 77
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_cmyk_fn, i32 0, i64 0
  %28 = load i8, i8* %arrayidx25, align 1, !tbaa !50
  %conv26 = sext i8 %28 to i32
  %tobool27 = icmp ne i32 %conv26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %land.lhs.true.24
  %29 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %profile_cmyk_fn29 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %29, i32 0, i32 77
  %arraydecay30 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_cmyk_fn29, i32 0, i32 0
  %30 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %cmyk_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %30, i32 0, i32 78
  %31 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile, align 8, !tbaa !26
  %32 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %cmyk_icc_link31 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %32, i32 0, i32 79
  %33 = load i8*, i8** %cmyk_icc_link31, align 8, !tbaa !9
  %34 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev.addr, align 8, !tbaa !1
  %memory32 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %34, i32 0, i32 3
  %35 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory32, align 8, !tbaa !69
  %call33 = call i32 @xcf_open_profile(i8* %arraydecay30, %struct.cmm_profile_s* %31, i8* %33, %struct.gs_memory_s* %35) #5
  store i32 %call33, i32* %code, align 4, !tbaa !40
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %land.lhs.true.24, %land.lhs.true.21, %if.end.18
  %36 = load i32, i32* %code, align 4, !tbaa !40
  %37 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  ret i32 %36
}

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i32 @xcf_open_profile(i8* %profile_out_fn, %struct.cmm_profile_s* %icc_profile, i8* %icc_link, %struct.gs_memory_s* %memory) #1 {
entry:
  %retval = alloca i32, align 4
  %profile_out_fn.addr = alloca i8*, align 8
  %icc_profile.addr = alloca %struct.cmm_profile_s*, align 8
  %icc_link.addr = alloca i8*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %profile_out_fn, i8** %profile_out_fn.addr, align 8, !tbaa !1
  store %struct.cmm_profile_s* %icc_profile, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  store i8* %icc_link, i8** %icc_link.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = load i8*, i8** %profile_out_fn.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %profile_out_fn.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call1 = call %struct.cmm_profile_s* @gsicc_get_profile_handle_file(i8* %1, i32 %conv, %struct.gs_memory_s* %3) #5
  store %struct.cmm_profile_s* %call1, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %4 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmm_profile_s* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.xcf_open_profile, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 630, i32 0, i32 -1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0)) #5
  store i32 %call3, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 8, i32* %black_point_comp, align 4, !tbaa !70
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 0, i32* %graphics_type_tag, align 4, !tbaa !71
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 0, i32* %rendering_intent, align 4, !tbaa !72
  %5 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %icc_profile.addr, align 8, !tbaa !1
  %6 = bitcast %struct.cmm_profile_s* %5 to i8*
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call4 = call i8* @gscms_get_link(i8* %6, i8* null, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, %struct.gs_memory_s* %7) #5
  store i8* %call4, i8** %icc_link.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %icc_link.addr, align 8, !tbaa !1
  %cmp5 = icmp eq i8* %8, null
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.xcf_open_profile, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 643, i32 0, i32 -1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0)) #5
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then.7, %if.then
  %9 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %9) #2
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare %struct.cmm_profile_s* @gsicc_get_profile_handle_file(i8*, i32, %struct.gs_memory_s*) #0

declare i32 @gs_throw_imp(i8*, i8*, i32, i32, i32, i8*, ...) #0

declare i8* @gscms_get_link(i8*, i8*, %struct.gsicc_rendering_param_s*, i32, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_spotrgb_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %3, i32* %i, align 4, !tbaa !40
  %4 = load i16, i16* %gray.addr, align 2, !tbaa !39
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %4, i16* %arrayidx, align 2, !tbaa !39
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 %4, i16* %arrayidx1, align 2, !tbaa !39
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !40
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !40
  %add = add nsw i32 2, %9
  %idxprom = sext i32 %add to i64
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  store i16 0, i16* %arrayidx3, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !40
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_spotrgb_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
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
  store i16 %r, i16* %r.addr, align 2, !tbaa !39
  store i16 %g, i16* %g.addr, align 2, !tbaa !39
  store i16 %b, i16* %b.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %3, i32* %i, align 4, !tbaa !40
  %4 = load i16, i16* %r.addr, align 2, !tbaa !39
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %4, i16* %arrayidx, align 2, !tbaa !39
  %6 = load i16, i16* %g.addr, align 2, !tbaa !39
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %6, i16* %arrayidx1, align 2, !tbaa !39
  %8 = load i16, i16* %b.addr, align 2, !tbaa !39
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %arrayidx2, align 2, !tbaa !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !40
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !40
  %add = add nsw i32 2, %11
  %idxprom = sext i32 %add to i64
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  store i16 0, i16* %arrayidx3, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !40
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_spotrgb_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !39
  store i16 %m, i16* %m.addr, align 2, !tbaa !39
  store i16 %y, i16* %y.addr, align 2, !tbaa !39
  store i16 %k, i16* %k.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %3, i32* %i, align 4, !tbaa !40
  %4 = load i16, i16* %c.addr, align 2, !tbaa !39
  %5 = load i16, i16* %m.addr, align 2, !tbaa !39
  %6 = load i16, i16* %y.addr, align 2, !tbaa !39
  %7 = load i16, i16* %k.addr, align 2, !tbaa !39
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !73
  call void @color_cmyk_to_rgb(i16 signext %4, i16 signext %5, i16 signext %6, i16 signext %7, %struct.gs_imager_state_s* null, i16* %8, %struct.gs_memory_s* %10) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !40
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !40
  %add = add nsw i32 2, %12
  %idxprom = sext i32 %add to i64
  %13 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !40
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret void
}

declare void @color_cmyk_to_rgb(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gx_cm_color_map_procs_s* @get_xcf_color_mapping_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %xdev = alloca %struct.xcf_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %color_model = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %3, i32 0, i32 68
  %4 = load i32, i32* %color_model, align 4, !tbaa !38
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gx_cm_color_map_procs_s* @spotRGB_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %5, i32 0, i32 68
  %6 = load i32, i32* %color_model1, align 4, !tbaa !38
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store %struct.gx_cm_color_map_procs_s* @spotCMYK_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.4:                                        ; preds = %if.else
  %7 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %color_model5 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %7, i32 0, i32 68
  %8 = load i32, i32* %color_model5, align 4, !tbaa !38
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store %struct.gx_cm_color_map_procs_s* @spotN_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.8:                                        ; preds = %if.else.4
  store %struct.gx_cm_color_map_procs_s* null, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.8, %if.then.7, %if.then.3, %if.then
  %9 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %retval
  ret %struct.gx_cm_color_map_procs_s* %10
}

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %2, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %3, i32* %i, align 4, !tbaa !40
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !39
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !39
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !39
  %7 = load i16, i16* %gray.addr, align 2, !tbaa !39
  %conv = sext i16 %7 to i32
  %sub = sub nsw i32 32760, %conv
  %conv3 = trunc i32 %sub to i16
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 3
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !39
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !40
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !40
  %add = add nsw i32 3, %10
  %idxprom = sext i32 %add to i64
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  store i16 0, i16* %arrayidx6, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !40
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %xdev = alloca %struct.xcf_device_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !39
  store i16 %g, i16* %g.addr, align 2, !tbaa !39
  store i16 %b, i16* %b.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %4, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %5, i32* %n, align 4, !tbaa !40
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16, i16* %r.addr, align 2, !tbaa !39
  %8 = load i16, i16* %g.addr, align 2, !tbaa !39
  %9 = load i16, i16* %b.addr, align 2, !tbaa !39
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !73
  call void @color_rgb_to_cmyk(i16 signext %7, i16 signext %8, i16 signext %9, %struct.gs_imager_state_s* %10, i16* %11, %struct.gs_memory_s* %13) #5
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !40
  %15 = load i32, i32* %n, align 4, !tbaa !40
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !40
  %add = add nsw i32 4, %16
  %idxprom = sext i32 %add to i64
  %17 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %xdev = alloca %struct.xcf_device_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !39
  store i16 %m, i16* %m.addr, align 2, !tbaa !39
  store i16 %y, i16* %y.addr, align 2, !tbaa !39
  store i16 %k, i16* %k.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %4, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %5, i32* %n, align 4, !tbaa !40
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16, i16* %c.addr, align 2, !tbaa !39
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %7, i16* %arrayidx, align 2, !tbaa !39
  %9 = load i16, i16* %m.addr, align 2, !tbaa !39
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %9, i16* %arrayidx1, align 2, !tbaa !39
  %11 = load i16, i16* %y.addr, align 2, !tbaa !39
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %11, i16* %arrayidx2, align 2, !tbaa !39
  %13 = load i16, i16* %k.addr, align 2, !tbaa !39
  %14 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %14, i64 3
  store i16 %13, i16* %arrayidx3, align 2, !tbaa !39
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !40
  %16 = load i32, i32* %n, align 4, !tbaa !40
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !40
  %add = add nsw i32 4, %17
  %idxprom = sext i32 %add to i64
  %18 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  store i16 0, i16* %arrayidx4, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret void
}

declare void @color_rgb_to_cmyk(i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_spotn_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i16, i16* %gray.addr, align 2, !tbaa !39
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
  %xdev = alloca %struct.xcf_device_s*, align 8
  %n = alloca i32, align 4
  %link = alloca i8*, align 8
  %i = alloca i32, align 4
  %in = alloca [3 x i16], align 2
  %tmp = alloca [8 x i16], align 16
  %outn = alloca i32, align 4
  %cmyk = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !39
  store i16 %g, i16* %g.addr, align 2, !tbaa !39
  store i16 %b, i16* %b.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %4, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %5, i32* %n, align 4, !tbaa !40
  %6 = bitcast i8** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %7, i32 0, i32 76
  %8 = load i8*, i8** %rgb_icc_link, align 8, !tbaa !33
  store i8* %8, i8** %link, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i8*, i8** %link, align 8, !tbaa !1
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = bitcast [3 x i16]* %in to i8*
  call void @llvm.lifetime.start(i64 6, i8* %11) #2
  %12 = bitcast [8 x i16]* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %rgb_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %14, i32 0, i32 75
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %rgb_profile, align 8, !tbaa !34
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 1
  %16 = load i8, i8* %num_comps_out, align 1, !tbaa !74
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %outn, align 4, !tbaa !40
  %17 = load i16, i16* %r.addr, align 2, !tbaa !39
  %conv2 = sext i16 %17 to i32
  %shl = shl i32 %conv2, 1
  %18 = load i16, i16* %r.addr, align 2, !tbaa !39
  %conv3 = sext i16 %18 to i32
  %shr = ashr i32 %conv3, 11
  %add = add nsw i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  %arrayidx = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !39
  %19 = load i16, i16* %g.addr, align 2, !tbaa !39
  %conv5 = sext i16 %19 to i32
  %shl6 = shl i32 %conv5, 1
  %20 = load i16, i16* %g.addr, align 2, !tbaa !39
  %conv7 = sext i16 %20 to i32
  %shr8 = ashr i32 %conv7, 11
  %add9 = add nsw i32 %shl6, %shr8
  %conv10 = trunc i32 %add9 to i16
  %arrayidx11 = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !39
  %21 = load i16, i16* %b.addr, align 2, !tbaa !39
  %conv12 = sext i16 %21 to i32
  %shl13 = shl i32 %conv12, 1
  %22 = load i16, i16* %b.addr, align 2, !tbaa !39
  %conv14 = sext i16 %22 to i32
  %shr15 = ashr i32 %conv14, 11
  %add16 = add nsw i32 %shl13, %shr15
  %conv17 = trunc i32 %add16 to i16
  %arrayidx18 = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 2
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !39
  %23 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %24 = load i8*, i8** %link, align 8, !tbaa !1
  %25 = bitcast i8* %24 to %struct.gsicc_link_s*
  %arrayidx19 = getelementptr inbounds [3 x i16], [3 x i16]* %in, i32 0, i64 0
  %26 = bitcast i16* %arrayidx19 to i8*
  %arrayidx20 = getelementptr inbounds [8 x i16], [8 x i16]* %tmp, i32 0, i64 0
  %27 = bitcast i16* %arrayidx20 to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %23, %struct.gsicc_link_s* %25, i8* %26, i8* %27, i32 2) #5
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %28 = load i32, i32* %i, align 4, !tbaa !40
  %29 = load i32, i32* %outn, align 4, !tbaa !40
  %cmp21 = icmp slt i32 %28, %29
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom = sext i32 %30 to i64
  %arrayidx23 = getelementptr inbounds [8 x i16], [8 x i16]* %tmp, i32 0, i64 %idxprom
  %31 = load i16, i16* %arrayidx23, align 2, !tbaa !39
  %conv24 = zext i16 %31 to i32
  %shr25 = ashr i32 %conv24, 1
  %32 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds [8 x i16], [8 x i16]* %tmp, i32 0, i64 %idxprom26
  %33 = load i16, i16* %arrayidx27, align 2, !tbaa !39
  %conv28 = zext i16 %33 to i32
  %shr29 = ashr i32 %conv28, 13
  %sub = sub nsw i32 %shr25, %shr29
  %conv30 = trunc i32 %sub to i16
  %34 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom31 = sext i32 %34 to i64
  %35 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i16, i16* %35, i64 %idxprom31
  store i16 %conv30, i16* %arrayidx32, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.40, %for.end
  %37 = load i32, i32* %i, align 4, !tbaa !40
  %38 = load i32, i32* %n, align 4, !tbaa !40
  %add34 = add nsw i32 %38, 4
  %cmp35 = icmp slt i32 %37, %add34
  br i1 %cmp35, label %for.body.37, label %for.end.42

for.body.37:                                      ; preds = %for.cond.33
  %39 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom38 = sext i32 %39 to i64
  %40 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %40, i64 %idxprom38
  store i16 0, i16* %arrayidx39, align 2, !tbaa !39
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.37
  %41 = load i32, i32* %i, align 4, !tbaa !40
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !40
  br label %for.cond.33

for.end.42:                                       ; preds = %for.cond.33
  %42 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast [8 x i16]* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %43) #2
  %44 = bitcast [3 x i16]* %in to i8*
  call void @llvm.lifetime.end(i64 6, i8* %44) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %45 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #2
  %46 = load i16, i16* %r.addr, align 2, !tbaa !39
  %47 = load i16, i16* %g.addr, align 2, !tbaa !39
  %48 = load i16, i16* %b.addr, align 2, !tbaa !39
  %49 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !73
  call void @color_rgb_to_cmyk(i16 signext %46, i16 signext %47, i16 signext %48, %struct.gs_imager_state_s* %49, i16* %arraydecay, %struct.gs_memory_s* %51) #5
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  %53 = load i16, i16* %arrayidx44, align 2, !tbaa !39
  %arrayidx45 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  %54 = load i16, i16* %arrayidx45, align 2, !tbaa !39
  %arrayidx46 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  %55 = load i16, i16* %arrayidx46, align 2, !tbaa !39
  %arrayidx47 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  %56 = load i16, i16* %arrayidx47, align 2, !tbaa !39
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
  %62 = bitcast %struct.xcf_device_s** %xdev to i8*
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
  %xdev = alloca %struct.xcf_device_s*, align 8
  %n = alloca i32, align 4
  %link = alloca i8*, align 8
  %i = alloca i32, align 4
  %in = alloca [4 x i16], align 2
  %tmp = alloca [8 x i16], align 16
  %outn = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !39
  store i16 %m, i16* %m.addr, align 2, !tbaa !39
  store i16 %y, i16* %y.addr, align 2, !tbaa !39
  store i16 %k, i16* %k.addr, align 2, !tbaa !39
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %2, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %4, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !49
  store i32 %5, i32* %n, align 4, !tbaa !40
  %6 = bitcast i8** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %7, i32 0, i32 79
  %8 = load i8*, i8** %cmyk_icc_link, align 8, !tbaa !9
  store i8* %8, i8** %link, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load i8*, i8** %link, align 8, !tbaa !1
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = bitcast [4 x i16]* %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = bitcast [8 x i16]* %tmp to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %cmyk_profile = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %14, i32 0, i32 78
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %cmyk_profile, align 8, !tbaa !26
  %num_comps_out = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 1
  %16 = load i8, i8* %num_comps_out, align 1, !tbaa !74
  %conv = zext i8 %16 to i32
  store i32 %conv, i32* %outn, align 4, !tbaa !40
  %17 = load i16, i16* %c.addr, align 2, !tbaa !39
  %conv2 = sext i16 %17 to i32
  %shl = shl i32 %conv2, 1
  %18 = load i16, i16* %c.addr, align 2, !tbaa !39
  %conv3 = sext i16 %18 to i32
  %shr = ashr i32 %conv3, 11
  %add = add nsw i32 %shl, %shr
  %conv4 = trunc i32 %add to i16
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 0
  store i16 %conv4, i16* %arrayidx, align 2, !tbaa !39
  %19 = load i16, i16* %m.addr, align 2, !tbaa !39
  %conv5 = sext i16 %19 to i32
  %shl6 = shl i32 %conv5, 1
  %20 = load i16, i16* %m.addr, align 2, !tbaa !39
  %conv7 = sext i16 %20 to i32
  %shr8 = ashr i32 %conv7, 11
  %add9 = add nsw i32 %shl6, %shr8
  %conv10 = trunc i32 %add9 to i16
  %arrayidx11 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 1
  store i16 %conv10, i16* %arrayidx11, align 2, !tbaa !39
  %21 = load i16, i16* %y.addr, align 2, !tbaa !39
  %conv12 = sext i16 %21 to i32
  %shl13 = shl i32 %conv12, 1
  %22 = load i16, i16* %y.addr, align 2, !tbaa !39
  %conv14 = sext i16 %22 to i32
  %shr15 = ashr i32 %conv14, 11
  %add16 = add nsw i32 %shl13, %shr15
  %conv17 = trunc i32 %add16 to i16
  %arrayidx18 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 2
  store i16 %conv17, i16* %arrayidx18, align 2, !tbaa !39
  %23 = load i16, i16* %k.addr, align 2, !tbaa !39
  %conv19 = sext i16 %23 to i32
  %shl20 = shl i32 %conv19, 1
  %24 = load i16, i16* %k.addr, align 2, !tbaa !39
  %conv21 = sext i16 %24 to i32
  %shr22 = ashr i32 %conv21, 11
  %add23 = add nsw i32 %shl20, %shr22
  %conv24 = trunc i32 %add23 to i16
  %arrayidx25 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 3
  store i16 %conv24, i16* %arrayidx25, align 2, !tbaa !39
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %link, align 8, !tbaa !1
  %27 = bitcast i8* %26 to %struct.gsicc_link_s*
  %arrayidx26 = getelementptr inbounds [4 x i16], [4 x i16]* %in, i32 0, i64 0
  %28 = bitcast i16* %arrayidx26 to i8*
  %arrayidx27 = getelementptr inbounds [8 x i16], [8 x i16]* %tmp, i32 0, i64 0
  %29 = bitcast i16* %arrayidx27 to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %25, %struct.gsicc_link_s* %27, i8* %28, i8* %29, i32 2) #5
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %30 = load i32, i32* %i, align 4, !tbaa !40
  %31 = load i32, i32* %outn, align 4, !tbaa !40
  %cmp28 = icmp slt i32 %30, %31
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds [8 x i16], [8 x i16]* %tmp, i32 0, i64 %idxprom
  %33 = load i16, i16* %arrayidx30, align 2, !tbaa !39
  %conv31 = zext i16 %33 to i32
  %shr32 = ashr i32 %conv31, 1
  %34 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds [8 x i16], [8 x i16]* %tmp, i32 0, i64 %idxprom33
  %35 = load i16, i16* %arrayidx34, align 2, !tbaa !39
  %conv35 = zext i16 %35 to i32
  %shr36 = ashr i32 %conv35, 13
  %sub = sub nsw i32 %shr32, %shr36
  %conv37 = trunc i32 %sub to i16
  %36 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom38 = sext i32 %36 to i64
  %37 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i16, i16* %37, i64 %idxprom38
  store i16 %conv37, i16* %arrayidx39, align 2, !tbaa !39
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %for.end
  %39 = load i32, i32* %i, align 4, !tbaa !40
  %40 = load i32, i32* %n, align 4, !tbaa !40
  %add41 = add nsw i32 %40, 4
  %cmp42 = icmp slt i32 %39, %add41
  br i1 %cmp42, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %for.cond.40
  %41 = load i32, i32* %i, align 4, !tbaa !40
  %idxprom45 = sext i32 %41 to i64
  %42 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds i16, i16* %42, i64 %idxprom45
  store i16 0, i16* %arrayidx46, align 2, !tbaa !39
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.44
  %43 = load i32, i32* %i, align 4, !tbaa !40
  %inc48 = add nsw i32 %43, 1
  store i32 %inc48, i32* %i, align 4, !tbaa !40
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  %44 = bitcast i32* %outn to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #2
  %45 = bitcast [8 x i16]* %tmp to i8*
  call void @llvm.lifetime.end(i64 16, i8* %45) #2
  %46 = bitcast [4 x i16]* %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  br label %if.end

if.else:                                          ; preds = %entry
  %47 = load i16, i16* %c.addr, align 2, !tbaa !39
  %48 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds i16, i16* %48, i64 0
  store i16 %47, i16* %arrayidx50, align 2, !tbaa !39
  %49 = load i16, i16* %m.addr, align 2, !tbaa !39
  %50 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i16, i16* %50, i64 1
  store i16 %49, i16* %arrayidx51, align 2, !tbaa !39
  %51 = load i16, i16* %y.addr, align 2, !tbaa !39
  %52 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds i16, i16* %52, i64 2
  store i16 %51, i16* %arrayidx52, align 2, !tbaa !39
  %53 = load i16, i16* %k.addr, align 2, !tbaa !39
  %54 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds i16, i16* %54, i64 3
  store i16 %53, i16* %arrayidx53, align 2, !tbaa !39
  store i32 0, i32* %i, align 4, !tbaa !40
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.61, %if.else
  %55 = load i32, i32* %i, align 4, !tbaa !40
  %56 = load i32, i32* %n, align 4, !tbaa !40
  %cmp55 = icmp slt i32 %55, %56
  br i1 %cmp55, label %for.body.57, label %for.end.63

for.body.57:                                      ; preds = %for.cond.54
  %57 = load i32, i32* %i, align 4, !tbaa !40
  %add58 = add nsw i32 4, %57
  %idxprom59 = sext i32 %add58 to i64
  %58 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds i16, i16* %58, i64 %idxprom59
  store i16 0, i16* %arrayidx60, align 2, !tbaa !39
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.body.57
  %59 = load i32, i32* %i, align 4, !tbaa !40
  %inc62 = add nsw i32 %59, 1
  store i32 %inc62, i32* %i, align 4, !tbaa !40
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
  %63 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  ret void
}

declare void @gscms_transform_color(%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @xcf_setup_tiles(%struct.xcf_write_ctx* %xc, %struct.xcf_device_s* %dev) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %dev.addr = alloca %struct.xcf_device_s*, align 8
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.xcf_device_s* %dev, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %0 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %0, i32 0, i32 4
  store i32 3, i32* %base_bytes_pp, align 4, !tbaa !75
  %1 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %1, i32 0, i32 72
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %2 = load i32, i32* %num_names, align 4, !tbaa !49
  %3 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %3, i32 0, i32 5
  store i32 %2, i32* %n_extra_channels, align 4, !tbaa !76
  %4 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %4, i32 0, i32 13
  %5 = load i32, i32* %width, align 4, !tbaa !77
  %6 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %6, i32 0, i32 2
  store i32 %5, i32* %width1, align 4, !tbaa !78
  %7 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %7, i32 0, i32 14
  %8 = load i32, i32* %height, align 4, !tbaa !79
  %9 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height2 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %9, i32 0, i32 3
  store i32 %8, i32* %height2, align 4, !tbaa !80
  %10 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %width3 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %10, i32 0, i32 13
  %11 = load i32, i32* %width3, align 4, !tbaa !77
  %add = add nsw i32 %11, 64
  %sub = sub nsw i32 %add, 1
  %div = sdiv i32 %sub, 64
  %12 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %12, i32 0, i32 6
  store i32 %div, i32* %n_tiles_x, align 4, !tbaa !81
  %13 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %height4 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %13, i32 0, i32 14
  %14 = load i32, i32* %height4, align 4, !tbaa !79
  %add5 = add nsw i32 %14, 64
  %sub6 = sub nsw i32 %add5, 1
  %div7 = sdiv i32 %sub6, 64
  %15 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_y = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %15, i32 0, i32 7
  store i32 %div7, i32* %n_tiles_y, align 4, !tbaa !82
  %16 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x8 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %16, i32 0, i32 6
  %17 = load i32, i32* %n_tiles_x8, align 4, !tbaa !81
  %18 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_y9 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %18, i32 0, i32 7
  %19 = load i32, i32* %n_tiles_y9, align 4, !tbaa !82
  %mul = mul nsw i32 %17, %19
  %20 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %20, i32 0, i32 8
  store i32 %mul, i32* %n_tiles, align 4, !tbaa !83
  %21 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %width10 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width10, align 4, !tbaa !77
  %call = call i32 @xcf_calc_levels(i32 %22, i32 64) #5
  %23 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %height11 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %23, i32 0, i32 14
  %24 = load i32, i32* %height11, align 4, !tbaa !79
  %call12 = call i32 @xcf_calc_levels(i32 %24, i32 64) #5
  %cmp = icmp sgt i32 %call, %call12
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %width13 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width13, align 4, !tbaa !77
  %call14 = call i32 @xcf_calc_levels(i32 %26, i32 64) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %27 = load %struct.xcf_device_s*, %struct.xcf_device_s** %dev.addr, align 8, !tbaa !1
  %height15 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %27, i32 0, i32 14
  %28 = load i32, i32* %height15, align 4, !tbaa !79
  %call16 = call i32 @xcf_calc_levels(i32 %28, i32 64) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call16, %cond.false ]
  %29 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %29, i32 0, i32 9
  store i32 %cond, i32* %n_levels, align 4, !tbaa !84
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write_header(%struct.xcf_write_ctx* %xc, %struct.xcf_device_s* %pdev) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %pdev.addr = alloca %struct.xcf_device_s*, align 8
  %code = alloca i32, align 4
  %layer_name = alloca i8*, align 8
  %level = alloca i32, align 4
  %tile_offset = alloca i32, align 4
  %tile_idx = alloca i32, align 4
  %n_extra_channels = alloca i32, align 4
  %bytes_pp = alloca i32, align 4
  %channel_idx = alloca i32, align 4
  %separation_name = alloca %struct.gs_param_string_s*, align 8
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.xcf_device_s* %pdev, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !40
  %1 = bitcast i8** %layer_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8** %layer_name, align 8, !tbaa !1
  %2 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %tile_offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %tile_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %6, i32 0, i32 5
  %7 = load i32, i32* %n_extra_channels1, align 4, !tbaa !76
  store i32 %7, i32* %n_extra_channels, align 4, !tbaa !40
  %8 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %9, i32 0, i32 4
  %10 = load i32, i32* %base_bytes_pp, align 4, !tbaa !75
  %11 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %add = add nsw i32 %10, %11
  store i32 %add, i32* %bytes_pp, align 4, !tbaa !40
  %12 = bitcast i32* %channel_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call = call i32 @xcf_write(%struct.xcf_write_ctx* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 14) #5
  %14 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %15 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %15, i32 0, i32 2
  %16 = load i32, i32* %width, align 4, !tbaa !78
  %call2 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %14, i32 %16) #5
  %17 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %18 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %18, i32 0, i32 3
  %19 = load i32, i32* %height, align 4, !tbaa !80
  %call3 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %17, i32 %19) #5
  %20 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call4 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %20, i32 0) #5
  %21 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call5 = call i32 @xcf_write_image_props(%struct.xcf_write_ctx* %21) #5
  %22 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %23 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %23, i32 0, i32 1
  %24 = load i32, i32* %offset, align 4, !tbaa !8
  %add6 = add nsw i32 %24, 12
  %25 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %mul = mul nsw i32 4, %25
  %add7 = add nsw i32 %add6, %mul
  %call8 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %22, i32 %add7) #5
  %26 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call9 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %26, i32 0) #5
  %27 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset10 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %27, i32 0, i32 1
  %28 = load i32, i32* %offset10, align 4, !tbaa !8
  %add11 = add nsw i32 %28, 4
  %29 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %mul12 = mul nsw i32 4, %29
  %add13 = add nsw i32 %add11, %mul12
  %30 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %31 = load i8*, i8** %layer_name, align 8, !tbaa !1
  %call14 = call i32 @xcf_base_size(%struct.xcf_write_ctx* %30, i8* %31) #5
  %add15 = add nsw i32 %add13, %call14
  store i32 %add15, i32* %tile_offset, align 4, !tbaa !40
  store i32 0, i32* %channel_idx, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %32 = load i32, i32* %channel_idx, align 4, !tbaa !40
  %33 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = bitcast %struct.gs_param_string_s** %separation_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #2
  %35 = load i32, i32* %channel_idx, align 4, !tbaa !40
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %36, i32 0, i32 72
  %names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names, i32 0, i64 %idxprom
  %37 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_param_string_s* %37, %struct.gs_param_string_s** %separation_name, align 8, !tbaa !1
  %38 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 1196) #5
  %40 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %memory16 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %40, i32 0, i32 3
  %41 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !69
  %42 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %call17 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 %42) #5
  %43 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %44 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %call18 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %43, i32 %44) #5
  %45 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %46 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %separation_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %46, i32 0, i32 1
  %47 = load i32, i32* %size, align 4, !tbaa !47
  %call19 = call i32 @xcf_channel_size(%struct.xcf_write_ctx* %45, i32 %47) #5
  %48 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %add20 = add nsw i32 %48, %call19
  store i32 %add20, i32* %tile_offset, align 4, !tbaa !40
  %49 = bitcast %struct.gs_param_string_s** %separation_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %channel_idx, align 4, !tbaa !40
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %channel_idx, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call21 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %51, i32 0) #5
  %52 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %53 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width22 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %53, i32 0, i32 2
  %54 = load i32, i32* %width22, align 4, !tbaa !78
  %call23 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %52, i32 %54) #5
  %55 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %56 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height24 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %56, i32 0, i32 3
  %57 = load i32, i32* %height24, align 4, !tbaa !80
  %call25 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %55, i32 %57) #5
  %58 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call26 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %58, i32 0) #5
  %59 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %60 = load i8*, i8** %layer_name, align 8, !tbaa !1
  %call27 = call i64 @strlen(i8* %60) #6
  %add28 = add i64 %call27, 1
  %conv = trunc i64 %add28 to i32
  %call29 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %59, i32 %conv) #5
  %61 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %62 = load i8*, i8** %layer_name, align 8, !tbaa !1
  %63 = load i8*, i8** %layer_name, align 8, !tbaa !1
  %call30 = call i64 @strlen(i8* %63) #6
  %add31 = add i64 %call30, 1
  %conv32 = trunc i64 %add31 to i32
  %call33 = call i32 @xcf_write(%struct.xcf_write_ctx* %61, i8* %62, i32 %conv32) #5
  %64 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call34 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %64, i32 0) #5
  %65 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call35 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %65, i32 0) #5
  %66 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %67 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset36 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %67, i32 0, i32 1
  %68 = load i32, i32* %offset36, align 4, !tbaa !8
  %add37 = add nsw i32 %68, 8
  %call38 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %66, i32 %add37) #5
  %69 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call39 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %69, i32 0) #5
  %70 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %71 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width40 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %71, i32 0, i32 2
  %72 = load i32, i32* %width40, align 4, !tbaa !78
  %call41 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %70, i32 %72) #5
  %73 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %74 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height42 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %74, i32 0, i32 3
  %75 = load i32, i32* %height42, align 4, !tbaa !80
  %call43 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %73, i32 %75) #5
  %76 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %77 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp44 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %77, i32 0, i32 4
  %78 = load i32, i32* %base_bytes_pp44, align 4, !tbaa !75
  %call45 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %76, i32 %78) #5
  %79 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %80 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset46 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %80, i32 0, i32 1
  %81 = load i32, i32* %offset46, align 4, !tbaa !8
  %82 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %82, i32 0, i32 9
  %83 = load i32, i32* %n_levels, align 4, !tbaa !84
  %add47 = add nsw i32 1, %83
  %mul48 = mul nsw i32 %add47, 4
  %add49 = add nsw i32 %81, %mul48
  %call50 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %79, i32 %add49) #5
  %84 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset51 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %84, i32 0, i32 1
  %85 = load i32, i32* %offset51, align 4, !tbaa !8
  %86 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width52 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %86, i32 0, i32 2
  %87 = load i32, i32* %width52, align 4, !tbaa !78
  %88 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height53 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %88, i32 0, i32 3
  %89 = load i32, i32* %height53, align 4, !tbaa !80
  %mul54 = mul nsw i32 %87, %89
  %90 = load i32, i32* %bytes_pp, align 4, !tbaa !40
  %mul55 = mul nsw i32 %mul54, %90
  %add56 = add nsw i32 %85, %mul55
  %91 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %91, i32 0, i32 8
  %92 = load i32, i32* %n_tiles, align 4, !tbaa !83
  %mul57 = mul nsw i32 %92, 4
  %add58 = add nsw i32 %add56, %mul57
  %add59 = add nsw i32 %add58, 12
  store i32 %add59, i32* %tile_offset, align 4, !tbaa !40
  store i32 1, i32* %level, align 4, !tbaa !40
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.67, %for.end
  %93 = load i32, i32* %level, align 4, !tbaa !40
  %94 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels61 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %94, i32 0, i32 9
  %95 = load i32, i32* %n_levels61, align 4, !tbaa !84
  %cmp62 = icmp slt i32 %93, %95
  br i1 %cmp62, label %for.body.64, label %for.end.69

for.body.64:                                      ; preds = %for.cond.60
  %96 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %97 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %call65 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %96, i32 %97) #5
  %98 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %add66 = add nsw i32 %98, 12
  store i32 %add66, i32* %tile_offset, align 4, !tbaa !40
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.64
  %99 = load i32, i32* %level, align 4, !tbaa !40
  %inc68 = add nsw i32 %99, 1
  store i32 %inc68, i32* %level, align 4, !tbaa !40
  br label %for.cond.60

for.end.69:                                       ; preds = %for.cond.60
  %100 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call70 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %100, i32 0) #5
  %101 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %102 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width71 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %102, i32 0, i32 2
  %103 = load i32, i32* %width71, align 4, !tbaa !78
  %call72 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %101, i32 %103) #5
  %104 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %105 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height73 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %105, i32 0, i32 3
  %106 = load i32, i32* %height73, align 4, !tbaa !80
  %call74 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %104, i32 %106) #5
  %107 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset75 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %107, i32 0, i32 1
  %108 = load i32, i32* %offset75, align 4, !tbaa !8
  %109 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles76 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %109, i32 0, i32 8
  %110 = load i32, i32* %n_tiles76, align 4, !tbaa !83
  %add77 = add nsw i32 %110, 1
  %mul78 = mul nsw i32 %add77, 4
  %add79 = add nsw i32 %108, %mul78
  store i32 %add79, i32* %tile_offset, align 4, !tbaa !40
  store i32 0, i32* %tile_idx, align 4, !tbaa !40
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.89, %for.end.69
  %111 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %112 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles81 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %112, i32 0, i32 8
  %113 = load i32, i32* %n_tiles81, align 4, !tbaa !83
  %cmp82 = icmp slt i32 %111, %113
  br i1 %cmp82, label %for.body.84, label %for.end.91

for.body.84:                                      ; preds = %for.cond.80
  %114 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %115 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %call85 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %114, i32 %115) #5
  %116 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %117 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %call86 = call i32 @xcf_tile_sizeof(%struct.xcf_write_ctx* %116, i32 %117) #5
  %118 = load i32, i32* %bytes_pp, align 4, !tbaa !40
  %mul87 = mul nsw i32 %call86, %118
  %119 = load i32, i32* %tile_offset, align 4, !tbaa !40
  %add88 = add nsw i32 %119, %mul87
  store i32 %add88, i32* %tile_offset, align 4, !tbaa !40
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.84
  %120 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %inc90 = add nsw i32 %120, 1
  store i32 %inc90, i32* %tile_idx, align 4, !tbaa !40
  br label %for.cond.80

for.end.91:                                       ; preds = %for.cond.80
  %121 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call92 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %121, i32 0) #5
  %122 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset93 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %122, i32 0, i32 1
  %123 = load i32, i32* %offset93, align 4, !tbaa !8
  %124 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %image_data_off = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %124, i32 0, i32 10
  store i32 %123, i32* %image_data_off, align 4, !tbaa !85
  %125 = load i32, i32* %code, align 4, !tbaa !40
  %126 = bitcast i32* %channel_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %tile_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %tile_offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i8** %layer_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #2
  %133 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #2
  ret i32 %125
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write_image_data(%struct.xcf_write_ctx* %xc, %struct.gx_device_printer_s* %pdev) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  %raster = alloca i32, align 4
  %tile_i = alloca i32, align 4
  %tile_j = alloca i32, align 4
  %tile_data = alloca i8**, align 8
  %line = alloca i8*, align 8
  %base_bytes_pp = alloca i32, align 4
  %n_extra_channels = alloca i32, align 4
  %bytes_pp = alloca i32, align 4
  %chan_idx = alloca i32, align 4
  %xdev = alloca %struct.xcf_device_s*, align 8
  %link = alloca i8*, align 8
  %tile_bytes = alloca i32, align 4
  %y0 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y = alloca i32, align 4
  %row = alloca i8*, align 8
  %tile_idx = alloca i32, align 4
  %tile_size = alloca i32, align 4
  %base_size = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !40
  %1 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %3, i32 0) #5
  store i32 %call, i32* %raster, align 4, !tbaa !40
  %4 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i8*** %tile_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %9, i32 0, i32 4
  %10 = load i32, i32* %base_bytes_pp1, align 4, !tbaa !75
  store i32 %10, i32* %base_bytes_pp, align 4, !tbaa !40
  %11 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels2 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %12, i32 0, i32 5
  %13 = load i32, i32* %n_extra_channels2, align 4, !tbaa !76
  store i32 %13, i32* %n_extra_channels, align 4, !tbaa !40
  %14 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %16 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %add = add nsw i32 %15, %16
  store i32 %add, i32* %bytes_pp, align 4, !tbaa !40
  %17 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gx_device_printer_s* %19 to %struct.xcf_device_s*
  store %struct.xcf_device_s* %20, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %21 = bitcast i8** %link to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.xcf_device_s*, %struct.xcf_device_s** %xdev, align 8, !tbaa !1
  %output_icc_link = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %22, i32 0, i32 82
  %23 = load i8*, i8** %output_icc_link, align 8, !tbaa !35
  store i8* %23, i8** %link, align 8, !tbaa !1
  %24 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !86
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !88
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory3 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory3, align 8, !tbaa !86
  %29 = load i32, i32* %raster, align 4, !tbaa !40
  %call4 = call i8* %26(%struct.gs_memory_s* %28, i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  store i8* %call4, i8** %line, align 8, !tbaa !1
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !86
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %31, i32 0, i32 1
  %alloc_bytes7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 7
  %32 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes7, align 8, !tbaa !88
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory8, align 8, !tbaa !86
  %35 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %35, i32 0, i32 6
  %36 = load i32, i32* %n_tiles_x, align 4, !tbaa !81
  %conv = sext i32 %36 to i64
  %mul = mul i64 %conv, 8
  %conv9 = trunc i64 %mul to i32
  %call10 = call i8* %32(%struct.gs_memory_s* %34, i32 %conv9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  %37 = bitcast i8* %call10 to i8**
  store i8** %37, i8*** %tile_data, align 8, !tbaa !1
  store i32 0, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %38 = load i32, i32* %tile_i, align 4, !tbaa !40
  %39 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x11 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %39, i32 0, i32 6
  %40 = load i32, i32* %n_tiles_x11, align 4, !tbaa !81
  %cmp = icmp slt i32 %38, %40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #2
  %42 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %43 = load i32, i32* %tile_i, align 4, !tbaa !40
  %call13 = call i32 @xcf_tile_sizeof(%struct.xcf_write_ctx* %42, i32 %43) #5
  %44 = load i32, i32* %bytes_pp, align 4, !tbaa !40
  %mul14 = mul nsw i32 %call13, %44
  store i32 %mul14, i32* %tile_bytes, align 4, !tbaa !40
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory15 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory15, align 8, !tbaa !86
  %procs16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 1
  %alloc_bytes17 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs16, i32 0, i32 7
  %47 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes17, align 8, !tbaa !88
  %48 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory18 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory18, align 8, !tbaa !86
  %50 = load i32, i32* %tile_bytes, align 4, !tbaa !40
  %call19 = call i8* %47(%struct.gs_memory_s* %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  %51 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom = sext i32 %51 to i64
  %52 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %52, i64 %idxprom
  store i8* %call19, i8** %arrayidx, align 8, !tbaa !1
  %53 = bitcast i32* %tile_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %53) #2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %tile_i, align 4, !tbaa !40
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %tile_j, align 4, !tbaa !40
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.69, %for.end
  %55 = load i32, i32* %tile_j, align 4, !tbaa !40
  %56 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_y = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %56, i32 0, i32 7
  %57 = load i32, i32* %n_tiles_y, align 4, !tbaa !82
  %cmp21 = icmp slt i32 %55, %57
  br i1 %cmp21, label %for.body.23, label %for.end.71

for.body.23:                                      ; preds = %for.cond.20
  %58 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %59 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #2
  %60 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #2
  %61 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %61) #2
  %62 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul24 = mul nsw i32 %62, 64
  store i32 %mul24, i32* %y0, align 4, !tbaa !40
  %63 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %63, i32 0, i32 3
  %64 = load i32, i32* %height, align 4, !tbaa !80
  %65 = load i32, i32* %y0, align 4, !tbaa !40
  %add25 = add nsw i32 %65, 64
  %cmp26 = icmp slt i32 %64, %add25
  br i1 %cmp26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.23
  %66 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height28 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %66, i32 0, i32 3
  %67 = load i32, i32* %height28, align 4, !tbaa !80
  br label %cond.end

cond.false:                                       ; preds = %for.body.23
  %68 = load i32, i32* %y0, align 4, !tbaa !40
  %add29 = add nsw i32 %68, 64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %67, %cond.true ], [ %add29, %cond.false ]
  store i32 %cond, i32* %y1, align 4, !tbaa !40
  %69 = load i32, i32* %y0, align 4, !tbaa !40
  store i32 %69, i32* %y, align 4, !tbaa !40
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.37, %cond.end
  %70 = load i32, i32* %y, align 4, !tbaa !40
  %71 = load i32, i32* %y1, align 4, !tbaa !40
  %cmp31 = icmp slt i32 %70, %71
  br i1 %cmp31, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.30
  %72 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %73 = load i32, i32* %y, align 4, !tbaa !40
  %74 = load i8*, i8** %line, align 8, !tbaa !1
  %call34 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %72, i32 %73, i8* %74, i8** %row) #5
  store i32 %call34, i32* %code, align 4, !tbaa !40
  %75 = load i8*, i8** %link, align 8, !tbaa !1
  %cmp35 = icmp eq i8* %75, null
  br i1 %cmp35, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.33
  %76 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %77 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %78 = load i8*, i8** %row, align 8, !tbaa !1
  %79 = load i32, i32* %y, align 4, !tbaa !40
  call void @xcf_shuffle_to_tile(%struct.xcf_write_ctx* %76, i8** %77, i8* %78, i32 %79) #5
  br label %if.end

if.else:                                          ; preds = %for.body.33
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %81 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %82 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %83 = load i8*, i8** %row, align 8, !tbaa !1
  %84 = load i32, i32* %y, align 4, !tbaa !40
  %85 = load i8*, i8** %link, align 8, !tbaa !1
  call void @xcf_icc_to_tile(%struct.gx_device_printer_s* %80, %struct.xcf_write_ctx* %81, i8** %82, i8* %83, i32 %84, i8* %85) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end
  %86 = load i32, i32* %y, align 4, !tbaa !40
  %inc38 = add nsw i32 %86, 1
  store i32 %inc38, i32* %y, align 4, !tbaa !40
  br label %for.cond.30

for.end.39:                                       ; preds = %for.cond.30
  store i32 0, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.66, %for.end.39
  %87 = load i32, i32* %tile_i, align 4, !tbaa !40
  %88 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x41 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %88, i32 0, i32 6
  %89 = load i32, i32* %n_tiles_x41, align 4, !tbaa !81
  %cmp42 = icmp slt i32 %87, %89
  br i1 %cmp42, label %for.body.44, label %for.end.68

for.body.44:                                      ; preds = %for.cond.40
  %90 = bitcast i32* %tile_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  %91 = load i32, i32* %tile_j, align 4, !tbaa !40
  %92 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x45 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %92, i32 0, i32 6
  %93 = load i32, i32* %n_tiles_x45, align 4, !tbaa !81
  %mul46 = mul nsw i32 %91, %93
  %94 = load i32, i32* %tile_i, align 4, !tbaa !40
  %add47 = add nsw i32 %mul46, %94
  store i32 %add47, i32* %tile_idx, align 4, !tbaa !40
  %95 = bitcast i32* %tile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #2
  %96 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %97 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %call48 = call i32 @xcf_tile_sizeof(%struct.xcf_write_ctx* %96, i32 %97) #5
  store i32 %call48, i32* %tile_size, align 4, !tbaa !40
  %98 = bitcast i32* %base_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  %99 = load i32, i32* %tile_size, align 4, !tbaa !40
  %100 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %mul49 = mul nsw i32 %99, %100
  store i32 %mul49, i32* %base_size, align 4, !tbaa !40
  %101 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %102 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom50 = sext i32 %102 to i64
  %103 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds i8*, i8** %103, i64 %idxprom50
  %104 = load i8*, i8** %arrayidx51, align 8, !tbaa !1
  %105 = load i32, i32* %base_size, align 4, !tbaa !40
  %call52 = call i32 @xcf_write(%struct.xcf_write_ctx* %101, i8* %104, i32 %105) #5
  store i32 0, i32* %chan_idx, align 4, !tbaa !40
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.63, %for.body.44
  %106 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %107 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %cmp54 = icmp slt i32 %106, %107
  br i1 %cmp54, label %for.body.56, label %for.end.65

for.body.56:                                      ; preds = %for.cond.53
  %108 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %109 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom57 = sext i32 %109 to i64
  %110 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8*, i8** %110, i64 %idxprom57
  %111 = load i8*, i8** %arrayidx58, align 8, !tbaa !1
  %112 = load i32, i32* %base_size, align 4, !tbaa !40
  %idx.ext = sext i32 %112 to i64
  %add.ptr = getelementptr inbounds i8, i8* %111, i64 %idx.ext
  %113 = load i32, i32* %tile_size, align 4, !tbaa !40
  %114 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %mul59 = mul nsw i32 %113, %114
  %idx.ext60 = sext i32 %mul59 to i64
  %add.ptr61 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext60
  %115 = load i32, i32* %tile_size, align 4, !tbaa !40
  %call62 = call i32 @xcf_write(%struct.xcf_write_ctx* %108, i8* %add.ptr61, i32 %115) #5
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.56
  %116 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %inc64 = add nsw i32 %116, 1
  store i32 %inc64, i32* %chan_idx, align 4, !tbaa !40
  br label %for.cond.53

for.end.65:                                       ; preds = %for.cond.53
  %117 = bitcast i32* %base_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #2
  %118 = bitcast i32* %tile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %tile_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %120 = load i32, i32* %tile_i, align 4, !tbaa !40
  %inc67 = add nsw i32 %120, 1
  store i32 %inc67, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond.40

for.end.68:                                       ; preds = %for.cond.40
  %121 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #2
  %122 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #2
  %123 = bitcast i32* %y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #2
  %124 = bitcast i32* %y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %125 = load i32, i32* %tile_j, align 4, !tbaa !40
  %inc70 = add nsw i32 %125, 1
  store i32 %inc70, i32* %tile_j, align 4, !tbaa !40
  br label %for.cond.20

for.end.71:                                       ; preds = %for.cond.20
  store i32 0, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.82, %for.end.71
  %126 = load i32, i32* %tile_i, align 4, !tbaa !40
  %127 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x73 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %127, i32 0, i32 6
  %128 = load i32, i32* %n_tiles_x73, align 4, !tbaa !81
  %cmp74 = icmp slt i32 %126, %128
  br i1 %cmp74, label %for.body.76, label %for.end.84

for.body.76:                                      ; preds = %for.cond.72
  %129 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory77 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory77, align 8, !tbaa !86
  %procs78 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs78, i32 0, i32 2
  %131 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !91
  %132 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory79 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory79, align 8, !tbaa !86
  %134 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom80 = sext i32 %134 to i64
  %135 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8*, i8** %135, i64 %idxprom80
  %136 = load i8*, i8** %arrayidx81, align 8, !tbaa !1
  call void %131(%struct.gs_memory_s* %133, i8* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  br label %for.inc.82

for.inc.82:                                       ; preds = %for.body.76
  %137 = load i32, i32* %tile_i, align 4, !tbaa !40
  %inc83 = add nsw i32 %137, 1
  store i32 %inc83, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond.72

for.end.84:                                       ; preds = %for.cond.72
  %138 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory85 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %138, i32 0, i32 3
  %139 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory85, align 8, !tbaa !86
  %procs86 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %139, i32 0, i32 1
  %free_object87 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs86, i32 0, i32 2
  %140 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object87, align 8, !tbaa !91
  %141 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory88 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %141, i32 0, i32 3
  %142 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory88, align 8, !tbaa !86
  %143 = load i8**, i8*** %tile_data, align 8, !tbaa !1
  %144 = bitcast i8** %143 to i8*
  call void %140(%struct.gs_memory_s* %142, i8* %144, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  %145 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory89 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %145, i32 0, i32 3
  %146 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory89, align 8, !tbaa !86
  %procs90 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %146, i32 0, i32 1
  %free_object91 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs90, i32 0, i32 2
  %147 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object91, align 8, !tbaa !91
  %148 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory92 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %148, i32 0, i32 3
  %149 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory92, align 8, !tbaa !86
  %150 = load i8*, i8** %line, align 8, !tbaa !1
  call void %147(%struct.gs_memory_s* %149, i8* %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i32 0, i32 0)) #5
  %151 = load i32, i32* %code, align 4, !tbaa !40
  %152 = bitcast i8** %link to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #2
  %153 = bitcast %struct.xcf_device_s** %xdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #2
  %154 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #2
  %155 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #2
  %156 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #2
  %157 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #2
  %158 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %158) #2
  %159 = bitcast i8*** %tile_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %159) #2
  %160 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #2
  %162 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #2
  %163 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #2
  ret i32 %151
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write_footer(%struct.xcf_write_ctx* %xc, %struct.xcf_device_s* %pdev) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %pdev.addr = alloca %struct.xcf_device_s*, align 8
  %code = alloca i32, align 4
  %base_bytes_pp = alloca i32, align 4
  %n_extra_channels = alloca i32, align 4
  %bytes_pp = alloca i32, align 4
  %chan_idx = alloca i32, align 4
  %separation_name = alloca %struct.gs_param_string_s*, align 8
  %nullbyte = alloca [1 x i8], align 1
  %level = alloca i32, align 4
  %offset = alloca i32, align 4
  %tile_idx = alloca i32, align 4
  %tile_size = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store %struct.xcf_device_s* %pdev, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !40
  %1 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %2, i32 0, i32 4
  %3 = load i32, i32* %base_bytes_pp1, align 4, !tbaa !75
  store i32 %3, i32* %base_bytes_pp, align 4, !tbaa !40
  %4 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels2 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %5, i32 0, i32 5
  %6 = load i32, i32* %n_extra_channels2, align 4, !tbaa !76
  store i32 %6, i32* %n_extra_channels, align 4, !tbaa !40
  %7 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %9 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %add = add nsw i32 %8, %9
  store i32 %add, i32* %bytes_pp, align 4, !tbaa !40
  %10 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call = call i32 @xcf_write_fake_hierarchy(%struct.xcf_write_ctx* %11) #5
  store i32 0, i32* %chan_idx, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %12 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %13 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels3 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %13, i32 0, i32 5
  %14 = load i32, i32* %n_extra_channels3, align 4, !tbaa !76
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %15 = bitcast %struct.gs_param_string_s** %separation_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %17, i32 0, i32 72
  %names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names, i32 0, i64 %idxprom
  %18 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx, align 8, !tbaa !1
  store %struct.gs_param_string_s* %18, %struct.gs_param_string_s** %separation_name, align 8, !tbaa !1
  %19 = bitcast [1 x i8]* %nullbyte to i8*
  call void @llvm.lifetime.start(i64 1, i8* %19) #2
  %20 = bitcast [1 x i8]* %nullbyte to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 1, i32 1, i1 false)
  %21 = bitcast i32* %level to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %tile_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !69
  call void @dmprintf_file_and_line(%struct.gs_memory_s* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i32 1414) #5
  %26 = load %struct.xcf_device_s*, %struct.xcf_device_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.xcf_device_s, %struct.xcf_device_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !69
  %28 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset5 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %28, i32 0, i32 1
  %29 = load i32, i32* %offset5, align 4, !tbaa !8
  %call6 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i32 %29, i32 8) #5
  %30 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %31 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %31, i32 0, i32 2
  %32 = load i32, i32* %width, align 4, !tbaa !78
  %call7 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %30, i32 %32) #5
  %33 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %34 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %34, i32 0, i32 3
  %35 = load i32, i32* %height, align 4, !tbaa !80
  %call8 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %33, i32 %35) #5
  %36 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %37 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %separation_name, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %37, i32 0, i32 1
  %38 = load i32, i32* %size, align 4, !tbaa !47
  %add9 = add i32 %38, 1
  %call10 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %36, i32 %add9) #5
  %39 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %40 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %separation_name, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %40, i32 0, i32 0
  %41 = load i8*, i8** %data, align 8, !tbaa !45
  %42 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %separation_name, align 8, !tbaa !1
  %size11 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %42, i32 0, i32 1
  %43 = load i32, i32* %size11, align 4, !tbaa !47
  %call12 = call i32 @xcf_write(%struct.xcf_write_ctx* %39, i8* %41, i32 %43) #5
  %44 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %nullbyte, i32 0, i32 0
  %call13 = call i32 @xcf_write(%struct.xcf_write_ctx* %44, i8* %arraydecay, i32 1) #5
  %45 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call14 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %45, i32 0) #5
  %46 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call15 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %46, i32 0) #5
  %47 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %48 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset16 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %48, i32 0, i32 1
  %49 = load i32, i32* %offset16, align 4, !tbaa !8
  %add17 = add nsw i32 %49, 4
  %call18 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %47, i32 %add17) #5
  %50 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %51 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width19 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %51, i32 0, i32 2
  %52 = load i32, i32* %width19, align 4, !tbaa !78
  %call20 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %50, i32 %52) #5
  %53 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %54 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %54, i32 0, i32 3
  %55 = load i32, i32* %height21, align 4, !tbaa !80
  %call22 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %53, i32 %55) #5
  %56 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call23 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %56, i32 1) #5
  %57 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %58 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset24 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %58, i32 0, i32 1
  %59 = load i32, i32* %offset24, align 4, !tbaa !8
  %60 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %60, i32 0, i32 9
  %61 = load i32, i32* %n_levels, align 4, !tbaa !84
  %mul = mul nsw i32 %61, 16
  %add25 = add nsw i32 %59, %mul
  %sub = sub nsw i32 %add25, 8
  %call26 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %57, i32 %sub) #5
  %62 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset27 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %62, i32 0, i32 1
  %63 = load i32, i32* %offset27, align 4, !tbaa !8
  %64 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels28 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %64, i32 0, i32 9
  %65 = load i32, i32* %n_levels28, align 4, !tbaa !84
  %mul29 = mul nsw i32 %65, 4
  %add30 = add nsw i32 %63, %mul29
  store i32 %add30, i32* %offset, align 4, !tbaa !40
  store i32 1, i32* %level, align 4, !tbaa !40
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %for.body
  %66 = load i32, i32* %level, align 4, !tbaa !40
  %67 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels32 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %67, i32 0, i32 9
  %68 = load i32, i32* %n_levels32, align 4, !tbaa !84
  %cmp33 = icmp slt i32 %66, %68
  br i1 %cmp33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.31
  %69 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %70 = load i32, i32* %offset, align 4, !tbaa !40
  %call35 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %69, i32 %70) #5
  %71 = load i32, i32* %offset, align 4, !tbaa !40
  %add36 = add nsw i32 %71, 12
  store i32 %add36, i32* %offset, align 4, !tbaa !40
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %72 = load i32, i32* %level, align 4, !tbaa !40
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %level, align 4, !tbaa !40
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  %73 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call37 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %73, i32 0) #5
  %74 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call38 = call i32 @xcf_write_fake_hierarchy(%struct.xcf_write_ctx* %74) #5
  %75 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %76 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width39 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %76, i32 0, i32 2
  %77 = load i32, i32* %width39, align 4, !tbaa !78
  %call40 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %75, i32 %77) #5
  %78 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %79 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height41 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %79, i32 0, i32 3
  %80 = load i32, i32* %height41, align 4, !tbaa !80
  %call42 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %78, i32 %80) #5
  %81 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %image_data_off = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %81, i32 0, i32 10
  %82 = load i32, i32* %image_data_off, align 4, !tbaa !85
  store i32 %82, i32* %offset, align 4, !tbaa !40
  store i32 0, i32* %tile_idx, align 4, !tbaa !40
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.53, %for.end
  %83 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %84 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %84, i32 0, i32 8
  %85 = load i32, i32* %n_tiles, align 4, !tbaa !83
  %cmp44 = icmp slt i32 %83, %85
  br i1 %cmp44, label %for.body.45, label %for.end.55

for.body.45:                                      ; preds = %for.cond.43
  %86 = bitcast i32* %tile_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %86) #2
  %87 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %88 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %call46 = call i32 @xcf_tile_sizeof(%struct.xcf_write_ctx* %87, i32 %88) #5
  store i32 %call46, i32* %tile_size, align 4, !tbaa !40
  %89 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %90 = load i32, i32* %offset, align 4, !tbaa !40
  %91 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %92 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %add47 = add nsw i32 %91, %92
  %93 = load i32, i32* %tile_size, align 4, !tbaa !40
  %mul48 = mul nsw i32 %add47, %93
  %add49 = add nsw i32 %90, %mul48
  %call50 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %89, i32 %add49) #5
  %94 = load i32, i32* %bytes_pp, align 4, !tbaa !40
  %95 = load i32, i32* %tile_size, align 4, !tbaa !40
  %mul51 = mul nsw i32 %94, %95
  %96 = load i32, i32* %offset, align 4, !tbaa !40
  %add52 = add nsw i32 %96, %mul51
  store i32 %add52, i32* %offset, align 4, !tbaa !40
  %97 = bitcast i32* %tile_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.45
  %98 = load i32, i32* %tile_idx, align 4, !tbaa !40
  %inc54 = add nsw i32 %98, 1
  store i32 %inc54, i32* %tile_idx, align 4, !tbaa !40
  br label %for.cond.43

for.end.55:                                       ; preds = %for.cond.43
  %99 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call56 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %99, i32 0) #5
  %100 = bitcast i32* %tile_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #2
  %101 = bitcast i32* %offset to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #2
  %102 = bitcast i32* %level to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #2
  %103 = bitcast [1 x i8]* %nullbyte to i8*
  call void @llvm.lifetime.end(i64 1, i8* %103) #2
  %104 = bitcast %struct.gs_param_string_s** %separation_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #2
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.end.55
  %105 = load i32, i32* %chan_idx, align 4, !tbaa !40
  %inc58 = add nsw i32 %105, 1
  store i32 %inc58, i32* %chan_idx, align 4, !tbaa !40
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  %106 = load i32, i32* %code, align 4, !tbaa !40
  %107 = bitcast i32* %chan_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #2
  %108 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #2
  %109 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #2
  %110 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #2
  %111 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #2
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_calc_levels(i32 %size, i32 %tile_size) #1 {
entry:
  %size.addr = alloca i32, align 4
  %tile_size.addr = alloca i32, align 4
  %levels = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4, !tbaa !40
  store i32 %tile_size, i32* %tile_size.addr, align 4, !tbaa !40
  %0 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 1, i32* %levels, align 4, !tbaa !40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %size.addr, align 4, !tbaa !40
  %2 = load i32, i32* %tile_size.addr, align 4, !tbaa !40
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %size.addr, align 4, !tbaa !40
  %shr = ashr i32 %3, 1
  store i32 %shr, i32* %size.addr, align 4, !tbaa !40
  %4 = load i32, i32* %levels, align 4, !tbaa !40
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %levels, align 4, !tbaa !40
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %levels, align 4, !tbaa !40
  %6 = bitcast i32* %levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write(%struct.xcf_write_ctx* %xc, i8* %buf, i32 %size) #1 {
entry:
  %retval = alloca i32, align 4
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !40
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i8*, i8** %buf.addr, align 8, !tbaa !1
  %2 = load i32, i32* %size.addr, align 4, !tbaa !40
  %conv = sext i32 %2 to i64
  %3 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %3, i32 0, i32 0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !5
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv, %struct._IO_FILE* %4) #5
  %conv1 = trunc i64 %call to i32
  store i32 %conv1, i32* %code, align 4, !tbaa !40
  %5 = load i32, i32* %code, align 4, !tbaa !40
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !40
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %code, align 4, !tbaa !40
  %8 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %offset = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %8, i32 0, i32 1
  %9 = load i32, i32* %offset, align 4, !tbaa !8
  %add = add nsw i32 %9, %7
  store i32 %add, i32* %offset, align 4, !tbaa !8
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write_32(%struct.xcf_write_ctx* %xc, i32 %v) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %v.addr = alloca i32, align 4
  %buf = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i32 %v, i32* %v.addr, align 4, !tbaa !40
  %0 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %v.addr, align 4, !tbaa !40
  %shr = lshr i32 %1, 24
  %and = and i32 %shr, 255
  %2 = load i32, i32* %v.addr, align 4, !tbaa !40
  %shr1 = lshr i32 %2, 8
  %and2 = and i32 %shr1, 65280
  %add = add i32 %and, %and2
  %3 = load i32, i32* %v.addr, align 4, !tbaa !40
  %and3 = and i32 %3, 65280
  %shl = shl i32 %and3, 8
  %add4 = add i32 %add, %shl
  %4 = load i32, i32* %v.addr, align 4, !tbaa !40
  %and5 = and i32 %4, 255
  %shl6 = shl i32 %and5, 24
  %add7 = add i32 %add4, %shl6
  store i32 %add7, i32* %buf, align 4, !tbaa !40
  %5 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %6 = bitcast i32* %buf to i8*
  %call = call i32 @xcf_write(%struct.xcf_write_ctx* %5, i8* %6, i32 4) #5
  %7 = bitcast i32* %buf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write_image_props(%struct.xcf_write_ctx* %xc) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %code = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %code, align 4, !tbaa !40
  %1 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call = call i32 @xcf_write_32(%struct.xcf_write_ctx* %1, i32 0) #5
  %2 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call1 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %2, i32 0) #5
  %3 = load i32, i32* %code, align 4, !tbaa !40
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %4) #2
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_base_size(%struct.xcf_write_ctx* %xc, i8* %layer_name) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %layer_name.addr = alloca i8*, align 8
  %bytes_pp = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i8* %layer_name, i8** %layer_name.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %1, i32 0, i32 4
  %2 = load i32, i32* %base_bytes_pp, align 4, !tbaa !75
  %3 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %3, i32 0, i32 5
  %4 = load i32, i32* %n_extra_channels, align 4, !tbaa !76
  %add = add nsw i32 %2, %4
  store i32 %add, i32* %bytes_pp, align 4, !tbaa !40
  %5 = load i8*, i8** %layer_name.addr, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %5) #6
  %add1 = add i64 17, %call
  %add2 = add i64 %add1, 8
  %add3 = add i64 %add2, 12
  %6 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %6, i32 0, i32 9
  %7 = load i32, i32* %n_levels, align 4, !tbaa !84
  %mul = mul nsw i32 %7, 16
  %conv = sext i32 %mul to i64
  %add4 = add i64 %add3, %conv
  %add5 = add i64 %add4, 12
  %8 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %8, i32 0, i32 8
  %9 = load i32, i32* %n_tiles, align 4, !tbaa !83
  %mul6 = mul nsw i32 %9, 4
  %conv7 = sext i32 %mul6 to i64
  %add8 = add i64 %add5, %conv7
  %10 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4, !tbaa !78
  %12 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %12, i32 0, i32 3
  %13 = load i32, i32* %height, align 4, !tbaa !80
  %mul9 = mul nsw i32 %11, %13
  %14 = load i32, i32* %bytes_pp, align 4, !tbaa !40
  %mul10 = mul nsw i32 %mul9, %14
  %conv11 = sext i32 %mul10 to i64
  %add12 = add i64 %add8, %conv11
  %conv13 = trunc i64 %add12 to i32
  %15 = bitcast i32* %bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret i32 %conv13
}

declare void @dmprintf_file_and_line(%struct.gs_memory_s*, i8*, i32) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

; Function Attrs: nounwind uwtable
define internal i32 @xcf_channel_size(%struct.xcf_write_ctx* %xc, i32 %name_size) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %name_size.addr = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !40
  %0 = load i32, i32* %name_size.addr, align 4, !tbaa !40
  %add = add nsw i32 17, %0
  %add1 = add nsw i32 %add, 8
  %add2 = add nsw i32 %add1, 4
  %1 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %1, i32 0, i32 9
  %2 = load i32, i32* %n_levels, align 4, !tbaa !84
  %mul = mul nsw i32 %2, 16
  %add3 = add nsw i32 %add2, %mul
  %add4 = add nsw i32 %add3, 12
  %3 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %3, i32 0, i32 8
  %4 = load i32, i32* %n_tiles, align 4, !tbaa !83
  %mul5 = mul nsw i32 %4, 4
  %add6 = add nsw i32 %add4, %mul5
  ret i32 %add6
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_tile_sizeof(%struct.xcf_write_ctx* %xc, i32 %tile_idx) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %tile_idx.addr = alloca i32, align 4
  %tile_i = alloca i32, align 4
  %tile_j = alloca i32, align 4
  %tile_size_x = alloca i32, align 4
  %tile_size_y = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i32 %tile_idx, i32* %tile_idx.addr, align 4, !tbaa !40
  %0 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %tile_idx.addr, align 4, !tbaa !40
  %2 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %2, i32 0, i32 6
  %3 = load i32, i32* %n_tiles_x, align 4, !tbaa !81
  %rem = srem i32 %1, %3
  store i32 %rem, i32* %tile_i, align 4, !tbaa !40
  %4 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %tile_idx.addr, align 4, !tbaa !40
  %6 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %6, i32 0, i32 6
  %7 = load i32, i32* %n_tiles_x1, align 4, !tbaa !81
  %div = sdiv i32 %5, %7
  store i32 %div, i32* %tile_j, align 4, !tbaa !40
  %8 = bitcast i32* %tile_size_x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %9, i32 0, i32 2
  %10 = load i32, i32* %width, align 4, !tbaa !78
  %11 = load i32, i32* %tile_i, align 4, !tbaa !40
  %mul = mul nsw i32 %11, 64
  %sub = sub nsw i32 %10, %mul
  %cmp = icmp slt i32 64, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width2 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %12, i32 0, i32 2
  %13 = load i32, i32* %width2, align 4, !tbaa !78
  %14 = load i32, i32* %tile_i, align 4, !tbaa !40
  %mul3 = mul nsw i32 %14, 64
  %sub4 = sub nsw i32 %13, %mul3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 64, %cond.true ], [ %sub4, %cond.false ]
  store i32 %cond, i32* %tile_size_x, align 4, !tbaa !40
  %15 = bitcast i32* %tile_size_y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %16, i32 0, i32 3
  %17 = load i32, i32* %height, align 4, !tbaa !80
  %18 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul5 = mul nsw i32 %18, 64
  %sub6 = sub nsw i32 %17, %mul5
  %cmp7 = icmp slt i32 64, %sub6
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %19 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height10 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %19, i32 0, i32 3
  %20 = load i32, i32* %height10, align 4, !tbaa !80
  %21 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul11 = mul nsw i32 %21, 64
  %sub12 = sub nsw i32 %20, %mul11
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.8
  %cond14 = phi i32 [ 64, %cond.true.8 ], [ %sub12, %cond.false.9 ]
  store i32 %cond14, i32* %tile_size_y, align 4, !tbaa !40
  %22 = load i32, i32* %tile_size_x, align 4, !tbaa !40
  %23 = load i32, i32* %tile_size_y, align 4, !tbaa !40
  %mul15 = mul nsw i32 %22, %23
  %24 = bitcast i32* %tile_size_y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %tile_size_x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  ret i32 %mul15
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind uwtable
define internal void @xcf_shuffle_to_tile(%struct.xcf_write_ctx* %xc, i8** %tile_data, i8* %row, i32 %y) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %tile_data.addr = alloca i8**, align 8
  %row.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %tile_j = alloca i32, align 4
  %yrem = alloca i32, align 4
  %tile_i = alloca i32, align 4
  %base_bytes_pp = alloca i32, align 4
  %n_extra_channels = alloca i32, align 4
  %row_idx = alloca i32, align 4
  %x = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %base_ptr = alloca i8*, align 8
  %extra_stride = alloca i32, align 4
  %extra_ptr = alloca i8*, align 8
  %base_idx = alloca i32, align 4
  %plane_idx = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i8** %tile_data, i8*** %tile_data.addr, align 8, !tbaa !1
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !40
  %0 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %y.addr, align 4, !tbaa !40
  %div = sdiv i32 %1, 64
  store i32 %div, i32* %tile_j, align 4, !tbaa !40
  %2 = bitcast i32* %yrem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %y.addr, align 4, !tbaa !40
  %rem = srem i32 %3, 64
  store i32 %rem, i32* %yrem, align 4, !tbaa !40
  %4 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %6, i32 0, i32 4
  %7 = load i32, i32* %base_bytes_pp1, align 4, !tbaa !75
  store i32 %7, i32* %base_bytes_pp, align 4, !tbaa !40
  %8 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels2 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %9, i32 0, i32 5
  %10 = load i32, i32* %n_extra_channels2, align 4, !tbaa !76
  store i32 %10, i32* %n_extra_channels, align 4, !tbaa !40
  %11 = bitcast i32* %row_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %row_idx, align 4, !tbaa !40
  store i32 0, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %12 = load i32, i32* %tile_i, align 4, !tbaa !40
  %13 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %13, i32 0, i32 6
  %14 = load i32, i32* %n_tiles_x, align 4, !tbaa !81
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %17, i32 0, i32 2
  %18 = load i32, i32* %width, align 4, !tbaa !78
  %19 = load i32, i32* %tile_i, align 4, !tbaa !40
  %mul = mul nsw i32 %19, 64
  %sub = sub nsw i32 %18, %mul
  %cmp3 = icmp slt i32 64, %sub
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %20, i32 0, i32 2
  %21 = load i32, i32* %width4, align 4, !tbaa !78
  %22 = load i32, i32* %tile_i, align 4, !tbaa !40
  %mul5 = mul nsw i32 %22, 64
  %sub6 = sub nsw i32 %21, %mul5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 64, %cond.true ], [ %sub6, %cond.false ]
  store i32 %cond, i32* %tile_width, align 4, !tbaa !40
  %23 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %24, i32 0, i32 3
  %25 = load i32, i32* %height, align 4, !tbaa !80
  %26 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul7 = mul nsw i32 %26, 64
  %sub8 = sub nsw i32 %25, %mul7
  %cmp9 = icmp slt i32 64, %sub8
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.11:                                    ; preds = %cond.end
  %27 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height12 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %27, i32 0, i32 3
  %28 = load i32, i32* %height12, align 4, !tbaa !80
  %29 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul13 = mul nsw i32 %29, 64
  %sub14 = sub nsw i32 %28, %mul13
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.11, %cond.true.10
  %cond16 = phi i32 [ 64, %cond.true.10 ], [ %sub14, %cond.false.11 ]
  store i32 %cond16, i32* %tile_height, align 4, !tbaa !40
  %30 = bitcast i8** %base_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom = sext i32 %31 to i64
  %32 = load i8**, i8*** %tile_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  %33 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %34 = load i32, i32* %yrem, align 4, !tbaa !40
  %35 = load i32, i32* %tile_width, align 4, !tbaa !40
  %mul17 = mul nsw i32 %34, %35
  %36 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %mul18 = mul nsw i32 %mul17, %36
  %idx.ext = sext i32 %mul18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %base_ptr, align 8, !tbaa !1
  %37 = bitcast i32* %extra_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i32, i32* %tile_width, align 4, !tbaa !40
  %39 = load i32, i32* %tile_height, align 4, !tbaa !40
  %mul19 = mul nsw i32 %38, %39
  store i32 %mul19, i32* %extra_stride, align 4, !tbaa !40
  %40 = bitcast i8** %extra_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom20 = sext i32 %41 to i64
  %42 = load i8**, i8*** %tile_data.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8*, i8** %42, i64 %idxprom20
  %43 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %44 = load i32, i32* %extra_stride, align 4, !tbaa !40
  %45 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %mul22 = mul nsw i32 %44, %45
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %43, i64 %idx.ext23
  %46 = load i32, i32* %yrem, align 4, !tbaa !40
  %47 = load i32, i32* %tile_width, align 4, !tbaa !40
  %mul25 = mul nsw i32 %46, %47
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.ext26
  store i8* %add.ptr27, i8** %extra_ptr, align 8, !tbaa !1
  %48 = bitcast i32* %base_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 0, i32* %base_idx, align 4, !tbaa !40
  store i32 0, i32* %x, align 4, !tbaa !40
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.53, %cond.end.15
  %49 = load i32, i32* %x, align 4, !tbaa !40
  %50 = load i32, i32* %tile_width, align 4, !tbaa !40
  %cmp29 = icmp slt i32 %49, %50
  br i1 %cmp29, label %for.body.30, label %for.end.55

for.body.30:                                      ; preds = %for.cond.28
  %51 = bitcast i32* %plane_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  store i32 0, i32* %plane_idx, align 4, !tbaa !40
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %for.body.30
  %52 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %53 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %cmp32 = icmp slt i32 %52, %53
  br i1 %cmp32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.31
  %54 = load i32, i32* %row_idx, align 4, !tbaa !40
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %row_idx, align 4, !tbaa !40
  %idxprom34 = sext i32 %54 to i64
  %55 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds i8, i8* %55, i64 %idxprom34
  %56 = load i8, i8* %arrayidx35, align 1, !tbaa !50
  %57 = load i32, i32* %base_idx, align 4, !tbaa !40
  %inc36 = add nsw i32 %57, 1
  store i32 %inc36, i32* %base_idx, align 4, !tbaa !40
  %idxprom37 = sext i32 %57 to i64
  %58 = load i8*, i8** %base_ptr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i8, i8* %58, i64 %idxprom37
  store i8 %56, i8* %arrayidx38, align 1, !tbaa !50
  br label %for.inc

for.inc:                                          ; preds = %for.body.33
  %59 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %inc39 = add nsw i32 %59, 1
  store i32 %inc39, i32* %plane_idx, align 4, !tbaa !40
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  store i32 0, i32* %plane_idx, align 4, !tbaa !40
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.50, %for.end
  %60 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %61 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %cmp41 = icmp slt i32 %60, %61
  br i1 %cmp41, label %for.body.42, label %for.end.52

for.body.42:                                      ; preds = %for.cond.40
  %62 = load i32, i32* %row_idx, align 4, !tbaa !40
  %inc43 = add nsw i32 %62, 1
  store i32 %inc43, i32* %row_idx, align 4, !tbaa !40
  %idxprom44 = sext i32 %62 to i64
  %63 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i8, i8* %63, i64 %idxprom44
  %64 = load i8, i8* %arrayidx45, align 1, !tbaa !50
  %conv = zext i8 %64 to i32
  %xor = xor i32 255, %conv
  %conv46 = trunc i32 %xor to i8
  %65 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %66 = load i32, i32* %extra_stride, align 4, !tbaa !40
  %mul47 = mul nsw i32 %65, %66
  %67 = load i32, i32* %x, align 4, !tbaa !40
  %add = add nsw i32 %mul47, %67
  %idxprom48 = sext i32 %add to i64
  %68 = load i8*, i8** %extra_ptr, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds i8, i8* %68, i64 %idxprom48
  store i8 %conv46, i8* %arrayidx49, align 1, !tbaa !50
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.42
  %69 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %inc51 = add nsw i32 %69, 1
  store i32 %inc51, i32* %plane_idx, align 4, !tbaa !40
  br label %for.cond.40

for.end.52:                                       ; preds = %for.cond.40
  %70 = bitcast i32* %plane_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %71 = load i32, i32* %x, align 4, !tbaa !40
  %inc54 = add nsw i32 %71, 1
  store i32 %inc54, i32* %x, align 4, !tbaa !40
  br label %for.cond.28

for.end.55:                                       ; preds = %for.cond.28
  %72 = bitcast i32* %base_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i8** %extra_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i32* %extra_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i8** %base_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55
  %79 = load i32, i32* %tile_i, align 4, !tbaa !40
  %inc57 = add nsw i32 %79, 1
  store i32 %inc57, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %80 = bitcast i32* %row_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %yrem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xcf_icc_to_tile(%struct.gx_device_printer_s* %pdev, %struct.xcf_write_ctx* %xc, i8** %tile_data, i8* %row, i32 %y, i8* %link) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %tile_data.addr = alloca i8**, align 8
  %row.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  %link.addr = alloca i8*, align 8
  %tile_j = alloca i32, align 4
  %yrem = alloca i32, align 4
  %tile_i = alloca i32, align 4
  %base_bytes_pp = alloca i32, align 4
  %n_extra_channels = alloca i32, align 4
  %row_idx = alloca i32, align 4
  %x = alloca i32, align 4
  %tile_width = alloca i32, align 4
  %tile_height = alloca i32, align 4
  %base_ptr = alloca i8*, align 8
  %extra_stride = alloca i32, align 4
  %extra_ptr = alloca i8*, align 8
  %base_idx = alloca i32, align 4
  %plane_idx = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  store i8** %tile_data, i8*** %tile_data.addr, align 8, !tbaa !1
  store i8* %row, i8** %row.addr, align 8, !tbaa !1
  store i32 %y, i32* %y.addr, align 4, !tbaa !40
  store i8* %link, i8** %link.addr, align 8, !tbaa !1
  %0 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load i32, i32* %y.addr, align 4, !tbaa !40
  %div = sdiv i32 %1, 64
  store i32 %div, i32* %tile_j, align 4, !tbaa !40
  %2 = bitcast i32* %yrem to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %y.addr, align 4, !tbaa !40
  %rem = srem i32 %3, 64
  store i32 %rem, i32* %yrem, align 4, !tbaa !40
  %4 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %base_bytes_pp1 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %6, i32 0, i32 4
  %7 = load i32, i32* %base_bytes_pp1, align 4, !tbaa !75
  store i32 %7, i32* %base_bytes_pp, align 4, !tbaa !40
  %8 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_extra_channels2 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %9, i32 0, i32 5
  %10 = load i32, i32* %n_extra_channels2, align 4, !tbaa !76
  store i32 %10, i32* %n_extra_channels, align 4, !tbaa !40
  %11 = bitcast i32* %row_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  store i32 0, i32* %row_idx, align 4, !tbaa !40
  store i32 0, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc.48, %entry
  %12 = load i32, i32* %tile_i, align 4, !tbaa !40
  %13 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_tiles_x = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %13, i32 0, i32 6
  %14 = load i32, i32* %n_tiles_x, align 4, !tbaa !81
  %cmp = icmp slt i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end.50

for.body:                                         ; preds = %for.cond
  %15 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %17, i32 0, i32 2
  %18 = load i32, i32* %width, align 4, !tbaa !78
  %19 = load i32, i32* %tile_i, align 4, !tbaa !40
  %mul = mul nsw i32 %19, 64
  %sub = sub nsw i32 %18, %mul
  %cmp3 = icmp slt i32 64, %sub
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %20 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width4 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %20, i32 0, i32 2
  %21 = load i32, i32* %width4, align 4, !tbaa !78
  %22 = load i32, i32* %tile_i, align 4, !tbaa !40
  %mul5 = mul nsw i32 %22, 64
  %sub6 = sub nsw i32 %21, %mul5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 64, %cond.true ], [ %sub6, %cond.false ]
  store i32 %cond, i32* %tile_width, align 4, !tbaa !40
  %23 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  %24 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %24, i32 0, i32 3
  %25 = load i32, i32* %height, align 4, !tbaa !80
  %26 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul7 = mul nsw i32 %26, 64
  %sub8 = sub nsw i32 %25, %mul7
  %cmp9 = icmp slt i32 64, %sub8
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end
  br label %cond.end.15

cond.false.11:                                    ; preds = %cond.end
  %27 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height12 = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %27, i32 0, i32 3
  %28 = load i32, i32* %height12, align 4, !tbaa !80
  %29 = load i32, i32* %tile_j, align 4, !tbaa !40
  %mul13 = mul nsw i32 %29, 64
  %sub14 = sub nsw i32 %28, %mul13
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.11, %cond.true.10
  %cond16 = phi i32 [ 64, %cond.true.10 ], [ %sub14, %cond.false.11 ]
  store i32 %cond16, i32* %tile_height, align 4, !tbaa !40
  %30 = bitcast i8** %base_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %30) #2
  %31 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom = sext i32 %31 to i64
  %32 = load i8**, i8*** %tile_data.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8*, i8** %32, i64 %idxprom
  %33 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %34 = load i32, i32* %yrem, align 4, !tbaa !40
  %35 = load i32, i32* %tile_width, align 4, !tbaa !40
  %mul17 = mul nsw i32 %34, %35
  %36 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %mul18 = mul nsw i32 %mul17, %36
  %idx.ext = sext i32 %mul18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %base_ptr, align 8, !tbaa !1
  %37 = bitcast i32* %extra_stride to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #2
  %38 = load i32, i32* %tile_width, align 4, !tbaa !40
  %39 = load i32, i32* %tile_height, align 4, !tbaa !40
  %mul19 = mul nsw i32 %38, %39
  store i32 %mul19, i32* %extra_stride, align 4, !tbaa !40
  %40 = bitcast i8** %extra_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load i32, i32* %tile_i, align 4, !tbaa !40
  %idxprom20 = sext i32 %41 to i64
  %42 = load i8**, i8*** %tile_data.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds i8*, i8** %42, i64 %idxprom20
  %43 = load i8*, i8** %arrayidx21, align 8, !tbaa !1
  %44 = load i32, i32* %extra_stride, align 4, !tbaa !40
  %45 = load i32, i32* %base_bytes_pp, align 4, !tbaa !40
  %mul22 = mul nsw i32 %44, %45
  %idx.ext23 = sext i32 %mul22 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %43, i64 %idx.ext23
  %46 = load i32, i32* %yrem, align 4, !tbaa !40
  %47 = load i32, i32* %tile_width, align 4, !tbaa !40
  %mul25 = mul nsw i32 %46, %47
  %idx.ext26 = sext i32 %mul25 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %add.ptr24, i64 %idx.ext26
  store i8* %add.ptr27, i8** %extra_ptr, align 8, !tbaa !1
  %48 = bitcast i32* %base_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #2
  store i32 0, i32* %base_idx, align 4, !tbaa !40
  store i32 0, i32* %x, align 4, !tbaa !40
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.45, %cond.end.15
  %49 = load i32, i32* %x, align 4, !tbaa !40
  %50 = load i32, i32* %tile_width, align 4, !tbaa !40
  %cmp29 = icmp slt i32 %49, %50
  br i1 %cmp29, label %for.body.30, label %for.end.47

for.body.30:                                      ; preds = %for.cond.28
  %51 = bitcast i32* %plane_idx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %53 = bitcast %struct.gx_device_printer_s* %52 to %struct.gx_device_s*
  %54 = load i8*, i8** %link.addr, align 8, !tbaa !1
  %55 = bitcast i8* %54 to %struct.gsicc_link_s*
  %56 = load i32, i32* %row_idx, align 4, !tbaa !40
  %idxprom31 = sext i32 %56 to i64
  %57 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %57, i64 %idxprom31
  %58 = load i32, i32* %base_idx, align 4, !tbaa !40
  %idxprom33 = sext i32 %58 to i64
  %59 = load i8*, i8** %base_ptr, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds i8, i8* %59, i64 %idxprom33
  call void @gscms_transform_color(%struct.gx_device_s* %53, %struct.gsicc_link_s* %55, i8* %arrayidx32, i8* %arrayidx34, i32 1) #5
  store i32 0, i32* %plane_idx, align 4, !tbaa !40
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %for.body.30
  %60 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %61 = load i32, i32* %n_extra_channels, align 4, !tbaa !40
  %cmp36 = icmp slt i32 %60, %61
  br i1 %cmp36, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.35
  %62 = load i32, i32* %row_idx, align 4, !tbaa !40
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %row_idx, align 4, !tbaa !40
  %idxprom38 = sext i32 %62 to i64
  %63 = load i8*, i8** %row.addr, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds i8, i8* %63, i64 %idxprom38
  %64 = load i8, i8* %arrayidx39, align 1, !tbaa !50
  %conv = zext i8 %64 to i32
  %xor = xor i32 255, %conv
  %conv40 = trunc i32 %xor to i8
  %65 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %66 = load i32, i32* %extra_stride, align 4, !tbaa !40
  %mul41 = mul nsw i32 %65, %66
  %67 = load i32, i32* %x, align 4, !tbaa !40
  %add = add nsw i32 %mul41, %67
  %idxprom42 = sext i32 %add to i64
  %68 = load i8*, i8** %extra_ptr, align 8, !tbaa !1
  %arrayidx43 = getelementptr inbounds i8, i8* %68, i64 %idxprom42
  store i8 %conv40, i8* %arrayidx43, align 1, !tbaa !50
  br label %for.inc

for.inc:                                          ; preds = %for.body.37
  %69 = load i32, i32* %plane_idx, align 4, !tbaa !40
  %inc44 = add nsw i32 %69, 1
  store i32 %inc44, i32* %plane_idx, align 4, !tbaa !40
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  %70 = bitcast i32* %plane_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #2
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.end
  %71 = load i32, i32* %x, align 4, !tbaa !40
  %inc46 = add nsw i32 %71, 1
  store i32 %inc46, i32* %x, align 4, !tbaa !40
  br label %for.cond.28

for.end.47:                                       ; preds = %for.cond.28
  %72 = bitcast i32* %base_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i8** %extra_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast i32* %extra_stride to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i8** %base_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i32* %tile_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  %77 = bitcast i32* %tile_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #2
  %78 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47
  %79 = load i32, i32* %tile_i, align 4, !tbaa !40
  %inc49 = add nsw i32 %79, 1
  store i32 %inc49, i32* %tile_i, align 4, !tbaa !40
  br label %for.cond

for.end.50:                                       ; preds = %for.cond
  %80 = bitcast i32* %row_idx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %n_extra_channels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %base_bytes_pp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i32* %tile_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i32* %yrem to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %tile_j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @xcf_write_fake_hierarchy(%struct.xcf_write_ctx* %xc) #1 {
entry:
  %xc.addr = alloca %struct.xcf_write_ctx*, align 8
  %widthf = alloca i32, align 4
  %heightf = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.xcf_write_ctx* %xc, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %widthf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %1, i32 0, i32 2
  %2 = load i32, i32* %width, align 4, !tbaa !78
  store i32 %2, i32* %widthf, align 4, !tbaa !40
  %3 = bitcast i32* %heightf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %4, i32 0, i32 3
  %5 = load i32, i32* %height, align 4, !tbaa !80
  store i32 %5, i32* %heightf, align 4, !tbaa !40
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 1, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !40
  %8 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %n_levels = getelementptr inbounds %struct.xcf_write_ctx, %struct.xcf_write_ctx* %8, i32 0, i32 9
  %9 = load i32, i32* %n_levels, align 4, !tbaa !84
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %widthf, align 4, !tbaa !40
  %shr = ashr i32 %10, 1
  store i32 %shr, i32* %widthf, align 4, !tbaa !40
  %11 = load i32, i32* %heightf, align 4, !tbaa !40
  %shr1 = ashr i32 %11, 1
  store i32 %shr1, i32* %heightf, align 4, !tbaa !40
  %12 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %13 = load i32, i32* %widthf, align 4, !tbaa !40
  %call = call i32 @xcf_write_32(%struct.xcf_write_ctx* %12, i32 %13) #5
  %14 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %15 = load i32, i32* %heightf, align 4, !tbaa !40
  %call2 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %14, i32 %15) #5
  %16 = load %struct.xcf_write_ctx*, %struct.xcf_write_ctx** %xc.addr, align 8, !tbaa !1
  %call3 = call i32 @xcf_write_32(%struct.xcf_write_ctx* %16, i32 0) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !40
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !40
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %19 = bitcast i32* %heightf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %widthf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

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
!5 = !{!6, !2, i64 0}
!6 = !{!"", !2, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!7 = !{!"int", !3, i64 0}
!8 = !{!6, !7, i64 8}
!9 = !{!10, !2, i64 20072}
!10 = !{!"xcf_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !11, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !16, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !7, i64 1052, !7, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !24, i64 17256, !7, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888, !3, i64 18472, !7, i64 18476, !2, i64 18480, !7, i64 18488, !25, i64 18496, !25, i64 19016, !3, i64 19536, !2, i64 19792, !2, i64 19800, !3, i64 19808, !2, i64 20064, !2, i64 20072, !3, i64 20080, !2, i64 20336, !2, i64 20344}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !7, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !7, i64 0, !7, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !7, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !7, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !7, i64 24, !7, i64 28}
!25 = !{!"gs_separation_names_s", !7, i64 0, !3, i64 8}
!26 = !{!10, !2, i64 20064}
!27 = !{!28, !12, i64 288}
!28 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !7, i64 4, !7, i64 8, !3, i64 12, !3, i64 16, !29, i64 20, !12, i64 144, !7, i64 152, !3, i64 156, !7, i64 216, !7, i64 220, !7, i64 224, !30, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !11, i64 288, !7, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!29 = !{!"gs_range_icc_s", !3, i64 0}
!30 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !7, i64 20}
!31 = !{!28, !2, i64 304}
!32 = !{!28, !2, i64 296}
!33 = !{!10, !2, i64 19800}
!34 = !{!10, !2, i64 19792}
!35 = !{!10, !2, i64 20344}
!36 = !{!10, !2, i64 20336}
!37 = !{!12, !12, i64 0}
!38 = !{!10, !3, i64 18472}
!39 = !{!14, !14, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!42, !2, i64 0}
!42 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!43 = !{!42, !7, i64 8}
!44 = !{!42, !7, i64 12}
!45 = !{!46, !2, i64 0}
!46 = !{!"gs_param_string_s", !2, i64 0, !7, i64 8, !7, i64 12}
!47 = !{!46, !7, i64 8}
!48 = !{!46, !7, i64 12}
!49 = !{!10, !7, i64 18496}
!50 = !{!3, !3, i64 0}
!51 = !{!52, !2, i64 0}
!52 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!53 = !{!54, !2, i64 56}
!54 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!55 = !{i64 0, i64 4, !40, i64 4, i64 4, !40, i64 8, i64 4, !50, i64 12, i64 2, !39, i64 14, i64 1, !50, i64 16, i64 4, !40, i64 20, i64 4, !40, i64 24, i64 4, !40, i64 28, i64 4, !40, i64 32, i64 4, !40, i64 36, i64 4, !40, i64 40, i64 4, !50, i64 44, i64 64, !50, i64 108, i64 64, !50, i64 176, i64 512, !50, i64 688, i64 8, !1, i64 696, i64 4, !50, i64 704, i64 8, !37, i64 712, i64 4, !40}
!56 = !{!57, !3, i64 104}
!57 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !11, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !16, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !7, i64 1052, !7, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144}
!58 = !{!10, !2, i64 18480}
!59 = !{!10, !7, i64 84}
!60 = !{!10, !7, i64 18488}
!61 = !{!10, !7, i64 100}
!62 = !{!10, !7, i64 18476}
!63 = !{!10, !14, i64 108}
!64 = !{!13, !14, i64 12}
!65 = !{!25, !7, i64 0}
!66 = !{!57, !7, i64 100}
!67 = !{!10, !2, i64 784}
!68 = !{!10, !3, i64 104}
!69 = !{!10, !2, i64 24}
!70 = !{!30, !3, i64 4}
!71 = !{!30, !3, i64 12}
!72 = !{!30, !3, i64 0}
!73 = !{!57, !2, i64 24}
!74 = !{!28, !3, i64 1}
!75 = !{!6, !7, i64 20}
!76 = !{!6, !7, i64 24}
!77 = !{!10, !7, i64 832}
!78 = !{!6, !7, i64 12}
!79 = !{!10, !7, i64 836}
!80 = !{!6, !7, i64 16}
!81 = !{!6, !7, i64 28}
!82 = !{!6, !7, i64 32}
!83 = !{!6, !7, i64 36}
!84 = !{!6, !7, i64 40}
!85 = !{!6, !7, i64 44}
!86 = !{!87, !2, i64 24}
!87 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !11, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !16, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !7, i64 1052, !7, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !24, i64 17256, !7, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!88 = !{!89, !2, i64 64}
!89 = !{!"gs_memory_s", !2, i64 0, !90, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!90 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!91 = !{!89, !2, i64 24}
