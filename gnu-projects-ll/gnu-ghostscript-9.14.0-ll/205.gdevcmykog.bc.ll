; ModuleID = './gdevcmykog.bc'
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
%struct.gs_cie_render_s = type opaque
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
%struct.gx_cie_joint_caches_s = type opaque
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
%struct.compressed_color_list_s = type { %struct.gs_memory_s*, i32, i32, i32, %union.anon.2 }
%union.anon.2 = type { [256 x %struct.comp_bit_map_list_s] }
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
%struct.gx_device_cmykog_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s }
%struct.cmykog_process_arg_s = type { [64 x %struct._IO_FILE*], [64 x [4096 x i8]], i32 }
%struct.psd_write_ctx = type { %struct._IO_FILE*, i32, i32, i32, i32, i32, [64 x i32], [64 x i32], i32 }
%struct.gx_devn_prn_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s }
%struct.gs_param_string_array_s = type { %struct.gs_param_string_s*, i32, i32 }
%struct.cmykog_process_buffer_s = type { i32, i32, %struct.gs_get_bits_params_s, %struct.gx_colors_usage_s }

@.str = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Artifex Orange\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Artifex Green\00", align 1
@DevCMYKOGComponents = global [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@cmykog_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @cmykog_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* @gx_default_get_initial_matrix, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @cmykog_close, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gx_devn_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @cmykog_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* @gx_devn_prn_get_color_mapping_procs, i32 (%struct.gx_device_s*, i8*, i32, i32)* @cmykog_get_color_comp_index, i64 (%struct.gx_device_s*, i16*)* @gx_devn_prn_encode_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_devn_prn_decode_color, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* @gx_devn_prn_ret_devn_params, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @cmykog_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* null, void (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"psdcmykog\00", align 1
@st_cmykog_device = internal constant %struct.gs_memory_struct_type_s { i32 21648, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cmykog_device_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @cmykog_device_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* @cmykog_device_finalize, i8* null }, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"DeviceCMYK\00", align 1
@gs_psdcmykog_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s, %struct.gs_devn_params_s, %struct.equivalent_cmyk_color_params_s } { i32 21648, %struct.gx_device_procs_s* @cmykog_procs, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_cmykog_device, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 6, i32 6, i32 0, i16 48, i8 0, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @cmykog_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer, %struct.gs_devn_params_s { i32 8, i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @DevCMYKOGComponents, i32 0, i32 0), i32 4, i32 6, i32 -1, %struct.gs_separations_s zeroinitializer, i32 0, [70 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.compressed_color_list_s* null, %struct.compressed_color_list_s* null, %struct.gs_separations_s zeroinitializer }, %struct.equivalent_cmyk_color_params_s zeroinitializer }, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"SeparationOrder\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gx_device_cmykog\00", align 1
@st_gx_devn_prn_device = external constant %struct.gs_memory_struct_type_s, align 8
@gp_scratch_file_name_prefix = external constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"cmykog_init_buffer\00", align 1
@empty = internal constant [64 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %pdevn = alloca %struct.gx_device_cmykog_s*, align 8
  %ncomp = alloca i32, align 4
  %arg = alloca %struct.cmykog_process_arg_s, align 8
  %options = alloca %struct.gx_process_page_options_s, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %psd_ctx = alloca %struct.psd_write_ctx, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca [4096 x i8], align 16
  %n = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cmykog_s** %pdevn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_printer_s* %1 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %2, %struct.gx_device_cmykog_s** %pdevn, align 8, !tbaa !1
  %3 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %pdevn, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %4, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %5 = load i32, i32* %num_components, align 4, !tbaa !5
  store i32 %5, i32* %ncomp, align 4, !tbaa !25
  %6 = bitcast %struct.cmykog_process_arg_s* %arg to i8*
  call void @llvm.lifetime.start(i64 262664, i8* %6) #2
  %7 = bitcast %struct.cmykog_process_arg_s* %arg to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 262664, i32 8, i1 false)
  %8 = bitcast %struct.gx_process_page_options_s* %options to i8*
  call void @llvm.lifetime.start(i64 48, i8* %8) #2
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast %struct.psd_write_ctx* %psd_ctx to i8*
  call void @llvm.lifetime.start(i64 544, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_printer_s* %12 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster_plane(%struct.gx_device_s* %13, %struct.gx_render_plane_s* null) #7
  %dev_raster = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 2
  store i32 %call, i32* %dev_raster, align 4, !tbaa !26
  %14 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %pdevn, align 8, !tbaa !1
  %15 = bitcast %struct.gx_device_cmykog_s* %14 to %struct.gx_devn_prn_device_s*
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %17 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %17, i32 0, i32 13
  %18 = load i32, i32* %width, align 4, !tbaa !28
  %shr = ashr i32 %18, 1
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 14
  %20 = load i32, i32* %height, align 4, !tbaa !30
  %shr1 = ashr i32 %20, 1
  %call2 = call i32 @psd_setup(%struct.psd_write_ctx* %psd_ctx, %struct.gx_devn_prn_device_s* %15, %struct._IO_FILE* %16, i32 %shr, i32 %shr1) #7
  store i32 %call2, i32* %code, align 4, !tbaa !25
  %21 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %22 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %22, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %23 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %pdevn, align 8, !tbaa !1
  %24 = bitcast %struct.gx_device_cmykog_s* %23 to %struct.gx_devn_prn_device_s*
  %call3 = call i32 @psd_write_header(%struct.psd_write_ctx* %psd_ctx, %struct.gx_devn_prn_device_s* %24) #7
  store i32 %call3, i32* %code, align 4, !tbaa !25
  %25 = load i32, i32* %code, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %25, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %26 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %26, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %spot_file = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 0
  store %struct._IO_FILE* %27, %struct._IO_FILE** %arrayidx, align 8, !tbaa !1
  store i32 1, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %28 = load i32, i32* %i, align 4, !tbaa !25
  %29 = load i32, i32* %ncomp, align 4, !tbaa !25
  %cmp7 = icmp slt i32 %28, %29
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 3
  %31 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !31
  %32 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %32 to i64
  %spot_name = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [64 x [4096 x i8]], [64 x [4096 x i8]]* %spot_name, i32 0, i64 %idxprom
  %arrayidx9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %arrayidx8, i32 0, i64 0
  %call10 = call %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s* %31, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @gp_scratch_file_name_prefix, i32 0, i32 0), i8* %arrayidx9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)) #7
  %33 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom11 = sext i32 %33 to i64
  %spot_file12 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file12, i32 0, i64 %idxprom11
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %arrayidx13, align 8, !tbaa !1
  %34 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom14 = sext i32 %34 to i64
  %spot_file15 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file15, i32 0, i64 %idxprom14
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx16, align 8, !tbaa !1
  %cmp17 = icmp eq %struct._IO_FILE* %35, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  store i32 -9, i32* %code, align 4, !tbaa !25
  br label %prn_done

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %36 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %options, i32 0, i32 0
  store i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* @cmykog_init_buffer, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !32
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %options, i32 0, i32 1
  store void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* @cmykog_free_buffer, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !34
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %options, i32 0, i32 2
  store i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* @cmykog_process, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !35
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %options, i32 0, i32 3
  store i32 (i8*, %struct.gx_device_s*, i8*)* @cmykog_output, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !36
  %37 = bitcast %struct.cmykog_process_arg_s* %arg to i8*
  %arg20 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %options, i32 0, i32 4
  store i8* %37, i8** %arg20, align 8, !tbaa !37
  %options21 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %options, i32 0, i32 5
  store i32 0, i32* %options21, align 4, !tbaa !38
  %38 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %38, i32 0, i32 42
  %process_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 72
  %39 = load i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)** %process_page, align 8, !tbaa !39
  %40 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %41 = bitcast %struct.gx_device_printer_s* %40 to %struct.gx_device_s*
  %call22 = call i32 %39(%struct.gx_device_s* %41, %struct.gx_process_page_options_s* %options) #7
  store i32 %call22, i32* %code, align 4, !tbaa !25
  store i32 1, i32* %i, align 4, !tbaa !25
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.42, %for.end
  %42 = load i32, i32* %i, align 4, !tbaa !25
  %43 = load i32, i32* %ncomp, align 4, !tbaa !25
  %cmp24 = icmp slt i32 %42, %43
  br i1 %cmp24, label %for.body.25, label %for.end.44

for.body.25:                                      ; preds = %for.cond.23
  %44 = bitcast [4096 x i8]* %tmp to i8*
  call void @llvm.lifetime.start(i64 4096, i8* %44) #2
  %45 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #2
  %46 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom27 = sext i32 %46 to i64
  %spot_file28 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file28, i32 0, i64 %idxprom27
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx29, align 8, !tbaa !1
  %call30 = call i32 @fseek(%struct._IO_FILE* %47, i64 0, i32 0) #7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.25
  %48 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom31 = sext i32 %48 to i64
  %spot_file32 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file32, i32 0, i64 %idxprom31
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx33, align 8, !tbaa !1
  %call34 = call i32 @feof(%struct._IO_FILE* %49) #8
  %tobool = icmp ne i32 %call34, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmp, i32 0, i32 0
  %50 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom35 = sext i32 %50 to i64
  %spot_file36 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file36, i32 0, i64 %idxprom35
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx37, align 8, !tbaa !1
  %call38 = call i64 @fread(i8* %arraydecay, i64 1, i64 4096, %struct._IO_FILE* %51) #7
  %conv = trunc i64 %call38 to i32
  store i32 %conv, i32* %n, align 4, !tbaa !25
  %arraydecay39 = getelementptr inbounds [4096 x i8], [4096 x i8]* %tmp, i32 0, i32 0
  %52 = load i32, i32* %n, align 4, !tbaa !25
  %conv40 = sext i32 %52 to i64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call41 = call i64 @fwrite(i8* %arraydecay39, i64 1, i64 %conv40, %struct._IO_FILE* %53) #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #2
  %55 = bitcast [4096 x i8]* %tmp to i8*
  call void @llvm.lifetime.end(i64 4096, i8* %55) #2
  br label %for.inc.42

for.inc.42:                                       ; preds = %while.end
  %56 = load i32, i32* %i, align 4, !tbaa !25
  %inc43 = add nsw i32 %56, 1
  store i32 %inc43, i32* %i, align 4, !tbaa !25
  br label %for.cond.23

for.end.44:                                       ; preds = %for.cond.23
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.54, %for.end.44
  %57 = load i32, i32* %i, align 4, !tbaa !25
  %58 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %color_info46 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %58, i32 0, i32 11
  %max_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info46, i32 0, i32 0
  %59 = load i32, i32* %max_components, align 4, !tbaa !40
  %cmp47 = icmp slt i32 %57, %59
  br i1 %cmp47, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.45
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %61 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %width50 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %61, i32 0, i32 13
  %62 = load i32, i32* %width50, align 4, !tbaa !28
  %shr51 = ashr i32 %62, 1
  %63 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %height52 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %63, i32 0, i32 14
  %64 = load i32, i32* %height52, align 4, !tbaa !30
  %shr53 = ashr i32 %64, 1
  call void @write_empty_plane(%struct._IO_FILE* %60, i32 %shr51, i32 %shr53) #7
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %65 = load i32, i32* %i, align 4, !tbaa !25
  %inc55 = add nsw i32 %65, 1
  store i32 %inc55, i32* %i, align 4, !tbaa !25
  br label %for.cond.45

for.end.56:                                       ; preds = %for.cond.45
  br label %prn_done

prn_done:                                         ; preds = %for.end.56, %if.then.18
  store i32 1, i32* %i, align 4, !tbaa !25
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.84, %prn_done
  %66 = load i32, i32* %i, align 4, !tbaa !25
  %67 = load i32, i32* %ncomp, align 4, !tbaa !25
  %cmp58 = icmp slt i32 %66, %67
  br i1 %cmp58, label %for.body.60, label %for.end.86

for.body.60:                                      ; preds = %for.cond.57
  %68 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom61 = sext i32 %68 to i64
  %spot_file62 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file62, i32 0, i64 %idxprom61
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx63, align 8, !tbaa !1
  %cmp64 = icmp ne %struct._IO_FILE* %69, null
  br i1 %cmp64, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %for.body.60
  %70 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom67 = sext i32 %70 to i64
  %spot_file68 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 0
  %arrayidx69 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file68, i32 0, i64 %idxprom67
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx69, align 8, !tbaa !1
  %call70 = call i32 @fclose(%struct._IO_FILE* %71) #7
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %for.body.60
  %72 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom72 = sext i32 %72 to i64
  %spot_name73 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [64 x [4096 x i8]], [64 x [4096 x i8]]* %spot_name73, i32 0, i64 %idxprom72
  %arrayidx75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %arrayidx74, i32 0, i64 0
  %73 = load i8, i8* %arrayidx75, align 1, !tbaa !41
  %tobool76 = icmp ne i8 %73, 0
  br i1 %tobool76, label %if.then.77, label %if.end.83

if.then.77:                                       ; preds = %if.end.71
  %74 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom78 = sext i32 %74 to i64
  %spot_name79 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %arg, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [64 x [4096 x i8]], [64 x [4096 x i8]]* %spot_name79, i32 0, i64 %idxprom78
  %arraydecay81 = getelementptr inbounds [4096 x i8], [4096 x i8]* %arrayidx80, i32 0, i32 0
  %call82 = call i32 @unlink(i8* %arraydecay81) #7
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.77, %if.end.71
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %75 = load i32, i32* %i, align 4, !tbaa !25
  %inc85 = add nsw i32 %75, 1
  store i32 %inc85, i32* %i, align 4, !tbaa !25
  br label %for.cond.57

for.end.86:                                       ; preds = %for.cond.57
  %76 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.86, %if.then.5, %if.then
  %77 = bitcast %struct.psd_write_ctx* %psd_ctx to i8*
  call void @llvm.lifetime.end(i64 544, i8* %77) #2
  %78 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %78) #2
  %79 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %79) #2
  %80 = bitcast %struct.gx_process_page_options_s* %options to i8*
  call void @llvm.lifetime.end(i64 48, i8* %80) #2
  %81 = bitcast %struct.cmykog_process_arg_s* %arg to i8*
  call void @llvm.lifetime.end(i64 262664, i8* %81) #2
  %82 = bitcast i32* %ncomp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #2
  %83 = bitcast %struct.gx_device_cmykog_s** %pdevn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %83) #2
  %84 = load i32, i32* %retval
  ret i32 %84
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
define internal i32 @cmykog_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %dev = alloca %struct.gx_device_cmykog_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cmykog_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %2, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %3 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %3, i32 0, i32 11
  %separable_and_linear = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 10
  store i32 1, i32* %separable_and_linear, align 4, !tbaa !42
  %4 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %icc_struct = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %4, i32 0, i32 39
  %5 = load %struct.cmm_dev_profile_s*, %struct.cmm_dev_profile_s** %icc_struct, align 8, !tbaa !43
  %supports_devn = getelementptr inbounds %struct.cmm_dev_profile_s, %struct.cmm_dev_profile_s* %5, i32 0, i32 9
  store i32 1, i32* %supports_devn, align 4, !tbaa !44
  %6 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %pad = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %6, i32 0, i32 15
  store i32 0, i32* %pad, align 4, !tbaa !46
  %7 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %log2_align_mod = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %7, i32 0, i32 16
  store i32 5, i32* %log2_align_mod, align 4, !tbaa !47
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_planar(%struct.gx_device_s* %8, i32 1) #7
  %9 = bitcast %struct.gx_device_cmykog_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %call
}

declare void @gx_default_get_initial_matrix(%struct.gx_device_s*, %struct.gs_matrix_s*) #0

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_close(%struct.gx_device_s* %0) #7
  ret i32 %call
}

declare i32 @gx_devn_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_put_params(%struct.gx_device_s* %pdev, %struct.gs_param_list_s* %plist) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %plist.addr = alloca %struct.gs_param_list_s*, align 8
  %code = alloca i32, align 4
  %sona = alloca %struct.gs_param_string_array_s, align 8
  %param_name = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  store %struct.gs_param_list_s* %plist, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gs_param_string_array_s* %sona to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #2
  %2 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %data = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data, align 8, !tbaa !48
  %3 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8** %param_name, align 8, !tbaa !1
  %call = call i32 @param_read_name_array(%struct.gs_param_list_s* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.gs_param_string_array_s* %sona) #7
  store i32 %call, i32* %code, align 4, !tbaa !25
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %4, i32 0, i32 0
  %5 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs, align 8, !tbaa !50
  %signal_error = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %5, i32 0, i32 7
  %6 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error, align 8, !tbaa !52
  %7 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %param_name, align 8, !tbaa !1
  %9 = load i32, i32* %code, align 4, !tbaa !25
  %call1 = call i32 %6(%struct.gs_param_list_s* %7, i8* %8, i32 %9) #7
  %10 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %data2 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  store %struct.gs_param_string_s* null, %struct.gs_param_string_s** %data2, align 8, !tbaa !48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry
  %data3 = getelementptr inbounds %struct.gs_param_string_array_s, %struct.gs_param_string_array_s* %sona, i32 0, i32 0
  %11 = load %struct.gs_param_string_s*, %struct.gs_param_string_s** %data3, align 8, !tbaa !48
  %cmp = icmp ne %struct.gs_param_string_s* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %12 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %procs4 = getelementptr inbounds %struct.gs_param_list_s, %struct.gs_param_list_s* %12, i32 0, i32 0
  %13 = load %struct.gs_param_list_procs_s*, %struct.gs_param_list_procs_s** %procs4, align 8, !tbaa !50
  %signal_error5 = getelementptr inbounds %struct.gs_param_list_procs_s, %struct.gs_param_list_procs_s* %13, i32 0, i32 7
  %14 = load i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*, i8*, i32)** %signal_error5, align 8, !tbaa !52
  %15 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call6 = call i32 %14(%struct.gs_param_list_s* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i32 -21) #7
  store i32 -21, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %17 = load %struct.gs_param_list_s*, %struct.gs_param_list_s** %plist.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_devn_prn_put_params(%struct.gx_device_s* %16, %struct.gs_param_list_s* %17) #7
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %sw.default
  %18 = bitcast i8** %param_name to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #2
  %19 = bitcast %struct.gs_param_string_array_s* %sona to i8*
  call void @llvm.lifetime.end(i64 16, i8* %19) #2
  %20 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %20) #2
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare %struct.gx_cm_color_map_procs_s* @gx_devn_prn_get_color_mapping_procs(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_get_color_comp_index(%struct.gx_device_s* %dev, i8* %pname, i32 %name_size, i32 %component_type) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pname.addr = alloca i8*, align 8
  %name_size.addr = alloca i32, align 4
  %component_type.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %pdev = alloca %struct.gx_device_cmykog_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i8* %pname, i8** %pname.addr, align 8, !tbaa !1
  store i32 %name_size, i32* %name_size.addr, align 4, !tbaa !25
  store i32 %component_type, i32* %component_type.addr, align 4, !tbaa !25
  %0 = bitcast i32* %index to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast %struct.gx_device_cmykog_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s* %2 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %3, %struct.gx_device_cmykog_s** %pdev, align 8, !tbaa !1
  %4 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %5 = load i32, i32* %name_size.addr, align 4, !tbaa !25
  %conv = sext i32 %5 to i64
  %call = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 %conv) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %7 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %pdev, align 8, !tbaa !1
  %devn_params = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %7, i32 0, i32 68
  %8 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %pdev, align 8, !tbaa !1
  %equiv_cmyk_colors = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %8, i32 0, i32 69
  %9 = load i8*, i8** %pname.addr, align 8, !tbaa !1
  %10 = load i32, i32* %name_size.addr, align 4, !tbaa !25
  %11 = load i32, i32* %component_type.addr, align 4, !tbaa !25
  %call2 = call i32 @devn_get_color_comp_index(%struct.gx_device_s* %6, %struct.gs_devn_params_s* %devn_params, %struct.equivalent_cmyk_color_params_s* %equiv_cmyk_colors, i8* %9, i32 %10, i32 %11, i32 0) #7
  store i32 %call2, i32* %index, align 4, !tbaa !25
  %12 = load i32, i32* %index, align 4, !tbaa !25
  store i32 %12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast %struct.gx_device_cmykog_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  %14 = bitcast i32* %index to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i64 @gx_devn_prn_encode_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_devn_prn_decode_color(%struct.gx_device_s*, i64, i16*) #0

declare %struct.gs_devn_params_s* @gx_devn_prn_ret_devn_params(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_dev_spec_op(%struct.gx_device_s* %dev_, i32 %op, i8* %data, i32 %datasize) #1 {
entry:
  %retval = alloca i32, align 4
  %dev_.addr = alloca %struct.gx_device_s*, align 8
  %op.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %datasize.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev_, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  store i32 %op, i32* %op.addr, align 4, !tbaa !25
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %datasize, i32* %datasize.addr, align 4, !tbaa !25
  %0 = load i32, i32* %op.addr, align 4, !tbaa !25
  %cmp = icmp eq i32 %0, 19
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %datasize.addr, align 4, !tbaa !25
  %and = and i32 %1, -2
  store i32 %and, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  %3 = load i32, i32* %op.addr, align 4, !tbaa !25
  %4 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %5 = load i32, i32* %datasize.addr, align 4, !tbaa !25
  %call = call i32 @gx_default_dev_spec_op(%struct.gx_device_s* %2, i32 %3, i8* %4, i32 %5) #7
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_planar(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @param_read_name_array(%struct.gs_param_list_s*, i8*, %struct.gs_param_string_array_s*) #0

declare i32 @gx_devn_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @devn_get_color_comp_index(%struct.gx_device_s*, %struct.gs_devn_params_s*, %struct.equivalent_cmyk_color_params_s*, i8*, i32, i32, i32) #0

declare i32 @gx_default_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @cmykog_device_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_device_cmykog_s*, align 8
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !25
  store i32 %index, i32* %index.addr, align 4, !tbaa !25
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cmykog_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %2, %struct.gx_device_cmykog_s** %pdev, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !25
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  %4 = load %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, i32 0, i32 4), align 8, !tbaa !54
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %7 = load i32, i32* %size.addr, align 4, !tbaa !25
  %8 = load i32, i32* %index.addr, align 4, !tbaa !25
  %sub = sub nsw i32 %8, 0
  %9 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %10 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gs_ptr_procs_s* %4(%struct.gs_memory_s* %5, i8* %6, i32 %7, i32 %sub, %struct.enum_ptr_s* %9, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, %struct.gc_state_s* %10) #7
  %11 = bitcast %struct.gx_device_cmykog_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  ret %struct.gs_ptr_procs_s* %call
}

; Function Attrs: nounwind uwtable
define internal void @cmykog_device_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #1 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %pdev = alloca %struct.gx_device_cmykog_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !25
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_cmykog_s** %pdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %2, %struct.gx_device_cmykog_s** %pdev, align 8, !tbaa !1
  %3 = load void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)** getelementptr inbounds (%struct.gs_memory_struct_type_s, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, i32 0, i32 5), align 8, !tbaa !56
  %4 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %5 = load i32, i32* %size.addr, align 4, !tbaa !25
  %6 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  call void %3(i8* %4, i32 %5, %struct.gs_memory_struct_type_s* @st_gx_devn_prn_device, %struct.gc_state_s* %6) #7
  %7 = bitcast %struct.gx_device_cmykog_s** %pdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cmykog_device_finalize(%struct.gs_memory_s* %cmem, i8* %vpdev) #1 {
entry:
  %cmem.addr = alloca %struct.gs_memory_s*, align 8
  %vpdev.addr = alloca i8*, align 8
  store %struct.gs_memory_s* %cmem, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  store i8* %vpdev, i8** %vpdev.addr, align 8, !tbaa !1
  %0 = load %struct.gs_memory_s*, %struct.gs_memory_s** %cmem.addr, align 8, !tbaa !1
  %1 = load i8*, i8** %vpdev.addr, align 8, !tbaa !1
  call void @gx_devn_prn_device_finalize(%struct.gs_memory_s* %0, i8* %1) #7
  ret void
}

declare void @gx_devn_prn_device_finalize(%struct.gs_memory_s*, i8*) #0

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @gx_device_raster_plane(%struct.gx_device_s*, %struct.gx_render_plane_s*) #0

declare i32 @psd_setup(%struct.psd_write_ctx*, %struct.gx_devn_prn_device_s*, %struct._IO_FILE*, i32, i32) #0

declare i32 @psd_write_header(%struct.psd_write_ctx*, %struct.gx_devn_prn_device_s*) #0

declare %struct._IO_FILE* @gp_open_scratch_file(%struct.gs_memory_s*, i8*, i8*, i8*) #0

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_init_buffer(i8* %arg_, %struct.gx_device_s* %dev_, %struct.gs_memory_s* %memory, i32 %w, i32 %h, i8** %bufferp) #1 {
entry:
  %retval = alloca i32, align 4
  %arg_.addr = alloca i8*, align 8
  %dev_.addr = alloca %struct.gx_device_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %bufferp.addr = alloca i8**, align 8
  %buffer = alloca %struct.cmykog_process_buffer_s*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !25
  store i32 %h, i32* %h.addr, align 4, !tbaa !25
  store i8** %bufferp, i8*** %bufferp.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8**, i8*** %bufferp.addr, align 8, !tbaa !1
  store i8* null, i8** %1, align 8, !tbaa !1
  %2 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %2, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %3 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !57
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %call = call i8* %3(%struct.gs_memory_s* %4, i32 576, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  %5 = bitcast i8* %call to %struct.cmykog_process_buffer_s*
  store %struct.cmykog_process_buffer_s* %5, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %6 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmykog_process_buffer_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %8 = bitcast %struct.cmykog_process_buffer_s* %7 to i8*
  %call1 = call i8* @memset(i8* %8, i32 0, i64 576) #8
  %9 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %10 = bitcast %struct.cmykog_process_buffer_s* %9 to i8*
  %11 = load i8**, i8*** %bufferp.addr, align 8, !tbaa !1
  store i8* %10, i8** %11, align 8, !tbaa !1
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @cmykog_free_buffer(i8* %arg_, %struct.gx_device_s* %dev_, %struct.gs_memory_s* %memory, i8* %buffer_) #1 {
entry:
  %arg_.addr = alloca i8*, align 8
  %dev_.addr = alloca %struct.gx_device_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %buffer = alloca %struct.cmykog_process_buffer_s*, align 8
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %buffer_.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmykog_process_buffer_s*
  store %struct.cmykog_process_buffer_s* %2, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %3 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmykog_process_buffer_s* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %4, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %5 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !60
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %7 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %8 = bitcast %struct.cmykog_process_buffer_s* %7 to i8*
  call void %5(%struct.gs_memory_s* %6, i8* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_process(i8* %arg_, %struct.gx_device_s* %dev_, %struct.gx_device_s* %bdev, %struct.gs_int_rect_s* %rect, i8* %buffer_) #1 {
entry:
  %retval = alloca i32, align 4
  %arg_.addr = alloca i8*, align 8
  %dev_.addr = alloca %struct.gx_device_s*, align 8
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_int_rect_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %arg = alloca %struct.cmykog_process_arg_s*, align 8
  %dev = alloca %struct.gx_device_cmykog_s*, align 8
  %buffer = alloca %struct.cmykog_process_buffer_s*, align 8
  %code = alloca i32, align 4
  %ignore_start = alloca i32, align 4
  %i = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %my_rect = alloca %struct.gs_int_rect_s, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %rect, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmykog_process_arg_s** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %arg_.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmykog_process_arg_s*
  store %struct.cmykog_process_arg_s* %2, %struct.cmykog_process_arg_s** %arg, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_cmykog_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %5, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %buffer_.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.cmykog_process_buffer_s*
  store %struct.cmykog_process_buffer_s* %8, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %9 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %ignore_start to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #2
  %13 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %13, i32 0, i32 1
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %14 = load i32, i32* %x, align 4, !tbaa !61
  %15 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %15, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  %16 = load i32, i32* %x1, align 4, !tbaa !64
  %sub = sub nsw i32 %14, %16
  store i32 %sub, i32* %w, align 4, !tbaa !25
  %17 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #2
  %18 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %q2 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %18, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q2, i32 0, i32 1
  %19 = load i32, i32* %y, align 4, !tbaa !65
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %20, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 1
  %21 = load i32, i32* %y4, align 4, !tbaa !66
  %sub5 = sub nsw i32 %19, %21
  store i32 %sub5, i32* %h, align 4, !tbaa !25
  %22 = bitcast %struct.gs_int_rect_s* %my_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %22) #2
  %23 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %23, i32 0, i32 2
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 1101135889, i64* %options, align 8, !tbaa !67
  %p6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 0
  %x7 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p6, i32 0, i32 0
  store i32 0, i32* %x7, align 4, !tbaa !64
  %p8 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p8, i32 0, i32 1
  store i32 0, i32* %y9, align 4, !tbaa !66
  %24 = load i32, i32* %w, align 4, !tbaa !25
  %q10 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 1
  %x11 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q10, i32 0, i32 0
  store i32 %24, i32* %x11, align 4, !tbaa !61
  %25 = load i32, i32* %h, align 4, !tbaa !25
  %q12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %my_rect, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q12, i32 0, i32 1
  store i32 %25, i32* %y13, align 4, !tbaa !65
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %26, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %27 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !71
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !1
  %29 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %params14 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %29, i32 0, i32 2
  %call = call i32 %27(%struct.gx_device_s* %28, %struct.gs_int_rect_s* %my_rect, %struct.gs_get_bits_params_s* %params14, %struct.gs_int_rect_s** null) #7
  store i32 %call, i32* %code, align 4, !tbaa !25
  %30 = load i32, i32* %code, align 4, !tbaa !25
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %31 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %31, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %32 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %33 = bitcast %struct.gx_device_cmykog_s* %32 to %struct.gx_device_s*
  %34 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !1
  %p15 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %34, i32 0, i32 0
  %y16 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p15, i32 0, i32 1
  %35 = load i32, i32* %y16, align 4, !tbaa !66
  %36 = load i32, i32* %h, align 4, !tbaa !25
  %37 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %color_usage = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %37, i32 0, i32 3
  %call17 = call i32 @gdev_prn_color_usage(%struct.gx_device_s* %33, i32 %35, i32 %36, %struct.gx_colors_usage_s* %color_usage, i32* %ignore_start) #7
  %38 = load i32, i32* %w, align 4, !tbaa !25
  %and = and i32 %38, -2
  store i32 %and, i32* %w, align 4, !tbaa !25
  %39 = load i32, i32* %h, align 4, !tbaa !25
  %and18 = and i32 %39, -2
  store i32 %and18, i32* %h, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i32, i32* %i, align 4, !tbaa !25
  %41 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %41, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %42 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %40, %42
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %color_usage20 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %43, i32 0, i32 3
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage20, i32 0, i32 0
  %44 = load i64, i64* %or, align 8, !tbaa !73
  %45 = load i32, i32* %i, align 4, !tbaa !25
  %sh_prom = zext i32 %45 to i64
  %shr = lshr i64 %44, %sh_prom
  %and21 = and i64 %shr, 1
  %tobool = icmp ne i64 %and21, 0
  br i1 %tobool, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body
  %46 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %params23 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %47, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  %48 = load i8*, i8** %arrayidx, align 8, !tbaa !1
  %49 = load i32, i32* %w, align 4, !tbaa !25
  %50 = load i32, i32* %h, align 4, !tbaa !25
  %51 = load %struct.cmykog_process_arg_s*, %struct.cmykog_process_arg_s** %arg, align 8, !tbaa !1
  %dev_raster = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %51, i32 0, i32 2
  %52 = load i32, i32* %dev_raster, align 4, !tbaa !26
  call void @average_plane(i8* %48, i32 %49, i32 %50, i32 %52) #7
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %53 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load i32, i32* %w, align 4, !tbaa !25
  %shr25 = ashr i32 %54, 1
  %55 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %w26 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %55, i32 0, i32 0
  store i32 %shr25, i32* %w26, align 4, !tbaa !74
  %56 = load i32, i32* %h, align 4, !tbaa !25
  %shr27 = ashr i32 %56, 1
  %57 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %h28 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %57, i32 0, i32 1
  store i32 %shr27, i32* %h28, align 4, !tbaa !75
  %58 = load i32, i32* %code, align 4, !tbaa !25
  store i32 %58, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %59 = bitcast %struct.gs_int_rect_s* %my_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %59) #2
  %60 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #2
  %62 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %62) #2
  %63 = bitcast i32* %ignore_start to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #2
  %64 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #2
  %65 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast %struct.gx_device_cmykog_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #2
  %67 = bitcast %struct.cmykog_process_arg_s** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #2
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @cmykog_output(i8* %arg_, %struct.gx_device_s* %dev_, i8* %buffer_) #1 {
entry:
  %arg_.addr = alloca i8*, align 8
  %dev_.addr = alloca %struct.gx_device_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %arg = alloca %struct.cmykog_process_arg_s*, align 8
  %dev = alloca %struct.gx_device_cmykog_s*, align 8
  %buffer = alloca %struct.cmykog_process_buffer_s*, align 8
  %i = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %raster = alloca i32, align 4
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !1
  store %struct.gx_device_s* %dev_, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmykog_process_arg_s** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load i8*, i8** %arg_.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmykog_process_arg_s*
  store %struct.cmykog_process_arg_s* %2, %struct.cmykog_process_arg_s** %arg, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_cmykog_s** %dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev_.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_s* %4 to %struct.gx_device_cmykog_s*
  store %struct.gx_device_cmykog_s* %5, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %6 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %buffer_.addr, align 8, !tbaa !1
  %8 = bitcast i8* %7 to %struct.cmykog_process_buffer_s*
  store %struct.cmykog_process_buffer_s* %8, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %9 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #2
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #2
  %11 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %w1 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %11, i32 0, i32 0
  %12 = load i32, i32* %w1, align 4, !tbaa !74
  store i32 %12, i32* %w, align 4, !tbaa !25
  %13 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #2
  %14 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %h2 = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %14, i32 0, i32 1
  %15 = load i32, i32* %h2, align 4, !tbaa !75
  store i32 %15, i32* %h, align 4, !tbaa !25
  %16 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #2
  %17 = load %struct.cmykog_process_arg_s*, %struct.cmykog_process_arg_s** %arg, align 8, !tbaa !1
  %dev_raster = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %17, i32 0, i32 2
  %18 = load i32, i32* %dev_raster, align 4, !tbaa !26
  store i32 %18, i32* %raster, align 4, !tbaa !25
  store i32 0, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %19 = load i32, i32* %i, align 4, !tbaa !25
  %20 = load %struct.gx_device_cmykog_s*, %struct.gx_device_cmykog_s** %dev, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_cmykog_s, %struct.gx_device_cmykog_s* %20, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %21 = load i32, i32* %num_components, align 4, !tbaa !5
  %cmp = icmp slt i32 %19, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %color_usage = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %22, i32 0, i32 3
  %or = getelementptr inbounds %struct.gx_colors_usage_s, %struct.gx_colors_usage_s* %color_usage, i32 0, i32 0
  %23 = load i64, i64* %or, align 8, !tbaa !73
  %24 = load i32, i32* %i, align 4, !tbaa !25
  %sh_prom = zext i32 %24 to i64
  %shr = lshr i64 %23, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom = sext i32 %25 to i64
  %26 = load %struct.cmykog_process_arg_s*, %struct.cmykog_process_arg_s** %arg, align 8, !tbaa !1
  %spot_file = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %26, i32 0, i32 0
  %arrayidx = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file, i32 0, i64 %idxprom
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx, align 8, !tbaa !1
  %28 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom3 = sext i32 %28 to i64
  %29 = load %struct.cmykog_process_buffer_s*, %struct.cmykog_process_buffer_s** %buffer, align 8, !tbaa !1
  %params = getelementptr inbounds %struct.cmykog_process_buffer_s, %struct.cmykog_process_buffer_s* %29, i32 0, i32 2
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom3
  %30 = load i8*, i8** %arrayidx4, align 8, !tbaa !1
  %31 = load i32, i32* %w, align 4, !tbaa !25
  %32 = load i32, i32* %h, align 4, !tbaa !25
  %33 = load i32, i32* %raster, align 4, !tbaa !25
  call void @write_plane(%struct._IO_FILE* %27, i8* %30, i32 %31, i32 %32, i32 %33) #7
  br label %if.end

if.else:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !tbaa !25
  %idxprom5 = sext i32 %34 to i64
  %35 = load %struct.cmykog_process_arg_s*, %struct.cmykog_process_arg_s** %arg, align 8, !tbaa !1
  %spot_file6 = getelementptr inbounds %struct.cmykog_process_arg_s, %struct.cmykog_process_arg_s* %35, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [64 x %struct._IO_FILE*], [64 x %struct._IO_FILE*]* %spot_file6, i32 0, i64 %idxprom5
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %arrayidx7, align 8, !tbaa !1
  %37 = load i32, i32* %w, align 4, !tbaa !25
  %38 = load i32, i32* %h, align 4, !tbaa !25
  call void @write_empty_plane(%struct._IO_FILE* %36, i32 %37, i32 %38) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i32, i32* %i, align 4, !tbaa !25
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #2
  %41 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #2
  %42 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %42) #2
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #2
  %44 = bitcast %struct.cmykog_process_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast %struct.gx_device_cmykog_s** %dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %46 = bitcast %struct.cmykog_process_arg_s** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #2
  ret i32 0
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #0

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal void @write_empty_plane(%struct._IO_FILE* %file, i32 %w, i32 %h) #1 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !25
  store i32 %h, i32* %h.addr, align 4, !tbaa !25
  %0 = load i32, i32* %h.addr, align 4, !tbaa !25
  %1 = load i32, i32* %w.addr, align 4, !tbaa !25
  %mul = mul nsw i32 %1, %0
  store i32 %mul, i32* %w.addr, align 4, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %w.addr, align 4, !tbaa !25
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %w.addr, align 4, !tbaa !25
  store i32 %3, i32* %h.addr, align 4, !tbaa !25
  %4 = load i32, i32* %h.addr, align 4, !tbaa !25
  %cmp1 = icmp sgt i32 %4, 64
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 64, i32* %h.addr, align 4, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i32, i32* %h.addr, align 4, !tbaa !25
  %conv = sext i32 %5 to i64
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @empty, i32 0, i32 0), i64 1, i64 %conv, %struct._IO_FILE* %6) #7
  %7 = load i32, i32* %h.addr, align 4, !tbaa !25
  %8 = load i32, i32* %w.addr, align 4, !tbaa !25
  %sub = sub nsw i32 %8, %7
  store i32 %sub, i32* %w.addr, align 4, !tbaa !25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #0

declare i32 @unlink(i8*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

declare i32 @gdev_prn_color_usage(%struct.gx_device_s*, i32, i32, %struct.gx_colors_usage_s*, i32*) #0

; Function Attrs: nounwind uwtable
define internal void @average_plane(i8* %image, i32 %width, i32 %height, i32 %raster) #1 {
entry:
  %image.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %mm0 = alloca <2 x i64>, align 16
  %mm1 = alloca <2 x i64>, align 16
  %mm2 = alloca <2 x i64>, align 16
  %mm3 = alloca <2 x i64>, align 16
  %invert = alloca <2 x i64>, align 16
  %mask = alloca <2 x i64>, align 16
  %out = alloca <2 x i64>*, align 8
  %in = alloca <2 x i64>*, align 8
  store i8* %image, i8** %image.addr, align 8, !tbaa !1
  store i32 %width, i32* %width.addr, align 4, !tbaa !25
  store i32 %height, i32* %height.addr, align 4, !tbaa !25
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !25
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast <2 x i64>* %mm0 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast <2 x i64>* %mm1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %3) #2
  %4 = bitcast <2 x i64>* %mm2 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %4) #2
  %5 = bitcast <2 x i64>* %mm3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #2
  %6 = bitcast <2 x i64>* %invert to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #2
  %call = call <2 x i64> @_mm_set1_epi8(i8 signext -1) #7
  store <2 x i64> %call, <2 x i64>* %invert, align 16, !tbaa !41
  %7 = bitcast <2 x i64>* %mask to i8*
  call void @llvm.lifetime.start(i64 16, i8* %7) #2
  %call1 = call <2 x i64> @_mm_set1_epi16(i16 signext 255) #7
  store <2 x i64> %call1, <2 x i64>* %mask, align 16, !tbaa !41
  store i32 0, i32* %y, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %8 = load i32, i32* %y, align 4, !tbaa !25
  %9 = load i32, i32* %height.addr, align 4, !tbaa !25
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %10 = bitcast <2 x i64>** %out to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load i8*, i8** %image.addr, align 8, !tbaa !1
  %12 = load i32, i32* %y, align 4, !tbaa !25
  %shr = ashr i32 %12, 1
  %13 = load i32, i32* %raster.addr, align 4, !tbaa !25
  %mul = mul nsw i32 %shr, %13
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %14 = bitcast i8* %add.ptr to <2 x i64>*
  store <2 x i64>* %14, <2 x i64>** %out, align 8, !tbaa !1
  %15 = bitcast <2 x i64>** %in to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = load i8*, i8** %image.addr, align 8, !tbaa !1
  %17 = load i32, i32* %y, align 4, !tbaa !25
  %18 = load i32, i32* %raster.addr, align 4, !tbaa !25
  %mul2 = mul nsw i32 %17, %18
  %idx.ext3 = sext i32 %mul2 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %16, i64 %idx.ext3
  %19 = bitcast i8* %add.ptr4 to <2 x i64>*
  store <2 x i64>* %19, <2 x i64>** %in, align 8, !tbaa !1
  store i32 0, i32* %x, align 4, !tbaa !25
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %20 = load i32, i32* %x, align 4, !tbaa !25
  %21 = load i32, i32* %width.addr, align 4, !tbaa !25
  %cmp6 = icmp slt i32 %20, %21
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %22 = load <2 x i64>*, <2 x i64>** %in, align 8, !tbaa !1
  %call8 = call <2 x i64> @_mm_load_si128(<2 x i64>* %22) #7
  store <2 x i64> %call8, <2 x i64>* %mm0, align 16, !tbaa !41
  %23 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %24 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call9 = call <2 x i64> @_mm_and_si128(<2 x i64> %23, <2 x i64> %24) #7
  store <2 x i64> %call9, <2 x i64>* %mm1, align 16, !tbaa !41
  %25 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %26 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call10 = call <2 x i64> @_mm_andnot_si128(<2 x i64> %25, <2 x i64> %26) #7
  store <2 x i64> %call10, <2 x i64>* %mm0, align 16, !tbaa !41
  %27 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call11 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %27, i32 8) #7
  store <2 x i64> %call11, <2 x i64>* %mm0, align 16, !tbaa !41
  %28 = load <2 x i64>, <2 x i64>* %mm1, align 16, !tbaa !41
  %29 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call12 = call <2 x i64> @_mm_add_epi16(<2 x i64> %28, <2 x i64> %29) #7
  store <2 x i64> %call12, <2 x i64>* %mm0, align 16, !tbaa !41
  %30 = load <2 x i64>*, <2 x i64>** %in, align 8, !tbaa !1
  %31 = bitcast <2 x i64>* %30 to i8*
  %32 = load i32, i32* %raster.addr, align 4, !tbaa !25
  %idx.ext13 = sext i32 %32 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %31, i64 %idx.ext13
  %33 = bitcast i8* %add.ptr14 to <2 x i64>*
  %call15 = call <2 x i64> @_mm_load_si128(<2 x i64>* %33) #7
  store <2 x i64> %call15, <2 x i64>* %mm3, align 16, !tbaa !41
  %34 = load <2 x i64>*, <2 x i64>** %in, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds <2 x i64>, <2 x i64>* %34, i32 1
  store <2 x i64>* %incdec.ptr, <2 x i64>** %in, align 8, !tbaa !1
  %35 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %36 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call16 = call <2 x i64> @_mm_and_si128(<2 x i64> %35, <2 x i64> %36) #7
  store <2 x i64> %call16, <2 x i64>* %mm1, align 16, !tbaa !41
  %37 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %38 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call17 = call <2 x i64> @_mm_andnot_si128(<2 x i64> %37, <2 x i64> %38) #7
  store <2 x i64> %call17, <2 x i64>* %mm3, align 16, !tbaa !41
  %39 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call18 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %39, i32 8) #7
  store <2 x i64> %call18, <2 x i64>* %mm3, align 16, !tbaa !41
  %40 = load <2 x i64>, <2 x i64>* %mm1, align 16, !tbaa !41
  %41 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call19 = call <2 x i64> @_mm_add_epi16(<2 x i64> %40, <2 x i64> %41) #7
  store <2 x i64> %call19, <2 x i64>* %mm3, align 16, !tbaa !41
  %42 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %43 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call20 = call <2 x i64> @_mm_add_epi16(<2 x i64> %42, <2 x i64> %43) #7
  store <2 x i64> %call20, <2 x i64>* %mm2, align 16, !tbaa !41
  %44 = load <2 x i64>*, <2 x i64>** %in, align 8, !tbaa !1
  %call21 = call <2 x i64> @_mm_load_si128(<2 x i64>* %44) #7
  store <2 x i64> %call21, <2 x i64>* %mm0, align 16, !tbaa !41
  %45 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %46 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call22 = call <2 x i64> @_mm_and_si128(<2 x i64> %45, <2 x i64> %46) #7
  store <2 x i64> %call22, <2 x i64>* %mm1, align 16, !tbaa !41
  %47 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %48 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call23 = call <2 x i64> @_mm_andnot_si128(<2 x i64> %47, <2 x i64> %48) #7
  store <2 x i64> %call23, <2 x i64>* %mm0, align 16, !tbaa !41
  %49 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call24 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %49, i32 8) #7
  store <2 x i64> %call24, <2 x i64>* %mm0, align 16, !tbaa !41
  %50 = load <2 x i64>, <2 x i64>* %mm1, align 16, !tbaa !41
  %51 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %call25 = call <2 x i64> @_mm_add_epi16(<2 x i64> %50, <2 x i64> %51) #7
  store <2 x i64> %call25, <2 x i64>* %mm0, align 16, !tbaa !41
  %52 = load <2 x i64>*, <2 x i64>** %in, align 8, !tbaa !1
  %53 = bitcast <2 x i64>* %52 to i8*
  %54 = load i32, i32* %raster.addr, align 4, !tbaa !25
  %idx.ext26 = sext i32 %54 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %53, i64 %idx.ext26
  %55 = bitcast i8* %add.ptr27 to <2 x i64>*
  %call28 = call <2 x i64> @_mm_load_si128(<2 x i64>* %55) #7
  store <2 x i64> %call28, <2 x i64>* %mm3, align 16, !tbaa !41
  %56 = load <2 x i64>*, <2 x i64>** %in, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds <2 x i64>, <2 x i64>* %56, i32 1
  store <2 x i64>* %incdec.ptr29, <2 x i64>** %in, align 8, !tbaa !1
  %57 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %58 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call30 = call <2 x i64> @_mm_and_si128(<2 x i64> %57, <2 x i64> %58) #7
  store <2 x i64> %call30, <2 x i64>* %mm1, align 16, !tbaa !41
  %59 = load <2 x i64>, <2 x i64>* %mask, align 16, !tbaa !41
  %60 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call31 = call <2 x i64> @_mm_andnot_si128(<2 x i64> %59, <2 x i64> %60) #7
  store <2 x i64> %call31, <2 x i64>* %mm3, align 16, !tbaa !41
  %61 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call32 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %61, i32 8) #7
  store <2 x i64> %call32, <2 x i64>* %mm3, align 16, !tbaa !41
  %62 = load <2 x i64>, <2 x i64>* %mm1, align 16, !tbaa !41
  %63 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call33 = call <2 x i64> @_mm_add_epi16(<2 x i64> %62, <2 x i64> %63) #7
  store <2 x i64> %call33, <2 x i64>* %mm3, align 16, !tbaa !41
  %64 = load <2 x i64>, <2 x i64>* %mm0, align 16, !tbaa !41
  %65 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call34 = call <2 x i64> @_mm_add_epi16(<2 x i64> %64, <2 x i64> %65) #7
  store <2 x i64> %call34, <2 x i64>* %mm3, align 16, !tbaa !41
  %66 = load <2 x i64>, <2 x i64>* %mm2, align 16, !tbaa !41
  %call35 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %66, i32 2) #7
  store <2 x i64> %call35, <2 x i64>* %mm2, align 16, !tbaa !41
  %67 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call36 = call <2 x i64> @_mm_srli_epi16(<2 x i64> %67, i32 2) #7
  store <2 x i64> %call36, <2 x i64>* %mm3, align 16, !tbaa !41
  %68 = load <2 x i64>, <2 x i64>* %mm2, align 16, !tbaa !41
  %69 = load <2 x i64>, <2 x i64>* %mm3, align 16, !tbaa !41
  %call37 = call <2 x i64> @_mm_packus_epi16(<2 x i64> %68, <2 x i64> %69) #7
  store <2 x i64> %call37, <2 x i64>* %mm2, align 16, !tbaa !41
  %70 = load <2 x i64>, <2 x i64>* %mm2, align 16, !tbaa !41
  %71 = load <2 x i64>, <2 x i64>* %invert, align 16, !tbaa !41
  %call38 = call <2 x i64> @_mm_xor_si128(<2 x i64> %70, <2 x i64> %71) #7
  store <2 x i64> %call38, <2 x i64>* %mm2, align 16, !tbaa !41
  %72 = load <2 x i64>*, <2 x i64>** %out, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds <2 x i64>, <2 x i64>* %72, i32 1
  store <2 x i64>* %incdec.ptr39, <2 x i64>** %out, align 8, !tbaa !1
  %73 = load <2 x i64>, <2 x i64>* %mm2, align 16, !tbaa !41
  call void @_mm_store_si128(<2 x i64>* %72, <2 x i64> %73) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %74 = load i32, i32* %x, align 4, !tbaa !25
  %add = add nsw i32 %74, 32
  store i32 %add, i32* %x, align 4, !tbaa !25
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %75 = bitcast <2 x i64>** %in to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast <2 x i64>** %out to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end
  %77 = load i32, i32* %y, align 4, !tbaa !25
  %add41 = add nsw i32 %77, 2
  store i32 %add41, i32* %y, align 4, !tbaa !25
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  %78 = bitcast <2 x i64>* %mask to i8*
  call void @llvm.lifetime.end(i64 16, i8* %78) #2
  %79 = bitcast <2 x i64>* %invert to i8*
  call void @llvm.lifetime.end(i64 16, i8* %79) #2
  %80 = bitcast <2 x i64>* %mm3 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %80) #2
  %81 = bitcast <2 x i64>* %mm2 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %81) #2
  %82 = bitcast <2 x i64>* %mm1 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %82) #2
  %83 = bitcast <2 x i64>* %mm0 to i8*
  call void @llvm.lifetime.end(i64 16, i8* %83) #2
  %84 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #2
  %85 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #2
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_set1_epi8(i8 signext %__b) #5 {
entry:
  %__b.addr = alloca i8, align 1
  %.compoundliteral = alloca <16 x i8>, align 16
  store i8 %__b, i8* %__b.addr, align 1, !tbaa !41
  %0 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit = insertelement <16 x i8> undef, i8 %0, i32 0
  %1 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit1 = insertelement <16 x i8> %vecinit, i8 %1, i32 1
  %2 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit2 = insertelement <16 x i8> %vecinit1, i8 %2, i32 2
  %3 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit3 = insertelement <16 x i8> %vecinit2, i8 %3, i32 3
  %4 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit4 = insertelement <16 x i8> %vecinit3, i8 %4, i32 4
  %5 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit5 = insertelement <16 x i8> %vecinit4, i8 %5, i32 5
  %6 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit6 = insertelement <16 x i8> %vecinit5, i8 %6, i32 6
  %7 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit7 = insertelement <16 x i8> %vecinit6, i8 %7, i32 7
  %8 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit8 = insertelement <16 x i8> %vecinit7, i8 %8, i32 8
  %9 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit9 = insertelement <16 x i8> %vecinit8, i8 %9, i32 9
  %10 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit10 = insertelement <16 x i8> %vecinit9, i8 %10, i32 10
  %11 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit11 = insertelement <16 x i8> %vecinit10, i8 %11, i32 11
  %12 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit12 = insertelement <16 x i8> %vecinit11, i8 %12, i32 12
  %13 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit13 = insertelement <16 x i8> %vecinit12, i8 %13, i32 13
  %14 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit14 = insertelement <16 x i8> %vecinit13, i8 %14, i32 14
  %15 = load i8, i8* %__b.addr, align 1, !tbaa !41
  %vecinit15 = insertelement <16 x i8> %vecinit14, i8 %15, i32 15
  store <16 x i8> %vecinit15, <16 x i8>* %.compoundliteral, !tbaa !41
  %16 = load <16 x i8>, <16 x i8>* %.compoundliteral, !tbaa !41
  %17 = bitcast <16 x i8> %16 to <2 x i64>
  ret <2 x i64> %17
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_set1_epi16(i16 signext %__w) #5 {
entry:
  %__w.addr = alloca i16, align 2
  %.compoundliteral = alloca <8 x i16>, align 16
  store i16 %__w, i16* %__w.addr, align 2, !tbaa !76
  %0 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit = insertelement <8 x i16> undef, i16 %0, i32 0
  %1 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit1 = insertelement <8 x i16> %vecinit, i16 %1, i32 1
  %2 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit2 = insertelement <8 x i16> %vecinit1, i16 %2, i32 2
  %3 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit3 = insertelement <8 x i16> %vecinit2, i16 %3, i32 3
  %4 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit4 = insertelement <8 x i16> %vecinit3, i16 %4, i32 4
  %5 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit5 = insertelement <8 x i16> %vecinit4, i16 %5, i32 5
  %6 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit6 = insertelement <8 x i16> %vecinit5, i16 %6, i32 6
  %7 = load i16, i16* %__w.addr, align 2, !tbaa !76
  %vecinit7 = insertelement <8 x i16> %vecinit6, i16 %7, i32 7
  store <8 x i16> %vecinit7, <8 x i16>* %.compoundliteral, !tbaa !41
  %8 = load <8 x i16>, <8 x i16>* %.compoundliteral, !tbaa !41
  %9 = bitcast <8 x i16> %8 to <2 x i64>
  ret <2 x i64> %9
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_load_si128(<2 x i64>* %__p) #5 {
entry:
  %__p.addr = alloca <2 x i64>*, align 8
  store <2 x i64>* %__p, <2 x i64>** %__p.addr, align 8, !tbaa !1
  %0 = load <2 x i64>*, <2 x i64>** %__p.addr, align 8, !tbaa !1
  %1 = load <2 x i64>, <2 x i64>* %0, align 16, !tbaa !41
  ret <2 x i64> %1
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_and_si128(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !41
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !41
  %1 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %and = and <2 x i64> %0, %1
  ret <2 x i64> %and
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_andnot_si128(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !41
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !41
  %neg = xor <2 x i64> %0, <i64 -1, i64 -1>
  %1 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %and = and <2 x i64> %neg, %1
  ret <2 x i64> %and
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_srli_epi16(<2 x i64> %__a, i32 %__count) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__count.addr = alloca i32, align 4
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !41
  store i32 %__count, i32* %__count.addr, align 4, !tbaa !25
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !41
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load i32, i32* %__count.addr, align 4, !tbaa !25
  %3 = call <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16> %1, i32 %2)
  %4 = bitcast <8 x i16> %3 to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_add_epi16(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !41
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !41
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %add = add <8 x i16> %1, %3
  %4 = bitcast <8 x i16> %add to <2 x i64>
  ret <2 x i64> %4
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_packus_epi16(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !41
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !41
  %1 = bitcast <2 x i64> %0 to <8 x i16>
  %2 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %3 = bitcast <2 x i64> %2 to <8 x i16>
  %4 = call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %1, <8 x i16> %3)
  %5 = bitcast <16 x i8> %4 to <2 x i64>
  ret <2 x i64> %5
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal <2 x i64> @_mm_xor_si128(<2 x i64> %__a, <2 x i64> %__b) #5 {
entry:
  %__a.addr = alloca <2 x i64>, align 16
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64> %__a, <2 x i64>* %__a.addr, align 16, !tbaa !41
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %0 = load <2 x i64>, <2 x i64>* %__a.addr, align 16, !tbaa !41
  %1 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %xor = xor <2 x i64> %0, %1
  ret <2 x i64> %xor
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @_mm_store_si128(<2 x i64>* %__p, <2 x i64> %__b) #5 {
entry:
  %__p.addr = alloca <2 x i64>*, align 8
  %__b.addr = alloca <2 x i64>, align 16
  store <2 x i64>* %__p, <2 x i64>** %__p.addr, align 8, !tbaa !1
  store <2 x i64> %__b, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %0 = load <2 x i64>, <2 x i64>* %__b.addr, align 16, !tbaa !41
  %1 = load <2 x i64>*, <2 x i64>** %__p.addr, align 8, !tbaa !1
  store <2 x i64> %0, <2 x i64>* %1, align 16, !tbaa !41
  ret void
}

; Function Attrs: nounwind readnone
declare <8 x i16> @llvm.x86.sse2.psrli.w(<8 x i16>, i32) #6

; Function Attrs: nounwind readnone
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #6

; Function Attrs: nounwind uwtable
define internal void @write_plane(%struct._IO_FILE* %file, i8* %data, i32 %w, i32 %h, i32 %raster) #1 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %data.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  store i8* %data, i8** %data.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !25
  store i32 %h, i32* %h.addr, align 4, !tbaa !25
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %h.addr, align 4, !tbaa !25
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %2 = load i32, i32* %w.addr, align 4, !tbaa !25
  %conv = sext i32 %2 to i64
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8, !tbaa !1
  %call = call i64 @fwrite(i8* %1, i64 1, i64 %conv, %struct._IO_FILE* %3) #7
  %4 = load i32, i32* %raster.addr, align 4, !tbaa !25
  %5 = load i8*, i8** %data.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  store i8* %add.ptr, i8** %data.addr, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %h.addr, align 4, !tbaa !25
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %h.addr, align 4, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 100}
!6 = !{!"gx_device_cmykog_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888, !22, i64 18472, !24, i64 20872}
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
!22 = !{!"gs_devn_params_s", !7, i64 0, !2, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !23, i64 32, !7, i64 1064, !3, i64 1068, !2, i64 1352, !2, i64 1360, !23, i64 1368}
!23 = !{!"gs_separations_s", !7, i64 0, !3, i64 8}
!24 = !{!"equivalent_cmyk_color_params_s", !7, i64 0, !3, i64 4}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !7, i64 262656}
!27 = !{!"cmykog_process_arg_s", !3, i64 0, !3, i64 512, !7, i64 262656}
!28 = !{!29, !7, i64 832}
!29 = !{!"gx_device_printer_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144, !3, i64 1728, !19, i64 12968, !3, i64 13056, !7, i64 17152, !7, i64 17156, !7, i64 17160, !7, i64 17164, !7, i64 17168, !7, i64 17172, !2, i64 17176, !9, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !7, i64 17232, !2, i64 17240, !7, i64 17248, !7, i64 17252, !21, i64 17256, !7, i64 17288, !2, i64 17296, !18, i64 17304, !18, i64 17888}
!30 = !{!29, !7, i64 836}
!31 = !{!29, !2, i64 24}
!32 = !{!33, !2, i64 0}
!33 = !{!"gx_process_page_options_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40}
!34 = !{!33, !2, i64 8}
!35 = !{!33, !2, i64 16}
!36 = !{!33, !2, i64 24}
!37 = !{!33, !2, i64 32}
!38 = !{!33, !7, i64 40}
!39 = !{!29, !2, i64 1720}
!40 = !{!29, !7, i64 96}
!41 = !{!3, !3, i64 0}
!42 = !{!6, !3, i64 136}
!43 = !{!6, !2, i64 1104}
!44 = !{!45, !7, i64 168}
!45 = !{!"cmm_dev_profile_s", !3, i64 0, !2, i64 32, !2, i64 40, !2, i64 48, !3, i64 56, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !2, i64 176, !7, i64 184, !2, i64 192, !8, i64 200}
!46 = !{!6, !7, i64 840}
!47 = !{!6, !7, i64 844}
!48 = !{!49, !2, i64 0}
!49 = !{!"gs_param_string_array_s", !2, i64 0, !7, i64 8, !7, i64 12}
!50 = !{!51, !2, i64 0}
!51 = !{!"gs_param_list_s", !2, i64 0, !2, i64 8, !7, i64 16}
!52 = !{!53, !2, i64 56}
!53 = !{!"gs_param_list_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64}
!54 = !{!55, !2, i64 32}
!55 = !{!"gs_memory_struct_type_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56}
!56 = !{!55, !2, i64 40}
!57 = !{!58, !2, i64 64}
!58 = !{!"gs_memory_s", !2, i64 0, !59, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!59 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!60 = !{!58, !2, i64 24}
!61 = !{!62, !7, i64 8}
!62 = !{!"gs_int_rect_s", !63, i64 0, !63, i64 8}
!63 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!64 = !{!62, !7, i64 0}
!65 = !{!62, !7, i64 12}
!66 = !{!62, !7, i64 4}
!67 = !{!68, !9, i64 8}
!68 = !{!"cmykog_process_buffer_s", !7, i64 0, !7, i64 4, !69, i64 8, !70, i64 544}
!69 = !{!"gs_get_bits_params_s", !9, i64 0, !3, i64 8, !7, i64 520, !7, i64 524, !7, i64 528}
!70 = !{!"gx_colors_usage_s", !9, i64 0, !7, i64 8, !62, i64 12}
!71 = !{!72, !2, i64 1448}
!72 = !{!"gx_device_s", !7, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !7, i64 40, !2, i64 48, !8, i64 56, !7, i64 80, !7, i64 84, !7, i64 88, !10, i64 96, !13, i64 816, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !3, i64 856, !3, i64 864, !7, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !9, i64 928, !9, i64 936, !7, i64 944, !7, i64 948, !7, i64 952, !7, i64 956, !7, i64 960, !9, i64 968, !9, i64 976, !14, i64 984, !7, i64 1052, !7, i64 1056, !15, i64 1064, !2, i64 1104, !3, i64 1112, !17, i64 1120, !18, i64 1144}
!73 = !{!68, !9, i64 544}
!74 = !{!68, !7, i64 0}
!75 = !{!68, !7, i64 4}
!76 = !{!11, !11, i64 0}
