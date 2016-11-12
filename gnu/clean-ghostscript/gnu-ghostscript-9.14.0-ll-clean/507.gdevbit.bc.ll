; ModuleID = './gdevbit.bc'
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
%struct.gx_device_bit_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 }
%struct.gx_device_memory_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, %struct.gx_device_s*, i32, i8*, %struct.gs_memory_s*, i32, %struct.gs_memory_s*, i32, [64 x %struct.gx_render_plane_s], %struct.gs_matrix_s, i8**, %struct.gs_const_string_s, %struct._c24, %struct._c40, %struct._c48, %struct._c56, %struct._c64, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64, %struct.gx_device_color_s*, i32, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct._c40 = type { i64, i32, i32, i32, i32, i32 }
%struct._c48 = type { i64, i32, i32, i32 }
%struct._c56 = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct._c64 = type { i64, i32, i32 }

@bitmono_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @bit_mono_map_color, i32 (%struct.gx_device_s*, i64, i16*)* @bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bit_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bit_put_params, i64 (%struct.gx_device_s*, i16*)* @bit_mono_map_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @bit_mono_map_color, i32 (%struct.gx_device_s*, i64, i16*)* @bit_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_bit_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @bitmono_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bit_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0 }, align 8
@bitrgb_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bit_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bit_put_params, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @bit_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"bitrgb\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_bitrgb_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @bitrgb_procs, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 4, i8 -1, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bit_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0 }, align 8
@bitcmyk_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @bit_map_cmyk_color, i32 (%struct.gx_device_s*, i64, i16*)* @bit_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bit_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bit_put_params, i64 (%struct.gx_device_s*, i16*)* @bit_map_cmyk_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @bit_map_cmyk_color, i32 (%struct.gx_device_s*, i64, i16*)* @bit_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"bitcmyk\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_bitcmyk_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @bitcmyk_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i32 0, i16 4, i8 3, i32 1, i32 1, i32 2, i32 2, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bit_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0 }, align 8
@bitrgbtags_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @bittag_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @bittag_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @bittag_put_params, i64 (%struct.gx_device_s*, i16*)* @bittag_rgb_map_rgb_color, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @bittag_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @bittag_rgb_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @bittag_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @bit_put_image, i32 (%struct.gx_device_s*, i32, i8*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"bitrgbtags\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"DeviceRGBT\00", align 1
@gs_bitrgbtags_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, i32, i32 } { i32 18480, %struct.gx_device_procs_s* @bitrgbtags_procs, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 32, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] c"\10\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] c"\08\08\08\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i64] [i64 16711680, i64 65280, i64 255, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 612, i32 792, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @bittags_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 -1, i32 0, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, i32 0, i32 0 }, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"CRDDefault\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ForceMono\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"FirstLine\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"LastLine\00", align 1
@bit_put_params.depths = internal constant [4 x [16 x i8]] [[16 x i8] c"\01\02\00\04\08\00\00\08\00\00\00\10\00\00\00\10", [16 x i8] zeroinitializer, [16 x i8] c"\04\08\00\10\10\00\00\18\00\00\00(\00\00\000", [16 x i8] c"\04\08\00\10 \00\00 \00\00\000\00\00\00@"], align 16
@bit_put_params.real_bpc = internal global [17 x i32] [i32 0, i32 1, i32 2, i32 2, i32 4, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 8, i32 12, i32 12, i32 12, i32 12, i32 16], align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"GrayValues\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"RedValues\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"GreenValues\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@bittag_DeviceRGB_procs = internal constant %struct.gx_cm_color_map_procs_s { void (%struct.gx_device_s*, i16, i16*)* @gray_cs_to_rgb_cm, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)* @private_rgb_cs_to_rgb_cm, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* @cmyk_cs_to_rgb_cm }, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"bit_print_page(in)\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"nul\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @bit_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %data = alloca i8*, align 8
  %nul = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %__s1_len43 = alloca i64, align 8
  %__s2_len45 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  %__s153 = alloca i8*, align 8
  %__result57 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %lnum = alloca i32, align 4
  %bottom = alloca i32, align 4
  %line_count = alloca i32, align 4
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %11 = load i32, i32* %line_size, align 4, !tbaa !5
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #5
  store i8* %call2, i8** %in, align 8, !tbaa !1
  %12 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %nul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #6
  store i64 %call3, i64* %__s2_len, align 8, !tbaa !26
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp = icmp ult i64 %16, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %17 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  store i8* %arraydecay, i8** %__s1, align 8, !tbaa !1
  %19 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !27
  %conv6 = zext i8 %22 to i32
  %sub = sub nsw i32 %conv, %conv6
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %23 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp7 = icmp ugt i64 %23, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.37

land.lhs.true.9:                                  ; preds = %cond.true
  %24 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.9
  %25 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !27
  %conv13 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !27
  %conv14 = zext i8 %27 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  store i32 %sub15, i32* %__result, align 4, !tbaa !5
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp16 = icmp ugt i64 %28, 1
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.36

land.lhs.true.18:                                 ; preds = %if.then
  %29 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %29, 0
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %land.lhs.true.18
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx22, align 1, !tbaa !27
  %conv23 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !27
  %conv24 = zext i8 %32 to i32
  %sub25 = sub nsw i32 %conv23, %conv24
  store i32 %sub25, i32* %__result, align 4, !tbaa !5
  %33 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp26 = icmp ugt i64 %33, 2
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %if.then.21
  %34 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %34, 0
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %land.lhs.true.28
  %35 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx32, align 1, !tbaa !27
  %conv33 = zext i8 %36 to i32
  %37 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !27
  %conv34 = zext i8 %37 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  store i32 %sub35, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.31, %land.lhs.true.28, %if.then.21
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %land.lhs.true.18, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.9, %cond.true
  %38 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %38, i32* %tmp38, !tbaa !5
  %39 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = load i32, i32* %tmp38, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 45
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname39, i32 0, i32 0
  %call41 = call i32 @strcmp(i8* %arraydecay40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %41, %if.end.37 ], [ %call41, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %43 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end
  %46 = bitcast i64* %__s1_len43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = bitcast i64* %__s2_len45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.47, label %cond.false.96

land.lhs.true.47:                                 ; preds = %lor.rhs
  %call48 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6
  store i64 %call48, i64* %__s2_len45, align 8, !tbaa !26
  %48 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp49 = icmp ult i64 %48, 4
  br i1 %cmp49, label %cond.true.51, label %cond.false.96

cond.true.51:                                     ; preds = %land.lhs.true.47
  %49 = bitcast i8** %__s153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 45
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname54, i32 0, i32 0
  store i8* %arraydecay55, i8** %__s153, align 8, !tbaa !1
  %51 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx58, align 1, !tbaa !27
  %conv59 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !27
  %conv60 = zext i8 %54 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  store i32 %sub61, i32* %__result57, align 4, !tbaa !5
  %55 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp62 = icmp ugt i64 %55, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.94

land.lhs.true.64:                                 ; preds = %cond.true.51
  %56 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %56, 0
  br i1 %cmp65, label %if.then.67, label %if.end.94

if.then.67:                                       ; preds = %land.lhs.true.64
  %57 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx68, align 1, !tbaa !27
  %conv69 = zext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !27
  %conv70 = zext i8 %59 to i32
  %sub71 = sub nsw i32 %conv69, %conv70
  store i32 %sub71, i32* %__result57, align 4, !tbaa !5
  %60 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp72 = icmp ugt i64 %60, 1
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %if.then.67
  %61 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %61, 0
  br i1 %cmp75, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %land.lhs.true.74
  %62 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx78, align 1, !tbaa !27
  %conv79 = zext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !27
  %conv80 = zext i8 %64 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  store i32 %sub81, i32* %__result57, align 4, !tbaa !5
  %65 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp82 = icmp ugt i64 %65, 2
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.92

land.lhs.true.84:                                 ; preds = %if.then.77
  %66 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %66, 0
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %land.lhs.true.84
  %67 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %67, i64 3
  %68 = load i8, i8* %arrayidx88, align 1, !tbaa !27
  %conv89 = zext i8 %68 to i32
  %69 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !27
  %conv90 = zext i8 %69 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  store i32 %sub91, i32* %__result57, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.84, %if.then.77
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.74, %if.then.67
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.64, %cond.true.51
  %70 = load i32, i32* %__result57, align 4, !tbaa !5
  store i32 %70, i32* %tmp95, !tbaa !5
  %71 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i8** %__s153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = load i32, i32* %tmp95, !tbaa !5
  br label %cond.end.100

cond.false.96:                                    ; preds = %land.lhs.true.47, %lor.rhs
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname97 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %74, i32 0, i32 45
  %arraydecay98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname97, i32 0, i32 0
  %call99 = call i32 @strcmp(i8* %arraydecay98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.96, %if.end.94
  %cond101 = phi i32 [ %73, %if.end.94 ], [ %call99, %cond.false.96 ]
  store i32 %cond101, i32* %tmp46, !tbaa !5
  %75 = bitcast i64* %__s2_len45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i64* %__s1_len43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = load i32, i32* %tmp46, !tbaa !5
  %tobool102 = icmp ne i32 %77, 0
  %lnot = xor i1 %tobool102, true
  br label %lor.end

lor.end:                                          ; preds = %cond.end.100, %cond.end
  %78 = phi i1 [ true, %cond.end ], [ %lnot, %cond.end.100 ]
  %lor.ext = zext i1 %78 to i32
  store i32 %lor.ext, i32* %nul, align 4, !tbaa !5
  %79 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gx_device_printer_s* %80 to %struct.gx_device_bit_s*
  %FirstLine = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %81, i32 0, i32 68
  %82 = load i32, i32* %FirstLine, align 4, !tbaa !28
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %83, i32 0, i32 14
  %84 = load i32, i32* %height, align 4, !tbaa !30
  %cmp104 = icmp sge i32 %82, %84
  br i1 %cmp104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %lor.end
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height107 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %85, i32 0, i32 14
  %86 = load i32, i32* %height107, align 4, !tbaa !30
  %sub108 = sub nsw i32 %86, 1
  br label %cond.end.111

cond.false.109:                                   ; preds = %lor.end
  %87 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_printer_s* %87 to %struct.gx_device_bit_s*
  %FirstLine110 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %88, i32 0, i32 68
  %89 = load i32, i32* %FirstLine110, align 4, !tbaa !28
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.106
  %cond112 = phi i32 [ %sub108, %cond.true.106 ], [ %89, %cond.false.109 ]
  store i32 %cond112, i32* %lnum, align 4, !tbaa !5
  %90 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  %91 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gx_device_printer_s* %91 to %struct.gx_device_bit_s*
  %LastLine = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %92, i32 0, i32 69
  %93 = load i32, i32* %LastLine, align 4, !tbaa !31
  %94 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height114 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %94, i32 0, i32 14
  %95 = load i32, i32* %height114, align 4, !tbaa !30
  %cmp115 = icmp sge i32 %93, %95
  br i1 %cmp115, label %cond.true.117, label %cond.false.120

cond.true.117:                                    ; preds = %cond.end.111
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height118 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %96, i32 0, i32 14
  %97 = load i32, i32* %height118, align 4, !tbaa !30
  %sub119 = sub nsw i32 %97, 1
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.end.111
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %99 = bitcast %struct.gx_device_printer_s* %98 to %struct.gx_device_bit_s*
  %LastLine121 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %99, i32 0, i32 69
  %100 = load i32, i32* %LastLine121, align 4, !tbaa !31
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.true.117
  %cond123 = phi i32 [ %sub119, %cond.true.117 ], [ %100, %cond.false.120 ]
  store i32 %cond123, i32* %bottom, align 4, !tbaa !5
  %101 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #2
  %102 = load i32, i32* %bottom, align 4, !tbaa !5
  %103 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub125 = sub nsw i32 %102, %103
  %cmp126 = icmp slt i32 %sub125, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %cond.end.122
  %104 = load i32, i32* %bottom, align 4, !tbaa !5
  %105 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub129 = sub nsw i32 %104, %105
  %sub130 = sub nsw i32 0, %sub129
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.end.122
  %106 = load i32, i32* %bottom, align 4, !tbaa !5
  %107 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub132 = sub nsw i32 %106, %107
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.128
  %cond134 = phi i32 [ %sub130, %cond.true.128 ], [ %sub132, %cond.false.131 ]
  store i32 %cond134, i32* %line_count, align 4, !tbaa !5
  %108 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #2
  %109 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #2
  %110 = load i32, i32* %lnum, align 4, !tbaa !5
  %111 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp137 = icmp sgt i32 %110, %111
  %cond139 = select i1 %cmp137, i32 -1, i32 1
  store i32 %cond139, i32* %step, align 4, !tbaa !5
  %112 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp140 = icmp eq i8* %112, null
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %cond.end.133
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.143:                                       ; preds = %cond.end.133
  %113 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp144 = icmp eq i32 %113, 0
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.152

land.lhs.true.146:                                ; preds = %if.end.143
  %114 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %114, 0
  br i1 %cmp147, label %if.then.149, label %if.end.152

if.then.149:                                      ; preds = %land.lhs.true.146
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height150 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %115, i32 0, i32 14
  %116 = load i32, i32* %height150, align 4, !tbaa !30
  %sub151 = sub nsw i32 %116, 1
  store i32 %sub151, i32* %line_count, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.149, %land.lhs.true.146, %if.end.143
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.152
  %117 = load i32, i32* %i, align 4, !tbaa !5
  %118 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp153 = icmp sle i32 %117, %118
  br i1 %cmp153, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %119 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %120 = load i32, i32* %lnum, align 4, !tbaa !5
  %121 = load i8*, i8** %in, align 8, !tbaa !1
  %call155 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %119, i32 %120, i8* %121, i8** %data) #5
  %122 = load i32, i32* %nul, align 4, !tbaa !5
  %tobool156 = icmp ne i32 %122, 0
  br i1 %tobool156, label %if.end.160, label %if.then.157

if.then.157:                                      ; preds = %for.body
  %123 = load i8*, i8** %data, align 8, !tbaa !1
  %124 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv158 = sext i32 %124 to i64
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call159 = call i64 @fwrite(i8* %123, i64 1, i64 %conv158, %struct._IO_FILE* %125) #5
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.157, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.160
  %126 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %126, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %127 = load i32, i32* %step, align 4, !tbaa !5
  %128 = load i32, i32* %lnum, align 4, !tbaa !5
  %add = add nsw i32 %128, %127
  store i32 %add, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %129 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %129, i32 0, i32 3
  %130 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !7
  %procs162 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %130, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs162, i32 0, i32 2
  %131 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %132 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %132, i32 0, i32 3
  %133 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory163, align 8, !tbaa !7
  %134 = load i8*, i8** %in, align 8, !tbaa !1
  call void %131(%struct.gs_memory_s* %133, i8* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.142
  %135 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %135) #2
  %136 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #2
  %137 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #2
  %138 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #2
  %139 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %139) #2
  %140 = bitcast i32* %nul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #2
  %142 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #2
  %143 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = load i32, i32* %retval
  ret i32 %144
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
define internal i32 @bittags_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %line_size = alloca i32, align 4
  %in = alloca i8*, align 8
  %data = alloca i8*, align 8
  %nul = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %__s1_len43 = alloca i64, align 8
  %__s2_len45 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  %__s153 = alloca i8*, align 8
  %__result57 = alloca i32, align 4
  %tmp95 = alloca i32, align 4
  %lnum = alloca i32, align 4
  %bottom = alloca i32, align 4
  %line_count = alloca i32, align 4
  %i = alloca i32, align 4
  %step = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_s*
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_printer_s*
  %4 = bitcast %struct.gx_device_printer_s* %3 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %4, i32 0) #5
  store i32 %call, i32* %line_size, align 4, !tbaa !5
  %5 = bitcast i8** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %6, i32 0, i32 3
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !7
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %7, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %8 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !23
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory1 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory1, align 8, !tbaa !7
  %11 = load i32, i32* %line_size, align 4, !tbaa !5
  %call2 = call i8* %8(%struct.gs_memory_s* %10, i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #5
  store i8* %call2, i8** %in, align 8, !tbaa !1
  %12 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #2
  %13 = bitcast i32* %nul to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #2
  %15 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.17 to i64)), i64 1), label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %call3 = call i64 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #6
  store i64 %call3, i64* %__s2_len, align 8, !tbaa !26
  %16 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp = icmp ult i64 %16, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %17 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 45
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname, i32 0, i32 0
  store i8* %arraydecay, i8** %__s1, align 8, !tbaa !1
  %19 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #2
  %20 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = zext i8 %21 to i32
  %22 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), align 1, !tbaa !27
  %conv6 = zext i8 %22 to i32
  %sub = sub nsw i32 %conv, %conv6
  store i32 %sub, i32* %__result, align 4, !tbaa !5
  %23 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp7 = icmp ugt i64 %23, 0
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.37

land.lhs.true.9:                                  ; preds = %cond.true
  %24 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %24, 0
  br i1 %cmp10, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true.9
  %25 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx12, align 1, !tbaa !27
  %conv13 = zext i8 %26 to i32
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 1), align 1, !tbaa !27
  %conv14 = zext i8 %27 to i32
  %sub15 = sub nsw i32 %conv13, %conv14
  store i32 %sub15, i32* %__result, align 4, !tbaa !5
  %28 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp16 = icmp ugt i64 %28, 1
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.36

land.lhs.true.18:                                 ; preds = %if.then
  %29 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %29, 0
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %land.lhs.true.18
  %30 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx22, align 1, !tbaa !27
  %conv23 = zext i8 %31 to i32
  %32 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 2), align 1, !tbaa !27
  %conv24 = zext i8 %32 to i32
  %sub25 = sub nsw i32 %conv23, %conv24
  store i32 %sub25, i32* %__result, align 4, !tbaa !5
  %33 = load i64, i64* %__s2_len, align 8, !tbaa !26
  %cmp26 = icmp ugt i64 %33, 2
  br i1 %cmp26, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %if.then.21
  %34 = load i32, i32* %__result, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %34, 0
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %land.lhs.true.28
  %35 = load i8*, i8** %__s1, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8, i8* %35, i64 3
  %36 = load i8, i8* %arrayidx32, align 1, !tbaa !27
  %conv33 = zext i8 %36 to i32
  %37 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i64 3), align 1, !tbaa !27
  %conv34 = zext i8 %37 to i32
  %sub35 = sub nsw i32 %conv33, %conv34
  store i32 %sub35, i32* %__result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.31, %land.lhs.true.28, %if.then.21
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %land.lhs.true.18, %if.then
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.9, %cond.true
  %38 = load i32, i32* %__result, align 4, !tbaa !5
  store i32 %38, i32* %tmp38, !tbaa !5
  %39 = bitcast i32* %__result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i8** %__s1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = load i32, i32* %tmp38, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %42 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %42, i32 0, i32 45
  %arraydecay40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname39, i32 0, i32 0
  %call41 = call i32 @strcmp(i8* %arraydecay40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %41, %if.end.37 ], [ %call41, %cond.false ]
  store i32 %cond, i32* %tmp, !tbaa !5
  %43 = bitcast i64* %__s2_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast i64* %__s1_len to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = load i32, i32* %tmp, !tbaa !5
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %cond.end
  %46 = bitcast i64* %__s1_len43 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #2
  %47 = bitcast i64* %__s2_len45 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %47) #2
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 1) to i64), i64 ptrtoint ([10 x i8]* @.str.18 to i64)), i64 1), label %land.lhs.true.47, label %cond.false.96

land.lhs.true.47:                                 ; preds = %lor.rhs
  %call48 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6
  store i64 %call48, i64* %__s2_len45, align 8, !tbaa !26
  %48 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp49 = icmp ult i64 %48, 4
  br i1 %cmp49, label %cond.true.51, label %cond.false.96

cond.true.51:                                     ; preds = %land.lhs.true.47
  %49 = bitcast i8** %__s153 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %49) #2
  %50 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname54 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %50, i32 0, i32 45
  %arraydecay55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname54, i32 0, i32 0
  store i8* %arraydecay55, i8** %__s153, align 8, !tbaa !1
  %51 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %51) #2
  %52 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds i8, i8* %52, i64 0
  %53 = load i8, i8* %arrayidx58, align 1, !tbaa !27
  %conv59 = zext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), align 1, !tbaa !27
  %conv60 = zext i8 %54 to i32
  %sub61 = sub nsw i32 %conv59, %conv60
  store i32 %sub61, i32* %__result57, align 4, !tbaa !5
  %55 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp62 = icmp ugt i64 %55, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.94

land.lhs.true.64:                                 ; preds = %cond.true.51
  %56 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %56, 0
  br i1 %cmp65, label %if.then.67, label %if.end.94

if.then.67:                                       ; preds = %land.lhs.true.64
  %57 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx68, align 1, !tbaa !27
  %conv69 = zext i8 %58 to i32
  %59 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 1), align 1, !tbaa !27
  %conv70 = zext i8 %59 to i32
  %sub71 = sub nsw i32 %conv69, %conv70
  store i32 %sub71, i32* %__result57, align 4, !tbaa !5
  %60 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp72 = icmp ugt i64 %60, 1
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %if.then.67
  %61 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %61, 0
  br i1 %cmp75, label %if.then.77, label %if.end.93

if.then.77:                                       ; preds = %land.lhs.true.74
  %62 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds i8, i8* %62, i64 2
  %63 = load i8, i8* %arrayidx78, align 1, !tbaa !27
  %conv79 = zext i8 %63 to i32
  %64 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 2), align 1, !tbaa !27
  %conv80 = zext i8 %64 to i32
  %sub81 = sub nsw i32 %conv79, %conv80
  store i32 %sub81, i32* %__result57, align 4, !tbaa !5
  %65 = load i64, i64* %__s2_len45, align 8, !tbaa !26
  %cmp82 = icmp ugt i64 %65, 2
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.92

land.lhs.true.84:                                 ; preds = %if.then.77
  %66 = load i32, i32* %__result57, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %66, 0
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %land.lhs.true.84
  %67 = load i8*, i8** %__s153, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds i8, i8* %67, i64 3
  %68 = load i8, i8* %arrayidx88, align 1, !tbaa !27
  %conv89 = zext i8 %68 to i32
  %69 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i64 3), align 1, !tbaa !27
  %conv90 = zext i8 %69 to i32
  %sub91 = sub nsw i32 %conv89, %conv90
  store i32 %sub91, i32* %__result57, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.87, %land.lhs.true.84, %if.then.77
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.74, %if.then.67
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %land.lhs.true.64, %cond.true.51
  %70 = load i32, i32* %__result57, align 4, !tbaa !5
  store i32 %70, i32* %tmp95, !tbaa !5
  %71 = bitcast i32* %__result57 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #2
  %72 = bitcast i8** %__s153 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = load i32, i32* %tmp95, !tbaa !5
  br label %cond.end.100

cond.false.96:                                    ; preds = %land.lhs.true.47, %lor.rhs
  %74 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %fname97 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %74, i32 0, i32 45
  %arraydecay98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %fname97, i32 0, i32 0
  %call99 = call i32 @strcmp(i8* %arraydecay98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #7
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.96, %if.end.94
  %cond101 = phi i32 [ %73, %if.end.94 ], [ %call99, %cond.false.96 ]
  store i32 %cond101, i32* %tmp46, !tbaa !5
  %75 = bitcast i64* %__s2_len45 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast i64* %__s1_len43 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = load i32, i32* %tmp46, !tbaa !5
  %tobool102 = icmp ne i32 %77, 0
  %lnot = xor i1 %tobool102, true
  br label %lor.end

lor.end:                                          ; preds = %cond.end.100, %cond.end
  %78 = phi i1 [ true, %cond.end ], [ %lnot, %cond.end.100 ]
  %lor.ext = zext i1 %78 to i32
  store i32 %lor.ext, i32* %nul, align 4, !tbaa !5
  %79 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %79) #2
  %80 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %81 = bitcast %struct.gx_device_printer_s* %80 to %struct.gx_device_bit_s*
  %FirstLine = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %81, i32 0, i32 68
  %82 = load i32, i32* %FirstLine, align 4, !tbaa !28
  %83 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %83, i32 0, i32 14
  %84 = load i32, i32* %height, align 4, !tbaa !30
  %cmp104 = icmp sge i32 %82, %84
  br i1 %cmp104, label %cond.true.106, label %cond.false.109

cond.true.106:                                    ; preds = %lor.end
  %85 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height107 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %85, i32 0, i32 14
  %86 = load i32, i32* %height107, align 4, !tbaa !30
  %sub108 = sub nsw i32 %86, 1
  br label %cond.end.111

cond.false.109:                                   ; preds = %lor.end
  %87 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gx_device_printer_s* %87 to %struct.gx_device_bit_s*
  %FirstLine110 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %88, i32 0, i32 68
  %89 = load i32, i32* %FirstLine110, align 4, !tbaa !28
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.106
  %cond112 = phi i32 [ %sub108, %cond.true.106 ], [ %89, %cond.false.109 ]
  store i32 %cond112, i32* %lnum, align 4, !tbaa !5
  %90 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.start(i64 4, i8* %90) #2
  %91 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %92 = bitcast %struct.gx_device_printer_s* %91 to %struct.gx_device_bit_s*
  %LastLine = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %92, i32 0, i32 69
  %93 = load i32, i32* %LastLine, align 4, !tbaa !31
  %94 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height114 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %94, i32 0, i32 14
  %95 = load i32, i32* %height114, align 4, !tbaa !30
  %cmp115 = icmp sge i32 %93, %95
  br i1 %cmp115, label %cond.true.117, label %cond.false.120

cond.true.117:                                    ; preds = %cond.end.111
  %96 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height118 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %96, i32 0, i32 14
  %97 = load i32, i32* %height118, align 4, !tbaa !30
  %sub119 = sub nsw i32 %97, 1
  br label %cond.end.122

cond.false.120:                                   ; preds = %cond.end.111
  %98 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %99 = bitcast %struct.gx_device_printer_s* %98 to %struct.gx_device_bit_s*
  %LastLine121 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %99, i32 0, i32 69
  %100 = load i32, i32* %LastLine121, align 4, !tbaa !31
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.120, %cond.true.117
  %cond123 = phi i32 [ %sub119, %cond.true.117 ], [ %100, %cond.false.120 ]
  store i32 %cond123, i32* %bottom, align 4, !tbaa !5
  %101 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #2
  %102 = load i32, i32* %bottom, align 4, !tbaa !5
  %103 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub125 = sub nsw i32 %102, %103
  %cmp126 = icmp slt i32 %sub125, 0
  br i1 %cmp126, label %cond.true.128, label %cond.false.131

cond.true.128:                                    ; preds = %cond.end.122
  %104 = load i32, i32* %bottom, align 4, !tbaa !5
  %105 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub129 = sub nsw i32 %104, %105
  %sub130 = sub nsw i32 0, %sub129
  br label %cond.end.133

cond.false.131:                                   ; preds = %cond.end.122
  %106 = load i32, i32* %bottom, align 4, !tbaa !5
  %107 = load i32, i32* %lnum, align 4, !tbaa !5
  %sub132 = sub nsw i32 %106, %107
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.131, %cond.true.128
  %cond134 = phi i32 [ %sub130, %cond.true.128 ], [ %sub132, %cond.false.131 ]
  store i32 %cond134, i32* %line_count, align 4, !tbaa !5
  %108 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %108) #2
  %109 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start(i64 4, i8* %109) #2
  %110 = load i32, i32* %lnum, align 4, !tbaa !5
  %111 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp137 = icmp sgt i32 %110, %111
  %cond139 = select i1 %cmp137, i32 -1, i32 1
  store i32 %cond139, i32* %step, align 4, !tbaa !5
  %112 = load i8*, i8** %in, align 8, !tbaa !1
  %cmp140 = icmp eq i8* %112, null
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %cond.end.133
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.143:                                       ; preds = %cond.end.133
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %114 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %114, i32 0, i32 13
  %115 = load i32, i32* %width, align 4, !tbaa !33
  %116 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height144 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %116, i32 0, i32 14
  %117 = load i32, i32* %height144, align 4, !tbaa !30
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 %115, i32 %117) #5
  %118 = load i32, i32* %lnum, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %118, 0
  br i1 %cmp146, label %land.lhs.true.148, label %if.end.154

land.lhs.true.148:                                ; preds = %if.end.143
  %119 = load i32, i32* %bottom, align 4, !tbaa !5
  %cmp149 = icmp eq i32 %119, 0
  br i1 %cmp149, label %if.then.151, label %if.end.154

if.then.151:                                      ; preds = %land.lhs.true.148
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height152 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %120, i32 0, i32 14
  %121 = load i32, i32* %height152, align 4, !tbaa !30
  %sub153 = sub nsw i32 %121, 1
  store i32 %sub153, i32* %line_count, align 4, !tbaa !5
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.151, %land.lhs.true.148, %if.end.143
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.154
  %122 = load i32, i32* %i, align 4, !tbaa !5
  %123 = load i32, i32* %line_count, align 4, !tbaa !5
  %cmp155 = icmp sle i32 %122, %123
  br i1 %cmp155, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %124 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %125 = load i32, i32* %lnum, align 4, !tbaa !5
  %126 = load i8*, i8** %in, align 8, !tbaa !1
  %call157 = call i32 @gdev_prn_get_bits(%struct.gx_device_printer_s* %124, i32 %125, i8* %126, i8** %data) #5
  %127 = load i32, i32* %nul, align 4, !tbaa !5
  %tobool158 = icmp ne i32 %127, 0
  br i1 %tobool158, label %if.end.162, label %if.then.159

if.then.159:                                      ; preds = %for.body
  %128 = load i8*, i8** %data, align 8, !tbaa !1
  %129 = load i32, i32* %line_size, align 4, !tbaa !5
  %conv160 = sext i32 %129 to i64
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call161 = call i64 @fwrite(i8* %128, i64 1, i64 %conv160, %struct._IO_FILE* %130) #5
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.162
  %131 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %131, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %132 = load i32, i32* %step, align 4, !tbaa !5
  %133 = load i32, i32* %lnum, align 4, !tbaa !5
  %add = add nsw i32 %133, %132
  store i32 %add, i32* %lnum, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory163 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory163, align 8, !tbaa !7
  %procs164 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs164, i32 0, i32 2
  %136 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %137 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory165 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %137, i32 0, i32 3
  %138 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory165, align 8, !tbaa !7
  %139 = load i8*, i8** %in, align 8, !tbaa !1
  call void %136(%struct.gs_memory_s* %138, i8* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.142
  %140 = bitcast i32* %step to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #2
  %141 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #2
  %142 = bitcast i32* %line_count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %142) #2
  %143 = bitcast i32* %bottom to i8*
  call void @llvm.lifetime.end(i64 4, i8* %143) #2
  %144 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %144) #2
  %145 = bitcast i32* %nul to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #2
  %146 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #2
  %147 = bitcast i8** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #2
  %148 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #2
  %149 = load i32, i32* %retval
  ret i32 %149
}

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @bit_mono_map_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %drop = alloca i32, align 4
  %gray = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !34
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %bpc, align 4, !tbaa !5
  %3 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv1 = sext i32 %4 to i64
  %sub = sub i64 16, %conv1
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %drop, align 4, !tbaa !5
  %5 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.start(i64 2, i8* %5) #2
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !36
  store i16 %7, i16* %gray, align 2, !tbaa !36
  %8 = load i32, i32* %bpc, align 4, !tbaa !5
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i16, i16* %gray, align 2, !tbaa !36
  %conv4 = zext i16 %9 to i32
  %sub5 = sub nsw i32 65535, %conv4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i16, i16* %gray, align 2, !tbaa !36
  %conv6 = zext i16 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %conv6, %cond.false ]
  %11 = load i32, i32* %drop, align 4, !tbaa !5
  %shr = ashr i32 %cond, %11
  %conv7 = sext i32 %shr to i64
  %12 = bitcast i16* %gray to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #2
  %13 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #2
  %14 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  ret i64 %conv7
}

; Function Attrs: nounwind uwtable
define internal i32 @bit_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  %depth = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %bpc = alloca i32, align 4
  %mask = alloca i32, align 4
  %cshift = alloca i64, align 8
  %cshift47 = alloca i64, align 8
  %c = alloca i32, align 4
  %m = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !26
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth1, align 2, !tbaa !34
  %conv = zext i16 %2 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !5
  %3 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %4, i32 0, i32 2
  %5 = load i8*, i8** %dname, align 8, !tbaa !37
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 3
  %6 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv2 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv2, 99
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %dname4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 2
  %8 = load i8*, i8** %dname4, align 8, !tbaa !37
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx5, align 1, !tbaa !27
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv6, 114
  %cond = select i1 %cmp7, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ 4, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond9, i32* %ncomp, align 4, !tbaa !5
  %10 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load i32, i32* %depth, align 4, !tbaa !5
  %12 = load i32, i32* %ncomp, align 4, !tbaa !5
  %div = sdiv i32 %11, %12
  store i32 %div, i32* %bpc, align 4, !tbaa !5
  %13 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %14
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !5
  %15 = load i32, i32* %ncomp, align 4, !tbaa !5
  switch i32 %15, label %sw.epilog [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.25
    i32 4, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %cond.end
  %16 = load i32, i32* %depth, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %16, 1
  br i1 %cmp10, label %cond.true.12, label %cond.false.14

cond.true.12:                                     ; preds = %sw.bb
  %17 = load i64, i64* %color.addr, align 8, !tbaa !26
  %tobool = icmp ne i64 %17, 0
  %cond13 = select i1 %tobool, i32 0, i32 65535
  br label %cond.end.19

cond.false.14:                                    ; preds = %sw.bb
  %18 = load i64, i64* %color.addr, align 8, !tbaa !26
  %mul = mul i64 %18, 65535
  %19 = load i32, i32* %mask, align 4, !tbaa !5
  %conv15 = zext i32 %19 to i64
  %div16 = udiv i64 %mul, %conv15
  %conv17 = trunc i64 %div16 to i16
  %conv18 = zext i16 %conv17 to i32
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.14, %cond.true.12
  %cond20 = phi i32 [ %cond13, %cond.true.12 ], [ %conv18, %cond.false.14 ]
  %conv21 = trunc i32 %cond20 to i16
  %20 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds i16, i16* %20, i64 2
  store i16 %conv21, i16* %arrayidx22, align 2, !tbaa !36
  %21 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx23 = getelementptr inbounds i16, i16* %21, i64 1
  store i16 %conv21, i16* %arrayidx23, align 2, !tbaa !36
  %22 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds i16, i16* %22, i64 0
  store i16 %conv21, i16* %arrayidx24, align 2, !tbaa !36
  br label %sw.epilog

sw.bb.25:                                         ; preds = %cond.end
  %23 = bitcast i64* %cshift to i8*
  call void @llvm.lifetime.start(i64 8, i8* %23) #2
  %24 = load i64, i64* %color.addr, align 8, !tbaa !26
  store i64 %24, i64* %cshift, align 8, !tbaa !26
  %25 = load i64, i64* %cshift, align 8, !tbaa !26
  %26 = load i32, i32* %mask, align 4, !tbaa !5
  %conv26 = zext i32 %26 to i64
  %and = and i64 %25, %conv26
  %mul27 = mul i64 %and, 65535
  %27 = load i32, i32* %mask, align 4, !tbaa !5
  %conv28 = zext i32 %27 to i64
  %div29 = udiv i64 %mul27, %conv28
  %conv30 = trunc i64 %div29 to i16
  %28 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds i16, i16* %28, i64 2
  store i16 %conv30, i16* %arrayidx31, align 2, !tbaa !36
  %29 = load i32, i32* %bpc, align 4, !tbaa !5
  %30 = load i64, i64* %cshift, align 8, !tbaa !26
  %sh_prom = zext i32 %29 to i64
  %shr = lshr i64 %30, %sh_prom
  store i64 %shr, i64* %cshift, align 8, !tbaa !26
  %31 = load i64, i64* %cshift, align 8, !tbaa !26
  %32 = load i32, i32* %mask, align 4, !tbaa !5
  %conv32 = zext i32 %32 to i64
  %and33 = and i64 %31, %conv32
  %mul34 = mul i64 %and33, 65535
  %33 = load i32, i32* %mask, align 4, !tbaa !5
  %conv35 = zext i32 %33 to i64
  %div36 = udiv i64 %mul34, %conv35
  %conv37 = trunc i64 %div36 to i16
  %34 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds i16, i16* %34, i64 1
  store i16 %conv37, i16* %arrayidx38, align 2, !tbaa !36
  %35 = load i64, i64* %cshift, align 8, !tbaa !26
  %36 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom39 = zext i32 %36 to i64
  %shr40 = lshr i64 %35, %sh_prom39
  %mul41 = mul i64 %shr40, 65535
  %37 = load i32, i32* %mask, align 4, !tbaa !5
  %conv42 = zext i32 %37 to i64
  %div43 = udiv i64 %mul41, %conv42
  %conv44 = trunc i64 %div43 to i16
  %38 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds i16, i16* %38, i64 0
  store i16 %conv44, i16* %arrayidx45, align 2, !tbaa !36
  %39 = bitcast i64* %cshift to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #2
  br label %sw.epilog

sw.bb.46:                                         ; preds = %cond.end
  %40 = bitcast i64* %cshift47 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #2
  %41 = load i64, i64* %color.addr, align 8, !tbaa !26
  store i64 %41, i64* %cshift47, align 8, !tbaa !26
  %42 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #2
  %43 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #2
  %44 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #2
  %45 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i64, i64* %cshift47, align 8, !tbaa !26
  %47 = load i32, i32* %mask, align 4, !tbaa !5
  %conv48 = zext i32 %47 to i64
  %and49 = and i64 %46, %conv48
  %conv50 = trunc i64 %and49 to i32
  store i32 %conv50, i32* %k, align 4, !tbaa !5
  %48 = load i32, i32* %bpc, align 4, !tbaa !5
  %49 = load i64, i64* %cshift47, align 8, !tbaa !26
  %sh_prom51 = zext i32 %48 to i64
  %shr52 = lshr i64 %49, %sh_prom51
  store i64 %shr52, i64* %cshift47, align 8, !tbaa !26
  %50 = load i64, i64* %cshift47, align 8, !tbaa !26
  %51 = load i32, i32* %mask, align 4, !tbaa !5
  %conv53 = zext i32 %51 to i64
  %and54 = and i64 %50, %conv53
  %conv55 = trunc i64 %and54 to i32
  store i32 %conv55, i32* %y, align 4, !tbaa !5
  %52 = load i32, i32* %bpc, align 4, !tbaa !5
  %53 = load i64, i64* %cshift47, align 8, !tbaa !26
  %sh_prom56 = zext i32 %52 to i64
  %shr57 = lshr i64 %53, %sh_prom56
  store i64 %shr57, i64* %cshift47, align 8, !tbaa !26
  %54 = load i64, i64* %cshift47, align 8, !tbaa !26
  %55 = load i32, i32* %mask, align 4, !tbaa !5
  %conv58 = zext i32 %55 to i64
  %and59 = and i64 %54, %conv58
  %conv60 = trunc i64 %and59 to i32
  store i32 %conv60, i32* %m, align 4, !tbaa !5
  %56 = load i64, i64* %cshift47, align 8, !tbaa !26
  %57 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom61 = zext i32 %57 to i64
  %shr62 = lshr i64 %56, %sh_prom61
  %conv63 = trunc i64 %shr62 to i32
  store i32 %conv63, i32* %c, align 4, !tbaa !5
  %58 = load i32, i32* %mask, align 4, !tbaa !5
  %59 = load i32, i32* %c, align 4, !tbaa !5
  %sub64 = sub i32 %58, %59
  %60 = load i32, i32* %mask, align 4, !tbaa !5
  %61 = load i32, i32* %k, align 4, !tbaa !5
  %sub65 = sub i32 %60, %61
  %mul66 = mul i32 %sub64, %sub65
  %62 = load i32, i32* %mask, align 4, !tbaa !5
  %div67 = udiv i32 %mul66, %62
  %conv68 = zext i32 %div67 to i64
  %mul69 = mul i64 %conv68, 65535
  %63 = load i32, i32* %mask, align 4, !tbaa !5
  %conv70 = zext i32 %63 to i64
  %div71 = udiv i64 %mul69, %conv70
  %conv72 = trunc i64 %div71 to i16
  %64 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds i16, i16* %64, i64 0
  store i16 %conv72, i16* %arrayidx73, align 2, !tbaa !36
  %65 = load i32, i32* %mask, align 4, !tbaa !5
  %66 = load i32, i32* %m, align 4, !tbaa !5
  %sub74 = sub i32 %65, %66
  %67 = load i32, i32* %mask, align 4, !tbaa !5
  %68 = load i32, i32* %k, align 4, !tbaa !5
  %sub75 = sub i32 %67, %68
  %mul76 = mul i32 %sub74, %sub75
  %69 = load i32, i32* %mask, align 4, !tbaa !5
  %div77 = udiv i32 %mul76, %69
  %conv78 = zext i32 %div77 to i64
  %mul79 = mul i64 %conv78, 65535
  %70 = load i32, i32* %mask, align 4, !tbaa !5
  %conv80 = zext i32 %70 to i64
  %div81 = udiv i64 %mul79, %conv80
  %conv82 = trunc i64 %div81 to i16
  %71 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx83 = getelementptr inbounds i16, i16* %71, i64 1
  store i16 %conv82, i16* %arrayidx83, align 2, !tbaa !36
  %72 = load i32, i32* %mask, align 4, !tbaa !5
  %73 = load i32, i32* %y, align 4, !tbaa !5
  %sub84 = sub i32 %72, %73
  %74 = load i32, i32* %mask, align 4, !tbaa !5
  %75 = load i32, i32* %k, align 4, !tbaa !5
  %sub85 = sub i32 %74, %75
  %mul86 = mul i32 %sub84, %sub85
  %76 = load i32, i32* %mask, align 4, !tbaa !5
  %div87 = udiv i32 %mul86, %76
  %conv88 = zext i32 %div87 to i64
  %mul89 = mul i64 %conv88, 65535
  %77 = load i32, i32* %mask, align 4, !tbaa !5
  %conv90 = zext i32 %77 to i64
  %div91 = udiv i64 %mul89, %conv90
  %conv92 = trunc i64 %div91 to i16
  %78 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds i16, i16* %78, i64 2
  store i16 %conv92, i16* %arrayidx93, align 2, !tbaa !36
  %79 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #2
  %81 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #2
  %82 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast i64* %cshift47 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end, %sw.bb.46, %sw.bb.25, %cond.end.19
  %84 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  %86 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #2
  %87 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @bit_get_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %ecode = alloca i32, align 4
  %real_ncomps = alloca i32, align 4
  %ncomps = alloca i32, align 4
  %forcemono = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %real_ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 2
  %4 = load i8*, i8** %dname, align 8, !tbaa !37
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 3
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 99
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 2
  %7 = load i8*, i8** %dname2, align 8, !tbaa !37
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 3
  %8 = load i8, i8* %arrayidx3, align 1, !tbaa !27
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv4, 114
  %cond = select i1 %cmp5, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i32 [ 4, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond7, i32* %real_ncomps, align 4, !tbaa !5
  %9 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %11 = load i32, i32* %num_components, align 4, !tbaa !38
  store i32 %11, i32* %ncomps, align 4, !tbaa !5
  %12 = bitcast i32* %forcemono to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load i32, i32* %ncomps, align 4, !tbaa !5
  %14 = load i32, i32* %real_ncomps, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %13, %14
  %cond10 = select i1 %cmp8, i32 0, i32 1
  store i32 %cond10, i32* %forcemono, align 4, !tbaa !5
  %15 = load i32, i32* %real_ncomps, align 4, !tbaa !5
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 11
  %num_components12 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info11, i32 0, i32 1
  store i32 %15, i32* %num_components12, align 4, !tbaa !38
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %18 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_get_params(%struct.gx_device_s* %17, %struct.gs_param_list_s* %18) #5
  store i32 %call, i32* %ecode, align 4, !tbaa !5
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %20 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call13 = call i32 @sample_device_crd_get_params(%struct.gx_device_s* %19, %struct.gs_param_list_s* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)) #5
  store i32 %call13, i32* %code, align 4, !tbaa !5
  %21 = load i32, i32* %code, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %21, 0
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %22 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %22, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %23 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call16 = call i32 @param_write_int(%struct.gs_param_list_s* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32* %forcemono) #5
  store i32 %call16, i32* %code, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %24 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %24, i32* %ecode, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end
  %25 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %27 = bitcast %struct.gx_device_s* %26 to %struct.gx_device_bit_s*
  %FirstLine = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %27, i32 0, i32 68
  %call21 = call i32 @param_write_int(%struct.gs_param_list_s* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %FirstLine) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  %28 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %28, i32* %ecode, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.20
  %29 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %31 = bitcast %struct.gx_device_s* %30 to %struct.gx_device_bit_s*
  %LastLine = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %31, i32 0, i32 69
  %call26 = call i32 @param_write_int(%struct.gs_param_list_s* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32* %LastLine) #5
  store i32 %call26, i32* %code, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.25
  %32 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %32, i32* %ecode, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.25
  %33 = load i32, i32* %ncomps, align 4, !tbaa !5
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i32 0, i32 11
  %num_components32 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info31, i32 0, i32 1
  store i32 %33, i32* %num_components32, align 4, !tbaa !38
  %35 = load i32, i32* %ecode, align 4, !tbaa !5
  %36 = bitcast i32* %forcemono to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #2
  %37 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i32* %real_ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #2
  %39 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @bit_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %save_info = alloca %struct.gx_device_color_info_s, align 8
  %ncomps = alloca i32, align 4
  %real_ncomps = alloca i32, align 4
  %v = alloca i32, align 4
  %ecode = alloca i32, align 4
  %code = alloca i32, align 4
  %bpc = alloca i32, align 4
  %vname = alloca i8*, align 8
  %FirstLine = alloca i32, align 4
  %LastLine = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.start(i64 720, i8* %0) #2
  %1 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %2, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %3 = load i32, i32* %num_components, align 4, !tbaa !38
  store i32 %3, i32* %ncomps, align 4, !tbaa !5
  %4 = bitcast i32* %real_ncomps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 2
  %6 = load i8*, i8** %dname, align 8, !tbaa !37
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %conv = sext i8 %7 to i32
  %cmp = icmp eq i32 %conv, 99
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %dname2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 2
  %9 = load i8*, i8** %dname2, align 8, !tbaa !37
  %arrayidx3 = getelementptr inbounds i8, i8* %9, i64 3
  %10 = load i8, i8* %arrayidx3, align 1, !tbaa !27
  %conv4 = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv4, 114
  %cond = select i1 %cmp5, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond7 = phi i32 [ 4, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond7, i32* %real_ncomps, align 4, !tbaa !5
  %11 = bitcast i32* %v to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  store i32 0, i32* %ecode, align 4, !tbaa !5
  %13 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info8, i32 0, i32 3
  %16 = load i16, i16* %depth, align 2, !tbaa !34
  %conv9 = zext i16 %16 to i32
  %17 = load i32, i32* %real_ncomps, align 4, !tbaa !5
  %div = sdiv i32 %conv9, %17
  %idxprom = sext i32 %div to i64
  %arrayidx10 = getelementptr inbounds [17 x i32], [17 x i32]* @bit_put_params.real_bpc, i32 0, i64 %idxprom
  %18 = load i32, i32* %arrayidx10, align 4, !tbaa !5
  store i32 %18, i32* %bpc, align 4, !tbaa !5
  %19 = bitcast i8** %vname to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  %20 = bitcast i32* %FirstLine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #2
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %22 = bitcast %struct.gx_device_s* %21 to %struct.gx_device_bit_s*
  %FirstLine11 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %22, i32 0, i32 68
  %23 = load i32, i32* %FirstLine11, align 4, !tbaa !28
  store i32 %23, i32* %FirstLine, align 4, !tbaa !5
  %24 = bitcast i32* %LastLine to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #2
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %26 = bitcast %struct.gx_device_s* %25 to %struct.gx_device_bit_s*
  %LastLine12 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %26, i32 0, i32 69
  %27 = load i32, i32* %LastLine12, align 4, !tbaa !31
  store i32 %27, i32* %LastLine, align 4, !tbaa !5
  %28 = load i32, i32* %real_ncomps, align 4, !tbaa !5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info13 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 11
  %num_components14 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info13, i32 0, i32 1
  store i32 %28, i32* %num_components14, align 4, !tbaa !38
  %30 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call = call i32 @param_read_int(%struct.gs_param_list_s* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32* %v) #5
  store i32 %call, i32* %code, align 4, !tbaa !5
  %cmp15 = icmp ne i32 %call, 1
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %31 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call17 = call i32 @param_read_int(%struct.gs_param_list_s* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32* %v) #5
  store i32 %call17, i32* %code, align 4, !tbaa !5
  %cmp18 = icmp ne i32 %call17, 1
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %32 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call21 = call i32 @param_read_int(%struct.gs_param_list_s* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32* %v) #5
  store i32 %call21, i32* %code, align 4, !tbaa !5
  %cmp22 = icmp ne i32 %call21, 1
  br i1 %cmp22, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %33 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call25 = call i32 @param_read_int(%struct.gs_param_list_s* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32* %v) #5
  store i32 %call25, i32* %code, align 4, !tbaa !5
  %cmp26 = icmp ne i32 %call25, 1
  br i1 %cmp26, label %if.then, label %if.end.37

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false, %cond.end
  %34 = load i32, i32* %code, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %34, 0
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then
  %35 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %35, i32* %ecode, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %if.then
  %36 = load i32, i32* %v, align 4, !tbaa !5
  switch i32 %36, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb.31
    i32 16, label %sw.bb.32
    i32 256, label %sw.bb.33
    i32 4096, label %sw.bb.34
    i32 65536, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %if.else
  store i32 1, i32* %bpc, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.31:                                         ; preds = %if.else
  store i32 2, i32* %bpc, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.32:                                         ; preds = %if.else
  store i32 4, i32* %bpc, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.else
  store i32 8, i32* %bpc, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.else
  store i32 12, i32* %bpc, align 4, !tbaa !5
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.else
  store i32 16, i32* %bpc, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %37 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %37, i32 0, i32 0
  %38 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !39
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %38, i32 0, i32 7
  %39 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !41
  %40 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %41 = load i8*, i8** %vname, align 8, !tbaa !1
  store i32 -15, i32* %ecode, align 4, !tbaa !5
  %call36 = call i32 %39(%struct.gs_param_list_s* %40, i8* %41, i32 -15) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then.30
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %lor.lhs.false.24
  %42 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call38 = call i32 @param_read_int(%struct.gs_param_list_s* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32* %v) #5
  store i32 %call38, i32* %code, align 4, !tbaa !5
  switch i32 %call38, label %sw.default.49 [
    i32 0, label %sw.bb.39
    i32 1, label %sw.epilog.53
  ]

sw.bb.39:                                         ; preds = %if.end.37
  %43 = load i32, i32* %v, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %43, 1
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %sw.bb.39
  store i32 1, i32* %ncomps, align 4, !tbaa !5
  br label %sw.epilog.53

if.else.43:                                       ; preds = %sw.bb.39
  %44 = load i32, i32* %v, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %44, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else.43
  %45 = load i32, i32* %real_ncomps, align 4, !tbaa !5
  store i32 %45, i32* %ncomps, align 4, !tbaa !5
  br label %sw.epilog.53

if.end.47:                                        ; preds = %if.else.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47
  store i32 -15, i32* %code, align 4, !tbaa !5
  br label %sw.default.49

sw.default.49:                                    ; preds = %if.end.37, %if.end.48
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %ecode, align 4, !tbaa !5
  %47 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs50 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %47, i32 0, i32 0
  %48 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs50, align 8, !tbaa !39
  %signal_error51 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %48, i32 0, i32 7
  %49 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error51, align 8, !tbaa !41
  %50 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %51 = load i8*, i8** %vname, align 8, !tbaa !1
  %52 = load i32, i32* %ecode, align 4, !tbaa !5
  %call52 = call i32 %49(%struct.gs_param_list_s* %50, i8* %51, i32 %52) #5
  br label %sw.epilog.53

sw.epilog.53:                                     ; preds = %sw.default.49, %if.end.37, %if.then.46, %if.then.42
  %53 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp54 = icmp slt i32 %53, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %sw.epilog.53
  %54 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.57:                                        ; preds = %sw.epilog.53
  %55 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call58 = call i32 @param_read_int(%struct.gs_param_list_s* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32* %v) #5
  store i32 %call58, i32* %code, align 4, !tbaa !5
  switch i32 %call58, label %sw.default.60 [
    i32 0, label %sw.bb.59
    i32 1, label %sw.epilog.64
  ]

sw.bb.59:                                         ; preds = %if.end.57
  %56 = load i32, i32* %v, align 4, !tbaa !5
  store i32 %56, i32* %FirstLine, align 4, !tbaa !5
  br label %sw.epilog.64

sw.default.60:                                    ; preds = %if.end.57
  %57 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %57, i32* %ecode, align 4, !tbaa !5
  %58 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs61 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %58, i32 0, i32 0
  %59 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs61, align 8, !tbaa !39
  %signal_error62 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %59, i32 0, i32 7
  %60 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error62, align 8, !tbaa !41
  %61 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %62 = load i8*, i8** %vname, align 8, !tbaa !1
  %63 = load i32, i32* %ecode, align 4, !tbaa !5
  %call63 = call i32 %60(%struct.gs_param_list_s* %61, i8* %62, i32 %63) #5
  br label %sw.epilog.64

sw.epilog.64:                                     ; preds = %sw.default.60, %if.end.57, %sw.bb.59
  %64 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %64, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.epilog.64
  %65 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %sw.epilog.64
  %66 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8** %vname, align 8, !tbaa !1
  %call69 = call i32 @param_read_int(%struct.gs_param_list_s* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32* %v) #5
  store i32 %call69, i32* %code, align 4, !tbaa !5
  switch i32 %call69, label %sw.default.71 [
    i32 0, label %sw.bb.70
    i32 1, label %sw.epilog.75
  ]

sw.bb.70:                                         ; preds = %if.end.68
  %67 = load i32, i32* %v, align 4, !tbaa !5
  store i32 %67, i32* %LastLine, align 4, !tbaa !5
  br label %sw.epilog.75

sw.default.71:                                    ; preds = %if.end.68
  %68 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %68, i32* %ecode, align 4, !tbaa !5
  %69 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs72 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %69, i32 0, i32 0
  %70 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs72, align 8, !tbaa !39
  %signal_error73 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %70, i32 0, i32 7
  %71 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error73, align 8, !tbaa !41
  %72 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %73 = load i8*, i8** %vname, align 8, !tbaa !1
  %74 = load i32, i32* %ecode, align 4, !tbaa !5
  %call74 = call i32 %71(%struct.gs_param_list_s* %72, i8* %73, i32 %74) #5
  br label %sw.epilog.75

sw.epilog.75:                                     ; preds = %sw.default.71, %if.end.68, %sw.bb.70
  %75 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %75, 0
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %sw.epilog.75
  %76 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.79:                                        ; preds = %sw.epilog.75
  %77 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info80 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %77, i32 0, i32 11
  %78 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  %79 = bitcast %struct.gx_device_color_info_s* %color_info80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 720, i32 8, i1 false), !tbaa.struct !43
  %80 = load i32, i32* %bpc, align 4, !tbaa !5
  %sub = sub nsw i32 %80, 1
  %idxprom81 = sext i32 %sub to i64
  %81 = load i32, i32* %real_ncomps, align 4, !tbaa !5
  %sub82 = sub nsw i32 %81, 1
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [4 x [16 x i8]], [4 x [16 x i8]]* @bit_put_params.depths, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx84, i32 0, i64 %idxprom81
  %82 = load i8, i8* %arrayidx85, align 1, !tbaa !27
  %conv86 = zext i8 %82 to i16
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info87 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 11
  %depth88 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info87, i32 0, i32 3
  store i16 %conv86, i16* %depth88, align 2, !tbaa !34
  %84 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %84
  %85 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info89 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %85, i32 0, i32 11
  %dither_colors = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info89, i32 0, i32 8
  store i32 %shl, i32* %dither_colors, align 4, !tbaa !44
  %86 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info90 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %86, i32 0, i32 11
  %dither_grays = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info90, i32 0, i32 7
  store i32 %shl, i32* %dither_grays, align 4, !tbaa !45
  %sub91 = sub i32 %shl, 1
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info92 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %87, i32 0, i32 11
  %max_color = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info92, i32 0, i32 6
  store i32 %sub91, i32* %max_color, align 4, !tbaa !46
  %88 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info93 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %88, i32 0, i32 11
  %max_gray = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info93, i32 0, i32 5
  store i32 %sub91, i32* %max_gray, align 4, !tbaa !47
  %89 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %90 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call94 = call i32 @gdev_prn_put_params(%struct.gx_device_s* %89, %struct.gs_param_list_s* %90) #5
  store i32 %call94, i32* %ecode, align 4, !tbaa !5
  %91 = load i32, i32* %ecode, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %91, 0
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.79
  %92 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info98 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %92, i32 0, i32 11
  %93 = bitcast %struct.gx_device_color_info_s* %color_info98 to i8*
  %94 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 720, i32 8, i1 false), !tbaa.struct !43
  %95 = load i32, i32* %ecode, align 4, !tbaa !5
  store i32 %95, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.99:                                        ; preds = %if.end.79
  %96 = load i32, i32* %ncomps, align 4, !tbaa !5
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info100 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 11
  %num_components101 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info100, i32 0, i32 1
  store i32 %96, i32* %num_components101, align 4, !tbaa !38
  %98 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info102 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %98, i32 0, i32 11
  %depth103 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info102, i32 0, i32 3
  %99 = load i16, i16* %depth103, align 2, !tbaa !34
  %conv104 = zext i16 %99 to i32
  %depth105 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 3
  %100 = load i16, i16* %depth105, align 2, !tbaa !48
  %conv106 = zext i16 %100 to i32
  %cmp107 = icmp ne i32 %conv104, %conv106
  br i1 %cmp107, label %if.then.115, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %if.end.99
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %101, i32 0, i32 11
  %num_components111 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info110, i32 0, i32 1
  %102 = load i32, i32* %num_components111, align 4, !tbaa !38
  %num_components112 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %save_info, i32 0, i32 1
  %103 = load i32, i32* %num_components112, align 4, !tbaa !49
  %cmp113 = icmp ne i32 %102, %103
  br i1 %cmp113, label %if.then.115, label %if.end.117

if.then.115:                                      ; preds = %lor.lhs.false.109, %if.end.99
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call116 = call i32 @gs_closedevice(%struct.gx_device_s* %104) #5
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.115, %lor.lhs.false.109
  %105 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs118 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %105, i32 0, i32 42
  %map_cmyk_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs118, i32 0, i32 15
  %106 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color, align 8, !tbaa !50
  %cmp119 = icmp eq i64 (%struct.gx_device_s*, i16*)* %106, @cmyk_1bit_map_cmyk_color
  br i1 %cmp119, label %if.then.131, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.end.117
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs122 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %107, i32 0, i32 42
  %map_cmyk_color123 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs122, i32 0, i32 15
  %108 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color123, align 8, !tbaa !50
  %cmp124 = icmp eq i64 (%struct.gx_device_s*, i16*)* %108, @cmyk_8bit_map_cmyk_color
  br i1 %cmp124, label %if.then.131, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.121
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs127 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 42
  %map_cmyk_color128 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs127, i32 0, i32 15
  %110 = load i64 (%struct.gx_device_s*, i16*)*, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color128, align 8, !tbaa !50
  %cmp129 = icmp eq i64 (%struct.gx_device_s*, i16*)* %110, @bit_map_cmyk_color
  br i1 %cmp129, label %if.then.131, label %if.end.149

if.then.131:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false.121, %if.end.117
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info132 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %111, i32 0, i32 11
  %depth133 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info132, i32 0, i32 3
  %112 = load i16, i16* %depth133, align 2, !tbaa !34
  %conv134 = zext i16 %112 to i32
  %cmp135 = icmp eq i32 %conv134, 4
  br i1 %cmp135, label %cond.true.137, label %cond.false.138

cond.true.137:                                    ; preds = %if.then.131
  br label %cond.end.145

cond.false.138:                                   ; preds = %if.then.131
  %113 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info139 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %113, i32 0, i32 11
  %depth140 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info139, i32 0, i32 3
  %114 = load i16, i16* %depth140, align 2, !tbaa !34
  %conv141 = zext i16 %114 to i32
  %cmp142 = icmp eq i32 %conv141, 32
  %cond144 = select i1 %cmp142, i64 (%struct.gx_device_s*, i16*)* @cmyk_8bit_map_cmyk_color, i64 (%struct.gx_device_s*, i16*)* @bit_map_cmyk_color
  br label %cond.end.145

cond.end.145:                                     ; preds = %cond.false.138, %cond.true.137
  %cond146 = phi i64 (%struct.gx_device_s*, i16*)* [ @cmyk_1bit_map_cmyk_color, %cond.true.137 ], [ %cond144, %cond.false.138 ]
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %procs147 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %115, i32 0, i32 42
  %map_cmyk_color148 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs147, i32 0, i32 15
  store i64 (%struct.gx_device_s*, i16*)* %cond146, i64 (%struct.gx_device_s*, i16*)** %map_cmyk_color148, align 8, !tbaa !50
  br label %if.end.149

if.end.149:                                       ; preds = %cond.end.145, %lor.lhs.false.126
  %116 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  call void @set_linear_color_bits_mask_shift(%struct.gx_device_s* %116) #5
  %117 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %color_info150 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %117, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info150, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !51
  %118 = load i32, i32* %FirstLine, align 4, !tbaa !5
  %119 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %120 = bitcast %struct.gx_device_s* %119 to %struct.gx_device_bit_s*
  %FirstLine151 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %120, i32 0, i32 68
  store i32 %118, i32* %FirstLine151, align 4, !tbaa !28
  %121 = load i32, i32* %LastLine, align 4, !tbaa !5
  %122 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %123 = bitcast %struct.gx_device_s* %122 to %struct.gx_device_bit_s*
  %LastLine152 = getelementptr inbounds %struct.gx_device_bit_s, %struct.gx_device_bit_s* %123, i32 0, i32 69
  store i32 %121, i32* %LastLine152, align 4, !tbaa !31
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.149, %if.then.97, %if.then.78, %if.then.67, %if.then.56
  %124 = bitcast i32* %LastLine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #2
  %125 = bitcast i32* %FirstLine to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #2
  %126 = bitcast i8** %vname to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #2
  %127 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #2
  %128 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #2
  %129 = bitcast i32* %ecode to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #2
  %130 = bitcast i32* %v to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #2
  %131 = bitcast i32* %real_ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #2
  %132 = bitcast i32* %ncomps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #2
  %133 = bitcast %struct.gx_device_color_info_s* %save_info to i8*
  call void @llvm.lifetime.end(i64 720, i8* %133) #2
  %134 = load i32, i32* %retval
  ret i32 %134
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @sample_device_crd_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*, i8*) #0

declare i32 @param_write_int(%struct.gs_param_list_s*, i8*, i32*) #0

declare i32 @param_read_int(%struct.gs_param_list_s*, i8*, i32*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gs_closedevice(%struct.gx_device_s*) #0

declare i64 @cmyk_1bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

declare i64 @cmyk_8bit_map_cmyk_color(%struct.gx_device_s*, i16*) #0

; Function Attrs: nounwind uwtable
define internal i64 @bit_map_cmyk_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bpc = alloca i32, align 4
  %drop = alloca i32, align 4
  %color = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %2 = load i16, i16* %depth, align 2, !tbaa !34
  %conv = zext i16 %2 to i32
  %div = sdiv i32 %conv, 4
  store i32 %div, i32* %bpc, align 4, !tbaa !5
  %3 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load i32, i32* %bpc, align 4, !tbaa !5
  %conv1 = sext i32 %4 to i64
  %sub = sub i64 16, %conv1
  %conv2 = trunc i64 %sub to i32
  store i32 %conv2, i32* %drop, align 4, !tbaa !5
  %5 = bitcast i64* %color to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 0
  %7 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %conv3 = zext i16 %7 to i64
  %8 = load i32, i32* %drop, align 4, !tbaa !5
  %sh_prom = zext i32 %8 to i64
  %shr = lshr i64 %conv3, %sh_prom
  %9 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom4 = zext i32 %9 to i64
  %shl = shl i64 %shr, %sh_prom4
  %10 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %10, i64 1
  %11 = load i16, i16* %arrayidx5, align 2, !tbaa !36
  %conv6 = zext i16 %11 to i32
  %12 = load i32, i32* %drop, align 4, !tbaa !5
  %shr7 = ashr i32 %conv6, %12
  %conv8 = sext i32 %shr7 to i64
  %add = add i64 %shl, %conv8
  %13 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom9 = zext i32 %13 to i64
  %shl10 = shl i64 %add, %sh_prom9
  %14 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds i16, i16* %14, i64 2
  %15 = load i16, i16* %arrayidx11, align 2, !tbaa !36
  %conv12 = zext i16 %15 to i32
  %16 = load i32, i32* %drop, align 4, !tbaa !5
  %shr13 = ashr i32 %conv12, %16
  %conv14 = sext i32 %shr13 to i64
  %add15 = add i64 %shl10, %conv14
  %17 = load i32, i32* %bpc, align 4, !tbaa !5
  %sh_prom16 = zext i32 %17 to i64
  %shl17 = shl i64 %add15, %sh_prom16
  %18 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds i16, i16* %18, i64 3
  %19 = load i16, i16* %arrayidx18, align 2, !tbaa !36
  %conv19 = zext i16 %19 to i32
  %20 = load i32, i32* %drop, align 4, !tbaa !5
  %shr20 = ashr i32 %conv19, %20
  %conv21 = sext i32 %shr20 to i64
  %add22 = add i64 %shl17, %conv21
  store i64 %add22, i64* %color, align 8, !tbaa !26
  %21 = load i64, i64* %color, align 8, !tbaa !26
  %cmp = icmp eq i64 %21, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %22 = load i64, i64* %color, align 8, !tbaa !26
  %xor = xor i64 %22, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %23 = load i64, i64* %color, align 8, !tbaa !26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %xor, %cond.true ], [ %23, %cond.false ]
  %24 = bitcast i64* %color to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i32* %drop to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #2
  %26 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  ret i64 %cond
}

declare void @set_linear_color_bits_mask_shift(%struct.gx_device_s*) #0

declare i64 @gx_default_rgb_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i64 @bittag_rgb_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 2
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !36
  %conv = zext i16 %1 to i32
  %mul = mul i32 %conv, 65281
  %add = add i32 %mul, 8388608
  %shr = lshr i32 %add, 24
  %conv1 = trunc i32 %shr to i16
  %conv2 = zext i16 %conv1 to i32
  %2 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %2, i64 1
  %3 = load i16, i16* %arrayidx3, align 2, !tbaa !36
  %conv4 = zext i16 %3 to i32
  %mul5 = mul i32 %conv4, 65281
  %add6 = add i32 %mul5, 8388608
  %shr7 = lshr i32 %add6, 24
  %conv8 = trunc i32 %shr7 to i16
  %conv9 = zext i16 %conv8 to i32
  %shl = shl i32 %conv9, 8
  %add10 = add i32 %conv2, %shl
  %conv11 = zext i32 %add10 to i64
  %4 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds i16, i16* %4, i64 0
  %5 = load i16, i16* %arrayidx12, align 2, !tbaa !36
  %conv13 = zext i16 %5 to i32
  %mul14 = mul i32 %conv13, 65281
  %add15 = add i32 %mul14, 8388608
  %shr16 = lshr i32 %add15, 24
  %conv17 = trunc i32 %shr16 to i16
  %conv18 = zext i16 %conv17 to i64
  %shl19 = shl i64 %conv18, 16
  %add20 = add i64 %conv11, %shl19
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 40
  %7 = load i32, i32* %graphics_type_tag, align 4, !tbaa !52
  %and = and i32 %7, -129
  %conv21 = zext i32 %and to i64
  %shl22 = shl i64 %conv21, 24
  %add23 = add i64 %add20, %shl22
  ret i64 %add23
}

; Function Attrs: nounwind uwtable
define internal i32 @bittag_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %cv.addr = alloca i16*, align 8
  %depth = alloca i32, align 4
  %ncomp = alloca i32, align 4
  %bpc = alloca i32, align 4
  %mask = alloca i32, align 4
  %cshift = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !26
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 24, i32* %depth, align 4, !tbaa !5
  %1 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 3, i32* %ncomp, align 4, !tbaa !5
  %2 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load i32, i32* %depth, align 4, !tbaa !5
  %4 = load i32, i32* %ncomp, align 4, !tbaa !5
  %div = sdiv i32 %3, %4
  store i32 %div, i32* %bpc, align 4, !tbaa !5
  %5 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = load i32, i32* %bpc, align 4, !tbaa !5
  %shl = shl i32 1, %6
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %mask, align 4, !tbaa !5
  %7 = bitcast i64* %cshift to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i64, i64* %color.addr, align 8, !tbaa !26
  store i64 %8, i64* %cshift, align 8, !tbaa !26
  %9 = load i64, i64* %cshift, align 8, !tbaa !26
  %10 = load i32, i32* %mask, align 4, !tbaa !5
  %conv = zext i32 %10 to i64
  %and = and i64 %9, %conv
  %mul = mul i64 %and, 65535
  %11 = load i32, i32* %mask, align 4, !tbaa !5
  %conv1 = zext i32 %11 to i64
  %div2 = udiv i64 %mul, %conv1
  %conv3 = trunc i64 %div2 to i16
  %12 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %conv3, i16* %arrayidx, align 2, !tbaa !36
  %13 = load i32, i32* %bpc, align 4, !tbaa !5
  %14 = load i64, i64* %cshift, align 8, !tbaa !26
  %sh_prom = zext i32 %13 to i64
  %shr = lshr i64 %14, %sh_prom
  store i64 %shr, i64* %cshift, align 8, !tbaa !26
  %15 = load i64, i64* %cshift, align 8, !tbaa !26
  %16 = load i32, i32* %mask, align 4, !tbaa !5
  %conv4 = zext i32 %16 to i64
  %and5 = and i64 %15, %conv4
  %mul6 = mul i64 %and5, 65535
  %17 = load i32, i32* %mask, align 4, !tbaa !5
  %conv7 = zext i32 %17 to i64
  %div8 = udiv i64 %mul6, %conv7
  %conv9 = trunc i64 %div8 to i16
  %18 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %18, i64 1
  store i16 %conv9, i16* %arrayidx10, align 2, !tbaa !36
  %19 = load i32, i32* %bpc, align 4, !tbaa !5
  %20 = load i64, i64* %cshift, align 8, !tbaa !26
  %sh_prom11 = zext i32 %19 to i64
  %shr12 = lshr i64 %20, %sh_prom11
  store i64 %shr12, i64* %cshift, align 8, !tbaa !26
  %21 = load i64, i64* %cshift, align 8, !tbaa !26
  %22 = load i32, i32* %mask, align 4, !tbaa !5
  %conv13 = zext i32 %22 to i64
  %and14 = and i64 %21, %conv13
  %mul15 = mul i64 %and14, 65535
  %23 = load i32, i32* %mask, align 4, !tbaa !5
  %conv16 = zext i32 %23 to i64
  %div17 = udiv i64 %mul15, %conv16
  %conv18 = trunc i64 %div17 to i16
  %24 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i16, i16* %24, i64 0
  store i16 %conv18, i16* %arrayidx19, align 2, !tbaa !36
  %25 = bitcast i64* %cshift to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %26) #2
  %27 = bitcast i32* %bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %27) #2
  %28 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #2
  %29 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @bittag_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %graphics_type_tag = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i32 0, i32 40
  %1 = load i32, i32* %graphics_type_tag, align 4, !tbaa !52
  %or = or i32 %1, 128
  store i32 %or, i32* %graphics_type_tag, align 4, !tbaa !52
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_put_params(%struct.gx_device_s* %2, %struct.gs_param_list_s* %3) #5
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal %struct.gx_cm_color_map_procs_s* @bittag_get_color_mapping_procs(%struct.gx_device_s* %dev) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  ret %struct.gx_cm_color_map_procs_s* @bittag_DeviceRGB_procs
}

; Function Attrs: nounwind uwtable
define internal i32 @bit_put_image(%struct.gx_device_s* %pdev, i8* %buffer, i32 %num_chan, i32 %xstart, i32 %ystart, i32 %width, i32 %height, i32 %row_stride, i32 %plane_stride, i32 %alpha_plane_index, i32 %tag_plane_index) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %buffer.addr = alloca i8*, align 8
  %num_chan.addr = alloca i32, align 4
  %xstart.addr = alloca i32, align 4
  %ystart.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %row_stride.addr = alloca i32, align 4
  %plane_stride.addr = alloca i32, align 4
  %alpha_plane_index.addr = alloca i32, align 4
  %tag_plane_index.addr = alloca i32, align 4
  %pmemdev = alloca %struct.gx_device_memory_s*, align 8
  %buffer_prn = alloca i8*, align 8
  %yend = alloca i32, align 4
  %xend = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %src_position = alloca i32, align 4
  %des_position = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store i8* %buffer, i8** %buffer.addr, align 8, !tbaa !1
  store i32 %num_chan, i32* %num_chan.addr, align 4, !tbaa !5
  store i32 %xstart, i32* %xstart.addr, align 4, !tbaa !5
  store i32 %ystart, i32* %ystart.addr, align 4, !tbaa !5
  store i32 %width, i32* %width.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  store i32 %row_stride, i32* %row_stride.addr, align 4, !tbaa !5
  store i32 %plane_stride, i32* %plane_stride.addr, align 4, !tbaa !5
  store i32 %alpha_plane_index, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  store i32 %tag_plane_index, i32* %tag_plane_index.addr, align 4, !tbaa !5
  %0 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_memory_s*
  store %struct.gx_device_memory_s* %2, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %3 = bitcast i8** %buffer_prn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %yend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  %6 = load i32, i32* %height.addr, align 4, !tbaa !5
  %add = add nsw i32 %5, %6
  store i32 %add, i32* %yend, align 4, !tbaa !5
  %7 = bitcast i32* %xend to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  %9 = load i32, i32* %width.addr, align 4, !tbaa !5
  %add1 = add nsw i32 %8, %9
  store i32 %add1, i32* %xend, align 4, !tbaa !5
  %10 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = bitcast i32* %src_position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = bitcast i32* %des_position to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = load i32, i32* %alpha_plane_index.addr, align 4, !tbaa !5
  %cmp = icmp ne i32 %15, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %16, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.4:                                         ; preds = %if.end
  %17 = load i32, i32* %num_chan.addr, align 4, !tbaa !5
  %cmp5 = icmp ne i32 %17, 3
  br i1 %cmp5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %18 = load i32, i32* %tag_plane_index.addr, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %18, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %lor.lhs.false
  %19 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %base = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %19, i32 0, i32 45
  %20 = load i8*, i8** %base, align 8, !tbaa !53
  store i8* %20, i8** %buffer_prn, align 8, !tbaa !1
  %21 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  store i32 %21, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.end.8
  %22 = load i32, i32* %y, align 4, !tbaa !5
  %23 = load i32, i32* %yend, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %22, %23
  br i1 %cmp9, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %y, align 4, !tbaa !5
  %25 = load i32, i32* %ystart.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %24, %25
  %26 = load i32, i32* %row_stride.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %sub, %26
  store i32 %mul, i32* %src_position, align 4, !tbaa !5
  %27 = load i32, i32* %y, align 4, !tbaa !5
  %28 = load %struct.gx_device_memory_s*, %struct.gx_device_memory_s** %pmemdev, align 8, !tbaa !1
  %raster = getelementptr inbounds %struct.gx_device_memory_s, %struct.gx_device_memory_s* %28, i32 0, i32 44
  %29 = load i32, i32* %raster, align 4, !tbaa !64
  %mul10 = mul i32 %27, %29
  %30 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  %mul11 = mul nsw i32 %30, 4
  %add12 = add i32 %mul10, %mul11
  store i32 %add12, i32* %des_position, align 4, !tbaa !5
  %31 = load i32, i32* %xstart.addr, align 4, !tbaa !5
  store i32 %31, i32* %x, align 4, !tbaa !5
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.32, %for.body
  %32 = load i32, i32* %x, align 4, !tbaa !5
  %33 = load i32, i32* %xend, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %32, %33
  br i1 %cmp14, label %for.body.15, label %for.end.34

for.body.15:                                      ; preds = %for.cond.13
  %34 = load i32, i32* %src_position, align 4, !tbaa !5
  %35 = load i32, i32* %tag_plane_index.addr, align 4, !tbaa !5
  %36 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul16 = mul nsw i32 %35, %36
  %add17 = add nsw i32 %34, %mul16
  %idxprom = sext i32 %add17 to i64
  %37 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %37, i64 %idxprom
  %38 = load i8, i8* %arrayidx, align 1, !tbaa !27
  %39 = load i32, i32* %des_position, align 4, !tbaa !5
  %idxprom18 = sext i32 %39 to i64
  %40 = load i8*, i8** %buffer_prn, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds i8, i8* %40, i64 %idxprom18
  store i8 %38, i8* %arrayidx19, align 1, !tbaa !27
  %41 = load i32, i32* %des_position, align 4, !tbaa !5
  %add20 = add nsw i32 %41, 1
  store i32 %add20, i32* %des_position, align 4, !tbaa !5
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.15
  %42 = load i32, i32* %k, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %42, 3
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.21
  %43 = load i32, i32* %src_position, align 4, !tbaa !5
  %44 = load i32, i32* %k, align 4, !tbaa !5
  %45 = load i32, i32* %plane_stride.addr, align 4, !tbaa !5
  %mul24 = mul nsw i32 %44, %45
  %add25 = add nsw i32 %43, %mul24
  %idxprom26 = sext i32 %add25 to i64
  %46 = load i8*, i8** %buffer.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds i8, i8* %46, i64 %idxprom26
  %47 = load i8, i8* %arrayidx27, align 1, !tbaa !27
  %48 = load i32, i32* %des_position, align 4, !tbaa !5
  %idxprom28 = sext i32 %48 to i64
  %49 = load i8*, i8** %buffer_prn, align 8, !tbaa !1
  %arrayidx29 = getelementptr inbounds i8, i8* %49, i64 %idxprom28
  store i8 %47, i8* %arrayidx29, align 1, !tbaa !27
  %50 = load i32, i32* %des_position, align 4, !tbaa !5
  %add30 = add nsw i32 %50, 1
  store i32 %add30, i32* %des_position, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body.23
  %51 = load i32, i32* %k, align 4, !tbaa !5
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %k, align 4, !tbaa !5
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  %52 = load i32, i32* %src_position, align 4, !tbaa !5
  %add31 = add nsw i32 %52, 1
  store i32 %add31, i32* %src_position, align 4, !tbaa !5
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %53 = load i32, i32* %x, align 4, !tbaa !5
  %inc33 = add nsw i32 %53, 1
  store i32 %inc33, i32* %x, align 4, !tbaa !5
  br label %for.cond.13

for.end.34:                                       ; preds = %for.cond.13
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %54 = load i32, i32* %y, align 4, !tbaa !5
  %inc36 = add nsw i32 %54, 1
  store i32 %inc36, i32* %y, align 4, !tbaa !5
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %55 = load i32, i32* %height.addr, align 4, !tbaa !5
  store i32 %55, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.37, %if.then.7, %if.then.3, %if.then
  %56 = bitcast i32* %des_position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %src_position to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %xend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %yend to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i8** %buffer_prn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast %struct.gx_device_memory_s** %pmemdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define internal void @gray_cs_to_rgb_cm(%struct.gx_device_s* %dev, i16 signext %gray, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %gray.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %gray, i16* %gray.addr, align 2, !tbaa !36
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %gray.addr, align 2, !tbaa !36
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 2
  store i16 %0, i16* %arrayidx, align 2, !tbaa !36
  %2 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 %0, i16* %arrayidx1, align 2, !tbaa !36
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 0
  store i16 %0, i16* %arrayidx2, align 2, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @private_rgb_cs_to_rgb_cm(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, i16 signext %r, i16 signext %g, i16 signext %b, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %r.addr = alloca i16, align 2
  %g.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store i16 %r, i16* %r.addr, align 2, !tbaa !36
  store i16 %g, i16* %g.addr, align 2, !tbaa !36
  store i16 %b, i16* %b.addr, align 2, !tbaa !36
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %r.addr, align 2, !tbaa !36
  %1 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  store i16 %0, i16* %arrayidx, align 2, !tbaa !36
  %2 = load i16, i16* %g.addr, align 2, !tbaa !36
  %3 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %2, i16* %arrayidx1, align 2, !tbaa !36
  %4 = load i16, i16* %b.addr, align 2, !tbaa !36
  %5 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds i16, i16* %5, i64 2
  store i16 %4, i16* %arrayidx2, align 2, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmyk_cs_to_rgb_cm(%struct.gx_device_s* %dev, i16 signext %c, i16 signext %m, i16 signext %y, i16 signext %k, i16* %out) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %c.addr = alloca i16, align 2
  %m.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  %k.addr = alloca i16, align 2
  %out.addr = alloca i16*, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16 %c, i16* %c.addr, align 2, !tbaa !36
  store i16 %m, i16* %m.addr, align 2, !tbaa !36
  store i16 %y, i16* %y.addr, align 2, !tbaa !36
  store i16 %k, i16* %k.addr, align 2, !tbaa !36
  store i16* %out, i16** %out.addr, align 8, !tbaa !1
  %0 = load i16, i16* %c.addr, align 2, !tbaa !36
  %1 = load i16, i16* %m.addr, align 2, !tbaa !36
  %2 = load i16, i16* %y.addr, align 2, !tbaa !36
  %3 = load i16, i16* %k.addr, align 2, !tbaa !36
  %4 = load i16*, i16** %out.addr, align 8, !tbaa !1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !65
  call void @color_cmyk_to_rgb(i16 signext %0, i16 signext %1, i16 signext %2, i16 signext %3, %struct.gs_imager_state_s* null, i16* %4, %struct.gs_memory_s* %6) #5
  ret void
}

declare void @color_cmyk_to_rgb(i16 signext, i16 signext, i16 signext, i16 signext, %struct.gs_imager_state_s*, i16*, %struct.gs_memory_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @gdev_prn_get_bits(%struct.gx_device_printer_s*, i32, i8*, i8**) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #0

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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !2, i64 24}
!8 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888}
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
!23 = !{!24, !2, i64 64}
!24 = !{!"gs_memory_s", !2, i64 0, !25, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!25 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!26 = !{!10, !10, i64 0}
!27 = !{!3, !3, i64 0}
!28 = !{!29, !6, i64 18472}
!29 = !{!"gx_device_bit_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !3, i64 1728, !20, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !10, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !22, i64 17256, !6, i64 17288, !2, i64 17296, !19, i64 17304, !19, i64 17888, !6, i64 18472, !6, i64 18476}
!30 = !{!8, !6, i64 836}
!31 = !{!29, !6, i64 18476}
!32 = !{!24, !2, i64 24}
!33 = !{!8, !6, i64 832}
!34 = !{!35, !12, i64 108}
!35 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!36 = !{!12, !12, i64 0}
!37 = !{!35, !2, i64 16}
!38 = !{!35, !6, i64 100}
!39 = !{!40, !2, i64 0}
!40 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !6, i64 16}
!41 = !{!42, !2, i64 56}
!42 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!43 = !{i64 0, i64 4, !5, i64 4, i64 4, !5, i64 8, i64 4, !27, i64 12, i64 2, !36, i64 14, i64 1, !27, i64 16, i64 4, !5, i64 20, i64 4, !5, i64 24, i64 4, !5, i64 28, i64 4, !5, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !27, i64 44, i64 64, !27, i64 108, i64 64, !27, i64 176, i64 512, !27, i64 688, i64 8, !1, i64 696, i64 4, !27, i64 704, i64 8, !26, i64 712, i64 4, !5}
!44 = !{!35, !6, i64 124}
!45 = !{!35, !6, i64 120}
!46 = !{!35, !6, i64 116}
!47 = !{!35, !6, i64 112}
!48 = !{!11, !12, i64 12}
!49 = !{!11, !6, i64 4}
!50 = !{!35, !2, i64 1264}
!51 = !{!35, !3, i64 136}
!52 = !{!35, !3, i64 1112}
!53 = !{!54, !2, i64 1744}
!54 = !{!"gx_device_memory_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !9, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !14, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !6, i64 1052, !6, i64 1056, !16, i64 1064, !2, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144, !2, i64 1728, !6, i64 1736, !2, i64 1744, !2, i64 1752, !6, i64 1760, !2, i64 1768, !6, i64 1776, !3, i64 1780, !55, i64 2548, !2, i64 2576, !57, i64 2584, !58, i64 2600, !59, i64 2624, !60, i64 2656, !61, i64 2680, !62, i64 2720, !63, i64 2736, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !10, i64 2768, !2, i64 2776, !6, i64 2784, !6, i64 2788}
!55 = !{!"gs_matrix_s", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !56, i64 20}
!56 = !{!"float", !3, i64 0}
!57 = !{!"gs_const_string_s", !2, i64 0, !6, i64 8}
!58 = !{!"_c24", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!59 = !{!"_c40", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!60 = !{!"_c48", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!61 = !{!"_c56", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!62 = !{!"_c64", !10, i64 0, !6, i64 8, !6, i64 12}
!63 = !{!"gs_log2_scale_point_s", !6, i64 0, !6, i64 4}
!64 = !{!54, !6, i64 1736}
!65 = !{!35, !2, i64 24}
