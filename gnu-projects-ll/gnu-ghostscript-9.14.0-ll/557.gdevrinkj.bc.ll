; ModuleID = './gdevrinkj.bc'
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
%struct.rinkj_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, [0 x i8*]*, i32, %struct.gs_separation_names_s, %struct.gs_separation_names_s, [256 x i8], i8*, %struct.cmm_profile_s*, [256 x i8] }
%struct._RinkjDevice = type { i32 (%struct._RinkjDevice*, i8*)*, i32 (%struct._RinkjDevice*, %struct._RinkjDeviceParams*)*, i32 (%struct._RinkjDevice*, i8**)*, i32 }
%struct._RinkjDeviceParams = type { i32, i32, i32, i8* }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct._RinkjByteStream = type { i32 (%struct._RinkjByteStream*, i8*, i32)* }
%struct.rinkj_color_cache_entry_s = type { i32, i32 }
%struct.rinkj_lutset_s = type { i8*, [15 x %struct.rinkj_lutchain_s*] }
%struct.rinkj_lutchain_s = type { %struct.rinkj_lutchain_s*, i32, double*, double* }

@spot_cmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @rinkj_close_device, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* @rinkj_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @rinkj_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @rinkj_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @get_rinkj_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @rinkj_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @rinkj_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @rinkj_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"rinkj\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"DeviceN\00", align 1
@DeviceCMYKComponents = internal constant [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* null], align 16
@gs_rinkj_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32, i32, [0 x i8*]*, i32, %struct.gs_separation_names_s, %struct.gs_separation_names_s, [256 x i8], i8*, %struct.cmm_profile_s*, [256 x i8] } { i32 20072, %struct.gx_device_procs_s* @spot_cmyk_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 64, i32 4, i32 0, i16 32, i8 0, i32 255, i32 255, i32 1, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 6120, i32 7920, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @rinkj_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 2, i32 8, i32 4, [0 x i8*]* bitcast ([5 x i8*]* @DeviceCMYKComponents to [0 x i8*]*), i32 4, %struct.gs_separation_names_s zeroinitializer, %struct.gs_separation_names_s zeroinitializer, [256 x i8] zeroinitializer, i8* null, %struct.cmm_profile_s* null, [256 x i8] zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"rinkj_close_device\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CRDDefault\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SeparationColorNames\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Separations\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ProfileOut\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"SetupFile\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"ProcessColorModel\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@DeviceGrayComponents = internal constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* null], align 16
@DeviceRGBComponents = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* null], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@bpc_to_depth.depths = internal constant [4 x [8 x i8]] [[8 x i8] c"\01\02\00\04\08\00\00\08", [8 x i8] c"\02\04\00\08\10\00\00\10", [8 x i8] c"\04\08\00\10\10\00\00\18", [8 x i8] c"\04\08\00\10 \00\00 "], align 16
@__func__.rinkj_open_profile = private unnamed_addr constant [19 x i8] c"rinkj_open_profile\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"./devices/gdevrinkj.c\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"Could not create output profile for rinkj device\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Could not create link handle for rinkj device\00", align 1
@spotRGB_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotrgb_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotrgb_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotrgb_cm }, align 8
@spotCMYK_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotcmyk_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotcmyk_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotcmyk_cm }, align 8
@spotN_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_spotn_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @rgb_cs_to_spotn_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_spotn_cm }, align 8
@.str.19 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"CMYKcmk\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"KkCMcmY\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"AddLut\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Dither\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Aspect\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"rinkj_add_lut\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"%lf %lf\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"rinkj_write_image_data\00", align 1
@rinkj_write_image_data.scolor = private unnamed_addr constant [4 x i32] [i32 8, i32 192, i32 128, i32 0], align 16

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %file) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %code = alloca i32, align 4
  %cmyk_dev = alloca %struct._RinkjDevice*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = bitcast %struct._RinkjDevice** %cmyk_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call %struct._RinkjDevice* @rinkj_init(%struct.rinkj_device_s* %5, %struct._IO_FILE* %6) #6
  store %struct._RinkjDevice* %call, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %7 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %cmp = icmp eq %struct._RinkjDevice* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %call1 = call i32 @rinkj_write_image_data(%struct.gx_device_printer_s* %8, %struct._RinkjDevice* %9) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %10 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct._RinkjDevice** %cmyk_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #2
  %13 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = load i32, i32* %retval
  ret i32 %14
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
define internal i32 @rinkj_close_device(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rdev = alloca %struct.rinkj_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %3, i32 0, i32 76
  %4 = load i8*, i8** %icc_link, align 8, !tbaa !7
  %5 = bitcast i8* %4 to %struct.gsicc_link_s*
  call void @gscms_release_link(%struct.gsicc_link_s* %5) #6
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %6, i32 0, i32 77
  %7 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !24
  %tobool = icmp ne %struct.cmm_profile_s* %7, null
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  br label %do.body.2

do.body.2:                                        ; preds = %do.body.1
  br label %do.cond

do.cond:                                          ; preds = %do.body.2
  br label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile3 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %8, i32 0, i32 77
  %9 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile3, align 8, !tbaa !24
  %rc = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %9, i32 0, i32 18
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %10 = load i64, i64* %ref_count, align 8, !tbaa !25
  %add = add nsw i64 %10, -1
  store i64 %add, i64* %ref_count, align 8, !tbaa !25
  br label %do.cond.4

do.cond.4:                                        ; preds = %do.end
  br label %do.end.5

do.end.5:                                         ; preds = %do.cond.4
  %11 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile6 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %11, i32 0, i32 77
  %12 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile6, align 8, !tbaa !24
  %rc7 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %12, i32 0, i32 18
  %ref_count8 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc7, i32 0, i32 0
  %13 = load i64, i64* %ref_count8, align 8, !tbaa !25
  %tobool9 = icmp ne i64 %13, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.end.5
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.body.11
  br label %do.cond.13

do.cond.13:                                       ; preds = %do.body.12
  br label %do.end.14

do.end.14:                                        ; preds = %do.cond.13
  %14 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile15 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %14, i32 0, i32 77
  %15 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile15, align 8, !tbaa !24
  %rc16 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %15, i32 0, i32 18
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc16, i32 0, i32 2
  %16 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !29
  %17 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile17 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %17, i32 0, i32 77
  %18 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile17, align 8, !tbaa !24
  %rc18 = getelementptr inbounds %struct.cmm_profile_s, %struct.cmm_profile_s* %18, i32 0, i32 18
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc18, i32 0, i32 1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !30
  %20 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile19 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %20, i32 0, i32 77
  %21 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile19, align 8, !tbaa !24
  %22 = bitcast %struct.cmm_profile_s* %21 to i8*
  call void %16(%struct.gs_memory_s* %19, i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #6
  br label %do.cond.20

do.cond.20:                                       ; preds = %do.end.14
  br label %do.end.21

do.end.21:                                        ; preds = %do.cond.20
  %23 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %link_profile22 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %23, i32 0, i32 77
  store %struct.cmm_profile_s* null, %struct.cmm_profile_s** %link_profile22, align 8, !tbaa !24
  br label %if.end

if.else:                                          ; preds = %do.end.5
  br label %do.body.23

do.body.23:                                       ; preds = %if.else
  br label %do.cond.24

do.cond.24:                                       ; preds = %do.body.23
  br label %do.end.25

do.end.25:                                        ; preds = %do.cond.24
  br label %if.end

if.end:                                           ; preds = %do.end.25, %do.end.21
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %do.body
  br label %do.cond.27

do.cond.27:                                       ; preds = %if.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %24) #6
  %25 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %rgb) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %rgb.addr = alloca i16*, align 8
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !31
  store i16* %rgb, i16** %rgb.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %color_model = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %3, i32 0, i32 68
  %4 = load i32, i32* %color_model, align 4, !tbaa !32
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %6 = load i64, i64* %color.addr, align 8, !tbaa !31
  %7 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %call = call i32 @rinkj_decode_color(%struct.gx_device_s* %5, i64 %6, i16* %7) #6
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 0, i16* %arrayidx, align 2, !tbaa !33
  %9 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %9, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !33
  %10 = load i16*, i16** %rgb.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %10, i64 2
  store i16 0, i16* %arrayidx2, align 2, !tbaa !33
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %code = alloca i32, align 4
  %seprs = alloca i32, align 4
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %pos = alloca %struct.gs_param_string_s, align 8
  %sfs = alloca %struct.gs_param_string_s, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  store i32 0, i32* %seprs, align 4, !tbaa !5
  %5 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast %struct.gs_param_string_s* %pos to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %7 = bitcast %struct.gs_param_string_s* %sfs to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !34
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  store i32 0, i32* %size, align 4, !tbaa !36
  %persistent = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 2
  store i32 0, i32* %persistent, align 4, !tbaa !37
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %8, %struct.gs_param_list_s* %9) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call1 = call i32 @sample_device_crd_get_params(%struct.gx_device_s* %10, %struct.gs_param_list_s* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)) #6
  store i32 %call1, i32* %code, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call4 = call i32 @param_write_name_array(%struct.gs_param_list_s* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #6
  store i32 %call4, i32* %code, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %13 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @param_write_bool(%struct.gs_param_list_s* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32* %seprs) #6
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %14 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %14, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.6
  %15 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %profile_out_fn = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %15, i32 0, i32 75
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn, i32 0, i32 0
  %data9 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pos, i32 0, i32 0
  store i8* %arraydecay, i8** %data9, align 8, !tbaa !38
  %16 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %profile_out_fn10 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %16, i32 0, i32 75
  %arraydecay11 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn10, i32 0, i32 0
  %call12 = call i64 @strlen(i8* %arraydecay11) #7
  %conv = trunc i64 %call12 to i32
  %size13 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pos, i32 0, i32 1
  store i32 %conv, i32* %size13, align 4, !tbaa !40
  %persistent14 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %pos, i32 0, i32 2
  store i32 0, i32* %persistent14, align 4, !tbaa !41
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call15 = call i32 @param_write_string(%struct.gs_param_list_s* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.gs_param_string_s* %pos) #6
  store i32 %call15, i32* %code, align 4, !tbaa !5
  %18 = load i32, i32* %code, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %18, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end
  %19 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end
  %20 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %setup_fn = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %20, i32 0, i32 78
  %arraydecay20 = getelementptr inbounds [256 x i8], [256 x i8]* %setup_fn, i32 0, i32 0
  %data21 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sfs, i32 0, i32 0
  store i8* %arraydecay20, i8** %data21, align 8, !tbaa !38
  %21 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %setup_fn22 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %21, i32 0, i32 78
  %arraydecay23 = getelementptr inbounds [256 x i8], [256 x i8]* %setup_fn22, i32 0, i32 0
  %call24 = call i64 @strlen(i8* %arraydecay23) #7
  %conv25 = trunc i64 %call24 to i32
  %size26 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sfs, i32 0, i32 1
  store i32 %conv25, i32* %size26, align 4, !tbaa !40
  %persistent27 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sfs, i32 0, i32 2
  store i32 0, i32* %persistent27, align 4, !tbaa !41
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call28 = call i32 @param_write_string(%struct.gs_param_list_s* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_string_s* %sfs) #6
  store i32 %call28, i32* %code, align 4, !tbaa !5
  %23 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.19, %if.then.18, %if.then
  %24 = bitcast %struct.gs_param_string_s* %sfs to i8*
  call void @llvm.lifetime.end(i64 16, i8* %24) #2
  %25 = bitcast %struct.gs_param_string_s* %pos to i8*
  call void @llvm.lifetime.end(i64 16, i8* %25) #2
  %26 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %26) #2
  %27 = bitcast i32* %seprs to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %pdevn = alloca %struct.rinkj_device_s*, align 8
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %param_name = alloca i8*, align 8
  %npcmcolors = alloca i32, align 4
  %num_spot = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %scna = alloca %struct.gs_param_string_array_s, align 8
  %po = alloca %struct.gs_param_string_s, align 8
  %sf = alloca %struct.gs_param_string_s, align 8
  %pcm = alloca %struct.gs_param_string_s, align 8
  %color_model = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %num_names61 = alloca i32, align 4
  %pcomp_names = alloca [0 x i8*]*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %pdevn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %3) #2
  %4 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %7, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %8 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %8, i32* %num_spot, align 4, !tbaa !5
  %9 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #2
  %12 = bitcast %struct.gs_param_string_s* %po to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #2
  %13 = bitcast %struct.gs_param_string_s* %sf to i8*
  call void @llvm.lifetime.start(i64 16, i8* %13) #2
  %14 = bitcast %struct.gs_param_string_s* %pcm to i8*
  call void @llvm.lifetime.start(i64 16, i8* %14) #2
  %15 = bitcast i32* %color_model to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %16, i32 0, i32 68
  %17 = load i32, i32* %color_model1, align 4, !tbaa !32
  store i32 %17, i32* %color_model, align 4, !tbaa !43
  br label %do.body

do.body:                                          ; preds = %entry
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_name_array(%struct.gs_param_list_s* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), %struct.gs_param_string_array_s* %scna) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  switch i32 %call, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %do.body
  %size = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %19 = load i32, i32* %size, align 4, !tbaa !36
  %size2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %20 = load i32, i32* %size2, align 4, !tbaa !36
  %cmp = icmp ne i32 %19, %20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !34
  br label %if.end

if.else:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  br label %scne

sw.default:                                       ; preds = %do.body
  %21 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %21, i32* %ecode, align 4, !tbaa !5
  br label %scne

scne:                                             ; preds = %sw.default, %if.end
  %22 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %22, i32 0, i32 0
  %23 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !44
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %23, i32 0, i32 7
  %24 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !46
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load i8*, i8** %param_name, align 8, !tbaa !1
  %27 = load i32, i32* %ecode, align 4, !tbaa !5
  %call3 = call i32 %24(%struct.gs_param_list_s* %25, i8* %26, i32 %27) #6
  br label %sw.bb.4

sw.bb.4:                                          ; preds = %do.body, %scne
  %data5 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data5, align 8, !tbaa !34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.4, %if.else
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  br label %do.end

do.end:                                           ; preds = %do.cond
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %28, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %do.end
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call8 = call i32 @rinkj_param_read_fn(%struct.gs_param_list_s* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.gs_param_string_s* %po, i32 256) #6
  store i32 %call8, i32* %code, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %do.end
  %30 = load i32, i32* %code, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %30, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call12 = call i32 @rinkj_param_read_fn(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct.gs_param_string_s* %sf, i32 256) #6
  store i32 %call12, i32* %code, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %32 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %32, 0
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.13
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call16 = call i32 @param_read_name(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), %struct.gs_param_string_s* %pcm) #6
  store i32 %call16, i32* %code, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.13
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %34, 0
  br i1 %cmp18, label %if.then.19, label %if.end.42

if.then.19:                                       ; preds = %if.end.17
  %call20 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.then.19
  store i32 0, i32* %color_model, align 4, !tbaa !43
  br label %if.end.41

if.else.22:                                       ; preds = %if.then.19
  %call23 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.else.22
  store i32 1, i32* %color_model, align 4, !tbaa !43
  br label %if.end.40

if.else.26:                                       ; preds = %if.else.22
  %call27 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #6
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.else.26
  store i32 2, i32* %color_model, align 4, !tbaa !43
  br label %if.end.39

if.else.30:                                       ; preds = %if.else.26
  %call31 = call i32 @param_string_eq(%struct.gs_param_string_s* %pcm, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.else.30
  store i32 3, i32* %color_model, align 4, !tbaa !43
  br label %if.end.38

if.else.34:                                       ; preds = %if.else.30
  %35 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs35 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %35, i32 0, i32 0
  %36 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs35, align 8, !tbaa !44
  %signal_error36 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %36, i32 0, i32 7
  %37 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error36, align 8, !tbaa !46
  %38 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i32 -15, i32* %code, align 4, !tbaa !5
  %call37 = call i32 %37(%struct.gs_param_list_s* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 -15) #6
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.29
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.25
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.21
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.17
  %39 = load i32, i32* %code, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %39, 0
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.42
  %40 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %40, i32* %ecode, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.42
  %41 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %41, i32 0, i32 11
  %42 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %43 = bitcast %struct.gx_device_color_info_s* %color_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 720, i32 8, i1 false), !tbaa.struct !48
  %44 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %45 = load i32, i32* %color_model, align 4, !tbaa !43
  %call46 = call i32 @rinkj_set_color_model(%struct.rinkj_device_s* %44, i32 %45) #6
  store i32 %call46, i32* %ecode, align 4, !tbaa !5
  %46 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp47 = icmp eq i32 %46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.45
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %48 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call49 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %47, %struct.gs_param_list_s* %48) #6
  store i32 %call49, i32* %ecode, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.45
  %49 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %49, 0
  br i1 %cmp51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.50
  %50 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info53 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %50, i32 0, i32 11
  %51 = bitcast %struct.gx_device_color_info_s* %color_info53 to i8*
  %52 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 720, i32 8, i1 false), !tbaa.struct !48
  %53 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %53, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %if.end.50
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info55 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info55, i32 0, i32 2
  %55 = load i32, i32* %polarity, align 4, !tbaa !49
  %cmp56 = icmp eq i32 %55, 0
  br i1 %cmp56, label %if.then.57, label %if.end.83

if.then.57:                                       ; preds = %if.end.54
  %data58 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %56 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data58, align 8, !tbaa !34
  %cmp59 = icmp ne %struct.gs_param_string_s* %56, null
  br i1 %cmp59, label %if.then.60, label %if.end.82

if.then.60:                                       ; preds = %if.then.57
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #2
  %58 = bitcast i32* %num_names61 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #2
  %size62 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 1
  %59 = load i32, i32* %size62, align 4, !tbaa !36
  store i32 %59, i32* %num_names61, align 4, !tbaa !5
  %60 = bitcast [0 x i8*]** %pcomp_names to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %62 = bitcast %struct.gx_device_s* %61 to %struct.rinkj_device_s*
  %std_colorant_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %62, i32 0, i32 71
  %63 = load [0 x i8*]*, [0 x i8*]** %std_colorant_names, align 8, !tbaa !51
  store [0 x i8*]* %63, [0 x i8*]** %pcomp_names, align 8, !tbaa !1
  store i32 0, i32* %num_spot, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.60
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %65 = load i32, i32* %num_names61, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %64, %65
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load [0 x i8*]*, [0 x i8*]** %pcomp_names, align 8, !tbaa !1
  %67 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %67 to i64
  %data64 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %68 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data64, align 8, !tbaa !34
  %arrayidx = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %68, i64 %idxprom
  %call65 = call i32 @check_process_color_names([0 x i8*]* %66, %struct.gs_param_string_s* %arrayidx) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.74, label %if.then.67

if.then.67:                                       ; preds = %for.body
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %69 to i64
  %data69 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %scna, i32 0, i32 0
  %70 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data69, align 8, !tbaa !34
  %arrayidx70 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %70, i64 %idxprom68
  %71 = load i32, i32* %num_spot, align 4, !tbaa !5
  %inc = add nsw i32 %71, 1
  store i32 %inc, i32* %num_spot, align 4, !tbaa !5
  %idxprom71 = sext i32 %71 to i64
  %72 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %separation_names72 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %72, i32 0, i32 73
  %names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names72, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names, i32 0, i64 %idxprom71
  store %struct.gs_param_string_s* %arrayidx70, %struct.gs_param_string_s** %arrayidx73, align 8, !tbaa !1
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.67, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.74
  %73 = load i32, i32* %i, align 4, !tbaa !5
  %inc75 = add nsw i32 %73, 1
  store i32 %inc75, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %74 = load i32, i32* %num_spot, align 4, !tbaa !5
  %75 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %separation_names76 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %75, i32 0, i32 73
  %num_names77 = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names76, i32 0, i32 0
  store i32 %74, i32* %num_names77, align 4, !tbaa !42
  %76 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %is_open = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %76, i32 0, i32 9
  %77 = load i32, i32* %is_open, align 4, !tbaa !52
  %tobool78 = icmp ne i32 %77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %for.end
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call80 = call i32 @gs_closedevice(%struct.gx_device_s* %78) #6
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %for.end
  %79 = bitcast [0 x i8*]** %pcomp_names to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #2
  %80 = bitcast i32* %num_names61 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.57
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.54
  %82 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %82, i32 0, i32 72
  %83 = load i32, i32* %num_std_colorant_names, align 4, !tbaa !53
  store i32 %83, i32* %npcmcolors, align 4, !tbaa !5
  %84 = load i32, i32* %npcmcolors, align 4, !tbaa !5
  %85 = load i32, i32* %num_spot, align 4, !tbaa !5
  %add = add nsw i32 %84, %85
  %86 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info84 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %86, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info84, i32 0, i32 1
  store i32 %add, i32* %num_components, align 4, !tbaa !54
  %87 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info85 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %87, i32 0, i32 11
  %num_components86 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info85, i32 0, i32 1
  %88 = load i32, i32* %num_components86, align 4, !tbaa !54
  %tobool87 = icmp ne i32 %88, 0
  br i1 %tobool87, label %if.end.91, label %if.then.88

if.then.88:                                       ; preds = %if.end.83
  %89 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info89 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %89, i32 0, i32 11
  %num_components90 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info89, i32 0, i32 1
  store i32 1, i32* %num_components90, align 4, !tbaa !54
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.end.83
  %90 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info92 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %90, i32 0, i32 11
  %num_components93 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info92, i32 0, i32 1
  %91 = load i32, i32* %num_components93, align 4, !tbaa !54
  %92 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %bitspercomponent = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %92, i32 0, i32 69
  %93 = load i32, i32* %bitspercomponent, align 4, !tbaa !55
  %call94 = call i32 @bpc_to_depth(i32 %91, i32 %93) #6
  %conv = trunc i32 %call94 to i16
  %94 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info95 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %94, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info95, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !56
  %95 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %color_info96 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %95, i32 0, i32 11
  %depth97 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info96, i32 0, i32 3
  %96 = load i16, i16* %depth97, align 2, !tbaa !56
  %conv98 = zext i16 %96 to i32
  %depth99 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 3
  %97 = load i16, i16* %depth99, align 2, !tbaa !57
  %conv100 = zext i16 %97 to i32
  %cmp101 = icmp ne i32 %conv98, %conv100
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.91
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call104 = call i32 @gs_closedevice(%struct.gx_device_s* %98) #6
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.91
  %data106 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 0
  %99 = load i8*, i8** %data106, align 8, !tbaa !38
  %cmp107 = icmp ne i8* %99, null
  br i1 %cmp107, label %if.then.109, label %if.end.118

if.then.109:                                      ; preds = %if.end.105
  %100 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %profile_out_fn = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %100, i32 0, i32 75
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn, i32 0, i32 0
  %data110 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 0
  %101 = load i8*, i8** %data110, align 8, !tbaa !38
  %size111 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 1
  %102 = load i32, i32* %size111, align 4, !tbaa !40
  %conv112 = zext i32 %102 to i64
  %call113 = call i8* @memcpy(i8* %arraydecay, i8* %101, i64 %conv112) #8
  %size114 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %po, i32 0, i32 1
  %103 = load i32, i32* %size114, align 4, !tbaa !40
  %idxprom115 = zext i32 %103 to i64
  %104 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %profile_out_fn116 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %104, i32 0, i32 75
  %arrayidx117 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn116, i32 0, i64 %idxprom115
  store i8 0, i8* %arrayidx117, align 1, !tbaa !43
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.109, %if.end.105
  %data119 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sf, i32 0, i32 0
  %105 = load i8*, i8** %data119, align 8, !tbaa !38
  %cmp120 = icmp ne i8* %105, null
  br i1 %cmp120, label %if.then.122, label %if.end.132

if.then.122:                                      ; preds = %if.end.118
  %106 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %setup_fn = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %106, i32 0, i32 78
  %arraydecay123 = getelementptr inbounds [256 x i8], [256 x i8]* %setup_fn, i32 0, i32 0
  %data124 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sf, i32 0, i32 0
  %107 = load i8*, i8** %data124, align 8, !tbaa !38
  %size125 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sf, i32 0, i32 1
  %108 = load i32, i32* %size125, align 4, !tbaa !40
  %conv126 = zext i32 %108 to i64
  %call127 = call i8* @memcpy(i8* %arraydecay123, i8* %107, i64 %conv126) #8
  %size128 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %sf, i32 0, i32 1
  %109 = load i32, i32* %size128, align 4, !tbaa !40
  %idxprom129 = zext i32 %109 to i64
  %110 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %setup_fn130 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %110, i32 0, i32 78
  %arrayidx131 = getelementptr inbounds [256 x i8], [256 x i8]* %setup_fn130, i32 0, i64 %idxprom129
  store i8 0, i8* %arrayidx131, align 1, !tbaa !43
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.122, %if.end.118
  %111 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %pdevn, align 8, !tbaa !1
  %call133 = call i32 @rinkj_open_profile(%struct.rinkj_device_s* %111) #6
  store i32 %call133, i32* %code, align 4, !tbaa !5
  %112 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.132, %if.then.52
  %113 = bitcast i32* %color_model to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast %struct.gs_param_string_s* %pcm to i8*
  call void @llvm.lifetime.end(i64 16, i8* %114) #2
  %115 = bitcast %struct.gs_param_string_s* %sf to i8*
  call void @llvm.lifetime.end(i64 16, i8* %115) #2
  %116 = bitcast %struct.gs_param_string_s* %po to i8*
  call void @llvm.lifetime.end(i64 16, i8* %116) #2
  %117 = bitcast %struct.gs_param_string_array_s* %scna to i8*
  call void @llvm.lifetime.end(i64 16, i8* %117) #2
  %118 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #2
  %119 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #2
  %120 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #2
  %121 = bitcast i32* %npcmcolors to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #2
  %122 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #2
  %123 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %123) #2
  %124 = bitcast %struct.rinkj_device_s** %pdevn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #2
  %125 = load i32, i32* %retval
  ret i32 %125
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal %struct.gx_cm_color_map_procs_s* @get_rinkj_color_mapping_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %retval = alloca %struct.gx_cm_color_map_procs_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %color_model = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %3, i32 0, i32 68
  %4 = load i32, i32* %color_model, align 4, !tbaa !32
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.gx_cm_color_map_procs_s* @spotRGB_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %5 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %5, i32 0, i32 68
  %6 = load i32, i32* %color_model1, align 4, !tbaa !32
  %cmp2 = icmp eq i32 %6, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store %struct.gx_cm_color_map_procs_s* @spotCMYK_procs, %struct.gx_cm_color_map_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.4:                                        ; preds = %if.else
  %7 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %color_model5 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %7, i32 0, i32 68
  %8 = load i32, i32* %color_model5, align 4, !tbaa !32
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
  %9 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  %10 = load %struct.gx_cm_color_map_procs_s*, %struct.gx_cm_color_map_procs_s** %retval
  ret %struct.gx_cm_color_map_procs_s* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %src_index) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %src_index.addr = alloca i32, align 4
  %list = alloca [0 x i8*]*, align 8
  %pcolor = alloca i8**, align 8
  %color_component_number = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %separations = alloca %struct.gs_separation_names_s*, align 8
  %num_spot = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !5
  store i32 %src_index, i32* %src_index.addr, align 4, !tbaa !5
  %0 = bitcast [0 x i8*]** %list to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %std_colorant_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 71
  %3 = load [0 x i8*]*, [0 x i8*]** %std_colorant_names, align 8, !tbaa !51
  store [0 x i8*]* %3, [0 x i8*]** %list, align 8, !tbaa !1
  %4 = bitcast i8*** %pcolor to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load [0 x i8*]*, [0 x i8*]** %list, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [0 x i8*], [0 x i8*]* %5, i32 0, i32 0
  store i8** %arraydecay, i8*** %pcolor, align 8, !tbaa !1
  %6 = bitcast i32* %color_component_number to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %color_component_number, align 4, !tbaa !5
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
  %11 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv = sext i32 %11 to i64
  %12 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %13 = load i8*, i8** %12, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %13) #7
  %cmp = icmp eq i64 %conv, %call
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %14 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %15 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %17 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %conv3 = sext i32 %17 to i64
  %call4 = call i32 @strncmp(i8* %14, i8* %16, i64 %conv3) #7
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %color_component_number, align 4, !tbaa !5
  store i32 %18, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.30

if.end:                                           ; preds = %land.lhs.true, %while.body
  %19 = load i8**, i8*** %pcolor, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %incdec.ptr, i8*** %pcolor, align 8, !tbaa !1
  %20 = load i32, i32* %color_component_number, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %color_component_number, align 4, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.8

if.end.8:                                         ; preds = %while.end, %entry
  %21 = bitcast %struct.gs_separation_names_s** %separations to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_s* %22 to %struct.rinkj_device_s*
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %23, i32 0, i32 73
  store %struct.gs_separation_names_s* %separation_names, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %24 = bitcast i32* %num_spot to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %25, i32 0, i32 0
  %26 = load i32, i32* %num_names, align 4, !tbaa !58
  store i32 %26, i32* %num_spot, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %28 = load i32, i32* %num_spot, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %27, %28
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %30, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names, i32 0, i64 %idxprom
  %31 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %31, i32 0, i32 1
  %32 = load i32, i32* %size, align 4, !tbaa !40
  %33 = load i32, i32* %name_size.addr, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %32, %33
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.26

land.lhs.true.13:                                 ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %34 to i64
  %35 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %names15 = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %35, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names15, i32 0, i64 %idxprom14
  %36 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx16, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %36, i32 0, i32 0
  %37 = load i8*, i8** %data, align 8, !tbaa !38
  %38 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %39 to i64
  %40 = load %struct.gs_separation_names_s*, %struct.gs_separation_names_s** %separations, align 8, !tbaa !1
  %names18 = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %40, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [64 x %struct.gs_param_string_s*], [64 x %struct.gs_param_string_s*]* %names18, i32 0, i64 %idxprom17
  %41 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %arrayidx19, align 8, !tbaa !1
  %size20 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %41, i32 0, i32 1
  %42 = load i32, i32* %size20, align 4, !tbaa !40
  %conv21 = zext i32 %42 to i64
  %call22 = call i32 @strncmp(i8* %37, i8* %38, i64 %conv21) #7
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.13
  %43 = load i32, i32* %color_component_number, align 4, !tbaa !5
  store i32 %43, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %land.lhs.true.13, %for.body
  %44 = load i32, i32* %color_component_number, align 4, !tbaa !5
  %inc27 = add nsw i32 %44, 1
  store i32 %inc27, i32* %color_component_number, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %45, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !5
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
define internal i64 @rinkj_encode_color(%struct.gx_device_s* %dev, i16* %colors) #1 {
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
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %bitspercomponent = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 69
  %3 = load i32, i32* %bitspercomponent, align 4, !tbaa !55
  store i32 %3, i32* %bpc, align 4, !tbaa !5
  %4 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  store i64 0, i64* %color, align 8, !tbaa !31
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %6 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %8 = load i32, i32* %num_components, align 4, !tbaa !59
  store i32 %8, i32* %ncomp, align 4, !tbaa !5
  %9 = bitcast i32* %COLROUND_M to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %COLROUND_S to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %COLROUND_R to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  br label %do.body

do.body:                                          ; preds = %entry
  %12 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %12
  %sub = sub nsw i32 %shl, 1
  %13 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv = sext i32 %13 to i64
  %sub1 = sub i64 16, %conv
  %sh_prom = trunc i64 %sub1 to i32
  %shl2 = shl i32 %sub, %sh_prom
  %add = add nsw i32 %shl2, 1
  store i32 %add, i32* %COLROUND_M, align 4, !tbaa !5
  %14 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv3 = sext i32 %14 to i64
  %sub4 = sub i64 32, %conv3
  %conv5 = trunc i64 %sub4 to i32
  store i32 %conv5, i32* %COLROUND_S, align 4, !tbaa !5
  %15 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %sub6 = sub i32 %15, 1
  %shl7 = shl i32 1, %sub6
  store i32 %shl7, i32* %COLROUND_R, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %17 = load i32, i32* %ncomp, align 4, !tbaa !5
  %cmp = icmp slt i32 %16, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %bpc, align 4, !tbaa !5
  %19 = load i64, i64* %color, align 8, !tbaa !31
  %sh_prom9 = zext i32 %18 to i64
  %shl10 = shl i64 %19, %sh_prom9
  store i64 %shl10, i64* %color, align 8, !tbaa !31
  %20 = load i32, i32* %COLROUND_M, align 4, !tbaa !5
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %21 to i64
  %22 = load i16*, i16** %colors.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %22, i64 %idxprom
  %23 = load i16, i16* %arrayidx, align 2, !tbaa !33
  %conv11 = zext i16 %23 to i32
  %mul = mul i32 %20, %conv11
  %24 = load i32, i32* %COLROUND_R, align 4, !tbaa !5
  %add12 = add i32 %mul, %24
  %25 = load i32, i32* %COLROUND_S, align 4, !tbaa !5
  %shr = lshr i32 %add12, %25
  %conv13 = zext i32 %shr to i64
  %26 = load i64, i64* %color, align 8, !tbaa !31
  %or = or i64 %26, %conv13
  store i64 %or, i64* %color, align 8, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %color, align 8, !tbaa !31
  %cmp14 = icmp eq i64 %28, -1
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %29 = load i64, i64* %color, align 8, !tbaa !31
  %xor = xor i64 %29, 1
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %30 = load i64, i64* %color, align 8, !tbaa !31
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
define internal i32 @rinkj_decode_color(%struct.gx_device_s* %dev, i64 %color, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %out.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %drop = alloca i32, align 4
  %mask = alloca i32, align 4
  %i = alloca i32, align 4
  %ncomp = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !31
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %bitspercomponent = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 69
  %3 = load i32, i32* %bitspercomponent, align 4, !tbaa !55
  store i32 %3, i32* %bpc, align 4, !tbaa !5
  %4 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv = sext i32 %5 to i64
  %sub = sub i64 16, %conv
  %conv1 = trunc i64 %sub to i32
  store i32 %conv1, i32* %drop, align 4, !tbaa !5
  %6 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %7
  %sub2 = sub nsw i32 %shl, 1
  store i32 %sub2, i32* %mask, align 4, !tbaa !5
  %8 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %9 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !59
  store i32 %11, i32* %ncomp, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %13 = load i32, i32* %ncomp, align 4, !tbaa !5
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %color.addr, align 8, !tbaa !31
  %15 = load i32, i32* %mask, align 4, !tbaa !5
  %conv4 = sext i32 %15 to i64
  %and = and i64 %14, %conv4
  %16 = load i32, i32* %drop, align 4, !tbaa !5
  %sh_prom = zext i32 %16 to i64
  %shl5 = shl i64 %and, %sh_prom
  %conv6 = trunc i64 %shl5 to i16
  %17 = load i32, i32* %ncomp, align 4, !tbaa !5
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %sub7 = sub nsw i32 %17, %18
  %sub8 = sub nsw i32 %sub7, 1
  %idxprom = sext i32 %sub8 to i64
  %19 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %19, i64 %idxprom
  store i16 %conv6, i16* %arrayidx, align 2, !tbaa !33
  %20 = load i32, i32* %bpc, align 4, !tbaa !5
  %21 = load i64, i64* %color.addr, align 8, !tbaa !31
  %sh_prom9 = zext i32 %20 to i64
  %shr = lshr i64 %21, %sh_prom9
  store i64 %shr, i64* %color.addr, align 8, !tbaa !31
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #2
  %24 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #2
  %25 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
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
define internal i32 @rinkj_param_read_fn(%struct.gs_param_list_s* %plist, i8* %name, %struct.gs_param_string_s* %pstr, i32 %max_len) #1 {
entry:
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %name.addr = alloca i8*, align 8
  %pstr.addr = alloca %struct.gs_param_string_s*, align 8
  %max_len.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* %name, i8** %name.addr, align 8, !tbaa !1
  store %struct.gs_param_string_s* %pstr, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  store i32 %max_len, i32* %max_len.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %2 = load i8*, i8** %name.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %call = call i32 @param_read_string(%struct.gs_param_list_s* %1, i8* %2, %struct.gs_param_string_s* %3) #6
  store i32 %call, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %5, i32 0, i32 1
  %6 = load i32, i32* %size, align 4, !tbaa !40
  %7 = load i32, i32* %max_len.addr, align 4, !tbaa !5
  %cmp1 = icmp uge i32 %6, %7
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %8, i32 0, i32 0
  %9 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !44
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %9, i32 0, i32 7
  %10 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !46
  %11 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %12 = load i8*, i8** %name.addr, align 8, !tbaa !1
  store i32 -15, i32* %code, align 4, !tbaa !5
  %call3 = call i32 %10(%struct.gs_param_list_s* %11, i8* %12, i32 -15) #6
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstr.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 0
  store i8* null, i8** %data, align 8, !tbaa !38
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %14 = load i32, i32* %code, align 4, !tbaa !5
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
  %call = call i64 @strlen(i8* %0) #7
  %1 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4, !tbaa !40
  %conv = zext i32 %2 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8, !tbaa !1
  %4 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8, !tbaa !38
  %6 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pcs.addr, align 8, !tbaa !1
  %size2 = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %6, i32 0, i32 1
  %7 = load i32, i32* %size2, align 4, !tbaa !40
  %conv3 = zext i32 %7 to i64
  %call4 = call i32 @strncmp(i8* %3, i8* %5, i64 %conv3) #7
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
define internal i32 @rinkj_set_color_model(%struct.rinkj_device_s* %rdev, i32 %color_model) #1 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.rinkj_device_s*, align 8
  %color_model.addr = alloca i32, align 4
  %bpc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rinkj_device_s* %rdev, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  store i32 %color_model, i32* %color_model.addr, align 4, !tbaa !43
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 8, i32* %bpc, align 4, !tbaa !5
  %1 = load i32, i32* %color_model.addr, align 4, !tbaa !43
  %2 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_model1 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 68
  store i32 %1, i32* %color_model1, align 4, !tbaa !32
  %3 = load i32, i32* %color_model.addr, align 4, !tbaa !43
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %std_colorant_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %4, i32 0, i32 71
  store [0 x i8*]* bitcast ([2 x i8*]* @DeviceGrayComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names, align 8, !tbaa !51
  %5 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %5, i32 0, i32 72
  store i32 1, i32* %num_std_colorant_names, align 4, !tbaa !53
  %6 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %6, i32 0, i32 11
  %cm_name = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8** %cm_name, align 8, !tbaa !60
  %7 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info2 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %7, i32 0, i32 11
  %polarity = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info2, i32 0, i32 2
  store i32 1, i32* %polarity, align 4, !tbaa !61
  br label %if.end.32

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %color_model.addr, align 4, !tbaa !43
  %cmp3 = icmp eq i32 %8, 1
  br i1 %cmp3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %std_colorant_names5 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %9, i32 0, i32 71
  store [0 x i8*]* bitcast ([4 x i8*]* @DeviceRGBComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names5, align 8, !tbaa !51
  %10 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names6 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %10, i32 0, i32 72
  store i32 3, i32* %num_std_colorant_names6, align 4, !tbaa !53
  %11 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info7 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %11, i32 0, i32 11
  %cm_name8 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info7, i32 0, i32 14
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8** %cm_name8, align 8, !tbaa !60
  %12 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info9 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %12, i32 0, i32 11
  %polarity10 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info9, i32 0, i32 2
  store i32 1, i32* %polarity10, align 4, !tbaa !61
  br label %if.end.31

if.else.11:                                       ; preds = %if.else
  %13 = load i32, i32* %color_model.addr, align 4, !tbaa !43
  %cmp12 = icmp eq i32 %13, 2
  br i1 %cmp12, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %if.else.11
  %14 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %std_colorant_names14 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %14, i32 0, i32 71
  store [0 x i8*]* bitcast ([5 x i8*]* @DeviceCMYKComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names14, align 8, !tbaa !51
  %15 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names15 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %15, i32 0, i32 72
  store i32 4, i32* %num_std_colorant_names15, align 4, !tbaa !53
  %16 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info16 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %16, i32 0, i32 11
  %cm_name17 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info16, i32 0, i32 14
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8** %cm_name17, align 8, !tbaa !60
  %17 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info18 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %17, i32 0, i32 11
  %polarity19 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info18, i32 0, i32 2
  store i32 0, i32* %polarity19, align 4, !tbaa !61
  br label %if.end.30

if.else.20:                                       ; preds = %if.else.11
  %18 = load i32, i32* %color_model.addr, align 4, !tbaa !43
  %cmp21 = icmp eq i32 %18, 3
  br i1 %cmp21, label %if.then.22, label %if.else.29

if.then.22:                                       ; preds = %if.else.20
  %19 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %std_colorant_names23 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %19, i32 0, i32 71
  store [0 x i8*]* bitcast ([5 x i8*]* @DeviceCMYKComponents to [0 x i8*]*), [0 x i8*]** %std_colorant_names23, align 8, !tbaa !51
  %20 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names24 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %20, i32 0, i32 72
  store i32 4, i32* %num_std_colorant_names24, align 4, !tbaa !53
  %21 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info25 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %21, i32 0, i32 11
  %cm_name26 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info25, i32 0, i32 14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %cm_name26, align 8, !tbaa !60
  %22 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info27 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %22, i32 0, i32 11
  %polarity28 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info27, i32 0, i32 2
  store i32 0, i32* %polarity28, align 4, !tbaa !61
  br label %if.end

if.else.29:                                       ; preds = %if.else.20
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.22
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.13
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.4
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then
  %23 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names33 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %23, i32 0, i32 72
  %24 = load i32, i32* %num_std_colorant_names33, align 4, !tbaa !53
  %25 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info34 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %25, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info34, i32 0, i32 0
  store i32 %24, i32* %max_components, align 4, !tbaa !62
  %26 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names35 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %26, i32 0, i32 72
  %27 = load i32, i32* %num_std_colorant_names35, align 4, !tbaa !53
  %28 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info36 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %28, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info36, i32 0, i32 1
  store i32 %27, i32* %num_components, align 4, !tbaa !54
  %29 = load i32, i32* %bpc, align 4, !tbaa !5
  %30 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %num_std_colorant_names37 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %30, i32 0, i32 72
  %31 = load i32, i32* %num_std_colorant_names37, align 4, !tbaa !53
  %mul = mul nsw i32 %29, %31
  %conv = trunc i32 %mul to i16
  %32 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %color_info38 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %32, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info38, i32 0, i32 3
  store i16 %conv, i16* %depth, align 2, !tbaa !56
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.else.29
  %33 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %33) #2
  %34 = load i32, i32* %retval
  ret i32 %34
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
  %5 = load i32, i32* %size1, align 4, !tbaa !40
  store i32 %5, i32* %size, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load i8**, i8*** %plist, align 8, !tbaa !1
  %7 = load i8*, i8** %6, align 8, !tbaa !1
  %tobool2 = icmp ne i8* %7, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8**, i8*** %plist, align 8, !tbaa !1
  %9 = load i8*, i8** %8, align 8, !tbaa !1
  %call = call i64 @strlen(i8* %9) #7
  %10 = load i32, i32* %size, align 4, !tbaa !5
  %conv = zext i32 %10 to i64
  %cmp = icmp eq i64 %call, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %11 = load i8**, i8*** %plist, align 8, !tbaa !1
  %12 = load i8*, i8** %11, align 8, !tbaa !1
  %13 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %pstring.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.gs_param_string_s, %struct.gs_param_string_s* %13, i32 0, i32 0
  %14 = load i8*, i8** %data, align 8, !tbaa !38
  %15 = load i8**, i8*** %plist, align 8, !tbaa !1
  %16 = load i8*, i8** %15, align 8, !tbaa !1
  %call4 = call i64 @strlen(i8* %16) #7
  %call5 = call i32 @strncmp(i8* %12, i8* %14, i64 %call4) #7
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
  store i32 %ncomp, i32* %ncomp.addr, align 4, !tbaa !5
  store i32 %bpc, i32* %bpc.addr, align 4, !tbaa !5
  %0 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %bpc.addr, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %1, 8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %bpc.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %3 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %sub2 = sub nsw i32 %3, 1
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds [4 x [8 x i8]], [4 x [8 x i8]]* @bpc_to_depth.depths, i32 0, i64 %idxprom3
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx4, align 1, !tbaa !43
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %ncomp.addr, align 4, !tbaa !5
  %6 = load i32, i32* %bpc.addr, align 4, !tbaa !5
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
define internal i32 @rinkj_open_profile(%struct.rinkj_device_s* %rdev) #1 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.rinkj_device_s*, align 8
  %rendering_params = alloca %struct.gsicc_rendering_param_s, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.rinkj_device_s* %rdev, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %link_profile = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %1, i32 0, i32 77
  %2 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile, align 8, !tbaa !24
  %cmp = icmp eq %struct.cmm_profile_s* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %profile_out_fn = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %3, i32 0, i32 75
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1, !tbaa !43
  %conv = sext i8 %4 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end.21

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %profile_out_fn1 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %5, i32 0, i32 75
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn1, i32 0, i32 0
  %6 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %profile_out_fn2 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %6, i32 0, i32 75
  %arraydecay3 = getelementptr inbounds [256 x i8], [256 x i8]* %profile_out_fn2, i32 0, i32 0
  %call = call i64 @strlen(i8* %arraydecay3) #7
  %conv4 = trunc i64 %call to i32
  %7 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %7, i32 0, i32 3
  %8 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %call5 = call %struct.cmm_profile_s* @gsicc_get_profile_handle_file(i8* %arraydecay, i32 %conv4, %struct.gs_memory_s* %8) #6
  %9 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %link_profile6 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %9, i32 0, i32 77
  store %struct.cmm_profile_s* %call5, %struct.cmm_profile_s** %link_profile6, align 8, !tbaa !24
  %10 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %link_profile7 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %10, i32 0, i32 77
  %11 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile7, align 8, !tbaa !24
  %cmp8 = icmp eq %struct.cmm_profile_s* %11, null
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %call11 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.rinkj_open_profile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 469, i32 0, i32 -1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0)) #6
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %black_point_comp = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 1
  store i32 8, i32* %black_point_comp, align 4, !tbaa !64
  %graphics_type_tag = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 3
  store i32 0, i32* %graphics_type_tag, align 4, !tbaa !65
  %rendering_intent = getelementptr inbounds %struct.gsicc_rendering_param_s, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, i32 0
  store i32 0, i32* %rendering_intent, align 4, !tbaa !66
  %12 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %link_profile12 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %12, i32 0, i32 77
  %13 = load %struct.cmm_profile_s*, %struct.cmm_profile_s** %link_profile12, align 8, !tbaa !24
  %14 = bitcast %struct.cmm_profile_s* %13 to i8*
  %15 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory13 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %15, i32 0, i32 3
  %16 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory13, align 8, !tbaa !63
  %call14 = call i8* @gscms_get_link(i8* %14, i8* null, %struct.gsicc_rendering_param_s* %rendering_params, i32 0, %struct.gs_memory_s* %16) #6
  %17 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %17, i32 0, i32 76
  store i8* %call14, i8** %icc_link, align 8, !tbaa !7
  %18 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %icc_link15 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %18, i32 0, i32 76
  %19 = load i8*, i8** %icc_link15, align 8, !tbaa !7
  %cmp16 = icmp eq i8* %19, null
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end
  %call19 = call i32 (i8*, i8*, i32, i32, i32, i8*, ...) @gs_throw_imp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.rinkj_open_profile, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i32 482, i32 0, i32 -1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.18, i32 0, i32 0)) #6
  store i32 %call19, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %land.lhs.true, %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.21, %if.then.18, %if.then.10
  %20 = bitcast %struct.gsicc_rendering_param_s* %rendering_params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @param_read_string(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_s*) #0

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

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
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %3, i32* %i, align 4, !tbaa !5
  %4 = load i16, i16* %gray.addr, align 2, !tbaa !33
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %4, i16* %arrayidx, align 2, !tbaa !33
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %6, i64 1
  store i16 %4, i16* %arrayidx1, align 2, !tbaa !33
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %7, i64 0
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 2, %9
  %idxprom = sext i32 %add to i64
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %10, i64 %idxprom
  store i16 0, i16* %arrayidx3, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
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
  store i16 %r, i16* %r.addr, align 2, !tbaa !33
  store i16 %g, i16* %g.addr, align 2, !tbaa !33
  store i16 %b, i16* %b.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %3, i32* %i, align 4, !tbaa !5
  %4 = load i16, i16* %r.addr, align 2, !tbaa !33
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %4, i16* %arrayidx, align 2, !tbaa !33
  %6 = load i16, i16* %g.addr, align 2, !tbaa !33
  %7 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %7, i64 1
  store i16 %6, i16* %arrayidx1, align 2, !tbaa !33
  %8 = load i16, i16* %b.addr, align 2, !tbaa !33
  %9 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %9, i64 2
  store i16 %8, i16* %arrayidx2, align 2, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 2, %11
  %idxprom = sext i32 %add to i64
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %12, i64 %idxprom
  store i16 0, i16* %arrayidx3, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
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
  store i16 %c, i16* %c.addr, align 2, !tbaa !33
  store i16 %m, i16* %m.addr, align 2, !tbaa !33
  store i16 %y, i16* %y.addr, align 2, !tbaa !33
  store i16 %k, i16* %k.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %3, i32* %i, align 4, !tbaa !5
  %4 = load i16, i16* %c.addr, align 2, !tbaa !33
  %5 = load i16, i16* %m.addr, align 2, !tbaa !33
  %6 = load i16, i16* %y.addr, align 2, !tbaa !33
  %7 = load i16, i16* %k.addr, align 2, !tbaa !33
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  call void @color_cmyk_to_rgb(i16 signext %4, i16 signext %5, i16 signext %6, i16 signext %7, %struct.gs_imager_state_s* null, i16* %8, %struct.gs_memory_s* %10) #6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %11, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 2, %12
  %idxprom = sext i32 %add to i64
  %13 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %13, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  ret void
}

declare void @color_cmyk_to_rgb(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #0

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_spotcmyk_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %2, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %3 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %3, i32* %i, align 4, !tbaa !5
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 2
  store i16 0, i16* %arrayidx, align 2, !tbaa !33
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 1
  store i16 0, i16* %arrayidx1, align 2, !tbaa !33
  %6 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %6, i64 0
  store i16 0, i16* %arrayidx2, align 2, !tbaa !33
  %7 = load i16, i16* %gray.addr, align 2, !tbaa !33
  %conv = sext i16 %7 to i32
  %sub = sub nsw i32 32760, %conv
  %conv3 = trunc i32 %sub to i16
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %8, i64 3
  store i16 %conv3, i16* %arrayidx4, align 2, !tbaa !33
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 3, %10
  %idxprom = sext i32 %add to i64
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  store i16 0, i16* %arrayidx6, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4, !tbaa !5
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
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !33
  store i16 %g, i16* %g.addr, align 2, !tbaa !33
  store i16 %b, i16* %b.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %4, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %5, i32* %n, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16, i16* %r.addr, align 2, !tbaa !33
  %8 = load i16, i16* %g.addr, align 2, !tbaa !33
  %9 = load i16, i16* %b.addr, align 2, !tbaa !33
  %10 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %11 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  call void @color_rgb_to_cmyk(i16 signext %7, i16 signext %8, i16 signext %9, %struct.gs_imager_state_s* %10, i16* %11, %struct.gs_memory_s* %13) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %15 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 4, %16
  %idxprom = sext i32 %add to i64
  %17 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %17, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %19) #2
  %20 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast %struct.rinkj_device_s** %rdev to i8*
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
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !33
  store i16 %m, i16* %m.addr, align 2, !tbaa !33
  store i16 %y, i16* %y.addr, align 2, !tbaa !33
  store i16 %k, i16* %k.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %4, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %5, i32* %n, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16, i16* %c.addr, align 2, !tbaa !33
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %7, i16* %arrayidx, align 2, !tbaa !33
  %9 = load i16, i16* %m.addr, align 2, !tbaa !33
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %9, i16* %arrayidx1, align 2, !tbaa !33
  %11 = load i16, i16* %y.addr, align 2, !tbaa !33
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %11, i16* %arrayidx2, align 2, !tbaa !33
  %13 = load i16, i16* %k.addr, align 2, !tbaa !33
  %14 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %14, i64 3
  store i16 %13, i16* %arrayidx3, align 2, !tbaa !33
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 4, %17
  %idxprom = sext i32 %add to i64
  %18 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  store i16 0, i16* %arrayidx4, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.rinkj_device_s** %rdev to i8*
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
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %1 = load i16, i16* %gray.addr, align 2, !tbaa !33
  %conv = sext i16 %1 to i32
  %sub = sub nsw i32 32760, %conv
  %conv1 = trunc i32 %sub to i16
  %2 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_spotn_cm(%struct.gx_device_s* %0, i16 signext 0, i16 signext 0, i16 signext 0, i16 signext %conv1, i16* %2) #6
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
  %cmyk = alloca [4 x i16], align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !33
  store i16 %g, i16* %g.addr, align 2, !tbaa !33
  store i16 %b, i16* %b.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i16, i16* %r.addr, align 2, !tbaa !33
  %2 = load i16, i16* %g.addr, align 2, !tbaa !33
  %3 = load i16, i16* %b.addr, align 2, !tbaa !33
  %4 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !67
  call void @color_rgb_to_cmyk(i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* %4, i16* %arraydecay, %struct.gs_memory_s* %6) #6
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 0
  %8 = load i16, i16* %arrayidx, align 2, !tbaa !33
  %arrayidx1 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 1
  %9 = load i16, i16* %arrayidx1, align 2, !tbaa !33
  %arrayidx2 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 2
  %10 = load i16, i16* %arrayidx2, align 2, !tbaa !33
  %arrayidx3 = getelementptr inbounds [4 x i16], [4 x i16]* %cmyk, i32 0, i64 3
  %11 = load i16, i16* %arrayidx3, align 2, !tbaa !33
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  call void @cmyk_cs_to_spotn_cm(%struct.gx_device_s* %7, i16 signext %8, i16 signext %9, i16 signext %10, i16 signext %11, i16* %12) #6
  %13 = bitcast [4 x i16]* %cmyk to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
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
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !33
  store i16 %m, i16* %m.addr, align 2, !tbaa !33
  store i16 %y, i16* %y.addr, align 2, !tbaa !33
  store i16 %k, i16* %k.addr, align 2, !tbaa !33
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %4, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %5 = load i32, i32* %num_names, align 4, !tbaa !42
  store i32 %5, i32* %n, align 4, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %7 = load i16, i16* %c.addr, align 2, !tbaa !33
  %8 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %7, i16* %arrayidx, align 2, !tbaa !33
  %9 = load i16, i16* %m.addr, align 2, !tbaa !33
  %10 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %9, i16* %arrayidx1, align 2, !tbaa !33
  %11 = load i16, i16* %y.addr, align 2, !tbaa !33
  %12 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %11, i16* %arrayidx2, align 2, !tbaa !33
  %13 = load i16, i16* %k.addr, align 2, !tbaa !33
  %14 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %14, i64 3
  store i16 %13, i16* %arrayidx3, align 2, !tbaa !33
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %16 = load i32, i32* %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 4, %17
  %idxprom = sext i32 %add to i64
  %18 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %18, i64 %idxprom
  store i16 0, i16* %arrayidx4, align 2, !tbaa !33
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  %22 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._RinkjDevice* @rinkj_init(%struct.rinkj_device_s* %rdev, %struct._IO_FILE* %file) #1 {
entry:
  %rdev.addr = alloca %struct.rinkj_device_s*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %bs = alloca %struct._RinkjByteStream*, align 8
  %epson_dev = alloca %struct._RinkjDevice*, align 8
  %cmyk_dev = alloca %struct._RinkjDevice*, align 8
  %params = alloca %struct._RinkjDeviceParams, align 8
  store %struct.rinkj_device_s* %rdev, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %0 = bitcast %struct._RinkjByteStream** %bs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct._RinkjDevice** %epson_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast %struct._RinkjDevice** %cmyk_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast %struct._RinkjDeviceParams* %params to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call %struct._RinkjByteStream* @rinkj_byte_stream_file_new(%struct._IO_FILE* %4) #6
  store %struct._RinkjByteStream* %call, %struct._RinkjByteStream** %bs, align 8, !tbaa !1
  %5 = load %struct._RinkjByteStream*, %struct._RinkjByteStream** %bs, align 8, !tbaa !1
  %call1 = call %struct._RinkjDevice* @rinkj_epson870_new(%struct._RinkjByteStream* %5) #6
  store %struct._RinkjDevice* %call1, %struct._RinkjDevice** %epson_dev, align 8, !tbaa !1
  %6 = load %struct._RinkjDevice*, %struct._RinkjDevice** %epson_dev, align 8, !tbaa !1
  %call2 = call %struct._RinkjDevice* @rinkj_screen_eb_new(%struct._RinkjDevice* %6) #6
  store %struct._RinkjDevice* %call2, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %7 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %7, i32 0, i32 13
  %8 = load i32, i32* %width, align 4, !tbaa !68
  %width3 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %params, i32 0, i32 0
  store i32 %8, i32* %width3, align 4, !tbaa !69
  %9 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height, align 4, !tbaa !71
  %height4 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %params, i32 0, i32 1
  store i32 %10, i32* %height4, align 4, !tbaa !72
  %n_planes = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %params, i32 0, i32 2
  store i32 7, i32* %n_planes, align 4, !tbaa !73
  %plane_names = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %params, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8** %plane_names, align 8, !tbaa !74
  %n_planes5 = getelementptr inbounds %struct._RinkjDeviceParams, %struct._RinkjDeviceParams* %params, i32 0, i32 2
  %11 = load i32, i32* %n_planes5, align 4, !tbaa !73
  %12 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %n_planes_out = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %12, i32 0, i32 70
  store i32 %11, i32* %n_planes_out, align 4, !tbaa !75
  %13 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %14 = load %struct._RinkjDevice*, %struct._RinkjDevice** %epson_dev, align 8, !tbaa !1
  %15 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %16 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %setup_fn = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %16, i32 0, i32 78
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %setup_fn, i32 0, i32 0
  %call6 = call i32 @rinkj_set_luts(%struct.rinkj_device_s* %13, %struct._RinkjDevice* %14, %struct._RinkjDevice* %15, i8* %arraydecay, %struct._RinkjDeviceParams* %params) #6
  %17 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %call7 = call i32 @rinkj_device_init(%struct._RinkjDevice* %17, %struct._RinkjDeviceParams* %params) #6
  %18 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev, align 8, !tbaa !1
  %19 = bitcast %struct._RinkjDeviceParams* %params to i8*
  call void @llvm.lifetime.end(i64 24, i8* %19) #2
  %20 = bitcast %struct._RinkjDevice** %cmyk_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #2
  %21 = bitcast %struct._RinkjDevice** %epson_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast %struct._RinkjByteStream** %bs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  ret %struct._RinkjDevice* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_write_image_data(%struct.gx_device_printer_s* %pdev, %struct._RinkjDevice* %cmyk_dev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %cmyk_dev.addr = alloca %struct._RinkjDevice*, align 8
  %rdev = alloca %struct.rinkj_device_s*, align 8
  %raster = alloca i32, align 4
  %line = alloca i8*, align 8
  %plane_data = alloca [15 x i8*], align 16
  %split_plane_data = alloca [15 x i8*], align 16
  %xsb = alloca i32, align 4
  %n_planes = alloca i32, align 4
  %n_planes_in = alloca i32, align 4
  %n_planes_out = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  %code = alloca i32, align 4
  %cache = alloca %struct.rinkj_color_cache_entry_s*, align 8
  %cleanup.dest.slot = alloca i32
  %row = alloca i8*, align 8
  %x = alloca i32, align 4
  %rowix = alloca i32, align 4
  %rowix71 = alloca i32, align 4
  %cbuf = alloca [4 x i8], align 1
  %color = alloca i32, align 4
  %hash = alloca i32, align 4
  %vbuf = alloca [4 x i8], align 1
  %color127 = alloca i32, align 4
  %hash130 = alloca i32, align 4
  %vbuf132 = alloca [4 x i8], align 1
  %cbuf138 = alloca [4 x i8], align 1
  %rowix179 = alloca i32, align 4
  %cbuf184 = alloca [4 x i8], align 1
  %color185 = alloca i32, align 4
  %hash186 = alloca i32, align 4
  %vbuf187 = alloca [4 x i8], align 1
  %spot = alloca i8, align 1
  %scolor = alloca [4 x i32], align 16
  %cmyk = alloca i32, align 4
  %sp_i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._RinkjDevice* %cmyk_dev, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.rinkj_device_s*
  store %struct.rinkj_device_s* %2, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %3 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %5 = bitcast %struct.rinkj_device_s* %4 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %5, i32 0) #6
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %6 = bitcast i8** %line to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast [15 x i8*]* %plane_data to i8*
  call void @llvm.lifetime.start(i64 120, i8* %7) #2
  %8 = bitcast [15 x i8*]* %split_plane_data to i8*
  call void @llvm.lifetime.start(i64 120, i8* %8) #2
  %9 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %n_planes_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %13 = load i32, i32* %num_components, align 4, !tbaa !76
  store i32 %13, i32* %n_planes_in, align 4, !tbaa !5
  %14 = bitcast i32* %n_planes_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  store i32 4, i32* %n_planes_out, align 4, !tbaa !5
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %18 = bitcast %struct.rinkj_color_cache_entry_s** %cache to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  store %struct.rinkj_color_cache_entry_s* null, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %19 = load i32, i32* %n_planes_in, align 4, !tbaa !5
  %20 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %separation_names = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %20, i32 0, i32 73
  %num_names = getelementptr inbounds %struct.gs_separation_names_s, %struct.gs_separation_names_s* %separation_names, i32 0, i32 0
  %21 = load i32, i32* %num_names, align 4, !tbaa !42
  %add = add nsw i32 %19, %21
  store i32 %add, i32* %n_planes, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width, align 4, !tbaa !78
  store i32 %23, i32* %xsb, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %25 = load i32, i32* %n_planes_out, align 4, !tbaa !5
  %cmp = icmp slt i32 %24, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %26, i32 0, i32 3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !79
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %28 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !80
  %29 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %29, i32 0, i32 3
  %30 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !79
  %31 = load i32, i32* %xsb, align 4, !tbaa !5
  %call2 = call i8* %28(%struct.gs_memory_s* %30, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #6
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 %idxprom
  store i8* %call2, i8** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %icc_link = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %34, i32 0, i32 76
  %35 = load i8*, i8** %icc_link, align 8, !tbaa !7
  %cmp3 = icmp ne i8* %35, null
  br i1 %cmp3, label %if.then, label %if.end.21

if.then:                                          ; preds = %for.end
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory4 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory4, align 8, !tbaa !79
  %procs5 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 1
  %alloc_bytes6 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs5, i32 0, i32 7
  %38 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes6, align 8, !tbaa !80
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory7 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %39, i32 0, i32 3
  %40 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory7, align 8, !tbaa !79
  %call8 = call i8* %38(%struct.gs_memory_s* %40, i32 524288, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #6
  %41 = bitcast i8* %call8 to %struct.rinkj_color_cache_entry_s*
  store %struct.rinkj_color_cache_entry_s* %41, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %42 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %cmp9 = icmp eq %struct.rinkj_color_cache_entry_s* %42, null
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %43 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %43, i64 0
  %key = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx11, i32 0, i32 0
  store i32 1, i32* %key, align 4, !tbaa !83
  store i32 1, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.18, %if.end
  %44 = load i32, i32* %i, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %44, 65536
  br i1 %cmp13, label %for.body.14, label %for.end.20

for.body.14:                                      ; preds = %for.cond.12
  %45 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %45 to i64
  %46 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %46, i64 %idxprom15
  %key17 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx16, i32 0, i32 0
  store i32 0, i32* %key17, align 4, !tbaa !83
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.14
  %47 = load i32, i32* %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %47, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !5
  br label %for.cond.12

for.end.20:                                       ; preds = %for.cond.12
  br label %if.end.21

if.end.21:                                        ; preds = %for.end.20, %for.end
  %arrayidx22 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 0
  %48 = load i8*, i8** %arrayidx22, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 0
  store i8* %48, i8** %arrayidx23, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 1
  %49 = load i8*, i8** %arrayidx24, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 1
  store i8* %49, i8** %arrayidx25, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 2
  %50 = load i8*, i8** %arrayidx26, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 2
  store i8* %50, i8** %arrayidx27, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 3
  %51 = load i8*, i8** %arrayidx28, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 3
  store i8* %51, i8** %arrayidx29, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 0
  %52 = load i8*, i8** %arrayidx30, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 4
  store i8* %52, i8** %arrayidx31, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 1
  %53 = load i8*, i8** %arrayidx32, align 8, !tbaa !1
  %arrayidx33 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 5
  store i8* %53, i8** %arrayidx33, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 3
  %54 = load i8*, i8** %arrayidx34, align 8, !tbaa !1
  %arrayidx35 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i64 6
  store i8* %54, i8** %arrayidx35, align 8, !tbaa !1
  %55 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory36 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %55, i32 0, i32 3
  %56 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory36, align 8, !tbaa !79
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %56, i32 0, i32 1
  %alloc_bytes38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 7
  %57 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes38, align 8, !tbaa !80
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !79
  %60 = load i32, i32* %raster, align 4, !tbaa !5
  %call40 = call i8* %57(%struct.gs_memory_s* %59, i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #6
  store i8* %call40, i8** %line, align 8, !tbaa !1
  store i32 0, i32* %y, align 4, !tbaa !5
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.275, %if.end.21
  %61 = load i32, i32* %y, align 4, !tbaa !5
  %62 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %62, i32 0, i32 14
  %63 = load i32, i32* %height, align 4, !tbaa !85
  %cmp42 = icmp slt i32 %61, %63
  br i1 %cmp42, label %for.body.43, label %for.end.277

for.body.43:                                      ; preds = %for.cond.41
  %64 = bitcast i8** %row to i8*
  call void @llvm.lifetime.start(i64 8, i8* %64) #2
  %65 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %65) #2
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %67 = load i32, i32* %y, align 4, !tbaa !5
  %68 = load i8*, i8** %line, align 8, !tbaa !1
  %call44 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %66, i32 %67, i8* %68, i8** %row) #6
  store i32 %call44, i32* %code, align 4, !tbaa !5
  %69 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %icc_link45 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %69, i32 0, i32 76
  %70 = load i8*, i8** %icc_link45, align 8, !tbaa !7
  %cmp46 = icmp eq i8* %70, null
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %for.body.43
  %71 = bitcast i32* %rowix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %71) #2
  store i32 0, i32* %rowix, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.66, %if.then.47
  %72 = load i32, i32* %x, align 4, !tbaa !5
  %73 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width49 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %73, i32 0, i32 13
  %74 = load i32, i32* %width49, align 4, !tbaa !78
  %cmp50 = icmp slt i32 %72, %74
  br i1 %cmp50, label %for.body.51, label %for.end.68

for.body.51:                                      ; preds = %for.cond.48
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.62, %for.body.51
  %75 = load i32, i32* %i, align 4, !tbaa !5
  %76 = load i32, i32* %n_planes_in, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %75, %76
  br i1 %cmp53, label %for.body.54, label %for.end.64

for.body.54:                                      ; preds = %for.cond.52
  %77 = load i32, i32* %rowix, align 4, !tbaa !5
  %78 = load i32, i32* %i, align 4, !tbaa !5
  %add55 = add nsw i32 %77, %78
  %idxprom56 = sext i32 %add55 to i64
  %79 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %79, i64 %idxprom56
  %80 = load i8, i8* %arrayidx57, align 1, !tbaa !43
  %81 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom58 = sext i32 %81 to i64
  %82 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %82 to i64
  %arrayidx60 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 %idxprom59
  %83 = load i8*, i8** %arrayidx60, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds i8, i8* %83, i64 %idxprom58
  store i8 %80, i8* %arrayidx61, align 1, !tbaa !43
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.54
  %84 = load i32, i32* %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %84, 1
  store i32 %inc63, i32* %i, align 4, !tbaa !5
  br label %for.cond.52

for.end.64:                                       ; preds = %for.cond.52
  %85 = load i32, i32* %n_planes, align 4, !tbaa !5
  %86 = load i32, i32* %rowix, align 4, !tbaa !5
  %add65 = add nsw i32 %86, %85
  store i32 %add65, i32* %rowix, align 4, !tbaa !5
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.64
  %87 = load i32, i32* %x, align 4, !tbaa !5
  %inc67 = add nsw i32 %87, 1
  store i32 %inc67, i32* %x, align 4, !tbaa !5
  br label %for.cond.48

for.end.68:                                       ; preds = %for.cond.48
  %88 = bitcast i32* %rowix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #2
  br label %if.end.272

if.else:                                          ; preds = %for.body.43
  %89 = load i32, i32* %n_planes, align 4, !tbaa !5
  %cmp69 = icmp eq i32 %89, 3
  br i1 %cmp69, label %if.then.70, label %if.else.120

if.then.70:                                       ; preds = %if.else
  %90 = bitcast i32* %rowix71 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  store i32 0, i32* %rowix71, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.117, %if.then.70
  %91 = load i32, i32* %x, align 4, !tbaa !5
  %92 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width73 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %92, i32 0, i32 13
  %93 = load i32, i32* %width73, align 4, !tbaa !78
  %cmp74 = icmp slt i32 %91, %93
  br i1 %cmp74, label %for.body.75, label %for.end.119

for.body.75:                                      ; preds = %for.cond.72
  %94 = bitcast [4 x i8]* %cbuf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %94) #2
  %95 = bitcast [4 x i8]* %cbuf to i8*
  call void @llvm.memset.p0i8.i64(i8* %95, i8 0, i64 4, i32 1, i1 false)
  %96 = bitcast i32* %color to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #2
  %97 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.start(i64 4, i8* %97) #2
  %98 = bitcast [4 x i8]* %vbuf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %98) #2
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %cbuf, i32 0, i32 0
  %99 = load i8*, i8** %row, align 8, !tbaa !1
  %100 = load i32, i32* %rowix71, align 4, !tbaa !5
  %idx.ext = sext i32 %100 to i64
  %add.ptr = getelementptr inbounds i8, i8* %99, i64 %idx.ext
  %call76 = call i8* @memcpy(i8* %arraydecay, i8* %add.ptr, i64 3) #8
  %arraydecay77 = getelementptr inbounds [4 x i8], [4 x i8]* %cbuf, i32 0, i32 0
  %101 = bitcast i8* %arraydecay77 to i32*
  %arrayidx78 = getelementptr inbounds i32, i32* %101, i64 0
  %102 = load i32, i32* %arrayidx78, align 4, !tbaa !5
  store i32 %102, i32* %color, align 4, !tbaa !5
  %103 = load i32, i32* %color, align 4, !tbaa !5
  %call79 = call i32 @rinkj_color_hash(i32 %103) #6
  store i32 %call79, i32* %hash, align 4, !tbaa !5
  %104 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom80 = zext i32 %104 to i64
  %105 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %105, i64 %idxprom80
  %key82 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx81, i32 0, i32 0
  %106 = load i32, i32* %key82, align 4, !tbaa !83
  %107 = load i32, i32* %color, align 4, !tbaa !5
  %cmp83 = icmp ne i32 %106, %107
  br i1 %cmp83, label %if.then.84, label %if.else.93

if.then.84:                                       ; preds = %for.body.75
  %108 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %109 = bitcast %struct.rinkj_device_s* %108 to %struct.gx_device_s*
  %110 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %icc_link85 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %110, i32 0, i32 76
  %111 = load i8*, i8** %icc_link85, align 8, !tbaa !7
  %112 = bitcast i8* %111 to %struct.gsicc_link_s*
  %113 = bitcast [4 x i8]* %cbuf to i8*
  %114 = bitcast [4 x i8]* %vbuf to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %109, %struct.gsicc_link_s* %112, i8* %113, i8* %114, i32 1) #6
  %115 = load i32, i32* %color, align 4, !tbaa !5
  %116 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom86 = zext i32 %116 to i64
  %117 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %117, i64 %idxprom86
  %key88 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx87, i32 0, i32 0
  store i32 %115, i32* %key88, align 4, !tbaa !83
  %arraydecay89 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf, i32 0, i32 0
  %118 = bitcast i8* %arraydecay89 to i32*
  %arrayidx90 = getelementptr inbounds i32, i32* %118, i64 0
  %119 = load i32, i32* %arrayidx90, align 4, !tbaa !5
  %120 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom91 = zext i32 %120 to i64
  %121 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %121, i64 %idxprom91
  %value = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx92, i32 0, i32 1
  store i32 %119, i32* %value, align 4, !tbaa !86
  br label %if.end.99

if.else.93:                                       ; preds = %for.body.75
  %122 = load i32, i32* %hash, align 4, !tbaa !5
  %idxprom94 = zext i32 %122 to i64
  %123 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %123, i64 %idxprom94
  %value96 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx95, i32 0, i32 1
  %124 = load i32, i32* %value96, align 4, !tbaa !86
  %arraydecay97 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf, i32 0, i32 0
  %125 = bitcast i8* %arraydecay97 to i32*
  %arrayidx98 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 %124, i32* %arrayidx98, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.93, %if.then.84
  %arrayidx100 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf, i32 0, i64 0
  %126 = load i8, i8* %arrayidx100, align 1, !tbaa !43
  %127 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom101 = sext i32 %127 to i64
  %arrayidx102 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 0
  %128 = load i8*, i8** %arrayidx102, align 8, !tbaa !1
  %arrayidx103 = getelementptr inbounds i8, i8* %128, i64 %idxprom101
  store i8 %126, i8* %arrayidx103, align 1, !tbaa !43
  %arrayidx104 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf, i32 0, i64 1
  %129 = load i8, i8* %arrayidx104, align 1, !tbaa !43
  %130 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom105 = sext i32 %130 to i64
  %arrayidx106 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 1
  %131 = load i8*, i8** %arrayidx106, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds i8, i8* %131, i64 %idxprom105
  store i8 %129, i8* %arrayidx107, align 1, !tbaa !43
  %arrayidx108 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf, i32 0, i64 2
  %132 = load i8, i8* %arrayidx108, align 1, !tbaa !43
  %133 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom109 = sext i32 %133 to i64
  %arrayidx110 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 2
  %134 = load i8*, i8** %arrayidx110, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds i8, i8* %134, i64 %idxprom109
  store i8 %132, i8* %arrayidx111, align 1, !tbaa !43
  %arrayidx112 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf, i32 0, i64 3
  %135 = load i8, i8* %arrayidx112, align 1, !tbaa !43
  %136 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom113 = sext i32 %136 to i64
  %arrayidx114 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 3
  %137 = load i8*, i8** %arrayidx114, align 8, !tbaa !1
  %arrayidx115 = getelementptr inbounds i8, i8* %137, i64 %idxprom113
  store i8 %135, i8* %arrayidx115, align 1, !tbaa !43
  %138 = load i32, i32* %n_planes, align 4, !tbaa !5
  %139 = load i32, i32* %rowix71, align 4, !tbaa !5
  %add116 = add nsw i32 %139, %138
  store i32 %add116, i32* %rowix71, align 4, !tbaa !5
  %140 = bitcast [4 x i8]* %vbuf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %hash to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %color to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast [4 x i8]* %cbuf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.99
  %144 = load i32, i32* %x, align 4, !tbaa !5
  %inc118 = add nsw i32 %144, 1
  store i32 %inc118, i32* %x, align 4, !tbaa !5
  br label %for.cond.72

for.end.119:                                      ; preds = %for.cond.72
  %145 = bitcast i32* %rowix71 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  br label %if.end.271

if.else.120:                                      ; preds = %if.else
  %146 = load i32, i32* %n_planes, align 4, !tbaa !5
  %cmp121 = icmp eq i32 %146, 4
  br i1 %cmp121, label %if.then.122, label %if.else.176

if.then.122:                                      ; preds = %if.else.120
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.173, %if.then.122
  %147 = load i32, i32* %x, align 4, !tbaa !5
  %148 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width124 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %148, i32 0, i32 13
  %149 = load i32, i32* %width124, align 4, !tbaa !78
  %cmp125 = icmp slt i32 %147, %149
  br i1 %cmp125, label %for.body.126, label %for.end.175

for.body.126:                                     ; preds = %for.cond.123
  %150 = bitcast i32* %color127 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %150) #2
  %151 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom128 = sext i32 %151 to i64
  %152 = load i8*, i8** %row, align 8, !tbaa !1
  %153 = bitcast i8* %152 to i32*
  %arrayidx129 = getelementptr inbounds i32, i32* %153, i64 %idxprom128
  %154 = load i32, i32* %arrayidx129, align 4, !tbaa !5
  store i32 %154, i32* %color127, align 4, !tbaa !5
  %155 = bitcast i32* %hash130 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %155) #2
  %156 = load i32, i32* %color127, align 4, !tbaa !5
  %call131 = call i32 @rinkj_color_hash(i32 %156) #6
  store i32 %call131, i32* %hash130, align 4, !tbaa !5
  %157 = bitcast [4 x i8]* %vbuf132 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %157) #2
  %158 = load i32, i32* %hash130, align 4, !tbaa !5
  %idxprom133 = zext i32 %158 to i64
  %159 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %159, i64 %idxprom133
  %key135 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx134, i32 0, i32 0
  %160 = load i32, i32* %key135, align 4, !tbaa !83
  %161 = load i32, i32* %color127, align 4, !tbaa !5
  %cmp136 = icmp ne i32 %160, %161
  br i1 %cmp136, label %if.then.137, label %if.else.150

if.then.137:                                      ; preds = %for.body.126
  %162 = bitcast [4 x i8]* %cbuf138 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %162) #2
  %163 = load i32, i32* %color127, align 4, !tbaa !5
  %arraydecay139 = getelementptr inbounds [4 x i8], [4 x i8]* %cbuf138, i32 0, i32 0
  %164 = bitcast i8* %arraydecay139 to i32*
  %arrayidx140 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %163, i32* %arrayidx140, align 4, !tbaa !5
  %165 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %166 = bitcast %struct.rinkj_device_s* %165 to %struct.gx_device_s*
  %167 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %icc_link141 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %167, i32 0, i32 76
  %168 = load i8*, i8** %icc_link141, align 8, !tbaa !7
  %169 = bitcast i8* %168 to %struct.gsicc_link_s*
  %170 = bitcast [4 x i8]* %cbuf138 to i8*
  %171 = bitcast [4 x i8]* %vbuf132 to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %166, %struct.gsicc_link_s* %169, i8* %170, i8* %171, i32 1) #6
  %172 = load i32, i32* %color127, align 4, !tbaa !5
  %173 = load i32, i32* %hash130, align 4, !tbaa !5
  %idxprom142 = zext i32 %173 to i64
  %174 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx143 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %174, i64 %idxprom142
  %key144 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx143, i32 0, i32 0
  store i32 %172, i32* %key144, align 4, !tbaa !83
  %arraydecay145 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf132, i32 0, i32 0
  %175 = bitcast i8* %arraydecay145 to i32*
  %arrayidx146 = getelementptr inbounds i32, i32* %175, i64 0
  %176 = load i32, i32* %arrayidx146, align 4, !tbaa !5
  %177 = load i32, i32* %hash130, align 4, !tbaa !5
  %idxprom147 = zext i32 %177 to i64
  %178 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %178, i64 %idxprom147
  %value149 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx148, i32 0, i32 1
  store i32 %176, i32* %value149, align 4, !tbaa !86
  %179 = bitcast [4 x i8]* %cbuf138 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #2
  br label %if.end.156

if.else.150:                                      ; preds = %for.body.126
  %180 = load i32, i32* %hash130, align 4, !tbaa !5
  %idxprom151 = zext i32 %180 to i64
  %181 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %181, i64 %idxprom151
  %value153 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx152, i32 0, i32 1
  %182 = load i32, i32* %value153, align 4, !tbaa !86
  %arraydecay154 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf132, i32 0, i32 0
  %183 = bitcast i8* %arraydecay154 to i32*
  %arrayidx155 = getelementptr inbounds i32, i32* %183, i64 0
  store i32 %182, i32* %arrayidx155, align 4, !tbaa !5
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.150, %if.then.137
  %arrayidx157 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf132, i32 0, i64 0
  %184 = load i8, i8* %arrayidx157, align 1, !tbaa !43
  %185 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom158 = sext i32 %185 to i64
  %arrayidx159 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 0
  %186 = load i8*, i8** %arrayidx159, align 8, !tbaa !1
  %arrayidx160 = getelementptr inbounds i8, i8* %186, i64 %idxprom158
  store i8 %184, i8* %arrayidx160, align 1, !tbaa !43
  %arrayidx161 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf132, i32 0, i64 1
  %187 = load i8, i8* %arrayidx161, align 1, !tbaa !43
  %188 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom162 = sext i32 %188 to i64
  %arrayidx163 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 1
  %189 = load i8*, i8** %arrayidx163, align 8, !tbaa !1
  %arrayidx164 = getelementptr inbounds i8, i8* %189, i64 %idxprom162
  store i8 %187, i8* %arrayidx164, align 1, !tbaa !43
  %arrayidx165 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf132, i32 0, i64 2
  %190 = load i8, i8* %arrayidx165, align 1, !tbaa !43
  %191 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom166 = sext i32 %191 to i64
  %arrayidx167 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 2
  %192 = load i8*, i8** %arrayidx167, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds i8, i8* %192, i64 %idxprom166
  store i8 %190, i8* %arrayidx168, align 1, !tbaa !43
  %arrayidx169 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf132, i32 0, i64 3
  %193 = load i8, i8* %arrayidx169, align 1, !tbaa !43
  %194 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom170 = sext i32 %194 to i64
  %arrayidx171 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 3
  %195 = load i8*, i8** %arrayidx171, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds i8, i8* %195, i64 %idxprom170
  store i8 %193, i8* %arrayidx172, align 1, !tbaa !43
  %196 = bitcast [4 x i8]* %vbuf132 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #2
  %197 = bitcast i32* %hash130 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #2
  %198 = bitcast i32* %color127 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #2
  br label %for.inc.173

for.inc.173:                                      ; preds = %if.end.156
  %199 = load i32, i32* %x, align 4, !tbaa !5
  %inc174 = add nsw i32 %199, 1
  store i32 %inc174, i32* %x, align 4, !tbaa !5
  br label %for.cond.123

for.end.175:                                      ; preds = %for.cond.123
  br label %if.end.270

if.else.176:                                      ; preds = %if.else.120
  %200 = load i32, i32* %n_planes, align 4, !tbaa !5
  %cmp177 = icmp eq i32 %200, 5
  br i1 %cmp177, label %if.then.178, label %if.end.269

if.then.178:                                      ; preds = %if.else.176
  %201 = bitcast i32* %rowix179 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #2
  store i32 0, i32* %rowix179, align 4, !tbaa !5
  store i32 0, i32* %x, align 4, !tbaa !5
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.266, %if.then.178
  %202 = load i32, i32* %x, align 4, !tbaa !5
  %203 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width181 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %203, i32 0, i32 13
  %204 = load i32, i32* %width181, align 4, !tbaa !78
  %cmp182 = icmp slt i32 %202, %204
  br i1 %cmp182, label %for.body.183, label %for.end.268

for.body.183:                                     ; preds = %for.cond.180
  %205 = bitcast [4 x i8]* %cbuf184 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %205) #2
  %206 = bitcast i32* %color185 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %206) #2
  %207 = bitcast i32* %hash186 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %207) #2
  %208 = bitcast [4 x i8]* %vbuf187 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %208) #2
  call void @llvm.lifetime.start(i64 1, i8* %spot) #2
  %209 = bitcast [4 x i32]* %scolor to i8*
  call void @llvm.lifetime.start(i64 16, i8* %209) #2
  %210 = bitcast [4 x i32]* %scolor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %210, i8* bitcast ([4 x i32]* @rinkj_write_image_data.scolor to i8*), i64 16, i32 16, i1 false)
  %arraydecay188 = getelementptr inbounds [4 x i8], [4 x i8]* %cbuf184, i32 0, i32 0
  %211 = load i8*, i8** %row, align 8, !tbaa !1
  %212 = load i32, i32* %rowix179, align 4, !tbaa !5
  %idx.ext189 = sext i32 %212 to i64
  %add.ptr190 = getelementptr inbounds i8, i8* %211, i64 %idx.ext189
  %call191 = call i8* @memcpy(i8* %arraydecay188, i8* %add.ptr190, i64 4) #8
  %arraydecay192 = getelementptr inbounds [4 x i8], [4 x i8]* %cbuf184, i32 0, i32 0
  %213 = bitcast i8* %arraydecay192 to i32*
  %arrayidx193 = getelementptr inbounds i32, i32* %213, i64 0
  %214 = load i32, i32* %arrayidx193, align 4, !tbaa !5
  store i32 %214, i32* %color185, align 4, !tbaa !5
  %215 = load i32, i32* %color185, align 4, !tbaa !5
  %call194 = call i32 @rinkj_color_hash(i32 %215) #6
  store i32 %call194, i32* %hash186, align 4, !tbaa !5
  %216 = load i32, i32* %hash186, align 4, !tbaa !5
  %idxprom195 = zext i32 %216 to i64
  %217 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %217, i64 %idxprom195
  %key197 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx196, i32 0, i32 0
  %218 = load i32, i32* %key197, align 4, !tbaa !83
  %219 = load i32, i32* %color185, align 4, !tbaa !5
  %cmp198 = icmp ne i32 %218, %219
  br i1 %cmp198, label %if.then.199, label %if.else.209

if.then.199:                                      ; preds = %for.body.183
  %220 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %221 = bitcast %struct.rinkj_device_s* %220 to %struct.gx_device_s*
  %222 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev, align 8, !tbaa !1
  %icc_link200 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %222, i32 0, i32 76
  %223 = load i8*, i8** %icc_link200, align 8, !tbaa !7
  %224 = bitcast i8* %223 to %struct.gsicc_link_s*
  %225 = bitcast [4 x i8]* %cbuf184 to i8*
  %226 = bitcast [4 x i8]* %vbuf187 to i8*
  call void @gscms_transform_color(%struct.gx_device_s* %221, %struct.gsicc_link_s* %224, i8* %225, i8* %226, i32 1) #6
  %227 = load i32, i32* %color185, align 4, !tbaa !5
  %228 = load i32, i32* %hash186, align 4, !tbaa !5
  %idxprom201 = zext i32 %228 to i64
  %229 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %229, i64 %idxprom201
  %key203 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx202, i32 0, i32 0
  store i32 %227, i32* %key203, align 4, !tbaa !83
  %arraydecay204 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i32 0
  %230 = bitcast i8* %arraydecay204 to i32*
  %arrayidx205 = getelementptr inbounds i32, i32* %230, i64 0
  %231 = load i32, i32* %arrayidx205, align 4, !tbaa !5
  %232 = load i32, i32* %hash186, align 4, !tbaa !5
  %idxprom206 = zext i32 %232 to i64
  %233 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %233, i64 %idxprom206
  %value208 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx207, i32 0, i32 1
  store i32 %231, i32* %value208, align 4, !tbaa !86
  br label %if.end.215

if.else.209:                                      ; preds = %for.body.183
  %234 = load i32, i32* %hash186, align 4, !tbaa !5
  %idxprom210 = zext i32 %234 to i64
  %235 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %235, i64 %idxprom210
  %value212 = getelementptr inbounds %struct.rinkj_color_cache_entry_s, %struct.rinkj_color_cache_entry_s* %arrayidx211, i32 0, i32 1
  %236 = load i32, i32* %value212, align 4, !tbaa !86
  %arraydecay213 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i32 0
  %237 = bitcast i8* %arraydecay213 to i32*
  %arrayidx214 = getelementptr inbounds i32, i32* %237, i64 0
  store i32 %236, i32* %arrayidx214, align 4, !tbaa !5
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.209, %if.then.199
  %238 = load i32, i32* %rowix179, align 4, !tbaa !5
  %add216 = add nsw i32 %238, 4
  %idxprom217 = sext i32 %add216 to i64
  %239 = load i8*, i8** %row, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds i8, i8* %239, i64 %idxprom217
  %240 = load i8, i8* %arrayidx218, align 1, !tbaa !43
  store i8 %240, i8* %spot, align 1, !tbaa !43
  %241 = load i8, i8* %spot, align 1, !tbaa !43
  %conv = zext i8 %241 to i32
  %cmp219 = icmp ne i32 %conv, 0
  br i1 %cmp219, label %if.then.221, label %if.else.247

if.then.221:                                      ; preds = %if.end.215
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.244, %if.then.221
  %242 = load i32, i32* %i, align 4, !tbaa !5
  %cmp223 = icmp slt i32 %242, 4
  br i1 %cmp223, label %for.body.225, label %for.end.246

for.body.225:                                     ; preds = %for.cond.222
  %243 = bitcast i32* %cmyk to i8*
  call void @llvm.lifetime.start(i64 4, i8* %243) #2
  %244 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom226 = sext i32 %244 to i64
  %arrayidx227 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i64 %idxprom226
  %245 = load i8, i8* %arrayidx227, align 1, !tbaa !43
  %conv228 = zext i8 %245 to i32
  store i32 %conv228, i32* %cmyk, align 4, !tbaa !5
  %246 = bitcast i32* %sp_i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %246) #2
  %247 = load i8, i8* %spot, align 1, !tbaa !43
  %conv229 = zext i8 %247 to i32
  store i32 %conv229, i32* %sp_i, align 4, !tbaa !5
  %248 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %248) #2
  %249 = load i32, i32* %cmyk, align 4, !tbaa !5
  %shl = shl i32 %249, 8
  %250 = load i32, i32* %cmyk, align 4, !tbaa !5
  %sub = sub nsw i32 %shl, %250
  store i32 %sub, i32* %tmp, align 4, !tbaa !5
  %251 = load i32, i32* %sp_i, align 4, !tbaa !5
  %252 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom230 = sext i32 %252 to i64
  %arrayidx231 = getelementptr inbounds [4 x i32], [4 x i32]* %scolor, i32 0, i64 %idxprom230
  %253 = load i32, i32* %arrayidx231, align 4, !tbaa !5
  %mul = mul nsw i32 %251, %253
  %254 = load i32, i32* %cmyk, align 4, !tbaa !5
  %sub232 = sub nsw i32 255, %254
  %mul233 = mul nsw i32 %mul, %sub232
  %shr = ashr i32 %mul233, 8
  %255 = load i32, i32* %tmp, align 4, !tbaa !5
  %add234 = add nsw i32 %255, %shr
  store i32 %add234, i32* %tmp, align 4, !tbaa !5
  %256 = load i32, i32* %tmp, align 4, !tbaa !5
  %add235 = add nsw i32 %256, 128
  store i32 %add235, i32* %tmp, align 4, !tbaa !5
  %257 = load i32, i32* %tmp, align 4, !tbaa !5
  %258 = load i32, i32* %tmp, align 4, !tbaa !5
  %shr236 = ashr i32 %258, 8
  %add237 = add nsw i32 %257, %shr236
  %shr238 = ashr i32 %add237, 8
  %conv239 = trunc i32 %shr238 to i8
  %259 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom240 = sext i32 %259 to i64
  %260 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom241 = sext i32 %260 to i64
  %arrayidx242 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 %idxprom241
  %261 = load i8*, i8** %arrayidx242, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds i8, i8* %261, i64 %idxprom240
  store i8 %conv239, i8* %arrayidx243, align 1, !tbaa !43
  %262 = bitcast i32* %tmp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %262) #2
  %263 = bitcast i32* %sp_i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %263) #2
  %264 = bitcast i32* %cmyk to i8*
  call void @llvm.lifetime.end(i64 4, i8* %264) #2
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.225
  %265 = load i32, i32* %i, align 4, !tbaa !5
  %inc245 = add nsw i32 %265, 1
  store i32 %inc245, i32* %i, align 4, !tbaa !5
  br label %for.cond.222

for.end.246:                                      ; preds = %for.cond.222
  br label %if.end.264

if.else.247:                                      ; preds = %if.end.215
  %arrayidx248 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i64 0
  %266 = load i8, i8* %arrayidx248, align 1, !tbaa !43
  %267 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom249 = sext i32 %267 to i64
  %arrayidx250 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 0
  %268 = load i8*, i8** %arrayidx250, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds i8, i8* %268, i64 %idxprom249
  store i8 %266, i8* %arrayidx251, align 1, !tbaa !43
  %arrayidx252 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i64 1
  %269 = load i8, i8* %arrayidx252, align 1, !tbaa !43
  %270 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom253 = sext i32 %270 to i64
  %arrayidx254 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 1
  %271 = load i8*, i8** %arrayidx254, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds i8, i8* %271, i64 %idxprom253
  store i8 %269, i8* %arrayidx255, align 1, !tbaa !43
  %arrayidx256 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i64 2
  %272 = load i8, i8* %arrayidx256, align 1, !tbaa !43
  %273 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom257 = sext i32 %273 to i64
  %arrayidx258 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 2
  %274 = load i8*, i8** %arrayidx258, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds i8, i8* %274, i64 %idxprom257
  store i8 %272, i8* %arrayidx259, align 1, !tbaa !43
  %arrayidx260 = getelementptr inbounds [4 x i8], [4 x i8]* %vbuf187, i32 0, i64 3
  %275 = load i8, i8* %arrayidx260, align 1, !tbaa !43
  %276 = load i32, i32* %x, align 4, !tbaa !5
  %idxprom261 = sext i32 %276 to i64
  %arrayidx262 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 3
  %277 = load i8*, i8** %arrayidx262, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds i8, i8* %277, i64 %idxprom261
  store i8 %275, i8* %arrayidx263, align 1, !tbaa !43
  br label %if.end.264

if.end.264:                                       ; preds = %if.else.247, %for.end.246
  %278 = load i32, i32* %n_planes, align 4, !tbaa !5
  %279 = load i32, i32* %rowix179, align 4, !tbaa !5
  %add265 = add nsw i32 %279, %278
  store i32 %add265, i32* %rowix179, align 4, !tbaa !5
  %280 = bitcast [4 x i32]* %scolor to i8*
  call void @llvm.lifetime.end(i64 16, i8* %280) #2
  call void @llvm.lifetime.end(i64 1, i8* %spot) #2
  %281 = bitcast [4 x i8]* %vbuf187 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #2
  %282 = bitcast i32* %hash186 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #2
  %283 = bitcast i32* %color185 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #2
  %284 = bitcast [4 x i8]* %cbuf184 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %284) #2
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.264
  %285 = load i32, i32* %x, align 4, !tbaa !5
  %inc267 = add nsw i32 %285, 1
  store i32 %inc267, i32* %x, align 4, !tbaa !5
  br label %for.cond.180

for.end.268:                                      ; preds = %for.cond.180
  %286 = bitcast i32* %rowix179 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #2
  br label %if.end.269

if.end.269:                                       ; preds = %for.end.268, %if.else.176
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.269, %for.end.175
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %for.end.119
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %for.end.68
  %287 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  %arraydecay273 = getelementptr inbounds [15 x i8*], [15 x i8*]* %split_plane_data, i32 0, i32 0
  %call274 = call i32 @rinkj_device_write(%struct._RinkjDevice* %287, i8** %arraydecay273) #6
  store i32 %call274, i32* %code, align 4, !tbaa !5
  %288 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %288) #2
  %289 = bitcast i8** %row to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #2
  br label %for.inc.275

for.inc.275:                                      ; preds = %if.end.272
  %290 = load i32, i32* %y, align 4, !tbaa !5
  %inc276 = add nsw i32 %290, 1
  store i32 %inc276, i32* %y, align 4, !tbaa !5
  br label %for.cond.41

for.end.277:                                      ; preds = %for.cond.41
  %291 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  %call278 = call i32 @rinkj_device_write(%struct._RinkjDevice* %291, i8** null) #6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.288, %for.end.277
  %292 = load i32, i32* %i, align 4, !tbaa !5
  %293 = load i32, i32* %n_planes_in, align 4, !tbaa !5
  %cmp280 = icmp slt i32 %292, %293
  br i1 %cmp280, label %for.body.282, label %for.end.290

for.body.282:                                     ; preds = %for.cond.279
  %294 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory283 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %294, i32 0, i32 3
  %295 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory283, align 8, !tbaa !79
  %procs284 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %295, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs284, i32 0, i32 2
  %296 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !87
  %297 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory285 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %297, i32 0, i32 3
  %298 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory285, align 8, !tbaa !79
  %299 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom286 = sext i32 %299 to i64
  %arrayidx287 = getelementptr inbounds [15 x i8*], [15 x i8*]* %plane_data, i32 0, i64 %idxprom286
  %300 = load i8*, i8** %arrayidx287, align 8, !tbaa !1
  call void %296(%struct.gs_memory_s* %298, i8* %300, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #6
  br label %for.inc.288

for.inc.288:                                      ; preds = %for.body.282
  %301 = load i32, i32* %i, align 4, !tbaa !5
  %inc289 = add nsw i32 %301, 1
  store i32 %inc289, i32* %i, align 4, !tbaa !5
  br label %for.cond.279

for.end.290:                                      ; preds = %for.cond.279
  %302 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory291 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %302, i32 0, i32 3
  %303 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory291, align 8, !tbaa !79
  %procs292 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %303, i32 0, i32 1
  %free_object293 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs292, i32 0, i32 2
  %304 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object293, align 8, !tbaa !87
  %305 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory294 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %305, i32 0, i32 3
  %306 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory294, align 8, !tbaa !79
  %307 = load i8*, i8** %line, align 8, !tbaa !1
  call void %304(%struct.gs_memory_s* %306, i8* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #6
  %308 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory295 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %308, i32 0, i32 3
  %309 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory295, align 8, !tbaa !79
  %procs296 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %309, i32 0, i32 1
  %free_object297 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs296, i32 0, i32 2
  %310 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object297, align 8, !tbaa !87
  %311 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory298 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %311, i32 0, i32 3
  %312 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory298, align 8, !tbaa !79
  %313 = load %struct.rinkj_color_cache_entry_s*, %struct.rinkj_color_cache_entry_s** %cache, align 8, !tbaa !1
  %314 = bitcast %struct.rinkj_color_cache_entry_s* %313 to i8*
  call void %310(%struct.gs_memory_s* %312, i8* %314, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0)) #6
  %315 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %315, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.290, %if.then.10
  %316 = bitcast %struct.rinkj_color_cache_entry_s** %cache to i8*
  call void @llvm.lifetime.end(i64 8, i8* %316) #2
  %317 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #2
  %318 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #2
  %319 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #2
  %320 = bitcast i32* %n_planes_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #2
  %321 = bitcast i32* %n_planes_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #2
  %322 = bitcast i32* %n_planes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %322) #2
  %323 = bitcast i32* %xsb to i8*
  call void @llvm.lifetime.end(i64 4, i8* %323) #2
  %324 = bitcast [15 x i8*]* %split_plane_data to i8*
  call void @llvm.lifetime.end(i64 120, i8* %324) #2
  %325 = bitcast [15 x i8*]* %plane_data to i8*
  call void @llvm.lifetime.end(i64 120, i8* %325) #2
  %326 = bitcast i8** %line to i8*
  call void @llvm.lifetime.end(i64 8, i8* %326) #2
  %327 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #2
  %328 = bitcast %struct.rinkj_device_s** %rdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %328) #2
  %329 = load i32, i32* %retval
  ret i32 %329
}

declare %struct._RinkjByteStream* @rinkj_byte_stream_file_new(%struct._IO_FILE*) #0

declare %struct._RinkjDevice* @rinkj_epson870_new(%struct._RinkjByteStream*) #0

declare %struct._RinkjDevice* @rinkj_screen_eb_new(%struct._RinkjDevice*) #0

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_set_luts(%struct.rinkj_device_s* %rdev, %struct._RinkjDevice* %printer_dev, %struct._RinkjDevice* %cmyk_dev, i8* %config_fn, %struct._RinkjDeviceParams* %params) #1 {
entry:
  %rdev.addr = alloca %struct.rinkj_device_s*, align 8
  %printer_dev.addr = alloca %struct._RinkjDevice*, align 8
  %cmyk_dev.addr = alloca %struct._RinkjDevice*, align 8
  %config_fn.addr = alloca i8*, align 8
  %params.addr = alloca %struct._RinkjDeviceParams*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %linebuf = alloca [256 x i8], align 16
  %key = alloca [256 x i8], align 16
  %val = alloca i8*, align 8
  %lutset = alloca %struct.rinkj_lutset_s, align 8
  %i = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp84 = alloca i32, align 4
  %__s1_len92 = alloca i64, align 8
  %__s2_len94 = alloca i64, align 8
  %tmp95 = alloca i32, align 4
  %__s1102 = alloca i8*, align 8
  %__result105 = alloca i32, align 4
  %tmp143 = alloca i32, align 4
  %__s1_len151 = alloca i64, align 8
  %__s2_len153 = alloca i64, align 8
  %tmp154 = alloca i32, align 4
  %__s1161 = alloca i8*, align 8
  %__result164 = alloca i32, align 4
  %tmp202 = alloca i32, align 4
  store %struct.rinkj_device_s* %rdev, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  store %struct._RinkjDevice* %printer_dev, %struct._RinkjDevice** %printer_dev.addr, align 8, !tbaa !1
  store %struct._RinkjDevice* %cmyk_dev, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  store i8* %config_fn, i8** %config_fn.addr, align 8, !tbaa !1
  store %struct._RinkjDeviceParams* %params, %struct._RinkjDeviceParams** %params.addr, align 8, !tbaa !1
  %0 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %config_fn.addr, align 8, !tbaa !1
  %call = call %struct._IO_FILE* @gp_fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #6
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8, !tbaa !1
  %2 = bitcast [256 x i8]* %linebuf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %2) #2
  %3 = bitcast [256 x i8]* %key to i8*
  call void @llvm.lifetime.start(i64 256, i8* %3) #2
  %4 = bitcast i8** %val to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast %struct.rinkj_lutset_s* %lutset to i8*
  call void @llvm.lifetime.start(i64 128, i8* %5) #2
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  %plane_names = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %lutset, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8** %plane_names, align 8, !tbaa !88
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %7, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %lut = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %lutset, i32 0, i32 1
  %arrayidx = getelementptr inbounds [15 x %struct.rinkj_lutchain_s*], [15 x %struct.rinkj_lutchain_s*]* %lut, i32 0, i64 %idxprom
  store %struct.rinkj_lutchain_s* null, %struct.rinkj_lutchain_s** %arrayidx, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %if.end.216, %if.then.22, %for.end
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call2 = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %10) #6
  %cmp3 = icmp eq i8* %call2, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.1
  br label %for.end.217

if.end:                                           ; preds = %for.cond.1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i64 %idxprom5
  %12 = load i8, i8* %arrayidx6, align 1, !tbaa !43
  %tobool = icmp ne i8 %12, 0
  br i1 %tobool, label %for.body.7, label %for.end.16

for.body.7:                                       ; preds = %for.cond.4
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i64 %idxprom8
  %14 = load i8, i8* %arrayidx9, align 1, !tbaa !43
  %conv = sext i8 %14 to i32
  %cmp10 = icmp eq i32 %conv, 58
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.7
  br label %for.end.16

if.end.13:                                        ; preds = %for.body.7
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !5
  br label %for.cond.4

for.end.16:                                       ; preds = %if.then.12, %for.cond.4
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1, !tbaa !43
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp ne i32 %conv19, 58
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end.16
  br label %for.cond.1

if.end.23:                                        ; preds = %for.end.16
  %arraydecay24 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %conv26 = sext i32 %18 to i64
  %call27 = call i8* @memcpy(i8* %arraydecay24, i8* %arraydecay25, i64 %conv26) #8
  %19 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1, !tbaa !43
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc30 = add nsw i32 %20, 1
  store i32 %inc30, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.38, %if.end.23
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i64 %idxprom32
  %22 = load i8, i8* %arrayidx33, align 1, !tbaa !43
  %conv34 = sext i8 %22 to i32
  %cmp35 = icmp eq i32 %conv34, 32
  br i1 %cmp35, label %for.body.37, label %for.end.40

for.body.37:                                      ; preds = %for.cond.31
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.37
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %23, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !5
  br label %for.cond.31

for.end.40:                                       ; preds = %for.cond.31
  %arraydecay41 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay41, i64 %idx.ext
  store i8* %add.ptr, i8** %val, align 8, !tbaa !1
  %25 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %25) #2
  %26 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.26 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %for.end.40
  %call42 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #7
  store i64 %call42, i64* %__s2_len, align 8, !tbaa !31
  %27 = load i64, i64* %__s2_len, align 8, !tbaa !31
  %cmp43 = icmp ult i64 %27, 4
  br i1 %cmp43, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %28 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %28) #2
  %arraydecay46 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  store i8* %arraydecay46, i8** %__s1, align 8, !tbaa !1
  %29 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #2
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx48, align 1, !tbaa !43
  %conv49 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), align 1, !tbaa !43
  %conv50 = zext i8 %32 to i32
  %sub = sub nsw i32 %conv49, %conv50
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %33 = load i64, i64* %__s2_len, align 8, !tbaa !31
  %cmp51 = icmp ugt i64 %33, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.83

land.lhs.true.53:                                 ; preds = %cond.true
  %34 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %34, 0
  br i1 %cmp54, label %if.then.56, label %if.end.83

if.then.56:                                       ; preds = %land.lhs.true.53
  %35 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx57, align 1, !tbaa !43
  %conv58 = zext i8 %36 to i32
  %37 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 1), align 1, !tbaa !43
  %conv59 = zext i8 %37 to i32
  %sub60 = sub nsw i32 %conv58, %conv59
  store i32 %sub60, i32* %__result, align 4, !tbaa !5
  %38 = load i64, i64* %__s2_len, align 8, !tbaa !31
  %cmp61 = icmp ugt i64 %38, 1
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.82

land.lhs.true.63:                                 ; preds = %if.then.56
  %39 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp64 = icmp eq i32 %39, 0
  br i1 %cmp64, label %if.then.66, label %if.end.82

if.then.66:                                       ; preds = %land.lhs.true.63
  %40 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds i8, i8* %40, i64 2
  %41 = load i8, i8* %arrayidx67, align 1, !tbaa !43
  %conv68 = zext i8 %41 to i32
  %42 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 2), align 1, !tbaa !43
  %conv69 = zext i8 %42 to i32
  %sub70 = sub nsw i32 %conv68, %conv69
  store i32 %sub70, i32* %__result, align 4, !tbaa !5
  %43 = load i64, i64* %__s2_len, align 8, !tbaa !31
  %cmp71 = icmp ugt i64 %43, 2
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %if.then.66
  %44 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %44, 0
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %land.lhs.true.73
  %45 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds i8, i8* %45, i64 3
  %46 = load i8, i8* %arrayidx77, align 1, !tbaa !43
  %conv78 = zext i8 %46 to i32
  %47 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i64 3), align 1, !tbaa !43
  %conv79 = zext i8 %47 to i32
  %sub80 = sub nsw i32 %conv78, %conv79
  store i32 %sub80, i32* %__result, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %land.lhs.true.73, %if.then.66
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.63, %if.then.56
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true.53, %cond.true
  %48 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %48, i32* %tmp84, !tbaa !5
  %49 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #2
  %50 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %50) #2
  %51 = load i32, i32* %tmp84, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %for.end.40
  %arraydecay85 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  %call86 = call i32 @strcmp(i8* %arraydecay85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.83
  %cond = phi i32 [ %51, %if.end.83 ], [ %call86, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %52 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = load i32, i32* %tmp, !tbaa !5
  %tobool87 = icmp ne i32 %54, 0
  br i1 %tobool87, label %if.else, label %if.then.88

if.then.88:                                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.88
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %55 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %56 = load i8*, i8** %val, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx89, align 1, !tbaa !43
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call90 = call i32 @rinkj_add_lut(%struct.rinkj_device_s* %55, %struct.rinkj_lutset_s* %lutset, i8 signext %57, %struct._IO_FILE* %58) #6
  br label %if.end.216

if.else:                                          ; preds = %cond.end
  %59 = bitcast i64* %__s1_len92 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %59) #2
  %60 = bitcast i64* %__s2_len94 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.27 to i64)), i64 1), label %land.lhs.true.96, label %cond.false.144

land.lhs.true.96:                                 ; preds = %if.else
  %call97 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #7
  store i64 %call97, i64* %__s2_len94, align 8, !tbaa !31
  %61 = load i64, i64* %__s2_len94, align 8, !tbaa !31
  %cmp98 = icmp ult i64 %61, 4
  br i1 %cmp98, label %cond.true.100, label %cond.false.144

cond.true.100:                                    ; preds = %land.lhs.true.96
  %62 = bitcast i8** %__s1102 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %62) #2
  %arraydecay103 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  store i8* %arraydecay103, i8** %__s1102, align 8, !tbaa !1
  %63 = bitcast i32* %__result105 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %63) #2
  %64 = load i8*, i8** %__s1102, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx106, align 1, !tbaa !43
  %conv107 = zext i8 %65 to i32
  %66 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), align 1, !tbaa !43
  %conv108 = zext i8 %66 to i32
  %sub109 = sub nsw i32 %conv107, %conv108
  store i32 %sub109, i32* %__result105, align 4, !tbaa !5
  %67 = load i64, i64* %__s2_len94, align 8, !tbaa !31
  %cmp110 = icmp ugt i64 %67, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.142

land.lhs.true.112:                                ; preds = %cond.true.100
  %68 = load i32, i32* %__result105, align 4, !tbaa !5
  %cmp113 = icmp eq i32 %68, 0
  br i1 %cmp113, label %if.then.115, label %if.end.142

if.then.115:                                      ; preds = %land.lhs.true.112
  %69 = load i8*, i8** %__s1102, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds i8, i8* %69, i64 1
  %70 = load i8, i8* %arrayidx116, align 1, !tbaa !43
  %conv117 = zext i8 %70 to i32
  %71 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i64 1), align 1, !tbaa !43
  %conv118 = zext i8 %71 to i32
  %sub119 = sub nsw i32 %conv117, %conv118
  store i32 %sub119, i32* %__result105, align 4, !tbaa !5
  %72 = load i64, i64* %__s2_len94, align 8, !tbaa !31
  %cmp120 = icmp ugt i64 %72, 1
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.141

land.lhs.true.122:                                ; preds = %if.then.115
  %73 = load i32, i32* %__result105, align 4, !tbaa !5
  %cmp123 = icmp eq i32 %73, 0
  br i1 %cmp123, label %if.then.125, label %if.end.141

if.then.125:                                      ; preds = %land.lhs.true.122
  %74 = load i8*, i8** %__s1102, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds i8, i8* %74, i64 2
  %75 = load i8, i8* %arrayidx126, align 1, !tbaa !43
  %conv127 = zext i8 %75 to i32
  %76 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i64 2), align 1, !tbaa !43
  %conv128 = zext i8 %76 to i32
  %sub129 = sub nsw i32 %conv127, %conv128
  store i32 %sub129, i32* %__result105, align 4, !tbaa !5
  %77 = load i64, i64* %__s2_len94, align 8, !tbaa !31
  %cmp130 = icmp ugt i64 %77, 2
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.140

land.lhs.true.132:                                ; preds = %if.then.125
  %78 = load i32, i32* %__result105, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %78, 0
  br i1 %cmp133, label %if.then.135, label %if.end.140

if.then.135:                                      ; preds = %land.lhs.true.132
  %79 = load i8*, i8** %__s1102, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds i8, i8* %79, i64 3
  %80 = load i8, i8* %arrayidx136, align 1, !tbaa !43
  %conv137 = zext i8 %80 to i32
  %81 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i64 3), align 1, !tbaa !43
  %conv138 = zext i8 %81 to i32
  %sub139 = sub nsw i32 %conv137, %conv138
  store i32 %sub139, i32* %__result105, align 4, !tbaa !5
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.135, %land.lhs.true.132, %if.then.125
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %land.lhs.true.122, %if.then.115
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %land.lhs.true.112, %cond.true.100
  %82 = load i32, i32* %__result105, align 4, !tbaa !5
  store i32 %82, i32* %tmp143, !tbaa !5
  %83 = bitcast i32* %__result105 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #2
  %84 = bitcast i8** %__s1102 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %84) #2
  %85 = load i32, i32* %tmp143, !tbaa !5
  br label %cond.end.147

cond.false.144:                                   ; preds = %land.lhs.true.96, %if.else
  %arraydecay145 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  %call146 = call i32 @strcmp(i8* %arraydecay145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)) #8
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.144, %if.end.142
  %cond148 = phi i32 [ %85, %if.end.142 ], [ %call146, %cond.false.144 ]
  store i32 %cond148, i32* %tmp95, !tbaa !5
  %86 = bitcast i64* %__s2_len94 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %86) #2
  %87 = bitcast i64* %__s1_len92 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %87) #2
  %88 = load i32, i32* %tmp95, !tbaa !5
  %tobool149 = icmp ne i32 %88, 0
  br i1 %tobool149, label %lor.lhs.false, label %if.then.209

lor.lhs.false:                                    ; preds = %cond.end.147
  %89 = bitcast i64* %__s1_len151 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %89) #2
  %90 = bitcast i64* %__s2_len153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %90) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.28 to i64)), i64 1), label %land.lhs.true.155, label %cond.false.203

land.lhs.true.155:                                ; preds = %lor.lhs.false
  %call156 = call i64 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #7
  store i64 %call156, i64* %__s2_len153, align 8, !tbaa !31
  %91 = load i64, i64* %__s2_len153, align 8, !tbaa !31
  %cmp157 = icmp ult i64 %91, 4
  br i1 %cmp157, label %cond.true.159, label %cond.false.203

cond.true.159:                                    ; preds = %land.lhs.true.155
  %92 = bitcast i8** %__s1161 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #2
  %arraydecay162 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  store i8* %arraydecay162, i8** %__s1161, align 8, !tbaa !1
  %93 = bitcast i32* %__result164 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %93) #2
  %94 = load i8*, i8** %__s1161, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx165, align 1, !tbaa !43
  %conv166 = zext i8 %95 to i32
  %96 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), align 1, !tbaa !43
  %conv167 = zext i8 %96 to i32
  %sub168 = sub nsw i32 %conv166, %conv167
  store i32 %sub168, i32* %__result164, align 4, !tbaa !5
  %97 = load i64, i64* %__s2_len153, align 8, !tbaa !31
  %cmp169 = icmp ugt i64 %97, 0
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.201

land.lhs.true.171:                                ; preds = %cond.true.159
  %98 = load i32, i32* %__result164, align 4, !tbaa !5
  %cmp172 = icmp eq i32 %98, 0
  br i1 %cmp172, label %if.then.174, label %if.end.201

if.then.174:                                      ; preds = %land.lhs.true.171
  %99 = load i8*, i8** %__s1161, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds i8, i8* %99, i64 1
  %100 = load i8, i8* %arrayidx175, align 1, !tbaa !43
  %conv176 = zext i8 %100 to i32
  %101 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i64 1), align 1, !tbaa !43
  %conv177 = zext i8 %101 to i32
  %sub178 = sub nsw i32 %conv176, %conv177
  store i32 %sub178, i32* %__result164, align 4, !tbaa !5
  %102 = load i64, i64* %__s2_len153, align 8, !tbaa !31
  %cmp179 = icmp ugt i64 %102, 1
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.200

land.lhs.true.181:                                ; preds = %if.then.174
  %103 = load i32, i32* %__result164, align 4, !tbaa !5
  %cmp182 = icmp eq i32 %103, 0
  br i1 %cmp182, label %if.then.184, label %if.end.200

if.then.184:                                      ; preds = %land.lhs.true.181
  %104 = load i8*, i8** %__s1161, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds i8, i8* %104, i64 2
  %105 = load i8, i8* %arrayidx185, align 1, !tbaa !43
  %conv186 = zext i8 %105 to i32
  %106 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i64 2), align 1, !tbaa !43
  %conv187 = zext i8 %106 to i32
  %sub188 = sub nsw i32 %conv186, %conv187
  store i32 %sub188, i32* %__result164, align 4, !tbaa !5
  %107 = load i64, i64* %__s2_len153, align 8, !tbaa !31
  %cmp189 = icmp ugt i64 %107, 2
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.199

land.lhs.true.191:                                ; preds = %if.then.184
  %108 = load i32, i32* %__result164, align 4, !tbaa !5
  %cmp192 = icmp eq i32 %108, 0
  br i1 %cmp192, label %if.then.194, label %if.end.199

if.then.194:                                      ; preds = %land.lhs.true.191
  %109 = load i8*, i8** %__s1161, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %109, i64 3
  %110 = load i8, i8* %arrayidx195, align 1, !tbaa !43
  %conv196 = zext i8 %110 to i32
  %111 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i64 3), align 1, !tbaa !43
  %conv197 = zext i8 %111 to i32
  %sub198 = sub nsw i32 %conv196, %conv197
  store i32 %sub198, i32* %__result164, align 4, !tbaa !5
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.194, %land.lhs.true.191, %if.then.184
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %land.lhs.true.181, %if.then.174
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.171, %cond.true.159
  %112 = load i32, i32* %__result164, align 4, !tbaa !5
  store i32 %112, i32* %tmp202, !tbaa !5
  %113 = bitcast i32* %__result164 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #2
  %114 = bitcast i8** %__s1161 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #2
  %115 = load i32, i32* %tmp202, !tbaa !5
  br label %cond.end.206

cond.false.203:                                   ; preds = %land.lhs.true.155, %lor.lhs.false
  %arraydecay204 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  %call205 = call i32 @strcmp(i8* %arraydecay204, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)) #8
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.203, %if.end.201
  %cond207 = phi i32 [ %115, %if.end.201 ], [ %call205, %cond.false.203 ]
  store i32 %cond207, i32* %tmp154, !tbaa !5
  %116 = bitcast i64* %__s2_len153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #2
  %117 = bitcast i64* %__s1_len151 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #2
  %118 = load i32, i32* %tmp154, !tbaa !5
  %tobool208 = icmp ne i32 %118, 0
  br i1 %tobool208, label %if.else.212, label %if.then.209

if.then.209:                                      ; preds = %cond.end.206, %cond.end.147
  %119 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  %arraydecay210 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  %120 = load i8*, i8** %val, align 8, !tbaa !1
  %call211 = call i32 @rinkj_device_set_param_string(%struct._RinkjDevice* %119, i8* %arraydecay210, i8* %120) #6
  br label %if.end.215

if.else.212:                                      ; preds = %cond.end.206
  %121 = load %struct._RinkjDevice*, %struct._RinkjDevice** %printer_dev.addr, align 8, !tbaa !1
  %arraydecay213 = getelementptr inbounds [256 x i8], [256 x i8]* %key, i32 0, i32 0
  %122 = load i8*, i8** %val, align 8, !tbaa !1
  %call214 = call i32 @rinkj_device_set_param_string(%struct._RinkjDevice* %121, i8* %arraydecay213, i8* %122) #6
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.212, %if.then.209
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %do.end
  br label %for.cond.1

for.end.217:                                      ; preds = %if.then
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !tbaa !1
  %call218 = call i32 @fclose(%struct._IO_FILE* %123) #6
  %124 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %125 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  %call219 = call i32 @rinkj_apply_luts(%struct.rinkj_device_s* %124, %struct._RinkjDevice* %125, %struct.rinkj_lutset_s* %lutset) #6
  %126 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #2
  %127 = bitcast %struct.rinkj_lutset_s* %lutset to i8*
  call void @llvm.lifetime.end(i64 128, i8* %127) #2
  %128 = bitcast i8** %val to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #2
  %129 = bitcast [256 x i8]* %key to i8*
  call void @llvm.lifetime.end(i64 256, i8* %129) #2
  %130 = bitcast [256 x i8]* %linebuf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %130) #2
  %131 = bitcast %struct._IO_FILE** %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #2
  ret i32 0
}

declare i32 @rinkj_device_init(%struct._RinkjDevice*, %struct._RinkjDeviceParams*) #0

declare %struct._IO_FILE* @gp_fopen(i8*, i8*) #0

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_add_lut(%struct.rinkj_device_s* %rdev, %struct.rinkj_lutset_s* %lutset, i8 signext %plane, %struct._IO_FILE* %f) #1 {
entry:
  %retval = alloca i32, align 4
  %rdev.addr = alloca %struct.rinkj_device_s*, align 8
  %lutset.addr = alloca %struct.rinkj_lutset_s*, align 8
  %plane.addr = alloca i8, align 1
  %f.addr = alloca %struct._IO_FILE*, align 8
  %linebuf = alloca [256 x i8], align 16
  %chain = alloca %struct.rinkj_lutchain_s*, align 8
  %n_graph = alloca i32, align 4
  %plane_ix = alloca i32, align 4
  %i = alloca i32, align 4
  %pp = alloca %struct.rinkj_lutchain_s**, align 8
  %cleanup.dest.slot = alloca i32
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.rinkj_device_s* %rdev, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  store %struct.rinkj_lutset_s* %lutset, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  store i8 %plane, i8* %plane.addr, align 1, !tbaa !43
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %0 = bitcast [256 x i8]* %linebuf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %0) #2
  %1 = bitcast %struct.rinkj_lutchain_s** %chain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %n_graph to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %plane_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast %struct.rinkj_lutchain_s*** %pp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  store i32 0, i32* %plane_ix, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.rinkj_lutset_s*, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  %plane_names = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %7, i32 0, i32 0
  %8 = load i8*, i8** %plane_names, align 8, !tbaa !88
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !43
  %tobool = icmp ne i8 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.rinkj_lutset_s*, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  %plane_names2 = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %11, i32 0, i32 0
  %12 = load i8*, i8** %plane_names2, align 8, !tbaa !88
  %arrayidx3 = getelementptr inbounds i8, i8* %12, i64 %idxprom1
  %13 = load i8, i8* %arrayidx3, align 1, !tbaa !43
  %conv = sext i8 %13 to i32
  %14 = load i8, i8* %plane.addr, align 1, !tbaa !43
  %conv4 = sext i8 %14 to i32
  %cmp = icmp eq i32 %conv, %conv4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %plane_ix, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %idxprom6 = sext i32 %16 to i64
  %17 = load %struct.rinkj_lutset_s*, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  %plane_names7 = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %17, i32 0, i32 0
  %18 = load i8*, i8** %plane_names7, align 8, !tbaa !88
  %arrayidx8 = getelementptr inbounds i8, i8* %18, i64 %idxprom6
  %19 = load i8, i8* %arrayidx8, align 1, !tbaa !43
  %conv9 = sext i8 %19 to i32
  %20 = load i8, i8* %plane.addr, align 1, !tbaa !43
  %conv10 = sext i8 %20 to i32
  %cmp11 = icmp ne i32 %conv9, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.14:                                        ; preds = %for.end
  %21 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.rinkj_lutset_s*, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  %lut = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %22, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [15 x %struct.rinkj_lutchain_s*], [15 x %struct.rinkj_lutchain_s*]* %lut, i32 0, i64 %idxprom15
  store %struct.rinkj_lutchain_s** %arrayidx16, %struct.rinkj_lutchain_s*** %pp, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call = call i8* @fgets(i8* %arraydecay, i32 256, %struct._IO_FILE* %23) #6
  %cmp17 = icmp eq i8* %call, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.20:                                        ; preds = %if.end.14
  %arraydecay21 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %call22 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32* %n_graph) #8
  %cmp23 = icmp ne i32 %call22, 1
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

if.end.26:                                        ; preds = %if.end.20
  %24 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %24, i32 0, i32 3
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !63
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %25, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %26 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !80
  %27 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !63
  %call28 = call i8* %26(%struct.gs_memory_s* %28, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #6
  %29 = bitcast i8* %call28 to %struct.rinkj_lutchain_s*
  store %struct.rinkj_lutchain_s* %29, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %30 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %30, i32 0, i32 0
  store %struct.rinkj_lutchain_s* null, %struct.rinkj_lutchain_s** %next, align 8, !tbaa !90
  %31 = load i32, i32* %n_graph, align 4, !tbaa !5
  %32 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %n_graph29 = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %32, i32 0, i32 1
  store i32 %31, i32* %n_graph29, align 4, !tbaa !92
  %33 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory30 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory30, align 8, !tbaa !63
  %procs31 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_bytes32 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs31, i32 0, i32 7
  %35 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes32, align 8, !tbaa !80
  %36 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory33 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory33, align 8, !tbaa !63
  %38 = load i32, i32* %n_graph, align 4, !tbaa !5
  %conv34 = sext i32 %38 to i64
  %mul = mul i64 8, %conv34
  %conv35 = trunc i64 %mul to i32
  %call36 = call i8* %35(%struct.gs_memory_s* %37, i32 %conv35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #6
  %39 = bitcast i8* %call36 to double*
  %40 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %graph_x = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %40, i32 0, i32 2
  store double* %39, double** %graph_x, align 8, !tbaa !93
  %41 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory37 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory37, align 8, !tbaa !63
  %procs38 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 1
  %alloc_bytes39 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs38, i32 0, i32 7
  %43 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes39, align 8, !tbaa !80
  %44 = load %struct.rinkj_device_s*, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  %memory40 = getelementptr inbounds %struct.rinkj_device_s, %struct.rinkj_device_s* %44, i32 0, i32 3
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory40, align 8, !tbaa !63
  %46 = load i32, i32* %n_graph, align 4, !tbaa !5
  %conv41 = sext i32 %46 to i64
  %mul42 = mul i64 8, %conv41
  %conv43 = trunc i64 %mul42 to i32
  %call44 = call i8* %43(%struct.gs_memory_s* %45, i32 %conv43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #6
  %47 = bitcast i8* %call44 to double*
  %48 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %graph_y = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %48, i32 0, i32 3
  store double* %47, double** %graph_y, align 8, !tbaa !94
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.69, %if.end.26
  %49 = load i32, i32* %i, align 4, !tbaa !5
  %50 = load i32, i32* %n_graph, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %49, %50
  br i1 %cmp46, label %for.body.48, label %for.end.71

for.body.48:                                      ; preds = %for.cond.45
  %51 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #2
  %52 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %52) #2
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8, !tbaa !1
  %call50 = call i8* @fgets(i8* %arraydecay49, i32 256, %struct._IO_FILE* %53) #6
  %cmp51 = icmp eq i8* %call50, null
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.48
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.54:                                        ; preds = %for.body.48
  %arraydecay55 = getelementptr inbounds [256 x i8], [256 x i8]* %linebuf, i32 0, i32 0
  %call56 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arraydecay55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), double* %y, double* %x) #8
  %cmp57 = icmp ne i32 %call56, 2
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.54
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.54
  %54 = load double, double* %x, align 8, !tbaa !95
  %div = fdiv double %54, 1.000000e+00
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom61 = sext i32 %55 to i64
  %56 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %graph_x62 = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %56, i32 0, i32 2
  %57 = load double*, double** %graph_x62, align 8, !tbaa !93
  %arrayidx63 = getelementptr inbounds double, double* %57, i64 %idxprom61
  store double %div, double* %arrayidx63, align 8, !tbaa !95
  %58 = load double, double* %y, align 8, !tbaa !95
  %div64 = fdiv double %58, 1.000000e+00
  %59 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom65 = sext i32 %59 to i64
  %60 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %graph_y66 = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %60, i32 0, i32 3
  %61 = load double*, double** %graph_y66, align 8, !tbaa !94
  %arrayidx67 = getelementptr inbounds double, double* %61, i64 %idxprom65
  store double %div64, double* %arrayidx67, align 8, !tbaa !95
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.60, %if.then.59, %if.then.53
  %62 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.74 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc.69

for.inc.69:                                       ; preds = %cleanup.cont
  %64 = load i32, i32* %i, align 4, !tbaa !5
  %inc70 = add nsw i32 %64, 1
  store i32 %inc70, i32* %i, align 4, !tbaa !5
  br label %for.cond.45

for.end.71:                                       ; preds = %for.cond.45
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.71
  %65 = load %struct.rinkj_lutchain_s**, %struct.rinkj_lutchain_s*** %pp, align 8, !tbaa !1
  %66 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %65, align 8, !tbaa !1
  %tobool72 = icmp ne %struct.rinkj_lutchain_s* %66, null
  br i1 %tobool72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %67 = load %struct.rinkj_lutchain_s**, %struct.rinkj_lutchain_s*** %pp, align 8, !tbaa !1
  %68 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %67, align 8, !tbaa !1
  %next73 = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %68, i32 0, i32 0
  store %struct.rinkj_lutchain_s** %next73, %struct.rinkj_lutchain_s*** %pp, align 8, !tbaa !1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %70 = load %struct.rinkj_lutchain_s**, %struct.rinkj_lutchain_s*** %pp, align 8, !tbaa !1
  store %struct.rinkj_lutchain_s* %69, %struct.rinkj_lutchain_s** %70, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74

cleanup.74:                                       ; preds = %while.end, %cleanup, %if.then.25, %if.then.19, %if.then.13
  %71 = bitcast %struct.rinkj_lutchain_s*** %pp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %plane_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %n_graph to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast %struct.rinkj_lutchain_s** %chain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast [256 x i8]* %linebuf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %76) #2
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i32 @rinkj_device_set_param_string(%struct._RinkjDevice*, i8*, i8*) #0

declare i32 @fclose(%struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i32 @rinkj_apply_luts(%struct.rinkj_device_s* %rdev, %struct._RinkjDevice* %cmyk_dev, %struct.rinkj_lutset_s* %lutset) #1 {
entry:
  %rdev.addr = alloca %struct.rinkj_device_s*, align 8
  %cmyk_dev.addr = alloca %struct._RinkjDevice*, align 8
  %lutset.addr = alloca %struct.rinkj_lutset_s*, align 8
  %plane_ix = alloca i32, align 4
  %lut = alloca [256 x double], align 16
  %i = alloca i32, align 4
  %g = alloca double, align 8
  %chain = alloca %struct.rinkj_lutchain_s*, align 8
  store %struct.rinkj_device_s* %rdev, %struct.rinkj_device_s** %rdev.addr, align 8, !tbaa !1
  store %struct._RinkjDevice* %cmyk_dev, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  store %struct.rinkj_lutset_s* %lutset, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  %0 = bitcast i32* %plane_ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast [256 x double]* %lut to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %1) #2
  store i32 0, i32* %plane_ix, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %2 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 7
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.9, %for.body
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %4, 256
  br i1 %cmp2, label %for.body.3, label %for.end.10

for.body.3:                                       ; preds = %for.cond.1
  %5 = bitcast double* %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %conv = sitofp i32 %6 to double
  %div = fdiv double %conv, 2.550000e+02
  store double %div, double* %g, align 8, !tbaa !95
  %7 = bitcast %struct.rinkj_lutchain_s** %chain to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.rinkj_lutset_s*, %struct.rinkj_lutset_s** %lutset.addr, align 8, !tbaa !1
  %lut4 = getelementptr inbounds %struct.rinkj_lutset_s, %struct.rinkj_lutset_s* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [15 x %struct.rinkj_lutchain_s*], [15 x %struct.rinkj_lutchain_s*]* %lut4, i32 0, i64 %idxprom
  %10 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %arrayidx, align 8, !tbaa !1
  store %struct.rinkj_lutchain_s* %10, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.3
  %11 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %tobool = icmp ne %struct.rinkj_lutchain_s* %11, null
  br i1 %tobool, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.5
  %12 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %graph_x = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %12, i32 0, i32 2
  %13 = load double*, double** %graph_x, align 8, !tbaa !93
  %14 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %graph_y = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %14, i32 0, i32 3
  %15 = load double*, double** %graph_y, align 8, !tbaa !94
  %16 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %n_graph = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %16, i32 0, i32 1
  %17 = load i32, i32* %n_graph, align 4, !tbaa !92
  %18 = load double, double* %g, align 8, !tbaa !95
  %call = call double @rinkj_graph_lookup(double* %13, double* %15, i32 %17, double %18) #6
  store double %call, double* %g, align 8, !tbaa !95
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %19 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.rinkj_lutchain_s, %struct.rinkj_lutchain_s* %19, i32 0, i32 0
  %20 = load %struct.rinkj_lutchain_s*, %struct.rinkj_lutchain_s** %next, align 8, !tbaa !90
  store %struct.rinkj_lutchain_s* %20, %struct.rinkj_lutchain_s** %chain, align 8, !tbaa !1
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %21 = load double, double* %g, align 8, !tbaa !95
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %22 to i64
  %arrayidx8 = getelementptr inbounds [256 x double], [256 x double]* %lut, i32 0, i64 %idxprom7
  store double %21, double* %arrayidx8, align 8, !tbaa !95
  %23 = bitcast %struct.rinkj_lutchain_s** %chain to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  %24 = bitcast double* %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  %26 = load %struct._RinkjDevice*, %struct._RinkjDevice** %cmyk_dev.addr, align 8, !tbaa !1
  %27 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [256 x double], [256 x double]* %lut, i32 0, i32 0
  call void @rinkj_screen_eb_set_lut(%struct._RinkjDevice* %26, i32 %27, double* %arraydecay) #6
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end.10
  %29 = load i32, i32* %plane_ix, align 4, !tbaa !5
  %inc12 = add nsw i32 %29, 1
  store i32 %inc12, i32* %plane_ix, align 4, !tbaa !5
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %30 = bitcast [256 x double]* %lut to i8*
  call void @llvm.lifetime.end(i64 2048, i8* %30) #2
  %31 = bitcast i32* %plane_ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal double @rinkj_graph_lookup(double* %graph_x, double* %graph_y, i32 %n_graph, double %x) #1 {
entry:
  %graph_x.addr = alloca double*, align 8
  %graph_y.addr = alloca double*, align 8
  %n_graph.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %i = alloca i32, align 4
  store double* %graph_x, double** %graph_x.addr, align 8, !tbaa !1
  store double* %graph_y, double** %graph_y.addr, align 8, !tbaa !1
  store i32 %n_graph, i32* %n_graph.addr, align 4, !tbaa !5
  store double %x, double* %x.addr, align 8, !tbaa !95
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !5
  %2 = load i32, i32* %n_graph.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %add = add nsw i32 %3, 1
  %idxprom = sext i32 %add to i64
  %4 = load double*, double** %graph_x.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8, !tbaa !95
  %6 = load double, double* %x.addr, align 8, !tbaa !95
  %cmp1 = fcmp ogt double %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %8 to i64
  %9 = load double*, double** %graph_y.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %9, i64 %idxprom2
  %10 = load double, double* %arrayidx3, align 8, !tbaa !95
  %11 = load double, double* %x.addr, align 8, !tbaa !95
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %12 to i64
  %13 = load double*, double** %graph_x.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %13, i64 %idxprom4
  %14 = load double, double* %arrayidx5, align 8, !tbaa !95
  %sub6 = fsub double %11, %14
  %15 = load i32, i32* %i, align 4, !tbaa !5
  %add7 = add nsw i32 %15, 1
  %idxprom8 = sext i32 %add7 to i64
  %16 = load double*, double** %graph_y.addr, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds double, double* %16, i64 %idxprom8
  %17 = load double, double* %arrayidx9, align 8, !tbaa !95
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %18 to i64
  %19 = load double*, double** %graph_y.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds double, double* %19, i64 %idxprom10
  %20 = load double, double* %arrayidx11, align 8, !tbaa !95
  %sub12 = fsub double %17, %20
  %mul = fmul double %sub6, %sub12
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %add13 = add nsw i32 %21, 1
  %idxprom14 = sext i32 %add13 to i64
  %22 = load double*, double** %graph_x.addr, align 8, !tbaa !1
  %arrayidx15 = getelementptr inbounds double, double* %22, i64 %idxprom14
  %23 = load double, double* %arrayidx15, align 8, !tbaa !95
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %24 to i64
  %25 = load double*, double** %graph_x.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %25, i64 %idxprom16
  %26 = load double, double* %arrayidx17, align 8, !tbaa !95
  %sub18 = fsub double %23, %26
  %div = fdiv double %mul, %sub18
  %add19 = fadd double %10, %div
  %27 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  ret double %add19
}

declare void @rinkj_screen_eb_set_lut(%struct._RinkjDevice*, i32, double*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @rinkj_color_hash(i32 %color) #5 {
entry:
  %color.addr = alloca i32, align 4
  store i32 %color, i32* %color.addr, align 4, !tbaa !5
  %0 = load i32, i32* %color.addr, align 4, !tbaa !5
  %1 = load i32, i32* %color.addr, align 4, !tbaa !5
  %shr = lshr i32 %1, 10
  %xor = xor i32 %0, %shr
  %2 = load i32, i32* %color.addr, align 4, !tbaa !5
  %shr1 = lshr i32 %2, 20
  %xor2 = xor i32 %xor, %shr1
  %and = and i32 %xor2, 65535
  ret i32 %and
}

declare void @gscms_transform_color(%struct.gx_device_s*, %struct.gsicc_link_s*, i8*, i8*, i32) #0

declare i32 @rinkj_device_write(%struct._RinkjDevice*, i8**) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind readonly }
attributes #8 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 19800}
!8 = !{!"rinkj_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !3, i64 18472, !6, i64 18476, !6, i64 18480, !2, i64 18488, !6, i64 18496, !23, i64 18504, !23, i64 19024, !3, i64 19544, !2, i64 19800, !2, i64 19808, !3, i64 19816}
!9 = !{!"rc_header_s", !10, i64 0, !2, i64 8, !2, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !10, i64 704, !6, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !6, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!19 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!20 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !21, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!21 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!22 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!23 = !{!"gs_separation_names_s", !6, i64 0, !3, i64 8}
!24 = !{!8, !2, i64 19808}
!25 = !{!26, !10, i64 288}
!26 = !{!"cmm_profile_s", !3, i64 0, !3, i64 1, !6, i64 4, !6, i64 8, !3, i64 12, !3, i64 16, !27, i64 20, !10, i64 144, !6, i64 152, !3, i64 156, !6, i64 216, !6, i64 220, !6, i64 224, !28, i64 228, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !9, i64 288, !6, i64 312, !2, i64 320, !2, i64 328, !2, i64 336}
!27 = !{!"gs_range_icc_s", !3, i64 0}
!28 = !{!"gsicc_rendering_param_s", !3, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !6, i64 20}
!29 = !{!26, !2, i64 304}
!30 = !{!26, !2, i64 296}
!31 = !{!10, !10, i64 0}
!32 = !{!8, !3, i64 18472}
!33 = !{!12, !12, i64 0}
!34 = !{!35, !2, i64 0}
!35 = !{!"gs_param_string_array_s", !2, i64 0, !6, i64 8, !6, i64 12}
!36 = !{!35, !6, i64 8}
!37 = !{!35, !6, i64 12}
!38 = !{!39, !2, i64 0}
!39 = !{!"gs_param_string_s", !2, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!39, !6, i64 8}
!41 = !{!39, !6, i64 12}
!42 = !{!8, !6, i64 18504}
!43 = !{!3, !3, i64 0}
!44 = !{!45, !2, i64 0}
!45 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!46 = !{!47, !2, i64 56}
!47 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!48 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !43, i64 12, i64 2, !33, i64 14, i64 1, !43, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !43, i64 44, i64 64, !43, i64 108, i64 64, !43, i64 176, i64 512, !43, i64 688, i64 8, !1, i64 696, i64 4, !43, i64 704, i64 8, !31, i64 712, i64 4, !5}
!49 = !{!50, !3, i64 104}
!50 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!51 = !{!8, !2, i64 18488}
!52 = !{!8, !6, i64 84}
!53 = !{!8, !6, i64 18496}
!54 = !{!8, !6, i64 100}
!55 = !{!8, !6, i64 18476}
!56 = !{!8, !12, i64 108}
!57 = !{!11, !12, i64 12}
!58 = !{!23, !6, i64 0}
!59 = !{!50, !6, i64 100}
!60 = !{!8, !2, i64 784}
!61 = !{!8, !3, i64 104}
!62 = !{!8, !6, i64 96}
!63 = !{!8, !2, i64 24}
!64 = !{!28, !3, i64 4}
!65 = !{!28, !3, i64 12}
!66 = !{!28, !3, i64 0}
!67 = !{!50, !2, i64 24}
!68 = !{!8, !6, i64 832}
!69 = !{!70, !6, i64 0}
!70 = !{!"_RinkjDeviceParams", !6, i64 0, !6, i64 4, !6, i64 8, !2, i64 16}
!71 = !{!8, !6, i64 836}
!72 = !{!70, !6, i64 4}
!73 = !{!70, !6, i64 8}
!74 = !{!70, !2, i64 16}
!75 = !{!8, !6, i64 18480}
!76 = !{!77, !6, i64 100}
!77 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
!78 = !{!77, !6, i64 832}
!79 = !{!77, !2, i64 24}
!80 = !{!81, !2, i64 64}
!81 = !{!"gs_memory_s", !2, i64 0, !82, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!82 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!83 = !{!84, !6, i64 0}
!84 = !{!"rinkj_color_cache_entry_s", !6, i64 0, !6, i64 4}
!85 = !{!77, !6, i64 836}
!86 = !{!84, !6, i64 4}
!87 = !{!81, !2, i64 24}
!88 = !{!89, !2, i64 0}
!89 = !{!"rinkj_lutset_s", !2, i64 0, !3, i64 8}
!90 = !{!91, !2, i64 0}
!91 = !{!"rinkj_lutchain_s", !2, i64 0, !6, i64 8, !2, i64 16, !2, i64 24}
!92 = !{!91, !6, i64 8}
!93 = !{!91, !2, i64 16}
!94 = !{!91, !2, i64 24}
!95 = !{!96, !96, i64 0}
!96 = !{!"double", !3, i64 0}
