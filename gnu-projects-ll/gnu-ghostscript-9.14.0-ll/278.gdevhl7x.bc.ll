; ModuleID = './gdevhl7x.bc'
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
%struct.ByteList = type { i8*, i16, i16 }
%struct.Summary = type { i16, [1500 x i8], i16, i16, i16, i16, i16, i16 }

@prn_hl_procs = internal constant %struct.gx_device_procs_s { i32 (%struct.gx_device_s*)* @hl7x0_open, void (%struct.gx_device_s*, %struct.gs_matrix_s*)* null, i32 (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i32, i32)* @gdev_prn_bg_output_page, i32 (%struct.gx_device_s*)* @hl7x0_close, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* null, i32 (%struct.gx_device_s*, i32, i8*, i8**)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_get_params, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* @gdev_prn_put_params, i64 (%struct.gx_device_s*, i16*)* null, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)* null, %struct.gx_device_s* (%struct.gx_device_s*)* null, i64 (%struct.gx_device_s*, i16, i16, i16, i16)* null, %struct.gx_device_s* (%struct.gx_device_s*)* @gx_page_device_get_page_device, i32 (%struct.gx_device_s*, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)* null, i32 (%struct.gx_device_s*, i32, i32*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)* null, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* null, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)* null, i32 (%struct.gx_device_s*, i64, i16*)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)* null, i32 (%struct.gx_device_s*, %struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32)* null, i64 (%struct.gx_device_s*, i16*)* @gx_default_b_w_map_rgb_color, i32 (%struct.gx_device_s*, i64, i16*)* @gx_default_b_w_map_color_rgb, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)* null, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* null, %struct.gs_devn_params_s* (%struct.gx_device_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, i32, i8*, i32)* @gdev_prn_dev_spec_op, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)* @gx_default_get_profile, void (%struct.gx_device_s*, i32)* @gx_default_set_graphics_type_tag, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)* null, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)* null, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* null }, align 8
@.str = private unnamed_addr constant [6 x i8] c"hl7x0\00", align 1
@st_device_printer = external constant %struct.gs_memory_struct_type_s, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DeviceGray\00", align 1
@gs_hl7x0_device = constant { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s } { i32 18472, %struct.gx_device_procs_s* @prn_hl_procs, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), %struct.gs_memory_s* null, %struct.gs_memory_struct_type_s* @st_device_printer, i32 0, void (%struct.gx_device_s*)* null, %struct.rc_header_s zeroinitializer, i32 0, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i32 1, i16 1, i8 0, i32 1, i32 0, i32 2, i32 1, %struct.gx_device_anti_alias_info_s { i32 1, i32 1 }, i32 -1, [64 x i8] zeroinitializer, [64 x i8] zeroinitializer, [64 x i64] zeroinitializer, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 -1, i64 0, i32 0 }, %struct.gx_device_cached_colors_s { i64 -1, i64 -1 }, i32 2550, i32 3300, i32 0, i32 0, i32 0, i32 0, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] [float 3.000000e+02, float 3.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i64 0, i64 0, %struct.gx_stroked_gradient_recognizer_s zeroinitializer, i32 0, i32 0, %struct.gdev_space_params_s { i64 10000000, i64 4000000, %struct.gx_band_params_s zeroinitializer, i32 0, i32 0 }, %struct.cmm_dev_profile_s* null, i32 0, %struct.gx_page_device_procs_s { i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_install, i32 (%struct.gx_device_s*, %struct.gs_state_s*)* @gx_default_begin_page, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [11240 x i8] zeroinitializer, { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* } { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)* @hl720_print_page, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_print_page_copies, %struct.gx_device_buf_procs_s { i32 (%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*)* @gx_default_create_buf_device, i32 (%struct.gx_device_buf_space_s*, %struct.gx_device_s*, %struct.gx_render_plane_s*, i32, i32)* @gx_default_size_buf_device, i32 (%struct.gx_device_s*, i8*, i32, i8**, i32, i32, i32)* @gx_default_setup_buf_device, void (%struct.gx_device_s*)* @gx_default_destroy_buf_device }, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)* @gx_default_get_space_params, i32 (%struct.gdev_prn_start_render_params_s*)* @gx_default_start_render_thread, i32 (%struct.gx_device_printer_s*)* @gx_default_open_render_device, i32 (%struct.gx_device_printer_s*)* @gx_default_close_render_device, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* @gx_default_buffer_page }, [4096 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 -1, i32 0, %struct._IO_FILE* null, i64 0, i8* null, %struct.gs_memory_s* null, %struct.gs_memory_s* null, i32 (%struct.gx_device_s*, i32)* null, %struct.gx_page_queue_s* null, i32 0, %struct.gx_device_printer_s* null, i32 0, i32 0, %struct.bg_print_s zeroinitializer, i32 0, %struct.gx_saved_pages_list_s* null, %struct.gx_device_procs_s zeroinitializer, %struct.gx_device_procs_s zeroinitializer }, align 8
@hl7x0_open.m_a4 = internal constant [4 x float] [float 0x3FB99999A0000000, float 0x3FC3333340000000, float 0x3FB1EB8520000000, float 0x3FA99999A0000000], align 16
@hl7x0_open.m_letter = internal constant [4 x float] [float 0x3FD19999A0000000, float 0x3FC99999A0000000, float 2.500000e-01, float 0x3FB1EB8520000000], align 16
@.str.2 = private unnamed_addr constant [11 x i8] c"@N@N@N@N@X\00", align 1
@hl720_print_page.prefix = private unnamed_addr constant [43 x i8] c"\1B%-12345X@PJL\0A@PJL ENTER LANGUAGE = HBP\0A@L\00", align 16
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not add byte to command\0A\00", align 1
@hl7x0_print_page.FormFeed = private unnamed_addr constant [8 x i8] c"@G\00\00\01\FF@F", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hl7x0_print_page\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"hl7X0_print_page\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Could not add %d bytes to command\0A\00", align 1
@makeSequenceWithoutRepeat.MAX_OFFSET = internal constant i16 15, align 2
@makeSequenceWithoutRepeat.POSITION_OF_OFFSET = internal constant i16 3, align 2
@makeSequenceWithoutRepeat.MAX_LENGTH = internal constant i16 7, align 2
@.str.7 = private unnamed_addr constant [37 x i8] c"Could not add byte array to command\0A\00", align 1
@makeSequenceWithRepeat.MAX_OFFSET = internal constant i16 3, align 2
@makeSequenceWithRepeat.POSITION_OF_OFFSET = internal constant i16 5, align 2
@makeSequenceWithRepeat.MAX_LENGTH = internal constant i16 31, align 2

declare i32 @gx_default_install(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_begin_page(%struct.gx_device_s*, %struct.gs_state_s*) #0

declare i32 @gx_default_end_page(%struct.gx_device_s*, i32, %struct.gs_state_s*) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl720_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %prn_stream) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %prn_stream.addr = alloca %struct._IO_FILE*, align 8
  %prefix = alloca [43 x i8], align 16
  %initCommand = alloca %struct.ByteList, align 8
  %x_dpi = alloca i32, align 4
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %prn_stream, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %0 = bitcast [43 x i8]* %prefix to i8*
  call void @llvm.lifetime.start(i64 43, i8* %0) #2
  %1 = bitcast [43 x i8]* %prefix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @hl720_print_page.prefix, i32 0, i32 0), i64 43, i32 16, i1 false)
  %2 = bitcast %struct.ByteList* %initCommand to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %4, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %5 = load float, float* %arrayidx, align 4, !tbaa !5
  %conv = fptosi float %5 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !7
  %arraydecay = getelementptr inbounds [43 x i8], [43 x i8]* %prefix, i32 0, i32 0
  call void @initByteList(%struct.ByteList* %initCommand, i8* %arraydecay, i16 signext 43, i16 signext 42) #4
  %6 = load i32, i32* %x_dpi, align 4, !tbaa !7
  %div = sdiv i32 600, %6
  %shr = ashr i32 %div, 1
  %7 = load i32, i32* %x_dpi, align 4, !tbaa !7
  %div1 = sdiv i32 600, %7
  %shr2 = ashr i32 %div1, 1
  %shl = shl i32 %shr2, 2
  %or = or i32 %shr, %shl
  %conv3 = trunc i32 %or to i8
  call void @addByte(%struct.ByteList* %initCommand, i8 zeroext %conv3) #4
  %8 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %prn_stream.addr, align 8, !tbaa !1
  %call = call i32 @hl7x0_print_page(%struct.gx_device_printer_s* %8, %struct._IO_FILE* %9, i32 0, i32 300, %struct.ByteList* %initCommand) #4
  %10 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.ByteList* %initCommand to i8*
  call void @llvm.lifetime.end(i64 16, i8* %11) #2
  %12 = bitcast [43 x i8]* %prefix to i8*
  call void @llvm.lifetime.end(i64 43, i8* %12) #2
  ret i32 %call
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
define internal i32 @hl7x0_open(%struct.gx_device_s* %pdev) #1 {
entry:
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %m = alloca float*, align 8
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast float** %m to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_pcl_paper_size(%struct.gx_device_s* %1) #4
  %cmp = icmp eq i32 %call, 26
  %cond = select i1 %cmp, float* getelementptr inbounds ([4 x float], [4 x float]* @hl7x0_open.m_a4, i32 0, i32 0), float* getelementptr inbounds ([4 x float], [4 x float]* @hl7x0_open.m_letter, i32 0, i32 0)
  store float* %cond, float** %m, align 8, !tbaa !1
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %3 = load float*, float** %m, align 8, !tbaa !1
  call void @gx_device_set_margins(%struct.gx_device_s* %2, float* %3, i32 1) #4
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call1 = call i32 @gdev_prn_open(%struct.gx_device_s* %4) #4
  %5 = bitcast float** %m to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #2
  ret i32 %call1
}

declare i32 @gdev_prn_bg_output_page(%struct.gx_device_s*, i32, i32) #0

; Function Attrs: nounwind uwtable
define internal i32 @hl7x0_close(%struct.gx_device_s* %pdev) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_s*, align 8
  %ppdev = alloca %struct.gx_device_printer_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %pdev, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  store %struct.gx_device_printer_s* %2, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call = call i32 @gdev_prn_open_printer(%struct.gx_device_s* %4, i32 1) #4
  store i32 %call, i32* %code, align 4, !tbaa !7
  %5 = load i32, i32* %code, align 4, !tbaa !7
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %code, align 4, !tbaa !7
  store i32 %6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %ppdev, align 8, !tbaa !1
  %file = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %7, i32 0, i32 52
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8, !tbaa !9
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %8) #4
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %pdev.addr, align 8, !tbaa !1
  %call2 = call i32 @gdev_prn_close_printer(%struct.gx_device_s* %9) #4
  store i32 %call2, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #2
  %11 = bitcast %struct.gx_device_printer_s** %ppdev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i64 @gx_default_b_w_map_rgb_color(%struct.gx_device_s*, i16*) #0

declare i32 @gx_default_b_w_map_color_rgb(%struct.gx_device_s*, i64, i16*) #0

declare i32 @gdev_prn_get_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare i32 @gdev_prn_put_params(%struct.gx_device_s*, %struct.gs_param_list_s*) #0

declare %struct.gx_device_s* @gx_page_device_get_page_device(%struct.gx_device_s*) #0

declare i32 @gdev_prn_dev_spec_op(%struct.gx_device_s*, i32, i8*, i32) #0

declare i32 @gx_default_get_profile(%struct.gx_device_s*, %struct.cmm_dev_profile_s**) #0

declare void @gx_default_set_graphics_type_tag(%struct.gx_device_s*, i32) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @gdev_pcl_paper_size(%struct.gx_device_s*) #0

declare void @gx_device_set_margins(%struct.gx_device_s*, float*, i32) #0

declare i32 @gdev_prn_open(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @gdev_prn_open_printer(%struct.gx_device_s*, i32) #0

declare i32 @fputs(i8*, %struct._IO_FILE*) #0

declare i32 @gdev_prn_close_printer(%struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @initByteList(%struct.ByteList* %list, i8* %array, i16 signext %maxSize, i16 signext %initCurrent) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %array.addr = alloca i8*, align 8
  %maxSize.addr = alloca i16, align 2
  %initCurrent.addr = alloca i16, align 2
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store i8* %array, i8** %array.addr, align 8, !tbaa !1
  store i16 %maxSize, i16* %maxSize.addr, align 2, !tbaa !25
  store i16 %initCurrent, i16* %initCurrent.addr, align 2, !tbaa !25
  %0 = load i16, i16* %initCurrent.addr, align 2, !tbaa !25
  %1 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %1, i32 0, i32 2
  store i16 %0, i16* %current, align 2, !tbaa !26
  %2 = load i16, i16* %maxSize.addr, align 2, !tbaa !25
  %3 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %maxSize1 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %3, i32 0, i32 1
  store i16 %2, i16* %maxSize1, align 2, !tbaa !28
  %4 = load i8*, i8** %array.addr, align 8, !tbaa !1
  %5 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ByteList, %struct.ByteList* %5, i32 0, i32 0
  store i8* %4, i8** %data, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addByte(%struct.ByteList* %list, i8 zeroext %value) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %value.addr = alloca i8, align 1
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store i8 %value, i8* %value.addr, align 1, !tbaa !30
  %0 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %0, i32 0, i32 2
  %1 = load i16, i16* %current, align 2, !tbaa !26
  %conv = sext i16 %1 to i32
  %2 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %maxSize = getelementptr inbounds %struct.ByteList, %struct.ByteList* %2, i32 0, i32 1
  %3 = load i16, i16* %maxSize, align 2, !tbaa !28
  %conv1 = sext i16 %3 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %value.addr, align 1, !tbaa !30
  %5 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current3 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %5, i32 0, i32 2
  %6 = load i16, i16* %current3, align 2, !tbaa !26
  %inc = add i16 %6, 1
  store i16 %inc, i16* %current3, align 2, !tbaa !26
  %idxprom = sext i16 %6 to i64
  %7 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ByteList, %struct.ByteList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  store i8 %4, i8* %arrayidx, align 1, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @gs_program_name() #4
  %call4 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call4) #4
  %call5 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @hl7x0_print_page(%struct.gx_device_printer_s* %pdev, %struct._IO_FILE* %printStream, i32 %ptype, i32 %dots_per_inch, %struct.ByteList* %initCommand) #1 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.gx_device_printer_s*, align 8
  %printStream.addr = alloca %struct._IO_FILE*, align 8
  %ptype.addr = alloca i32, align 4
  %dots_per_inch.addr = alloca i32, align 4
  %initCommand.addr = alloca %struct.ByteList*, align 8
  %FormFeed = alloca [8 x i8], align 1
  %formFeedCommand = alloca %struct.ByteList, align 8
  %line_size = alloca i32, align 4
  %x_dpi = alloca i32, align 4
  %num_rows = alloca i32, align 4
  %result = alloca i32, align 4
  %sizeOfBuffer = alloca i32, align 4
  %storage = alloca i8*, align 8
  %pageSummary = alloca %struct.Summary, align 2
  %commandsBuffer = alloca %struct.ByteList, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pdev, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %printStream, %struct._IO_FILE** %printStream.addr, align 8, !tbaa !1
  store i32 %ptype, i32* %ptype.addr, align 4, !tbaa !7
  store i32 %dots_per_inch, i32* %dots_per_inch.addr, align 4, !tbaa !7
  store %struct.ByteList* %initCommand, %struct.ByteList** %initCommand.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i8]* %FormFeed to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast [8 x i8]* %FormFeed to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @hl7x0_print_page.FormFeed, i32 0, i32 0), i64 8, i32 1, i1 false)
  %2 = bitcast %struct.ByteList* %formFeedCommand to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #2
  %3 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %5 = bitcast %struct.gx_device_printer_s* %4 to %struct.gx_device_s*
  %6 = bitcast %struct.gx_device_s* %5 to %struct.gx_device_printer_s*
  %7 = bitcast %struct.gx_device_printer_s* %6 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %7, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !7
  %8 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #2
  %9 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %HWResolution = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %9, i32 0, i32 22
  %arrayidx = getelementptr inbounds [2 x float], [2 x float]* %HWResolution, i32 0, i64 0
  %10 = load float, float* %arrayidx, align 4, !tbaa !5
  %conv = fptosi float %10 to i32
  store i32 %conv, i32* %x_dpi, align 4, !tbaa !7
  %11 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #2
  %12 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %13 = bitcast %struct.gx_device_printer_s* %12 to %struct.gx_device_s*
  %call1 = call i32 @gdev_prn_print_scan_lines(%struct.gx_device_s* %13) #4
  store i32 %call1, i32* %num_rows, align 4, !tbaa !7
  %14 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #2
  %15 = bitcast i32* %sizeOfBuffer to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #2
  %16 = load i32, i32* %x_dpi, align 4, !tbaa !7
  %conv2 = trunc i32 %16 to i16
  %call3 = call signext i16 @MaxLineLength(i16 signext %conv2) #4
  %conv4 = sext i16 %call3 to i32
  %add = add nsw i32 %conv4, 30
  store i32 %add, i32* %sizeOfBuffer, align 4, !tbaa !7
  %17 = bitcast i8** %storage to i8*
  call void @llvm.lifetime.start(i64 8, i8* %17) #2
  %18 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %18, i32 0, i32 3
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !31
  %non_gc_memory = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %19, i32 0, i32 3
  %20 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %20, i32 0, i32 1
  %alloc_byte_array = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 10
  %21 = load i8* (%struct.gs_memory_s*, i32, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i32, i8*)** %alloc_byte_array, align 8, !tbaa !35
  %22 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory5 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %22, i32 0, i32 3
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !31
  %non_gc_memory6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %23, i32 0, i32 3
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory6, align 8, !tbaa !32
  %25 = load i32, i32* %sizeOfBuffer, align 4, !tbaa !7
  %26 = load i32, i32* %line_size, align 4, !tbaa !7
  %add7 = add nsw i32 %25, %26
  %call8 = call i8* %21(%struct.gs_memory_s* %24, i32 %add7, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)) #4
  store i8* %call8, i8** %storage, align 8, !tbaa !1
  %27 = bitcast %struct.Summary* %pageSummary to i8*
  call void @llvm.lifetime.start(i64 1514, i8* %27) #2
  %28 = bitcast %struct.ByteList* %commandsBuffer to i8*
  call void @llvm.lifetime.start(i64 16, i8* %28) #2
  %29 = load i32, i32* %line_size, align 4, !tbaa !7
  %conv9 = trunc i32 %29 to i16
  %30 = load i32, i32* %num_rows, align 4, !tbaa !7
  %conv10 = trunc i32 %30 to i16
  %31 = load i32, i32* %x_dpi, align 4, !tbaa !7
  %conv11 = trunc i32 %31 to i16
  call void @initSummary(%struct.Summary* %pageSummary, i16 signext %conv9, i16 signext %conv10, i16 signext %conv11) #4
  %32 = load i8*, i8** %storage, align 8, !tbaa !1
  %cmp = icmp eq i8* %32, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %33 = load i8*, i8** %storage, align 8, !tbaa !1
  %34 = load i32, i32* %sizeOfBuffer, align 4, !tbaa !7
  %conv13 = trunc i32 %34 to i16
  call void @initByteList(%struct.ByteList* %commandsBuffer, i8* %33, i16 signext %conv13, i16 signext 0) #4
  %35 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %PageCount = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %35, i32 0, i32 26
  %36 = load i64, i64* %PageCount, align 8, !tbaa !36
  %cmp14 = icmp eq i64 %36, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %37 = load %struct.ByteList*, %struct.ByteList** %initCommand.addr, align 8, !tbaa !1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %printStream.addr, align 8, !tbaa !1
  call void @dumpToPrinter(%struct.ByteList* %37, %struct._IO_FILE* %38) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.17
  %39 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %40 = load i8*, i8** %storage, align 8, !tbaa !1
  %41 = load i32, i32* %sizeOfBuffer, align 4, !tbaa !7
  %idx.ext = sext i32 %41 to i64
  %add.ptr = getelementptr inbounds i8, i8* %40, i64 %idx.ext
  %call18 = call i32 @dumpPage(%struct.gx_device_printer_s* %39, i8* %add.ptr, %struct.ByteList* %commandsBuffer, %struct.Summary* %pageSummary) #4
  store i32 %call18, i32* %result, align 4, !tbaa !7
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %printStream.addr, align 8, !tbaa !1
  call void @dumpToPrinter(%struct.ByteList* %commandsBuffer, %struct._IO_FILE* %42) #4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %43 = load i32, i32* %result, align 4, !tbaa !7
  %cmp19 = icmp eq i32 %43, 1
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %FormFeed, i32 0, i32 0
  call void @initByteList(%struct.ByteList* %formFeedCommand, i8* %arraydecay, i16 signext 8, i16 signext 8) #4
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %printStream.addr, align 8, !tbaa !1
  call void @dumpToPrinter(%struct.ByteList* %formFeedCommand, %struct._IO_FILE* %44) #4
  %45 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory21 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %45, i32 0, i32 3
  %46 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory21, align 8, !tbaa !31
  %non_gc_memory22 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %46, i32 0, i32 3
  %47 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory22, align 8, !tbaa !32
  %procs23 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %47, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs23, i32 0, i32 2
  %48 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !37
  %49 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pdev.addr, align 8, !tbaa !1
  %memory24 = getelementptr inbounds %struct.gx_device_printer_s, %struct.gx_device_printer_s* %49, i32 0, i32 3
  %50 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory24, align 8, !tbaa !31
  %non_gc_memory25 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %non_gc_memory25, align 8, !tbaa !32
  %52 = load i8*, i8** %storage, align 8, !tbaa !1
  call void %48(%struct.gs_memory_s* %51, i8* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)) #4
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %53 = bitcast %struct.ByteList* %commandsBuffer to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #2
  %54 = bitcast %struct.Summary* %pageSummary to i8*
  call void @llvm.lifetime.end(i64 1514, i8* %54) #2
  %55 = bitcast i8** %storage to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast i32* %sizeOfBuffer to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #2
  %57 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #2
  %58 = bitcast i32* %num_rows to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #2
  %59 = bitcast i32* %x_dpi to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #2
  %60 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #2
  %61 = bitcast %struct.ByteList* %formFeedCommand to i8*
  call void @llvm.lifetime.end(i64 16, i8* %61) #2
  %62 = bitcast [8 x i8]* %FormFeed to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare void @eprintf_program_ident(i8*, i64) #0

declare i8* @gs_program_name() #0

declare i64 @gs_revision_number() #0

declare i32 @errprintf_nomem(i8*, ...) #0

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #0

declare i32 @gdev_prn_print_scan_lines(%struct.gx_device_s*) #0

; Function Attrs: nounwind uwtable
define internal signext i16 @MaxLineLength(i16 signext %resolution) #1 {
entry:
  %resolution.addr = alloca i16, align 2
  store i16 %resolution, i16* %resolution.addr, align 2, !tbaa !25
  %0 = load i16, i16* %resolution.addr, align 2, !tbaa !25
  %conv = sext i16 %0 to i32
  %mul = mul nsw i32 156, %conv
  %div = sdiv i32 %mul, 150
  %mul1 = mul nsw i32 %div, 5
  %div2 = sdiv i32 %mul1, 4
  %add = add nsw i32 %div2, 8
  %conv3 = trunc i32 %add to i16
  ret i16 %conv3
}

; Function Attrs: nounwind uwtable
define internal void @initSummary(%struct.Summary* %s, i16 signext %pw, i16 signext %ph, i16 signext %resolution) #1 {
entry:
  %s.addr = alloca %struct.Summary*, align 8
  %pw.addr = alloca i16, align 2
  %ph.addr = alloca i16, align 2
  %resolution.addr = alloca i16, align 2
  store %struct.Summary* %s, %struct.Summary** %s.addr, align 8, !tbaa !1
  store i16 %pw, i16* %pw.addr, align 2, !tbaa !25
  store i16 %ph, i16* %ph.addr, align 2, !tbaa !25
  store i16 %resolution, i16* %resolution.addr, align 2, !tbaa !25
  %0 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %previousSize = getelementptr inbounds %struct.Summary, %struct.Summary* %0, i32 0, i32 0
  store i16 -1, i16* %previousSize, align 2, !tbaa !38
  %1 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %nbBlankLines = getelementptr inbounds %struct.Summary, %struct.Summary* %1, i32 0, i32 2
  store i16 1, i16* %nbBlankLines, align 2, !tbaa !40
  %2 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %nbLinesSent = getelementptr inbounds %struct.Summary, %struct.Summary* %2, i32 0, i32 3
  store i16 0, i16* %nbLinesSent, align 2, !tbaa !41
  %3 = load i16, i16* %pw.addr, align 2, !tbaa !25
  %4 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %pageWidth = getelementptr inbounds %struct.Summary, %struct.Summary* %4, i32 0, i32 4
  store i16 %3, i16* %pageWidth, align 2, !tbaa !42
  %5 = load i16, i16* %ph.addr, align 2, !tbaa !25
  %6 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %pageHeight = getelementptr inbounds %struct.Summary, %struct.Summary* %6, i32 0, i32 5
  store i16 %5, i16* %pageHeight, align 2, !tbaa !43
  %7 = load i16, i16* %pw.addr, align 2, !tbaa !25
  %conv = sext i16 %7 to i32
  %mul = mul nsw i32 %conv, 8
  %conv1 = trunc i32 %mul to i16
  %8 = load i16, i16* %resolution.addr, align 2, !tbaa !25
  %call = call signext i16 @horizontalOffset(i16 signext %conv1, i16 signext 30, i16 signext %8) #4
  %9 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %horizontalOffset = getelementptr inbounds %struct.Summary, %struct.Summary* %9, i32 0, i32 6
  store i16 %call, i16* %horizontalOffset, align 2, !tbaa !44
  %10 = load i16, i16* %resolution.addr, align 2, !tbaa !25
  %11 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %resolution2 = getelementptr inbounds %struct.Summary, %struct.Summary* %11, i32 0, i32 7
  store i16 %10, i16* %resolution2, align 2, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dumpToPrinter(%struct.ByteList* %list, %struct._IO_FILE* %printStream) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %printStream.addr = alloca %struct._IO_FILE*, align 8
  %loopCounter = alloca i16, align 2
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store %struct._IO_FILE* %printStream, %struct._IO_FILE** %printStream.addr, align 8, !tbaa !1
  %0 = bitcast i16* %loopCounter to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  store i16 0, i16* %loopCounter, align 2, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i16, i16* %loopCounter, align 2, !tbaa !25
  %conv = sext i16 %1 to i32
  %2 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %2, i32 0, i32 2
  %3 = load i16, i16* %current, align 2, !tbaa !26
  %conv1 = sext i16 %3 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i16, i16* %loopCounter, align 2, !tbaa !25
  %idxprom = sext i16 %4 to i64
  %5 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ByteList, %struct.ByteList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv3 = zext i8 %7 to i32
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %printStream.addr, align 8, !tbaa !1
  %call = call i32 @fputc(i32 %conv3, %struct._IO_FILE* %8) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i16, i16* %loopCounter, align 2, !tbaa !25
  %inc = add i16 %9, 1
  store i16 %inc, i16* %loopCounter, align 2, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current4 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %10, i32 0, i32 2
  store i16 0, i16* %current4, align 2, !tbaa !26
  %11 = bitcast i16* %loopCounter to i8*
  call void @llvm.lifetime.end(i64 2, i8* %11) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dumpPage(%struct.gx_device_printer_s* %pSource, i8* %pLineTmp, %struct.ByteList* %pCommandList, %struct.Summary* %pSummary) #1 {
entry:
  %retval = alloca i32, align 4
  %pSource.addr = alloca %struct.gx_device_printer_s*, align 8
  %pLineTmp.addr = alloca i8*, align 8
  %pCommandList.addr = alloca %struct.ByteList*, align 8
  %pSummary.addr = alloca %struct.Summary*, align 8
  %pSaveCommandStart = alloca i8*, align 8
  %lineNB = alloca i16, align 2
  %usefulLength = alloca i16, align 2
  %tmpLength = alloca i16, align 2
  %availableRoom = alloca i16, align 2
  %save = alloca i8*, align 8
  %size = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_printer_s* %pSource, %struct.gx_device_printer_s** %pSource.addr, align 8, !tbaa !1
  store i8* %pLineTmp, i8** %pLineTmp.addr, align 8, !tbaa !1
  store %struct.ByteList* %pCommandList, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  store %struct.Summary* %pSummary, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %0 = bitcast i8** %pSaveCommandStart to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %lineNB to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = bitcast i16* %usefulLength to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = bitcast i16* %tmpLength to i8*
  call void @llvm.lifetime.start(i64 2, i8* %3) #2
  %4 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %call = call i8* @currentPosition(%struct.ByteList* %4) #4
  store i8* %call, i8** %pSaveCommandStart, align 8, !tbaa !1
  %5 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  call void @addNBytes(%struct.ByteList* %5, i8 zeroext 0, i16 signext 5) #4
  %6 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbLinesSent = getelementptr inbounds %struct.Summary, %struct.Summary* %6, i32 0, i32 3
  %7 = load i16, i16* %nbLinesSent, align 2, !tbaa !41
  store i16 %7, i16* %lineNB, align 2, !tbaa !25
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i16, i16* %lineNB, align 2, !tbaa !25
  %conv = sext i16 %8 to i32
  %9 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %pageHeight = getelementptr inbounds %struct.Summary, %struct.Summary* %9, i32 0, i32 5
  %10 = load i16, i16* %pageHeight, align 2, !tbaa !43
  %conv1 = sext i16 %10 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.gx_device_printer_s*, %struct.gx_device_printer_s** %pSource.addr, align 8, !tbaa !1
  %12 = load i16, i16* %lineNB, align 2, !tbaa !25
  %conv3 = sext i16 %12 to i32
  %13 = load i8*, i8** %pLineTmp.addr, align 8, !tbaa !1
  %14 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %pageWidth = getelementptr inbounds %struct.Summary, %struct.Summary* %14, i32 0, i32 4
  %15 = load i16, i16* %pageWidth, align 2, !tbaa !42
  %conv4 = sext i16 %15 to i32
  %call5 = call i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s* %11, i32 %conv3, i8* %13, i32 %conv4) #4
  %16 = load i8*, i8** %pLineTmp.addr, align 8, !tbaa !1
  %17 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %pageWidth6 = getelementptr inbounds %struct.Summary, %struct.Summary* %17, i32 0, i32 4
  %18 = load i16, i16* %pageWidth6, align 2, !tbaa !42
  %call7 = call signext i16 @stripTrailingBlanks(i8* %16, i16 signext %18) #4
  store i16 %call7, i16* %usefulLength, align 2, !tbaa !25
  %19 = load i16, i16* %usefulLength, align 2, !tbaa !25
  %conv8 = sext i16 %19 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then, label %if.else.54

if.then:                                          ; preds = %for.body
  %20 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbBlankLines = getelementptr inbounds %struct.Summary, %struct.Summary* %20, i32 0, i32 2
  %21 = load i16, i16* %nbBlankLines, align 2, !tbaa !40
  %conv11 = sext i16 %21 to i32
  %cmp12 = icmp ne i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %if.then
  %22 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %23 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbBlankLines15 = getelementptr inbounds %struct.Summary, %struct.Summary* %23, i32 0, i32 2
  %24 = load i16, i16* %nbBlankLines15, align 2, !tbaa !40
  %call16 = call i32 @isThereEnoughRoom(%struct.ByteList* %22, i16 signext %24) #4
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  %25 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %26 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbBlankLines18 = getelementptr inbounds %struct.Summary, %struct.Summary* %26, i32 0, i32 2
  %27 = load i16, i16* %nbBlankLines18, align 2, !tbaa !40
  call void @addNBytes(%struct.ByteList* %25, i8 zeroext -1, i16 signext %27) #4
  %28 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbBlankLines19 = getelementptr inbounds %struct.Summary, %struct.Summary* %28, i32 0, i32 2
  store i16 0, i16* %nbBlankLines19, align 2, !tbaa !40
  br label %if.end

if.else:                                          ; preds = %if.then.14
  %29 = bitcast i16* %availableRoom to i8*
  call void @llvm.lifetime.start(i64 2, i8* %29) #2
  %30 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %call20 = call signext i16 @roomLeft(%struct.ByteList* %30) #4
  store i16 %call20, i16* %availableRoom, align 2, !tbaa !25
  %31 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %32 = load i16, i16* %availableRoom, align 2, !tbaa !25
  call void @addNBytes(%struct.ByteList* %31, i8 zeroext -1, i16 signext %32) #4
  %33 = load i16, i16* %availableRoom, align 2, !tbaa !25
  %conv21 = sext i16 %33 to i32
  %34 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbBlankLines22 = getelementptr inbounds %struct.Summary, %struct.Summary* %34, i32 0, i32 2
  %35 = load i16, i16* %nbBlankLines22, align 2, !tbaa !40
  %conv23 = sext i16 %35 to i32
  %sub = sub nsw i32 %conv23, %conv21
  %conv24 = trunc i32 %sub to i16
  store i16 %conv24, i16* %nbBlankLines22, align 2, !tbaa !40
  %36 = bitcast i16* %availableRoom to i8*
  call void @llvm.lifetime.end(i64 2, i8* %36) #2
  br label %for.end

if.end:                                           ; preds = %if.then.17
  %37 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  call void @resetPreviousData(%struct.Summary* %37) #4
  %38 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousSize = getelementptr inbounds %struct.Summary, %struct.Summary* %38, i32 0, i32 0
  store i16 0, i16* %previousSize, align 2, !tbaa !38
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %39 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %40 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %resolution = getelementptr inbounds %struct.Summary, %struct.Summary* %40, i32 0, i32 7
  %41 = load i16, i16* %resolution, align 2, !tbaa !45
  %call26 = call signext i16 @MaxLineLength(i16 signext %41) #4
  %call27 = call i32 @isThereEnoughRoom(%struct.ByteList* %39, i16 signext %call26) #4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.25
  br label %for.end

if.end.30:                                        ; preds = %if.end.25
  %42 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousSize31 = getelementptr inbounds %struct.Summary, %struct.Summary* %42, i32 0, i32 0
  %43 = load i16, i16* %previousSize31, align 2, !tbaa !38
  %conv32 = sext i16 %43 to i32
  %44 = load i16, i16* %usefulLength, align 2, !tbaa !25
  %conv33 = sext i16 %44 to i32
  %cmp34 = icmp sgt i32 %conv32, %conv33
  br i1 %cmp34, label %if.then.36, label %if.else.38

if.then.36:                                       ; preds = %if.end.30
  %45 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousSize37 = getelementptr inbounds %struct.Summary, %struct.Summary* %45, i32 0, i32 0
  %46 = load i16, i16* %previousSize37, align 2, !tbaa !38
  store i16 %46, i16* %tmpLength, align 2, !tbaa !25
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.30
  %47 = load i16, i16* %usefulLength, align 2, !tbaa !25
  store i16 %47, i16* %tmpLength, align 2, !tbaa !25
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.36
  %48 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousSize40 = getelementptr inbounds %struct.Summary, %struct.Summary* %48, i32 0, i32 0
  %49 = load i16, i16* %previousSize40, align 2, !tbaa !38
  %conv41 = sext i16 %49 to i32
  %cmp42 = icmp eq i32 %conv41, -1
  br i1 %cmp42, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %if.end.39
  %50 = bitcast i8** %save to i8*
  call void @llvm.lifetime.start(i64 8, i8* %50) #2
  %51 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %call45 = call i8* @currentPosition(%struct.ByteList* %51) #4
  store i8* %call45, i8** %save, align 8, !tbaa !1
  %52 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  call void @addByte(%struct.ByteList* %52, i8 zeroext 0) #4
  %53 = load i8*, i8** %pLineTmp.addr, align 8, !tbaa !1
  %54 = load i16, i16* %tmpLength, align 2, !tbaa !25
  %55 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %56 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %horizontalOffset = getelementptr inbounds %struct.Summary, %struct.Summary* %56, i32 0, i32 6
  %57 = load i16, i16* %horizontalOffset, align 2, !tbaa !44
  %58 = load i8*, i8** %save, align 8, !tbaa !1
  call void @makeCommandsForSequence(i8* %53, i16 signext %54, %struct.ByteList* %55, i16 signext %57, i8* %58, i16 signext 0) #4
  %59 = bitcast i8** %save to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  br label %if.end.48

if.else.46:                                       ; preds = %if.end.39
  %60 = load i8*, i8** %pLineTmp.addr, align 8, !tbaa !1
  %61 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousData = getelementptr inbounds %struct.Summary, %struct.Summary* %61, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1500 x i8], [1500 x i8]* %previousData, i32 0, i32 0
  %62 = load i16, i16* %tmpLength, align 2, !tbaa !25
  %63 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %64 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %horizontalOffset47 = getelementptr inbounds %struct.Summary, %struct.Summary* %64, i32 0, i32 6
  %65 = load i16, i16* %horizontalOffset47, align 2, !tbaa !44
  call void @makeFullLine(i8* %60, i8* %arraydecay, i16 signext %62, %struct.ByteList* %63, i16 signext %65) #4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.44
  %66 = load i16, i16* %tmpLength, align 2, !tbaa !25
  %67 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousSize49 = getelementptr inbounds %struct.Summary, %struct.Summary* %67, i32 0, i32 0
  store i16 %66, i16* %previousSize49, align 2, !tbaa !38
  %68 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %previousData50 = getelementptr inbounds %struct.Summary, %struct.Summary* %68, i32 0, i32 1
  %arraydecay51 = getelementptr inbounds [1500 x i8], [1500 x i8]* %previousData50, i32 0, i32 0
  %69 = load i8*, i8** %pLineTmp.addr, align 8, !tbaa !1
  %70 = load i16, i16* %tmpLength, align 2, !tbaa !25
  %conv52 = sext i16 %70 to i64
  %call53 = call i8* @memcpy(i8* %arraydecay51, i8* %69, i64 %conv52) #5
  br label %if.end.56

if.else.54:                                       ; preds = %for.body
  %71 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbBlankLines55 = getelementptr inbounds %struct.Summary, %struct.Summary* %71, i32 0, i32 2
  %72 = load i16, i16* %nbBlankLines55, align 2, !tbaa !40
  %inc = add i16 %72, 1
  store i16 %inc, i16* %nbBlankLines55, align 2, !tbaa !40
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.end.48
  %73 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %nbLinesSent57 = getelementptr inbounds %struct.Summary, %struct.Summary* %73, i32 0, i32 3
  %74 = load i16, i16* %nbLinesSent57, align 2, !tbaa !41
  %inc58 = add i16 %74, 1
  store i16 %inc58, i16* %nbLinesSent57, align 2, !tbaa !41
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %75 = load i16, i16* %lineNB, align 2, !tbaa !25
  %inc59 = add i16 %75, 1
  store i16 %inc59, i16* %lineNB, align 2, !tbaa !25
  br label %for.cond

for.end:                                          ; preds = %if.then.29, %if.else, %for.cond
  %76 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %76, i32 0, i32 2
  %77 = load i16, i16* %current, align 2, !tbaa !26
  %conv60 = sext i16 %77 to i32
  %cmp61 = icmp sgt i32 %conv60, 5
  br i1 %cmp61, label %if.then.63, label %if.else.78

if.then.63:                                       ; preds = %for.end
  %78 = bitcast i16* %size to i8*
  call void @llvm.lifetime.start(i64 2, i8* %78) #2
  %79 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %current64 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %79, i32 0, i32 2
  %80 = load i16, i16* %current64, align 2, !tbaa !26
  %conv65 = sext i16 %80 to i32
  %sub66 = sub nsw i32 %conv65, 5
  %conv67 = trunc i32 %sub66 to i16
  store i16 %conv67, i16* %size, align 2, !tbaa !25
  %81 = load i8*, i8** %pSaveCommandStart, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr, i8** %pSaveCommandStart, align 8, !tbaa !1
  store i8 64, i8* %81, align 1, !tbaa !30
  %82 = load i8*, i8** %pSaveCommandStart, align 8, !tbaa !1
  %incdec.ptr68 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr68, i8** %pSaveCommandStart, align 8, !tbaa !1
  store i8 71, i8* %82, align 1, !tbaa !30
  %83 = load i16, i16* %size, align 2, !tbaa !25
  %conv69 = sext i16 %83 to i32
  %shr = ashr i32 %conv69, 16
  %conv70 = trunc i32 %shr to i8
  %84 = load i8*, i8** %pSaveCommandStart, align 8, !tbaa !1
  %incdec.ptr71 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr71, i8** %pSaveCommandStart, align 8, !tbaa !1
  store i8 %conv70, i8* %84, align 1, !tbaa !30
  %85 = load i16, i16* %size, align 2, !tbaa !25
  %conv72 = sext i16 %85 to i32
  %shr73 = ashr i32 %conv72, 8
  %conv74 = trunc i32 %shr73 to i8
  %86 = load i8*, i8** %pSaveCommandStart, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %incdec.ptr75, i8** %pSaveCommandStart, align 8, !tbaa !1
  store i8 %conv74, i8* %86, align 1, !tbaa !30
  %87 = load i16, i16* %size, align 2, !tbaa !25
  %conv76 = trunc i16 %87 to i8
  %88 = load i8*, i8** %pSaveCommandStart, align 8, !tbaa !1
  %incdec.ptr77 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr77, i8** %pSaveCommandStart, align 8, !tbaa !1
  store i8 %conv76, i8* %88, align 1, !tbaa !30
  %89 = bitcast i16* %size to i8*
  call void @llvm.lifetime.end(i64 2, i8* %89) #2
  br label %if.end.80

if.else.78:                                       ; preds = %for.end
  %90 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %current79 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %90, i32 0, i32 2
  store i16 0, i16* %current79, align 2, !tbaa !26
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.63
  %91 = load i16, i16* %lineNB, align 2, !tbaa !25
  %conv81 = sext i16 %91 to i32
  %92 = load %struct.Summary*, %struct.Summary** %pSummary.addr, align 8, !tbaa !1
  %pageHeight82 = getelementptr inbounds %struct.Summary, %struct.Summary* %92, i32 0, i32 5
  %93 = load i16, i16* %pageHeight82, align 2, !tbaa !43
  %conv83 = sext i16 %93 to i32
  %cmp84 = icmp eq i32 %conv81, %conv83
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.end.80
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.87:                                       ; preds = %if.end.80
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.87, %if.then.86
  %94 = bitcast i16* %tmpLength to i8*
  call void @llvm.lifetime.end(i64 2, i8* %94) #2
  %95 = bitcast i16* %usefulLength to i8*
  call void @llvm.lifetime.end(i64 2, i8* %95) #2
  %96 = bitcast i16* %lineNB to i8*
  call void @llvm.lifetime.end(i64 2, i8* %96) #2
  %97 = bitcast i8** %pSaveCommandStart to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #2
  %98 = load i32, i32* %retval
  ret i32 %98
}

; Function Attrs: nounwind uwtable
define internal signext i16 @horizontalOffset(i16 signext %pixWidth, i16 signext %pixOffset, i16 signext %resolution) #1 {
entry:
  %pixWidth.addr = alloca i16, align 2
  %pixOffset.addr = alloca i16, align 2
  %resolution.addr = alloca i16, align 2
  store i16 %pixWidth, i16* %pixWidth.addr, align 2, !tbaa !25
  store i16 %pixOffset, i16* %pixOffset.addr, align 2, !tbaa !25
  store i16 %resolution, i16* %resolution.addr, align 2, !tbaa !25
  %0 = load i16, i16* %resolution.addr, align 2, !tbaa !25
  %conv = sext i16 %0 to i32
  %mul = mul nsw i32 5100, %conv
  %div = sdiv i32 %mul, 600
  %1 = load i16, i16* %pixWidth.addr, align 2, !tbaa !25
  %conv1 = sext i16 %1 to i32
  %sub = sub nsw i32 %div, %conv1
  %2 = load i16, i16* %pixOffset.addr, align 2, !tbaa !25
  %conv2 = sext i16 %2 to i32
  %mul3 = mul nsw i32 %conv2, 2
  %add = add nsw i32 %sub, %mul3
  %add4 = add nsw i32 %add, 7
  %div5 = sdiv i32 %add4, 8
  %conv6 = trunc i32 %div5 to i16
  ret i16 %conv6
}

declare i32 @fputc(i32, %struct._IO_FILE*) #0

; Function Attrs: nounwind uwtable
define internal i8* @currentPosition(%struct.ByteList* %list) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %0 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %0, i32 0, i32 2
  %1 = load i16, i16* %current, align 2, !tbaa !26
  %idxprom = sext i16 %1 to i64
  %2 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ByteList, %struct.ByteList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  ret i8* %arrayidx
}

; Function Attrs: nounwind uwtable
define internal void @addNBytes(%struct.ByteList* %list, i8 zeroext %value, i16 signext %nb) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %value.addr = alloca i8, align 1
  %nb.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store i8 %value, i8* %value.addr, align 1, !tbaa !30
  store i16 %nb, i16* %nb.addr, align 2, !tbaa !25
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %1, i32 0, i32 2
  %2 = load i16, i16* %current, align 2, !tbaa !26
  %conv = sext i16 %2 to i32
  %3 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %maxSize = getelementptr inbounds %struct.ByteList, %struct.ByteList* %3, i32 0, i32 1
  %4 = load i16, i16* %maxSize, align 2, !tbaa !28
  %conv1 = sext i16 %4 to i32
  %5 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv2 = sext i16 %5 to i32
  %sub = sub nsw i32 %conv1, %conv2
  %cmp = icmp sle i32 %conv, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current4 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %6, i32 0, i32 2
  %7 = load i16, i16* %current4, align 2, !tbaa !26
  %conv5 = sext i16 %7 to i32
  store i32 %conv5, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !tbaa !7
  %9 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current6 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %9, i32 0, i32 2
  %10 = load i16, i16* %current6, align 2, !tbaa !26
  %conv7 = sext i16 %10 to i32
  %11 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv8 = sext i16 %11 to i32
  %add = add nsw i32 %conv7, %conv8
  %cmp9 = icmp slt i32 %8, %add
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8, i8* %value.addr, align 1, !tbaa !30
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ByteList, %struct.ByteList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data, align 8, !tbaa !29
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 %12, i8* %arrayidx, align 1, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !7
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv11 = sext i16 %17 to i32
  %18 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current12 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %18, i32 0, i32 2
  %19 = load i16, i16* %current12, align 2, !tbaa !26
  %conv13 = sext i16 %19 to i32
  %add14 = add nsw i32 %conv13, %conv11
  %conv15 = trunc i32 %add14 to i16
  store i16 %conv15, i16* %current12, align 2, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i8* @gs_program_name() #4
  %call16 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call, i64 %call16) #4
  %20 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv17 = sext i16 %20 to i32
  %call18 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 %conv17) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #2
  ret void
}

declare i32 @gdev_prn_copy_scan_lines(%struct.gx_device_printer_s*, i32, i8*, i32) #0

; Function Attrs: nounwind uwtable
define internal signext i16 @stripTrailingBlanks(i8* %line, i16 signext %length) #1 {
entry:
  %retval = alloca i16, align 2
  %line.addr = alloca i8*, align 8
  %length.addr = alloca i16, align 2
  %positionOfFirstZero = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i8* %line, i8** %line.addr, align 8, !tbaa !1
  store i16 %length, i16* %length.addr, align 2, !tbaa !25
  %0 = bitcast i16* %positionOfFirstZero to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i16, i16* %length.addr, align 2, !tbaa !25
  %conv = sext i16 %1 to i32
  %sub = sub nsw i32 %conv, 1
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %positionOfFirstZero, align 2, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i16, i16* %positionOfFirstZero, align 2, !tbaa !25
  %conv2 = sext i16 %2 to i32
  %cmp = icmp sgt i32 %conv2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i16, i16* %positionOfFirstZero, align 2, !tbaa !25
  %idxprom = sext i16 %3 to i64
  %4 = load i8*, i8** %line.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1, !tbaa !30
  %conv4 = zext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i16, i16* %positionOfFirstZero, align 2, !tbaa !25
  %conv7 = sext i16 %6 to i32
  %add = add nsw i32 %conv7, 1
  %conv8 = trunc i32 %add to i16
  store i16 %conv8, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %7 = load i16, i16* %positionOfFirstZero, align 2, !tbaa !25
  %dec = add i16 %7, -1
  store i16 %dec, i16* %positionOfFirstZero, align 2, !tbaa !25
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i16 0, i16* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %8 = bitcast i16* %positionOfFirstZero to i8*
  call void @llvm.lifetime.end(i64 2, i8* %8) #2
  %9 = load i16, i16* %retval
  ret i16 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @isThereEnoughRoom(%struct.ByteList* %list, i16 signext %biggest) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %biggest.addr = alloca i16, align 2
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store i16 %biggest, i16* %biggest.addr, align 2, !tbaa !25
  %0 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %maxSize = getelementptr inbounds %struct.ByteList, %struct.ByteList* %0, i32 0, i32 1
  %1 = load i16, i16* %maxSize, align 2, !tbaa !28
  %conv = sext i16 %1 to i32
  %2 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %2, i32 0, i32 2
  %3 = load i16, i16* %current, align 2, !tbaa !26
  %conv1 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %4 = load i16, i16* %biggest.addr, align 2, !tbaa !25
  %conv2 = sext i16 %4 to i32
  %cmp = icmp sge i32 %sub, %conv2
  %conv3 = zext i1 %cmp to i32
  ret i32 %conv3
}

; Function Attrs: nounwind uwtable
define internal signext i16 @roomLeft(%struct.ByteList* %list) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %0 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %maxSize = getelementptr inbounds %struct.ByteList, %struct.ByteList* %0, i32 0, i32 1
  %1 = load i16, i16* %maxSize, align 2, !tbaa !28
  %conv = sext i16 %1 to i32
  %2 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %2, i32 0, i32 2
  %3 = load i16, i16* %current, align 2, !tbaa !26
  %conv1 = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i16
  ret i16 %conv2
}

; Function Attrs: nounwind uwtable
define internal void @resetPreviousData(%struct.Summary* %s) #1 {
entry:
  %s.addr = alloca %struct.Summary*, align 8
  store %struct.Summary* %s, %struct.Summary** %s.addr, align 8, !tbaa !1
  %0 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %previousData = getelementptr inbounds %struct.Summary, %struct.Summary* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1500 x i8], [1500 x i8]* %previousData, i32 0, i32 0
  %1 = load %struct.Summary*, %struct.Summary** %s.addr, align 8, !tbaa !1
  %pageWidth = getelementptr inbounds %struct.Summary, %struct.Summary* %1, i32 0, i32 4
  %2 = load i16, i16* %pageWidth, align 2, !tbaa !42
  %conv = sext i16 %2 to i64
  %call = call i8* @memset(i8* %arraydecay, i32 0, i64 %conv) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makeCommandsForSequence(i8* %pSource, i16 signext %length, %struct.ByteList* %pCommandList, i16 signext %offset, i8* %pNumberOfCommands, i16 signext %rest) #1 {
entry:
  %pSource.addr = alloca i8*, align 8
  %length.addr = alloca i16, align 2
  %pCommandList.addr = alloca %struct.ByteList*, align 8
  %offset.addr = alloca i16, align 2
  %pNumberOfCommands.addr = alloca i8*, align 8
  %rest.addr = alloca i16, align 2
  %pStartOfSequence = alloca i8*, align 8
  %pEndOfSequence = alloca i8*, align 8
  %remainingLength = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i8* %pSource, i8** %pSource.addr, align 8, !tbaa !1
  store i16 %length, i16* %length.addr, align 2, !tbaa !25
  store %struct.ByteList* %pCommandList, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  store i16 %offset, i16* %offset.addr, align 2, !tbaa !25
  store i8* %pNumberOfCommands, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  store i16 %rest, i16* %rest.addr, align 2, !tbaa !25
  %0 = bitcast i8** %pStartOfSequence to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %pEndOfSequence to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i16* %remainingLength to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16, i16* %length.addr, align 2, !tbaa !25
  %conv = sext i16 %3 to i32
  %sub = sub nsw i32 %conv, 1
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %remainingLength, align 2, !tbaa !25
  %4 = load i8*, i8** %pSource.addr, align 8, !tbaa !1
  store i8* %4, i8** %pStartOfSequence, align 8, !tbaa !1
  %5 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1
  store i8* %add.ptr, i8** %pEndOfSequence, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.end.67, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %7 = load i8, i8* %6, align 1, !tbaa !30
  %conv2 = zext i8 %7 to i32
  %cmp = icmp eq i32 %conv2, 253
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %9 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %conv4 = sext i16 %9 to i32
  %add = add nsw i32 1, %conv4
  %10 = load i16, i16* %rest.addr, align 2, !tbaa !25
  %conv5 = sext i16 %10 to i32
  %add6 = add nsw i32 %add, %conv5
  %conv7 = trunc i32 %add6 to i16
  %11 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %12 = load i16, i16* %offset.addr, align 2, !tbaa !25
  call void @makeSequenceWithoutRepeat(i8* %8, i16 signext %conv7, %struct.ByteList* %11, i16 signext %12) #4
  %13 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %14 = load i8, i8* %13, align 1, !tbaa !30
  %inc = add i8 %14, 1
  store i8 %inc, i8* %13, align 1, !tbaa !30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.23, %if.end
  br label %while.body.9

while.body.9:                                     ; preds = %while.cond.8
  %15 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %conv10 = sext i16 %15 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %while.body.9
  %16 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %17 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %18 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv14 = trunc i64 %sub.ptr.sub to i16
  %19 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %20 = load i16, i16* %offset.addr, align 2, !tbaa !25
  call void @makeSequenceWithoutRepeat(i8* %16, i16 signext %conv14, %struct.ByteList* %19, i16 signext %20) #4
  %21 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !30
  %inc15 = add i8 %22, 1
  store i8 %inc15, i8* %21, align 1, !tbaa !30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %while.body.9
  %23 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !30
  %conv17 = zext i8 %24 to i32
  %25 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %add.ptr18 = getelementptr inbounds i8, i8* %25, i64 -1
  %26 = load i8, i8* %add.ptr18, align 1, !tbaa !30
  %conv19 = zext i8 %26 to i32
  %cmp20 = icmp eq i32 %conv17, %conv19
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  br label %while.end

if.end.23:                                        ; preds = %if.end.16
  %27 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %pEndOfSequence, align 8, !tbaa !1
  %28 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %dec = add i16 %28, -1
  store i16 %dec, i16* %remainingLength, align 2, !tbaa !25
  br label %while.cond.8

while.end:                                        ; preds = %if.then.22
  %29 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %30 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %add.ptr24 = getelementptr inbounds i8, i8* %30, i64 -1
  %cmp25 = icmp ne i8* %29, %add.ptr24
  br i1 %cmp25, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %while.end
  %31 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %32 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %add.ptr28 = getelementptr inbounds i8, i8* %32, i64 -1
  %33 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %sub.ptr.lhs.cast29 = ptrtoint i8* %add.ptr28 to i64
  %sub.ptr.rhs.cast30 = ptrtoint i8* %33 to i64
  %sub.ptr.sub31 = sub i64 %sub.ptr.lhs.cast29, %sub.ptr.rhs.cast30
  %conv32 = trunc i64 %sub.ptr.sub31 to i16
  %34 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %35 = load i16, i16* %offset.addr, align 2, !tbaa !25
  call void @makeSequenceWithoutRepeat(i8* %31, i16 signext %conv32, %struct.ByteList* %34, i16 signext %35) #4
  %36 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !30
  %inc33 = add i8 %37, 1
  store i8 %inc33, i8* %36, align 1, !tbaa !30
  store i16 0, i16* %offset.addr, align 2, !tbaa !25
  %38 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %add.ptr34 = getelementptr inbounds i8, i8* %38, i64 -1
  store i8* %add.ptr34, i8** %pStartOfSequence, align 8, !tbaa !1
  %39 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %40 = load i8, i8* %39, align 1, !tbaa !30
  %conv35 = zext i8 %40 to i32
  %cmp36 = icmp eq i32 %conv35, 253
  br i1 %cmp36, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.then.27
  %41 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %42 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %conv39 = sext i16 %42 to i32
  %add40 = add nsw i32 1, %conv39
  %43 = load i16, i16* %rest.addr, align 2, !tbaa !25
  %conv41 = sext i16 %43 to i32
  %add42 = add nsw i32 %add40, %conv41
  %conv43 = trunc i32 %add42 to i16
  %44 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %45 = load i16, i16* %offset.addr, align 2, !tbaa !25
  call void @makeSequenceWithoutRepeat(i8* %41, i16 signext %conv43, %struct.ByteList* %44, i16 signext %45) #4
  %46 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %47 = load i8, i8* %46, align 1, !tbaa !30
  %inc44 = add i8 %47, 1
  store i8 %inc44, i8* %46, align 1, !tbaa !30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.27
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %while.end
  br label %while.cond.47

while.cond.47:                                    ; preds = %if.end.64, %if.end.46
  br label %while.body.48

while.body.48:                                    ; preds = %while.cond.47
  %48 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %conv49 = sext i16 %48 to i32
  %cmp50 = icmp eq i32 %conv49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.58

if.then.52:                                       ; preds = %while.body.48
  %49 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %50 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %51 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %sub.ptr.lhs.cast53 = ptrtoint i8* %50 to i64
  %sub.ptr.rhs.cast54 = ptrtoint i8* %51 to i64
  %sub.ptr.sub55 = sub i64 %sub.ptr.lhs.cast53, %sub.ptr.rhs.cast54
  %conv56 = trunc i64 %sub.ptr.sub55 to i16
  %52 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %53 = load i16, i16* %offset.addr, align 2, !tbaa !25
  call void @makeSequenceWithRepeat(i8* %49, i16 signext %conv56, %struct.ByteList* %52, i16 signext %53) #4
  %54 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %55 = load i8, i8* %54, align 1, !tbaa !30
  %inc57 = add i8 %55, 1
  store i8 %inc57, i8* %54, align 1, !tbaa !30
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.58:                                        ; preds = %while.body.48
  %56 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %57 = load i8, i8* %56, align 1, !tbaa !30
  %conv59 = zext i8 %57 to i32
  %58 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %59 = load i8, i8* %58, align 1, !tbaa !30
  %conv60 = zext i8 %59 to i32
  %cmp61 = icmp ne i32 %conv59, %conv60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.58
  br label %while.end.67

if.end.64:                                        ; preds = %if.end.58
  %60 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %incdec.ptr65 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr65, i8** %pEndOfSequence, align 8, !tbaa !1
  %61 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %dec66 = add i16 %61, -1
  store i16 %dec66, i16* %remainingLength, align 2, !tbaa !25
  br label %while.cond.47

while.end.67:                                     ; preds = %if.then.63
  %62 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %63 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %64 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %sub.ptr.lhs.cast68 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i8* %64 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %conv71 = trunc i64 %sub.ptr.sub70 to i16
  %65 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %66 = load i16, i16* %offset.addr, align 2, !tbaa !25
  call void @makeSequenceWithRepeat(i8* %62, i16 signext %conv71, %struct.ByteList* %65, i16 signext %66) #4
  %67 = load i8*, i8** %pNumberOfCommands.addr, align 8, !tbaa !1
  %68 = load i8, i8* %67, align 1, !tbaa !30
  %inc72 = add i8 %68, 1
  store i8 %inc72, i8* %67, align 1, !tbaa !30
  store i16 0, i16* %offset.addr, align 2, !tbaa !25
  %69 = load i8*, i8** %pEndOfSequence, align 8, !tbaa !1
  %incdec.ptr73 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %incdec.ptr73, i8** %pEndOfSequence, align 8, !tbaa !1
  store i8* %69, i8** %pStartOfSequence, align 8, !tbaa !1
  %70 = load i16, i16* %remainingLength, align 2, !tbaa !25
  %dec74 = add i16 %70, -1
  store i16 %dec74, i16* %remainingLength, align 2, !tbaa !25
  br label %while.cond

cleanup:                                          ; preds = %if.then.52, %if.then.38, %if.then.13, %if.then
  %71 = bitcast i16* %remainingLength to i8*
  call void @llvm.lifetime.end(i64 2, i8* %71) #2
  %72 = bitcast i8** %pEndOfSequence to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast i8** %pStartOfSequence to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makeFullLine(i8* %pCurrentLine, i8* %pPreviousLine, i16 signext %lineWidth, %struct.ByteList* %commandsList, i16 signext %horizontalOffset) #1 {
entry:
  %pCurrentLine.addr = alloca i8*, align 8
  %pPreviousLine.addr = alloca i8*, align 8
  %lineWidth.addr = alloca i16, align 2
  %commandsList.addr = alloca %struct.ByteList*, align 8
  %horizontalOffset.addr = alloca i16, align 2
  %pPreviousTmp = alloca i8*, align 8
  %pCurrentTmp = alloca i8*, align 8
  %pNumberOfCommands = alloca i8*, align 8
  %loopCounter = alloca i32, align 4
  %remainingWidth = alloca i16, align 2
  %pStartOfSequence = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %pCurrentLine, i8** %pCurrentLine.addr, align 8, !tbaa !1
  store i8* %pPreviousLine, i8** %pPreviousLine.addr, align 8, !tbaa !1
  store i16 %lineWidth, i16* %lineWidth.addr, align 2, !tbaa !25
  store %struct.ByteList* %commandsList, %struct.ByteList** %commandsList.addr, align 8, !tbaa !1
  store i16 %horizontalOffset, i16* %horizontalOffset.addr, align 2, !tbaa !25
  %0 = bitcast i8** %pPreviousTmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i8** %pCurrentTmp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast i8** %pNumberOfCommands to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast i32* %loopCounter to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #2
  %4 = bitcast i16* %remainingWidth to i8*
  call void @llvm.lifetime.start(i64 2, i8* %4) #2
  %5 = bitcast i8** %pStartOfSequence to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load i16, i16* %lineWidth.addr, align 2, !tbaa !25
  %conv = sext i16 %6 to i32
  %cmp = icmp sle i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.ByteList*, %struct.ByteList** %commandsList.addr, align 8, !tbaa !1
  call void @addByte(%struct.ByteList* %7, i8 zeroext -1) #4
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load %struct.ByteList*, %struct.ByteList** %commandsList.addr, align 8, !tbaa !1
  %call = call i8* @currentPosition(%struct.ByteList* %8) #4
  store i8* %call, i8** %pNumberOfCommands, align 8, !tbaa !1
  %9 = load %struct.ByteList*, %struct.ByteList** %commandsList.addr, align 8, !tbaa !1
  call void @addByte(%struct.ByteList* %9, i8 zeroext 0) #4
  %10 = load i8*, i8** %pPreviousLine.addr, align 8, !tbaa !1
  store i8* %10, i8** %pPreviousTmp, align 8, !tbaa !1
  %11 = load i8*, i8** %pCurrentLine.addr, align 8, !tbaa !1
  store i8* %11, i8** %pCurrentTmp, align 8, !tbaa !1
  %12 = load i16, i16* %lineWidth.addr, align 2, !tbaa !25
  %conv2 = sext i16 %12 to i32
  store i32 %conv2, i32* %loopCounter, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %loopCounter, align 4, !tbaa !7
  %cmp3 = icmp slt i32 0, %13
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %pCurrentTmp, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %pCurrentTmp, align 8, !tbaa !1
  %15 = load i8, i8* %14, align 1, !tbaa !30
  %conv5 = zext i8 %15 to i32
  %16 = load i8*, i8** %pPreviousTmp, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr6, i8** %pPreviousTmp, align 8, !tbaa !1
  %17 = load i8, i8* %16, align 1, !tbaa !30
  %conv7 = zext i8 %17 to i32
  %xor = xor i32 %conv7, %conv5
  %conv8 = trunc i32 %xor to i8
  store i8 %conv8, i8* %16, align 1, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %loopCounter, align 4, !tbaa !7
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %loopCounter, align 4, !tbaa !7
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %pPreviousLine.addr, align 8, !tbaa !1
  store i8* %19, i8** %pStartOfSequence, align 8, !tbaa !1
  %20 = load i16, i16* %lineWidth.addr, align 2, !tbaa !25
  store i16 %20, i16* %remainingWidth, align 2, !tbaa !25
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %for.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.20, %while.body
  br label %while.body.10

while.body.10:                                    ; preds = %while.cond.9
  %21 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %conv11 = sext i16 %21 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body.10
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %while.body.10
  %22 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %23 = load i8, i8* %22, align 1, !tbaa !30
  %conv16 = zext i8 %23 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  br label %while.end

if.end.20:                                        ; preds = %if.end.15
  %24 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr21, i8** %pStartOfSequence, align 8, !tbaa !1
  %25 = load i16, i16* %horizontalOffset.addr, align 2, !tbaa !25
  %inc = add i16 %25, 1
  store i16 %inc, i16* %horizontalOffset.addr, align 2, !tbaa !25
  %26 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %dec22 = add i16 %26, -1
  store i16 %dec22, i16* %remainingWidth, align 2, !tbaa !25
  br label %while.cond.9

while.end:                                        ; preds = %if.then.19
  %27 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 1
  store i8* %add.ptr, i8** %pPreviousTmp, align 8, !tbaa !1
  %28 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %dec23 = add i16 %28, -1
  store i16 %dec23, i16* %remainingWidth, align 2, !tbaa !25
  br label %while.cond.24

while.cond.24:                                    ; preds = %while.body.31, %while.end
  %29 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %conv25 = sext i16 %29 to i32
  %cmp26 = icmp ne i32 %conv25, 0
  br i1 %cmp26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.24
  %30 = load i8*, i8** %pPreviousTmp, align 8, !tbaa !1
  %31 = load i8, i8* %30, align 1, !tbaa !30
  %conv28 = zext i8 %31 to i32
  %cmp29 = icmp ne i32 %conv28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.24
  %32 = phi i1 [ false, %while.cond.24 ], [ %cmp29, %land.rhs ]
  br i1 %32, label %while.body.31, label %while.end.34

while.body.31:                                    ; preds = %land.end
  %33 = load i8*, i8** %pPreviousTmp, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr32, i8** %pPreviousTmp, align 8, !tbaa !1
  %34 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %dec33 = add i16 %34, -1
  store i16 %dec33, i16* %remainingWidth, align 2, !tbaa !25
  br label %while.cond.24

while.end.34:                                     ; preds = %land.end
  %35 = load i8*, i8** %pCurrentLine.addr, align 8, !tbaa !1
  %36 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %37 = load i8*, i8** %pPreviousLine.addr, align 8, !tbaa !1
  %sub.ptr.lhs.cast = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add.ptr35 = getelementptr inbounds i8, i8* %35, i64 %sub.ptr.sub
  %38 = load i8*, i8** %pPreviousTmp, align 8, !tbaa !1
  %39 = load i8*, i8** %pStartOfSequence, align 8, !tbaa !1
  %sub.ptr.lhs.cast36 = ptrtoint i8* %38 to i64
  %sub.ptr.rhs.cast37 = ptrtoint i8* %39 to i64
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.rhs.cast37
  %conv39 = trunc i64 %sub.ptr.sub38 to i16
  %40 = load %struct.ByteList*, %struct.ByteList** %commandsList.addr, align 8, !tbaa !1
  %41 = load i16, i16* %horizontalOffset.addr, align 2, !tbaa !25
  %42 = load i8*, i8** %pNumberOfCommands, align 8, !tbaa !1
  %43 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  call void @makeCommandsForSequence(i8* %add.ptr35, i16 signext %conv39, %struct.ByteList* %40, i16 signext %41, i8* %42, i16 signext %43) #4
  %44 = load i8*, i8** %pNumberOfCommands, align 8, !tbaa !1
  %45 = load i8, i8* %44, align 1, !tbaa !30
  %conv40 = zext i8 %45 to i32
  %cmp41 = icmp eq i32 %conv40, 254
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end.34
  %46 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %conv43 = sext i16 %46 to i32
  %cmp44 = icmp eq i32 %conv43, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false, %while.end.34
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %lor.lhs.false
  %47 = load i8*, i8** %pPreviousTmp, align 8, !tbaa !1
  %add.ptr48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %add.ptr48, i8** %pStartOfSequence, align 8, !tbaa !1
  store i16 1, i16* %horizontalOffset.addr, align 2, !tbaa !25
  %48 = load i16, i16* %remainingWidth, align 2, !tbaa !25
  %dec49 = add i16 %48, -1
  store i16 %dec49, i16* %remainingWidth, align 2, !tbaa !25
  br label %while.cond

cleanup:                                          ; preds = %if.then.46, %if.then.14, %if.then
  %49 = bitcast i8** %pStartOfSequence to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #2
  %50 = bitcast i16* %remainingWidth to i8*
  call void @llvm.lifetime.end(i64 2, i8* %50) #2
  %51 = bitcast i32* %loopCounter to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #2
  %52 = bitcast i8** %pNumberOfCommands to i8*
  call void @llvm.lifetime.end(i64 8, i8* %52) #2
  %53 = bitcast i8** %pCurrentTmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #2
  %54 = bitcast i8** %pPreviousTmp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %54) #2
  ret void
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #3

; Function Attrs: nounwind uwtable
define internal void @makeSequenceWithoutRepeat(i8* %pSequence, i16 signext %lengthOfSequence, %struct.ByteList* %pCommandList, i16 signext %offset) #1 {
entry:
  %pSequence.addr = alloca i8*, align 8
  %lengthOfSequence.addr = alloca i16, align 2
  %pCommandList.addr = alloca %struct.ByteList*, align 8
  %offset.addr = alloca i16, align 2
  %tmpFirstByte = alloca i8, align 1
  %pSaveFirstByte = alloca i8*, align 8
  %reducedLength = alloca i16, align 2
  store i8* %pSequence, i8** %pSequence.addr, align 8, !tbaa !1
  store i16 %lengthOfSequence, i16* %lengthOfSequence.addr, align 2, !tbaa !25
  store %struct.ByteList* %pCommandList, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  store i16 %offset, i16* %offset.addr, align 2, !tbaa !25
  call void @llvm.lifetime.start(i64 1, i8* %tmpFirstByte) #2
  store i8 0, i8* %tmpFirstByte, align 1, !tbaa !30
  %0 = bitcast i8** %pSaveFirstByte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %reducedLength to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = load i16, i16* %lengthOfSequence.addr, align 2, !tbaa !25
  %conv = sext i16 %2 to i32
  %sub = sub nsw i32 %conv, 1
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %reducedLength, align 2, !tbaa !25
  %3 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %call = call i8* @currentPosition(%struct.ByteList* %3) #4
  store i8* %call, i8** %pSaveFirstByte, align 8, !tbaa !1
  %4 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  call void @addByte(%struct.ByteList* %4, i8 zeroext 0) #4
  %5 = load i16, i16* %offset.addr, align 2, !tbaa !25
  %conv2 = sext i16 %5 to i32
  %cmp = icmp sge i32 %conv2, 15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %7 = load i16, i16* %offset.addr, align 2, !tbaa !25
  %conv4 = sext i16 %7 to i32
  %sub5 = sub nsw i32 %conv4, 15
  %conv6 = trunc i32 %sub5 to i16
  call void @addCodedNumber(%struct.ByteList* %6, i16 signext %conv6) #4
  %8 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv7 = zext i8 %8 to i32
  %or = or i32 %conv7, 120
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i16, i16* %offset.addr, align 2, !tbaa !25
  %conv9 = sext i16 %9 to i32
  %shl = shl i32 %conv9, 3
  %10 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv10 = zext i8 %10 to i32
  %or11 = or i32 %conv10, %shl
  %conv12 = trunc i32 %or11 to i8
  store i8 %conv12, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i16, i16* %reducedLength, align 2, !tbaa !25
  %conv13 = sext i16 %11 to i32
  %cmp14 = icmp sge i32 %conv13, 7
  br i1 %cmp14, label %if.then.16, label %if.else.23

if.then.16:                                       ; preds = %if.end
  %12 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %13 = load i16, i16* %reducedLength, align 2, !tbaa !25
  %conv17 = sext i16 %13 to i32
  %sub18 = sub nsw i32 %conv17, 7
  %conv19 = trunc i32 %sub18 to i16
  call void @addCodedNumber(%struct.ByteList* %12, i16 signext %conv19) #4
  %14 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv20 = zext i8 %14 to i32
  %or21 = or i32 %conv20, 7
  %conv22 = trunc i32 %or21 to i8
  store i8 %conv22, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end.28

if.else.23:                                       ; preds = %if.end
  %15 = load i16, i16* %reducedLength, align 2, !tbaa !25
  %conv24 = sext i16 %15 to i32
  %16 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv25 = zext i8 %16 to i32
  %or26 = or i32 %conv25, %conv24
  %conv27 = trunc i32 %or26 to i8
  store i8 %conv27, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.23, %if.then.16
  %17 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %pSequence.addr, align 8, !tbaa !1
  %19 = load i16, i16* %lengthOfSequence.addr, align 2, !tbaa !25
  call void @addArray(%struct.ByteList* %17, i8* %18, i16 signext %19) #4
  %20 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %21 = load i8*, i8** %pSaveFirstByte, align 8, !tbaa !1
  store i8 %20, i8* %21, align 1, !tbaa !30
  %22 = bitcast i16* %reducedLength to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #2
  %23 = bitcast i8** %pSaveFirstByte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  call void @llvm.lifetime.end(i64 1, i8* %tmpFirstByte) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makeSequenceWithRepeat(i8* %pSequence, i16 signext %lengthOfSequence, %struct.ByteList* %pCommandList, i16 signext %offset) #1 {
entry:
  %pSequence.addr = alloca i8*, align 8
  %lengthOfSequence.addr = alloca i16, align 2
  %pCommandList.addr = alloca %struct.ByteList*, align 8
  %offset.addr = alloca i16, align 2
  %tmpFirstByte = alloca i8, align 1
  %pSaveFirstByte = alloca i8*, align 8
  %reducedLength = alloca i16, align 2
  store i8* %pSequence, i8** %pSequence.addr, align 8, !tbaa !1
  store i16 %lengthOfSequence, i16* %lengthOfSequence.addr, align 2, !tbaa !25
  store %struct.ByteList* %pCommandList, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  store i16 %offset, i16* %offset.addr, align 2, !tbaa !25
  call void @llvm.lifetime.start(i64 1, i8* %tmpFirstByte) #2
  store i8 -128, i8* %tmpFirstByte, align 1, !tbaa !30
  %0 = bitcast i8** %pSaveFirstByte to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast i16* %reducedLength to i8*
  call void @llvm.lifetime.start(i64 2, i8* %1) #2
  %2 = load i16, i16* %lengthOfSequence.addr, align 2, !tbaa !25
  %conv = sext i16 %2 to i32
  %sub = sub nsw i32 %conv, 2
  %conv1 = trunc i32 %sub to i16
  store i16 %conv1, i16* %reducedLength, align 2, !tbaa !25
  %3 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %call = call i8* @currentPosition(%struct.ByteList* %3) #4
  store i8* %call, i8** %pSaveFirstByte, align 8, !tbaa !1
  %4 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  call void @addByte(%struct.ByteList* %4, i8 zeroext 0) #4
  %5 = load i16, i16* %offset.addr, align 2, !tbaa !25
  %conv2 = sext i16 %5 to i32
  %cmp = icmp sge i32 %conv2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %7 = load i16, i16* %offset.addr, align 2, !tbaa !25
  %conv4 = sext i16 %7 to i32
  %sub5 = sub nsw i32 %conv4, 3
  %conv6 = trunc i32 %sub5 to i16
  call void @addCodedNumber(%struct.ByteList* %6, i16 signext %conv6) #4
  %8 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv7 = zext i8 %8 to i32
  %or = or i32 %conv7, 96
  %conv8 = trunc i32 %or to i8
  store i8 %conv8, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load i16, i16* %offset.addr, align 2, !tbaa !25
  %conv9 = sext i16 %9 to i32
  %shl = shl i32 %conv9, 5
  %10 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv10 = zext i8 %10 to i32
  %or11 = or i32 %conv10, %shl
  %conv12 = trunc i32 %or11 to i8
  store i8 %conv12, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i16, i16* %reducedLength, align 2, !tbaa !25
  %conv13 = sext i16 %11 to i32
  %cmp14 = icmp sge i32 %conv13, 31
  br i1 %cmp14, label %if.then.16, label %if.else.23

if.then.16:                                       ; preds = %if.end
  %12 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %13 = load i16, i16* %reducedLength, align 2, !tbaa !25
  %conv17 = sext i16 %13 to i32
  %sub18 = sub nsw i32 %conv17, 31
  %conv19 = trunc i32 %sub18 to i16
  call void @addCodedNumber(%struct.ByteList* %12, i16 signext %conv19) #4
  %14 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv20 = zext i8 %14 to i32
  %or21 = or i32 %conv20, 31
  %conv22 = trunc i32 %or21 to i8
  store i8 %conv22, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end.28

if.else.23:                                       ; preds = %if.end
  %15 = load i16, i16* %reducedLength, align 2, !tbaa !25
  %conv24 = sext i16 %15 to i32
  %16 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %conv25 = zext i8 %16 to i32
  %or26 = or i32 %conv25, %conv24
  %conv27 = trunc i32 %or26 to i8
  store i8 %conv27, i8* %tmpFirstByte, align 1, !tbaa !30
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.23, %if.then.16
  %17 = load %struct.ByteList*, %struct.ByteList** %pCommandList.addr, align 8, !tbaa !1
  %18 = load i8*, i8** %pSequence.addr, align 8, !tbaa !1
  %19 = load i8, i8* %18, align 1, !tbaa !30
  call void @addByte(%struct.ByteList* %17, i8 zeroext %19) #4
  %20 = load i8, i8* %tmpFirstByte, align 1, !tbaa !30
  %21 = load i8*, i8** %pSaveFirstByte, align 8, !tbaa !1
  store i8 %20, i8* %21, align 1, !tbaa !30
  %22 = bitcast i16* %reducedLength to i8*
  call void @llvm.lifetime.end(i64 2, i8* %22) #2
  %23 = bitcast i8** %pSaveFirstByte to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  call void @llvm.lifetime.end(i64 1, i8* %tmpFirstByte) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addCodedNumber(%struct.ByteList* %list, i16 signext %number) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %number.addr = alloca i16, align 2
  %q = alloca i16, align 2
  %r = alloca i16, align 2
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store i16 %number, i16* %number.addr, align 2, !tbaa !25
  %0 = bitcast i16* %q to i8*
  call void @llvm.lifetime.start(i64 2, i8* %0) #2
  %1 = load i16, i16* %number.addr, align 2, !tbaa !25
  %conv = sext i16 %1 to i32
  %div = sdiv i32 %conv, 255
  %conv1 = trunc i32 %div to i16
  store i16 %conv1, i16* %q, align 2, !tbaa !25
  %2 = bitcast i16* %r to i8*
  call void @llvm.lifetime.start(i64 2, i8* %2) #2
  %3 = load i16, i16* %number.addr, align 2, !tbaa !25
  %conv2 = sext i16 %3 to i32
  %rem = srem i32 %conv2, 255
  %conv3 = trunc i32 %rem to i16
  store i16 %conv3, i16* %r, align 2, !tbaa !25
  %4 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %5 = load i16, i16* %q, align 2, !tbaa !25
  call void @addNBytes(%struct.ByteList* %4, i8 zeroext -1, i16 signext %5) #4
  %6 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %7 = load i16, i16* %r, align 2, !tbaa !25
  %conv4 = trunc i16 %7 to i8
  call void @addByte(%struct.ByteList* %6, i8 zeroext %conv4) #4
  %8 = bitcast i16* %r to i8*
  call void @llvm.lifetime.end(i64 2, i8* %8) #2
  %9 = bitcast i16* %q to i8*
  call void @llvm.lifetime.end(i64 2, i8* %9) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addArray(%struct.ByteList* %list, i8* %source, i16 signext %nb) #1 {
entry:
  %list.addr = alloca %struct.ByteList*, align 8
  %source.addr = alloca i8*, align 8
  %nb.addr = alloca i16, align 2
  store %struct.ByteList* %list, %struct.ByteList** %list.addr, align 8, !tbaa !1
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i16 %nb, i16* %nb.addr, align 2, !tbaa !25
  %0 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current = getelementptr inbounds %struct.ByteList, %struct.ByteList* %0, i32 0, i32 2
  %1 = load i16, i16* %current, align 2, !tbaa !26
  %conv = sext i16 %1 to i32
  %2 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %maxSize = getelementptr inbounds %struct.ByteList, %struct.ByteList* %2, i32 0, i32 1
  %3 = load i16, i16* %maxSize, align 2, !tbaa !28
  %conv1 = sext i16 %3 to i32
  %4 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv2 = sext i16 %4 to i32
  %sub = sub nsw i32 %conv1, %conv2
  %cmp = icmp sle i32 %conv, %sub
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %data = getelementptr inbounds %struct.ByteList, %struct.ByteList* %5, i32 0, i32 0
  %6 = load i8*, i8** %data, align 8, !tbaa !29
  %7 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current4 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %7, i32 0, i32 2
  %8 = load i16, i16* %current4, align 2, !tbaa !26
  %conv5 = sext i16 %8 to i32
  %idx.ext = sext i32 %conv5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %9 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %10 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv6 = sext i16 %10 to i64
  %call = call i8* @memcpy(i8* %add.ptr, i8* %9, i64 %conv6) #5
  %11 = load i16, i16* %nb.addr, align 2, !tbaa !25
  %conv7 = sext i16 %11 to i32
  %12 = load %struct.ByteList*, %struct.ByteList** %list.addr, align 8, !tbaa !1
  %current8 = getelementptr inbounds %struct.ByteList, %struct.ByteList* %12, i32 0, i32 2
  %13 = load i16, i16* %current8, align 2, !tbaa !26
  %conv9 = sext i16 %13 to i32
  %add = add nsw i32 %conv9, %conv7
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, i16* %current8, align 2, !tbaa !26
  br label %if.end

if.else:                                          ; preds = %entry
  %call11 = call i8* @gs_program_name() #4
  %call12 = call i64 @gs_revision_number() #4
  call void @eprintf_program_ident(i8* %call11, i64 %call12) #4
  %call13 = call i32 (i8*, ...) @errprintf_nomem(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i32 0, i32 0)) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
!9 = !{!10, !2, i64 17176}
!10 = !{!"gx_device_printer_s", !8, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !8, i64 40, !2, i64 48, !11, i64 56, !8, i64 80, !8, i64 84, !8, i64 88, !13, i64 96, !16, i64 816, !8, i64 832, !8, i64 836, !8, i64 840, !8, i64 844, !8, i64 848, !8, i64 852, !3, i64 856, !3, i64 864, !8, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !12, i64 928, !12, i64 936, !8, i64 944, !8, i64 948, !8, i64 952, !8, i64 956, !8, i64 960, !12, i64 968, !12, i64 976, !17, i64 984, !8, i64 1052, !8, i64 1056, !18, i64 1064, !2, i64 1104, !3, i64 1112, !20, i64 1120, !21, i64 1144, !3, i64 1728, !22, i64 12968, !3, i64 13056, !8, i64 17152, !8, i64 17156, !8, i64 17160, !8, i64 17164, !8, i64 17168, !8, i64 17172, !2, i64 17176, !12, i64 17184, !2, i64 17192, !2, i64 17200, !2, i64 17208, !2, i64 17216, !2, i64 17224, !8, i64 17232, !2, i64 17240, !8, i64 17248, !8, i64 17252, !24, i64 17256, !8, i64 17288, !2, i64 17296, !21, i64 17304, !21, i64 17888}
!11 = !{!"rc_header_s", !12, i64 0, !2, i64 8, !2, i64 16}
!12 = !{!"long", !3, i64 0}
!13 = !{!"gx_device_color_info_s", !8, i64 0, !8, i64 4, !3, i64 8, !14, i64 12, !3, i64 14, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !15, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !12, i64 704, !8, i64 712}
!14 = !{!"short", !3, i64 0}
!15 = !{!"gx_device_anti_alias_info_s", !8, i64 0, !8, i64 4}
!16 = !{!"gx_device_cached_colors_s", !12, i64 0, !12, i64 8}
!17 = !{!"gx_stroked_gradient_recognizer_s", !8, i64 0, !3, i64 4, !3, i64 36}
!18 = !{!"gdev_space_params_s", !12, i64 0, !12, i64 8, !19, i64 16, !8, i64 32, !3, i64 36}
!19 = !{!"gx_band_params_s", !8, i64 0, !8, i64 4, !12, i64 8}
!20 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!21 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!22 = !{!"gx_printer_device_procs_s", !2, i64 0, !2, i64 8, !23, i64 16, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!23 = !{!"gx_device_buf_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!24 = !{!"bg_print_s", !2, i64 0, !2, i64 8, !2, i64 16, !8, i64 24, !8, i64 28}
!25 = !{!14, !14, i64 0}
!26 = !{!27, !14, i64 10}
!27 = !{!"", !2, i64 0, !14, i64 8, !14, i64 10}
!28 = !{!27, !14, i64 8}
!29 = !{!27, !2, i64 0}
!30 = !{!3, !3, i64 0}
!31 = !{!10, !2, i64 24}
!32 = !{!33, !2, i64 200}
!33 = !{!"gs_memory_s", !2, i64 0, !34, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!34 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!35 = !{!33, !2, i64 88}
!36 = !{!10, !12, i64 928}
!37 = !{!33, !2, i64 24}
!38 = !{!39, !14, i64 0}
!39 = !{!"", !14, i64 0, !3, i64 2, !14, i64 1502, !14, i64 1504, !14, i64 1506, !14, i64 1508, !14, i64 1510, !14, i64 1512}
!40 = !{!39, !14, i64 1502}
!41 = !{!39, !14, i64 1504}
!42 = !{!39, !14, i64 1506}
!43 = !{!39, !14, i64 1508}
!44 = !{!39, !14, i64 1510}
!45 = !{!39, !14, i64 1512}
