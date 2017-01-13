; ModuleID = './gdevgdi.bc'
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
%struct.sc_tbl = type { i8, i8, i8 }

@GDI_BAND_WIDTH = global [2 x i32] [i32 4768, i32 4928], align 4
@prn_gdi_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdi_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_output_page, i32 (%struct.gx_device_s*)* @gdi_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"gdi\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_gdi_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_gdi_procs, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -1.200000e+02, float -1.500000e+02], [4 x float] [float 0x402CCCCCC0000000, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @gdi_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"samsunggdi\00", align 1
@gs_samsunggdi_device = global { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_gdi_procs, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 5100, i32 6600, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float -1.200000e+02, float -1.500000e+02], [4 x float] [float 0x402CCCCCC0000000, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @gdi_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@UpdateScanLine = global [2 x i64 (i8*, i16, i16, i16, i16, i16)*] [i64 (i8*, i16, i16, i16, i16, i16)* @SaveScanData, i64 (i8*, i16, i16, i16, i16, i16)* @UpdateScanSize], align 16
@gdi_open.m_a4 = internal constant [4 x float] [float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000], align 16
@gdi_open.m_letter = internal constant [4 x float] [float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000, float 0x3FC5604180000000], align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"\1B&l0H\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gdi_print_page\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gdi_print_page/fudge\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"gdi_line_buffer\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\1B%-12345X\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"@PJL SET PAPERTYPE = NORMAL ON\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"@PJL SET DENSITY = 1\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"@PJL SET TONERSAVE = OFF\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"@PJL ENTER LANGUAGE = SMART\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"$PJL JOB START\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"$PJL RESOLUTION = 600\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"$PJL RESOLUTION = 300\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"$PJL COPIES = 1\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"$PJL PAGE A4 AUTO\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"$PJL PAGE LETTER AUTO\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"$PJL PAGE LEGAL AUTO\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"$PJL BITMAP START\0D\0A\00", align 1
@gdi_ScanTbl = internal global [256 x %struct.sc_tbl] [%struct.sc_tbl { i8 8, i8 0, i8 0 }, %struct.sc_tbl { i8 7, i8 1, i8 1 }, %struct.sc_tbl { i8 6, i8 1, i8 0 }, %struct.sc_tbl { i8 6, i8 2, i8 1 }, %struct.sc_tbl { i8 5, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 5, i8 2, i8 0 }, %struct.sc_tbl { i8 5, i8 3, i8 1 }, %struct.sc_tbl { i8 4, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 4, i8 2, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 4, i8 3, i8 0 }, %struct.sc_tbl { i8 4, i8 4, i8 1 }, %struct.sc_tbl { i8 3, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 3, i8 2, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 3, i8 3, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 3, i8 4, i8 0 }, %struct.sc_tbl { i8 3, i8 5, i8 1 }, %struct.sc_tbl { i8 2, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 2, i8 2, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 2, i8 3, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 2, i8 4, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 2, i8 5, i8 0 }, %struct.sc_tbl { i8 2, i8 6, i8 1 }, %struct.sc_tbl { i8 1, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 1, i8 2, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 1, i8 3, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 1, i8 4, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 1, i8 5, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 1, i8 6, i8 0 }, %struct.sc_tbl { i8 1, i8 7, i8 1 }, %struct.sc_tbl { i8 0, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 2, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 3, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 4, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 5, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 6, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 7, i8 0 }, %struct.sc_tbl { i8 0, i8 8, i8 1 }], align 16
@gdi_ScanTbl4 = internal global [16 x %struct.sc_tbl] [%struct.sc_tbl { i8 4, i8 0, i8 0 }, %struct.sc_tbl { i8 3, i8 1, i8 1 }, %struct.sc_tbl { i8 2, i8 1, i8 0 }, %struct.sc_tbl { i8 2, i8 2, i8 1 }, %struct.sc_tbl { i8 1, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 1, i8 2, i8 0 }, %struct.sc_tbl { i8 1, i8 3, i8 1 }, %struct.sc_tbl { i8 0, i8 1, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl zeroinitializer, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 2, i8 0 }, %struct.sc_tbl { i8 0, i8 0, i8 1 }, %struct.sc_tbl { i8 0, i8 3, i8 0 }, %struct.sc_tbl { i8 0, i8 4, i8 1 }], align 16
@.str.20 = private unnamed_addr constant [15 x i8] c"$PJL PRINT 4\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"$PJL EOJ\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"$PJL SYNC\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"$PJL RELEASE 0 2047\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"$PJL GARBAGE\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"\1B%-12345X\0D\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @gdi_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %band_width_bytes = alloca i32, align 4
  %band_height = alloca i32, align 4
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %y = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %band_num = alloca i32, align 4
  %dots_per_inch = alloca i32, align 4
  %raster = alloca i32, align 4
  %real_line_width = alloca i32, align 4
  %ul_band_size = alloca i64, align 8
  %ul_comp_size = alloca i64, align 8
  %ul_tiff_size = alloca i64, align 8
  %ul_min_size = alloca i64, align 8
  %ibp = alloca i8*, align 8
  %obp = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %paper_type = alloca i8, align 1
  %compression_type = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  %fudge = alloca i32, align 4
  %use_band = alloca i8*, align 8
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast i32* %band_width_bytes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  store i32 0, i32* %code, align 4, !tbaa !5
  %3 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #2
  %6 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #2
  store i32 0, i32* %num_rows, align 4, !tbaa !5
  %7 = bitcast i32* %band_num to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  store i32 0, i32* %band_num, align 4, !tbaa !5
  %8 = bitcast i32* %dots_per_inch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %10 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %10 to i32
  store i32 %conv, i32* %dots_per_inch, align 4, !tbaa !5
  %11 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_printer_s* %12 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %13, i32 1) #5
  store i32 %call, i32* %raster, align 4, !tbaa !5
  %14 = bitcast i32* %real_line_width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i64* %ul_band_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #2
  %16 = bitcast i64* %ul_comp_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i64* %ul_tiff_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = bitcast i64* %ul_min_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #2
  %19 = bitcast i8** %ibp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #2
  store i8* null, i8** %ibp, align 8, !tbaa !1
  %20 = bitcast i8** %obp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #2
  store i8* null, i8** %obp, align 8, !tbaa !1
  %21 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #2
  store i8* null, i8** %tmp, align 8, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %paper_type) #2
  store i8 0, i8* %paper_type, align 1, !tbaa !9
  call void @llvm.lifetime.start(i64 1, i8* %compression_type) #2
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %23 = bitcast %struct.gx_device_printer_s* %22 to %struct.gx_device_s*
  %call3 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %23) #5
  switch i32 %call3, label %sw.default [
    i32 26, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i8 0, i8* %paper_type, align 1, !tbaa !9
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i8 1, i8* %paper_type, align 1, !tbaa !9
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i8 1, i8* %paper_type, align 1, !tbaa !9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8 1, i8* %paper_type, align 1, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb
  %24 = load i32, i32* %dots_per_inch, align 4, !tbaa !5
  %cmp = icmp eq i32 %24, 600
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %25 = load i8, i8* %paper_type, align 1, !tbaa !9
  %idxprom = zext i8 %25 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* @GDI_BAND_WIDTH, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx7, align 4, !tbaa !5
  %add = add nsw i32 %26, 31
  %div = sdiv i32 %add, 32
  %mul = mul nsw i32 %div, 4
  store i32 %mul, i32* %band_width_bytes, align 4, !tbaa !5
  store i32 128, i32* %band_height, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %27 = load i8, i8* %paper_type, align 1, !tbaa !9
  %idxprom8 = zext i8 %27 to i64
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* @GDI_BAND_WIDTH, i32 0, i64 %idxprom8
  %28 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %add10 = add nsw i32 %28, 31
  %div11 = sdiv i32 %add10, 32
  %mul12 = mul nsw i32 %div11, 4
  %div13 = sdiv i32 %mul12, 2
  store i32 %div13, i32* %band_width_bytes, align 4, !tbaa !5
  store i32 256, i32* %band_height, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %30 = load i32, i32* %band_height, align 4, !tbaa !5
  %mul14 = mul nsw i32 %29, %30
  %conv15 = sext i32 %mul14 to i64
  store i64 %conv15, i64* %ul_band_size, align 8, !tbaa !10
  %31 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !12
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %32, i32 0, i32 3
  %33 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !27
  %non_gc_memory16 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %33, i32 0, i32 3
  %34 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory16, align 8, !tbaa !27
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %34, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %35 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !30
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory17 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 3
  %37 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory17, align 8, !tbaa !12
  %non_gc_memory18 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %37, i32 0, i32 3
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory18, align 8, !tbaa !27
  %non_gc_memory19 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory19, align 8, !tbaa !27
  %40 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %conv20 = trunc i64 %40 to i32
  %call21 = call i8* %35(%struct.gs_memory_s* %39, i32 %conv20, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call21, i8** %ibp, align 8, !tbaa !1
  %41 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory22 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %41, i32 0, i32 3
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory22, align 8, !tbaa !12
  %non_gc_memory23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory23, align 8, !tbaa !27
  %non_gc_memory24 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %43, i32 0, i32 3
  %44 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory24, align 8, !tbaa !27
  %procs25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %44, i32 0, i32 1
  %alloc_byte_array26 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs25, i32 0, i32 10
  %45 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array26, align 8, !tbaa !30
  %46 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory27 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !12
  %non_gc_memory28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory28, align 8, !tbaa !27
  %non_gc_memory29 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory29, align 8, !tbaa !27
  %50 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %mul30 = mul nsw i64 %50, 13
  %div31 = sdiv i64 %mul30, 10
  %conv32 = trunc i64 %div31 to i32
  %call33 = call i8* %45(%struct.gs_memory_s* %49, i32 %conv32, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call33, i8** %obp, align 8, !tbaa !1
  %51 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory34 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %51, i32 0, i32 3
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !12
  %non_gc_memory35 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory35, align 8, !tbaa !27
  %non_gc_memory36 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %53, i32 0, i32 3
  %54 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory36, align 8, !tbaa !27
  %procs37 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %54, i32 0, i32 1
  %alloc_byte_array38 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs37, i32 0, i32 10
  %55 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array38, align 8, !tbaa !30
  %56 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory39 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %56, i32 0, i32 3
  %57 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory39, align 8, !tbaa !12
  %non_gc_memory40 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %57, i32 0, i32 3
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory40, align 8, !tbaa !27
  %non_gc_memory41 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %58, i32 0, i32 3
  %59 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory41, align 8, !tbaa !27
  %60 = load i32, i32* %raster, align 4, !tbaa !5
  %call42 = call i8* %55(%struct.gs_memory_s* %59, i32 %60, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)) #5
  store i8* %call42, i8** %tmp, align 8, !tbaa !1
  %61 = load i8*, i8** %ibp, align 8, !tbaa !1
  %tobool = icmp ne i8* %61, null
  br i1 %tobool, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.44:                                        ; preds = %if.end
  %62 = load i8*, i8** %obp, align 8, !tbaa !1
  %tobool45 = icmp ne i8* %62, null
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.end.44
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %if.end.44
  %63 = load i8*, i8** %tmp, align 8, !tbaa !1
  %tobool48 = icmp ne i8* %63, null
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.47
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.50:                                        ; preds = %if.end.47
  %64 = load i8*, i8** %ibp, align 8, !tbaa !1
  %cmp51 = icmp eq i8* %64, null
  br i1 %cmp51, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %65 = load i8*, i8** %obp, align 8, !tbaa !1
  %cmp53 = icmp eq i8* %65, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %lor.lhs.false, %if.end.50
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false
  %66 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call57 = call %struct._IO_FILE* @WritePJLHeaderData(%struct.gx_device_printer_s* %66, %struct._IO_FILE* %67) #5
  store %struct._IO_FILE* %call57, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %68 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gx_device_printer_s* %68 to %struct.gx_device_s*
  %call58 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %69) #5
  store i32 %call58, i32* %num_rows, align 4, !tbaa !5
  %70 = load i32, i32* %num_rows, align 4, !tbaa !5
  %71 = load i32, i32* %band_height, align 4, !tbaa !5
  %add59 = add nsw i32 %70, %71
  %sub = sub nsw i32 %add59, 1
  %72 = load i32, i32* %band_height, align 4, !tbaa !5
  %div60 = sdiv i32 %sub, %72
  store i32 %div60, i32* %band_num, align 4, !tbaa !5
  %73 = load i32, i32* %raster, align 4, !tbaa !5
  %74 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %cmp61 = icmp sgt i32 %73, %74
  br i1 %cmp61, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.end.56
  %75 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  store i32 %75, i32* %real_line_width, align 4, !tbaa !5
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.56
  %76 = load i32, i32* %raster, align 4, !tbaa !5
  store i32 %76, i32* %real_line_width, align 4, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.then.63
  store i32 0, i32* %y, align 4, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.221, %if.end.65
  %77 = load i32, i32* %i, align 4, !tbaa !5
  %78 = load i32, i32* %band_num, align 4, !tbaa !5
  %cmp66 = icmp slt i32 %77, %78
  br i1 %cmp66, label %for.body, label %for.end.223

for.body:                                         ; preds = %for.cond
  %79 = load i8*, i8** %ibp, align 8, !tbaa !1
  %80 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %call68 = call i8* @memset(i8* %79, i32 0, i64 %80) #6
  %81 = load i8*, i8** %obp, align 8, !tbaa !1
  %82 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %mul69 = mul nsw i64 %82, 13
  %div70 = sdiv i64 %mul69, 10
  %call71 = call i8* @memset(i8* %81, i32 0, i64 %div70) #6
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc, %for.body
  %83 = load i32, i32* %j, align 4, !tbaa !5
  %84 = load i32, i32* %band_height, align 4, !tbaa !5
  %cmp73 = icmp slt i32 %83, %84
  br i1 %cmp73, label %for.body.75, label %for.end

for.body.75:                                      ; preds = %for.cond.72
  %85 = load i8*, i8** %tmp, align 8, !tbaa !1
  %86 = load i32, i32* %raster, align 4, !tbaa !5
  %conv76 = sext i32 %86 to i64
  %call77 = call i8* @memset(i8* %85, i32 0, i64 %conv76) #6
  %87 = load i32, i32* %y, align 4, !tbaa !5
  %88 = load i32, i32* %num_rows, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %87, %88
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.75
  br label %for.end

if.end.81:                                        ; preds = %for.body.75
  %89 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %90 = load i32, i32* %y, align 4, !tbaa !5
  %inc = add nsw i32 %90, 1
  store i32 %inc, i32* %y, align 4, !tbaa !5
  %91 = load i8*, i8** %tmp, align 8, !tbaa !1
  %92 = load i32, i32* %raster, align 4, !tbaa !5
  %call82 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %89, i32 %90, i8* %91, i32 %92) #5
  store i32 %call82, i32* %code, align 4, !tbaa !5
  %93 = load i32, i32* %code, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %93, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.81
  br label %for.end

if.end.86:                                        ; preds = %if.end.81
  %94 = load i8*, i8** %ibp, align 8, !tbaa !1
  %95 = load i32, i32* %j, align 4, !tbaa !5
  %96 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %mul87 = mul nsw i32 %95, %96
  %idx.ext = sext i32 %mul87 to i64
  %add.ptr = getelementptr inbounds i8, i8* %94, i64 %idx.ext
  %97 = load i8*, i8** %tmp, align 8, !tbaa !1
  %98 = load i32, i32* %real_line_width, align 4, !tbaa !5
  %conv88 = sext i32 %98 to i64
  %call89 = call i8* @memcpy(i8* %add.ptr, i8* %97, i64 %conv88) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %99 = load i32, i32* %j, align 4, !tbaa !5
  %inc90 = add nsw i32 %99, 1
  store i32 %inc90, i32* %j, align 4, !tbaa !5
  br label %for.cond.72

for.end:                                          ; preds = %if.then.85, %if.then.80, %for.cond.72
  %100 = load i32, i32* %i, align 4, !tbaa !5
  %cmp91 = icmp sge i32 %100, 66
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.end
  br label %for.inc.221

if.end.94:                                        ; preds = %for.end
  %101 = load i64, i64* %ul_tiff_size, align 8, !tbaa !10
  store i64 %101, i64* %ul_min_size, align 8, !tbaa !10
  store i8 6, i8* %compression_type, align 1, !tbaa !9
  %102 = load i8, i8* %compression_type, align 1, !tbaa !9
  %conv95 = zext i8 %102 to i32
  switch i32 %conv95, label %sw.default.215 [
    i32 6, label %sw.bb.96
    i32 4, label %sw.bb.213
  ]

sw.bb.96:                                         ; preds = %if.end.94
  %103 = bitcast i32* %fudge to i8*
  call void @llvm.lifetime.start(i64 4, i8* %103) #2
  store i32 0, i32* %fudge, align 4, !tbaa !5
  %104 = bitcast i8** %use_band to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #2
  %105 = load i8*, i8** %ibp, align 8, !tbaa !1
  store i8* %105, i8** %use_band, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb.96
  %106 = load i8*, i8** %obp, align 8, !tbaa !1
  %107 = load i8*, i8** %use_band, align 8, !tbaa !1
  %108 = load i32, i32* %band_height, align 4, !tbaa !5
  %109 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %call99 = call i64 @FrameTiffComp(i8* %106, i8* %107, i32 %108, i32 %109, i8 zeroext 0) #5
  store i64 %call99, i64* %ul_comp_size, align 8, !tbaa !10
  %110 = load i64, i64* %ul_comp_size, align 8, !tbaa !10
  %cmp100 = icmp sgt i64 %110, 65527
  br i1 %cmp100, label %if.then.102, label %if.end.199

if.then.102:                                      ; preds = %do.body
  %111 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %111) #2
  %112 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %112) #2
  %113 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %113) #2
  %114 = load i32, i32* %fudge, align 4, !tbaa !5
  %tobool106 = icmp ne i32 %114, 0
  br i1 %tobool106, label %if.end.118, label %if.then.107

if.then.107:                                      ; preds = %if.then.102
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory108 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory108, align 8, !tbaa !12
  %non_gc_memory109 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %116, i32 0, i32 3
  %117 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory109, align 8, !tbaa !27
  %non_gc_memory110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %117, i32 0, i32 3
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory110, align 8, !tbaa !27
  %procs111 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 1
  %alloc_byte_array112 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs111, i32 0, i32 10
  %119 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array112, align 8, !tbaa !30
  %120 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory113 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %120, i32 0, i32 3
  %121 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !12
  %non_gc_memory114 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory114, align 8, !tbaa !27
  %non_gc_memory115 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory115, align 8, !tbaa !27
  %124 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %conv116 = trunc i64 %124 to i32
  %call117 = call i8* %119(%struct.gs_memory_s* %123, i32 %conv116, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  store i8* %call117, i8** %use_band, align 8, !tbaa !1
  store i32 1, i32* %fudge, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.107, %if.then.102
  %125 = load i8*, i8** %use_band, align 8, !tbaa !1
  %126 = load i8*, i8** %ibp, align 8, !tbaa !1
  %127 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %call119 = call i8* @memcpy(i8* %125, i8* %126, i64 %127) #6
  %128 = load i32, i32* %fudge, align 4, !tbaa !5
  %inc120 = add nsw i32 %128, 1
  store i32 %inc120, i32* %fudge, align 4, !tbaa !5
  store i32 0, i32* %f, align 4, !tbaa !5
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.196, %if.end.118
  %129 = load i32, i32* %f, align 4, !tbaa !5
  %conv122 = sext i32 %129 to i64
  %130 = load i64, i64* %ul_band_size, align 8, !tbaa !10
  %cmp123 = icmp slt i64 %conv122, %130
  br i1 %cmp123, label %for.body.125, label %for.end.198

for.body.125:                                     ; preds = %for.cond.121
  %131 = load i32, i32* %fudge, align 4, !tbaa !5
  %cmp126 = icmp eq i32 %131, 2
  br i1 %cmp126, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.125
  %132 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom128 = sext i32 %132 to i64
  %133 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds i8, i8* %133, i64 %idxprom128
  %134 = load i8, i8* %arrayidx129, align 1, !tbaa !9
  %conv130 = zext i8 %134 to i32
  %shr = ashr i32 %conv130, 6
  %and = and i32 %shr, 3
  %tobool131 = icmp ne i32 %and, 0
  %cond = select i1 %tobool131, i32 3, i32 0
  %shl = shl i32 %cond, 6
  %135 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom132 = sext i32 %135 to i64
  %136 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds i8, i8* %136, i64 %idxprom132
  %137 = load i8, i8* %arrayidx133, align 1, !tbaa !9
  %conv134 = zext i8 %137 to i32
  %shr135 = ashr i32 %conv134, 4
  %and136 = and i32 %shr135, 3
  %tobool137 = icmp ne i32 %and136, 0
  %cond138 = select i1 %tobool137, i32 3, i32 0
  %shl139 = shl i32 %cond138, 4
  %or = or i32 %shl, %shl139
  %138 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom140 = sext i32 %138 to i64
  %139 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds i8, i8* %139, i64 %idxprom140
  %140 = load i8, i8* %arrayidx141, align 1, !tbaa !9
  %conv142 = zext i8 %140 to i32
  %shr143 = ashr i32 %conv142, 2
  %and144 = and i32 %shr143, 3
  %tobool145 = icmp ne i32 %and144, 0
  %cond146 = select i1 %tobool145, i32 3, i32 0
  %shl147 = shl i32 %cond146, 2
  %or148 = or i32 %or, %shl147
  %141 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom149 = sext i32 %141 to i64
  %142 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds i8, i8* %142, i64 %idxprom149
  %143 = load i8, i8* %arrayidx150, align 1, !tbaa !9
  %conv151 = zext i8 %143 to i32
  %shr152 = ashr i32 %conv151, 0
  %and153 = and i32 %shr152, 3
  %tobool154 = icmp ne i32 %and153, 0
  %cond155 = select i1 %tobool154, i32 3, i32 0
  %or156 = or i32 %or148, %cond155
  br label %cond.end.191

cond.false:                                       ; preds = %for.body.125
  %144 = load i32, i32* %fudge, align 4, !tbaa !5
  %cmp157 = icmp eq i32 %144, 3
  br i1 %cmp157, label %cond.true.159, label %cond.false.176

cond.true.159:                                    ; preds = %cond.false
  %145 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom160 = sext i32 %145 to i64
  %146 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds i8, i8* %146, i64 %idxprom160
  %147 = load i8, i8* %arrayidx161, align 1, !tbaa !9
  %conv162 = zext i8 %147 to i32
  %shr163 = ashr i32 %conv162, 4
  %and164 = and i32 %shr163, 15
  %tobool165 = icmp ne i32 %and164, 0
  %cond166 = select i1 %tobool165, i32 15, i32 0
  %shl167 = shl i32 %cond166, 4
  %148 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom168 = sext i32 %148 to i64
  %149 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds i8, i8* %149, i64 %idxprom168
  %150 = load i8, i8* %arrayidx169, align 1, !tbaa !9
  %conv170 = zext i8 %150 to i32
  %shr171 = ashr i32 %conv170, 0
  %and172 = and i32 %shr171, 15
  %tobool173 = icmp ne i32 %and172, 0
  %cond174 = select i1 %tobool173, i32 15, i32 0
  %or175 = or i32 %shl167, %cond174
  br label %cond.end.189

cond.false.176:                                   ; preds = %cond.false
  %151 = load i32, i32* %fudge, align 4, !tbaa !5
  %cmp177 = icmp eq i32 %151, 4
  br i1 %cmp177, label %cond.true.179, label %cond.false.187

cond.true.179:                                    ; preds = %cond.false.176
  %152 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom180 = sext i32 %152 to i64
  %153 = load i8*, i8** %ibp, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds i8, i8* %153, i64 %idxprom180
  %154 = load i8, i8* %arrayidx181, align 1, !tbaa !9
  %conv182 = zext i8 %154 to i32
  %shr183 = ashr i32 %conv182, 0
  %and184 = and i32 %shr183, 255
  %tobool185 = icmp ne i32 %and184, 0
  %cond186 = select i1 %tobool185, i32 15, i32 0
  br label %cond.end

cond.false.187:                                   ; preds = %cond.false.176
  br label %cond.end

cond.end:                                         ; preds = %cond.false.187, %cond.true.179
  %cond188 = phi i32 [ %cond186, %cond.true.179 ], [ 0, %cond.false.187 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end, %cond.true.159
  %cond190 = phi i32 [ %or175, %cond.true.159 ], [ %cond188, %cond.end ]
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.end.189, %cond.true
  %cond192 = phi i32 [ %or156, %cond.true ], [ %cond190, %cond.end.189 ]
  %conv193 = trunc i32 %cond192 to i8
  %155 = load i32, i32* %f, align 4, !tbaa !5
  %idxprom194 = sext i32 %155 to i64
  %156 = load i8*, i8** %use_band, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds i8, i8* %156, i64 %idxprom194
  store i8 %conv193, i8* %arrayidx195, align 1, !tbaa !9
  br label %for.inc.196

for.inc.196:                                      ; preds = %cond.end.191
  %157 = load i32, i32* %f, align 4, !tbaa !5
  %inc197 = add nsw i32 %157, 1
  store i32 %inc197, i32* %f, align 4, !tbaa !5
  br label %for.cond.121

for.end.198:                                      ; preds = %for.cond.121
  %158 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  br label %if.end.199

if.end.199:                                       ; preds = %for.end.198, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.199
  %161 = load i64, i64* %ul_comp_size, align 8, !tbaa !10
  %cmp200 = icmp sgt i64 %161, 65527
  br i1 %cmp200, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %oh_well

oh_well:                                          ; preds = %do.end
  %162 = load i32, i32* %fudge, align 4, !tbaa !5
  %cmp202 = icmp sgt i32 %162, 1
  br i1 %cmp202, label %if.then.204, label %if.end.212

if.then.204:                                      ; preds = %oh_well
  %163 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory205 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %163, i32 0, i32 3
  %164 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory205, align 8, !tbaa !12
  %non_gc_memory206 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %164, i32 0, i32 3
  %165 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory206, align 8, !tbaa !27
  %non_gc_memory207 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %165, i32 0, i32 3
  %166 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory207, align 8, !tbaa !27
  %procs208 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %166, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs208, i32 0, i32 2
  %167 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !31
  %168 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory209 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %168, i32 0, i32 3
  %169 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory209, align 8, !tbaa !12
  %non_gc_memory210 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %169, i32 0, i32 3
  %170 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory210, align 8, !tbaa !27
  %non_gc_memory211 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %170, i32 0, i32 3
  %171 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory211, align 8, !tbaa !27
  %172 = load i8*, i8** %use_band, align 8, !tbaa !1
  call void %167(%struct.gs_memory_s* %171, i8* %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)) #5
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.204, %oh_well
  %173 = bitcast i8** %use_band to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #2
  %174 = bitcast i32* %fudge to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #2
  br label %sw.epilog.217

sw.bb.213:                                        ; preds = %if.end.94
  %175 = load i8*, i8** %obp, align 8, !tbaa !1
  %176 = load i8*, i8** %ibp, align 8, !tbaa !1
  %177 = load i32, i32* %band_height, align 4, !tbaa !5
  %178 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %call214 = call i64 @bmp2run(i8* %175, i8* %176, i32 %177, i32 %178, i8 zeroext 0) #5
  store i64 %call214, i64* %ul_comp_size, align 8, !tbaa !10
  br label %sw.epilog.217

sw.default.215:                                   ; preds = %if.end.94
  %179 = load i8*, i8** %obp, align 8, !tbaa !1
  %180 = load i8*, i8** %ibp, align 8, !tbaa !1
  %181 = load i32, i32* %band_height, align 4, !tbaa !5
  %182 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %call216 = call i64 @FrameTiffComp(i8* %179, i8* %180, i32 %181, i32 %182, i8 zeroext 0) #5
  store i64 %call216, i64* %ul_comp_size, align 8, !tbaa !10
  store i8 6, i8* %compression_type, align 1, !tbaa !9
  br label %sw.epilog.217

sw.epilog.217:                                    ; preds = %sw.default.215, %sw.bb.213, %if.end.212
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %184 = load i32, i32* %i, align 4, !tbaa !5
  %185 = load i8, i8* %compression_type, align 1, !tbaa !9
  %186 = load i32, i32* %band_width_bytes, align 4, !tbaa !5
  %mul218 = mul nsw i32 %186, 8
  %187 = load i32, i32* %band_height, align 4, !tbaa !5
  %188 = load i64, i64* %ul_comp_size, align 8, !tbaa !10
  %call219 = call %struct._IO_FILE* @WriteBandHeader(%struct._IO_FILE* %183, i32 %184, i8 zeroext %185, i32 %mul218, i32 %187, i64 %188) #5
  store %struct._IO_FILE* %call219, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %189 = load i8*, i8** %obp, align 8, !tbaa !1
  %190 = load i64, i64* %ul_comp_size, align 8, !tbaa !10
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call220 = call i64 @fwrite(i8* %189, i64 %190, i64 1, %struct._IO_FILE* %191) #5
  br label %for.inc.221

for.inc.221:                                      ; preds = %sw.epilog.217, %if.then.93
  %192 = load i32, i32* %i, align 4, !tbaa !5
  %inc222 = add nsw i32 %192, 1
  store i32 %inc222, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.223:                                      ; preds = %for.cond
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call224 = call %struct._IO_FILE* @WriteTrailerData(%struct._IO_FILE* %193) #5
  %194 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory225 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %194, i32 0, i32 3
  %195 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory225, align 8, !tbaa !12
  %non_gc_memory226 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %195, i32 0, i32 3
  %196 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory226, align 8, !tbaa !27
  %non_gc_memory227 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %196, i32 0, i32 3
  %197 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory227, align 8, !tbaa !27
  %procs228 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %197, i32 0, i32 1
  %free_object229 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs228, i32 0, i32 2
  %198 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object229, align 8, !tbaa !31
  %199 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory230 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %199, i32 0, i32 3
  %200 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory230, align 8, !tbaa !12
  %non_gc_memory231 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %200, i32 0, i32 3
  %201 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory231, align 8, !tbaa !27
  %non_gc_memory232 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %201, i32 0, i32 3
  %202 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory232, align 8, !tbaa !27
  %203 = load i8*, i8** %ibp, align 8, !tbaa !1
  call void %198(%struct.gs_memory_s* %202, i8* %203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %204 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory233 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %204, i32 0, i32 3
  %205 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory233, align 8, !tbaa !12
  %non_gc_memory234 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %205, i32 0, i32 3
  %206 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory234, align 8, !tbaa !27
  %non_gc_memory235 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %206, i32 0, i32 3
  %207 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory235, align 8, !tbaa !27
  %procs236 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %207, i32 0, i32 1
  %free_object237 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs236, i32 0, i32 2
  %208 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object237, align 8, !tbaa !31
  %209 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory238 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %209, i32 0, i32 3
  %210 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory238, align 8, !tbaa !12
  %non_gc_memory239 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %210, i32 0, i32 3
  %211 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory239, align 8, !tbaa !27
  %non_gc_memory240 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %211, i32 0, i32 3
  %212 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory240, align 8, !tbaa !27
  %213 = load i8*, i8** %obp, align 8, !tbaa !1
  call void %208(%struct.gs_memory_s* %212, i8* %213, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %214 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory241 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %214, i32 0, i32 3
  %215 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory241, align 8, !tbaa !12
  %non_gc_memory242 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %215, i32 0, i32 3
  %216 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory242, align 8, !tbaa !27
  %non_gc_memory243 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %216, i32 0, i32 3
  %217 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory243, align 8, !tbaa !27
  %procs244 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %217, i32 0, i32 1
  %free_object245 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs244, i32 0, i32 2
  %218 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object245, align 8, !tbaa !31
  %219 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory246 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %219, i32 0, i32 3
  %220 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory246, align 8, !tbaa !12
  %non_gc_memory247 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %220, i32 0, i32 3
  %221 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory247, align 8, !tbaa !27
  %non_gc_memory248 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %221, i32 0, i32 3
  %222 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory248, align 8, !tbaa !27
  %223 = load i8*, i8** %tmp, align 8, !tbaa !1
  call void %218(%struct.gs_memory_s* %222, i8* %223, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)) #5
  %224 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %224, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.223, %if.then.55, %if.then.49, %if.then.46, %if.then.43
  call void @llvm.lifetime.end(i64 1, i8* %compression_type) #2
  call void @llvm.lifetime.end(i64 1, i8* %paper_type) #2
  %225 = bitcast i8** %tmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %225) #2
  %226 = bitcast i8** %obp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %226) #2
  %227 = bitcast i8** %ibp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %227) #2
  %228 = bitcast i64* %ul_min_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %228) #2
  %229 = bitcast i64* %ul_tiff_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %229) #2
  %230 = bitcast i64* %ul_comp_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %230) #2
  %231 = bitcast i64* %ul_band_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %231) #2
  %232 = bitcast i32* %real_line_width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %232) #2
  %233 = bitcast i32* %raster to i8*
  call void @llvm.lifetime.end(i64 4, i8* %233) #2
  %234 = bitcast i32* %dots_per_inch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #2
  %235 = bitcast i32* %band_num to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #2
  %236 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #2
  %237 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %237) #2
  %238 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %238) #2
  %239 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %239) #2
  %240 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i32* %band_height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i32* %band_width_bytes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  %243 = load i32, i32* %retval
  ret i32 %243
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
define i64 @SaveScanData(i8* %out_buf, i16 zeroext %us1Cnt, i16 zeroext %usDy, i16 zeroext %usPosX10, i16 zeroext %usPosX01, i16 zeroext %usWarp) #1 {
entry:
  %out_buf.addr = alloca i8*, align 8
  %us1Cnt.addr = alloca i16, align 2
  %usDy.addr = alloca i16, align 2
  %usPosX10.addr = alloca i16, align 2
  %usPosX01.addr = alloca i16, align 2
  %usWarp.addr = alloca i16, align 2
  %sDisX = alloca i16, align 2
  %lRet = alloca i64, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i16 %us1Cnt, i16* %us1Cnt.addr, align 2, !tbaa !32
  store i16 %usDy, i16* %usDy.addr, align 2, !tbaa !32
  store i16 %usPosX10, i16* %usPosX10.addr, align 2, !tbaa !32
  store i16 %usPosX01, i16* %usPosX01.addr, align 2, !tbaa !32
  store i16 %usWarp, i16* %usWarp.addr, align 2, !tbaa !32
  %0 = bitcast i16* %sDisX to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i64* %lRet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i16, i16* %usPosX01.addr, align 2, !tbaa !32
  %conv = zext i16 %2 to i32
  %3 = load i16, i16* %usPosX10.addr, align 2, !tbaa !32
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i16
  store i16 %conv2, i16* %sDisX, align 2, !tbaa !32
  %4 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv3 = zext i16 %4 to i32
  %cmp = icmp sgt i32 %conv3, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %conv5 = zext i16 %5 to i32
  %cmp6 = icmp sgt i32 %conv5, 4095
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %7 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %8 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %9 = load i16, i16* %sDisX, align 2, !tbaa !32
  %10 = load i16, i16* %usWarp.addr, align 2, !tbaa !32
  %call = call i64 @Save6Bytes(i8* %6, i16 zeroext %7, i16 zeroext %8, i16 signext %9, i16 zeroext %10) #5
  store i64 6, i64* %lRet, align 8, !tbaa !10
  br label %if.end.27

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv8 = zext i16 %11 to i32
  %cmp9 = icmp sgt i32 %conv8, 1
  br i1 %cmp9, label %if.then.23, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.else
  %12 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %conv12 = zext i16 %12 to i32
  %cmp13 = icmp sgt i32 %conv12, 63
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %13 = load i16, i16* %sDisX, align 2, !tbaa !32
  %conv16 = sext i16 %13 to i32
  %cmp17 = icmp sgt i32 %conv16, 127
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %14 = load i16, i16* %sDisX, align 2, !tbaa !32
  %conv20 = sext i16 %14 to i32
  %cmp21 = icmp slt i32 %conv20, -128
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %if.else
  %15 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %16 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %17 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %18 = load i16, i16* %sDisX, align 2, !tbaa !32
  %call24 = call i64 @Save4Bytes(i8* %15, i16 zeroext %16, i16 zeroext %17, i16 signext %18) #5
  store i64 4, i64* %lRet, align 8, !tbaa !10
  br label %if.end

if.else.25:                                       ; preds = %lor.lhs.false.19
  %19 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %20 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %21 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %22 = load i16, i16* %sDisX, align 2, !tbaa !32
  %call26 = call i64 @Save2Bytes(i8* %19, i16 zeroext %20, i16 zeroext %21, i16 signext %22) #5
  store i64 2, i64* %lRet, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then
  %23 = load i64, i64* %lRet, align 8, !tbaa !10
  %24 = bitcast i64* %lRet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #2
  %25 = bitcast i16* %sDisX to i8*
  call void @llvm.lifetime.end(i64 2, i8* %25) #2
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define i64 @UpdateScanSize(i8* %out_buf, i16 zeroext %us1Cnt, i16 zeroext %usDy, i16 zeroext %usPosX10, i16 zeroext %usPosX01, i16 zeroext %usWarp) #1 {
entry:
  %out_buf.addr = alloca i8*, align 8
  %us1Cnt.addr = alloca i16, align 2
  %usDy.addr = alloca i16, align 2
  %usPosX10.addr = alloca i16, align 2
  %usPosX01.addr = alloca i16, align 2
  %usWarp.addr = alloca i16, align 2
  %sDisX = alloca i16, align 2
  %lRet = alloca i64, align 8
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i16 %us1Cnt, i16* %us1Cnt.addr, align 2, !tbaa !32
  store i16 %usDy, i16* %usDy.addr, align 2, !tbaa !32
  store i16 %usPosX10, i16* %usPosX10.addr, align 2, !tbaa !32
  store i16 %usPosX01, i16* %usPosX01.addr, align 2, !tbaa !32
  store i16 %usWarp, i16* %usWarp.addr, align 2, !tbaa !32
  %0 = bitcast i16* %sDisX to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = bitcast i64* %lRet to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = load i16, i16* %usPosX01.addr, align 2, !tbaa !32
  %conv = zext i16 %2 to i32
  %3 = load i16, i16* %usPosX10.addr, align 2, !tbaa !32
  %conv1 = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i16
  store i16 %conv2, i16* %sDisX, align 2, !tbaa !32
  %4 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv3 = zext i16 %4 to i32
  %cmp = icmp sgt i32 %conv3, 3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %conv5 = zext i16 %5 to i32
  %cmp6 = icmp sgt i32 %conv5, 4095
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 6, i64* %lRet, align 8, !tbaa !10
  br label %if.end.25

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv8 = zext i16 %6 to i32
  %cmp9 = icmp sgt i32 %conv8, 1
  br i1 %cmp9, label %if.then.23, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.else
  %7 = load i16, i16* %us1Cnt.addr, align 2, !tbaa !32
  %conv12 = zext i16 %7 to i32
  %cmp13 = icmp sgt i32 %conv12, 63
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %8 = load i16, i16* %sDisX, align 2, !tbaa !32
  %conv16 = sext i16 %8 to i32
  %cmp17 = icmp sgt i32 %conv16, 127
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %9 = load i16, i16* %sDisX, align 2, !tbaa !32
  %conv20 = sext i16 %9 to i32
  %cmp21 = icmp slt i32 %conv20, -128
  br i1 %cmp21, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %if.else
  store i64 4, i64* %lRet, align 8, !tbaa !10
  br label %if.end

if.else.24:                                       ; preds = %lor.lhs.false.19
  store i64 2, i64* %lRet, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else.24, %if.then.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %10 = load i64, i64* %lRet, align 8, !tbaa !10
  %11 = bitcast i64* %lRet to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = bitcast i16* %sDisX to i8*
  call void @llvm.lifetime.end(i64 2, i8* %12) #2
  ret i64 %10
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i64 @Save6Bytes(i8* %out_buf, i16 zeroext %usDy, i16 zeroext %usRl, i16 signext %sDx, i16 zeroext %usWarp) #1 {
entry:
  %out_buf.addr = alloca i8*, align 8
  %usDy.addr = alloca i16, align 2
  %usRl.addr = alloca i16, align 2
  %sDx.addr = alloca i16, align 2
  %usWarp.addr = alloca i16, align 2
  %ultmp_dat = alloca i64, align 8
  %lWarp = alloca i64, align 8
  %lDis = alloca i64, align 8
  %ustmp_dat = alloca i16, align 2
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i16 %usDy, i16* %usDy.addr, align 2, !tbaa !32
  store i16 %usRl, i16* %usRl.addr, align 2, !tbaa !32
  store i16 %sDx, i16* %sDx.addr, align 2, !tbaa !32
  store i16 %usWarp, i16* %usWarp.addr, align 2, !tbaa !32
  %0 = bitcast i64* %ultmp_dat to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i64* %lWarp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %lDis to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i16* %ustmp_dat to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load i16, i16* %usWarp.addr, align 2, !tbaa !32
  %conv = zext i16 %4 to i32
  %shl = shl i32 %conv, 3
  %conv1 = sext i32 %shl to i64
  store i64 %conv1, i64* %lWarp, align 8, !tbaa !10
  %5 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv2 = zext i16 %5 to i64
  %6 = load i64, i64* %lWarp, align 8, !tbaa !10
  %mul = mul nsw i64 %conv2, %6
  %7 = load i16, i16* %sDx.addr, align 2, !tbaa !32
  %conv3 = sext i16 %7 to i64
  %add = add nsw i64 %mul, %conv3
  store i64 %add, i64* %lDis, align 8, !tbaa !10
  store i64 3221225472, i64* %ultmp_dat, align 8, !tbaa !10
  %8 = load i64, i64* %lDis, align 8, !tbaa !10
  %cmp = icmp slt i64 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %ultmp_dat, align 8, !tbaa !10
  %or = or i64 %9, 536870912
  store i64 %or, i64* %ultmp_dat, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, i64* %lDis, align 8, !tbaa !10
  %and = and i64 %10, 536870911
  %11 = load i64, i64* %ultmp_dat, align 8, !tbaa !10
  %or5 = or i64 %11, %and
  store i64 %or5, i64* %ultmp_dat, align 8, !tbaa !10
  %12 = load i64, i64* %ultmp_dat, align 8, !tbaa !10
  %and6 = and i64 %12, 4278190080
  %shr = lshr i64 %and6, 24
  %conv7 = trunc i64 %shr to i8
  %13 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv7, i8* %13, align 1, !tbaa !9
  %14 = load i64, i64* %ultmp_dat, align 8, !tbaa !10
  %and8 = and i64 %14, 16711680
  %shr9 = lshr i64 %and8, 16
  %conv10 = trunc i64 %shr9 to i8
  %15 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %15, align 1, !tbaa !9
  %16 = load i64, i64* %ultmp_dat, align 8, !tbaa !10
  %and12 = and i64 %16, 65280
  %shr13 = lshr i64 %and12, 8
  %conv14 = trunc i64 %shr13 to i8
  %17 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr15, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv14, i8* %17, align 1, !tbaa !9
  %18 = load i64, i64* %ultmp_dat, align 8, !tbaa !10
  %and16 = and i64 %18, 255
  %conv17 = trunc i64 %and16 to i8
  %19 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr18, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv17, i8* %19, align 1, !tbaa !9
  store i16 -16384, i16* %ustmp_dat, align 2, !tbaa !32
  %20 = load i16, i16* %usRl.addr, align 2, !tbaa !32
  %conv19 = zext i16 %20 to i32
  %and20 = and i32 %conv19, 16383
  %21 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv21 = zext i16 %21 to i32
  %or22 = or i32 %conv21, %and20
  %conv23 = trunc i32 %or22 to i16
  store i16 %conv23, i16* %ustmp_dat, align 2, !tbaa !32
  %22 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv24 = zext i16 %22 to i32
  %and25 = and i32 %conv24, 65280
  %shr26 = ashr i32 %and25, 8
  %conv27 = trunc i32 %shr26 to i8
  %23 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr28, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv27, i8* %23, align 1, !tbaa !9
  %24 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv29 = zext i16 %24 to i32
  %and30 = and i32 %conv29, 255
  %conv31 = trunc i32 %and30 to i8
  %25 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr32, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv31, i8* %25, align 1, !tbaa !9
  %26 = bitcast i16* %ustmp_dat to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #2
  %27 = bitcast i64* %lDis to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = bitcast i64* %lWarp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %28) #2
  %29 = bitcast i64* %ultmp_dat to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  ret i64 6
}

; Function Attrs: nounwind uwtable
define internal i64 @Save4Bytes(i8* %out_buf, i16 zeroext %usDy, i16 zeroext %usRl, i16 signext %sDx) #1 {
entry:
  %out_buf.addr = alloca i8*, align 8
  %usDy.addr = alloca i16, align 2
  %usRl.addr = alloca i16, align 2
  %sDx.addr = alloca i16, align 2
  %ustmp_dat = alloca i16, align 2
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i16 %usDy, i16* %usDy.addr, align 2, !tbaa !32
  store i16 %usRl, i16* %usRl.addr, align 2, !tbaa !32
  store i16 %sDx, i16* %sDx.addr, align 2, !tbaa !32
  %0 = bitcast i16* %ustmp_dat to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  store i16 -32768, i16* %ustmp_dat, align 2, !tbaa !32
  %1 = load i16, i16* %sDx.addr, align 2, !tbaa !32
  %conv = sext i16 %1 to i32
  %cmp = icmp slt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv2 = zext i16 %2 to i32
  %or = or i32 %conv2, 8192
  %conv3 = trunc i32 %or to i16
  store i16 %conv3, i16* %ustmp_dat, align 2, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i16, i16* %sDx.addr, align 2, !tbaa !32
  %conv4 = sext i16 %3 to i32
  %and = and i32 %conv4, 8191
  %4 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv5 = zext i16 %4 to i32
  %or6 = or i32 %conv5, %and
  %conv7 = trunc i32 %or6 to i16
  store i16 %conv7, i16* %ustmp_dat, align 2, !tbaa !32
  %5 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv8 = zext i16 %5 to i32
  %and9 = and i32 %conv8, 65280
  %shr = ashr i32 %and9, 8
  %conv10 = trunc i32 %shr to i8
  %6 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv10, i8* %6, align 1, !tbaa !9
  %7 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv11 = zext i16 %7 to i32
  %and12 = and i32 %conv11, 255
  %conv13 = trunc i32 %and12 to i8
  %8 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr14 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr14, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv13, i8* %8, align 1, !tbaa !9
  store i16 -32768, i16* %ustmp_dat, align 2, !tbaa !32
  %9 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv15 = zext i16 %9 to i32
  %and16 = and i32 %conv15, 3
  %shl = shl i32 %and16, 12
  %10 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv17 = zext i16 %10 to i32
  %or18 = or i32 %conv17, %shl
  %conv19 = trunc i32 %or18 to i16
  store i16 %conv19, i16* %ustmp_dat, align 2, !tbaa !32
  %11 = load i16, i16* %usRl.addr, align 2, !tbaa !32
  %conv20 = zext i16 %11 to i32
  %and21 = and i32 %conv20, 4095
  %12 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv22 = zext i16 %12 to i32
  %or23 = or i32 %conv22, %and21
  %conv24 = trunc i32 %or23 to i16
  store i16 %conv24, i16* %ustmp_dat, align 2, !tbaa !32
  %13 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv25 = zext i16 %13 to i32
  %and26 = and i32 %conv25, 65280
  %shr27 = ashr i32 %and26, 8
  %conv28 = trunc i32 %shr27 to i8
  %14 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr29, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv28, i8* %14, align 1, !tbaa !9
  %15 = load i16, i16* %ustmp_dat, align 2, !tbaa !32
  %conv30 = zext i16 %15 to i32
  %and31 = and i32 %conv30, 255
  %conv32 = trunc i32 %and31 to i8
  %16 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr33 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr33, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %conv32, i8* %16, align 1, !tbaa !9
  %17 = bitcast i16* %ustmp_dat to i8*
  call void @llvm.lifetime.end(i64 2, i8* %17) #2
  ret i64 4
}

; Function Attrs: nounwind uwtable
define internal i64 @Save2Bytes(i8* %out_buf, i16 zeroext %usDy, i16 zeroext %usRl, i16 signext %sDx) #1 {
entry:
  %out_buf.addr = alloca i8*, align 8
  %usDy.addr = alloca i16, align 2
  %usRl.addr = alloca i16, align 2
  %sDx.addr = alloca i16, align 2
  %ubtmp_dat = alloca i8, align 1
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i16 %usDy, i16* %usDy.addr, align 2, !tbaa !32
  store i16 %usRl, i16* %usRl.addr, align 2, !tbaa !32
  store i16 %sDx, i16* %sDx.addr, align 2, !tbaa !32
  call void @llvm.lifetime.start(i64 1, i8* %ubtmp_dat) #2
  store i8 0, i8* %ubtmp_dat, align 1, !tbaa !9
  %0 = load i16, i16* %usDy.addr, align 2, !tbaa !32
  %conv = zext i16 %0 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %ubtmp_dat, align 1, !tbaa !9
  %conv2 = zext i8 %1 to i32
  %or = or i32 %conv2, 64
  %conv3 = trunc i32 %or to i8
  store i8 %conv3, i8* %ubtmp_dat, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i16, i16* %usRl.addr, align 2, !tbaa !32
  %conv4 = zext i16 %2 to i32
  %and = and i32 %conv4, 63
  %3 = load i8, i8* %ubtmp_dat, align 1, !tbaa !9
  %conv5 = zext i8 %3 to i32
  %or6 = or i32 %conv5, %and
  %conv7 = trunc i32 %or6 to i8
  store i8 %conv7, i8* %ubtmp_dat, align 1, !tbaa !9
  %4 = load i8, i8* %ubtmp_dat, align 1, !tbaa !9
  %5 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %4, i8* %5, align 1, !tbaa !9
  %6 = load i16, i16* %sDx.addr, align 2, !tbaa !32
  %conv8 = sext i16 %6 to i32
  %cmp9 = icmp slt i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  store i8 -128, i8* %ubtmp_dat, align 1, !tbaa !9
  br label %if.end.12

if.else:                                          ; preds = %if.end
  store i8 0, i8* %ubtmp_dat, align 1, !tbaa !9
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  %7 = load i16, i16* %sDx.addr, align 2, !tbaa !32
  %conv13 = trunc i16 %7 to i8
  %conv14 = zext i8 %conv13 to i32
  %and15 = and i32 %conv14, 127
  %8 = load i8, i8* %ubtmp_dat, align 1, !tbaa !9
  %conv16 = zext i8 %8 to i32
  %or17 = or i32 %conv16, %and15
  %conv18 = trunc i32 %or17 to i8
  store i8 %conv18, i8* %ubtmp_dat, align 1, !tbaa !9
  %9 = load i8, i8* %ubtmp_dat, align 1, !tbaa !9
  %10 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr19, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %9, i8* %10, align 1, !tbaa !9
  call void @llvm.lifetime.end(i64 1, i8* %ubtmp_dat) #2
  ret i64 2
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @gdi_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %m = alloca float*, align 8
  %move_origin = alloca i32, align 4
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast float** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  store float* null, float** %m, align 8, !tbaa !1
  %1 = bitcast i32* %move_origin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  store i32 1, i32* %move_origin, align 4, !tbaa !5
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %2) #5
  %cmp = icmp eq i32 %call, 26
  %cond = select i1 %cmp, float* getelementptr inbounds ([4 x float], [4 x float]* @gdi_open.m_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @gdi_open.m_letter, i32 0, i32 0)
  store float* %cond, float** %m, align 8, !tbaa !1
  store i32 0, i32* %move_origin, align 4, !tbaa !5
  %3 = load float*, float** %m, align 8, !tbaa !1
  %cmp1 = icmp ne float* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %5 = load float*, float** %m, align 8, !tbaa !1
  %6 = load i32, i32* %move_origin, align 4, !tbaa !5
  call void @gx_device_set_margins(%struct.gx_device_s* %4, float* %5, i32 %6) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_open(%struct.gx_device_s* %7) #5
  %8 = bitcast i32* %move_origin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #2
  %9 = bitcast float** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %9) #2
  ret i32 %call2
}

declare i32 @gdev_prn_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @gdi_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %1 = bitcast %struct.gx_device_s* %0 to %struct.gx_device_printer_s*
  %Duplex_set = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %1, i32 0, i32 50
  %2 = load i32, i32* %Duplex_set, align 4, !tbaa !33
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %4 = bitcast %struct.gx_device_s* %3 to %struct.gx_device_printer_s*
  %Duplex = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 49
  %5 = load i32, i32* %Duplex, align 4, !tbaa !34
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %6, i32 1) #5
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %8 = bitcast %struct.gx_device_s* %7 to %struct.gx_device_printer_s*
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 52
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !35
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_close(%struct.gx_device_s* %10) #5
  ret i32 %call2
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

declare i32 @gdev_pcl_paper_size(%struct.gx_device_s*) #0

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @WritePJLHeaderData(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %fp) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ulSize = alloca i64, align 8
  %buffer = alloca [300 x i8], align 16
  %dots_per_inch = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i64* %ulSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [300 x i8]* %buffer to i8*
  call void @llvm.lifetime.start(i64 300, i8* %1) #2
  %2 = bitcast i32* %dots_per_inch to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %3, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 1
  %4 = load float, float* %arrayidx, align 4, !tbaa !7
  %conv = fptosi float %4 to i32
  store i32 %conv, i32* %dots_per_inch, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)) #6
  %arraydecay1 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call2 = call i8* @strcat(i8* %arraydecay1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0)) #6
  %arraydecay3 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call4 = call i8* @strcat(i8* %arraydecay3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0)) #6
  %arraydecay5 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call6 = call i8* @strcat(i8* %arraydecay5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0)) #6
  %arraydecay7 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call8 = call i8* @strcat(i8* %arraydecay7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i32 0, i32 0)) #6
  %arraydecay9 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call10 = call i8* @strcat(i8* %arraydecay9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)) #6
  %5 = load i32, i32* %dots_per_inch, align 4, !tbaa !5
  %cmp = icmp eq i32 %5, 600
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay12 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call13 = call i8* @strcat(i8* %arraydecay12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay14 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call15 = call i8* @strcat(i8* %arraydecay14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay16 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call17 = call i8* @strcat(i8* %arraydecay16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0)) #6
  %6 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %7 = bitcast %struct.gx_device_printer_s* %6 to %struct.gx_device_s*
  %call18 = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %7) #5
  switch i32 %call18, label %sw.default [
    i32 26, label %sw.bb
    i32 2, label %sw.bb.21
    i32 3, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %if.end
  %arraydecay19 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call20 = call i8* @strcat(i8* %arraydecay19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end
  %arraydecay22 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call23 = call i8* @strcat(i8* %arraydecay22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end
  %arraydecay25 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call26 = call i8* @strcat(i8* %arraydecay25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0)) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %arraydecay27 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call28 = call i8* @strcat(i8* %arraydecay27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i32 0, i32 0)) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.24, %sw.bb.21, %sw.bb
  %arraydecay29 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call30 = call i8* @strcat(i8* %arraydecay29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0)) #6
  %arraydecay31 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %call32 = call i64 @strlen(i8* %arraydecay31) #7
  store i64 %call32, i64* %ulSize, align 8, !tbaa !10
  %arraydecay33 = getelementptr inbounds [300 x i8], [300 x i8]* %buffer, i32 0, i32 0
  %8 = load i64, i64* %ulSize, align 8, !tbaa !10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call34 = call i64 @fwrite(i8* %arraydecay33, i64 1, i64 %8, %struct._IO_FILE* %9) #5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %11 = bitcast i32* %dots_per_inch to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #2
  %12 = bitcast [300 x i8]* %buffer to i8*
  call void @llvm.lifetime.end(i64 300, i8* %12) #2
  %13 = bitcast i64* %ulSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #2
  ret %struct._IO_FILE* %10
}

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @FrameTiffComp(i8* %pubDest, i8* %pubSrc, i32 %usTotalLines, i32 %usBytesPerLine, i8 zeroext %ubMode) #1 {
entry:
  %pubDest.addr = alloca i8*, align 8
  %pubSrc.addr = alloca i8*, align 8
  %usTotalLines.addr = alloca i32, align 4
  %usBytesPerLine.addr = alloca i32, align 4
  %ubMode.addr = alloca i8, align 1
  %TgtPtr = alloca i8*, align 8
  %SrcPtr = alloca i8*, align 8
  %usLineSize = alloca i32, align 4
  %ulret = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %pubDest, i8** %pubDest.addr, align 8, !tbaa !1
  store i8* %pubSrc, i8** %pubSrc.addr, align 8, !tbaa !1
  store i32 %usTotalLines, i32* %usTotalLines.addr, align 4, !tbaa !5
  store i32 %usBytesPerLine, i32* %usBytesPerLine.addr, align 4, !tbaa !5
  store i8 %ubMode, i8* %ubMode.addr, align 1, !tbaa !9
  %0 = bitcast i8** %TgtPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %SrcPtr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i32* %usLineSize to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i64* %ulret to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load i8*, i8** %pubSrc.addr, align 8, !tbaa !1
  store i8* %5, i8** %SrcPtr, align 8, !tbaa !1
  %6 = load i8*, i8** %pubDest.addr, align 8, !tbaa !1
  store i8* %6, i8** %TgtPtr, align 8, !tbaa !1
  store i64 0, i64* %ulret, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !tbaa !5
  %8 = load i32, i32* %usTotalLines.addr, align 4, !tbaa !5
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8, i8* %ubMode.addr, align 1, !tbaa !9
  %conv = zext i8 %9 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %SrcPtr, align 8, !tbaa !1
  %11 = load i8*, i8** %TgtPtr, align 8, !tbaa !1
  %12 = load i32, i32* %usBytesPerLine.addr, align 4, !tbaa !5
  %call = call i32 @FrameTiff_Comp(i8* %10, i8* %11, i32 %12) #5
  store i32 %call, i32* %usLineSize, align 4, !tbaa !5
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %13, 595
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %14 = load i32, i32* %i, align 4, !tbaa !5
  store i32 %14, i32* %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  %15 = load i8*, i8** %SrcPtr, align 8, !tbaa !1
  %16 = load i32, i32* %usBytesPerLine.addr, align 4, !tbaa !5
  %call4 = call i32 @PreTiffComp(i8* %15, i32 %16) #5
  store i32 %call4, i32* %usLineSize, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %17 = load i32, i32* %usBytesPerLine.addr, align 4, !tbaa !5
  %18 = load i8*, i8** %SrcPtr, align 8, !tbaa !1
  %idx.ext = zext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %18, i64 %idx.ext
  store i8* %add.ptr, i8** %SrcPtr, align 8, !tbaa !1
  %19 = load i32, i32* %usLineSize, align 4, !tbaa !5
  %20 = load i8*, i8** %TgtPtr, align 8, !tbaa !1
  %idx.ext6 = zext i32 %19 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %20, i64 %idx.ext6
  store i8* %add.ptr7, i8** %TgtPtr, align 8, !tbaa !1
  %21 = load i32, i32* %usLineSize, align 4, !tbaa !5
  %conv8 = zext i32 %21 to i64
  %22 = load i64, i64* %ulret, align 8, !tbaa !10
  %add = add i64 %22, %conv8
  store i64 %add, i64* %ulret, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %23 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %23, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load i8, i8* %ubMode.addr, align 1, !tbaa !9
  %conv9 = zext i8 %24 to i32
  %and10 = and i32 %conv9, 2
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.else.20, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %25 = load i64, i64* %ulret, align 8, !tbaa !10
  %rem = urem i64 %25, 4
  switch i64 %rem, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.14
    i64 3, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %if.then.12
  %26 = load i8*, i8** %TgtPtr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr, i8** %TgtPtr, align 8, !tbaa !1
  store i8 0, i8* %26, align 1, !tbaa !9
  %27 = load i64, i64* %ulret, align 8, !tbaa !10
  %inc13 = add i64 %27, 1
  store i64 %inc13, i64* %ulret, align 8, !tbaa !10
  br label %sw.bb.14

sw.bb.14:                                         ; preds = %if.then.12, %sw.bb
  %28 = load i8*, i8** %TgtPtr, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr15, i8** %TgtPtr, align 8, !tbaa !1
  store i8 0, i8* %28, align 1, !tbaa !9
  %29 = load i64, i64* %ulret, align 8, !tbaa !10
  %inc16 = add i64 %29, 1
  store i64 %inc16, i64* %ulret, align 8, !tbaa !10
  br label %sw.bb.17

sw.bb.17:                                         ; preds = %if.then.12, %sw.bb.14
  %30 = load i8*, i8** %TgtPtr, align 8, !tbaa !1
  %incdec.ptr18 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr18, i8** %TgtPtr, align 8, !tbaa !1
  store i8 0, i8* %30, align 1, !tbaa !9
  %31 = load i64, i64* %ulret, align 8, !tbaa !10
  %inc19 = add i64 %31, 1
  store i64 %inc19, i64* %ulret, align 8, !tbaa !10
  br label %sw.default

sw.default:                                       ; preds = %if.then.12, %sw.bb.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.30

if.else.20:                                       ; preds = %for.end
  %32 = load i64, i64* %ulret, align 8, !tbaa !10
  %rem21 = urem i64 %32, 4
  switch i64 %rem21, label %sw.default.28 [
    i64 1, label %sw.bb.22
    i64 2, label %sw.bb.24
    i64 3, label %sw.bb.26
  ]

sw.bb.22:                                         ; preds = %if.else.20
  %33 = load i64, i64* %ulret, align 8, !tbaa !10
  %inc23 = add i64 %33, 1
  store i64 %inc23, i64* %ulret, align 8, !tbaa !10
  br label %sw.bb.24

sw.bb.24:                                         ; preds = %if.else.20, %sw.bb.22
  %34 = load i64, i64* %ulret, align 8, !tbaa !10
  %inc25 = add i64 %34, 1
  store i64 %inc25, i64* %ulret, align 8, !tbaa !10
  br label %sw.bb.26

sw.bb.26:                                         ; preds = %if.else.20, %sw.bb.24
  %35 = load i64, i64* %ulret, align 8, !tbaa !10
  %inc27 = add i64 %35, 1
  store i64 %inc27, i64* %ulret, align 8, !tbaa !10
  br label %sw.default.28

sw.default.28:                                    ; preds = %if.else.20, %sw.bb.26
  br label %sw.epilog.29

sw.epilog.29:                                     ; preds = %sw.default.28
  br label %if.end.30

if.end.30:                                        ; preds = %sw.epilog.29, %sw.epilog
  %36 = load i64, i64* %ulret, align 8, !tbaa !10
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #2
  %38 = bitcast i64* %ulret to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #2
  %39 = bitcast i32* %usLineSize to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #2
  %40 = bitcast i8** %SrcPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast i8** %TgtPtr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  ret i64 %36
}

; Function Attrs: nounwind uwtable
define internal i64 @bmp2run(i8* %out_buf, i8* %in_buf, i32 %sizeY, i32 %sizeX, i8 zeroext %ubMode) #1 {
entry:
  %retval = alloca i64, align 8
  %out_buf.addr = alloca i8*, align 8
  %in_buf.addr = alloca i8*, align 8
  %sizeY.addr = alloca i32, align 4
  %sizeX.addr = alloca i32, align 4
  %ubMode.addr = alloca i8, align 1
  %tmp_buf1 = alloca i8*, align 8
  %tmp_buf2 = alloca i8*, align 8
  %scan_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i8* %in_buf, i8** %in_buf.addr, align 8, !tbaa !1
  store i32 %sizeY, i32* %sizeY.addr, align 4, !tbaa !5
  store i32 %sizeX, i32* %sizeX.addr, align 4, !tbaa !5
  store i8 %ubMode, i8* %ubMode.addr, align 1, !tbaa !9
  %0 = bitcast i8** %tmp_buf1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %tmp_buf2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i64* %scan_size to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = load i8*, i8** %in_buf.addr, align 8, !tbaa !1
  store i8* %3, i8** %tmp_buf1, align 8, !tbaa !1
  %4 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  store i8* %4, i8** %tmp_buf2, align 8, !tbaa !1
  %5 = load i8*, i8** %tmp_buf1, align 8, !tbaa !1
  %6 = load i8*, i8** %tmp_buf2, align 8, !tbaa !1
  %7 = load i32, i32* %sizeX.addr, align 4, !tbaa !5
  %conv = trunc i32 %7 to i16
  %8 = load i32, i32* %sizeY.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %8 to i16
  %9 = load i8, i8* %ubMode.addr, align 1, !tbaa !9
  %call = call i64 @scan_map(i8* %5, i8* %6, i16 zeroext %conv, i16 zeroext %conv1, i8 zeroext %9) #5
  store i64 %call, i64* %scan_size, align 8, !tbaa !10
  %10 = load i64, i64* %scan_size, align 8, !tbaa !10
  %cmp = icmp eq i64 %10, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = load i8, i8* %ubMode.addr, align 1, !tbaa !9
  %conv3 = zext i8 %11 to i32
  %and = and i32 %conv3, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %12 = load i8*, i8** %tmp_buf2, align 8, !tbaa !1
  %13 = load i64, i64* %scan_size, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  store i8* %add.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  %14 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 0, i8* %14, align 1, !tbaa !9
  %15 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr5, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 0, i8* %15, align 1, !tbaa !9
  %16 = load i64, i64* %scan_size, align 8, !tbaa !10
  %add = add nsw i64 %16, 2
  store i64 %add, i64* %scan_size, align 8, !tbaa !10
  %17 = load i64, i64* %scan_size, align 8, !tbaa !10
  %rem = srem i64 %17, 4
  %tobool6 = icmp ne i64 %rem, 0
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.then.4
  %18 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr8 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr8, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 0, i8* %18, align 1, !tbaa !9
  %19 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr9, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 0, i8* %19, align 1, !tbaa !9
  %20 = load i64, i64* %scan_size, align 8, !tbaa !10
  %add10 = add nsw i64 %20, 2
  store i64 %add10, i64* %scan_size, align 8, !tbaa !10
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.then.4
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %21 = load i64, i64* %scan_size, align 8, !tbaa !10
  %add12 = add nsw i64 %21, 2
  store i64 %add12, i64* %scan_size, align 8, !tbaa !10
  %22 = load i64, i64* %scan_size, align 8, !tbaa !10
  %rem13 = srem i64 %22, 4
  %tobool14 = icmp ne i64 %rem13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.else
  %23 = load i64, i64* %scan_size, align 8, !tbaa !10
  %add16 = add nsw i64 %23, 2
  store i64 %add16, i64* %scan_size, align 8, !tbaa !10
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.11
  %24 = load i64, i64* %scan_size, align 8, !tbaa !10
  store i64 %24, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.18, %if.then
  %25 = bitcast i64* %scan_size to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #2
  %26 = bitcast i8** %tmp_buf2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #2
  %27 = bitcast i8** %tmp_buf1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #2
  %28 = load i64, i64* %retval
  ret i64 %28
}

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @WriteBandHeader(%struct._IO_FILE* %fp, i32 %usBandNo, i8 zeroext %ubCompMode, i32 %usBandWidth, i32 %usBandHeight, i64 %ulBandSize) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %usBandNo.addr = alloca i32, align 4
  %ubCompMode.addr = alloca i8, align 1
  %usBandWidth.addr = alloca i32, align 4
  %usBandHeight.addr = alloca i32, align 4
  %ulBandSize.addr = alloca i64, align 8
  %ubLeft = alloca i8, align 1
  %i = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %usBandNo, i32* %usBandNo.addr, align 4, !tbaa !5
  store i8 %ubCompMode, i8* %ubCompMode.addr, align 1, !tbaa !9
  store i32 %usBandWidth, i32* %usBandWidth.addr, align 4, !tbaa !5
  store i32 %usBandHeight, i32* %usBandHeight.addr, align 4, !tbaa !5
  store i64 %ulBandSize, i64* %ulBandSize.addr, align 8, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %ubLeft) #2
  store i8 0, i8* %ubLeft, align 1, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %i, align 4, !tbaa !5
  %1 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.start(i64 50, i8* %1) #2
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 50) #6
  %2 = load i64, i64* %ulBandSize.addr, align 8, !tbaa !10
  %add = add i64 %2, 8
  store i64 %add, i64* %ulBandSize.addr, align 8, !tbaa !10
  %3 = load i64, i64* %ulBandSize.addr, align 8, !tbaa !10
  %shr = lshr i64 %3, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %4 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !9
  %5 = load i64, i64* %ulBandSize.addr, align 8, !tbaa !10
  %shr1 = lshr i64 %5, 16
  %and2 = and i64 %shr1, 255
  %conv3 = trunc i64 %and2 to i8
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %inc4 = add i32 %6, 1
  store i32 %inc4, i32* %i, align 4, !tbaa !5
  %idxprom5 = zext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom5
  store i8 %conv3, i8* %arrayidx6, align 1, !tbaa !9
  %7 = load i64, i64* %ulBandSize.addr, align 8, !tbaa !10
  %shr7 = lshr i64 %7, 8
  %and8 = and i64 %shr7, 255
  %conv9 = trunc i64 %and8 to i8
  %8 = load i32, i32* %i, align 4, !tbaa !5
  %inc10 = add i32 %8, 1
  store i32 %inc10, i32* %i, align 4, !tbaa !5
  %idxprom11 = zext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom11
  store i8 %conv9, i8* %arrayidx12, align 1, !tbaa !9
  %9 = load i64, i64* %ulBandSize.addr, align 8, !tbaa !10
  %and13 = and i64 %9, 255
  %conv14 = trunc i64 %and13 to i8
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %inc15 = add i32 %10, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !5
  %idxprom16 = zext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom16
  store i8 %conv14, i8* %arrayidx17, align 1, !tbaa !9
  %11 = load i32, i32* %usBandNo.addr, align 4, !tbaa !5
  %shr18 = lshr i32 %11, 8
  %and19 = and i32 %shr18, 255
  %conv20 = trunc i32 %and19 to i8
  %12 = load i32, i32* %i, align 4, !tbaa !5
  %inc21 = add i32 %12, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !5
  %idxprom22 = zext i32 %12 to i64
  %arrayidx23 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom22
  store i8 %conv20, i8* %arrayidx23, align 1, !tbaa !9
  %13 = load i32, i32* %usBandNo.addr, align 4, !tbaa !5
  %and24 = and i32 %13, 255
  %conv25 = trunc i32 %and24 to i8
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %inc26 = add i32 %14, 1
  store i32 %inc26, i32* %i, align 4, !tbaa !5
  %idxprom27 = zext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom27
  store i8 %conv25, i8* %arrayidx28, align 1, !tbaa !9
  %15 = load i8, i8* %ubCompMode.addr, align 1, !tbaa !9
  %conv29 = zext i8 %15 to i32
  %and30 = and i32 %conv29, 255
  %conv31 = trunc i32 %and30 to i8
  %16 = load i32, i32* %i, align 4, !tbaa !5
  %inc32 = add i32 %16, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !5
  %idxprom33 = zext i32 %16 to i64
  %arrayidx34 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom33
  store i8 %conv31, i8* %arrayidx34, align 1, !tbaa !9
  %17 = load i8, i8* %ubLeft, align 1, !tbaa !9
  %conv35 = zext i8 %17 to i32
  %and36 = and i32 %conv35, 255
  %conv37 = trunc i32 %and36 to i8
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %inc38 = add i32 %18, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !5
  %idxprom39 = zext i32 %18 to i64
  %arrayidx40 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom39
  store i8 %conv37, i8* %arrayidx40, align 1, !tbaa !9
  %19 = load i32, i32* %usBandHeight.addr, align 4, !tbaa !5
  %shr41 = lshr i32 %19, 8
  %and42 = and i32 %shr41, 255
  %conv43 = trunc i32 %and42 to i8
  %20 = load i32, i32* %i, align 4, !tbaa !5
  %inc44 = add i32 %20, 1
  store i32 %inc44, i32* %i, align 4, !tbaa !5
  %idxprom45 = zext i32 %20 to i64
  %arrayidx46 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom45
  store i8 %conv43, i8* %arrayidx46, align 1, !tbaa !9
  %21 = load i32, i32* %usBandHeight.addr, align 4, !tbaa !5
  %and47 = and i32 %21, 255
  %conv48 = trunc i32 %and47 to i8
  %22 = load i32, i32* %i, align 4, !tbaa !5
  %inc49 = add i32 %22, 1
  store i32 %inc49, i32* %i, align 4, !tbaa !5
  %idxprom50 = zext i32 %22 to i64
  %arrayidx51 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom50
  store i8 %conv48, i8* %arrayidx51, align 1, !tbaa !9
  %23 = load i32, i32* %usBandWidth.addr, align 4, !tbaa !5
  %shr52 = lshr i32 %23, 8
  %and53 = and i32 %shr52, 255
  %conv54 = trunc i32 %and53 to i8
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %inc55 = add i32 %24, 1
  store i32 %inc55, i32* %i, align 4, !tbaa !5
  %idxprom56 = zext i32 %24 to i64
  %arrayidx57 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom56
  store i8 %conv54, i8* %arrayidx57, align 1, !tbaa !9
  %25 = load i32, i32* %usBandWidth.addr, align 4, !tbaa !5
  %and58 = and i32 %25, 255
  %conv59 = trunc i32 %and58 to i8
  %26 = load i32, i32* %i, align 4, !tbaa !5
  %inc60 = add i32 %26, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !5
  %idxprom61 = zext i32 %26 to i64
  %arrayidx62 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i64 %idxprom61
  store i8 %conv59, i8* %arrayidx62, align 1, !tbaa !9
  %arraydecay63 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %conv64 = zext i32 %27 to i64
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call65 = call i64 @fwrite(i8* %arraydecay63, i64 1, i64 %conv64, %struct._IO_FILE* %28) #5
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %30 = bitcast [50 x i8]* %buf to i8*
  call void @llvm.lifetime.end(i64 50, i8* %30) #2
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %31) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubLeft) #2
  ret %struct._IO_FILE* %29
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @WriteTrailerData(%struct._IO_FILE* %fp) #1 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %ulSize = alloca i64, align 8
  %buffer = alloca [200 x i64], align 16
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i64* %ulSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [200 x i64]* %buffer to i8*
  call void @llvm.lifetime.start(i64 1600, i8* %1) #2
  %arraydecay = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %2 = bitcast i64* %arraydecay to i8*
  %call = call i8* @memset(i8* %2, i32 0, i64 200) #6
  %arraydecay1 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %3 = bitcast i64* %arraydecay1 to i8*
  %call2 = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)) #6
  %arraydecay3 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %4 = bitcast i64* %arraydecay3 to i8*
  %call4 = call i8* @strcat(i8* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)) #6
  %arraydecay5 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %5 = bitcast i64* %arraydecay5 to i8*
  %call6 = call i8* @strcat(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)) #6
  %arraydecay7 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %6 = bitcast i64* %arraydecay7 to i8*
  %call8 = call i8* @strcat(i8* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0)) #6
  %arraydecay9 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %7 = bitcast i64* %arraydecay9 to i8*
  %call10 = call i8* @strcat(i8* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0)) #6
  %arraydecay11 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %8 = bitcast i64* %arraydecay11 to i8*
  %call12 = call i8* @strcat(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0)) #6
  %arraydecay13 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %9 = bitcast i64* %arraydecay13 to i8*
  %call14 = call i64 @strlen(i8* %9) #7
  store i64 %call14, i64* %ulSize, align 8, !tbaa !10
  %arraydecay15 = getelementptr inbounds [200 x i64], [200 x i64]* %buffer, i32 0, i32 0
  %10 = bitcast i64* %arraydecay15 to i8*
  %11 = load i64, i64* %ulSize, align 8, !tbaa !10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call16 = call i64 @fwrite(i8* %10, i64 1, i64 %11, %struct._IO_FILE* %12) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %14 = bitcast [200 x i64]* %buffer to i8*
  call void @llvm.lifetime.end(i64 1600, i8* %14) #2
  %15 = bitcast i64* %ulSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #2
  ret %struct._IO_FILE* %13
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @FrameTiff_Comp(i8* %lpSrcBuf, i8* %lpTgtBuf, i32 %nSrcBytes) #1 {
entry:
  %lpSrcBuf.addr = alloca i8*, align 8
  %lpTgtBuf.addr = alloca i8*, align 8
  %nSrcBytes.addr = alloca i32, align 4
  %usret = alloca i32, align 4
  %usCount = alloca i32, align 4
  %usEndCnt = alloca i32, align 4
  %usControl = alloca i32, align 4
  %usCnt = alloca i32, align 4
  %ubFirst = alloca i8, align 1
  %ubSecond = alloca i8, align 1
  %ubMisCnt = alloca i8, align 1
  %pubDst = alloca i8*, align 8
  %pubSrc = alloca i8*, align 8
  %pubOrg = alloca i8*, align 8
  store i8* %lpSrcBuf, i8** %lpSrcBuf.addr, align 8, !tbaa !1
  store i8* %lpTgtBuf, i8** %lpTgtBuf.addr, align 8, !tbaa !1
  store i32 %nSrcBytes, i32* %nSrcBytes.addr, align 4, !tbaa !5
  %0 = bitcast i32* %usret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %usCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %usEndCnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %usControl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %usCnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubFirst) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubSecond) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubMisCnt) #2
  %5 = bitcast i8** %pubDst to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %pubSrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i8** %pubOrg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load i8*, i8** %lpTgtBuf.addr, align 8, !tbaa !1
  store i8* %8, i8** %pubDst, align 8, !tbaa !1
  %9 = load i8*, i8** %lpSrcBuf.addr, align 8, !tbaa !1
  store i8* %9, i8** %pubSrc, align 8, !tbaa !1
  %10 = load i32, i32* %nSrcBytes.addr, align 4, !tbaa !5
  store i32 %10, i32* %usCount, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.117, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %usCount, align 4, !tbaa !5
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end.118

if.else:                                          ; preds = %while.body
  %12 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %13 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %pubDst, align 8, !tbaa !1
  store i8 0, i8* %13, align 1, !tbaa !9
  %14 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr2 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr2, i8** %pubSrc, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !9
  %16 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr3, i8** %pubDst, align 8, !tbaa !1
  store i8 %15, i8* %16, align 1, !tbaa !9
  br label %while.end.118

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %17 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  store i8* %17, i8** %pubOrg, align 8, !tbaa !1
  %18 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr5, i8** %pubSrc, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !9
  store i8 %19, i8* %ubFirst, align 1, !tbaa !9
  %20 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr6, i8** %pubSrc, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !9
  store i8 %21, i8* %ubSecond, align 1, !tbaa !9
  %22 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv = zext i8 %22 to i32
  %23 = load i8, i8* %ubSecond, align 1, !tbaa !9
  %conv7 = zext i8 %23 to i32
  %cmp8 = icmp eq i32 %conv, %conv7
  br i1 %cmp8, label %if.then.10, label %if.else.46

if.then.10:                                       ; preds = %if.end.4
  %24 = load i32, i32* %usCount, align 4, !tbaa !5
  store i32 %24, i32* %usEndCnt, align 4, !tbaa !5
  %25 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp11 = icmp ugt i32 %25, 16384
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.10
  store i32 16384, i32* %usEndCnt, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.10
  %26 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub = sub i32 %26, 2
  store i32 %sub, i32* %usEndCnt, align 4, !tbaa !5
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.25, %if.end.14
  %27 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %dec = add i32 %27, -1
  store i32 %dec, i32* %usEndCnt, align 4, !tbaa !5
  %tobool16 = icmp ne i32 %27, 0
  br i1 %tobool16, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %while.cond.15
  %28 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv18 = zext i8 %28 to i32
  %29 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr19 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr19, i8** %pubSrc, align 8, !tbaa !1
  %30 = load i8, i8* %29, align 1, !tbaa !9
  %conv20 = zext i8 %30 to i32
  %cmp21 = icmp ne i32 %conv18, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %while.body.17
  %31 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr24, i8** %pubSrc, align 8, !tbaa !1
  br label %while.end

if.end.25:                                        ; preds = %while.body.17
  br label %while.cond.15

while.end:                                        ; preds = %if.then.23, %while.cond.15
  %32 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %33 = load i8*, i8** %pubOrg, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv26, i32* %usCnt, align 4, !tbaa !5
  %34 = load i32, i32* %usCnt, align 4, !tbaa !5
  %35 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub27 = sub i32 %35, %34
  store i32 %sub27, i32* %usCount, align 4, !tbaa !5
  %36 = load i32, i32* %usCnt, align 4, !tbaa !5
  %sub28 = sub i32 %36, 2
  store i32 %sub28, i32* %usCnt, align 4, !tbaa !5
  %37 = load i32, i32* %usCnt, align 4, !tbaa !5
  %cmp29 = icmp uge i32 %37, 64
  br i1 %cmp29, label %if.then.31, label %if.else.39

if.then.31:                                       ; preds = %while.end
  %38 = load i32, i32* %usCnt, align 4, !tbaa !5
  %neg = xor i32 %38, -1
  %and = and i32 %neg, 16383
  %or = or i32 %and, 49152
  store i32 %or, i32* %usCnt, align 4, !tbaa !5
  %39 = load i32, i32* %usCnt, align 4, !tbaa !5
  %and32 = and i32 %39, 65280
  %shr = lshr i32 %and32, 8
  %conv33 = trunc i32 %shr to i8
  %40 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr34 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr34, i8** %pubDst, align 8, !tbaa !1
  store i8 %conv33, i8* %40, align 1, !tbaa !9
  %41 = load i32, i32* %usCnt, align 4, !tbaa !5
  %and35 = and i32 %41, 255
  %conv36 = trunc i32 %and35 to i8
  %42 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr37, i8** %pubDst, align 8, !tbaa !1
  store i8 %conv36, i8* %42, align 1, !tbaa !9
  %43 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %44 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr38, i8** %pubDst, align 8, !tbaa !1
  store i8 %43, i8* %44, align 1, !tbaa !9
  br label %if.end.45

if.else.39:                                       ; preds = %while.end
  %45 = load i32, i32* %usCnt, align 4, !tbaa !5
  %neg40 = xor i32 %45, -1
  %and41 = and i32 %neg40, 127
  store i32 %and41, i32* %usCnt, align 4, !tbaa !5
  %46 = load i32, i32* %usCnt, align 4, !tbaa !5
  %conv42 = trunc i32 %46 to i8
  %47 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr43, i8** %pubDst, align 8, !tbaa !1
  store i8 %conv42, i8* %47, align 1, !tbaa !9
  %48 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %49 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr44, i8** %pubDst, align 8, !tbaa !1
  store i8 %48, i8* %49, align 1, !tbaa !9
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.39, %if.then.31
  br label %if.end.117

if.else.46:                                       ; preds = %if.end.4
  store i8 0, i8* %ubMisCnt, align 1, !tbaa !9
  %50 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp47 = icmp ugt i32 %50, 2
  br i1 %cmp47, label %if.then.49, label %if.end.80

if.then.49:                                       ; preds = %if.else.46
  %51 = load i32, i32* %usCount, align 4, !tbaa !5
  store i32 %51, i32* %usEndCnt, align 4, !tbaa !5
  %52 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp50 = icmp ugt i32 %52, 16384
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.49
  store i32 16384, i32* %usEndCnt, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.49
  %53 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub54 = sub i32 %53, 2
  store i32 %sub54, i32* %usEndCnt, align 4, !tbaa !5
  br label %while.cond.55

while.cond.55:                                    ; preds = %if.end.78, %if.end.53
  %54 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %dec56 = add i32 %54, -1
  store i32 %dec56, i32* %usEndCnt, align 4, !tbaa !5
  %tobool57 = icmp ne i32 %54, 0
  br i1 %tobool57, label %while.body.58, label %while.end.79

while.body.58:                                    ; preds = %while.cond.55
  %55 = load i8, i8* %ubSecond, align 1, !tbaa !9
  store i8 %55, i8* %ubFirst, align 1, !tbaa !9
  %56 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr59 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr59, i8** %pubSrc, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !9
  store i8 %57, i8* %ubSecond, align 1, !tbaa !9
  %58 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv60 = zext i8 %58 to i32
  %59 = load i8, i8* %ubSecond, align 1, !tbaa !9
  %conv61 = zext i8 %59 to i32
  %cmp62 = icmp eq i32 %conv60, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %while.body.58
  %60 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %cmp65 = icmp ule i32 %60, 1
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.then.64
  store i8 2, i8* %ubMisCnt, align 1, !tbaa !9
  br label %while.end.79

if.else.68:                                       ; preds = %if.then.64
  %61 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr69 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr69, i8** %pubSrc, align 8, !tbaa !1
  %62 = load i8, i8* %61, align 1, !tbaa !9
  store i8 %62, i8* %ubSecond, align 1, !tbaa !9
  %63 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %dec70 = add i32 %63, -1
  store i32 %dec70, i32* %usEndCnt, align 4, !tbaa !5
  %64 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv71 = zext i8 %64 to i32
  %65 = load i8, i8* %ubSecond, align 1, !tbaa !9
  %conv72 = zext i8 %65 to i32
  %cmp73 = icmp eq i32 %conv71, %conv72
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.else.68
  store i8 3, i8* %ubMisCnt, align 1, !tbaa !9
  br label %while.end.79

if.end.76:                                        ; preds = %if.else.68
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %while.body.58
  br label %while.cond.55

while.end.79:                                     ; preds = %if.then.75, %if.then.67, %while.cond.55
  br label %if.end.80

if.end.80:                                        ; preds = %while.end.79, %if.else.46
  %66 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %67 = load i8*, i8** %pubOrg, align 8, !tbaa !1
  %sub.ptr.lhs.cast81 = ptrtoint i8* %66 to i64
  %sub.ptr.rhs.cast82 = ptrtoint i8* %67 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %conv84 = trunc i64 %sub.ptr.sub83 to i32
  store i32 %conv84, i32* %usControl, align 4, !tbaa !5
  %68 = load i8, i8* %ubMisCnt, align 1, !tbaa !9
  %conv85 = zext i8 %68 to i32
  %69 = load i32, i32* %usControl, align 4, !tbaa !5
  %sub86 = sub i32 %69, %conv85
  store i32 %sub86, i32* %usControl, align 4, !tbaa !5
  %70 = load i32, i32* %usControl, align 4, !tbaa !5
  %71 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp87 = icmp ugt i32 %70, %71
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.80
  %72 = load i32, i32* %usControl, align 4, !tbaa !5
  store i32 %72, i32* %usCount, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.80
  %73 = load i32, i32* %usControl, align 4, !tbaa !5
  %74 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub91 = sub i32 %74, %73
  store i32 %sub91, i32* %usCount, align 4, !tbaa !5
  %75 = load i32, i32* %usControl, align 4, !tbaa !5
  %sub92 = sub i32 %75, 1
  store i32 %sub92, i32* %usCnt, align 4, !tbaa !5
  %76 = load i32, i32* %usCnt, align 4, !tbaa !5
  %cmp93 = icmp uge i32 %76, 64
  br i1 %cmp93, label %if.then.95, label %if.else.105

if.then.95:                                       ; preds = %if.end.90
  %77 = load i32, i32* %usCnt, align 4, !tbaa !5
  %and96 = and i32 %77, 49151
  %or97 = or i32 %and96, 32768
  store i32 %or97, i32* %usCnt, align 4, !tbaa !5
  %78 = load i32, i32* %usCnt, align 4, !tbaa !5
  %and98 = and i32 %78, 65280
  %shr99 = lshr i32 %and98, 8
  %conv100 = trunc i32 %shr99 to i8
  %79 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr101 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr101, i8** %pubDst, align 8, !tbaa !1
  store i8 %conv100, i8* %79, align 1, !tbaa !9
  %80 = load i32, i32* %usCnt, align 4, !tbaa !5
  %and102 = and i32 %80, 255
  %conv103 = trunc i32 %and102 to i8
  %81 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr104 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr104, i8** %pubDst, align 8, !tbaa !1
  store i8 %conv103, i8* %81, align 1, !tbaa !9
  br label %if.end.109

if.else.105:                                      ; preds = %if.end.90
  %82 = load i32, i32* %usCnt, align 4, !tbaa !5
  %and106 = and i32 %82, 63
  %conv107 = trunc i32 %and106 to i8
  %83 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr108 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr108, i8** %pubDst, align 8, !tbaa !1
  store i8 %conv107, i8* %83, align 1, !tbaa !9
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.105, %if.then.95
  %84 = load i8*, i8** %pubOrg, align 8, !tbaa !1
  store i8* %84, i8** %pubSrc, align 8, !tbaa !1
  br label %while.cond.110

while.cond.110:                                   ; preds = %while.body.113, %if.end.109
  %85 = load i32, i32* %usControl, align 4, !tbaa !5
  %dec111 = add i32 %85, -1
  store i32 %dec111, i32* %usControl, align 4, !tbaa !5
  %tobool112 = icmp ne i32 %85, 0
  br i1 %tobool112, label %while.body.113, label %while.end.116

while.body.113:                                   ; preds = %while.cond.110
  %86 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr114 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr114, i8** %pubSrc, align 8, !tbaa !1
  %87 = load i8, i8* %86, align 1, !tbaa !9
  %88 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %incdec.ptr115 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr115, i8** %pubDst, align 8, !tbaa !1
  store i8 %87, i8* %88, align 1, !tbaa !9
  br label %while.cond.110

while.end.116:                                    ; preds = %while.cond.110
  br label %if.end.117

if.end.117:                                       ; preds = %while.end.116, %if.end.45
  br label %while.cond

while.end.118:                                    ; preds = %if.then.1, %if.then
  %89 = load i8*, i8** %pubDst, align 8, !tbaa !1
  %90 = load i8*, i8** %lpTgtBuf.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast119 = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast120 = ptrtoint i8* %90 to i64
  %sub.ptr.sub121 = sub i64 %sub.ptr.lhs.cast119, %sub.ptr.rhs.cast120
  %conv122 = trunc i64 %sub.ptr.sub121 to i32
  store i32 %conv122, i32* %usret, align 4, !tbaa !5
  %91 = load i32, i32* %usret, align 4, !tbaa !5
  %92 = bitcast i8** %pubOrg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #2
  %93 = bitcast i8** %pubSrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #2
  %94 = bitcast i8** %pubDst to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubMisCnt) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubSecond) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubFirst) #2
  %95 = bitcast i32* %usCnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #2
  %96 = bitcast i32* %usControl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #2
  %97 = bitcast i32* %usEndCnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #2
  %98 = bitcast i32* %usCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #2
  %99 = bitcast i32* %usret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #2
  ret i32 %91
}

; Function Attrs: nounwind uwtable
define internal i32 @PreTiffComp(i8* %lpSrcBuf, i32 %nSrcBytes) #1 {
entry:
  %lpSrcBuf.addr = alloca i8*, align 8
  %nSrcBytes.addr = alloca i32, align 4
  %usret = alloca i32, align 4
  %usCount = alloca i32, align 4
  %usEndCnt = alloca i32, align 4
  %usControl = alloca i32, align 4
  %usCnt = alloca i32, align 4
  %ubFirst = alloca i8, align 1
  %ubSecond = alloca i8, align 1
  %ubMisCnt = alloca i8, align 1
  %pubSrc = alloca i8*, align 8
  %pubOrg = alloca i8*, align 8
  store i8* %lpSrcBuf, i8** %lpSrcBuf.addr, align 8, !tbaa !1
  store i32 %nSrcBytes, i32* %nSrcBytes.addr, align 4, !tbaa !5
  %0 = bitcast i32* %usret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  store i32 0, i32* %usret, align 4, !tbaa !5
  %1 = bitcast i32* %usCount to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %usEndCnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = bitcast i32* %usControl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i32* %usCnt to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubFirst) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubSecond) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubMisCnt) #2
  %5 = bitcast i8** %pubSrc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i8** %pubOrg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = load i8*, i8** %lpSrcBuf.addr, align 8, !tbaa !1
  store i8* %7, i8** %pubSrc, align 8, !tbaa !1
  %8 = load i32, i32* %nSrcBytes.addr, align 4, !tbaa !5
  store i32 %8, i32* %usCount, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end.94, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %usCount, align 4, !tbaa !5
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end.95

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.else
  %11 = load i32, i32* %usret, align 4, !tbaa !5
  %add = add i32 %11, 2
  store i32 %add, i32* %usret, align 4, !tbaa !5
  %12 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %pubSrc, align 8, !tbaa !1
  br label %while.end.95

if.end:                                           ; preds = %if.else
  br label %if.end.2

if.end.2:                                         ; preds = %if.end
  %13 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  store i8* %13, i8** %pubOrg, align 8, !tbaa !1
  %14 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr3 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr3, i8** %pubSrc, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !9
  store i8 %15, i8* %ubFirst, align 1, !tbaa !9
  %16 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr4, i8** %pubSrc, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !9
  store i8 %17, i8* %ubSecond, align 1, !tbaa !9
  %18 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv = zext i8 %18 to i32
  %19 = load i8, i8* %ubSecond, align 1, !tbaa !9
  %conv5 = zext i8 %19 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then.8, label %if.else.34

if.then.8:                                        ; preds = %if.end.2
  %20 = load i32, i32* %usCount, align 4, !tbaa !5
  store i32 %20, i32* %usEndCnt, align 4, !tbaa !5
  %21 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp9 = icmp ugt i32 %21, 16384
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i32 16384, i32* %usEndCnt, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.8
  %22 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub = sub i32 %22, 2
  store i32 %sub, i32* %usEndCnt, align 4, !tbaa !5
  br label %while.cond.13

while.cond.13:                                    ; preds = %if.end.23, %if.end.12
  %23 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %dec = add i32 %23, -1
  store i32 %dec, i32* %usEndCnt, align 4, !tbaa !5
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %while.body.15, label %while.end

while.body.15:                                    ; preds = %while.cond.13
  %24 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv16 = zext i8 %24 to i32
  %25 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr17, i8** %pubSrc, align 8, !tbaa !1
  %26 = load i8, i8* %25, align 1, !tbaa !9
  %conv18 = zext i8 %26 to i32
  %cmp19 = icmp ne i32 %conv16, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %while.body.15
  %27 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr22 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %incdec.ptr22, i8** %pubSrc, align 8, !tbaa !1
  br label %while.end

if.end.23:                                        ; preds = %while.body.15
  br label %while.cond.13

while.end:                                        ; preds = %if.then.21, %while.cond.13
  %28 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %29 = load i8*, i8** %pubOrg, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv24 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv24, i32* %usCnt, align 4, !tbaa !5
  %30 = load i32, i32* %usCnt, align 4, !tbaa !5
  %31 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub25 = sub i32 %31, %30
  store i32 %sub25, i32* %usCount, align 4, !tbaa !5
  %32 = load i32, i32* %usCnt, align 4, !tbaa !5
  %sub26 = sub i32 %32, 2
  store i32 %sub26, i32* %usCnt, align 4, !tbaa !5
  %33 = load i32, i32* %usCnt, align 4, !tbaa !5
  %cmp27 = icmp uge i32 %33, 64
  br i1 %cmp27, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %while.end
  %34 = load i32, i32* %usret, align 4, !tbaa !5
  %add30 = add i32 %34, 3
  store i32 %add30, i32* %usret, align 4, !tbaa !5
  br label %if.end.33

if.else.31:                                       ; preds = %while.end
  %35 = load i32, i32* %usret, align 4, !tbaa !5
  %add32 = add i32 %35, 2
  store i32 %add32, i32* %usret, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.29
  br label %if.end.94

if.else.34:                                       ; preds = %if.end.2
  store i8 0, i8* %ubMisCnt, align 1, !tbaa !9
  %36 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp35 = icmp ugt i32 %36, 2
  br i1 %cmp35, label %if.then.37, label %if.end.68

if.then.37:                                       ; preds = %if.else.34
  %37 = load i32, i32* %usCount, align 4, !tbaa !5
  store i32 %37, i32* %usEndCnt, align 4, !tbaa !5
  %38 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp38 = icmp ugt i32 %38, 16384
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.then.37
  store i32 16384, i32* %usEndCnt, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.then.37
  %39 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub42 = sub i32 %39, 2
  store i32 %sub42, i32* %usEndCnt, align 4, !tbaa !5
  br label %while.cond.43

while.cond.43:                                    ; preds = %if.end.66, %if.end.41
  %40 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %dec44 = add i32 %40, -1
  store i32 %dec44, i32* %usEndCnt, align 4, !tbaa !5
  %tobool45 = icmp ne i32 %40, 0
  br i1 %tobool45, label %while.body.46, label %while.end.67

while.body.46:                                    ; preds = %while.cond.43
  %41 = load i8, i8* %ubSecond, align 1, !tbaa !9
  store i8 %41, i8* %ubFirst, align 1, !tbaa !9
  %42 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr47, i8** %pubSrc, align 8, !tbaa !1
  %43 = load i8, i8* %42, align 1, !tbaa !9
  store i8 %43, i8* %ubSecond, align 1, !tbaa !9
  %44 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv48 = zext i8 %44 to i32
  %45 = load i8, i8* %ubSecond, align 1, !tbaa !9
  %conv49 = zext i8 %45 to i32
  %cmp50 = icmp eq i32 %conv48, %conv49
  br i1 %cmp50, label %if.then.52, label %if.end.66

if.then.52:                                       ; preds = %while.body.46
  %46 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %cmp53 = icmp ule i32 %46, 1
  br i1 %cmp53, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.then.52
  store i8 2, i8* %ubMisCnt, align 1, !tbaa !9
  br label %while.end.67

if.else.56:                                       ; preds = %if.then.52
  %47 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr57 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr57, i8** %pubSrc, align 8, !tbaa !1
  %48 = load i8, i8* %47, align 1, !tbaa !9
  store i8 %48, i8* %ubSecond, align 1, !tbaa !9
  %49 = load i32, i32* %usEndCnt, align 4, !tbaa !5
  %dec58 = add i32 %49, -1
  store i32 %dec58, i32* %usEndCnt, align 4, !tbaa !5
  %50 = load i8, i8* %ubFirst, align 1, !tbaa !9
  %conv59 = zext i8 %50 to i32
  %51 = load i8, i8* %ubSecond, align 1, !tbaa !9
  %conv60 = zext i8 %51 to i32
  %cmp61 = icmp eq i32 %conv59, %conv60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.else.56
  store i8 3, i8* %ubMisCnt, align 1, !tbaa !9
  br label %while.end.67

if.end.64:                                        ; preds = %if.else.56
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %while.body.46
  br label %while.cond.43

while.end.67:                                     ; preds = %if.then.63, %if.then.55, %while.cond.43
  br label %if.end.68

if.end.68:                                        ; preds = %while.end.67, %if.else.34
  %52 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %53 = load i8*, i8** %pubOrg, align 8, !tbaa !1
  %sub.ptr.lhs.cast69 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast70 = ptrtoint i8* %53 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  store i32 %conv72, i32* %usControl, align 4, !tbaa !5
  %54 = load i8, i8* %ubMisCnt, align 1, !tbaa !9
  %conv73 = zext i8 %54 to i32
  %55 = load i32, i32* %usControl, align 4, !tbaa !5
  %sub74 = sub i32 %55, %conv73
  store i32 %sub74, i32* %usControl, align 4, !tbaa !5
  %56 = load i32, i32* %usControl, align 4, !tbaa !5
  %57 = load i32, i32* %usCount, align 4, !tbaa !5
  %cmp75 = icmp ugt i32 %56, %57
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.68
  %58 = load i32, i32* %usCount, align 4, !tbaa !5
  store i32 %58, i32* %usControl, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %if.end.68
  %59 = load i32, i32* %usControl, align 4, !tbaa !5
  %60 = load i32, i32* %usCount, align 4, !tbaa !5
  %sub79 = sub i32 %60, %59
  store i32 %sub79, i32* %usCount, align 4, !tbaa !5
  %61 = load i32, i32* %usControl, align 4, !tbaa !5
  %sub80 = sub i32 %61, 1
  store i32 %sub80, i32* %usCnt, align 4, !tbaa !5
  %62 = load i32, i32* %usCnt, align 4, !tbaa !5
  %cmp81 = icmp uge i32 %62, 64
  br i1 %cmp81, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.end.78
  %63 = load i32, i32* %usret, align 4, !tbaa !5
  %add84 = add i32 %63, 2
  store i32 %add84, i32* %usret, align 4, !tbaa !5
  br label %if.end.86

if.else.85:                                       ; preds = %if.end.78
  %64 = load i32, i32* %usret, align 4, !tbaa !5
  %inc = add i32 %64, 1
  store i32 %inc, i32* %usret, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.83
  %65 = load i8*, i8** %pubOrg, align 8, !tbaa !1
  store i8* %65, i8** %pubSrc, align 8, !tbaa !1
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.90, %if.end.86
  %66 = load i32, i32* %usControl, align 4, !tbaa !5
  %dec88 = add i32 %66, -1
  store i32 %dec88, i32* %usControl, align 4, !tbaa !5
  %tobool89 = icmp ne i32 %66, 0
  br i1 %tobool89, label %while.body.90, label %while.end.93

while.body.90:                                    ; preds = %while.cond.87
  %67 = load i32, i32* %usret, align 4, !tbaa !5
  %inc91 = add i32 %67, 1
  store i32 %inc91, i32* %usret, align 4, !tbaa !5
  %68 = load i8*, i8** %pubSrc, align 8, !tbaa !1
  %incdec.ptr92 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr92, i8** %pubSrc, align 8, !tbaa !1
  br label %while.cond.87

while.end.93:                                     ; preds = %while.cond.87
  br label %if.end.94

if.end.94:                                        ; preds = %while.end.93, %if.end.33
  br label %while.cond

while.end.95:                                     ; preds = %if.then.1, %if.then
  %69 = load i32, i32* %usret, align 4, !tbaa !5
  %70 = bitcast i8** %pubOrg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #2
  %71 = bitcast i8** %pubSrc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubMisCnt) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubSecond) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubFirst) #2
  %72 = bitcast i32* %usCnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #2
  %73 = bitcast i32* %usControl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast i32* %usEndCnt to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #2
  %75 = bitcast i32* %usCount to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #2
  %76 = bitcast i32* %usret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #2
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i64 @scan_map(i8* %in_buf, i8* %out_buf, i16 zeroext %usWidth, i16 zeroext %usHeight, i8 zeroext %ubMode) #1 {
entry:
  %retval = alloca i64, align 8
  %in_buf.addr = alloca i8*, align 8
  %out_buf.addr = alloca i8*, align 8
  %usWidth.addr = alloca i16, align 2
  %usHeight.addr = alloca i16, align 2
  %ubMode.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ubPreBit = alloca i8, align 1
  %ubCrtByte = alloca i8, align 1
  %lScanSize = alloca i64, align 8
  %lTmp = alloca i64, align 8
  %lCrtSize = alloca i64, align 8
  %us1Count = alloca i16, align 2
  %usPosX01 = alloca i16, align 2
  %usPosX10 = alloca i16, align 2
  %usDy = alloca i16, align 2
  %usBytePos = alloca i16, align 2
  %ubRevMode = alloca i8, align 1
  %ubSizeMode = alloca i8, align 1
  %ubTemp = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %in_buf, i8** %in_buf.addr, align 8, !tbaa !1
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i16 %usWidth, i16* %usWidth.addr, align 2, !tbaa !32
  store i16 %usHeight, i16* %usHeight.addr, align 2, !tbaa !32
  store i8 %ubMode, i8* %ubMode.addr, align 1, !tbaa !9
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubPreBit) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubCrtByte) #2
  %3 = bitcast i64* %lScanSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast i64* %lTmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast i64* %lCrtSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast i16* %us1Count to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %usPosX01 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = bitcast i16* %usPosX10 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = bitcast i16* %usDy to i8*
  call void @llvm.lifetime.start(i64 2, i8* %9) #2
  %10 = bitcast i16* %usBytePos to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubRevMode) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubSizeMode) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubTemp) #2
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 0, i16* %usPosX10, align 2, !tbaa !32
  store i16 0, i16* %usPosX01, align 2, !tbaa !32
  store i64 0, i64* %lScanSize, align 8, !tbaa !10
  %11 = load i8, i8* %ubMode.addr, align 1, !tbaa !9
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 1
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %ubRevMode, align 1, !tbaa !9
  %12 = load i8, i8* %ubMode.addr, align 1, !tbaa !9
  %conv2 = zext i8 %12 to i32
  %and3 = and i32 %conv2, 2
  %shr = ashr i32 %and3, 1
  %conv4 = trunc i32 %shr to i8
  store i8 %conv4, i8* %ubSizeMode, align 1, !tbaa !9
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc.237, %entry
  %13 = load i32, i32* %i, align 4, !tbaa !5
  %14 = load i16, i16* %usHeight.addr, align 2, !tbaa !32
  %conv5 = zext i16 %14 to i32
  %cmp = icmp ult i32 %13, %conv5
  br i1 %cmp, label %for.body, label %for.end.239

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %ubPreBit, align 1, !tbaa !9
  store i16 0, i16* %us1Count, align 2, !tbaa !32
  store i32 0, i32* %j, align 4, !tbaa !5
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.209, %for.body
  %15 = load i32, i32* %j, align 4, !tbaa !5
  %16 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %conv8 = zext i16 %16 to i32
  %cmp9 = icmp ult i32 %15, %conv8
  br i1 %cmp9, label %for.body.11, label %for.end.211

for.body.11:                                      ; preds = %for.cond.7
  %17 = load i8*, i8** %in_buf.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %in_buf.addr, align 8, !tbaa !1
  %18 = load i8, i8* %17, align 1, !tbaa !9
  store i8 %18, i8* %ubCrtByte, align 1, !tbaa !9
  %19 = load i8, i8* %ubRevMode, align 1, !tbaa !9
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.11
  %20 = load i8, i8* %ubCrtByte, align 1, !tbaa !9
  %conv12 = zext i8 %20 to i32
  %neg = xor i32 %conv12, -1
  %conv13 = trunc i32 %neg to i8
  store i8 %conv13, i8* %ubCrtByte, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.11
  %21 = load i8, i8* %ubCrtByte, align 1, !tbaa !9
  %conv14 = zext i8 %21 to i32
  switch i32 %conv14, label %sw.default [
    i32 0, label %sw.bb
    i32 255, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.end
  %22 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool15 = icmp ne i8 %22, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %sw.bb
  %23 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom = zext i8 %23 to i64
  %arrayidx = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom
  %24 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx, align 8, !tbaa !1
  %25 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %26 = load i16, i16* %us1Count, align 2, !tbaa !32
  %27 = load i16, i16* %usDy, align 2, !tbaa !32
  %28 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %29 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %30 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call = call i64 %24(i8* %25, i16 zeroext %26, i16 zeroext %27, i16 zeroext %28, i16 zeroext %29, i16 zeroext %30) #5
  store i64 %call, i64* %lTmp, align 8, !tbaa !10
  %31 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %32 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %add.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  %33 = load i64, i64* %lTmp, align 8, !tbaa !10
  %34 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add = add nsw i64 %34, %33
  store i64 %add, i64* %lScanSize, align 8, !tbaa !10
  %35 = load i32, i32* %j, align 4, !tbaa !5
  %shl = shl i32 %35, 3
  %36 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv17 = zext i16 %36 to i32
  %sub = sub i32 %shl, %conv17
  %conv18 = trunc i32 %sub to i16
  store i16 %conv18, i16* %usPosX10, align 2, !tbaa !32
  store i16 0, i16* %us1Count, align 2, !tbaa !32
  store i16 0, i16* %usDy, align 2, !tbaa !32
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %sw.bb
  br label %sw.epilog.205

sw.bb.20:                                         ; preds = %if.end
  %37 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool21 = icmp ne i8 %37, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %sw.bb.20
  %38 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv23 = zext i16 %38 to i32
  %add24 = add nsw i32 %conv23, 8
  %conv25 = trunc i32 %add24 to i16
  store i16 %conv25, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.28

if.else:                                          ; preds = %sw.bb.20
  store i16 8, i16* %us1Count, align 2, !tbaa !32
  %39 = load i32, i32* %j, align 4, !tbaa !5
  %shl26 = shl i32 %39, 3
  %conv27 = trunc i32 %shl26 to i16
  store i16 %conv27, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.22
  br label %sw.epilog.205

sw.default:                                       ; preds = %if.end
  %40 = load i8, i8* %ubCrtByte, align 1, !tbaa !9
  %idxprom29 = zext i8 %40 to i64
  %arrayidx30 = getelementptr inbounds [256 x %struct.sc_tbl], [256 x %struct.sc_tbl]* @gdi_ScanTbl, i32 0, i64 %idxprom29
  %ubRl = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx30, i32 0, i32 1
  %41 = load i8, i8* %ubRl, align 1, !tbaa !36
  %tobool31 = icmp ne i8 %41, 0
  br i1 %tobool31, label %if.then.32, label %if.else.38

if.then.32:                                       ; preds = %sw.default
  %42 = load i32, i32* %j, align 4, !tbaa !5
  %shl33 = shl i32 %42, 3
  %conv34 = trunc i32 %shl33 to i16
  store i16 %conv34, i16* %usBytePos, align 2, !tbaa !32
  %43 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %44 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %45 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %46 = load i8, i8* %ubCrtByte, align 1, !tbaa !9
  %47 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %48 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call35 = call i64 @GetSimpleScan(i8* %43, i8 zeroext %44, i16* %us1Count, i16* %usDy, i16* %usPosX10, i16* %usPosX01, i16 zeroext %45, i8 zeroext %46, i8 zeroext 8, i8 zeroext %47, i16 zeroext %48) #5
  store i64 %call35, i64* %lTmp, align 8, !tbaa !10
  %49 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %50 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr36 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %add.ptr36, i8** %out_buf.addr, align 8, !tbaa !1
  %51 = load i64, i64* %lTmp, align 8, !tbaa !10
  %52 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add37 = add nsw i64 %52, %51
  store i64 %add37, i64* %lScanSize, align 8, !tbaa !10
  br label %if.end.204

if.else.38:                                       ; preds = %sw.default
  store i32 0, i32* %k, align 4, !tbaa !5
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc, %if.else.38
  %53 = load i32, i32* %k, align 4, !tbaa !5
  %cmp40 = icmp ult i32 %53, 2
  br i1 %cmp40, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.39
  %54 = load i8, i8* %ubCrtByte, align 1, !tbaa !9
  %conv43 = zext i8 %54 to i32
  %55 = load i32, i32* %k, align 4, !tbaa !5
  %mul = mul i32 %55, 4
  %sub44 = sub i32 4, %mul
  %shr45 = ashr i32 %conv43, %sub44
  %and46 = and i32 %shr45, 15
  %conv47 = trunc i32 %and46 to i8
  store i8 %conv47, i8* %ubTemp, align 1, !tbaa !9
  %56 = load i32, i32* %j, align 4, !tbaa !5
  %shl48 = shl i32 %56, 3
  %57 = load i32, i32* %k, align 4, !tbaa !5
  %shl49 = shl i32 %57, 2
  %add50 = add i32 %shl48, %shl49
  %conv51 = trunc i32 %add50 to i16
  store i16 %conv51, i16* %usBytePos, align 2, !tbaa !32
  %58 = load i8, i8* %ubTemp, align 1, !tbaa !9
  %conv52 = zext i8 %58 to i32
  switch i32 %conv52, label %sw.default.196 [
    i32 0, label %sw.bb.53
    i32 15, label %sw.bb.66
    i32 5, label %sw.bb.78
    i32 9, label %sw.bb.99
    i32 10, label %sw.bb.121
    i32 11, label %sw.bb.148
    i32 13, label %sw.bb.171
  ]

sw.bb.53:                                         ; preds = %for.body.42
  %59 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool54 = icmp ne i8 %59, 0
  br i1 %tobool54, label %if.then.55, label %if.end.65

if.then.55:                                       ; preds = %sw.bb.53
  %60 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom56 = zext i8 %60 to i64
  %arrayidx57 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom56
  %61 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx57, align 8, !tbaa !1
  %62 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %63 = load i16, i16* %us1Count, align 2, !tbaa !32
  %64 = load i16, i16* %usDy, align 2, !tbaa !32
  %65 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %66 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %67 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call58 = call i64 %61(i8* %62, i16 zeroext %63, i16 zeroext %64, i16 zeroext %65, i16 zeroext %66, i16 zeroext %67) #5
  store i64 %call58, i64* %lTmp, align 8, !tbaa !10
  %68 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %69 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr59 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %add.ptr59, i8** %out_buf.addr, align 8, !tbaa !1
  %70 = load i64, i64* %lTmp, align 8, !tbaa !10
  %71 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add60 = add nsw i64 %71, %70
  store i64 %add60, i64* %lScanSize, align 8, !tbaa !10
  %72 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv61 = zext i16 %72 to i32
  %73 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv62 = zext i16 %73 to i32
  %sub63 = sub nsw i32 %conv61, %conv62
  %conv64 = trunc i32 %sub63 to i16
  store i16 %conv64, i16* %usPosX10, align 2, !tbaa !32
  store i16 0, i16* %us1Count, align 2, !tbaa !32
  store i16 0, i16* %usDy, align 2, !tbaa !32
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.55, %sw.bb.53
  br label %sw.epilog

sw.bb.66:                                         ; preds = %for.body.42
  %74 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool67 = icmp ne i8 %74, 0
  br i1 %tobool67, label %if.then.68, label %if.else.72

if.then.68:                                       ; preds = %sw.bb.66
  %75 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv69 = zext i16 %75 to i32
  %add70 = add nsw i32 %conv69, 4
  %conv71 = trunc i32 %add70 to i16
  store i16 %conv71, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.77

if.else.72:                                       ; preds = %sw.bb.66
  store i16 4, i16* %us1Count, align 2, !tbaa !32
  %76 = load i32, i32* %j, align 4, !tbaa !5
  %shl73 = shl i32 %76, 3
  %77 = load i32, i32* %k, align 4, !tbaa !5
  %shl74 = shl i32 %77, 2
  %add75 = add i32 %shl73, %shl74
  %conv76 = trunc i32 %add75 to i16
  store i16 %conv76, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.72, %if.then.68
  br label %sw.epilog

sw.bb.78:                                         ; preds = %for.body.42
  %78 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool79 = icmp ne i8 %78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.90

if.then.80:                                       ; preds = %sw.bb.78
  %79 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom81 = zext i8 %79 to i64
  %arrayidx82 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom81
  %80 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx82, align 8, !tbaa !1
  %81 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %82 = load i16, i16* %us1Count, align 2, !tbaa !32
  %83 = load i16, i16* %usDy, align 2, !tbaa !32
  %84 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %85 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %86 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call83 = call i64 %80(i8* %81, i16 zeroext %82, i16 zeroext %83, i16 zeroext %84, i16 zeroext %85, i16 zeroext %86) #5
  store i64 %call83, i64* %lTmp, align 8, !tbaa !10
  %87 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %88 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr84 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %add.ptr84, i8** %out_buf.addr, align 8, !tbaa !1
  %89 = load i64, i64* %lTmp, align 8, !tbaa !10
  %90 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add85 = add nsw i64 %90, %89
  store i64 %add85, i64* %lScanSize, align 8, !tbaa !10
  %91 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv86 = zext i16 %91 to i32
  %92 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv87 = zext i16 %92 to i32
  %sub88 = sub nsw i32 %conv86, %conv87
  %conv89 = trunc i32 %sub88 to i16
  store i16 %conv89, i16* %usPosX10, align 2, !tbaa !32
  store i16 0, i16* %usDy, align 2, !tbaa !32
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.80, %sw.bb.78
  %93 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv91 = zext i16 %93 to i32
  %add92 = add nsw i32 %conv91, 1
  %conv93 = trunc i32 %add92 to i16
  store i16 %conv93, i16* %usPosX01, align 2, !tbaa !32
  %94 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom94 = zext i8 %94 to i64
  %arrayidx95 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom94
  %95 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx95, align 8, !tbaa !1
  %96 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %97 = load i16, i16* %usDy, align 2, !tbaa !32
  %98 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %99 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %100 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call96 = call i64 %95(i8* %96, i16 zeroext 1, i16 zeroext %97, i16 zeroext %98, i16 zeroext %99, i16 zeroext %100) #5
  store i64 %call96, i64* %lTmp, align 8, !tbaa !10
  %101 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %102 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr97 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %add.ptr97, i8** %out_buf.addr, align 8, !tbaa !1
  %103 = load i64, i64* %lTmp, align 8, !tbaa !10
  %104 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add98 = add nsw i64 %104, %103
  store i64 %add98, i64* %lScanSize, align 8, !tbaa !10
  store i16 0, i16* %usPosX10, align 2, !tbaa !32
  store i16 2, i16* %usPosX01, align 2, !tbaa !32
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 1, i16* %us1Count, align 2, !tbaa !32
  br label %sw.epilog

sw.bb.99:                                         ; preds = %for.body.42
  %105 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool100 = icmp ne i8 %105, 0
  br i1 %tobool100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %sw.bb.99
  %106 = load i16, i16* %us1Count, align 2, !tbaa !32
  %inc = add i16 %106, 1
  store i16 %inc, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.103

if.else.102:                                      ; preds = %sw.bb.99
  %107 = load i16, i16* %usBytePos, align 2, !tbaa !32
  store i16 %107, i16* %usPosX01, align 2, !tbaa !32
  store i16 1, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.101
  %108 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom104 = zext i8 %108 to i64
  %arrayidx105 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom104
  %109 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx105, align 8, !tbaa !1
  %110 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %111 = load i16, i16* %us1Count, align 2, !tbaa !32
  %112 = load i16, i16* %usDy, align 2, !tbaa !32
  %113 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %114 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %115 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call106 = call i64 %109(i8* %110, i16 zeroext %111, i16 zeroext %112, i16 zeroext %113, i16 zeroext %114, i16 zeroext %115) #5
  store i64 %call106, i64* %lTmp, align 8, !tbaa !10
  %116 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %117 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr107 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %add.ptr107, i8** %out_buf.addr, align 8, !tbaa !1
  %118 = load i64, i64* %lTmp, align 8, !tbaa !10
  %119 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add108 = add nsw i64 %119, %118
  store i64 %add108, i64* %lScanSize, align 8, !tbaa !10
  %120 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool109 = icmp ne i8 %120, 0
  br i1 %tobool109, label %if.then.110, label %if.else.119

if.then.110:                                      ; preds = %if.end.103
  %121 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv111 = zext i16 %121 to i32
  %122 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv112 = zext i16 %122 to i32
  %sub113 = sub nsw i32 %conv111, %conv112
  %add114 = add nsw i32 %sub113, 1
  %conv115 = trunc i32 %add114 to i16
  store i16 %conv115, i16* %usPosX10, align 2, !tbaa !32
  %123 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv116 = zext i16 %123 to i32
  %add117 = add nsw i32 %conv116, 3
  %conv118 = trunc i32 %add117 to i16
  store i16 %conv118, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.120

if.else.119:                                      ; preds = %if.end.103
  store i16 0, i16* %usPosX10, align 2, !tbaa !32
  store i16 3, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.119, %if.then.110
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 1, i16* %us1Count, align 2, !tbaa !32
  br label %sw.epilog

sw.bb.121:                                        ; preds = %for.body.42
  %124 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool122 = icmp ne i8 %124, 0
  br i1 %tobool122, label %if.then.123, label %if.else.125

if.then.123:                                      ; preds = %sw.bb.121
  %125 = load i16, i16* %us1Count, align 2, !tbaa !32
  %inc124 = add i16 %125, 1
  store i16 %inc124, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.126

if.else.125:                                      ; preds = %sw.bb.121
  store i16 1, i16* %us1Count, align 2, !tbaa !32
  %126 = load i16, i16* %usBytePos, align 2, !tbaa !32
  store i16 %126, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.125, %if.then.123
  %127 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom127 = zext i8 %127 to i64
  %arrayidx128 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom127
  %128 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx128, align 8, !tbaa !1
  %129 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %130 = load i16, i16* %us1Count, align 2, !tbaa !32
  %131 = load i16, i16* %usDy, align 2, !tbaa !32
  %132 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %133 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %134 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call129 = call i64 %128(i8* %129, i16 zeroext %130, i16 zeroext %131, i16 zeroext %132, i16 zeroext %133, i16 zeroext %134) #5
  store i64 %call129, i64* %lTmp, align 8, !tbaa !10
  %135 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %136 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr130 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %add.ptr130, i8** %out_buf.addr, align 8, !tbaa !1
  %137 = load i64, i64* %lTmp, align 8, !tbaa !10
  %138 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add131 = add nsw i64 %138, %137
  store i64 %add131, i64* %lScanSize, align 8, !tbaa !10
  %139 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv132 = zext i16 %139 to i32
  %140 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv133 = zext i16 %140 to i32
  %sub134 = sub nsw i32 %conv132, %conv133
  %add135 = add nsw i32 %sub134, 1
  %conv136 = trunc i32 %add135 to i16
  store i16 %conv136, i16* %usPosX10, align 2, !tbaa !32
  %141 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv137 = zext i16 %141 to i32
  %add138 = add nsw i32 %conv137, 2
  %conv139 = trunc i32 %add138 to i16
  store i16 %conv139, i16* %usPosX01, align 2, !tbaa !32
  %142 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom140 = zext i8 %142 to i64
  %arrayidx141 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom140
  %143 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx141, align 8, !tbaa !1
  %144 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %145 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %146 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %147 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call142 = call i64 %143(i8* %144, i16 zeroext 1, i16 zeroext 0, i16 zeroext %145, i16 zeroext %146, i16 zeroext %147) #5
  store i64 %call142, i64* %lTmp, align 8, !tbaa !10
  %148 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %149 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr143 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %add.ptr143, i8** %out_buf.addr, align 8, !tbaa !1
  %150 = load i64, i64* %lTmp, align 8, !tbaa !10
  %151 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add144 = add nsw i64 %151, %150
  store i64 %add144, i64* %lScanSize, align 8, !tbaa !10
  %152 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv145 = zext i16 %152 to i32
  %add146 = add nsw i32 %conv145, 2
  %conv147 = trunc i32 %add146 to i16
  store i16 %conv147, i16* %usPosX10, align 2, !tbaa !32
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 0, i16* %us1Count, align 2, !tbaa !32
  br label %sw.epilog

sw.bb.148:                                        ; preds = %for.body.42
  %153 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool149 = icmp ne i8 %153, 0
  br i1 %tobool149, label %if.then.150, label %if.else.152

if.then.150:                                      ; preds = %sw.bb.148
  %154 = load i16, i16* %us1Count, align 2, !tbaa !32
  %inc151 = add i16 %154, 1
  store i16 %inc151, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.153

if.else.152:                                      ; preds = %sw.bb.148
  store i16 1, i16* %us1Count, align 2, !tbaa !32
  %155 = load i16, i16* %usBytePos, align 2, !tbaa !32
  store i16 %155, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.152, %if.then.150
  %156 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom154 = zext i8 %156 to i64
  %arrayidx155 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom154
  %157 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx155, align 8, !tbaa !1
  %158 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %159 = load i16, i16* %us1Count, align 2, !tbaa !32
  %160 = load i16, i16* %usDy, align 2, !tbaa !32
  %161 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %162 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %163 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call156 = call i64 %157(i8* %158, i16 zeroext %159, i16 zeroext %160, i16 zeroext %161, i16 zeroext %162, i16 zeroext %163) #5
  store i64 %call156, i64* %lTmp, align 8, !tbaa !10
  %164 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %165 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr157 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %add.ptr157, i8** %out_buf.addr, align 8, !tbaa !1
  %166 = load i64, i64* %lTmp, align 8, !tbaa !10
  %167 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add158 = add nsw i64 %167, %166
  store i64 %add158, i64* %lScanSize, align 8, !tbaa !10
  %168 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool159 = icmp ne i8 %168, 0
  br i1 %tobool159, label %if.then.160, label %if.else.169

if.then.160:                                      ; preds = %if.end.153
  %169 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv161 = zext i16 %169 to i32
  %170 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv162 = zext i16 %170 to i32
  %sub163 = sub nsw i32 %conv161, %conv162
  %add164 = add nsw i32 %sub163, 1
  %conv165 = trunc i32 %add164 to i16
  store i16 %conv165, i16* %usPosX10, align 2, !tbaa !32
  %171 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv166 = zext i16 %171 to i32
  %add167 = add nsw i32 %conv166, 2
  %conv168 = trunc i32 %add167 to i16
  store i16 %conv168, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.170

if.else.169:                                      ; preds = %if.end.153
  store i16 0, i16* %usPosX10, align 2, !tbaa !32
  store i16 2, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.169, %if.then.160
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 2, i16* %us1Count, align 2, !tbaa !32
  br label %sw.epilog

sw.bb.171:                                        ; preds = %for.body.42
  %172 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool172 = icmp ne i8 %172, 0
  br i1 %tobool172, label %if.then.173, label %if.else.177

if.then.173:                                      ; preds = %sw.bb.171
  %173 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv174 = zext i16 %173 to i32
  %add175 = add nsw i32 %conv174, 2
  %conv176 = trunc i32 %add175 to i16
  store i16 %conv176, i16* %us1Count, align 2, !tbaa !32
  br label %if.end.178

if.else.177:                                      ; preds = %sw.bb.171
  store i16 2, i16* %us1Count, align 2, !tbaa !32
  %174 = load i16, i16* %usBytePos, align 2, !tbaa !32
  store i16 %174, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.177, %if.then.173
  %175 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom179 = zext i8 %175 to i64
  %arrayidx180 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom179
  %176 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx180, align 8, !tbaa !1
  %177 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %178 = load i16, i16* %us1Count, align 2, !tbaa !32
  %179 = load i16, i16* %usDy, align 2, !tbaa !32
  %180 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %181 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %182 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call181 = call i64 %176(i8* %177, i16 zeroext %178, i16 zeroext %179, i16 zeroext %180, i16 zeroext %181, i16 zeroext %182) #5
  store i64 %call181, i64* %lTmp, align 8, !tbaa !10
  %183 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %184 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr182 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %add.ptr182, i8** %out_buf.addr, align 8, !tbaa !1
  %185 = load i64, i64* %lTmp, align 8, !tbaa !10
  %186 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add183 = add nsw i64 %186, %185
  store i64 %add183, i64* %lScanSize, align 8, !tbaa !10
  %187 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %tobool184 = icmp ne i8 %187, 0
  br i1 %tobool184, label %if.then.185, label %if.else.194

if.then.185:                                      ; preds = %if.end.178
  %188 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv186 = zext i16 %188 to i32
  %189 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv187 = zext i16 %189 to i32
  %sub188 = sub nsw i32 %conv186, %conv187
  %add189 = add nsw i32 %sub188, 2
  %conv190 = trunc i32 %add189 to i16
  store i16 %conv190, i16* %usPosX10, align 2, !tbaa !32
  %190 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %conv191 = zext i16 %190 to i32
  %add192 = add nsw i32 %conv191, 3
  %conv193 = trunc i32 %add192 to i16
  store i16 %conv193, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.195

if.else.194:                                      ; preds = %if.end.178
  store i16 0, i16* %usPosX10, align 2, !tbaa !32
  store i16 3, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194, %if.then.185
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 1, i16* %us1Count, align 2, !tbaa !32
  br label %sw.epilog

sw.default.196:                                   ; preds = %for.body.42
  %191 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %192 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %193 = load i16, i16* %usBytePos, align 2, !tbaa !32
  %194 = load i8, i8* %ubTemp, align 1, !tbaa !9
  %195 = load i8, i8* %ubPreBit, align 1, !tbaa !9
  %196 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call197 = call i64 @GetSimpleScan(i8* %191, i8 zeroext %192, i16* %us1Count, i16* %usDy, i16* %usPosX10, i16* %usPosX01, i16 zeroext %193, i8 zeroext %194, i8 zeroext 4, i8 zeroext %195, i16 zeroext %196) #5
  store i64 %call197, i64* %lTmp, align 8, !tbaa !10
  %197 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %198 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr198 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %add.ptr198, i8** %out_buf.addr, align 8, !tbaa !1
  %199 = load i64, i64* %lTmp, align 8, !tbaa !10
  %200 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add199 = add nsw i64 %200, %199
  store i64 %add199, i64* %lScanSize, align 8, !tbaa !10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.196, %if.end.195, %if.end.170, %if.end.126, %if.end.120, %if.end.90, %if.end.77, %if.end.65
  %201 = load i8, i8* %ubTemp, align 1, !tbaa !9
  %conv200 = zext i8 %201 to i32
  %and201 = and i32 %conv200, 1
  %conv202 = trunc i32 %and201 to i8
  store i8 %conv202, i8* %ubPreBit, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %202 = load i32, i32* %k, align 4, !tbaa !5
  %inc203 = add i32 %202, 1
  store i32 %inc203, i32* %k, align 4, !tbaa !5
  br label %for.cond.39

for.end:                                          ; preds = %for.cond.39
  br label %if.end.204

if.end.204:                                       ; preds = %for.end, %if.then.32
  br label %sw.epilog.205

sw.epilog.205:                                    ; preds = %if.end.204, %if.end.28, %if.end.19
  %203 = load i8, i8* %ubCrtByte, align 1, !tbaa !9
  %conv206 = zext i8 %203 to i32
  %and207 = and i32 %conv206, 1
  %conv208 = trunc i32 %and207 to i8
  store i8 %conv208, i8* %ubPreBit, align 1, !tbaa !9
  br label %for.inc.209

for.inc.209:                                      ; preds = %sw.epilog.205
  %204 = load i32, i32* %j, align 4, !tbaa !5
  %inc210 = add i32 %204, 1
  store i32 %inc210, i32* %j, align 4, !tbaa !5
  br label %for.cond.7

for.end.211:                                      ; preds = %for.cond.7
  %205 = load i16, i16* %us1Count, align 2, !tbaa !32
  %tobool212 = icmp ne i16 %205, 0
  br i1 %tobool212, label %if.then.213, label %if.end.223

if.then.213:                                      ; preds = %for.end.211
  %206 = load i8, i8* %ubSizeMode, align 1, !tbaa !9
  %idxprom214 = zext i8 %206 to i64
  %arrayidx215 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom214
  %207 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx215, align 8, !tbaa !1
  %208 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %209 = load i16, i16* %us1Count, align 2, !tbaa !32
  %210 = load i16, i16* %usDy, align 2, !tbaa !32
  %211 = load i16, i16* %usPosX10, align 2, !tbaa !32
  %212 = load i16, i16* %usPosX01, align 2, !tbaa !32
  %213 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call216 = call i64 %207(i8* %208, i16 zeroext %209, i16 zeroext %210, i16 zeroext %211, i16 zeroext %212, i16 zeroext %213) #5
  store i64 %call216, i64* %lTmp, align 8, !tbaa !10
  %214 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %215 = load i64, i64* %lTmp, align 8, !tbaa !10
  %add.ptr217 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %add.ptr217, i8** %out_buf.addr, align 8, !tbaa !1
  %216 = load i64, i64* %lTmp, align 8, !tbaa !10
  %217 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add218 = add nsw i64 %217, %216
  store i64 %add218, i64* %lScanSize, align 8, !tbaa !10
  %218 = load i32, i32* %j, align 4, !tbaa !5
  %shl219 = shl i32 %218, 3
  %219 = load i16, i16* %us1Count, align 2, !tbaa !32
  %conv220 = zext i16 %219 to i32
  %sub221 = sub i32 %shl219, %conv220
  %conv222 = trunc i32 %sub221 to i16
  store i16 %conv222, i16* %usPosX10, align 2, !tbaa !32
  store i16 0, i16* %us1Count, align 2, !tbaa !32
  store i16 0, i16* %usDy, align 2, !tbaa !32
  store i16 0, i16* %usPosX01, align 2, !tbaa !32
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.213, %for.end.211
  %220 = load i16, i16* %usDy, align 2, !tbaa !32
  %inc224 = add i16 %220, 1
  store i16 %inc224, i16* %usDy, align 2, !tbaa !32
  %221 = load i32, i32* %i, align 4, !tbaa !5
  %rem = urem i32 %221, 5
  %cmp225 = icmp eq i32 %rem, 4
  br i1 %cmp225, label %if.then.227, label %if.end.236

if.then.227:                                      ; preds = %if.end.223
  %222 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %conv228 = zext i16 %222 to i64
  %223 = load i32, i32* %i, align 4, !tbaa !5
  %add229 = add i32 %223, 1
  %conv230 = zext i32 %add229 to i64
  %mul231 = mul nsw i64 %conv228, %conv230
  store i64 %mul231, i64* %lCrtSize, align 8, !tbaa !10
  %224 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %225 = load i64, i64* %lCrtSize, align 8, !tbaa !10
  %cmp232 = icmp sge i64 %224, %225
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.227
  store i64 -1, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.235:                                       ; preds = %if.then.227
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.223
  br label %for.inc.237

for.inc.237:                                      ; preds = %if.end.236
  %226 = load i32, i32* %i, align 4, !tbaa !5
  %inc238 = add i32 %226, 1
  store i32 %inc238, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end.239:                                      ; preds = %for.cond
  %227 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %conv240 = zext i16 %227 to i64
  %228 = load i16, i16* %usHeight.addr, align 2, !tbaa !32
  %conv241 = zext i16 %228 to i64
  %mul242 = mul nsw i64 %conv240, %conv241
  store i64 %mul242, i64* %lCrtSize, align 8, !tbaa !10
  %229 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add243 = add nsw i64 %229, 4
  %230 = load i64, i64* %lCrtSize, align 8, !tbaa !10
  %cmp244 = icmp sge i64 %add243, %230
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %for.end.239
  store i64 -1, i64* %lScanSize, align 8, !tbaa !10
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.246, %for.end.239
  %231 = load i64, i64* %lScanSize, align 8, !tbaa !10
  store i64 %231, i64* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.247, %if.then.234
  call void @llvm.lifetime.end(i64 1, i8* %ubTemp) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubSizeMode) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubRevMode) #2
  %232 = bitcast i16* %usBytePos to i8*
  call void @llvm.lifetime.end(i64 2, i8* %232) #2
  %233 = bitcast i16* %usDy to i8*
  call void @llvm.lifetime.end(i64 2, i8* %233) #2
  %234 = bitcast i16* %usPosX10 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %234) #2
  %235 = bitcast i16* %usPosX01 to i8*
  call void @llvm.lifetime.end(i64 2, i8* %235) #2
  %236 = bitcast i16* %us1Count to i8*
  call void @llvm.lifetime.end(i64 2, i8* %236) #2
  %237 = bitcast i64* %lCrtSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %237) #2
  %238 = bitcast i64* %lTmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %238) #2
  %239 = bitcast i64* %lScanSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %239) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubCrtByte) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubPreBit) #2
  %240 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %240) #2
  %241 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %241) #2
  %242 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %242) #2
  %243 = load i64, i64* %retval
  ret i64 %243
}

; Function Attrs: nounwind uwtable
define internal i64 @GetSimpleScan(i8* %out_buf, i8 zeroext %ubSizeMode, i16* %us1Count, i16* %usDy, i16* %usPosX10, i16* %usPosX01, i16 zeroext %usBytePos, i8 zeroext %ubCrtByte, i8 zeroext %ubSize, i8 zeroext %ubPreBit, i16 zeroext %usWidth) #1 {
entry:
  %out_buf.addr = alloca i8*, align 8
  %ubSizeMode.addr = alloca i8, align 1
  %us1Count.addr = alloca i16*, align 8
  %usDy.addr = alloca i16*, align 8
  %usPosX10.addr = alloca i16*, align 8
  %usPosX01.addr = alloca i16*, align 8
  %usBytePos.addr = alloca i16, align 2
  %ubCrtByte.addr = alloca i8, align 1
  %ubSize.addr = alloca i8, align 1
  %ubPreBit.addr = alloca i8, align 1
  %usWidth.addr = alloca i16, align 2
  %lScanSize = alloca i64, align 8
  %ubDx = alloca i8, align 1
  %ubRl = alloca i8, align 1
  %ubLastBit = alloca i8, align 1
  store i8* %out_buf, i8** %out_buf.addr, align 8, !tbaa !1
  store i8 %ubSizeMode, i8* %ubSizeMode.addr, align 1, !tbaa !9
  store i16* %us1Count, i16** %us1Count.addr, align 8, !tbaa !1
  store i16* %usDy, i16** %usDy.addr, align 8, !tbaa !1
  store i16* %usPosX10, i16** %usPosX10.addr, align 8, !tbaa !1
  store i16* %usPosX01, i16** %usPosX01.addr, align 8, !tbaa !1
  store i16 %usBytePos, i16* %usBytePos.addr, align 2, !tbaa !32
  store i8 %ubCrtByte, i8* %ubCrtByte.addr, align 1, !tbaa !9
  store i8 %ubSize, i8* %ubSize.addr, align 1, !tbaa !9
  store i8 %ubPreBit, i8* %ubPreBit.addr, align 1, !tbaa !9
  store i16 %usWidth, i16* %usWidth.addr, align 2, !tbaa !32
  %0 = bitcast i64* %lScanSize to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubDx) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubRl) #2
  call void @llvm.lifetime.start(i64 1, i8* %ubLastBit) #2
  store i64 0, i64* %lScanSize, align 8, !tbaa !10
  %1 = load i8, i8* %ubSize.addr, align 1, !tbaa !9
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [256 x %struct.sc_tbl], [256 x %struct.sc_tbl]* @gdi_ScanTbl, i32 0, i64 %idxprom
  %ubDx2 = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx, i32 0, i32 0
  %3 = load i8, i8* %ubDx2, align 1, !tbaa !38
  store i8 %3, i8* %ubDx, align 1, !tbaa !9
  %4 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %idxprom3 = zext i8 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x %struct.sc_tbl], [256 x %struct.sc_tbl]* @gdi_ScanTbl, i32 0, i64 %idxprom3
  %ubRl5 = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx4, i32 0, i32 1
  %5 = load i8, i8* %ubRl5, align 1, !tbaa !36
  store i8 %5, i8* %ubRl, align 1, !tbaa !9
  %6 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %idxprom6 = zext i8 %6 to i64
  %arrayidx7 = getelementptr inbounds [256 x %struct.sc_tbl], [256 x %struct.sc_tbl]* @gdi_ScanTbl, i32 0, i64 %idxprom6
  %ubLastBit8 = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx7, i32 0, i32 2
  %7 = load i8, i8* %ubLastBit8, align 1, !tbaa !39
  store i8 %7, i8* %ubLastBit, align 1, !tbaa !9
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %conv9 = zext i8 %8 to i32
  %and = and i32 %conv9, 15
  %conv10 = trunc i32 %and to i8
  store i8 %conv10, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %9 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %idxprom11 = zext i8 %9 to i64
  %arrayidx12 = getelementptr inbounds [16 x %struct.sc_tbl], [16 x %struct.sc_tbl]* @gdi_ScanTbl4, i32 0, i64 %idxprom11
  %ubDx13 = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx12, i32 0, i32 0
  %10 = load i8, i8* %ubDx13, align 1, !tbaa !38
  store i8 %10, i8* %ubDx, align 1, !tbaa !9
  %11 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %idxprom14 = zext i8 %11 to i64
  %arrayidx15 = getelementptr inbounds [16 x %struct.sc_tbl], [16 x %struct.sc_tbl]* @gdi_ScanTbl4, i32 0, i64 %idxprom14
  %ubRl16 = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx15, i32 0, i32 1
  %12 = load i8, i8* %ubRl16, align 1, !tbaa !36
  store i8 %12, i8* %ubRl, align 1, !tbaa !9
  %13 = load i8, i8* %ubCrtByte.addr, align 1, !tbaa !9
  %idxprom17 = zext i8 %13 to i64
  %arrayidx18 = getelementptr inbounds [16 x %struct.sc_tbl], [16 x %struct.sc_tbl]* @gdi_ScanTbl4, i32 0, i64 %idxprom17
  %ubLastBit19 = getelementptr inbounds %struct.sc_tbl, %struct.sc_tbl* %arrayidx18, i32 0, i32 2
  %14 = load i8, i8* %ubLastBit19, align 1, !tbaa !39
  store i8 %14, i8* %ubLastBit, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i8, i8* %ubPreBit.addr, align 1, !tbaa !9
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then.20, label %if.else.59

if.then.20:                                       ; preds = %if.end
  %16 = load i8, i8* %ubDx, align 1, !tbaa !9
  %tobool21 = icmp ne i8 %16, 0
  br i1 %tobool21, label %if.then.22, label %if.else.40

if.then.22:                                       ; preds = %if.then.20
  %17 = load i8, i8* %ubSizeMode.addr, align 1, !tbaa !9
  %idxprom23 = zext i8 %17 to i64
  %arrayidx24 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom23
  %18 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx24, align 8, !tbaa !1
  %19 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %20 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %21 = load i16, i16* %20, align 2, !tbaa !32
  %22 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  %23 = load i16, i16* %22, align 2, !tbaa !32
  %24 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  %25 = load i16, i16* %24, align 2, !tbaa !32
  %26 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  %27 = load i16, i16* %26, align 2, !tbaa !32
  %28 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call = call i64 %18(i8* %19, i16 zeroext %21, i16 zeroext %23, i16 zeroext %25, i16 zeroext %27, i16 zeroext %28) #5
  %29 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add = add nsw i64 %29, %call
  store i64 %add, i64* %lScanSize, align 8, !tbaa !10
  %30 = load i16, i16* %usBytePos.addr, align 2, !tbaa !32
  %conv25 = zext i16 %30 to i32
  %31 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %32 = load i16, i16* %31, align 2, !tbaa !32
  %conv26 = zext i16 %32 to i32
  %sub = sub nsw i32 %conv25, %conv26
  %conv27 = trunc i32 %sub to i16
  %33 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  store i16 %conv27, i16* %33, align 2, !tbaa !32
  %34 = load i16, i16* %usBytePos.addr, align 2, !tbaa !32
  %conv28 = zext i16 %34 to i32
  %35 = load i8, i8* %ubDx, align 1, !tbaa !9
  %conv29 = zext i8 %35 to i32
  %add30 = add nsw i32 %conv28, %conv29
  %conv31 = trunc i32 %add30 to i16
  %36 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  store i16 %conv31, i16* %36, align 2, !tbaa !32
  %37 = load i8, i8* %ubRl, align 1, !tbaa !9
  %conv32 = zext i8 %37 to i16
  %38 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  store i16 %conv32, i16* %38, align 2, !tbaa !32
  %39 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  store i16 0, i16* %39, align 2, !tbaa !32
  %40 = load i8, i8* %ubLastBit, align 1, !tbaa !9
  %tobool33 = icmp ne i8 %40, 0
  br i1 %tobool33, label %if.end.39, label %if.then.34

if.then.34:                                       ; preds = %if.then.22
  %41 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %42 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %add.ptr, i8** %out_buf.addr, align 8, !tbaa !1
  %43 = load i8, i8* %ubSizeMode.addr, align 1, !tbaa !9
  %idxprom35 = zext i8 %43 to i64
  %arrayidx36 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom35
  %44 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx36, align 8, !tbaa !1
  %45 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %46 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %47 = load i16, i16* %46, align 2, !tbaa !32
  %48 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  %49 = load i16, i16* %48, align 2, !tbaa !32
  %50 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  %51 = load i16, i16* %50, align 2, !tbaa !32
  %52 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  %53 = load i16, i16* %52, align 2, !tbaa !32
  %54 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call37 = call i64 %44(i8* %45, i16 zeroext %47, i16 zeroext %49, i16 zeroext %51, i16 zeroext %53, i16 zeroext %54) #5
  %55 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add38 = add nsw i64 %55, %call37
  store i64 %add38, i64* %lScanSize, align 8, !tbaa !10
  %56 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  %57 = load i16, i16* %56, align 2, !tbaa !32
  %58 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  store i16 %57, i16* %58, align 2, !tbaa !32
  %59 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  store i16 0, i16* %59, align 2, !tbaa !32
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %if.then.22
  br label %if.end.58

if.else.40:                                       ; preds = %if.then.20
  %60 = load i8, i8* %ubRl, align 1, !tbaa !9
  %conv41 = zext i8 %60 to i32
  %61 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %62 = load i16, i16* %61, align 2, !tbaa !32
  %conv42 = zext i16 %62 to i32
  %add43 = add nsw i32 %conv42, %conv41
  %conv44 = trunc i32 %add43 to i16
  store i16 %conv44, i16* %61, align 2, !tbaa !32
  %63 = load i8, i8* %ubLastBit, align 1, !tbaa !9
  %tobool45 = icmp ne i8 %63, 0
  br i1 %tobool45, label %if.end.57, label %if.then.46

if.then.46:                                       ; preds = %if.else.40
  %64 = load i8, i8* %ubSizeMode.addr, align 1, !tbaa !9
  %idxprom47 = zext i8 %64 to i64
  %arrayidx48 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom47
  %65 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx48, align 8, !tbaa !1
  %66 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %67 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %68 = load i16, i16* %67, align 2, !tbaa !32
  %69 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  %70 = load i16, i16* %69, align 2, !tbaa !32
  %71 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  %72 = load i16, i16* %71, align 2, !tbaa !32
  %73 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  %74 = load i16, i16* %73, align 2, !tbaa !32
  %75 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call49 = call i64 %65(i8* %66, i16 zeroext %68, i16 zeroext %70, i16 zeroext %72, i16 zeroext %74, i16 zeroext %75) #5
  %76 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add50 = add nsw i64 %76, %call49
  store i64 %add50, i64* %lScanSize, align 8, !tbaa !10
  %77 = load i16, i16* %usBytePos.addr, align 2, !tbaa !32
  %conv51 = zext i16 %77 to i32
  %78 = load i8, i8* %ubRl, align 1, !tbaa !9
  %conv52 = zext i8 %78 to i32
  %add53 = add nsw i32 %conv51, %conv52
  %79 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %80 = load i16, i16* %79, align 2, !tbaa !32
  %conv54 = zext i16 %80 to i32
  %sub55 = sub nsw i32 %add53, %conv54
  %conv56 = trunc i32 %sub55 to i16
  %81 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  store i16 %conv56, i16* %81, align 2, !tbaa !32
  %82 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  store i16 0, i16* %82, align 2, !tbaa !32
  %83 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  store i16 0, i16* %83, align 2, !tbaa !32
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.46, %if.else.40
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.39
  br label %if.end.81

if.else.59:                                       ; preds = %if.end
  %84 = load i16, i16* %usBytePos.addr, align 2, !tbaa !32
  %conv60 = zext i16 %84 to i32
  %85 = load i8, i8* %ubDx, align 1, !tbaa !9
  %conv61 = zext i8 %85 to i32
  %add62 = add nsw i32 %conv60, %conv61
  %conv63 = trunc i32 %add62 to i16
  %86 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  store i16 %conv63, i16* %86, align 2, !tbaa !32
  %87 = load i8, i8* %ubRl, align 1, !tbaa !9
  %conv64 = zext i8 %87 to i32
  %88 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %89 = load i16, i16* %88, align 2, !tbaa !32
  %conv65 = zext i16 %89 to i32
  %add66 = add nsw i32 %conv65, %conv64
  %conv67 = trunc i32 %add66 to i16
  store i16 %conv67, i16* %88, align 2, !tbaa !32
  %90 = load i8, i8* %ubLastBit, align 1, !tbaa !9
  %tobool68 = icmp ne i8 %90, 0
  br i1 %tobool68, label %if.end.80, label %if.then.69

if.then.69:                                       ; preds = %if.else.59
  %91 = load i8, i8* %ubSizeMode.addr, align 1, !tbaa !9
  %idxprom70 = zext i8 %91 to i64
  %arrayidx71 = getelementptr inbounds [2 x i64 (i8*, i16, i16, i16, i16, i16)*], [2 x i64 (i8*, i16, i16, i16, i16, i16)*]* @UpdateScanLine, i32 0, i64 %idxprom70
  %92 = load i64 (i8*, i16, i16, i16, i16, i16)*, i64 (i8*, i16, i16, i16, i16, i16)** %arrayidx71, align 8, !tbaa !1
  %93 = load i8*, i8** %out_buf.addr, align 8, !tbaa !1
  %94 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %95 = load i16, i16* %94, align 2, !tbaa !32
  %96 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  %97 = load i16, i16* %96, align 2, !tbaa !32
  %98 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  %99 = load i16, i16* %98, align 2, !tbaa !32
  %100 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  %101 = load i16, i16* %100, align 2, !tbaa !32
  %102 = load i16, i16* %usWidth.addr, align 2, !tbaa !32
  %call72 = call i64 %92(i8* %93, i16 zeroext %95, i16 zeroext %97, i16 zeroext %99, i16 zeroext %101, i16 zeroext %102) #5
  %103 = load i64, i64* %lScanSize, align 8, !tbaa !10
  %add73 = add nsw i64 %103, %call72
  store i64 %add73, i64* %lScanSize, align 8, !tbaa !10
  %104 = load i16*, i16** %usPosX01.addr, align 8, !tbaa !1
  %105 = load i16, i16* %104, align 2, !tbaa !32
  %conv74 = zext i16 %105 to i32
  %106 = load i8, i8* %ubRl, align 1, !tbaa !9
  %conv75 = zext i8 %106 to i32
  %add76 = add nsw i32 %conv74, %conv75
  %107 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  %108 = load i16, i16* %107, align 2, !tbaa !32
  %conv77 = zext i16 %108 to i32
  %sub78 = sub nsw i32 %add76, %conv77
  %conv79 = trunc i32 %sub78 to i16
  %109 = load i16*, i16** %usPosX10.addr, align 8, !tbaa !1
  store i16 %conv79, i16* %109, align 2, !tbaa !32
  %110 = load i16*, i16** %us1Count.addr, align 8, !tbaa !1
  store i16 0, i16* %110, align 2, !tbaa !32
  %111 = load i16*, i16** %usDy.addr, align 8, !tbaa !1
  store i16 0, i16* %111, align 2, !tbaa !32
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.69, %if.else.59
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.58
  %112 = load i64, i64* %lScanSize, align 8, !tbaa !10
  call void @llvm.lifetime.end(i64 1, i8* %ubLastBit) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubRl) #2
  call void @llvm.lifetime.end(i64 1, i8* %ubDx) #2
  %113 = bitcast i64* %lScanSize to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #2
  ret i64 %112
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !3, i64 0}
!9 = !{!3, !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !3, i64 0}
!12 = !{!13, !2, i64 24}
!13 = !{!"gx_device_printer_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !14, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !15, i64 96, !18, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !11, i64 928, !11, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !11, i64 968, !11, i64 976, !19, i64 984, !6, i64 1052, !6, i64 1056, !20, i64 1064, !2, i64 1104, !3, i64 1112, !22, i64 1120, !23, i64 1144, !3, i64 1728, !24, i64 12968, !3, i64 13056, !6, i64 17152, !6, i64 17156, !6, i64 17160, !6, i64 17164, !6, i64 17168, !6, i64 17172, !2, i64 17176, !11, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !6, i64 17232, !2, i64 17240, !6, i64 17248, !6, i64 17252, !26, i64 17256, !6, i64 17288, !2, i64 17296, !23, i64 17304, !23, i64 17888}
!14 = !{!"rc_header_s", !11, i64 0, !2, i64 8, !2, i64 16}
!15 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !16, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !17, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !11, i64 704, !6, i64 712}
!16 = !{!"short", !3, i64 0}
!17 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!18 = !{!"gx_device_cached_colors_s", !11, i64 0, !11, i64 8}
!19 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!20 = !{!"gdev_space_params_s", !11, i64 0, !11, i64 8, !21, i64 16, !6, i64 32, !3, i64 36}
!21 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !11, i64 8}
!22 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!23 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!24 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !25, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!25 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24, !6, i64 28}
!27 = !{!28, !2, i64 200}
!28 = !{!"gs_memory_s", !2, i64 0, !29, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!29 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!30 = !{!28, !2, i64 88}
!31 = !{!28, !2, i64 24}
!32 = !{!16, !16, i64 0}
!33 = !{!13, !6, i64 17168}
!34 = !{!13, !6, i64 17164}
!35 = !{!13, !2, i64 17176}
!36 = !{!37, !3, i64 1}
!37 = !{!"", !3, i64 0, !3, i64 1, !3, i64 2}
!38 = !{!37, !3, i64 0}
!39 = !{!37, !3, i64 2}
