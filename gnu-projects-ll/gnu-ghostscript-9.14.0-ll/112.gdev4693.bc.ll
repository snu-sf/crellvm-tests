; ModuleID = './gdev4693.bc'
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

@t4693d_procs = internal global %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @gdev_prn_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @gdev_prn_close, i64 (%struct.gx_device_s*, i16*)* @gdev_t4693d_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gdev_t4693d_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"t4693d2\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"DeviceRGB\00", align 1
@gs_t4693d2_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @t4693d_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 8, i8 -1, i32 3, i32 3, i32 4, i32 4, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 850, i32 1100, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float -2.500000e+01, float -2.500000e+01], [4 x float] [float 1.800000e+01, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @t4693d_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"t4693d4\00", align 1
@gs_t4693d4_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @t4693d_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 16, i8 -1, i32 15, i32 15, i32 16, i32 16, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 850, i32 1100, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float -2.500000e+01, float -2.500000e+01], [4 x float] [float 1.800000e+01, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @t4693d_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"t4693d8\00", align 1
@gs_t4693d8_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @t4693d_procs, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 3, i32 1, i16 24, i8 -1, i32 255, i32 255, i32 256, i32 256, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 850, i32 1100, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float 1.000000e+02, float 1.000000e+02], [2 x float] [float -2.500000e+01, float -2.500000e+01], [4 x float] [float 1.800000e+01, float 1.800000e+01, float 1.800000e+01, float 1.800000e+01], i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @t4693d_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"t4693d_print_page\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Could not write header (t4693d).\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Bad depth (%d) t4693d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Could not write pixel (t4693d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Could not write EOL (t4693d).\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Could not write EOT (t4693d).\0A\00", align 1

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @t4693d_print_page(%struct.gx_device_printer_s* %dev, %struct._IO_FILE* %ps_stream) #1 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_printer_s*, align 8
  %ps_stream.addr = alloca %struct._IO_FILE*, align 8
  %header = alloca [32 x i8], align 16
  %depth = alloca i32, align 4
  %line_size = alloca i32, align 4
  %data = alloca i8*, align 8
  %p = alloca i8*, align 8
  %data_size = alloca i16, align 2
  %checksum = alloca i32, align 4
  %lnum = alloca i32, align 4
  %i = alloca i32, align 4
  %swap = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %dev, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %ps_stream, %struct._IO_FILE** %ps_stream.addr, align 8, !tbaa !1
  %0 = bitcast [32 x i8]* %header to i8*
  call void @llvm.lifetime.start(i64 32, i8* %0) #2
  %1 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 11
  %depth1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %3 = load i16, i16* %depth1, align 2, !tbaa !5
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %depth, align 4, !tbaa !22
  %4 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #2
  %5 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gx_device_printer_s* %5 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %6, i32 0) #3
  store i32 %call, i32* %line_size, align 4, !tbaa !22
  %7 = bitcast i8** %data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %8, i32 0, i32 3
  %9 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !23
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !24
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %10, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %11 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !27
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory2 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %12, i32 0, i32 3
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !23
  %non_gc_memory3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %13, i32 0, i32 3
  %14 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory3, align 8, !tbaa !24
  %15 = load i32, i32* %line_size, align 4, !tbaa !22
  %call4 = call i8* %11(%struct.gs_memory_s* %14, i32 %15, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i8* %call4, i8** %data, align 8, !tbaa !1
  %16 = bitcast i8** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %16) #2
  %17 = bitcast i16* %data_size to i8*
  call void @llvm.lifetime.start(i64 2, i8* %17) #2
  %18 = load i32, i32* %line_size, align 4, !tbaa !22
  %19 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %19, i32 0, i32 13
  %20 = load i32, i32* %width, align 4, !tbaa !28
  %div = sdiv i32 %18, %20
  %conv5 = trunc i32 %div to i16
  store i16 %conv5, i16* %data_size, align 2, !tbaa !29
  %21 = bitcast i32* %checksum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #2
  %22 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #2
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #2
  call void @llvm.lifetime.start(i64 1, i8* %swap) #2
  %24 = load i8*, i8** %data, align 8, !tbaa !1
  %cmp = icmp eq i8* %24, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8, !tbaa !1
  %25 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr, i8** %p, align 8, !tbaa !1
  store i8 20, i8* %25, align 1, !tbaa !30
  %26 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr7 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr7, i8** %p, align 8, !tbaa !1
  store i8 -44, i8* %26, align 1, !tbaa !30
  %27 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %width8 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %27, i32 0, i32 13
  %28 = load i32, i32* %width8, align 4, !tbaa !28
  %shr = ashr i32 %28, 6
  %and = and i32 %shr, 63
  %or = or i32 -64, %and
  %conv9 = trunc i32 %or to i8
  %29 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr10, i8** %p, align 8, !tbaa !1
  store i8 %conv9, i8* %29, align 1, !tbaa !30
  %30 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %width11 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %30, i32 0, i32 13
  %31 = load i32, i32* %width11, align 4, !tbaa !28
  %and12 = and i32 %31, 63
  %or13 = or i32 -128, %and12
  %conv14 = trunc i32 %or13 to i8
  %32 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr15 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8, !tbaa !1
  store i8 %conv14, i8* %32, align 1, !tbaa !30
  %33 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %33, i32 0, i32 14
  %34 = load i32, i32* %height, align 4, !tbaa !31
  %shr16 = ashr i32 %34, 6
  %and17 = and i32 %shr16, 63
  %or18 = or i32 -64, %and17
  %conv19 = trunc i32 %or18 to i8
  %35 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr20 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8, !tbaa !1
  store i8 %conv19, i8* %35, align 1, !tbaa !30
  %36 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %height21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %36, i32 0, i32 14
  %37 = load i32, i32* %height21, align 4, !tbaa !31
  %and22 = and i32 %37, 63
  %or23 = or i32 -128, %and22
  %conv24 = trunc i32 %or23 to i8
  %38 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr25, i8** %p, align 8, !tbaa !1
  store i8 %conv24, i8* %38, align 1, !tbaa !30
  %39 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr26, i8** %p, align 8, !tbaa !1
  store i8 -63, i8* %39, align 1, !tbaa !30
  %40 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr27 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr27, i8** %p, align 8, !tbaa !1
  store i8 -64, i8* %40, align 1, !tbaa !30
  %41 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr28 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8, !tbaa !1
  store i8 -64, i8* %41, align 1, !tbaa !30
  %42 = load i32, i32* %depth, align 4, !tbaa !22
  %cmp29 = icmp eq i32 %42, 8
  %conv30 = zext i1 %cmp29 to i32
  %conv31 = trunc i32 %conv30 to i8
  %conv32 = sext i8 %conv31 to i32
  %tobool = icmp ne i32 %conv32, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %43 = load i32, i32* %depth, align 4, !tbaa !22
  %cmp33 = icmp eq i32 %43, 16
  %cond = select i1 %cmp33, i32 204, i32 205
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond35 = phi i32 [ 203, %cond.true ], [ %cond, %cond.false ]
  %conv36 = trunc i32 %cond35 to i8
  %44 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr37, i8** %p, align 8, !tbaa !1
  store i8 %conv36, i8* %44, align 1, !tbaa !30
  %45 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr38 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr38, i8** %p, align 8, !tbaa !1
  store i8 -63, i8* %45, align 1, !tbaa !30
  %46 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr39 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8, !tbaa !1
  store i8 -61, i8* %46, align 1, !tbaa !30
  %47 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr40 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr40, i8** %p, align 8, !tbaa !1
  store i8 -61, i8* %47, align 1, !tbaa !30
  %48 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr41 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr41, i8** %p, align 8, !tbaa !1
  store i8 -64, i8* %48, align 1, !tbaa !30
  %49 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr42 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr42, i8** %p, align 8, !tbaa !1
  store i8 -64, i8* %49, align 1, !tbaa !30
  %50 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr43, i8** %p, align 8, !tbaa !1
  store i8 -64, i8* %50, align 1, !tbaa !30
  %51 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr44, i8** %p, align 8, !tbaa !1
  store i8 -61, i8* %51, align 1, !tbaa !30
  %52 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr45 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr45, i8** %p, align 8, !tbaa !1
  store i8 -55, i8* %52, align 1, !tbaa !30
  %53 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr46 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8, !tbaa !1
  store i8 -107, i8* %53, align 1, !tbaa !30
  %54 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr47 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8, !tbaa !1
  store i8 -127, i8* %54, align 1, !tbaa !30
  store i32 0, i32* %checksum, align 4, !tbaa !22
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %55 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 %idxprom
  %56 = load i8*, i8** %p, align 8, !tbaa !1
  %cmp48 = icmp ne i8* %arrayidx, %56
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom50 = sext i32 %57 to i64
  %arrayidx51 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i64 %idxprom50
  %58 = load i8, i8* %arrayidx51, align 1, !tbaa !30
  %conv52 = sext i8 %58 to i32
  %59 = load i32, i32* %checksum, align 4, !tbaa !22
  %add = add nsw i32 %59, %conv52
  store i32 %add, i32* %checksum, align 4, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4, !tbaa !22
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4, !tbaa !22
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %61 = load i32, i32* %checksum, align 4, !tbaa !22
  %rem = srem i32 %61, 128
  %and53 = and i32 %rem, 127
  %or54 = or i32 %and53, 128
  %conv55 = trunc i32 %or54 to i8
  %62 = load i8*, i8** %p, align 8, !tbaa !1
  %incdec.ptr56 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr56, i8** %p, align 8, !tbaa !1
  store i8 %conv55, i8* %62, align 1, !tbaa !30
  %63 = load i8*, i8** %p, align 8, !tbaa !1
  store i8 2, i8* %63, align 1, !tbaa !30
  %arraydecay57 = getelementptr inbounds [32 x i8], [32 x i8]* %header, i32 0, i32 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %ps_stream.addr, align 8, !tbaa !1
  %call58 = call i64 @fwrite(i8* %arraydecay57, i64 1, i64 22, %struct._IO_FILE* %64) #3
  %cmp59 = icmp ne i64 %call58, 22
  br i1 %cmp59, label %if.then.61, label %if.end.69

if.then.61:                                       ; preds = %for.end
  %65 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory62 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %65, i32 0, i32 3
  %66 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory62, align 8, !tbaa !23
  %call63 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0)) #3
  %67 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory64 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %67, i32 0, i32 3
  %68 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory64, align 8, !tbaa !23
  %non_gc_memory65 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %68, i32 0, i32 3
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory65, align 8, !tbaa !24
  %procs66 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %69, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs66, i32 0, i32 2
  %70 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !32
  %71 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory67 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %71, i32 0, i32 3
  %72 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory67, align 8, !tbaa !23
  %non_gc_memory68 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %72, i32 0, i32 3
  %73 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory68, align 8, !tbaa !24
  %74 = load i8*, i8** %data, align 8, !tbaa !1
  call void %70(%struct.gs_memory_s* %73, i8* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.69:                                        ; preds = %for.end
  store i32 0, i32* %lnum, align 4, !tbaa !22
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.141, %if.end.69
  %75 = load i32, i32* %lnum, align 4, !tbaa !22
  %76 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %height71 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %76, i32 0, i32 14
  %77 = load i32, i32* %height71, align 4, !tbaa !31
  %cmp72 = icmp slt i32 %75, %77
  br i1 %cmp72, label %for.body.74, label %for.end.143

for.body.74:                                      ; preds = %for.cond.70
  %78 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %79 = load i32, i32* %lnum, align 4, !tbaa !22
  %80 = load i8*, i8** %data, align 8, !tbaa !1
  %81 = load i32, i32* %line_size, align 4, !tbaa !22
  %call75 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %78, i32 %79, i8* %80, i32 %81) #3
  store i32 0, i32* %i, align 4, !tbaa !22
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.124, %for.body.74
  %82 = load i32, i32* %i, align 4, !tbaa !22
  %83 = load i32, i32* %line_size, align 4, !tbaa !22
  %cmp77 = icmp slt i32 %82, %83
  br i1 %cmp77, label %for.body.79, label %for.end.127

for.body.79:                                      ; preds = %for.cond.76
  %84 = load i32, i32* %depth, align 4, !tbaa !22
  switch i32 %84, label %sw.default [
    i32 8, label %sw.bb
    i32 16, label %sw.bb.85
    i32 24, label %sw.epilog
  ]

sw.bb:                                            ; preds = %for.body.79
  %85 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom80 = sext i32 %85 to i64
  %86 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds i8, i8* %86, i64 %idxprom80
  %87 = load i8, i8* %arrayidx81, align 1, !tbaa !30
  %conv82 = zext i8 %87 to i32
  %and83 = and i32 %conv82, 63
  %conv84 = trunc i32 %and83 to i8
  store i8 %conv84, i8* %arrayidx81, align 1, !tbaa !30
  br label %sw.epilog

sw.bb.85:                                         ; preds = %for.body.79
  %88 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom86 = sext i32 %88 to i64
  %89 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds i8, i8* %89, i64 %idxprom86
  %90 = load i8, i8* %arrayidx87, align 1, !tbaa !30
  store i8 %90, i8* %swap, align 1, !tbaa !30
  %91 = load i32, i32* %i, align 4, !tbaa !22
  %add88 = add nsw i32 %91, 1
  %idxprom89 = sext i32 %add88 to i64
  %92 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds i8, i8* %92, i64 %idxprom89
  %93 = load i8, i8* %arrayidx90, align 1, !tbaa !30
  %conv91 = zext i8 %93 to i32
  %and92 = and i32 %conv91, 15
  %conv93 = trunc i32 %and92 to i8
  %94 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom94 = sext i32 %94 to i64
  %95 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx95 = getelementptr inbounds i8, i8* %95, i64 %idxprom94
  store i8 %conv93, i8* %arrayidx95, align 1, !tbaa !30
  %96 = load i8, i8* %swap, align 1, !tbaa !30
  %97 = load i32, i32* %i, align 4, !tbaa !22
  %add96 = add nsw i32 %97, 1
  %idxprom97 = sext i32 %add96 to i64
  %98 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds i8, i8* %98, i64 %idxprom97
  store i8 %96, i8* %arrayidx98, align 1, !tbaa !30
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.79
  %99 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory99 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %99, i32 0, i32 3
  %100 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory99, align 8, !tbaa !23
  %101 = load i32, i32* %depth, align 4, !tbaa !22
  %call100 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %101) #3
  %102 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory101 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %102, i32 0, i32 3
  %103 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory101, align 8, !tbaa !23
  %non_gc_memory102 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %103, i32 0, i32 3
  %104 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory102, align 8, !tbaa !24
  %procs103 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %104, i32 0, i32 1
  %free_object104 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs103, i32 0, i32 2
  %105 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object104, align 8, !tbaa !32
  %106 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory105 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %106, i32 0, i32 3
  %107 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory105, align 8, !tbaa !23
  %non_gc_memory106 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory106, align 8, !tbaa !24
  %109 = load i8*, i8** %data, align 8, !tbaa !1
  call void %105(%struct.gs_memory_s* %108, i8* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.epilog:                                        ; preds = %for.body.79, %sw.bb.85, %sw.bb
  %110 = load i32, i32* %i, align 4, !tbaa !22
  %idxprom107 = sext i32 %110 to i64
  %111 = load i8*, i8** %data, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds i8, i8* %111, i64 %idxprom107
  %112 = load i16, i16* %data_size, align 2, !tbaa !29
  %conv109 = zext i16 %112 to i64
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %ps_stream.addr, align 8, !tbaa !1
  %call110 = call i64 @fwrite(i8* %arrayidx108, i64 1, i64 %conv109, %struct._IO_FILE* %113) #3
  %114 = load i16, i16* %data_size, align 2, !tbaa !29
  %conv111 = zext i16 %114 to i64
  %cmp112 = icmp ne i64 %call110, %conv111
  br i1 %cmp112, label %if.then.114, label %if.end.123

if.then.114:                                      ; preds = %sw.epilog
  %115 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory115 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %115, i32 0, i32 3
  %116 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory115, align 8, !tbaa !23
  %call116 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %116, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0)) #3
  %117 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory117 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %117, i32 0, i32 3
  %118 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory117, align 8, !tbaa !23
  %non_gc_memory118 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %118, i32 0, i32 3
  %119 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory118, align 8, !tbaa !24
  %procs119 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %119, i32 0, i32 1
  %free_object120 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs119, i32 0, i32 2
  %120 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object120, align 8, !tbaa !32
  %121 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory121 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %121, i32 0, i32 3
  %122 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !23
  %non_gc_memory122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %122, i32 0, i32 3
  %123 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory122, align 8, !tbaa !24
  %124 = load i8*, i8** %data, align 8, !tbaa !1
  call void %120(%struct.gs_memory_s* %123, i8* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.123:                                       ; preds = %sw.epilog
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %125 = load i16, i16* %data_size, align 2, !tbaa !29
  %conv125 = zext i16 %125 to i32
  %126 = load i32, i32* %i, align 4, !tbaa !22
  %add126 = add nsw i32 %126, %conv125
  store i32 %add126, i32* %i, align 4, !tbaa !22
  br label %for.cond.76

for.end.127:                                      ; preds = %for.cond.76
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %ps_stream.addr, align 8, !tbaa !1
  %call128 = call i32 @fputc(i32 2, %struct._IO_FILE* %127) #3
  %cmp129 = icmp ne i32 %call128, 2
  br i1 %cmp129, label %if.then.131, label %if.end.140

if.then.131:                                      ; preds = %for.end.127
  %128 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory132 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %128, i32 0, i32 3
  %129 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory132, align 8, !tbaa !23
  %call133 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0)) #3
  %130 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory134 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %130, i32 0, i32 3
  %131 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory134, align 8, !tbaa !23
  %non_gc_memory135 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %131, i32 0, i32 3
  %132 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory135, align 8, !tbaa !24
  %procs136 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %132, i32 0, i32 1
  %free_object137 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs136, i32 0, i32 2
  %133 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object137, align 8, !tbaa !32
  %134 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory138 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %134, i32 0, i32 3
  %135 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory138, align 8, !tbaa !23
  %non_gc_memory139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %135, i32 0, i32 3
  %136 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory139, align 8, !tbaa !24
  %137 = load i8*, i8** %data, align 8, !tbaa !1
  call void %133(%struct.gs_memory_s* %136, i8* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.140:                                       ; preds = %for.end.127
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %138 = load i32, i32* %lnum, align 4, !tbaa !22
  %inc142 = add nsw i32 %138, 1
  store i32 %inc142, i32* %lnum, align 4, !tbaa !22
  br label %for.cond.70

for.end.143:                                      ; preds = %for.cond.70
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %ps_stream.addr, align 8, !tbaa !1
  %call144 = call i32 @fputc(i32 1, %struct._IO_FILE* %139) #3
  %cmp145 = icmp ne i32 %call144, 1
  br i1 %cmp145, label %if.then.147, label %if.end.156

if.then.147:                                      ; preds = %for.end.143
  %140 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory148 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %140, i32 0, i32 3
  %141 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory148, align 8, !tbaa !23
  %call149 = call i32 (%struct.gs_memory_s*, i8*, ...) @errprintf(%struct.gs_memory_s* %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #3
  %142 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory150 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %142, i32 0, i32 3
  %143 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory150, align 8, !tbaa !23
  %non_gc_memory151 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %143, i32 0, i32 3
  %144 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory151, align 8, !tbaa !24
  %procs152 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %144, i32 0, i32 1
  %free_object153 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs152, i32 0, i32 2
  %145 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object153, align 8, !tbaa !32
  %146 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory154 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %146, i32 0, i32 3
  %147 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory154, align 8, !tbaa !23
  %non_gc_memory155 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %147, i32 0, i32 3
  %148 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory155, align 8, !tbaa !24
  %149 = load i8*, i8** %data, align 8, !tbaa !1
  call void %145(%struct.gs_memory_s* %148, i8* %149, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 -12, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.156:                                       ; preds = %for.end.143
  %150 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory157 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %150, i32 0, i32 3
  %151 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory157, align 8, !tbaa !23
  %non_gc_memory158 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %151, i32 0, i32 3
  %152 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory158, align 8, !tbaa !24
  %procs159 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %152, i32 0, i32 1
  %free_object160 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs159, i32 0, i32 2
  %153 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object160, align 8, !tbaa !32
  %154 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %dev.addr, align 8, !tbaa !1
  %memory161 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %154, i32 0, i32 3
  %155 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory161, align 8, !tbaa !23
  %non_gc_memory162 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %155, i32 0, i32 3
  %156 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory162, align 8, !tbaa !24
  %157 = load i8*, i8** %data, align 8, !tbaa !1
  call void %153(%struct.gs_memory_s* %156, i8* %157, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0)) #3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.156, %if.then.147, %if.then.131, %if.then.114, %sw.default, %if.then.61, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %swap) #2
  %158 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #2
  %159 = bitcast i32* %lnum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #2
  %160 = bitcast i32* %checksum to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #2
  %161 = bitcast i16* %data_size to i8*
  call void @llvm.lifetime.end(i64 2, i8* %161) #2
  %162 = bitcast i8** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %162) #2
  %163 = bitcast i8** %data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %163) #2
  %164 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #2
  %165 = bitcast i32* %depth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %165) #2
  %166 = bitcast [32 x i8]* %header to i8*
  call void @llvm.lifetime.end(i64 32, i8* %166) #2
  %167 = load i32, i32* %retval
  ret i32 %167
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

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

declare i32 @gdev_prn_close(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal i64 @gdev_t4693d_map_rgb_color(%struct.gx_device_s* %dev, i16* %cv) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %cv.addr = alloca i16*, align 8
  %bitspercolor = alloca i16, align 2
  %max_value = alloca i64, align 8
  %r = alloca i16, align 2
  %g = alloca i16, align 2
  %b = alloca i16, align 2
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i16* %cv, i16** %cv.addr, align 8, !tbaa !1
  %0 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %3 = load i16, i16* %depth, align 2, !tbaa !5
  %conv = zext i16 %3 to i32
  %div = sdiv i32 %conv, 3
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %bitspercolor, align 2, !tbaa !29
  %4 = bitcast i64* %max_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv2 = zext i16 %5 to i32
  %shl = shl i32 1, %conv2
  %sub = sub nsw i32 %shl, 1
  %conv3 = sext i32 %sub to i64
  store i64 %conv3, i64* %max_value, align 8, !tbaa !33
  %6 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %6) #2
  %7 = bitcast i16* %g to i8*
  call void @llvm.lifetime.start(i64 2, i8* %7) #2
  %8 = bitcast i16* %b to i8*
  call void @llvm.lifetime.start(i64 2, i8* %8) #2
  %9 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 0
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !29
  store i16 %10, i16* %r, align 2, !tbaa !29
  %11 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds i16, i16* %11, i64 1
  %12 = load i16, i16* %arrayidx4, align 2, !tbaa !29
  store i16 %12, i16* %g, align 2, !tbaa !29
  %13 = load i16*, i16** %cv.addr, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds i16, i16* %13, i64 2
  %14 = load i16, i16* %arrayidx5, align 2, !tbaa !29
  store i16 %14, i16* %b, align 2, !tbaa !29
  %15 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv6 = zext i16 %15 to i32
  %cmp = icmp eq i32 %conv6, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %dec = add i16 %16, -1
  store i16 %dec, i16* %bitspercolor, align 2, !tbaa !29
  %17 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv8 = zext i16 %17 to i32
  %shl9 = shl i32 1, %conv8
  %sub10 = sub nsw i32 %shl9, 1
  %conv11 = sext i32 %sub10 to i64
  store i64 %conv11, i64* %max_value, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %18 = load i16, i16* %r, align 2, !tbaa !29
  %conv12 = zext i16 %18 to i64
  %19 = load i64, i64* %max_value, align 8, !tbaa !33
  %mul = mul i64 %conv12, %19
  %div13 = udiv i64 %mul, 65535
  %20 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv14 = zext i16 %20 to i32
  %mul15 = mul nsw i32 %conv14, 2
  %sh_prom = zext i32 %mul15 to i64
  %shl16 = shl i64 %div13, %sh_prom
  %21 = load i16, i16* %g, align 2, !tbaa !29
  %conv17 = zext i16 %21 to i64
  %22 = load i64, i64* %max_value, align 8, !tbaa !33
  %mul18 = mul i64 %conv17, %22
  %div19 = udiv i64 %mul18, 65535
  %23 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv20 = zext i16 %23 to i32
  %sh_prom21 = zext i32 %conv20 to i64
  %shl22 = shl i64 %div19, %sh_prom21
  %add = add i64 %shl16, %shl22
  %24 = load i16, i16* %b, align 2, !tbaa !29
  %conv23 = zext i16 %24 to i64
  %25 = load i64, i64* %max_value, align 8, !tbaa !33
  %mul24 = mul i64 %conv23, %25
  %div25 = udiv i64 %mul24, 65535
  %add26 = add i64 %add, %div25
  %26 = bitcast i16* %b to i8*
  call void @llvm.lifetime.end(i64 2, i8* %26) #2
  %27 = bitcast i16* %g to i8*
  call void @llvm.lifetime.end(i64 2, i8* %27) #2
  %28 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %28) #2
  %29 = bitcast i64* %max_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %29) #2
  %30 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 2, i8* %30) #2
  ret i64 %add26
}

; Function Attrs: nounwind uwtable
define internal i32 @gdev_t4693d_map_color_rgb(%struct.gx_device_s* %dev, i64 %color, i16* %prgb) #1 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %color.addr = alloca i64, align 8
  %prgb.addr = alloca i16*, align 8
  %bitspercolor = alloca i16, align 2
  %max_value = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i64 %color, i64* %color.addr, align 8, !tbaa !33
  store i16* %prgb, i16** %prgb.addr, align 8, !tbaa !1
  %0 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  %color_info = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %2, i32 0, i32 11
  %depth = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 3
  %3 = load i16, i16* %depth, align 2, !tbaa !5
  %conv = zext i16 %3 to i32
  %div = sdiv i32 %conv, 3
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %bitspercolor, align 2, !tbaa !29
  %4 = bitcast i64* %max_value to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv2 = zext i16 %5 to i32
  %shl = shl i32 1, %conv2
  %sub = sub nsw i32 %shl, 1
  %conv3 = sext i32 %sub to i64
  store i64 %conv3, i64* %max_value, align 8, !tbaa !33
  %6 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv4 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv4, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %dec = add i16 %7, -1
  store i16 %dec, i16* %bitspercolor, align 2, !tbaa !29
  %8 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv6 = zext i16 %8 to i32
  %shl7 = shl i32 1, %conv6
  %sub8 = sub nsw i32 %shl7, 1
  %conv9 = sext i32 %sub8 to i64
  store i64 %conv9, i64* %max_value, align 8, !tbaa !33
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %color.addr, align 8, !tbaa !33
  %10 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv10 = zext i16 %10 to i32
  %mul = mul nsw i32 %conv10, 2
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %9, %sh_prom
  %mul11 = mul i64 %shr, 65535
  %11 = load i64, i64* %max_value, align 8, !tbaa !33
  %div12 = udiv i64 %mul11, %11
  %conv13 = trunc i64 %div12 to i16
  %12 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %12, i64 0
  store i16 %conv13, i16* %arrayidx, align 2, !tbaa !29
  %13 = load i64, i64* %color.addr, align 8, !tbaa !33
  %14 = load i16, i16* %bitspercolor, align 2, !tbaa !29
  %conv14 = zext i16 %14 to i32
  %sh_prom15 = zext i32 %conv14 to i64
  %shr16 = lshr i64 %13, %sh_prom15
  %15 = load i64, i64* %max_value, align 8, !tbaa !33
  %and = and i64 %shr16, %15
  %mul17 = mul i64 %and, 65535
  %16 = load i64, i64* %max_value, align 8, !tbaa !33
  %div18 = udiv i64 %mul17, %16
  %conv19 = trunc i64 %div18 to i16
  %17 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds i16, i16* %17, i64 1
  store i16 %conv19, i16* %arrayidx20, align 2, !tbaa !29
  %18 = load i64, i64* %color.addr, align 8, !tbaa !33
  %19 = load i64, i64* %max_value, align 8, !tbaa !33
  %and21 = and i64 %18, %19
  %mul22 = mul i64 %and21, 65535
  %20 = load i64, i64* %max_value, align 8, !tbaa !33
  %div23 = udiv i64 %mul22, %20
  %conv24 = trunc i64 %div23 to i16
  %21 = load i16*, i16** %prgb.addr, align 8, !tbaa !1
  %arrayidx25 = getelementptr inbounds i16, i16* %21, i64 2
  store i16 %conv24, i16* %arrayidx25, align 2, !tbaa !29
  %22 = bitcast i64* %max_value to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast i16* %bitspercolor to i8*
  call void @llvm.lifetime.end(i64 2, i8* %23) #2
  ret i32 0
}

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #0

declare i32 @errprintf(%struct.gs_memory_s*, i8*, ...) #0

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

declare i32 @fputc(i32, %struct._IO_FILE*) #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !11, i64 108}
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
!22 = !{!7, !7, i64 0}
!23 = !{!6, !2, i64 24}
!24 = !{!25, !2, i64 200}
!25 = !{!"gs_memory_s", !2, i64 0, !26, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!26 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!27 = !{!25, !2, i64 88}
!28 = !{!6, !7, i64 832}
!29 = !{!11, !11, i64 0}
!30 = !{!3, !3, i64 0}
!31 = !{!6, !7, i64 836}
!32 = !{!25, !2, i64 24}
!33 = !{!9, !9, i64 0}
