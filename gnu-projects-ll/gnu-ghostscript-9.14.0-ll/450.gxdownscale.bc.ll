; ModuleID = './gxdownscale.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_downscaler_s = type { %struct.gx_device_s*, i32, i32, i32, i32, i8*, i32, i32*, i8*, i8*, i32, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, %struct.gs_get_bits_params_s, i32 }
%struct.gs_get_bits_params_s = type { i64, [64 x i8*], i32, i32, i32 }
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
%struct.gx_device_printer_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [11240 x i8], %struct.gx_printer_device_procs_s, [4096 x i8], i32, i32, i32, i32, i32, i32, %struct._IO_FILE*, i64, i8*, %struct.gs_memory_s*, %struct.gs_memory_s*, i32 (%struct.gx_device_s*, i32)*, %struct.gx_page_queue_s*, i32, %struct.gx_device_printer_s*, i32, i32, %struct.bg_print_s, i32, %struct.gx_saved_pages_list_s*, %struct.gx_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_printer_device_procs_s = type { i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)*, %struct.gx_device_buf_procs_s, void (%struct.gx_device_printer_s*, %struct.gdev_space_params_s*)*, i32 (%struct.gdev_prn_start_render_params_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*)*, i32 (%struct.gx_device_printer_s*, %struct._IO_FILE*, i32)* }
%struct.gdev_prn_start_render_params_s = type opaque
%struct.gx_page_queue_s = type opaque
%struct.bg_print_s = type { %struct.gx_semaphore_s*, %struct.gx_device_s*, i8*, i32, i32 }
%struct.gx_saved_pages_list_s = type { i32, i32, i32, i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gs_memory_s* }
%struct.gx_saved_pages_list_element_s = type { i32, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_pages_list_element_s*, %struct.gx_saved_page_s* }
%struct.gx_saved_page_s = type { [32 x i8], %struct.gx_device_color_info_s, [4096 x i8], [4096 x i8], %struct.clist_io_procs_s*, i32, i64, %struct.gx_band_params_s, %struct.gs_memory_s*, i32, i8* }
%struct.downscaler_process_page_arg_s = type { %struct.gx_process_page_options_s*, i32, i32, %struct.gx_downscaler_s }
%struct.downscaler_process_page_buffer_s = type { %struct.gx_device_s*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"gx_downscaler(planar_data)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"gx_downscaler(scaled_data)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"gx_downscaler(mfs)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gx_downscaler(errors)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gx_downscaler(data)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"downscaler process_page buffer\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_scale(i32 %width, i32 %factor) #0 {
entry:
  %width.addr = alloca i32, align 4
  %factor.addr = alloca i32, align 4
  %up = alloca i32, align 4
  %down = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  %0 = bitcast i32* %up to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %factor.addr, align 4, !tbaa !1
  call void @decode_factor(i32 %2, i32* %up, i32* %down) #4
  %3 = load i32, i32* %width.addr, align 4, !tbaa !1
  %4 = load i32, i32* %up, align 4, !tbaa !1
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %down, align 4, !tbaa !1
  %div = sdiv i32 %mul, %5
  %6 = bitcast i32* %down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast i32* %up to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %div
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @decode_factor(i32 %factor, i32* %up, i32* %down) #0 {
entry:
  %factor.addr = alloca i32, align 4
  %up.addr = alloca i32*, align 8
  %down.addr = alloca i32*, align 8
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  store i32* %up, i32** %up.addr, align 8, !tbaa !5
  store i32* %down, i32** %down.addr, align 8, !tbaa !5
  %0 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp = icmp eq i32 %0, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %down.addr, align 8, !tbaa !5
  store i32 3, i32* %1, align 4, !tbaa !1
  %2 = load i32*, i32** %up.addr, align 8, !tbaa !5
  store i32 2, i32* %2, align 4, !tbaa !1
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %3, 34
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  %4 = load i32*, i32** %down.addr, align 8, !tbaa !5
  store i32 3, i32* %4, align 4, !tbaa !1
  %5 = load i32*, i32** %up.addr, align 8, !tbaa !5
  store i32 4, i32* %5, align 4, !tbaa !1
  br label %if.end

if.else.3:                                        ; preds = %if.else
  %6 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %7 = load i32*, i32** %down.addr, align 8, !tbaa !5
  store i32 %6, i32* %7, align 4, !tbaa !1
  %8 = load i32*, i32** %up.addr, align 8, !tbaa !5
  store i32 1, i32* %8, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else.3, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_adjust_bandheight(i32 %factor, i32 %band_height) #0 {
entry:
  %factor.addr = alloca i32, align 4
  %band_height.addr = alloca i32, align 4
  %up = alloca i32, align 4
  %down = alloca i32, align 4
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  store i32 %band_height, i32* %band_height.addr, align 4, !tbaa !1
  %0 = bitcast i32* %up to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %factor.addr, align 4, !tbaa !1
  call void @decode_factor(i32 %2, i32* %up, i32* %down) #4
  %3 = load i32, i32* %band_height.addr, align 4, !tbaa !1
  %4 = load i32, i32* %down, align 4, !tbaa !1
  %div = sdiv i32 %3, %4
  %5 = load i32, i32* %down, align 4, !tbaa !1
  %mul = mul nsw i32 %div, %5
  %6 = bitcast i32* %down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #1
  %7 = bitcast i32* %up to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %mul
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_scale_rounded(i32 %width, i32 %factor) #0 {
entry:
  %width.addr = alloca i32, align 4
  %factor.addr = alloca i32, align 4
  %up = alloca i32, align 4
  %down = alloca i32, align 4
  store i32 %width, i32* %width.addr, align 4, !tbaa !1
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  %0 = bitcast i32* %up to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = load i32, i32* %factor.addr, align 4, !tbaa !1
  call void @decode_factor(i32 %2, i32* %up, i32* %down) #4
  %3 = load i32, i32* %width.addr, align 4, !tbaa !1
  %4 = load i32, i32* %up, align 4, !tbaa !1
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %down, align 4, !tbaa !1
  %add = add nsw i32 %mul, %5
  %sub = sub nsw i32 %add, 1
  %6 = load i32, i32* %down, align 4, !tbaa !1
  %div = sdiv i32 %sub, %6
  %7 = bitcast i32* %down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  %8 = bitcast i32* %up to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_init_planar(%struct.gx_downscaler_s* %ds, %struct.gx_device_s* %dev, %struct.gs_get_bits_params_s* %params, i32 %num_comps, i32 %factor, i32 %mfs, i32 %src_bpc, i32 %dst_bpc) #0 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %num_comps.addr = alloca i32, align 4
  %factor.addr = alloca i32, align 4
  %mfs.addr = alloca i32, align 4
  %src_bpc.addr = alloca i32, align 4
  %dst_bpc.addr = alloca i32, align 4
  %span = alloca i32, align 4
  %width1 = alloca i32, align 4
  %code = alloca i32, align 4
  %core = alloca void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, align 8
  %i = alloca i32, align 4
  %upfactor = alloca i32, align 4
  %downfactor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !1
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  store i32 %mfs, i32* %mfs.addr, align 4, !tbaa !1
  store i32 %src_bpc, i32* %src_bpc.addr, align 4, !tbaa !1
  store i32 %dst_bpc, i32* %dst_bpc.addr, align 4, !tbaa !1
  %0 = bitcast i32* %span to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 13
  %2 = load i32, i32* %width, align 4, !tbaa !7
  %3 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, 63
  %shr = ashr i32 %add, 6
  %shl = shl i32 %shr, 3
  store i32 %shl, i32* %span, align 4, !tbaa !1
  %4 = bitcast i32* %width1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %upfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %downfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %factor.addr, align 4, !tbaa !1
  call void @decode_factor(i32 %10, i32* %upfactor, i32* %downfactor) #4
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 13
  %12 = load i32, i32* %width2, align 4, !tbaa !7
  %13 = load i32, i32* %upfactor, align 4, !tbaa !1
  %mul3 = mul nsw i32 %12, %13
  %14 = load i32, i32* %downfactor, align 4, !tbaa !1
  %div = sdiv i32 %mul3, %14
  store i32 %div, i32* %width1, align 4, !tbaa !1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %16 = bitcast %struct.gx_downscaler_s* %15 to i8*
  %call = call i8* @memset(i8* %16, i32 0, i64 624) #5
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %18 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev4 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %18, i32 0, i32 0
  store %struct.gx_device_s* %17, %struct.gx_device_s** %dev4, align 8, !tbaa !20
  %19 = load i32, i32* %width1, align 4, !tbaa !1
  %20 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width5 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %20, i32 0, i32 1
  store i32 %19, i32* %width5, align 4, !tbaa !23
  %21 = load i32, i32* %width1, align 4, !tbaa !1
  %22 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %22, i32 0, i32 2
  store i32 %21, i32* %awidth, align 4, !tbaa !24
  %23 = load i32, i32* %span, align 4, !tbaa !1
  %24 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span6 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %24, i32 0, i32 3
  store i32 %23, i32* %span6, align 4, !tbaa !25
  %25 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %26 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor7 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %26, i32 0, i32 4
  store i32 %25, i32* %factor7, align 4, !tbaa !26
  %27 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %28 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %28, i32 0, i32 13
  store i32 %27, i32* %num_planes, align 4, !tbaa !27
  %29 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %30 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %src_bpc8 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %30, i32 0, i32 6
  store i32 %29, i32* %src_bpc8, align 4, !tbaa !28
  %31 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %31, i32 0, i32 9
  store i8* null, i8** %scaled_data, align 8, !tbaa !29
  %32 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %33, i32 0, i32 13
  %34 = load i32, i32* %width9, align 4, !tbaa !7
  %mul10 = mul nsw i32 %32, %34
  %35 = load i32, i32* %upfactor, align 4, !tbaa !1
  %mul11 = mul nsw i32 %mul10, %35
  %36 = load i32, i32* %downfactor, align 4, !tbaa !1
  %add12 = add nsw i32 %mul11, %36
  %sub = sub nsw i32 %add12, 1
  %37 = load i32, i32* %downfactor, align 4, !tbaa !1
  %div13 = sdiv i32 %sub, %37
  %add14 = add nsw i32 %div13, 63
  %shr15 = ashr i32 %add14, 6
  %shl16 = shl i32 %shr15, 3
  %38 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %38, i32 0, i32 10
  store i32 %shl16, i32* %scaled_span, align 4, !tbaa !30
  %39 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params17 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %39, i32 0, i32 12
  %40 = bitcast %struct.gs_get_bits_params_s* %params17 to i8*
  %41 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  %42 = bitcast %struct.gs_get_bits_params_s* %41 to i8*
  %call18 = call i8* @memcpy(i8* %40, i8* %42, i64 536) #5
  %43 = load i32, i32* %span, align 4, !tbaa !1
  %44 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params19 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %44, i32 0, i32 12
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params19, i32 0, i32 4
  store i32 %43, i32* %raster, align 4, !tbaa !31
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %45 = load i32, i32* %i, align 4, !tbaa !1
  %46 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp = icmp slt i32 %45, %46
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 3
  %48 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %48, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %49 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !33
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory20 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 3
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory20, align 8, !tbaa !32
  %52 = load i32, i32* %span, align 4, !tbaa !1
  %53 = load i32, i32* %downfactor, align 4, !tbaa !1
  %mul21 = mul nsw i32 %52, %53
  %call22 = call i8* %49(%struct.gs_memory_s* %51, i32 %mul21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #4
  %54 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params23 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %55, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  store i8* %call22, i8** %arrayidx, align 8, !tbaa !5
  %56 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom24 = sext i32 %56 to i64
  %57 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params25 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %57, i32 0, i32 12
  %data26 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data26, i32 0, i64 %idxprom24
  %58 = load i8*, i8** %arrayidx27, align 8, !tbaa !5
  %cmp28 = icmp eq i8* %58, null
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -25, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %59 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %59, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %upfactor, align 4, !tbaa !1
  %cmp29 = icmp sgt i32 %60, 1
  br i1 %cmp29, label %if.then.30, label %if.end.44

if.then.30:                                       ; preds = %for.end
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %61, i32 0, i32 3
  %62 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !32
  %procs32 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %62, i32 0, i32 1
  %alloc_bytes33 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs32, i32 0, i32 7
  %63 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes33, align 8, !tbaa !33
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory34 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 3
  %65 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory34, align 8, !tbaa !32
  %66 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_span35 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %66, i32 0, i32 10
  %67 = load i32, i32* %scaled_span35, align 4, !tbaa !30
  %68 = load i32, i32* %upfactor, align 4, !tbaa !1
  %mul36 = mul nsw i32 %67, %68
  %69 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %mul37 = mul nsw i32 %mul36, %69
  %call38 = call i8* %63(%struct.gs_memory_s* %65, i32 %mul37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #4
  %70 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data39 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %70, i32 0, i32 9
  store i8* %call38, i8** %scaled_data39, align 8, !tbaa !29
  %71 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data40 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %71, i32 0, i32 9
  %72 = load i8*, i8** %scaled_data40, align 8, !tbaa !29
  %cmp41 = icmp eq i8* %72, null
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.30
  store i32 -25, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end.43:                                        ; preds = %if.then.30
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.end
  %73 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp45 = icmp eq i32 %73, 8
  br i1 %cmp45, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.44
  %74 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp46 = icmp eq i32 %74, 8
  br i1 %cmp46, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %land.lhs.true
  %75 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp48 = icmp eq i32 %75, 32
  br i1 %cmp48, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true.47
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_3_2, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.106

if.else:                                          ; preds = %land.lhs.true.47, %land.lhs.true, %if.end.44
  %76 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp50 = icmp eq i32 %76, 8
  br i1 %cmp50, label %land.lhs.true.51, label %if.else.56

land.lhs.true.51:                                 ; preds = %if.else
  %77 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp52 = icmp eq i32 %77, 8
  br i1 %cmp52, label %land.lhs.true.53, label %if.else.56

land.lhs.true.53:                                 ; preds = %land.lhs.true.51
  %78 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp54 = icmp eq i32 %78, 34
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.53
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_3_4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.105

if.else.56:                                       ; preds = %land.lhs.true.53, %land.lhs.true.51, %if.else
  %79 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp57 = icmp sgt i32 %79, 8
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.56
  store i32 -15, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.else.59:                                       ; preds = %if.else.56
  %80 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp60 = icmp eq i32 %80, 1
  br i1 %cmp60, label %if.then.61, label %if.else.82

if.then.61:                                       ; preds = %if.else.59
  %81 = load i32, i32* %mfs.addr, align 4, !tbaa !1
  %cmp62 = icmp sgt i32 %81, 1
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.61
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_mfs, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.81

if.else.64:                                       ; preds = %if.then.61
  %82 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp65 = icmp eq i32 %82, 4
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %if.else.64
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.80

if.else.67:                                       ; preds = %if.else.64
  %83 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp68 = icmp eq i32 %83, 3
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %if.else.67
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_3, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.79

if.else.70:                                       ; preds = %if.else.67
  %84 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp71 = icmp eq i32 %84, 2
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.else.70
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_2, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.78

if.else.73:                                       ; preds = %if.else.70
  %85 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp74 = icmp eq i32 %85, 1
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.73
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_1, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.77

if.else.76:                                       ; preds = %if.else.73
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.76, %if.then.75
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.72
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.69
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.66
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.63
  br label %if.end.103

if.else.82:                                       ; preds = %if.else.59
  %86 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp83 = icmp eq i32 %86, 1
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.else.82
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* null, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.102

if.else.85:                                       ; preds = %if.else.82
  %87 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp86 = icmp eq i32 %87, 16
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.85
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core16, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.101

if.else.88:                                       ; preds = %if.else.85
  %88 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp89 = icmp eq i32 %88, 4
  br i1 %cmp89, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %if.else.88
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.100

if.else.91:                                       ; preds = %if.else.88
  %89 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp92 = icmp eq i32 %89, 3
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.91
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_3, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.99

if.else.94:                                       ; preds = %if.else.91
  %90 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp95 = icmp eq i32 %90, 2
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %if.else.94
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_2, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.98

if.else.97:                                       ; preds = %if.else.94
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.97, %if.then.96
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.93
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.90
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.87
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.84
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.81
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.55
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.49
  %91 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  %92 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %92, i32 0, i32 11
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %91, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core, align 8, !tbaa !36
  %93 = load i32, i32* %mfs.addr, align 4, !tbaa !1
  %cmp107 = icmp sgt i32 %93, 1
  br i1 %cmp107, label %if.then.108, label %if.end.124

if.then.108:                                      ; preds = %if.end.106
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory109 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory109, align 8, !tbaa !32
  %procs110 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %95, i32 0, i32 1
  %alloc_bytes111 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs110, i32 0, i32 7
  %96 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes111, align 8, !tbaa !33
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory112 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %97, i32 0, i32 3
  %98 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory112, align 8, !tbaa !32
  %99 = load i32, i32* %width1, align 4, !tbaa !1
  %add113 = add nsw i32 %99, 1
  %100 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %mul114 = mul nsw i32 %add113, %100
  %call115 = call i8* %96(%struct.gs_memory_s* %98, i32 %mul114, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  %101 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %101, i32 0, i32 5
  store i8* %call115, i8** %mfs_data, align 8, !tbaa !37
  %102 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data116 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %102, i32 0, i32 5
  %103 = load i8*, i8** %mfs_data116, align 8, !tbaa !37
  %cmp117 = icmp eq i8* %103, null
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.108
  store i32 -25, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end.119:                                       ; preds = %if.then.108
  %104 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data120 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %104, i32 0, i32 5
  %105 = load i8*, i8** %mfs_data120, align 8, !tbaa !37
  %106 = load i32, i32* %width1, align 4, !tbaa !1
  %add121 = add nsw i32 %106, 1
  %107 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %mul122 = mul nsw i32 %add121, %107
  %conv = sext i32 %mul122 to i64
  %call123 = call i8* @memset(i8* %105, i32 0, i64 %conv) #5
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.119, %if.end.106
  %108 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp125 = icmp eq i32 %108, 1
  br i1 %cmp125, label %if.then.127, label %if.end.149

if.then.127:                                      ; preds = %if.end.124
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory128 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %109, i32 0, i32 3
  %110 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory128, align 8, !tbaa !32
  %procs129 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %110, i32 0, i32 1
  %alloc_bytes130 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs129, i32 0, i32 7
  %111 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes130, align 8, !tbaa !33
  %112 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory131 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %112, i32 0, i32 3
  %113 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory131, align 8, !tbaa !32
  %114 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %115 = load i32, i32* %width1, align 4, !tbaa !1
  %add132 = add nsw i32 %115, 3
  %mul133 = mul nsw i32 %114, %add132
  %conv134 = sext i32 %mul133 to i64
  %mul135 = mul i64 %conv134, 4
  %conv136 = trunc i64 %mul135 to i32
  %call137 = call i8* %111(%struct.gs_memory_s* %113, i32 %conv136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #4
  %116 = bitcast i8* %call137 to i32*
  %117 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %117, i32 0, i32 7
  store i32* %116, i32** %errors, align 8, !tbaa !38
  %118 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors138 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %118, i32 0, i32 7
  %119 = load i32*, i32** %errors138, align 8, !tbaa !38
  %cmp139 = icmp eq i32* %119, null
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.127
  store i32 -25, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end.142:                                       ; preds = %if.then.127
  %120 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors143 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %120, i32 0, i32 7
  %121 = load i32*, i32** %errors143, align 8, !tbaa !38
  %122 = bitcast i32* %121 to i8*
  %123 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %124 = load i32, i32* %width1, align 4, !tbaa !1
  %add144 = add nsw i32 %124, 3
  %mul145 = mul nsw i32 %123, %add144
  %conv146 = sext i32 %mul145 to i64
  %mul147 = mul i64 %conv146, 4
  %call148 = call i8* @memset(i8* %122, i32 0, i64 %mul147) #5
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.142, %if.end.124
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup:                                          ; preds = %if.then.141, %if.then.118, %if.then.58, %if.then.42, %if.then
  %125 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  call void @gx_downscaler_fin(%struct.gx_downscaler_s* %125) #4
  %126 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %126, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.150

cleanup.150:                                      ; preds = %cleanup, %if.end.149
  %127 = bitcast i32* %downfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %upfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %width1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %span to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = load i32, i32* %retval
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @down_core8_3_2(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %dspan = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 1
  %5 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %5, i32* %width, align 4, !tbaa !1
  %6 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 2
  %8 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %8, i32* %awidth, align 4, !tbaa !1
  %9 = bitcast i32* %dspan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %10, i32 0, i32 10
  %11 = load i32, i32* %scaled_span, align 4, !tbaa !30
  store i32 %11, i32* %dspan, align 4, !tbaa !1
  %12 = load i32, i32* %awidth, align 4, !tbaa !1
  %13 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %12, %13
  %mul = mul nsw i32 %sub, 3
  %div = sdiv i32 %mul, 2
  store i32 %div, i32* %pad_white, align 4, !tbaa !1
  %14 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %16 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %17 = load i32, i32* %width, align 4, !tbaa !1
  %mul4 = mul nsw i32 %17, 3
  %div5 = sdiv i32 %mul4, 2
  %idx.ext = sext i32 %div5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  store i32 2, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %18 = load i32, i32* %x, align 4, !tbaa !1
  %cmp6 = icmp sgt i32 %18, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %inp, align 8, !tbaa !5
  %20 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %20 to i64
  %call = call i8* @memset(i8* %19, i32 255, i64 %conv) #5
  %21 = load i32, i32* %span.addr, align 4, !tbaa !1
  %22 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext7 = sext i32 %21 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %22, i64 %idx.ext7
  store i8* %add.ptr8, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %24 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %24, i8** %inp, align 8, !tbaa !5
  %25 = load i32, i32* %awidth, align 4, !tbaa !1
  %div10 = sdiv i32 %25, 2
  store i32 %div10, i32* %x, align 4, !tbaa !1
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.91, %if.end.9
  %26 = load i32, i32* %x, align 4, !tbaa !1
  %cmp12 = icmp sgt i32 %26, 0
  br i1 %cmp12, label %for.body.14, label %for.end.93

for.body.14:                                      ; preds = %for.cond.11
  %27 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv15 = zext i8 %29 to i32
  store i32 %conv15, i32* %a, align 4, !tbaa !1
  %30 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %32 to i32
  store i32 %conv17, i32* %b, align 4, !tbaa !1
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx18, align 1, !tbaa !39
  %conv19 = zext i8 %35 to i32
  store i32 %conv19, i32* %c, align 4, !tbaa !1
  %36 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add = add nsw i32 %37, 0
  %idxprom = sext i32 %add to i64
  %38 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx20, align 1, !tbaa !39
  %conv21 = zext i8 %39 to i32
  store i32 %conv21, i32* %d, align 4, !tbaa !1
  %40 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add22 = add nsw i32 %41, 1
  %idxprom23 = sext i32 %add22 to i64
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %42, i64 %idxprom23
  %43 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %43 to i32
  store i32 %conv25, i32* %e, align 4, !tbaa !1
  %44 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add26 = add nsw i32 %45, 2
  %idxprom27 = sext i32 %add26 to i64
  %46 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %46, i64 %idxprom27
  %47 = load i8, i8* %arrayidx28, align 1, !tbaa !39
  %conv29 = zext i8 %47 to i32
  store i32 %conv29, i32* %f, align 4, !tbaa !1
  %48 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul30 = mul nsw i32 2, %49
  %add31 = add nsw i32 %mul30, 0
  %idxprom32 = sext i32 %add31 to i64
  %50 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %50, i64 %idxprom32
  %51 = load i8, i8* %arrayidx33, align 1, !tbaa !39
  %conv34 = zext i8 %51 to i32
  store i32 %conv34, i32* %g, align 4, !tbaa !1
  %52 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul35 = mul nsw i32 2, %53
  %add36 = add nsw i32 %mul35, 1
  %idxprom37 = sext i32 %add36 to i64
  %54 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8, i8* %54, i64 %idxprom37
  %55 = load i8, i8* %arrayidx38, align 1, !tbaa !39
  %conv39 = zext i8 %55 to i32
  store i32 %conv39, i32* %h, align 4, !tbaa !1
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul40 = mul nsw i32 2, %57
  %add41 = add nsw i32 %mul40, 2
  %idxprom42 = sext i32 %add41 to i64
  %58 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds i8, i8* %58, i64 %idxprom42
  %59 = load i8, i8* %arrayidx43, align 1, !tbaa !39
  %conv44 = zext i8 %59 to i32
  store i32 %conv44, i32* %i, align 4, !tbaa !1
  %60 = load i32, i32* %a, align 4, !tbaa !1
  %mul45 = mul nsw i32 4, %60
  %61 = load i32, i32* %b, align 4, !tbaa !1
  %mul46 = mul nsw i32 2, %61
  %add47 = add nsw i32 %mul45, %mul46
  %62 = load i32, i32* %d, align 4, !tbaa !1
  %mul48 = mul nsw i32 2, %62
  %add49 = add nsw i32 %add47, %mul48
  %63 = load i32, i32* %e, align 4, !tbaa !1
  %add50 = add nsw i32 %add49, %63
  %add51 = add nsw i32 %add50, 4
  %div52 = sdiv i32 %add51, 9
  %conv53 = trunc i32 %div52 to i8
  %64 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx54 = getelementptr inbounds i8, i8* %64, i64 0
  store i8 %conv53, i8* %arrayidx54, align 1, !tbaa !39
  %65 = load i32, i32* %c, align 4, !tbaa !1
  %mul55 = mul nsw i32 4, %65
  %66 = load i32, i32* %b, align 4, !tbaa !1
  %mul56 = mul nsw i32 2, %66
  %add57 = add nsw i32 %mul55, %mul56
  %67 = load i32, i32* %f, align 4, !tbaa !1
  %mul58 = mul nsw i32 2, %67
  %add59 = add nsw i32 %add57, %mul58
  %68 = load i32, i32* %e, align 4, !tbaa !1
  %add60 = add nsw i32 %add59, %68
  %add61 = add nsw i32 %add60, 4
  %div62 = sdiv i32 %add61, 9
  %conv63 = trunc i32 %div62 to i8
  %69 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds i8, i8* %69, i64 1
  store i8 %conv63, i8* %arrayidx64, align 1, !tbaa !39
  %70 = load i32, i32* %g, align 4, !tbaa !1
  %mul65 = mul nsw i32 4, %70
  %71 = load i32, i32* %h, align 4, !tbaa !1
  %mul66 = mul nsw i32 2, %71
  %add67 = add nsw i32 %mul65, %mul66
  %72 = load i32, i32* %d, align 4, !tbaa !1
  %mul68 = mul nsw i32 2, %72
  %add69 = add nsw i32 %add67, %mul68
  %73 = load i32, i32* %e, align 4, !tbaa !1
  %add70 = add nsw i32 %add69, %73
  %add71 = add nsw i32 %add70, 4
  %div72 = sdiv i32 %add71, 9
  %conv73 = trunc i32 %div72 to i8
  %74 = load i32, i32* %dspan, align 4, !tbaa !1
  %add74 = add nsw i32 %74, 0
  %idxprom75 = sext i32 %add74 to i64
  %75 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, i8* %75, i64 %idxprom75
  store i8 %conv73, i8* %arrayidx76, align 1, !tbaa !39
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %mul77 = mul nsw i32 4, %76
  %77 = load i32, i32* %h, align 4, !tbaa !1
  %mul78 = mul nsw i32 2, %77
  %add79 = add nsw i32 %mul77, %mul78
  %78 = load i32, i32* %f, align 4, !tbaa !1
  %mul80 = mul nsw i32 2, %78
  %add81 = add nsw i32 %add79, %mul80
  %79 = load i32, i32* %e, align 4, !tbaa !1
  %add82 = add nsw i32 %add81, %79
  %add83 = add nsw i32 %add82, 4
  %div84 = sdiv i32 %add83, 9
  %conv85 = trunc i32 %div84 to i8
  %80 = load i32, i32* %dspan, align 4, !tbaa !1
  %add86 = add nsw i32 %80, 1
  %idxprom87 = sext i32 %add86 to i64
  %81 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, i8* %81, i64 %idxprom87
  store i8 %conv85, i8* %arrayidx88, align 1, !tbaa !39
  %82 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %add.ptr89 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %add.ptr89, i8** %outp.addr, align 8, !tbaa !5
  %83 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr90 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %add.ptr90, i8** %inp, align 8, !tbaa !5
  %84 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %84) #1
  %85 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %85) #1
  %86 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %86) #1
  %87 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %87) #1
  %88 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %88) #1
  %89 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %89) #1
  %90 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %90) #1
  %91 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %92 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %92) #1
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.14
  %93 = load i32, i32* %x, align 4, !tbaa !1
  %dec92 = add nsw i32 %93, -1
  store i32 %dec92, i32* %x, align 4, !tbaa !1
  br label %for.cond.11

for.end.93:                                       ; preds = %for.cond.11
  %94 = bitcast i32* %dspan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  %95 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %95) #1
  %96 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %96) #1
  %97 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core8_3_4(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %dspan = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 1
  %5 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %5, i32* %width, align 4, !tbaa !1
  %6 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 2
  %8 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %8, i32* %awidth, align 4, !tbaa !1
  %9 = bitcast i32* %dspan to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %10, i32 0, i32 10
  %11 = load i32, i32* %scaled_span, align 4, !tbaa !30
  store i32 %11, i32* %dspan, align 4, !tbaa !1
  %12 = load i32, i32* %awidth, align 4, !tbaa !1
  %13 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %12, %13
  %mul = mul nsw i32 %sub, 3
  %div = sdiv i32 %mul, 4
  store i32 %div, i32* %pad_white, align 4, !tbaa !1
  %14 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %if.end
  %16 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %17 = load i32, i32* %width, align 4, !tbaa !1
  %mul4 = mul nsw i32 %17, 3
  %div5 = sdiv i32 %mul4, 4
  %idx.ext = sext i32 %div5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  store i32 4, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %18 = load i32, i32* %x, align 4, !tbaa !1
  %cmp6 = icmp sgt i32 %18, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %inp, align 8, !tbaa !5
  %20 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %20 to i64
  %call = call i8* @memset(i8* %19, i32 255, i64 %conv) #5
  %21 = load i32, i32* %span.addr, align 4, !tbaa !1
  %22 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext7 = sext i32 %21 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %22, i64 %idx.ext7
  store i8* %add.ptr8, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %24 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %24, i8** %inp, align 8, !tbaa !5
  %25 = load i32, i32* %awidth, align 4, !tbaa !1
  %div10 = sdiv i32 %25, 4
  store i32 %div10, i32* %x, align 4, !tbaa !1
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.175, %if.end.9
  %26 = load i32, i32* %x, align 4, !tbaa !1
  %cmp12 = icmp sgt i32 %26, 0
  br i1 %cmp12, label %for.body.14, label %for.end.177

for.body.14:                                      ; preds = %for.cond.11
  %27 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv15 = zext i8 %29 to i32
  store i32 %conv15, i32* %a, align 4, !tbaa !1
  %30 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %32 to i32
  store i32 %conv17, i32* %b, align 4, !tbaa !1
  %33 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds i8, i8* %34, i64 2
  %35 = load i8, i8* %arrayidx18, align 1, !tbaa !39
  %conv19 = zext i8 %35 to i32
  store i32 %conv19, i32* %c, align 4, !tbaa !1
  %36 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add = add nsw i32 %37, 0
  %idxprom = sext i32 %add to i64
  %38 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx20 = getelementptr inbounds i8, i8* %38, i64 %idxprom
  %39 = load i8, i8* %arrayidx20, align 1, !tbaa !39
  %conv21 = zext i8 %39 to i32
  store i32 %conv21, i32* %d, align 4, !tbaa !1
  %40 = bitcast i32* %e to i8*
  call void @llvm.lifetime.start(i64 4, i8* %40) #1
  %41 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add22 = add nsw i32 %41, 1
  %idxprom23 = sext i32 %add22 to i64
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %42, i64 %idxprom23
  %43 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %43 to i32
  store i32 %conv25, i32* %e, align 4, !tbaa !1
  %44 = bitcast i32* %f to i8*
  call void @llvm.lifetime.start(i64 4, i8* %44) #1
  %45 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add26 = add nsw i32 %45, 2
  %idxprom27 = sext i32 %add26 to i64
  %46 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %46, i64 %idxprom27
  %47 = load i8, i8* %arrayidx28, align 1, !tbaa !39
  %conv29 = zext i8 %47 to i32
  store i32 %conv29, i32* %f, align 4, !tbaa !1
  %48 = bitcast i32* %g to i8*
  call void @llvm.lifetime.start(i64 4, i8* %48) #1
  %49 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul30 = mul nsw i32 2, %49
  %add31 = add nsw i32 %mul30, 0
  %idxprom32 = sext i32 %add31 to i64
  %50 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %50, i64 %idxprom32
  %51 = load i8, i8* %arrayidx33, align 1, !tbaa !39
  %conv34 = zext i8 %51 to i32
  store i32 %conv34, i32* %g, align 4, !tbaa !1
  %52 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul35 = mul nsw i32 2, %53
  %add36 = add nsw i32 %mul35, 1
  %idxprom37 = sext i32 %add36 to i64
  %54 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8, i8* %54, i64 %idxprom37
  %55 = load i8, i8* %arrayidx38, align 1, !tbaa !39
  %conv39 = zext i8 %55 to i32
  store i32 %conv39, i32* %h, align 4, !tbaa !1
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %56) #1
  %57 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul40 = mul nsw i32 2, %57
  %add41 = add nsw i32 %mul40, 2
  %idxprom42 = sext i32 %add41 to i64
  %58 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds i8, i8* %58, i64 %idxprom42
  %59 = load i8, i8* %arrayidx43, align 1, !tbaa !39
  %conv44 = zext i8 %59 to i32
  store i32 %conv44, i32* %i, align 4, !tbaa !1
  %60 = load i32, i32* %a, align 4, !tbaa !1
  %conv45 = trunc i32 %60 to i8
  %61 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %conv45, i8* %arrayidx46, align 1, !tbaa !39
  %62 = load i32, i32* %a, align 4, !tbaa !1
  %63 = load i32, i32* %b, align 4, !tbaa !1
  %mul47 = mul nsw i32 2, %63
  %add48 = add nsw i32 %62, %mul47
  %add49 = add nsw i32 %add48, 1
  %div50 = sdiv i32 %add49, 3
  %conv51 = trunc i32 %div50 to i8
  %64 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 %conv51, i8* %arrayidx52, align 1, !tbaa !39
  %65 = load i32, i32* %c, align 4, !tbaa !1
  %66 = load i32, i32* %b, align 4, !tbaa !1
  %mul53 = mul nsw i32 2, %66
  %add54 = add nsw i32 %65, %mul53
  %add55 = add nsw i32 %add54, 1
  %div56 = sdiv i32 %add55, 3
  %conv57 = trunc i32 %div56 to i8
  %67 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx58 = getelementptr inbounds i8, i8* %67, i64 2
  store i8 %conv57, i8* %arrayidx58, align 1, !tbaa !39
  %68 = load i32, i32* %c, align 4, !tbaa !1
  %conv59 = trunc i32 %68 to i8
  %69 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds i8, i8* %69, i64 3
  store i8 %conv59, i8* %arrayidx60, align 1, !tbaa !39
  %70 = load i32, i32* %a, align 4, !tbaa !1
  %71 = load i32, i32* %d, align 4, !tbaa !1
  %mul61 = mul nsw i32 2, %71
  %add62 = add nsw i32 %70, %mul61
  %add63 = add nsw i32 %add62, 1
  %div64 = sdiv i32 %add63, 3
  %conv65 = trunc i32 %div64 to i8
  %72 = load i32, i32* %dspan, align 4, !tbaa !1
  %add66 = add nsw i32 %72, 0
  %idxprom67 = sext i32 %add66 to i64
  %73 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx68 = getelementptr inbounds i8, i8* %73, i64 %idxprom67
  store i8 %conv65, i8* %arrayidx68, align 1, !tbaa !39
  %74 = load i32, i32* %a, align 4, !tbaa !1
  %75 = load i32, i32* %b, align 4, !tbaa !1
  %mul69 = mul nsw i32 2, %75
  %add70 = add nsw i32 %74, %mul69
  %76 = load i32, i32* %d, align 4, !tbaa !1
  %mul71 = mul nsw i32 2, %76
  %add72 = add nsw i32 %add70, %mul71
  %77 = load i32, i32* %e, align 4, !tbaa !1
  %mul73 = mul nsw i32 4, %77
  %add74 = add nsw i32 %add72, %mul73
  %add75 = add nsw i32 %add74, 3
  %div76 = sdiv i32 %add75, 9
  %conv77 = trunc i32 %div76 to i8
  %78 = load i32, i32* %dspan, align 4, !tbaa !1
  %add78 = add nsw i32 %78, 1
  %idxprom79 = sext i32 %add78 to i64
  %79 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx80 = getelementptr inbounds i8, i8* %79, i64 %idxprom79
  store i8 %conv77, i8* %arrayidx80, align 1, !tbaa !39
  %80 = load i32, i32* %c, align 4, !tbaa !1
  %81 = load i32, i32* %b, align 4, !tbaa !1
  %mul81 = mul nsw i32 2, %81
  %add82 = add nsw i32 %80, %mul81
  %82 = load i32, i32* %f, align 4, !tbaa !1
  %mul83 = mul nsw i32 2, %82
  %add84 = add nsw i32 %add82, %mul83
  %83 = load i32, i32* %e, align 4, !tbaa !1
  %mul85 = mul nsw i32 4, %83
  %add86 = add nsw i32 %add84, %mul85
  %add87 = add nsw i32 %add86, 3
  %div88 = sdiv i32 %add87, 9
  %conv89 = trunc i32 %div88 to i8
  %84 = load i32, i32* %dspan, align 4, !tbaa !1
  %add90 = add nsw i32 %84, 2
  %idxprom91 = sext i32 %add90 to i64
  %85 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx92 = getelementptr inbounds i8, i8* %85, i64 %idxprom91
  store i8 %conv89, i8* %arrayidx92, align 1, !tbaa !39
  %86 = load i32, i32* %c, align 4, !tbaa !1
  %87 = load i32, i32* %f, align 4, !tbaa !1
  %mul93 = mul nsw i32 2, %87
  %add94 = add nsw i32 %86, %mul93
  %add95 = add nsw i32 %add94, 1
  %div96 = sdiv i32 %add95, 3
  %conv97 = trunc i32 %div96 to i8
  %88 = load i32, i32* %dspan, align 4, !tbaa !1
  %add98 = add nsw i32 %88, 3
  %idxprom99 = sext i32 %add98 to i64
  %89 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx100 = getelementptr inbounds i8, i8* %89, i64 %idxprom99
  store i8 %conv97, i8* %arrayidx100, align 1, !tbaa !39
  %90 = load i32, i32* %g, align 4, !tbaa !1
  %91 = load i32, i32* %d, align 4, !tbaa !1
  %mul101 = mul nsw i32 2, %91
  %add102 = add nsw i32 %90, %mul101
  %add103 = add nsw i32 %add102, 1
  %div104 = sdiv i32 %add103, 3
  %conv105 = trunc i32 %div104 to i8
  %92 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul106 = mul nsw i32 2, %92
  %add107 = add nsw i32 %mul106, 0
  %idxprom108 = sext i32 %add107 to i64
  %93 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx109 = getelementptr inbounds i8, i8* %93, i64 %idxprom108
  store i8 %conv105, i8* %arrayidx109, align 1, !tbaa !39
  %94 = load i32, i32* %g, align 4, !tbaa !1
  %95 = load i32, i32* %h, align 4, !tbaa !1
  %mul110 = mul nsw i32 2, %95
  %add111 = add nsw i32 %94, %mul110
  %96 = load i32, i32* %d, align 4, !tbaa !1
  %mul112 = mul nsw i32 2, %96
  %add113 = add nsw i32 %add111, %mul112
  %97 = load i32, i32* %e, align 4, !tbaa !1
  %mul114 = mul nsw i32 4, %97
  %add115 = add nsw i32 %add113, %mul114
  %add116 = add nsw i32 %add115, 3
  %div117 = sdiv i32 %add116, 9
  %conv118 = trunc i32 %div117 to i8
  %98 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul119 = mul nsw i32 2, %98
  %add120 = add nsw i32 %mul119, 1
  %idxprom121 = sext i32 %add120 to i64
  %99 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx122 = getelementptr inbounds i8, i8* %99, i64 %idxprom121
  store i8 %conv118, i8* %arrayidx122, align 1, !tbaa !39
  %100 = load i32, i32* %i, align 4, !tbaa !1
  %101 = load i32, i32* %h, align 4, !tbaa !1
  %mul123 = mul nsw i32 2, %101
  %add124 = add nsw i32 %100, %mul123
  %102 = load i32, i32* %f, align 4, !tbaa !1
  %mul125 = mul nsw i32 2, %102
  %add126 = add nsw i32 %add124, %mul125
  %103 = load i32, i32* %e, align 4, !tbaa !1
  %mul127 = mul nsw i32 4, %103
  %add128 = add nsw i32 %add126, %mul127
  %add129 = add nsw i32 %add128, 3
  %div130 = sdiv i32 %add129, 9
  %conv131 = trunc i32 %div130 to i8
  %104 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul132 = mul nsw i32 2, %104
  %add133 = add nsw i32 %mul132, 2
  %idxprom134 = sext i32 %add133 to i64
  %105 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx135 = getelementptr inbounds i8, i8* %105, i64 %idxprom134
  store i8 %conv131, i8* %arrayidx135, align 1, !tbaa !39
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %107 = load i32, i32* %f, align 4, !tbaa !1
  %mul136 = mul nsw i32 2, %107
  %add137 = add nsw i32 %106, %mul136
  %add138 = add nsw i32 %add137, 1
  %div139 = sdiv i32 %add138, 3
  %conv140 = trunc i32 %div139 to i8
  %108 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul141 = mul nsw i32 2, %108
  %add142 = add nsw i32 %mul141, 3
  %idxprom143 = sext i32 %add142 to i64
  %109 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx144 = getelementptr inbounds i8, i8* %109, i64 %idxprom143
  store i8 %conv140, i8* %arrayidx144, align 1, !tbaa !39
  %110 = load i32, i32* %g, align 4, !tbaa !1
  %conv145 = trunc i32 %110 to i8
  %111 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul146 = mul nsw i32 3, %111
  %add147 = add nsw i32 %mul146, 0
  %idxprom148 = sext i32 %add147 to i64
  %112 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx149 = getelementptr inbounds i8, i8* %112, i64 %idxprom148
  store i8 %conv145, i8* %arrayidx149, align 1, !tbaa !39
  %113 = load i32, i32* %g, align 4, !tbaa !1
  %114 = load i32, i32* %h, align 4, !tbaa !1
  %mul150 = mul nsw i32 2, %114
  %add151 = add nsw i32 %113, %mul150
  %add152 = add nsw i32 %add151, 1
  %div153 = sdiv i32 %add152, 3
  %conv154 = trunc i32 %div153 to i8
  %115 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul155 = mul nsw i32 3, %115
  %add156 = add nsw i32 %mul155, 1
  %idxprom157 = sext i32 %add156 to i64
  %116 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx158 = getelementptr inbounds i8, i8* %116, i64 %idxprom157
  store i8 %conv154, i8* %arrayidx158, align 1, !tbaa !39
  %117 = load i32, i32* %i, align 4, !tbaa !1
  %118 = load i32, i32* %h, align 4, !tbaa !1
  %mul159 = mul nsw i32 2, %118
  %add160 = add nsw i32 %117, %mul159
  %add161 = add nsw i32 %add160, 1
  %div162 = sdiv i32 %add161, 3
  %conv163 = trunc i32 %div162 to i8
  %119 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul164 = mul nsw i32 3, %119
  %add165 = add nsw i32 %mul164, 2
  %idxprom166 = sext i32 %add165 to i64
  %120 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds i8, i8* %120, i64 %idxprom166
  store i8 %conv163, i8* %arrayidx167, align 1, !tbaa !39
  %121 = load i32, i32* %i, align 4, !tbaa !1
  %conv168 = trunc i32 %121 to i8
  %122 = load i32, i32* %dspan, align 4, !tbaa !1
  %mul169 = mul nsw i32 3, %122
  %add170 = add nsw i32 %mul169, 3
  %idxprom171 = sext i32 %add170 to i64
  %123 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx172 = getelementptr inbounds i8, i8* %123, i64 %idxprom171
  store i8 %conv168, i8* %arrayidx172, align 1, !tbaa !39
  %124 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %add.ptr173 = getelementptr inbounds i8, i8* %124, i64 4
  store i8* %add.ptr173, i8** %outp.addr, align 8, !tbaa !5
  %125 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr174 = getelementptr inbounds i8, i8* %125, i64 3
  store i8* %add.ptr174, i8** %inp, align 8, !tbaa !5
  %126 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %g to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %f to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %e to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  %133 = bitcast i32* %b to i8*
  call void @llvm.lifetime.end(i64 4, i8* %133) #1
  %134 = bitcast i32* %a to i8*
  call void @llvm.lifetime.end(i64 4, i8* %134) #1
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.14
  %135 = load i32, i32* %x, align 4, !tbaa !1
  %dec176 = add nsw i32 %135, -1
  store i32 %dec176, i32* %x, align 4, !tbaa !1
  br label %for.cond.11

for.end.177:                                      ; preds = %for.cond.11
  %136 = bitcast i32* %dspan to i8*
  call void @llvm.lifetime.end(i64 4, i8* %136) #1
  %137 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %137) #1
  %138 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %138) #1
  %139 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %140) #1
  %141 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %141) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core_mfs(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %errors = alloca i32*, align 8
  %mfs_data = alloca i8*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  %back = alloca i32, align 4
  %mfs = alloca i8, align 1
  %force_forward = alloca i8, align 1
  %back112 = alloca i32, align 4
  %mfs115 = alloca i8, align 1
  %force_forward116 = alloca i8, align 1
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %7 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %11, i32 0, i32 1
  %12 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %12, i32* %width, align 4, !tbaa !1
  %13 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %14, i32 0, i32 2
  %15 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %15, i32* %awidth, align 4, !tbaa !1
  %16 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %17, i32 0, i32 4
  %18 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %18, i32* %factor, align 4, !tbaa !1
  %19 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors4 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %20, i32 0, i32 7
  %21 = load i32*, i32** %errors4, align 8, !tbaa !38
  %22 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %22, 3
  %23 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %add, %23
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %21, i64 %idx.ext
  store i32* %add.ptr, i32** %errors, align 8, !tbaa !5
  %24 = bitcast i8** %mfs_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data5 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %25, i32 0, i32 5
  %26 = load i8*, i8** %mfs_data5, align 8, !tbaa !37
  %27 = load i32, i32* %awidth, align 4, !tbaa !1
  %add6 = add nsw i32 %27, 1
  %28 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul7 = mul nsw i32 %add6, %28
  %idx.ext8 = sext i32 %mul7 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %26, i64 %idx.ext8
  store i8* %add.ptr9, i8** %mfs_data, align 8, !tbaa !5
  %29 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %29) #1
  %30 = load i32, i32* %factor, align 4, !tbaa !1
  %31 = load i32, i32* %factor, align 4, !tbaa !1
  %mul10 = mul nsw i32 %30, %31
  %mul11 = mul nsw i32 %mul10, 128
  store i32 %mul11, i32* %threshold, align 4, !tbaa !1
  %32 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %factor, align 4, !tbaa !1
  %34 = load i32, i32* %factor, align 4, !tbaa !1
  %mul12 = mul nsw i32 %33, %34
  %mul13 = mul nsw i32 %mul12, 255
  store i32 %mul13, i32* %max_value, align 4, !tbaa !1
  %35 = load i32, i32* %awidth, align 4, !tbaa !1
  %36 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %35, %36
  %37 = load i32, i32* %factor, align 4, !tbaa !1
  %mul14 = mul nsw i32 %sub, %37
  store i32 %mul14, i32* %pad_white, align 4, !tbaa !1
  %38 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %38, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %39 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %39, 0
  br i1 %tobool, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %if.end
  %40 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %41 = load i32, i32* %width, align 4, !tbaa !1
  %42 = load i32, i32* %factor, align 4, !tbaa !1
  %mul16 = mul nsw i32 %41, %42
  %idx.ext17 = sext i32 %mul16 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %40, i64 %idx.ext17
  store i8* %add.ptr18, i8** %inp, align 8, !tbaa !5
  %43 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %43, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %44 = load i32, i32* %y, align 4, !tbaa !1
  %cmp19 = icmp sgt i32 %44, 0
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i8*, i8** %inp, align 8, !tbaa !5
  %46 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %46 to i64
  %call = call i8* @memset(i8* %45, i32 255, i64 %conv) #5
  %47 = load i32, i32* %span.addr, align 4, !tbaa !1
  %48 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext20 = sext i32 %47 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %48, i64 %idx.ext20
  store i8* %add.ptr21, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.end
  %50 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %50, i8** %inp, align 8, !tbaa !5
  %51 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %51, 1
  %cmp23 = icmp eq i32 %and, 0
  br i1 %cmp23, label %if.then.25, label %if.else.111

if.then.25:                                       ; preds = %if.end.22
  %52 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %52) #1
  %53 = load i32, i32* %span.addr, align 4, !tbaa !1
  %54 = load i32, i32* %factor, align 4, !tbaa !1
  %mul26 = mul nsw i32 %53, %54
  %sub27 = sub nsw i32 %mul26, 1
  store i32 %sub27, i32* %back, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %mfs) #1
  call void @llvm.lifetime.start(i64 1, i8* %force_forward) #1
  store i8 0, i8* %force_forward, align 1, !tbaa !39
  %55 = load i32*, i32** %errors, align 8, !tbaa !5
  %add.ptr28 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %add.ptr28, i32** %errors, align 8, !tbaa !5
  %56 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %56, i8** %outp, align 8, !tbaa !5
  %57 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %57, align 1, !tbaa !39
  %58 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %58, i32* %x, align 4, !tbaa !1
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.105, %if.then.25
  %59 = load i32, i32* %x, align 4, !tbaa !1
  %cmp30 = icmp sgt i32 %59, 0
  br i1 %cmp30, label %for.body.32, label %for.end.107

for.body.32:                                      ; preds = %for.cond.29
  %60 = load i32, i32* %e_forward, align 4, !tbaa !1
  %61 = load i32*, i32** %errors, align 8, !tbaa !5
  %62 = load i32, i32* %61, align 4, !tbaa !1
  %add33 = add nsw i32 %60, %62
  store i32 %add33, i32* %value, align 4, !tbaa !1
  %63 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %63, i32* %xx, align 4, !tbaa !1
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.51, %for.body.32
  %64 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp35 = icmp sgt i32 %64, 0
  br i1 %cmp35, label %for.body.37, label %for.end.53

for.body.37:                                      ; preds = %for.cond.34
  %65 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %65, i32* %y, align 4, !tbaa !1
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %for.body.37
  %66 = load i32, i32* %y, align 4, !tbaa !1
  %cmp39 = icmp sgt i32 %66, 0
  br i1 %cmp39, label %for.body.41, label %for.end.48

for.body.41:                                      ; preds = %for.cond.38
  %67 = load i8*, i8** %inp, align 8, !tbaa !5
  %68 = load i8, i8* %67, align 1, !tbaa !39
  %conv42 = zext i8 %68 to i32
  %69 = load i32, i32* %value, align 4, !tbaa !1
  %add43 = add nsw i32 %69, %conv42
  store i32 %add43, i32* %value, align 4, !tbaa !1
  %70 = load i32, i32* %span.addr, align 4, !tbaa !1
  %71 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext44 = sext i32 %70 to i64
  %add.ptr45 = getelementptr inbounds i8, i8* %71, i64 %idx.ext44
  store i8* %add.ptr45, i8** %inp, align 8, !tbaa !5
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.41
  %72 = load i32, i32* %y, align 4, !tbaa !1
  %dec47 = add nsw i32 %72, -1
  store i32 %dec47, i32* %y, align 4, !tbaa !1
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  %73 = load i32, i32* %back, align 4, !tbaa !1
  %74 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext49 = sext i32 %73 to i64
  %idx.neg = sub i64 0, %idx.ext49
  %add.ptr50 = getelementptr inbounds i8, i8* %74, i64 %idx.neg
  store i8* %add.ptr50, i8** %inp, align 8, !tbaa !5
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.48
  %75 = load i32, i32* %xx, align 4, !tbaa !1
  %dec52 = add nsw i32 %75, -1
  store i32 %dec52, i32* %xx, align 4, !tbaa !1
  br label %for.cond.34

for.end.53:                                       ; preds = %for.cond.34
  %76 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %77 = load i8, i8* %76, align 1, !tbaa !39
  store i8 %77, i8* %mfs, align 1, !tbaa !39
  %78 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr54 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr54, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %78, align 1, !tbaa !39
  %79 = load i8, i8* %mfs, align 1, !tbaa !39
  %conv55 = zext i8 %79 to i32
  %and56 = and i32 %conv55, 1
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.60, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.53
  %80 = load i8, i8* %force_forward, align 1, !tbaa !39
  %conv58 = zext i8 %80 to i32
  %tobool59 = icmp ne i32 %conv58, 0
  br i1 %tobool59, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %lor.lhs.false, %for.end.53
  %81 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr61 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr61, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %81, align 1, !tbaa !39
  store i8 0, i8* %force_forward, align 1, !tbaa !39
  br label %if.end.91

if.else:                                          ; preds = %lor.lhs.false
  %82 = load i32, i32* %value, align 4, !tbaa !1
  %83 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp62 = icmp slt i32 %82, %83
  br i1 %cmp62, label %if.then.64, label %if.else.87

if.then.64:                                       ; preds = %if.else
  %84 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr65 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr65, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %84, align 1, !tbaa !39
  %85 = load i8, i8* %mfs, align 1, !tbaa !39
  %conv66 = zext i8 %85 to i32
  %and67 = and i32 %conv66, 6
  %cmp68 = icmp ne i32 %and67, 6
  br i1 %cmp68, label %if.then.70, label %if.else.77

if.then.70:                                       ; preds = %if.then.64
  %86 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %86, i64 -2
  %87 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv71 = zext i8 %87 to i32
  %or = or i32 %conv71, 1
  %conv72 = trunc i32 %or to i8
  store i8 %conv72, i8* %arrayidx, align 1, !tbaa !39
  %88 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx73 = getelementptr inbounds i8, i8* %88, i64 -1
  %89 = load i8, i8* %arrayidx73, align 1, !tbaa !39
  %conv74 = zext i8 %89 to i32
  %or75 = or i32 %conv74, 1
  %conv76 = trunc i32 %or75 to i8
  store i8 %conv76, i8* %arrayidx73, align 1, !tbaa !39
  store i8 1, i8* %force_forward, align 1, !tbaa !39
  br label %if.end.86

if.else.77:                                       ; preds = %if.then.64
  %90 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx78 = getelementptr inbounds i8, i8* %90, i64 -2
  %91 = load i8, i8* %arrayidx78, align 1, !tbaa !39
  %conv79 = zext i8 %91 to i32
  %or80 = or i32 %conv79, 2
  %conv81 = trunc i32 %or80 to i8
  store i8 %conv81, i8* %arrayidx78, align 1, !tbaa !39
  %92 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx82 = getelementptr inbounds i8, i8* %92, i64 -1
  %93 = load i8, i8* %arrayidx82, align 1, !tbaa !39
  %conv83 = zext i8 %93 to i32
  %or84 = or i32 %conv83, 4
  %conv85 = trunc i32 %or84 to i8
  store i8 %conv85, i8* %arrayidx82, align 1, !tbaa !39
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.77, %if.then.70
  br label %if.end.90

if.else.87:                                       ; preds = %if.else
  %94 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr88 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %incdec.ptr88, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %94, align 1, !tbaa !39
  %95 = load i32, i32* %max_value, align 4, !tbaa !1
  %96 = load i32, i32* %value, align 4, !tbaa !1
  %sub89 = sub nsw i32 %96, %95
  store i32 %sub89, i32* %value, align 4, !tbaa !1
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.end.86
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.60
  %97 = load i32, i32* %value, align 4, !tbaa !1
  %mul92 = mul nsw i32 %97, 7
  %div = sdiv i32 %mul92, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %98 = load i32, i32* %value, align 4, !tbaa !1
  %mul93 = mul nsw i32 %98, 3
  %div94 = sdiv i32 %mul93, 16
  store i32 %div94, i32* %e_downleft, align 4, !tbaa !1
  %99 = load i32, i32* %value, align 4, !tbaa !1
  %mul95 = mul nsw i32 %99, 5
  %div96 = sdiv i32 %mul95, 16
  store i32 %div96, i32* %e_down, align 4, !tbaa !1
  %100 = load i32, i32* %e_forward, align 4, !tbaa !1
  %101 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add97 = add nsw i32 %100, %101
  %102 = load i32, i32* %e_down, align 4, !tbaa !1
  %add98 = add nsw i32 %add97, %102
  %103 = load i32, i32* %value, align 4, !tbaa !1
  %sub99 = sub nsw i32 %103, %add98
  store i32 %sub99, i32* %value, align 4, !tbaa !1
  %104 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %105 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx100 = getelementptr inbounds i32, i32* %105, i64 -2
  %106 = load i32, i32* %arrayidx100, align 4, !tbaa !1
  %add101 = add nsw i32 %106, %104
  store i32 %add101, i32* %arrayidx100, align 4, !tbaa !1
  %107 = load i32, i32* %e_down, align 4, !tbaa !1
  %108 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds i32, i32* %108, i64 -1
  %109 = load i32, i32* %arrayidx102, align 4, !tbaa !1
  %add103 = add nsw i32 %109, %107
  store i32 %add103, i32* %arrayidx102, align 4, !tbaa !1
  %110 = load i32, i32* %value, align 4, !tbaa !1
  %111 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr104 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr104, i32** %errors, align 8, !tbaa !5
  store i32 %110, i32* %111, align 4, !tbaa !1
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.91
  %112 = load i32, i32* %x, align 4, !tbaa !1
  %dec106 = add nsw i32 %112, -1
  store i32 %dec106, i32* %x, align 4, !tbaa !1
  br label %for.cond.29

for.end.107:                                      ; preds = %for.cond.29
  %113 = load i32, i32* %awidth, align 4, !tbaa !1
  %114 = load i8*, i8** %outp, align 8, !tbaa !5
  %idx.ext108 = sext i32 %113 to i64
  %idx.neg109 = sub i64 0, %idx.ext108
  %add.ptr110 = getelementptr inbounds i8, i8* %114, i64 %idx.neg109
  store i8* %add.ptr110, i8** %outp, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %force_forward) #1
  call void @llvm.lifetime.end(i64 1, i8* %mfs) #1
  %115 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  br label %if.end.212

if.else.111:                                      ; preds = %if.end.22
  %116 = bitcast i32* %back112 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %116) #1
  %117 = load i32, i32* %span.addr, align 4, !tbaa !1
  %118 = load i32, i32* %factor, align 4, !tbaa !1
  %mul113 = mul nsw i32 %117, %118
  %add114 = add nsw i32 %mul113, 1
  store i32 %add114, i32* %back112, align 4, !tbaa !1
  call void @llvm.lifetime.start(i64 1, i8* %mfs115) #1
  call void @llvm.lifetime.start(i64 1, i8* %force_forward116) #1
  store i8 0, i8* %force_forward116, align 1, !tbaa !39
  %119 = load i32, i32* %awidth, align 4, !tbaa !1
  %120 = load i32*, i32** %errors, align 8, !tbaa !5
  %idx.ext117 = sext i32 %119 to i64
  %add.ptr118 = getelementptr inbounds i32, i32* %120, i64 %idx.ext117
  store i32* %add.ptr118, i32** %errors, align 8, !tbaa !5
  %121 = load i32, i32* %awidth, align 4, !tbaa !1
  %122 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %idx.ext119 = sext i32 %121 to i64
  %add.ptr120 = getelementptr inbounds i8, i8* %122, i64 %idx.ext119
  store i8* %add.ptr120, i8** %mfs_data, align 8, !tbaa !5
  %123 = load i32, i32* %awidth, align 4, !tbaa !1
  %124 = load i32, i32* %factor, align 4, !tbaa !1
  %mul121 = mul nsw i32 %123, %124
  %sub122 = sub nsw i32 %mul121, 1
  %125 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext123 = sext i32 %sub122 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %125, i64 %idx.ext123
  store i8* %add.ptr124, i8** %inp, align 8, !tbaa !5
  %126 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %126, i8** %outp, align 8, !tbaa !5
  %127 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr125 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr125, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %127, align 1, !tbaa !39
  %128 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %128, i32* %x, align 4, !tbaa !1
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.208, %if.else.111
  %129 = load i32, i32* %x, align 4, !tbaa !1
  %cmp127 = icmp sgt i32 %129, 0
  br i1 %cmp127, label %for.body.129, label %for.end.210

for.body.129:                                     ; preds = %for.cond.126
  %130 = load i32, i32* %e_forward, align 4, !tbaa !1
  %131 = load i32*, i32** %errors, align 8, !tbaa !5
  %132 = load i32, i32* %131, align 4, !tbaa !1
  %add130 = add nsw i32 %130, %132
  store i32 %add130, i32* %value, align 4, !tbaa !1
  %133 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %133, i32* %xx, align 4, !tbaa !1
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.149, %for.body.129
  %134 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp132 = icmp sgt i32 %134, 0
  br i1 %cmp132, label %for.body.134, label %for.end.151

for.body.134:                                     ; preds = %for.cond.131
  %135 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %135, i32* %y, align 4, !tbaa !1
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.143, %for.body.134
  %136 = load i32, i32* %y, align 4, !tbaa !1
  %cmp136 = icmp sgt i32 %136, 0
  br i1 %cmp136, label %for.body.138, label %for.end.145

for.body.138:                                     ; preds = %for.cond.135
  %137 = load i8*, i8** %inp, align 8, !tbaa !5
  %138 = load i8, i8* %137, align 1, !tbaa !39
  %conv139 = zext i8 %138 to i32
  %139 = load i32, i32* %value, align 4, !tbaa !1
  %add140 = add nsw i32 %139, %conv139
  store i32 %add140, i32* %value, align 4, !tbaa !1
  %140 = load i32, i32* %span.addr, align 4, !tbaa !1
  %141 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext141 = sext i32 %140 to i64
  %add.ptr142 = getelementptr inbounds i8, i8* %141, i64 %idx.ext141
  store i8* %add.ptr142, i8** %inp, align 8, !tbaa !5
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.138
  %142 = load i32, i32* %y, align 4, !tbaa !1
  %dec144 = add nsw i32 %142, -1
  store i32 %dec144, i32* %y, align 4, !tbaa !1
  br label %for.cond.135

for.end.145:                                      ; preds = %for.cond.135
  %143 = load i32, i32* %back112, align 4, !tbaa !1
  %144 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext146 = sext i32 %143 to i64
  %idx.neg147 = sub i64 0, %idx.ext146
  %add.ptr148 = getelementptr inbounds i8, i8* %144, i64 %idx.neg147
  store i8* %add.ptr148, i8** %inp, align 8, !tbaa !5
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.end.145
  %145 = load i32, i32* %xx, align 4, !tbaa !1
  %dec150 = add nsw i32 %145, -1
  store i32 %dec150, i32* %xx, align 4, !tbaa !1
  br label %for.cond.131

for.end.151:                                      ; preds = %for.cond.131
  %146 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %147 = load i8, i8* %146, align 1, !tbaa !39
  store i8 %147, i8* %mfs115, align 1, !tbaa !39
  %148 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr152 = getelementptr inbounds i8, i8* %148, i32 -1
  store i8* %incdec.ptr152, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %148, align 1, !tbaa !39
  %149 = load i8, i8* %mfs115, align 1, !tbaa !39
  %conv153 = zext i8 %149 to i32
  %and154 = and i32 %conv153, 1
  %tobool155 = icmp ne i32 %and154, 0
  br i1 %tobool155, label %if.then.159, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %for.end.151
  %150 = load i8, i8* %force_forward116, align 1, !tbaa !39
  %conv157 = zext i8 %150 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %if.then.159, label %if.else.161

if.then.159:                                      ; preds = %lor.lhs.false.156, %for.end.151
  %151 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr160 = getelementptr inbounds i8, i8* %151, i32 -1
  store i8* %incdec.ptr160, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %151, align 1, !tbaa !39
  store i8 0, i8* %force_forward116, align 1, !tbaa !39
  br label %if.end.193

if.else.161:                                      ; preds = %lor.lhs.false.156
  %152 = load i32, i32* %value, align 4, !tbaa !1
  %153 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp162 = icmp slt i32 %152, %153
  br i1 %cmp162, label %if.then.164, label %if.else.189

if.then.164:                                      ; preds = %if.else.161
  %154 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr165 = getelementptr inbounds i8, i8* %154, i32 -1
  store i8* %incdec.ptr165, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %154, align 1, !tbaa !39
  %155 = load i8, i8* %mfs115, align 1, !tbaa !39
  %conv166 = zext i8 %155 to i32
  %and167 = and i32 %conv166, 6
  %cmp168 = icmp ne i32 %and167, 6
  br i1 %cmp168, label %if.then.170, label %if.else.179

if.then.170:                                      ; preds = %if.then.164
  %156 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx171 = getelementptr inbounds i8, i8* %156, i64 1
  %157 = load i8, i8* %arrayidx171, align 1, !tbaa !39
  %conv172 = zext i8 %157 to i32
  %or173 = or i32 %conv172, 1
  %conv174 = trunc i32 %or173 to i8
  store i8 %conv174, i8* %arrayidx171, align 1, !tbaa !39
  %158 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx175 = getelementptr inbounds i8, i8* %158, i64 2
  %159 = load i8, i8* %arrayidx175, align 1, !tbaa !39
  %conv176 = zext i8 %159 to i32
  %or177 = or i32 %conv176, 1
  %conv178 = trunc i32 %or177 to i8
  store i8 %conv178, i8* %arrayidx175, align 1, !tbaa !39
  store i8 1, i8* %force_forward116, align 1, !tbaa !39
  br label %if.end.188

if.else.179:                                      ; preds = %if.then.164
  %160 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx180 = getelementptr inbounds i8, i8* %160, i64 1
  %161 = load i8, i8* %arrayidx180, align 1, !tbaa !39
  %conv181 = zext i8 %161 to i32
  %or182 = or i32 %conv181, 2
  %conv183 = trunc i32 %or182 to i8
  store i8 %conv183, i8* %arrayidx180, align 1, !tbaa !39
  %162 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx184 = getelementptr inbounds i8, i8* %162, i64 2
  %163 = load i8, i8* %arrayidx184, align 1, !tbaa !39
  %conv185 = zext i8 %163 to i32
  %or186 = or i32 %conv185, 4
  %conv187 = trunc i32 %or186 to i8
  store i8 %conv187, i8* %arrayidx184, align 1, !tbaa !39
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.179, %if.then.170
  br label %if.end.192

if.else.189:                                      ; preds = %if.else.161
  %164 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr190 = getelementptr inbounds i8, i8* %164, i32 -1
  store i8* %incdec.ptr190, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %164, align 1, !tbaa !39
  %165 = load i32, i32* %max_value, align 4, !tbaa !1
  %166 = load i32, i32* %value, align 4, !tbaa !1
  %sub191 = sub nsw i32 %166, %165
  store i32 %sub191, i32* %value, align 4, !tbaa !1
  br label %if.end.192

if.end.192:                                       ; preds = %if.else.189, %if.end.188
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.then.159
  %167 = load i32, i32* %value, align 4, !tbaa !1
  %mul194 = mul nsw i32 %167, 7
  %div195 = sdiv i32 %mul194, 16
  store i32 %div195, i32* %e_forward, align 4, !tbaa !1
  %168 = load i32, i32* %value, align 4, !tbaa !1
  %mul196 = mul nsw i32 %168, 3
  %div197 = sdiv i32 %mul196, 16
  store i32 %div197, i32* %e_downleft, align 4, !tbaa !1
  %169 = load i32, i32* %value, align 4, !tbaa !1
  %mul198 = mul nsw i32 %169, 5
  %div199 = sdiv i32 %mul198, 16
  store i32 %div199, i32* %e_down, align 4, !tbaa !1
  %170 = load i32, i32* %e_forward, align 4, !tbaa !1
  %171 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add200 = add nsw i32 %170, %171
  %172 = load i32, i32* %e_down, align 4, !tbaa !1
  %add201 = add nsw i32 %add200, %172
  %173 = load i32, i32* %value, align 4, !tbaa !1
  %sub202 = sub nsw i32 %173, %add201
  store i32 %sub202, i32* %value, align 4, !tbaa !1
  %174 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %175 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx203 = getelementptr inbounds i32, i32* %175, i64 2
  %176 = load i32, i32* %arrayidx203, align 4, !tbaa !1
  %add204 = add nsw i32 %176, %174
  store i32 %add204, i32* %arrayidx203, align 4, !tbaa !1
  %177 = load i32, i32* %e_down, align 4, !tbaa !1
  %178 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx205 = getelementptr inbounds i32, i32* %178, i64 1
  %179 = load i32, i32* %arrayidx205, align 4, !tbaa !1
  %add206 = add nsw i32 %179, %177
  store i32 %add206, i32* %arrayidx205, align 4, !tbaa !1
  %180 = load i32, i32* %value, align 4, !tbaa !1
  %181 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr207 = getelementptr inbounds i32, i32* %181, i32 -1
  store i32* %incdec.ptr207, i32** %errors, align 8, !tbaa !5
  store i32 %180, i32* %181, align 4, !tbaa !1
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.193
  %182 = load i32, i32* %x, align 4, !tbaa !1
  %dec209 = add nsw i32 %182, -1
  store i32 %dec209, i32* %x, align 4, !tbaa !1
  br label %for.cond.126

for.end.210:                                      ; preds = %for.cond.126
  %183 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr211 = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr211, i8** %outp, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 1, i8* %force_forward116) #1
  call void @llvm.lifetime.end(i64 1, i8* %mfs115) #1
  %184 = bitcast i32* %back112 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %184) #1
  br label %if.end.212

if.end.212:                                       ; preds = %for.end.210, %for.end.107
  %185 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %186 = load i8*, i8** %outp, align 8, !tbaa !5
  %187 = load i32, i32* %awidth, align 4, !tbaa !1
  call void @pack_8to1(i8* %185, i8* %186, i32 %187) #4
  %188 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i8** %mfs_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %191) #1
  %192 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %193) #1
  %194 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %194) #1
  %195 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core_4(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %value = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %errors = alloca i32*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %5 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %9, i32 0, i32 1
  %10 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %10, i32* %width, align 4, !tbaa !1
  %11 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %13, i32* %awidth, align 4, !tbaa !1
  %14 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 7
  %16 = load i32*, i32** %errors3, align 8, !tbaa !38
  %17 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %17, 3
  %18 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %add, %18
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 %idx.ext
  store i32* %add.ptr, i32** %errors, align 8, !tbaa !5
  %19 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 2048, i32* %threshold, align 4, !tbaa !1
  %20 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 4080, i32* %max_value, align 4, !tbaa !1
  %21 = load i32, i32* %awidth, align 4, !tbaa !1
  %22 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %21, %22
  %mul4 = mul nsw i32 %sub, 4
  store i32 %mul4, i32* %pad_white, align 4, !tbaa !1
  %23 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %25 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %26 = load i32, i32* %width, align 4, !tbaa !1
  %mul6 = mul nsw i32 %26, 4
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %25, i64 %idx.ext7
  store i8* %add.ptr8, i8** %inp, align 8, !tbaa !5
  store i32 4, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %27 = load i32, i32* %x, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %27, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %29 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext10 = sext i32 %30 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %31, i64 %idx.ext10
  store i8* %add.ptr11, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %34, 1
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then.15, label %if.else.122

if.then.15:                                       ; preds = %if.end.12
  %35 = load i32*, i32** %errors, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %add.ptr16, i32** %errors, align 8, !tbaa !5
  %36 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %36, i8** %outp, align 8, !tbaa !5
  %37 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %37, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.117, %if.then.15
  %38 = load i32, i32* %x, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %38, 0
  br i1 %cmp18, label %for.body.20, label %for.end.119

for.body.20:                                      ; preds = %for.cond.17
  %39 = load i32, i32* %e_forward, align 4, !tbaa !1
  %40 = load i32*, i32** %errors, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %add21 = add nsw i32 %39, %41
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv22 = zext i8 %43 to i32
  %add23 = add nsw i32 %add21, %conv22
  %44 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %45 to i32
  %add26 = add nsw i32 %add23, %conv25
  %46 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i8, i8* %46, i64 2
  %47 = load i8, i8* %arrayidx27, align 1, !tbaa !39
  %conv28 = zext i8 %47 to i32
  %add29 = add nsw i32 %add26, %conv28
  %48 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds i8, i8* %48, i64 3
  %49 = load i8, i8* %arrayidx30, align 1, !tbaa !39
  %conv31 = zext i8 %49 to i32
  %add32 = add nsw i32 %add29, %conv31
  %50 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom = sext i32 %50 to i64
  %51 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i8, i8* %51, i64 %idxprom
  %52 = load i8, i8* %arrayidx33, align 1, !tbaa !39
  %conv34 = zext i8 %52 to i32
  %add35 = add nsw i32 %add32, %conv34
  %53 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add36 = add nsw i32 %53, 1
  %idxprom37 = sext i32 %add36 to i64
  %54 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx38 = getelementptr inbounds i8, i8* %54, i64 %idxprom37
  %55 = load i8, i8* %arrayidx38, align 1, !tbaa !39
  %conv39 = zext i8 %55 to i32
  %add40 = add nsw i32 %add35, %conv39
  %56 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add41 = add nsw i32 %56, 2
  %idxprom42 = sext i32 %add41 to i64
  %57 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx43 = getelementptr inbounds i8, i8* %57, i64 %idxprom42
  %58 = load i8, i8* %arrayidx43, align 1, !tbaa !39
  %conv44 = zext i8 %58 to i32
  %add45 = add nsw i32 %add40, %conv44
  %59 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add46 = add nsw i32 %59, 3
  %idxprom47 = sext i32 %add46 to i64
  %60 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds i8, i8* %60, i64 %idxprom47
  %61 = load i8, i8* %arrayidx48, align 1, !tbaa !39
  %conv49 = zext i8 %61 to i32
  %add50 = add nsw i32 %add45, %conv49
  %62 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul51 = mul nsw i32 %62, 2
  %idxprom52 = sext i32 %mul51 to i64
  %63 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx53 = getelementptr inbounds i8, i8* %63, i64 %idxprom52
  %64 = load i8, i8* %arrayidx53, align 1, !tbaa !39
  %conv54 = zext i8 %64 to i32
  %add55 = add nsw i32 %add50, %conv54
  %65 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul56 = mul nsw i32 %65, 2
  %add57 = add nsw i32 %mul56, 1
  %idxprom58 = sext i32 %add57 to i64
  %66 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx59 = getelementptr inbounds i8, i8* %66, i64 %idxprom58
  %67 = load i8, i8* %arrayidx59, align 1, !tbaa !39
  %conv60 = zext i8 %67 to i32
  %add61 = add nsw i32 %add55, %conv60
  %68 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul62 = mul nsw i32 %68, 2
  %add63 = add nsw i32 %mul62, 2
  %idxprom64 = sext i32 %add63 to i64
  %69 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx65 = getelementptr inbounds i8, i8* %69, i64 %idxprom64
  %70 = load i8, i8* %arrayidx65, align 1, !tbaa !39
  %conv66 = zext i8 %70 to i32
  %add67 = add nsw i32 %add61, %conv66
  %71 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul68 = mul nsw i32 %71, 2
  %add69 = add nsw i32 %mul68, 3
  %idxprom70 = sext i32 %add69 to i64
  %72 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds i8, i8* %72, i64 %idxprom70
  %73 = load i8, i8* %arrayidx71, align 1, !tbaa !39
  %conv72 = zext i8 %73 to i32
  %add73 = add nsw i32 %add67, %conv72
  %74 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul74 = mul nsw i32 %74, 3
  %idxprom75 = sext i32 %mul74 to i64
  %75 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx76 = getelementptr inbounds i8, i8* %75, i64 %idxprom75
  %76 = load i8, i8* %arrayidx76, align 1, !tbaa !39
  %conv77 = zext i8 %76 to i32
  %add78 = add nsw i32 %add73, %conv77
  %77 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul79 = mul nsw i32 %77, 3
  %add80 = add nsw i32 %mul79, 1
  %idxprom81 = sext i32 %add80 to i64
  %78 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx82 = getelementptr inbounds i8, i8* %78, i64 %idxprom81
  %79 = load i8, i8* %arrayidx82, align 1, !tbaa !39
  %conv83 = zext i8 %79 to i32
  %add84 = add nsw i32 %add78, %conv83
  %80 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul85 = mul nsw i32 %80, 3
  %add86 = add nsw i32 %mul85, 2
  %idxprom87 = sext i32 %add86 to i64
  %81 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx88 = getelementptr inbounds i8, i8* %81, i64 %idxprom87
  %82 = load i8, i8* %arrayidx88, align 1, !tbaa !39
  %conv89 = zext i8 %82 to i32
  %add90 = add nsw i32 %add84, %conv89
  %83 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul91 = mul nsw i32 %83, 3
  %add92 = add nsw i32 %mul91, 3
  %idxprom93 = sext i32 %add92 to i64
  %84 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx94 = getelementptr inbounds i8, i8* %84, i64 %idxprom93
  %85 = load i8, i8* %arrayidx94, align 1, !tbaa !39
  %conv95 = zext i8 %85 to i32
  %add96 = add nsw i32 %add90, %conv95
  store i32 %add96, i32* %value, align 4, !tbaa !1
  %86 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr97 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %add.ptr97, i8** %inp, align 8, !tbaa !5
  %87 = load i32, i32* %value, align 4, !tbaa !1
  %cmp98 = icmp sge i32 %87, 2048
  br i1 %cmp98, label %if.then.100, label %if.else

if.then.100:                                      ; preds = %for.body.20
  %88 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %88, align 1, !tbaa !39
  %89 = load i32, i32* %value, align 4, !tbaa !1
  %sub101 = sub nsw i32 %89, 4080
  store i32 %sub101, i32* %value, align 4, !tbaa !1
  br label %if.end.103

if.else:                                          ; preds = %for.body.20
  %90 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr102 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr102, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %90, align 1, !tbaa !39
  br label %if.end.103

if.end.103:                                       ; preds = %if.else, %if.then.100
  %91 = load i32, i32* %value, align 4, !tbaa !1
  %mul104 = mul nsw i32 %91, 7
  %div = sdiv i32 %mul104, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %92 = load i32, i32* %value, align 4, !tbaa !1
  %mul105 = mul nsw i32 %92, 3
  %div106 = sdiv i32 %mul105, 16
  store i32 %div106, i32* %e_downleft, align 4, !tbaa !1
  %93 = load i32, i32* %value, align 4, !tbaa !1
  %mul107 = mul nsw i32 %93, 5
  %div108 = sdiv i32 %mul107, 16
  store i32 %div108, i32* %e_down, align 4, !tbaa !1
  %94 = load i32, i32* %e_forward, align 4, !tbaa !1
  %95 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add109 = add nsw i32 %94, %95
  %96 = load i32, i32* %e_down, align 4, !tbaa !1
  %add110 = add nsw i32 %add109, %96
  %97 = load i32, i32* %value, align 4, !tbaa !1
  %sub111 = sub nsw i32 %97, %add110
  store i32 %sub111, i32* %value, align 4, !tbaa !1
  %98 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %99 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds i32, i32* %99, i64 -2
  %100 = load i32, i32* %arrayidx112, align 4, !tbaa !1
  %add113 = add nsw i32 %100, %98
  store i32 %add113, i32* %arrayidx112, align 4, !tbaa !1
  %101 = load i32, i32* %e_down, align 4, !tbaa !1
  %102 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx114 = getelementptr inbounds i32, i32* %102, i64 -1
  %103 = load i32, i32* %arrayidx114, align 4, !tbaa !1
  %add115 = add nsw i32 %103, %101
  store i32 %add115, i32* %arrayidx114, align 4, !tbaa !1
  %104 = load i32, i32* %value, align 4, !tbaa !1
  %105 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr116 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %incdec.ptr116, i32** %errors, align 8, !tbaa !5
  store i32 %104, i32* %105, align 4, !tbaa !1
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.103
  %106 = load i32, i32* %x, align 4, !tbaa !1
  %dec118 = add nsw i32 %106, -1
  store i32 %dec118, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.end.119:                                      ; preds = %for.cond.17
  %107 = load i32, i32* %awidth, align 4, !tbaa !1
  %108 = load i8*, i8** %outp, align 8, !tbaa !5
  %idx.ext120 = sext i32 %107 to i64
  %idx.neg = sub i64 0, %idx.ext120
  %add.ptr121 = getelementptr inbounds i8, i8* %108, i64 %idx.neg
  store i8* %add.ptr121, i8** %outp, align 8, !tbaa !5
  br label %if.end.238

if.else.122:                                      ; preds = %if.end.12
  %109 = load i32, i32* %awidth, align 4, !tbaa !1
  %110 = load i32*, i32** %errors, align 8, !tbaa !5
  %idx.ext123 = sext i32 %109 to i64
  %add.ptr124 = getelementptr inbounds i32, i32* %110, i64 %idx.ext123
  store i32* %add.ptr124, i32** %errors, align 8, !tbaa !5
  %111 = load i32, i32* %awidth, align 4, !tbaa !1
  %sub125 = sub nsw i32 %111, 1
  %mul126 = mul nsw i32 %sub125, 4
  %112 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext127 = sext i32 %mul126 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %112, i64 %idx.ext127
  store i8* %add.ptr128, i8** %inp, align 8, !tbaa !5
  %113 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %113, i8** %outp, align 8, !tbaa !5
  %114 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %114, i32* %x, align 4, !tbaa !1
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.234, %if.else.122
  %115 = load i32, i32* %x, align 4, !tbaa !1
  %cmp130 = icmp sgt i32 %115, 0
  br i1 %cmp130, label %for.body.132, label %for.end.236

for.body.132:                                     ; preds = %for.cond.129
  %116 = load i32, i32* %e_forward, align 4, !tbaa !1
  %117 = load i32*, i32** %errors, align 8, !tbaa !5
  %118 = load i32, i32* %117, align 4, !tbaa !1
  %add133 = add nsw i32 %116, %118
  %119 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx134 = getelementptr inbounds i8, i8* %119, i64 0
  %120 = load i8, i8* %arrayidx134, align 1, !tbaa !39
  %conv135 = zext i8 %120 to i32
  %add136 = add nsw i32 %add133, %conv135
  %121 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx137 = getelementptr inbounds i8, i8* %121, i64 1
  %122 = load i8, i8* %arrayidx137, align 1, !tbaa !39
  %conv138 = zext i8 %122 to i32
  %add139 = add nsw i32 %add136, %conv138
  %123 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx140 = getelementptr inbounds i8, i8* %123, i64 2
  %124 = load i8, i8* %arrayidx140, align 1, !tbaa !39
  %conv141 = zext i8 %124 to i32
  %add142 = add nsw i32 %add139, %conv141
  %125 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx143 = getelementptr inbounds i8, i8* %125, i64 3
  %126 = load i8, i8* %arrayidx143, align 1, !tbaa !39
  %conv144 = zext i8 %126 to i32
  %add145 = add nsw i32 %add142, %conv144
  %127 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom146 = sext i32 %127 to i64
  %128 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx147 = getelementptr inbounds i8, i8* %128, i64 %idxprom146
  %129 = load i8, i8* %arrayidx147, align 1, !tbaa !39
  %conv148 = zext i8 %129 to i32
  %add149 = add nsw i32 %add145, %conv148
  %130 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add150 = add nsw i32 %130, 1
  %idxprom151 = sext i32 %add150 to i64
  %131 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx152 = getelementptr inbounds i8, i8* %131, i64 %idxprom151
  %132 = load i8, i8* %arrayidx152, align 1, !tbaa !39
  %conv153 = zext i8 %132 to i32
  %add154 = add nsw i32 %add149, %conv153
  %133 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add155 = add nsw i32 %133, 2
  %idxprom156 = sext i32 %add155 to i64
  %134 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx157 = getelementptr inbounds i8, i8* %134, i64 %idxprom156
  %135 = load i8, i8* %arrayidx157, align 1, !tbaa !39
  %conv158 = zext i8 %135 to i32
  %add159 = add nsw i32 %add154, %conv158
  %136 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add160 = add nsw i32 %136, 3
  %idxprom161 = sext i32 %add160 to i64
  %137 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx162 = getelementptr inbounds i8, i8* %137, i64 %idxprom161
  %138 = load i8, i8* %arrayidx162, align 1, !tbaa !39
  %conv163 = zext i8 %138 to i32
  %add164 = add nsw i32 %add159, %conv163
  %139 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul165 = mul nsw i32 %139, 2
  %idxprom166 = sext i32 %mul165 to i64
  %140 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx167 = getelementptr inbounds i8, i8* %140, i64 %idxprom166
  %141 = load i8, i8* %arrayidx167, align 1, !tbaa !39
  %conv168 = zext i8 %141 to i32
  %add169 = add nsw i32 %add164, %conv168
  %142 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul170 = mul nsw i32 %142, 2
  %add171 = add nsw i32 %mul170, 1
  %idxprom172 = sext i32 %add171 to i64
  %143 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds i8, i8* %143, i64 %idxprom172
  %144 = load i8, i8* %arrayidx173, align 1, !tbaa !39
  %conv174 = zext i8 %144 to i32
  %add175 = add nsw i32 %add169, %conv174
  %145 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul176 = mul nsw i32 %145, 2
  %add177 = add nsw i32 %mul176, 2
  %idxprom178 = sext i32 %add177 to i64
  %146 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx179 = getelementptr inbounds i8, i8* %146, i64 %idxprom178
  %147 = load i8, i8* %arrayidx179, align 1, !tbaa !39
  %conv180 = zext i8 %147 to i32
  %add181 = add nsw i32 %add175, %conv180
  %148 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul182 = mul nsw i32 %148, 2
  %add183 = add nsw i32 %mul182, 3
  %idxprom184 = sext i32 %add183 to i64
  %149 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx185 = getelementptr inbounds i8, i8* %149, i64 %idxprom184
  %150 = load i8, i8* %arrayidx185, align 1, !tbaa !39
  %conv186 = zext i8 %150 to i32
  %add187 = add nsw i32 %add181, %conv186
  %151 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul188 = mul nsw i32 %151, 3
  %idxprom189 = sext i32 %mul188 to i64
  %152 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx190 = getelementptr inbounds i8, i8* %152, i64 %idxprom189
  %153 = load i8, i8* %arrayidx190, align 1, !tbaa !39
  %conv191 = zext i8 %153 to i32
  %add192 = add nsw i32 %add187, %conv191
  %154 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul193 = mul nsw i32 %154, 3
  %add194 = add nsw i32 %mul193, 1
  %idxprom195 = sext i32 %add194 to i64
  %155 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx196 = getelementptr inbounds i8, i8* %155, i64 %idxprom195
  %156 = load i8, i8* %arrayidx196, align 1, !tbaa !39
  %conv197 = zext i8 %156 to i32
  %add198 = add nsw i32 %add192, %conv197
  %157 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul199 = mul nsw i32 %157, 3
  %add200 = add nsw i32 %mul199, 2
  %idxprom201 = sext i32 %add200 to i64
  %158 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx202 = getelementptr inbounds i8, i8* %158, i64 %idxprom201
  %159 = load i8, i8* %arrayidx202, align 1, !tbaa !39
  %conv203 = zext i8 %159 to i32
  %add204 = add nsw i32 %add198, %conv203
  %160 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul205 = mul nsw i32 %160, 3
  %add206 = add nsw i32 %mul205, 3
  %idxprom207 = sext i32 %add206 to i64
  %161 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx208 = getelementptr inbounds i8, i8* %161, i64 %idxprom207
  %162 = load i8, i8* %arrayidx208, align 1, !tbaa !39
  %conv209 = zext i8 %162 to i32
  %add210 = add nsw i32 %add204, %conv209
  store i32 %add210, i32* %value, align 4, !tbaa !1
  %163 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr211 = getelementptr inbounds i8, i8* %163, i64 -4
  store i8* %add.ptr211, i8** %inp, align 8, !tbaa !5
  %164 = load i32, i32* %value, align 4, !tbaa !1
  %cmp212 = icmp sge i32 %164, 2048
  br i1 %cmp212, label %if.then.214, label %if.else.217

if.then.214:                                      ; preds = %for.body.132
  %165 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr215 = getelementptr inbounds i8, i8* %165, i32 -1
  store i8* %incdec.ptr215, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %165, align 1, !tbaa !39
  %166 = load i32, i32* %value, align 4, !tbaa !1
  %sub216 = sub nsw i32 %166, 4080
  store i32 %sub216, i32* %value, align 4, !tbaa !1
  br label %if.end.219

if.else.217:                                      ; preds = %for.body.132
  %167 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr218 = getelementptr inbounds i8, i8* %167, i32 -1
  store i8* %incdec.ptr218, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %167, align 1, !tbaa !39
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.217, %if.then.214
  %168 = load i32, i32* %value, align 4, !tbaa !1
  %mul220 = mul nsw i32 %168, 7
  %div221 = sdiv i32 %mul220, 16
  store i32 %div221, i32* %e_forward, align 4, !tbaa !1
  %169 = load i32, i32* %value, align 4, !tbaa !1
  %mul222 = mul nsw i32 %169, 3
  %div223 = sdiv i32 %mul222, 16
  store i32 %div223, i32* %e_downleft, align 4, !tbaa !1
  %170 = load i32, i32* %value, align 4, !tbaa !1
  %mul224 = mul nsw i32 %170, 5
  %div225 = sdiv i32 %mul224, 16
  store i32 %div225, i32* %e_down, align 4, !tbaa !1
  %171 = load i32, i32* %e_forward, align 4, !tbaa !1
  %172 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add226 = add nsw i32 %171, %172
  %173 = load i32, i32* %e_down, align 4, !tbaa !1
  %add227 = add nsw i32 %add226, %173
  %174 = load i32, i32* %value, align 4, !tbaa !1
  %sub228 = sub nsw i32 %174, %add227
  store i32 %sub228, i32* %value, align 4, !tbaa !1
  %175 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %176 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx229 = getelementptr inbounds i32, i32* %176, i64 2
  %177 = load i32, i32* %arrayidx229, align 4, !tbaa !1
  %add230 = add nsw i32 %177, %175
  store i32 %add230, i32* %arrayidx229, align 4, !tbaa !1
  %178 = load i32, i32* %e_down, align 4, !tbaa !1
  %179 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx231 = getelementptr inbounds i32, i32* %179, i64 1
  %180 = load i32, i32* %arrayidx231, align 4, !tbaa !1
  %add232 = add nsw i32 %180, %178
  store i32 %add232, i32* %arrayidx231, align 4, !tbaa !1
  %181 = load i32, i32* %value, align 4, !tbaa !1
  %182 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr233 = getelementptr inbounds i32, i32* %182, i32 -1
  store i32* %incdec.ptr233, i32** %errors, align 8, !tbaa !5
  store i32 %181, i32* %182, align 4, !tbaa !1
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.219
  %183 = load i32, i32* %x, align 4, !tbaa !1
  %dec235 = add nsw i32 %183, -1
  store i32 %dec235, i32* %x, align 4, !tbaa !1
  br label %for.cond.129

for.end.236:                                      ; preds = %for.cond.129
  %184 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr237 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr237, i8** %outp, align 8, !tbaa !5
  br label %if.end.238

if.end.238:                                       ; preds = %for.end.236, %for.end.119
  %185 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %186 = load i8*, i8** %outp, align 8, !tbaa !5
  %187 = load i32, i32* %awidth, align 4, !tbaa !1
  call void @pack_8to1(i8* %185, i8* %186, i32 %187) #4
  %188 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %189 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %189) #1
  %190 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %190) #1
  %191 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %191) #1
  %192 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %192) #1
  %193 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %193) #1
  %194 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %195) #1
  %196 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %196) #1
  %197 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core_3(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %value = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %errors = alloca i32*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %5 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %9, i32 0, i32 1
  %10 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %10, i32* %width, align 4, !tbaa !1
  %11 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %13, i32* %awidth, align 4, !tbaa !1
  %14 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 7
  %16 = load i32*, i32** %errors3, align 8, !tbaa !38
  %17 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %17, 3
  %18 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %add, %18
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 %idx.ext
  store i32* %add.ptr, i32** %errors, align 8, !tbaa !5
  %19 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 1152, i32* %threshold, align 4, !tbaa !1
  %20 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 2295, i32* %max_value, align 4, !tbaa !1
  %21 = load i32, i32* %awidth, align 4, !tbaa !1
  %22 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %21, %22
  %mul4 = mul nsw i32 %sub, 3
  store i32 %mul4, i32* %pad_white, align 4, !tbaa !1
  %23 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %25 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %26 = load i32, i32* %width, align 4, !tbaa !1
  %mul6 = mul nsw i32 %26, 3
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %25, i64 %idx.ext7
  store i8* %add.ptr8, i8** %inp, align 8, !tbaa !5
  store i32 3, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %27 = load i32, i32* %x, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %27, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %29 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext10 = sext i32 %30 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %31, i64 %idx.ext10
  store i8* %add.ptr11, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %34, 1
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then.15, label %if.else.85

if.then.15:                                       ; preds = %if.end.12
  %35 = load i32*, i32** %errors, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %add.ptr16, i32** %errors, align 8, !tbaa !5
  %36 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %36, i8** %outp, align 8, !tbaa !5
  %37 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %37, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.80, %if.then.15
  %38 = load i32, i32* %x, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %38, 0
  br i1 %cmp18, label %for.body.20, label %for.end.82

for.body.20:                                      ; preds = %for.cond.17
  %39 = load i32, i32* %e_forward, align 4, !tbaa !1
  %40 = load i32*, i32** %errors, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %add21 = add nsw i32 %39, %41
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv22 = zext i8 %43 to i32
  %add23 = add nsw i32 %add21, %conv22
  %44 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %45 to i32
  %add26 = add nsw i32 %add23, %conv25
  %46 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i8, i8* %46, i64 2
  %47 = load i8, i8* %arrayidx27, align 1, !tbaa !39
  %conv28 = zext i8 %47 to i32
  %add29 = add nsw i32 %add26, %conv28
  %48 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom = sext i32 %48 to i64
  %49 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds i8, i8* %49, i64 %idxprom
  %50 = load i8, i8* %arrayidx30, align 1, !tbaa !39
  %conv31 = zext i8 %50 to i32
  %add32 = add nsw i32 %add29, %conv31
  %51 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add33 = add nsw i32 %51, 1
  %idxprom34 = sext i32 %add33 to i64
  %52 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx35 = getelementptr inbounds i8, i8* %52, i64 %idxprom34
  %53 = load i8, i8* %arrayidx35, align 1, !tbaa !39
  %conv36 = zext i8 %53 to i32
  %add37 = add nsw i32 %add32, %conv36
  %54 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add38 = add nsw i32 %54, 2
  %idxprom39 = sext i32 %add38 to i64
  %55 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds i8, i8* %55, i64 %idxprom39
  %56 = load i8, i8* %arrayidx40, align 1, !tbaa !39
  %conv41 = zext i8 %56 to i32
  %add42 = add nsw i32 %add37, %conv41
  %57 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul43 = mul nsw i32 %57, 2
  %idxprom44 = sext i32 %mul43 to i64
  %58 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds i8, i8* %58, i64 %idxprom44
  %59 = load i8, i8* %arrayidx45, align 1, !tbaa !39
  %conv46 = zext i8 %59 to i32
  %add47 = add nsw i32 %add42, %conv46
  %60 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul48 = mul nsw i32 %60, 2
  %add49 = add nsw i32 %mul48, 1
  %idxprom50 = sext i32 %add49 to i64
  %61 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds i8, i8* %61, i64 %idxprom50
  %62 = load i8, i8* %arrayidx51, align 1, !tbaa !39
  %conv52 = zext i8 %62 to i32
  %add53 = add nsw i32 %add47, %conv52
  %63 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul54 = mul nsw i32 %63, 2
  %add55 = add nsw i32 %mul54, 2
  %idxprom56 = sext i32 %add55 to i64
  %64 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx57 = getelementptr inbounds i8, i8* %64, i64 %idxprom56
  %65 = load i8, i8* %arrayidx57, align 1, !tbaa !39
  %conv58 = zext i8 %65 to i32
  %add59 = add nsw i32 %add53, %conv58
  store i32 %add59, i32* %value, align 4, !tbaa !1
  %66 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr60 = getelementptr inbounds i8, i8* %66, i64 3
  store i8* %add.ptr60, i8** %inp, align 8, !tbaa !5
  %67 = load i32, i32* %value, align 4, !tbaa !1
  %cmp61 = icmp sge i32 %67, 1152
  br i1 %cmp61, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %for.body.20
  %68 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %68, align 1, !tbaa !39
  %69 = load i32, i32* %value, align 4, !tbaa !1
  %sub64 = sub nsw i32 %69, 2295
  store i32 %sub64, i32* %value, align 4, !tbaa !1
  br label %if.end.66

if.else:                                          ; preds = %for.body.20
  %70 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr65 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr65, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %70, align 1, !tbaa !39
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.63
  %71 = load i32, i32* %value, align 4, !tbaa !1
  %mul67 = mul nsw i32 %71, 7
  %div = sdiv i32 %mul67, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %72 = load i32, i32* %value, align 4, !tbaa !1
  %mul68 = mul nsw i32 %72, 3
  %div69 = sdiv i32 %mul68, 16
  store i32 %div69, i32* %e_downleft, align 4, !tbaa !1
  %73 = load i32, i32* %value, align 4, !tbaa !1
  %mul70 = mul nsw i32 %73, 5
  %div71 = sdiv i32 %mul70, 16
  store i32 %div71, i32* %e_down, align 4, !tbaa !1
  %74 = load i32, i32* %e_forward, align 4, !tbaa !1
  %75 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add72 = add nsw i32 %74, %75
  %76 = load i32, i32* %e_down, align 4, !tbaa !1
  %add73 = add nsw i32 %add72, %76
  %77 = load i32, i32* %value, align 4, !tbaa !1
  %sub74 = sub nsw i32 %77, %add73
  store i32 %sub74, i32* %value, align 4, !tbaa !1
  %78 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %79 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx75 = getelementptr inbounds i32, i32* %79, i64 -2
  %80 = load i32, i32* %arrayidx75, align 4, !tbaa !1
  %add76 = add nsw i32 %80, %78
  store i32 %add76, i32* %arrayidx75, align 4, !tbaa !1
  %81 = load i32, i32* %e_down, align 4, !tbaa !1
  %82 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx77 = getelementptr inbounds i32, i32* %82, i64 -1
  %83 = load i32, i32* %arrayidx77, align 4, !tbaa !1
  %add78 = add nsw i32 %83, %81
  store i32 %add78, i32* %arrayidx77, align 4, !tbaa !1
  %84 = load i32, i32* %value, align 4, !tbaa !1
  %85 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr79 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %incdec.ptr79, i32** %errors, align 8, !tbaa !5
  store i32 %84, i32* %85, align 4, !tbaa !1
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.66
  %86 = load i32, i32* %x, align 4, !tbaa !1
  %dec81 = add nsw i32 %86, -1
  store i32 %dec81, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.end.82:                                       ; preds = %for.cond.17
  %87 = load i32, i32* %awidth, align 4, !tbaa !1
  %88 = load i8*, i8** %outp, align 8, !tbaa !5
  %idx.ext83 = sext i32 %87 to i64
  %idx.neg = sub i64 0, %idx.ext83
  %add.ptr84 = getelementptr inbounds i8, i8* %88, i64 %idx.neg
  store i8* %add.ptr84, i8** %outp, align 8, !tbaa !5
  br label %if.end.164

if.else.85:                                       ; preds = %if.end.12
  %89 = load i32, i32* %awidth, align 4, !tbaa !1
  %90 = load i32*, i32** %errors, align 8, !tbaa !5
  %idx.ext86 = sext i32 %89 to i64
  %add.ptr87 = getelementptr inbounds i32, i32* %90, i64 %idx.ext86
  store i32* %add.ptr87, i32** %errors, align 8, !tbaa !5
  %91 = load i32, i32* %awidth, align 4, !tbaa !1
  %sub88 = sub nsw i32 %91, 1
  %mul89 = mul nsw i32 %sub88, 3
  %92 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %92, i64 %idx.ext90
  store i8* %add.ptr91, i8** %inp, align 8, !tbaa !5
  %93 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %93, i8** %outp, align 8, !tbaa !5
  %94 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %94, i32* %x, align 4, !tbaa !1
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.160, %if.else.85
  %95 = load i32, i32* %x, align 4, !tbaa !1
  %cmp93 = icmp sgt i32 %95, 0
  br i1 %cmp93, label %for.body.95, label %for.end.162

for.body.95:                                      ; preds = %for.cond.92
  %96 = load i32, i32* %e_forward, align 4, !tbaa !1
  %97 = load i32*, i32** %errors, align 8, !tbaa !5
  %98 = load i32, i32* %97, align 4, !tbaa !1
  %add96 = add nsw i32 %96, %98
  %99 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx97 = getelementptr inbounds i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx97, align 1, !tbaa !39
  %conv98 = zext i8 %100 to i32
  %add99 = add nsw i32 %add96, %conv98
  %101 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx100 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx100, align 1, !tbaa !39
  %conv101 = zext i8 %102 to i32
  %add102 = add nsw i32 %add99, %conv101
  %103 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx103 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx103, align 1, !tbaa !39
  %conv104 = zext i8 %104 to i32
  %add105 = add nsw i32 %add102, %conv104
  %105 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom106 = sext i32 %105 to i64
  %106 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx107 = getelementptr inbounds i8, i8* %106, i64 %idxprom106
  %107 = load i8, i8* %arrayidx107, align 1, !tbaa !39
  %conv108 = zext i8 %107 to i32
  %add109 = add nsw i32 %add105, %conv108
  %108 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add110 = add nsw i32 %108, 1
  %idxprom111 = sext i32 %add110 to i64
  %109 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx112 = getelementptr inbounds i8, i8* %109, i64 %idxprom111
  %110 = load i8, i8* %arrayidx112, align 1, !tbaa !39
  %conv113 = zext i8 %110 to i32
  %add114 = add nsw i32 %add109, %conv113
  %111 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add115 = add nsw i32 %111, 2
  %idxprom116 = sext i32 %add115 to i64
  %112 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx117 = getelementptr inbounds i8, i8* %112, i64 %idxprom116
  %113 = load i8, i8* %arrayidx117, align 1, !tbaa !39
  %conv118 = zext i8 %113 to i32
  %add119 = add nsw i32 %add114, %conv118
  %114 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul120 = mul nsw i32 %114, 2
  %idxprom121 = sext i32 %mul120 to i64
  %115 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx122 = getelementptr inbounds i8, i8* %115, i64 %idxprom121
  %116 = load i8, i8* %arrayidx122, align 1, !tbaa !39
  %conv123 = zext i8 %116 to i32
  %add124 = add nsw i32 %add119, %conv123
  %117 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul125 = mul nsw i32 %117, 2
  %add126 = add nsw i32 %mul125, 1
  %idxprom127 = sext i32 %add126 to i64
  %118 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx128 = getelementptr inbounds i8, i8* %118, i64 %idxprom127
  %119 = load i8, i8* %arrayidx128, align 1, !tbaa !39
  %conv129 = zext i8 %119 to i32
  %add130 = add nsw i32 %add124, %conv129
  %120 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul131 = mul nsw i32 %120, 2
  %add132 = add nsw i32 %mul131, 2
  %idxprom133 = sext i32 %add132 to i64
  %121 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx134 = getelementptr inbounds i8, i8* %121, i64 %idxprom133
  %122 = load i8, i8* %arrayidx134, align 1, !tbaa !39
  %conv135 = zext i8 %122 to i32
  %add136 = add nsw i32 %add130, %conv135
  store i32 %add136, i32* %value, align 4, !tbaa !1
  %123 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr137 = getelementptr inbounds i8, i8* %123, i64 -3
  store i8* %add.ptr137, i8** %inp, align 8, !tbaa !5
  %124 = load i32, i32* %value, align 4, !tbaa !1
  %cmp138 = icmp sge i32 %124, 1152
  br i1 %cmp138, label %if.then.140, label %if.else.143

if.then.140:                                      ; preds = %for.body.95
  %125 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr141 = getelementptr inbounds i8, i8* %125, i32 -1
  store i8* %incdec.ptr141, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %125, align 1, !tbaa !39
  %126 = load i32, i32* %value, align 4, !tbaa !1
  %sub142 = sub nsw i32 %126, 2295
  store i32 %sub142, i32* %value, align 4, !tbaa !1
  br label %if.end.145

if.else.143:                                      ; preds = %for.body.95
  %127 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr144 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr144, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %127, align 1, !tbaa !39
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.then.140
  %128 = load i32, i32* %value, align 4, !tbaa !1
  %mul146 = mul nsw i32 %128, 7
  %div147 = sdiv i32 %mul146, 16
  store i32 %div147, i32* %e_forward, align 4, !tbaa !1
  %129 = load i32, i32* %value, align 4, !tbaa !1
  %mul148 = mul nsw i32 %129, 3
  %div149 = sdiv i32 %mul148, 16
  store i32 %div149, i32* %e_downleft, align 4, !tbaa !1
  %130 = load i32, i32* %value, align 4, !tbaa !1
  %mul150 = mul nsw i32 %130, 5
  %div151 = sdiv i32 %mul150, 16
  store i32 %div151, i32* %e_down, align 4, !tbaa !1
  %131 = load i32, i32* %e_forward, align 4, !tbaa !1
  %132 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add152 = add nsw i32 %131, %132
  %133 = load i32, i32* %e_down, align 4, !tbaa !1
  %add153 = add nsw i32 %add152, %133
  %134 = load i32, i32* %value, align 4, !tbaa !1
  %sub154 = sub nsw i32 %134, %add153
  store i32 %sub154, i32* %value, align 4, !tbaa !1
  %135 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %136 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx155 = getelementptr inbounds i32, i32* %136, i64 2
  %137 = load i32, i32* %arrayidx155, align 4, !tbaa !1
  %add156 = add nsw i32 %137, %135
  store i32 %add156, i32* %arrayidx155, align 4, !tbaa !1
  %138 = load i32, i32* %e_down, align 4, !tbaa !1
  %139 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx157 = getelementptr inbounds i32, i32* %139, i64 1
  %140 = load i32, i32* %arrayidx157, align 4, !tbaa !1
  %add158 = add nsw i32 %140, %138
  store i32 %add158, i32* %arrayidx157, align 4, !tbaa !1
  %141 = load i32, i32* %value, align 4, !tbaa !1
  %142 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr159 = getelementptr inbounds i32, i32* %142, i32 -1
  store i32* %incdec.ptr159, i32** %errors, align 8, !tbaa !5
  store i32 %141, i32* %142, align 4, !tbaa !1
  br label %for.inc.160

for.inc.160:                                      ; preds = %if.end.145
  %143 = load i32, i32* %x, align 4, !tbaa !1
  %dec161 = add nsw i32 %143, -1
  store i32 %dec161, i32* %x, align 4, !tbaa !1
  br label %for.cond.92

for.end.162:                                      ; preds = %for.cond.92
  %144 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr163 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr163, i8** %outp, align 8, !tbaa !5
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.162, %for.end.82
  %145 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %146 = load i8*, i8** %outp, align 8, !tbaa !5
  %147 = load i32, i32* %awidth, align 4, !tbaa !1
  call void @pack_8to1(i8* %145, i8* %146, i32 %147) #4
  %148 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %148) #1
  %149 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %151) #1
  %152 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %155) #1
  %156 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %156) #1
  %157 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core_2(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %value = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %errors = alloca i32*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %5 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %9, i32 0, i32 1
  %10 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %10, i32* %width, align 4, !tbaa !1
  %11 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %13, i32* %awidth, align 4, !tbaa !1
  %14 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 7
  %16 = load i32*, i32** %errors3, align 8, !tbaa !38
  %17 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %17, 3
  %18 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %add, %18
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 %idx.ext
  store i32* %add.ptr, i32** %errors, align 8, !tbaa !5
  %19 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 512, i32* %threshold, align 4, !tbaa !1
  %20 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 1020, i32* %max_value, align 4, !tbaa !1
  %21 = load i32, i32* %awidth, align 4, !tbaa !1
  %22 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %21, %22
  %mul4 = mul nsw i32 %sub, 2
  store i32 %mul4, i32* %pad_white, align 4, !tbaa !1
  %23 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %25 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %26 = load i32, i32* %width, align 4, !tbaa !1
  %mul6 = mul nsw i32 %26, 2
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %25, i64 %idx.ext7
  store i8* %add.ptr8, i8** %inp, align 8, !tbaa !5
  store i32 2, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %27 = load i32, i32* %x, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %27, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %29 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext10 = sext i32 %30 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %31, i64 %idx.ext10
  store i8* %add.ptr11, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %34, 1
  %cmp13 = icmp eq i32 %and, 0
  br i1 %cmp13, label %if.then.15, label %if.else.60

if.then.15:                                       ; preds = %if.end.12
  %35 = load i32*, i32** %errors, align 8, !tbaa !5
  %add.ptr16 = getelementptr inbounds i32, i32* %35, i64 2
  store i32* %add.ptr16, i32** %errors, align 8, !tbaa !5
  %36 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %36, i8** %outp, align 8, !tbaa !5
  %37 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %37, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.55, %if.then.15
  %38 = load i32, i32* %x, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %38, 0
  br i1 %cmp18, label %for.body.20, label %for.end.57

for.body.20:                                      ; preds = %for.cond.17
  %39 = load i32, i32* %e_forward, align 4, !tbaa !1
  %40 = load i32*, i32** %errors, align 8, !tbaa !5
  %41 = load i32, i32* %40, align 4, !tbaa !1
  %add21 = add nsw i32 %39, %41
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv22 = zext i8 %43 to i32
  %add23 = add nsw i32 %add21, %conv22
  %44 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %45 to i32
  %add26 = add nsw i32 %add23, %conv25
  %46 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom = sext i32 %46 to i64
  %47 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i8, i8* %47, i64 %idxprom
  %48 = load i8, i8* %arrayidx27, align 1, !tbaa !39
  %conv28 = zext i8 %48 to i32
  %add29 = add nsw i32 %add26, %conv28
  %49 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add30 = add nsw i32 %49, 1
  %idxprom31 = sext i32 %add30 to i64
  %50 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx32 = getelementptr inbounds i8, i8* %50, i64 %idxprom31
  %51 = load i8, i8* %arrayidx32, align 1, !tbaa !39
  %conv33 = zext i8 %51 to i32
  %add34 = add nsw i32 %add29, %conv33
  store i32 %add34, i32* %value, align 4, !tbaa !1
  %52 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr35 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %add.ptr35, i8** %inp, align 8, !tbaa !5
  %53 = load i32, i32* %value, align 4, !tbaa !1
  %cmp36 = icmp sge i32 %53, 512
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %for.body.20
  %54 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %54, align 1, !tbaa !39
  %55 = load i32, i32* %value, align 4, !tbaa !1
  %sub39 = sub nsw i32 %55, 1020
  store i32 %sub39, i32* %value, align 4, !tbaa !1
  br label %if.end.41

if.else:                                          ; preds = %for.body.20
  %56 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr40 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr40, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %56, align 1, !tbaa !39
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.38
  %57 = load i32, i32* %value, align 4, !tbaa !1
  %mul42 = mul nsw i32 %57, 7
  %div = sdiv i32 %mul42, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %58 = load i32, i32* %value, align 4, !tbaa !1
  %mul43 = mul nsw i32 %58, 3
  %div44 = sdiv i32 %mul43, 16
  store i32 %div44, i32* %e_downleft, align 4, !tbaa !1
  %59 = load i32, i32* %value, align 4, !tbaa !1
  %mul45 = mul nsw i32 %59, 5
  %div46 = sdiv i32 %mul45, 16
  store i32 %div46, i32* %e_down, align 4, !tbaa !1
  %60 = load i32, i32* %e_forward, align 4, !tbaa !1
  %61 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add47 = add nsw i32 %60, %61
  %62 = load i32, i32* %e_down, align 4, !tbaa !1
  %add48 = add nsw i32 %add47, %62
  %63 = load i32, i32* %value, align 4, !tbaa !1
  %sub49 = sub nsw i32 %63, %add48
  store i32 %sub49, i32* %value, align 4, !tbaa !1
  %64 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %65 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx50 = getelementptr inbounds i32, i32* %65, i64 -2
  %66 = load i32, i32* %arrayidx50, align 4, !tbaa !1
  %add51 = add nsw i32 %66, %64
  store i32 %add51, i32* %arrayidx50, align 4, !tbaa !1
  %67 = load i32, i32* %e_down, align 4, !tbaa !1
  %68 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx52 = getelementptr inbounds i32, i32* %68, i64 -1
  %69 = load i32, i32* %arrayidx52, align 4, !tbaa !1
  %add53 = add nsw i32 %69, %67
  store i32 %add53, i32* %arrayidx52, align 4, !tbaa !1
  %70 = load i32, i32* %value, align 4, !tbaa !1
  %71 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr54 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %incdec.ptr54, i32** %errors, align 8, !tbaa !5
  store i32 %70, i32* %71, align 4, !tbaa !1
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.41
  %72 = load i32, i32* %x, align 4, !tbaa !1
  %dec56 = add nsw i32 %72, -1
  store i32 %dec56, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.end.57:                                       ; preds = %for.cond.17
  %73 = load i32, i32* %awidth, align 4, !tbaa !1
  %74 = load i8*, i8** %outp, align 8, !tbaa !5
  %idx.ext58 = sext i32 %73 to i64
  %idx.neg = sub i64 0, %idx.ext58
  %add.ptr59 = getelementptr inbounds i8, i8* %74, i64 %idx.neg
  store i8* %add.ptr59, i8** %outp, align 8, !tbaa !5
  br label %if.end.114

if.else.60:                                       ; preds = %if.end.12
  %75 = load i32, i32* %awidth, align 4, !tbaa !1
  %76 = load i32*, i32** %errors, align 8, !tbaa !5
  %idx.ext61 = sext i32 %75 to i64
  %add.ptr62 = getelementptr inbounds i32, i32* %76, i64 %idx.ext61
  store i32* %add.ptr62, i32** %errors, align 8, !tbaa !5
  %77 = load i32, i32* %awidth, align 4, !tbaa !1
  %sub63 = sub nsw i32 %77, 1
  %mul64 = mul nsw i32 %sub63, 2
  %78 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext65 = sext i32 %mul64 to i64
  %add.ptr66 = getelementptr inbounds i8, i8* %78, i64 %idx.ext65
  store i8* %add.ptr66, i8** %inp, align 8, !tbaa !5
  %79 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %79, i8** %outp, align 8, !tbaa !5
  %80 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %80, i32* %x, align 4, !tbaa !1
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.110, %if.else.60
  %81 = load i32, i32* %x, align 4, !tbaa !1
  %cmp68 = icmp sgt i32 %81, 0
  br i1 %cmp68, label %for.body.70, label %for.end.112

for.body.70:                                      ; preds = %for.cond.67
  %82 = load i32, i32* %e_forward, align 4, !tbaa !1
  %83 = load i32*, i32** %errors, align 8, !tbaa !5
  %84 = load i32, i32* %83, align 4, !tbaa !1
  %add71 = add nsw i32 %82, %84
  %85 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx72 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx72, align 1, !tbaa !39
  %conv73 = zext i8 %86 to i32
  %add74 = add nsw i32 %add71, %conv73
  %87 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx75 = getelementptr inbounds i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx75, align 1, !tbaa !39
  %conv76 = zext i8 %88 to i32
  %add77 = add nsw i32 %add74, %conv76
  %89 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom78 = sext i32 %89 to i64
  %90 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx79 = getelementptr inbounds i8, i8* %90, i64 %idxprom78
  %91 = load i8, i8* %arrayidx79, align 1, !tbaa !39
  %conv80 = zext i8 %91 to i32
  %add81 = add nsw i32 %add77, %conv80
  %92 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add82 = add nsw i32 %92, 1
  %idxprom83 = sext i32 %add82 to i64
  %93 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx84 = getelementptr inbounds i8, i8* %93, i64 %idxprom83
  %94 = load i8, i8* %arrayidx84, align 1, !tbaa !39
  %conv85 = zext i8 %94 to i32
  %add86 = add nsw i32 %add81, %conv85
  store i32 %add86, i32* %value, align 4, !tbaa !1
  %95 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr87 = getelementptr inbounds i8, i8* %95, i64 -2
  store i8* %add.ptr87, i8** %inp, align 8, !tbaa !5
  %96 = load i32, i32* %value, align 4, !tbaa !1
  %cmp88 = icmp sge i32 %96, 512
  br i1 %cmp88, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %for.body.70
  %97 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr91 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %incdec.ptr91, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %97, align 1, !tbaa !39
  %98 = load i32, i32* %value, align 4, !tbaa !1
  %sub92 = sub nsw i32 %98, 1020
  store i32 %sub92, i32* %value, align 4, !tbaa !1
  br label %if.end.95

if.else.93:                                       ; preds = %for.body.70
  %99 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr94 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %incdec.ptr94, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %99, align 1, !tbaa !39
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.90
  %100 = load i32, i32* %value, align 4, !tbaa !1
  %mul96 = mul nsw i32 %100, 7
  %div97 = sdiv i32 %mul96, 16
  store i32 %div97, i32* %e_forward, align 4, !tbaa !1
  %101 = load i32, i32* %value, align 4, !tbaa !1
  %mul98 = mul nsw i32 %101, 3
  %div99 = sdiv i32 %mul98, 16
  store i32 %div99, i32* %e_downleft, align 4, !tbaa !1
  %102 = load i32, i32* %value, align 4, !tbaa !1
  %mul100 = mul nsw i32 %102, 5
  %div101 = sdiv i32 %mul100, 16
  store i32 %div101, i32* %e_down, align 4, !tbaa !1
  %103 = load i32, i32* %e_forward, align 4, !tbaa !1
  %104 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add102 = add nsw i32 %103, %104
  %105 = load i32, i32* %e_down, align 4, !tbaa !1
  %add103 = add nsw i32 %add102, %105
  %106 = load i32, i32* %value, align 4, !tbaa !1
  %sub104 = sub nsw i32 %106, %add103
  store i32 %sub104, i32* %value, align 4, !tbaa !1
  %107 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %108 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx105 = getelementptr inbounds i32, i32* %108, i64 2
  %109 = load i32, i32* %arrayidx105, align 4, !tbaa !1
  %add106 = add nsw i32 %109, %107
  store i32 %add106, i32* %arrayidx105, align 4, !tbaa !1
  %110 = load i32, i32* %e_down, align 4, !tbaa !1
  %111 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx107 = getelementptr inbounds i32, i32* %111, i64 1
  %112 = load i32, i32* %arrayidx107, align 4, !tbaa !1
  %add108 = add nsw i32 %112, %110
  store i32 %add108, i32* %arrayidx107, align 4, !tbaa !1
  %113 = load i32, i32* %value, align 4, !tbaa !1
  %114 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr109 = getelementptr inbounds i32, i32* %114, i32 -1
  store i32* %incdec.ptr109, i32** %errors, align 8, !tbaa !5
  store i32 %113, i32* %114, align 4, !tbaa !1
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.95
  %115 = load i32, i32* %x, align 4, !tbaa !1
  %dec111 = add nsw i32 %115, -1
  store i32 %dec111, i32* %x, align 4, !tbaa !1
  br label %for.cond.67

for.end.112:                                      ; preds = %for.cond.67
  %116 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr113 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %incdec.ptr113, i8** %outp, align 8, !tbaa !5
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.112, %for.end.57
  %117 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %118 = load i8*, i8** %outp, align 8, !tbaa !5
  %119 = load i32, i32* %awidth, align 4, !tbaa !1
  call void @pack_8to1(i8* %117, i8* %118, i32 %119) #4
  %120 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %131) #1
  %132 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %132) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core_1(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %value = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %errors = alloca i32*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %5 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %9, i32 0, i32 1
  %10 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %10, i32* %width, align 4, !tbaa !1
  %11 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 2
  %13 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %13, i32* %awidth, align 4, !tbaa !1
  %14 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 7
  %16 = load i32*, i32** %errors3, align 8, !tbaa !38
  %17 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %17, 3
  %18 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %add, %18
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %16, i64 %idx.ext
  store i32* %add.ptr, i32** %errors, align 8, !tbaa !5
  %19 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %19) #1
  store i32 128, i32* %threshold, align 4, !tbaa !1
  %20 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %20) #1
  store i32 255, i32* %max_value, align 4, !tbaa !1
  %21 = load i32, i32* %awidth, align 4, !tbaa !1
  %22 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %21, %22
  store i32 %sub, i32* %pad_white, align 4, !tbaa !1
  %23 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %23, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %24 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %25 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %26 = load i32, i32* %width, align 4, !tbaa !1
  %idx.ext5 = sext i32 %26 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %25, i64 %idx.ext5
  %27 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %27 to i64
  %call = call i8* @memset(i8* %add.ptr6, i32 255, i64 %conv) #5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %28 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %28, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %29, 1
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %if.then.10, label %if.else.38

if.then.10:                                       ; preds = %if.end.7
  %30 = load i32*, i32** %errors, align 8, !tbaa !5
  %add.ptr11 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %add.ptr11, i32** %errors, align 8, !tbaa !5
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %31, i8** %outp, align 8, !tbaa !5
  %32 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %32, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %33 = load i32, i32* %x, align 4, !tbaa !1
  %cmp12 = icmp sgt i32 %33, 0
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %e_forward, align 4, !tbaa !1
  %35 = load i32*, i32** %errors, align 8, !tbaa !5
  %36 = load i32, i32* %35, align 4, !tbaa !1
  %add14 = add nsw i32 %34, %36
  %37 = load i8*, i8** %inp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8, !tbaa !5
  %38 = load i8, i8* %37, align 1, !tbaa !39
  %conv15 = zext i8 %38 to i32
  %add16 = add nsw i32 %add14, %conv15
  store i32 %add16, i32* %value, align 4, !tbaa !1
  %39 = load i32, i32* %value, align 4, !tbaa !1
  %cmp17 = icmp sge i32 %39, 128
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.body
  %40 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr20, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %40, align 1, !tbaa !39
  %41 = load i32, i32* %value, align 4, !tbaa !1
  %sub21 = sub nsw i32 %41, 255
  store i32 %sub21, i32* %value, align 4, !tbaa !1
  br label %if.end.23

if.else:                                          ; preds = %for.body
  %42 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr22, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %42, align 1, !tbaa !39
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.19
  %43 = load i32, i32* %value, align 4, !tbaa !1
  %mul24 = mul nsw i32 %43, 7
  %div = sdiv i32 %mul24, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %44 = load i32, i32* %value, align 4, !tbaa !1
  %mul25 = mul nsw i32 %44, 3
  %div26 = sdiv i32 %mul25, 16
  store i32 %div26, i32* %e_downleft, align 4, !tbaa !1
  %45 = load i32, i32* %value, align 4, !tbaa !1
  %mul27 = mul nsw i32 %45, 5
  %div28 = sdiv i32 %mul27, 16
  store i32 %div28, i32* %e_down, align 4, !tbaa !1
  %46 = load i32, i32* %e_forward, align 4, !tbaa !1
  %47 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add29 = add nsw i32 %46, %47
  %48 = load i32, i32* %e_down, align 4, !tbaa !1
  %add30 = add nsw i32 %add29, %48
  %49 = load i32, i32* %value, align 4, !tbaa !1
  %sub31 = sub nsw i32 %49, %add30
  store i32 %sub31, i32* %value, align 4, !tbaa !1
  %50 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %51 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %51, i64 -2
  %52 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %add32 = add nsw i32 %52, %50
  store i32 %add32, i32* %arrayidx, align 4, !tbaa !1
  %53 = load i32, i32* %e_down, align 4, !tbaa !1
  %54 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx33 = getelementptr inbounds i32, i32* %54, i64 -1
  %55 = load i32, i32* %arrayidx33, align 4, !tbaa !1
  %add34 = add nsw i32 %55, %53
  store i32 %add34, i32* %arrayidx33, align 4, !tbaa !1
  %56 = load i32, i32* %value, align 4, !tbaa !1
  %57 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr35 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %incdec.ptr35, i32** %errors, align 8, !tbaa !5
  store i32 %56, i32* %57, align 4, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %58 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load i32, i32* %awidth, align 4, !tbaa !1
  %60 = load i8*, i8** %outp, align 8, !tbaa !5
  %idx.ext36 = sext i32 %59 to i64
  %idx.neg = sub i64 0, %idx.ext36
  %add.ptr37 = getelementptr inbounds i8, i8* %60, i64 %idx.neg
  store i8* %add.ptr37, i8** %outp, align 8, !tbaa !5
  br label %if.end.78

if.else.38:                                       ; preds = %if.end.7
  %61 = load i32, i32* %awidth, align 4, !tbaa !1
  %62 = load i32*, i32** %errors, align 8, !tbaa !5
  %idx.ext39 = sext i32 %61 to i64
  %add.ptr40 = getelementptr inbounds i32, i32* %62, i64 %idx.ext39
  store i32* %add.ptr40, i32** %errors, align 8, !tbaa !5
  %63 = load i32, i32* %awidth, align 4, !tbaa !1
  %sub41 = sub nsw i32 %63, 1
  %64 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext42 = sext i32 %sub41 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %64, i64 %idx.ext42
  store i8* %add.ptr43, i8** %inp, align 8, !tbaa !5
  %65 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %65, i8** %outp, align 8, !tbaa !5
  %66 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %66, i32* %x, align 4, !tbaa !1
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.74, %if.else.38
  %67 = load i32, i32* %x, align 4, !tbaa !1
  %cmp45 = icmp sgt i32 %67, 0
  br i1 %cmp45, label %for.body.47, label %for.end.76

for.body.47:                                      ; preds = %for.cond.44
  %68 = load i32, i32* %e_forward, align 4, !tbaa !1
  %69 = load i32*, i32** %errors, align 8, !tbaa !5
  %70 = load i32, i32* %69, align 4, !tbaa !1
  %add48 = add nsw i32 %68, %70
  %71 = load i8*, i8** %inp, align 8, !tbaa !5
  %incdec.ptr49 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %incdec.ptr49, i8** %inp, align 8, !tbaa !5
  %72 = load i8, i8* %71, align 1, !tbaa !39
  %conv50 = zext i8 %72 to i32
  %add51 = add nsw i32 %add48, %conv50
  store i32 %add51, i32* %value, align 4, !tbaa !1
  %73 = load i32, i32* %value, align 4, !tbaa !1
  %cmp52 = icmp sge i32 %73, 128
  br i1 %cmp52, label %if.then.54, label %if.else.57

if.then.54:                                       ; preds = %for.body.47
  %74 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr55 = getelementptr inbounds i8, i8* %74, i32 -1
  store i8* %incdec.ptr55, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %74, align 1, !tbaa !39
  %75 = load i32, i32* %value, align 4, !tbaa !1
  %sub56 = sub nsw i32 %75, 255
  store i32 %sub56, i32* %value, align 4, !tbaa !1
  br label %if.end.59

if.else.57:                                       ; preds = %for.body.47
  %76 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr58 = getelementptr inbounds i8, i8* %76, i32 -1
  store i8* %incdec.ptr58, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %76, align 1, !tbaa !39
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.54
  %77 = load i32, i32* %value, align 4, !tbaa !1
  %mul60 = mul nsw i32 %77, 7
  %div61 = sdiv i32 %mul60, 16
  store i32 %div61, i32* %e_forward, align 4, !tbaa !1
  %78 = load i32, i32* %value, align 4, !tbaa !1
  %mul62 = mul nsw i32 %78, 3
  %div63 = sdiv i32 %mul62, 16
  store i32 %div63, i32* %e_downleft, align 4, !tbaa !1
  %79 = load i32, i32* %value, align 4, !tbaa !1
  %mul64 = mul nsw i32 %79, 5
  %div65 = sdiv i32 %mul64, 16
  store i32 %div65, i32* %e_down, align 4, !tbaa !1
  %80 = load i32, i32* %e_forward, align 4, !tbaa !1
  %81 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add66 = add nsw i32 %80, %81
  %82 = load i32, i32* %e_down, align 4, !tbaa !1
  %add67 = add nsw i32 %add66, %82
  %83 = load i32, i32* %value, align 4, !tbaa !1
  %sub68 = sub nsw i32 %83, %add67
  store i32 %sub68, i32* %value, align 4, !tbaa !1
  %84 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %85 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx69 = getelementptr inbounds i32, i32* %85, i64 2
  %86 = load i32, i32* %arrayidx69, align 4, !tbaa !1
  %add70 = add nsw i32 %86, %84
  store i32 %add70, i32* %arrayidx69, align 4, !tbaa !1
  %87 = load i32, i32* %e_down, align 4, !tbaa !1
  %88 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds i32, i32* %88, i64 1
  %89 = load i32, i32* %arrayidx71, align 4, !tbaa !1
  %add72 = add nsw i32 %89, %87
  store i32 %add72, i32* %arrayidx71, align 4, !tbaa !1
  %90 = load i32, i32* %value, align 4, !tbaa !1
  %91 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr73 = getelementptr inbounds i32, i32* %91, i32 -1
  store i32* %incdec.ptr73, i32** %errors, align 8, !tbaa !5
  store i32 %90, i32* %91, align 4, !tbaa !1
  br label %for.inc.74

for.inc.74:                                       ; preds = %if.end.59
  %92 = load i32, i32* %x, align 4, !tbaa !1
  %dec75 = add nsw i32 %92, -1
  store i32 %dec75, i32* %x, align 4, !tbaa !1
  br label %for.cond.44

for.end.76:                                       ; preds = %for.cond.44
  %93 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr77 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr77, i8** %outp, align 8, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.76, %for.end
  %94 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %95 = load i8*, i8** %outp, align 8, !tbaa !5
  %96 = load i32, i32* %awidth, align 4, !tbaa !1
  call void @pack_8to1(i8* %94, i8* %95, i32 %96) #4
  %97 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %97) #1
  %98 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %errors = alloca i32*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  %back = alloca i32, align 4
  %back74 = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %7 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %11, i32 0, i32 1
  %12 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %12, i32* %width, align 4, !tbaa !1
  %13 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %14, i32 0, i32 2
  %15 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %15, i32* %awidth, align 4, !tbaa !1
  %16 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %17, i32 0, i32 4
  %18 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %18, i32* %factor, align 4, !tbaa !1
  %19 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %19) #1
  %20 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors4 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %20, i32 0, i32 7
  %21 = load i32*, i32** %errors4, align 8, !tbaa !38
  %22 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %22, 3
  %23 = load i32, i32* %plane.addr, align 4, !tbaa !1
  %mul = mul nsw i32 %add, %23
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %21, i64 %idx.ext
  store i32* %add.ptr, i32** %errors, align 8, !tbaa !5
  %24 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load i32, i32* %factor, align 4, !tbaa !1
  %26 = load i32, i32* %factor, align 4, !tbaa !1
  %mul5 = mul nsw i32 %25, %26
  %mul6 = mul nsw i32 %mul5, 128
  store i32 %mul6, i32* %threshold, align 4, !tbaa !1
  %27 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %factor, align 4, !tbaa !1
  %29 = load i32, i32* %factor, align 4, !tbaa !1
  %mul7 = mul nsw i32 %28, %29
  %mul8 = mul nsw i32 %mul7, 255
  store i32 %mul8, i32* %max_value, align 4, !tbaa !1
  %30 = load i32, i32* %awidth, align 4, !tbaa !1
  %31 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %30, %31
  %32 = load i32, i32* %factor, align 4, !tbaa !1
  %mul9 = mul nsw i32 %sub, %32
  store i32 %mul9, i32* %pad_white, align 4, !tbaa !1
  %33 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %33, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end
  %35 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %36 = load i32, i32* %width, align 4, !tbaa !1
  %37 = load i32, i32* %factor, align 4, !tbaa !1
  %mul11 = mul nsw i32 %36, %37
  %idx.ext12 = sext i32 %mul11 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %35, i64 %idx.ext12
  store i8* %add.ptr13, i8** %inp, align 8, !tbaa !5
  %38 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %38, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %39 = load i32, i32* %y, align 4, !tbaa !1
  %cmp14 = icmp sgt i32 %39, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %inp, align 8, !tbaa !5
  %41 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %41 to i64
  %call = call i8* @memset(i8* %40, i32 255, i64 %conv) #5
  %42 = load i32, i32* %span.addr, align 4, !tbaa !1
  %43 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext15 = sext i32 %42 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %43, i64 %idx.ext15
  store i8* %add.ptr16, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.17

if.end.17:                                        ; preds = %for.end, %if.end
  %45 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %45, i8** %inp, align 8, !tbaa !5
  %46 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %46, 1
  %cmp18 = icmp eq i32 %and, 0
  br i1 %cmp18, label %if.then.20, label %if.else.73

if.then.20:                                       ; preds = %if.end.17
  %47 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %span.addr, align 4, !tbaa !1
  %49 = load i32, i32* %factor, align 4, !tbaa !1
  %mul21 = mul nsw i32 %48, %49
  %sub22 = sub nsw i32 %mul21, 1
  store i32 %sub22, i32* %back, align 4, !tbaa !1
  %50 = load i32*, i32** %errors, align 8, !tbaa !5
  %add.ptr23 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %add.ptr23, i32** %errors, align 8, !tbaa !5
  %51 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %51, i8** %outp, align 8, !tbaa !5
  %52 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %52, i32* %x, align 4, !tbaa !1
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.67, %if.then.20
  %53 = load i32, i32* %x, align 4, !tbaa !1
  %cmp25 = icmp sgt i32 %53, 0
  br i1 %cmp25, label %for.body.27, label %for.end.69

for.body.27:                                      ; preds = %for.cond.24
  %54 = load i32, i32* %e_forward, align 4, !tbaa !1
  %55 = load i32*, i32** %errors, align 8, !tbaa !5
  %56 = load i32, i32* %55, align 4, !tbaa !1
  %add28 = add nsw i32 %54, %56
  store i32 %add28, i32* %value, align 4, !tbaa !1
  %57 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %57, i32* %xx, align 4, !tbaa !1
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.46, %for.body.27
  %58 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp30 = icmp sgt i32 %58, 0
  br i1 %cmp30, label %for.body.32, label %for.end.48

for.body.32:                                      ; preds = %for.cond.29
  %59 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %59, i32* %y, align 4, !tbaa !1
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %for.body.32
  %60 = load i32, i32* %y, align 4, !tbaa !1
  %cmp34 = icmp sgt i32 %60, 0
  br i1 %cmp34, label %for.body.36, label %for.end.43

for.body.36:                                      ; preds = %for.cond.33
  %61 = load i8*, i8** %inp, align 8, !tbaa !5
  %62 = load i8, i8* %61, align 1, !tbaa !39
  %conv37 = zext i8 %62 to i32
  %63 = load i32, i32* %value, align 4, !tbaa !1
  %add38 = add nsw i32 %63, %conv37
  store i32 %add38, i32* %value, align 4, !tbaa !1
  %64 = load i32, i32* %span.addr, align 4, !tbaa !1
  %65 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext39 = sext i32 %64 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %65, i64 %idx.ext39
  store i8* %add.ptr40, i8** %inp, align 8, !tbaa !5
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.36
  %66 = load i32, i32* %y, align 4, !tbaa !1
  %dec42 = add nsw i32 %66, -1
  store i32 %dec42, i32* %y, align 4, !tbaa !1
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  %67 = load i32, i32* %back, align 4, !tbaa !1
  %68 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext44 = sext i32 %67 to i64
  %idx.neg = sub i64 0, %idx.ext44
  %add.ptr45 = getelementptr inbounds i8, i8* %68, i64 %idx.neg
  store i8* %add.ptr45, i8** %inp, align 8, !tbaa !5
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.43
  %69 = load i32, i32* %xx, align 4, !tbaa !1
  %dec47 = add nsw i32 %69, -1
  store i32 %dec47, i32* %xx, align 4, !tbaa !1
  br label %for.cond.29

for.end.48:                                       ; preds = %for.cond.29
  %70 = load i32, i32* %value, align 4, !tbaa !1
  %71 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp49 = icmp sge i32 %70, %71
  br i1 %cmp49, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %for.end.48
  %72 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %72, align 1, !tbaa !39
  %73 = load i32, i32* %max_value, align 4, !tbaa !1
  %74 = load i32, i32* %value, align 4, !tbaa !1
  %sub52 = sub nsw i32 %74, %73
  store i32 %sub52, i32* %value, align 4, !tbaa !1
  br label %if.end.54

if.else:                                          ; preds = %for.end.48
  %75 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr53 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr53, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %75, align 1, !tbaa !39
  br label %if.end.54

if.end.54:                                        ; preds = %if.else, %if.then.51
  %76 = load i32, i32* %value, align 4, !tbaa !1
  %mul55 = mul nsw i32 %76, 7
  %div = sdiv i32 %mul55, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %77 = load i32, i32* %value, align 4, !tbaa !1
  %mul56 = mul nsw i32 %77, 3
  %div57 = sdiv i32 %mul56, 16
  store i32 %div57, i32* %e_downleft, align 4, !tbaa !1
  %78 = load i32, i32* %value, align 4, !tbaa !1
  %mul58 = mul nsw i32 %78, 5
  %div59 = sdiv i32 %mul58, 16
  store i32 %div59, i32* %e_down, align 4, !tbaa !1
  %79 = load i32, i32* %e_forward, align 4, !tbaa !1
  %80 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add60 = add nsw i32 %79, %80
  %81 = load i32, i32* %e_down, align 4, !tbaa !1
  %add61 = add nsw i32 %add60, %81
  %82 = load i32, i32* %value, align 4, !tbaa !1
  %sub62 = sub nsw i32 %82, %add61
  store i32 %sub62, i32* %value, align 4, !tbaa !1
  %83 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %84 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %84, i64 -2
  %85 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %add63 = add nsw i32 %85, %83
  store i32 %add63, i32* %arrayidx, align 4, !tbaa !1
  %86 = load i32, i32* %e_down, align 4, !tbaa !1
  %87 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx64 = getelementptr inbounds i32, i32* %87, i64 -1
  %88 = load i32, i32* %arrayidx64, align 4, !tbaa !1
  %add65 = add nsw i32 %88, %86
  store i32 %add65, i32* %arrayidx64, align 4, !tbaa !1
  %89 = load i32, i32* %value, align 4, !tbaa !1
  %90 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr66 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %incdec.ptr66, i32** %errors, align 8, !tbaa !5
  store i32 %89, i32* %90, align 4, !tbaa !1
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.54
  %91 = load i32, i32* %x, align 4, !tbaa !1
  %dec68 = add nsw i32 %91, -1
  store i32 %dec68, i32* %x, align 4, !tbaa !1
  br label %for.cond.24

for.end.69:                                       ; preds = %for.cond.24
  %92 = load i32, i32* %awidth, align 4, !tbaa !1
  %93 = load i8*, i8** %outp, align 8, !tbaa !5
  %idx.ext70 = sext i32 %92 to i64
  %idx.neg71 = sub i64 0, %idx.ext70
  %add.ptr72 = getelementptr inbounds i8, i8* %93, i64 %idx.neg71
  store i8* %add.ptr72, i8** %outp, align 8, !tbaa !5
  %94 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %94) #1
  br label %if.end.135

if.else.73:                                       ; preds = %if.end.17
  %95 = bitcast i32* %back74 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %95) #1
  %96 = load i32, i32* %span.addr, align 4, !tbaa !1
  %97 = load i32, i32* %factor, align 4, !tbaa !1
  %mul75 = mul nsw i32 %96, %97
  %add76 = add nsw i32 %mul75, 1
  store i32 %add76, i32* %back74, align 4, !tbaa !1
  %98 = load i32, i32* %awidth, align 4, !tbaa !1
  %99 = load i32*, i32** %errors, align 8, !tbaa !5
  %idx.ext77 = sext i32 %98 to i64
  %add.ptr78 = getelementptr inbounds i32, i32* %99, i64 %idx.ext77
  store i32* %add.ptr78, i32** %errors, align 8, !tbaa !5
  %100 = load i32, i32* %awidth, align 4, !tbaa !1
  %101 = load i32, i32* %factor, align 4, !tbaa !1
  %mul79 = mul nsw i32 %100, %101
  %sub80 = sub nsw i32 %mul79, 1
  %102 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext81 = sext i32 %sub80 to i64
  %add.ptr82 = getelementptr inbounds i8, i8* %102, i64 %idx.ext81
  store i8* %add.ptr82, i8** %inp, align 8, !tbaa !5
  %103 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %103, i8** %outp, align 8, !tbaa !5
  %104 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %104, i32* %x, align 4, !tbaa !1
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.131, %if.else.73
  %105 = load i32, i32* %x, align 4, !tbaa !1
  %cmp84 = icmp sgt i32 %105, 0
  br i1 %cmp84, label %for.body.86, label %for.end.133

for.body.86:                                      ; preds = %for.cond.83
  %106 = load i32, i32* %e_forward, align 4, !tbaa !1
  %107 = load i32*, i32** %errors, align 8, !tbaa !5
  %108 = load i32, i32* %107, align 4, !tbaa !1
  %add87 = add nsw i32 %106, %108
  store i32 %add87, i32* %value, align 4, !tbaa !1
  %109 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %109, i32* %xx, align 4, !tbaa !1
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.106, %for.body.86
  %110 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp89 = icmp sgt i32 %110, 0
  br i1 %cmp89, label %for.body.91, label %for.end.108

for.body.91:                                      ; preds = %for.cond.88
  %111 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %111, i32* %y, align 4, !tbaa !1
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.100, %for.body.91
  %112 = load i32, i32* %y, align 4, !tbaa !1
  %cmp93 = icmp sgt i32 %112, 0
  br i1 %cmp93, label %for.body.95, label %for.end.102

for.body.95:                                      ; preds = %for.cond.92
  %113 = load i8*, i8** %inp, align 8, !tbaa !5
  %114 = load i8, i8* %113, align 1, !tbaa !39
  %conv96 = zext i8 %114 to i32
  %115 = load i32, i32* %value, align 4, !tbaa !1
  %add97 = add nsw i32 %115, %conv96
  store i32 %add97, i32* %value, align 4, !tbaa !1
  %116 = load i32, i32* %span.addr, align 4, !tbaa !1
  %117 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext98 = sext i32 %116 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %117, i64 %idx.ext98
  store i8* %add.ptr99, i8** %inp, align 8, !tbaa !5
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.95
  %118 = load i32, i32* %y, align 4, !tbaa !1
  %dec101 = add nsw i32 %118, -1
  store i32 %dec101, i32* %y, align 4, !tbaa !1
  br label %for.cond.92

for.end.102:                                      ; preds = %for.cond.92
  %119 = load i32, i32* %back74, align 4, !tbaa !1
  %120 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext103 = sext i32 %119 to i64
  %idx.neg104 = sub i64 0, %idx.ext103
  %add.ptr105 = getelementptr inbounds i8, i8* %120, i64 %idx.neg104
  store i8* %add.ptr105, i8** %inp, align 8, !tbaa !5
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.102
  %121 = load i32, i32* %xx, align 4, !tbaa !1
  %dec107 = add nsw i32 %121, -1
  store i32 %dec107, i32* %xx, align 4, !tbaa !1
  br label %for.cond.88

for.end.108:                                      ; preds = %for.cond.88
  %122 = load i32, i32* %value, align 4, !tbaa !1
  %123 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp109 = icmp sge i32 %122, %123
  br i1 %cmp109, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %for.end.108
  %124 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr112 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %incdec.ptr112, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %124, align 1, !tbaa !39
  %125 = load i32, i32* %max_value, align 4, !tbaa !1
  %126 = load i32, i32* %value, align 4, !tbaa !1
  %sub113 = sub nsw i32 %126, %125
  store i32 %sub113, i32* %value, align 4, !tbaa !1
  br label %if.end.116

if.else.114:                                      ; preds = %for.end.108
  %127 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr115 = getelementptr inbounds i8, i8* %127, i32 -1
  store i8* %incdec.ptr115, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %127, align 1, !tbaa !39
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.114, %if.then.111
  %128 = load i32, i32* %value, align 4, !tbaa !1
  %mul117 = mul nsw i32 %128, 7
  %div118 = sdiv i32 %mul117, 16
  store i32 %div118, i32* %e_forward, align 4, !tbaa !1
  %129 = load i32, i32* %value, align 4, !tbaa !1
  %mul119 = mul nsw i32 %129, 3
  %div120 = sdiv i32 %mul119, 16
  store i32 %div120, i32* %e_downleft, align 4, !tbaa !1
  %130 = load i32, i32* %value, align 4, !tbaa !1
  %mul121 = mul nsw i32 %130, 5
  %div122 = sdiv i32 %mul121, 16
  store i32 %div122, i32* %e_down, align 4, !tbaa !1
  %131 = load i32, i32* %e_forward, align 4, !tbaa !1
  %132 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add123 = add nsw i32 %131, %132
  %133 = load i32, i32* %e_down, align 4, !tbaa !1
  %add124 = add nsw i32 %add123, %133
  %134 = load i32, i32* %value, align 4, !tbaa !1
  %sub125 = sub nsw i32 %134, %add124
  store i32 %sub125, i32* %value, align 4, !tbaa !1
  %135 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %136 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx126 = getelementptr inbounds i32, i32* %136, i64 2
  %137 = load i32, i32* %arrayidx126, align 4, !tbaa !1
  %add127 = add nsw i32 %137, %135
  store i32 %add127, i32* %arrayidx126, align 4, !tbaa !1
  %138 = load i32, i32* %e_down, align 4, !tbaa !1
  %139 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx128 = getelementptr inbounds i32, i32* %139, i64 1
  %140 = load i32, i32* %arrayidx128, align 4, !tbaa !1
  %add129 = add nsw i32 %140, %138
  store i32 %add129, i32* %arrayidx128, align 4, !tbaa !1
  %141 = load i32, i32* %value, align 4, !tbaa !1
  %142 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr130 = getelementptr inbounds i32, i32* %142, i32 -1
  store i32* %incdec.ptr130, i32** %errors, align 8, !tbaa !5
  store i32 %141, i32* %142, align 4, !tbaa !1
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.116
  %143 = load i32, i32* %x, align 4, !tbaa !1
  %dec132 = add nsw i32 %143, -1
  store i32 %dec132, i32* %x, align 4, !tbaa !1
  br label %for.cond.83

for.end.133:                                      ; preds = %for.cond.83
  %144 = load i8*, i8** %outp, align 8, !tbaa !5
  %incdec.ptr134 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr134, i8** %outp, align 8, !tbaa !5
  %145 = bitcast i32* %back74 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %145) #1
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.133, %for.end.69
  %146 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %147 = load i8*, i8** %outp, align 8, !tbaa !5
  %148 = load i32, i32* %awidth, align 4, !tbaa !1
  call void @pack_8to1(i8* %146, i8* %147, i32 %148) #4
  %149 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %149) #1
  %150 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %150) #1
  %151 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %152) #1
  %153 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %153) #1
  %154 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %154) #1
  %155 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %157) #1
  %158 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %158) #1
  %159 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %159) #1
  %160 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %160) #1
  %161 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %161) #1
  %162 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  %163 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %163) #1
  %164 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %164) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core16(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %div = alloca i32, align 4
  %back = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %8, i32* %width, align 4, !tbaa !1
  %9 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %10, i32 0, i32 2
  %11 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %11, i32* %awidth, align 4, !tbaa !1
  %12 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %13, i32 0, i32 4
  %14 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %14, i32* %factor, align 4, !tbaa !1
  %15 = bitcast i32* %div to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %factor, align 4, !tbaa !1
  %17 = load i32, i32* %factor, align 4, !tbaa !1
  %mul = mul nsw i32 %16, %17
  store i32 %mul, i32* %div, align 4, !tbaa !1
  %18 = load i32, i32* %awidth, align 4, !tbaa !1
  %19 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %18, %19
  %20 = load i32, i32* %factor, align 4, !tbaa !1
  %mul4 = mul nsw i32 %sub, %20
  store i32 %mul4, i32* %pad_white, align 4, !tbaa !1
  %21 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end
  %23 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %24 = load i32, i32* %width, align 4, !tbaa !1
  %mul6 = mul nsw i32 %24, 2
  %25 = load i32, i32* %factor, align 4, !tbaa !1
  %mul7 = mul nsw i32 %mul6, %25
  %idx.ext = sext i32 %mul7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  %26 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %26, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %27 = load i32, i32* %y, align 4, !tbaa !1
  %cmp8 = icmp sgt i32 %27, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %mul9 = mul nsw i32 %29, 2
  %conv = sext i32 %mul9 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext10 = sext i32 %30 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %31, i64 %idx.ext10
  store i8* %add.ptr11, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %span.addr, align 4, !tbaa !1
  %36 = load i32, i32* %factor, align 4, !tbaa !1
  %mul13 = mul nsw i32 %35, %36
  %sub14 = sub nsw i32 %mul13, 2
  store i32 %sub14, i32* %back, align 4, !tbaa !1
  %37 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %37, i32* %x, align 4, !tbaa !1
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.49, %if.end.12
  %38 = load i32, i32* %x, align 4, !tbaa !1
  %cmp16 = icmp sgt i32 %38, 0
  br i1 %cmp16, label %for.body.18, label %for.end.51

for.body.18:                                      ; preds = %for.cond.15
  store i32 0, i32* %value, align 4, !tbaa !1
  %39 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %39, i32* %xx, align 4, !tbaa !1
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.38, %for.body.18
  %40 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp20 = icmp sgt i32 %40, 0
  br i1 %cmp20, label %for.body.22, label %for.end.40

for.body.22:                                      ; preds = %for.cond.19
  %41 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %41, i32* %y, align 4, !tbaa !1
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.body.22
  %42 = load i32, i32* %y, align 4, !tbaa !1
  %cmp24 = icmp sgt i32 %42, 0
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %43 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv27 = zext i8 %44 to i32
  %shl = shl i32 %conv27, 8
  %45 = load i32, i32* %value, align 4, !tbaa !1
  %add = add nsw i32 %45, %shl
  store i32 %add, i32* %value, align 4, !tbaa !1
  %46 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx28 = getelementptr inbounds i8, i8* %46, i64 1
  %47 = load i8, i8* %arrayidx28, align 1, !tbaa !39
  %conv29 = zext i8 %47 to i32
  %48 = load i32, i32* %value, align 4, !tbaa !1
  %add30 = add nsw i32 %48, %conv29
  store i32 %add30, i32* %value, align 4, !tbaa !1
  %49 = load i32, i32* %span.addr, align 4, !tbaa !1
  %50 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext31 = sext i32 %49 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %50, i64 %idx.ext31
  store i8* %add.ptr32, i8** %inp, align 8, !tbaa !5
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %51 = load i32, i32* %y, align 4, !tbaa !1
  %dec34 = add nsw i32 %51, -1
  store i32 %dec34, i32* %y, align 4, !tbaa !1
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  %52 = load i32, i32* %back, align 4, !tbaa !1
  %53 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext36 = sext i32 %52 to i64
  %idx.neg = sub i64 0, %idx.ext36
  %add.ptr37 = getelementptr inbounds i8, i8* %53, i64 %idx.neg
  store i8* %add.ptr37, i8** %inp, align 8, !tbaa !5
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.35
  %54 = load i32, i32* %xx, align 4, !tbaa !1
  %dec39 = add nsw i32 %54, -1
  store i32 %dec39, i32* %xx, align 4, !tbaa !1
  br label %for.cond.19

for.end.40:                                       ; preds = %for.cond.19
  %55 = load i32, i32* %value, align 4, !tbaa !1
  %56 = load i32, i32* %div, align 4, !tbaa !1
  %shr = ashr i32 %56, 1
  %add41 = add nsw i32 %55, %shr
  %57 = load i32, i32* %div, align 4, !tbaa !1
  %div42 = sdiv i32 %add41, %57
  store i32 %div42, i32* %value, align 4, !tbaa !1
  %58 = load i32, i32* %value, align 4, !tbaa !1
  %shr43 = ashr i32 %58, 8
  %conv44 = trunc i32 %shr43 to i8
  %59 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx45 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %conv44, i8* %arrayidx45, align 1, !tbaa !39
  %60 = load i32, i32* %value, align 4, !tbaa !1
  %conv46 = trunc i32 %60 to i8
  %61 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %arrayidx47 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 %conv46, i8* %arrayidx47, align 1, !tbaa !39
  %62 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %add.ptr48 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %add.ptr48, i8** %outp.addr, align 8, !tbaa !5
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.40
  %63 = load i32, i32* %x, align 4, !tbaa !1
  %dec50 = add nsw i32 %63, -1
  store i32 %dec50, i32* %x, align 4, !tbaa !1
  br label %for.cond.15

for.end.51:                                       ; preds = %for.cond.15
  %64 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %div to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  %69 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core8_4(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 1
  %5 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %5, i32* %width, align 4, !tbaa !1
  %6 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 2
  %8 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %8, i32* %awidth, align 4, !tbaa !1
  %9 = load i32, i32* %awidth, align 4, !tbaa !1
  %10 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %9, %10
  %mul = mul nsw i32 %sub, 4
  store i32 %mul, i32* %pad_white, align 4, !tbaa !1
  %11 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %13 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %14 = load i32, i32* %width, align 4, !tbaa !1
  %mul4 = mul nsw i32 %14, 4
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  store i32 4, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %15 = load i32, i32* %x, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %15, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %inp, align 8, !tbaa !5
  %17 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %17 to i64
  %call = call i8* @memset(i8* %16, i32 255, i64 %conv) #5
  %18 = load i32, i32* %span.addr, align 4, !tbaa !1
  %19 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext6 = sext i32 %18 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 %idx.ext6
  store i8* %add.ptr7, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.end
  %21 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %21, i8** %inp, align 8, !tbaa !5
  %22 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %22, i32* %x, align 4, !tbaa !1
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.89, %if.end.8
  %23 = load i32, i32* %x, align 4, !tbaa !1
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %for.body.12, label %for.end.91

for.body.12:                                      ; preds = %for.cond.9
  %24 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv13 = zext i8 %25 to i32
  %26 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx14, align 1, !tbaa !39
  %conv15 = zext i8 %27 to i32
  %add = add nsw i32 %conv13, %conv15
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %29 to i32
  %add18 = add nsw i32 %add, %conv17
  %30 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i8, i8* %30, i64 3
  %31 = load i8, i8* %arrayidx19, align 1, !tbaa !39
  %conv20 = zext i8 %31 to i32
  %add21 = add nsw i32 %add18, %conv20
  %32 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom = sext i32 %32 to i64
  %33 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx22 = getelementptr inbounds i8, i8* %33, i64 %idxprom
  %34 = load i8, i8* %arrayidx22, align 1, !tbaa !39
  %conv23 = zext i8 %34 to i32
  %add24 = add nsw i32 %add21, %conv23
  %35 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add25 = add nsw i32 %35, 1
  %idxprom26 = sext i32 %add25 to i64
  %36 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 %idxprom26
  %37 = load i8, i8* %arrayidx27, align 1, !tbaa !39
  %conv28 = zext i8 %37 to i32
  %add29 = add nsw i32 %add24, %conv28
  %38 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add30 = add nsw i32 %38, 2
  %idxprom31 = sext i32 %add30 to i64
  %39 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx32 = getelementptr inbounds i8, i8* %39, i64 %idxprom31
  %40 = load i8, i8* %arrayidx32, align 1, !tbaa !39
  %conv33 = zext i8 %40 to i32
  %add34 = add nsw i32 %add29, %conv33
  %41 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add35 = add nsw i32 %41, 3
  %idxprom36 = sext i32 %add35 to i64
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx37 = getelementptr inbounds i8, i8* %42, i64 %idxprom36
  %43 = load i8, i8* %arrayidx37, align 1, !tbaa !39
  %conv38 = zext i8 %43 to i32
  %add39 = add nsw i32 %add34, %conv38
  %44 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul40 = mul nsw i32 %44, 2
  %idxprom41 = sext i32 %mul40 to i64
  %45 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  %46 = load i8, i8* %arrayidx42, align 1, !tbaa !39
  %conv43 = zext i8 %46 to i32
  %add44 = add nsw i32 %add39, %conv43
  %47 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul45 = mul nsw i32 %47, 2
  %add46 = add nsw i32 %mul45, 1
  %idxprom47 = sext i32 %add46 to i64
  %48 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx48 = getelementptr inbounds i8, i8* %48, i64 %idxprom47
  %49 = load i8, i8* %arrayidx48, align 1, !tbaa !39
  %conv49 = zext i8 %49 to i32
  %add50 = add nsw i32 %add44, %conv49
  %50 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul51 = mul nsw i32 %50, 2
  %add52 = add nsw i32 %mul51, 2
  %idxprom53 = sext i32 %add52 to i64
  %51 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx54 = getelementptr inbounds i8, i8* %51, i64 %idxprom53
  %52 = load i8, i8* %arrayidx54, align 1, !tbaa !39
  %conv55 = zext i8 %52 to i32
  %add56 = add nsw i32 %add50, %conv55
  %53 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul57 = mul nsw i32 %53, 2
  %add58 = add nsw i32 %mul57, 3
  %idxprom59 = sext i32 %add58 to i64
  %54 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx60 = getelementptr inbounds i8, i8* %54, i64 %idxprom59
  %55 = load i8, i8* %arrayidx60, align 1, !tbaa !39
  %conv61 = zext i8 %55 to i32
  %add62 = add nsw i32 %add56, %conv61
  %56 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul63 = mul nsw i32 %56, 3
  %idxprom64 = sext i32 %mul63 to i64
  %57 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx65 = getelementptr inbounds i8, i8* %57, i64 %idxprom64
  %58 = load i8, i8* %arrayidx65, align 1, !tbaa !39
  %conv66 = zext i8 %58 to i32
  %add67 = add nsw i32 %add62, %conv66
  %59 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul68 = mul nsw i32 %59, 3
  %add69 = add nsw i32 %mul68, 1
  %idxprom70 = sext i32 %add69 to i64
  %60 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx71 = getelementptr inbounds i8, i8* %60, i64 %idxprom70
  %61 = load i8, i8* %arrayidx71, align 1, !tbaa !39
  %conv72 = zext i8 %61 to i32
  %add73 = add nsw i32 %add67, %conv72
  %62 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul74 = mul nsw i32 %62, 3
  %add75 = add nsw i32 %mul74, 2
  %idxprom76 = sext i32 %add75 to i64
  %63 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx77 = getelementptr inbounds i8, i8* %63, i64 %idxprom76
  %64 = load i8, i8* %arrayidx77, align 1, !tbaa !39
  %conv78 = zext i8 %64 to i32
  %add79 = add nsw i32 %add73, %conv78
  %65 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul80 = mul nsw i32 %65, 3
  %add81 = add nsw i32 %mul80, 3
  %idxprom82 = sext i32 %add81 to i64
  %66 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx83 = getelementptr inbounds i8, i8* %66, i64 %idxprom82
  %67 = load i8, i8* %arrayidx83, align 1, !tbaa !39
  %conv84 = zext i8 %67 to i32
  %add85 = add nsw i32 %add79, %conv84
  %add86 = add nsw i32 %add85, 8
  %shr = ashr i32 %add86, 4
  %conv87 = trunc i32 %shr to i8
  %68 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv87, i8* %68, align 1, !tbaa !39
  %69 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr88 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %add.ptr88, i8** %inp, align 8, !tbaa !5
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.body.12
  %70 = load i32, i32* %x, align 4, !tbaa !1
  %dec90 = add nsw i32 %70, -1
  store i32 %dec90, i32* %x, align 4, !tbaa !1
  br label %for.cond.9

for.end.91:                                       ; preds = %for.cond.9
  %71 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core8_3(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 1
  %5 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %5, i32* %width, align 4, !tbaa !1
  %6 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 2
  %8 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %8, i32* %awidth, align 4, !tbaa !1
  %9 = load i32, i32* %awidth, align 4, !tbaa !1
  %10 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %9, %10
  %mul = mul nsw i32 %sub, 3
  store i32 %mul, i32* %pad_white, align 4, !tbaa !1
  %11 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %13 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %14 = load i32, i32* %width, align 4, !tbaa !1
  %mul4 = mul nsw i32 %14, 3
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  store i32 3, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %15 = load i32, i32* %x, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %15, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %inp, align 8, !tbaa !5
  %17 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %17 to i64
  %call = call i8* @memset(i8* %16, i32 255, i64 %conv) #5
  %18 = load i32, i32* %span.addr, align 4, !tbaa !1
  %19 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext6 = sext i32 %18 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 %idx.ext6
  store i8* %add.ptr7, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.end
  %21 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %21, i8** %inp, align 8, !tbaa !5
  %22 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %22, i32* %x, align 4, !tbaa !1
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.52, %if.end.8
  %23 = load i32, i32* %x, align 4, !tbaa !1
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %for.body.12, label %for.end.54

for.body.12:                                      ; preds = %for.cond.9
  %24 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv13 = zext i8 %25 to i32
  %26 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx14, align 1, !tbaa !39
  %conv15 = zext i8 %27 to i32
  %add = add nsw i32 %conv13, %conv15
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %28, i64 2
  %29 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %29 to i32
  %add18 = add nsw i32 %add, %conv17
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom = sext i32 %30 to i64
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx19 = getelementptr inbounds i8, i8* %31, i64 %idxprom
  %32 = load i8, i8* %arrayidx19, align 1, !tbaa !39
  %conv20 = zext i8 %32 to i32
  %add21 = add nsw i32 %add18, %conv20
  %33 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add22 = add nsw i32 %33, 1
  %idxprom23 = sext i32 %add22 to i64
  %34 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx24 = getelementptr inbounds i8, i8* %34, i64 %idxprom23
  %35 = load i8, i8* %arrayidx24, align 1, !tbaa !39
  %conv25 = zext i8 %35 to i32
  %add26 = add nsw i32 %add21, %conv25
  %36 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add27 = add nsw i32 %36, 2
  %idxprom28 = sext i32 %add27 to i64
  %37 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx29 = getelementptr inbounds i8, i8* %37, i64 %idxprom28
  %38 = load i8, i8* %arrayidx29, align 1, !tbaa !39
  %conv30 = zext i8 %38 to i32
  %add31 = add nsw i32 %add26, %conv30
  %39 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul32 = mul nsw i32 %39, 2
  %idxprom33 = sext i32 %mul32 to i64
  %40 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx34 = getelementptr inbounds i8, i8* %40, i64 %idxprom33
  %41 = load i8, i8* %arrayidx34, align 1, !tbaa !39
  %conv35 = zext i8 %41 to i32
  %add36 = add nsw i32 %add31, %conv35
  %42 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul37 = mul nsw i32 %42, 2
  %add38 = add nsw i32 %mul37, 1
  %idxprom39 = sext i32 %add38 to i64
  %43 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx40 = getelementptr inbounds i8, i8* %43, i64 %idxprom39
  %44 = load i8, i8* %arrayidx40, align 1, !tbaa !39
  %conv41 = zext i8 %44 to i32
  %add42 = add nsw i32 %add36, %conv41
  %45 = load i32, i32* %span.addr, align 4, !tbaa !1
  %mul43 = mul nsw i32 %45, 2
  %add44 = add nsw i32 %mul43, 2
  %idxprom45 = sext i32 %add44 to i64
  %46 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx46 = getelementptr inbounds i8, i8* %46, i64 %idxprom45
  %47 = load i8, i8* %arrayidx46, align 1, !tbaa !39
  %conv47 = zext i8 %47 to i32
  %add48 = add nsw i32 %add42, %conv47
  %add49 = add nsw i32 %add48, 4
  %div = sdiv i32 %add49, 9
  %conv50 = trunc i32 %div to i8
  %48 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv50, i8* %48, align 1, !tbaa !39
  %49 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr51 = getelementptr inbounds i8, i8* %49, i64 3
  store i8* %add.ptr51, i8** %inp, align 8, !tbaa !5
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.12
  %50 = load i32, i32* %x, align 4, !tbaa !1
  %dec53 = add nsw i32 %50, -1
  store i32 %dec53, i32* %x, align 4, !tbaa !1
  br label %for.cond.9

for.end.54:                                       ; preds = %for.cond.9
  %51 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core8_2(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 1
  %5 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %5, i32* %width, align 4, !tbaa !1
  %6 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 2
  %8 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %8, i32* %awidth, align 4, !tbaa !1
  %9 = load i32, i32* %awidth, align 4, !tbaa !1
  %10 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %9, %10
  %mul = mul nsw i32 %sub, 2
  store i32 %mul, i32* %pad_white, align 4, !tbaa !1
  %11 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %if.end
  %13 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %14 = load i32, i32* %width, align 4, !tbaa !1
  %mul4 = mul nsw i32 %14, 2
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  store i32 2, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %15 = load i32, i32* %x, align 4, !tbaa !1
  %cmp5 = icmp sgt i32 %15, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8*, i8** %inp, align 8, !tbaa !5
  %17 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %17 to i64
  %call = call i8* @memset(i8* %16, i32 255, i64 %conv) #5
  %18 = load i32, i32* %span.addr, align 4, !tbaa !1
  %19 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext6 = sext i32 %18 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %19, i64 %idx.ext6
  store i8* %add.ptr7, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %x, align 4, !tbaa !1
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %x, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.end
  %21 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %21, i8** %inp, align 8, !tbaa !5
  %22 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %22, i32* %x, align 4, !tbaa !1
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.27, %if.end.8
  %23 = load i32, i32* %x, align 4, !tbaa !1
  %cmp10 = icmp sgt i32 %23, 0
  br i1 %cmp10, label %for.body.12, label %for.end.29

for.body.12:                                      ; preds = %for.cond.9
  %24 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv13 = zext i8 %25 to i32
  %26 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx14, align 1, !tbaa !39
  %conv15 = zext i8 %27 to i32
  %add = add nsw i32 %conv13, %conv15
  %28 = load i32, i32* %span.addr, align 4, !tbaa !1
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds i8, i8* %29, i64 %idxprom
  %30 = load i8, i8* %arrayidx16, align 1, !tbaa !39
  %conv17 = zext i8 %30 to i32
  %add18 = add nsw i32 %add, %conv17
  %31 = load i32, i32* %span.addr, align 4, !tbaa !1
  %add19 = add nsw i32 %31, 1
  %idxprom20 = sext i32 %add19 to i64
  %32 = load i8*, i8** %inp, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds i8, i8* %32, i64 %idxprom20
  %33 = load i8, i8* %arrayidx21, align 1, !tbaa !39
  %conv22 = zext i8 %33 to i32
  %add23 = add nsw i32 %add18, %conv22
  %add24 = add nsw i32 %add23, 2
  %shr = ashr i32 %add24, 2
  %conv25 = trunc i32 %shr to i8
  %34 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %incdec.ptr, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv25, i8* %34, align 1, !tbaa !39
  %35 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr26 = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr26, i8** %inp, align 8, !tbaa !5
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.12
  %36 = load i32, i32* %x, align 4, !tbaa !1
  %dec28 = add nsw i32 %36, -1
  store i32 %dec28, i32* %x, align 4, !tbaa !1
  br label %for.cond.9

for.end.29:                                       ; preds = %for.cond.9
  %37 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core8(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %div = alloca i32, align 4
  %back = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %8, i32* %width, align 4, !tbaa !1
  %9 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %10, i32 0, i32 2
  %11 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %11, i32* %awidth, align 4, !tbaa !1
  %12 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %13, i32 0, i32 4
  %14 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %14, i32* %factor, align 4, !tbaa !1
  %15 = bitcast i32* %div to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %factor, align 4, !tbaa !1
  %17 = load i32, i32* %factor, align 4, !tbaa !1
  %mul = mul nsw i32 %16, %17
  store i32 %mul, i32* %div, align 4, !tbaa !1
  %18 = load i32, i32* %awidth, align 4, !tbaa !1
  %19 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %18, %19
  %20 = load i32, i32* %factor, align 4, !tbaa !1
  %mul4 = mul nsw i32 %sub, %20
  store i32 %mul4, i32* %pad_white, align 4, !tbaa !1
  %21 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %23 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %24 = load i32, i32* %width, align 4, !tbaa !1
  %25 = load i32, i32* %factor, align 4, !tbaa !1
  %mul6 = mul nsw i32 %24, %25
  %idx.ext = sext i32 %mul6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  %26 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %26, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %27 = load i32, i32* %y, align 4, !tbaa !1
  %cmp7 = icmp sgt i32 %27, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %29 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext8 = sext i32 %30 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %31, i64 %idx.ext8
  store i8* %add.ptr9, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %span.addr, align 4, !tbaa !1
  %36 = load i32, i32* %factor, align 4, !tbaa !1
  %mul11 = mul nsw i32 %35, %36
  %sub12 = sub nsw i32 %mul11, 1
  store i32 %sub12, i32* %back, align 4, !tbaa !1
  %37 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %37, i32* %x, align 4, !tbaa !1
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.39, %if.end.10
  %38 = load i32, i32* %x, align 4, !tbaa !1
  %cmp14 = icmp sgt i32 %38, 0
  br i1 %cmp14, label %for.body.16, label %for.end.41

for.body.16:                                      ; preds = %for.cond.13
  store i32 0, i32* %value, align 4, !tbaa !1
  %39 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %39, i32* %xx, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.33, %for.body.16
  %40 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %40, 0
  br i1 %cmp18, label %for.body.20, label %for.end.35

for.body.20:                                      ; preds = %for.cond.17
  %41 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %41, i32* %y, align 4, !tbaa !1
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.28, %for.body.20
  %42 = load i32, i32* %y, align 4, !tbaa !1
  %cmp22 = icmp sgt i32 %42, 0
  br i1 %cmp22, label %for.body.24, label %for.end.30

for.body.24:                                      ; preds = %for.cond.21
  %43 = load i8*, i8** %inp, align 8, !tbaa !5
  %44 = load i8, i8* %43, align 1, !tbaa !39
  %conv25 = zext i8 %44 to i32
  %45 = load i32, i32* %value, align 4, !tbaa !1
  %add = add nsw i32 %45, %conv25
  store i32 %add, i32* %value, align 4, !tbaa !1
  %46 = load i32, i32* %span.addr, align 4, !tbaa !1
  %47 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext26 = sext i32 %46 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %47, i64 %idx.ext26
  store i8* %add.ptr27, i8** %inp, align 8, !tbaa !5
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.24
  %48 = load i32, i32* %y, align 4, !tbaa !1
  %dec29 = add nsw i32 %48, -1
  store i32 %dec29, i32* %y, align 4, !tbaa !1
  br label %for.cond.21

for.end.30:                                       ; preds = %for.cond.21
  %49 = load i32, i32* %back, align 4, !tbaa !1
  %50 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext31 = sext i32 %49 to i64
  %idx.neg = sub i64 0, %idx.ext31
  %add.ptr32 = getelementptr inbounds i8, i8* %50, i64 %idx.neg
  store i8* %add.ptr32, i8** %inp, align 8, !tbaa !5
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.30
  %51 = load i32, i32* %xx, align 4, !tbaa !1
  %dec34 = add nsw i32 %51, -1
  store i32 %dec34, i32* %xx, align 4, !tbaa !1
  br label %for.cond.17

for.end.35:                                       ; preds = %for.cond.17
  %52 = load i32, i32* %value, align 4, !tbaa !1
  %53 = load i32, i32* %div, align 4, !tbaa !1
  %shr = ashr i32 %53, 1
  %add36 = add nsw i32 %52, %shr
  %54 = load i32, i32* %div, align 4, !tbaa !1
  %div37 = sdiv i32 %add36, %54
  %conv38 = trunc i32 %div37 to i8
  %55 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv38, i8* %55, align 1, !tbaa !39
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.35
  %56 = load i32, i32* %x, align 4, !tbaa !1
  %dec40 = add nsw i32 %56, -1
  store i32 %dec40, i32* %x, align 4, !tbaa !1
  br label %for.cond.13

for.end.41:                                       ; preds = %for.cond.13
  %57 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  %58 = bitcast i32* %div to i8*
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %59 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %59) #1
  %60 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %60) #1
  %61 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %61) #1
  %62 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #1
  %63 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %63) #1
  %64 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %65 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @gx_downscaler_fin(%struct.gx_downscaler_s* %ds) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %plane = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %0 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %plane, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %plane, align 4, !tbaa !1
  %2 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %2, i32 0, i32 13
  %3 = load i32, i32* %num_planes, align 4, !tbaa !27
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !20
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 3
  %6 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %6, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 2
  %7 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !40
  %8 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %8, i32 0, i32 0
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !20
  %memory2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 3
  %10 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory2, align 8, !tbaa !32
  %11 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 12
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  call void %7(%struct.gs_memory_s* %10, i8* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0)) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %plane, align 4, !tbaa !1
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 13
  store i32 0, i32* %num_planes3, align 4, !tbaa !27
  %16 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev4 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %16, i32 0, i32 0
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev4, align 8, !tbaa !20
  %memory5 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %17, i32 0, i32 3
  %18 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory5, align 8, !tbaa !32
  %procs6 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %18, i32 0, i32 1
  %free_object7 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs6, i32 0, i32 2
  %19 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object7, align 8, !tbaa !40
  %20 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev8 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %20, i32 0, i32 0
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev8, align 8, !tbaa !20
  %memory9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 3
  %22 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory9, align 8, !tbaa !32
  %23 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %23, i32 0, i32 5
  %24 = load i8*, i8** %mfs_data, align 8, !tbaa !37
  call void %19(%struct.gs_memory_s* %22, i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  %25 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data10 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %25, i32 0, i32 5
  store i8* null, i8** %mfs_data10, align 8, !tbaa !37
  %26 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev11 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %26, i32 0, i32 0
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %dev11, align 8, !tbaa !20
  %memory12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %27, i32 0, i32 3
  %28 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory12, align 8, !tbaa !32
  %procs13 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %28, i32 0, i32 1
  %free_object14 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs13, i32 0, i32 2
  %29 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object14, align 8, !tbaa !40
  %30 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev15 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %30, i32 0, i32 0
  %31 = load %struct.gx_device_s*, %struct.gx_device_s** %dev15, align 8, !tbaa !20
  %memory16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %31, i32 0, i32 3
  %32 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory16, align 8, !tbaa !32
  %33 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %33, i32 0, i32 7
  %34 = load i32*, i32** %errors, align 8, !tbaa !38
  %35 = bitcast i32* %34 to i8*
  call void %29(%struct.gs_memory_s* %32, i8* %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #4
  %36 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors17 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %36, i32 0, i32 7
  store i32* null, i32** %errors17, align 8, !tbaa !38
  %37 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev18 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %37, i32 0, i32 0
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %dev18, align 8, !tbaa !20
  %memory19 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 3
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory19, align 8, !tbaa !32
  %procs20 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %39, i32 0, i32 1
  %free_object21 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs20, i32 0, i32 2
  %40 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object21, align 8, !tbaa !40
  %41 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev22 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %41, i32 0, i32 0
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev22, align 8, !tbaa !20
  %memory23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %42, i32 0, i32 3
  %43 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory23, align 8, !tbaa !32
  %44 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %data24 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %44, i32 0, i32 8
  %45 = load i8*, i8** %data24, align 8, !tbaa !41
  call void %40(%struct.gs_memory_s* %43, i8* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #4
  %46 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %data25 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %46, i32 0, i32 8
  store i8* null, i8** %data25, align 8, !tbaa !41
  %47 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev26 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %47, i32 0, i32 0
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev26, align 8, !tbaa !20
  %memory27 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 3
  %49 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory27, align 8, !tbaa !32
  %procs28 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %49, i32 0, i32 1
  %free_object29 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs28, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object29, align 8, !tbaa !40
  %51 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev30 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %51, i32 0, i32 0
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev30, align 8, !tbaa !20
  %memory31 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %52, i32 0, i32 3
  %53 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory31, align 8, !tbaa !32
  %54 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %54, i32 0, i32 9
  %55 = load i8*, i8** %scaled_data, align 8, !tbaa !29
  call void %50(%struct.gs_memory_s* %53, i8* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0)) #4
  %56 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data32 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %56, i32 0, i32 9
  store i8* null, i8** %scaled_data32, align 8, !tbaa !29
  %57 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_init(%struct.gx_downscaler_s* %ds, %struct.gx_device_s* %dev, i32 %src_bpc, i32 %dst_bpc, i32 %num_comps, i32 %factor, i32 %mfs, i32 (i32, i32)* %adjust_width_proc, i32 %adjust_width) #0 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %src_bpc.addr = alloca i32, align 4
  %dst_bpc.addr = alloca i32, align 4
  %num_comps.addr = alloca i32, align 4
  %factor.addr = alloca i32, align 4
  %mfs.addr = alloca i32, align 4
  %adjust_width_proc.addr = alloca i32 (i32, i32)*, align 8
  %adjust_width.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %span = alloca i32, align 4
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %code = alloca i32, align 4
  %core = alloca void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, align 8
  %upfactor = alloca i32, align 4
  %downfactor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store i32 %src_bpc, i32* %src_bpc.addr, align 4, !tbaa !1
  store i32 %dst_bpc, i32* %dst_bpc.addr, align 4, !tbaa !1
  store i32 %num_comps, i32* %num_comps.addr, align 4, !tbaa !1
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  store i32 %mfs, i32* %mfs.addr, align 4, !tbaa !1
  store i32 (i32, i32)* %adjust_width_proc, i32 (i32, i32)** %adjust_width_proc.addr, align 8, !tbaa !5
  store i32 %adjust_width, i32* %adjust_width.addr, align 4, !tbaa !1
  %0 = bitcast i32* %size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %2 = bitcast %struct.gx_device_s* %1 to %struct.gx_device_printer_s*
  %3 = bitcast %struct.gx_device_printer_s* %2 to %struct.gx_device_s*
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %3, i32 0) #4
  store i32 %call, i32* %size, align 4, !tbaa !1
  %4 = bitcast i32* %span to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i32* %upfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast i32* %downfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load i32, i32* %factor.addr, align 4, !tbaa !1
  call void @decode_factor(i32 %12, i32* %upfactor, i32* %downfactor) #4
  %13 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %13, i32 0, i32 13
  %14 = load i32, i32* %width1, align 4, !tbaa !7
  %15 = load i32, i32* %upfactor, align 4, !tbaa !1
  %mul = mul nsw i32 %14, %15
  %16 = load i32, i32* %downfactor, align 4, !tbaa !1
  %div = sdiv i32 %mul, %16
  store i32 %div, i32* %width, align 4, !tbaa !1
  %17 = load i32, i32* %width, align 4, !tbaa !1
  store i32 %17, i32* %awidth, align 4, !tbaa !1
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %adjust_width_proc.addr, align 8, !tbaa !5
  %cmp = icmp ne i32 (i32, i32)* %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %adjust_width_proc.addr, align 8, !tbaa !5
  %20 = load i32, i32* %width, align 4, !tbaa !1
  %21 = load i32, i32* %adjust_width.addr, align 4, !tbaa !1
  %call2 = call i32 %19(i32 %20, i32 %21) #4
  store i32 %call2, i32* %awidth, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %awidth, align 4, !tbaa !1
  %23 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %22, %23
  store i32 %sub, i32* %pad_white, align 4, !tbaa !1
  %24 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp3 = icmp slt i32 %24, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %25 = load i32, i32* %size, align 4, !tbaa !1
  %26 = load i32, i32* %pad_white, align 4, !tbaa !1
  %27 = load i32, i32* %downfactor, align 4, !tbaa !1
  %mul6 = mul nsw i32 %26, %27
  %28 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %mul7 = mul nsw i32 %mul6, %28
  %29 = load i32, i32* %upfactor, align 4, !tbaa !1
  %div8 = sdiv i32 %mul7, %29
  %add = add nsw i32 %25, %div8
  %30 = load i32, i32* %downfactor, align 4, !tbaa !1
  %add9 = add nsw i32 %add, %30
  %sub10 = sub nsw i32 %add9, 1
  store i32 %sub10, i32* %span, align 4, !tbaa !1
  %31 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %32 = bitcast %struct.gx_downscaler_s* %31 to i8*
  %call11 = call i8* @memset(i8* %32, i32 0, i64 624) #5
  %33 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %34 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev12 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %34, i32 0, i32 0
  store %struct.gx_device_s* %33, %struct.gx_device_s** %dev12, align 8, !tbaa !20
  %35 = load i32, i32* %width, align 4, !tbaa !1
  %36 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width13 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %36, i32 0, i32 1
  store i32 %35, i32* %width13, align 4, !tbaa !23
  %37 = load i32, i32* %awidth, align 4, !tbaa !1
  %38 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth14 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %38, i32 0, i32 2
  store i32 %37, i32* %awidth14, align 4, !tbaa !24
  %39 = load i32, i32* %span, align 4, !tbaa !1
  %40 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span15 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %40, i32 0, i32 3
  store i32 %39, i32* %span15, align 4, !tbaa !25
  %41 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %42 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor16 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %42, i32 0, i32 4
  store i32 %41, i32* %factor16, align 4, !tbaa !26
  %43 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %43, i32 0, i32 13
  store i32 0, i32* %num_planes, align 4, !tbaa !27
  %44 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %45 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %src_bpc17 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %45, i32 0, i32 6
  store i32 %44, i32* %src_bpc17, align 4, !tbaa !28
  %46 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %46, 8
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.5
  store i32 -15, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.else:                                          ; preds = %if.end.5
  %47 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp20 = icmp eq i32 %47, 16
  br i1 %cmp20, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else
  %48 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp21 = icmp eq i32 %48, 16
  br i1 %cmp21, label %land.lhs.true.22, label %if.else.25

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %49 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp23 = icmp eq i32 %49, 1
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.22
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core16, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.108

if.else.25:                                       ; preds = %land.lhs.true.22, %land.lhs.true, %if.else
  %50 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp26 = icmp eq i32 %50, 8
  br i1 %cmp26, label %land.lhs.true.27, label %if.else.36

land.lhs.true.27:                                 ; preds = %if.else.25
  %51 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp28 = icmp eq i32 %51, 1
  br i1 %cmp28, label %land.lhs.true.29, label %if.else.36

land.lhs.true.29:                                 ; preds = %land.lhs.true.27
  %52 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp30 = icmp eq i32 %52, 4
  br i1 %cmp30, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %land.lhs.true.29
  %53 = load i32, i32* %mfs.addr, align 4, !tbaa !1
  %cmp32 = icmp sgt i32 %53, 1
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.then.31
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core4_mfs, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.35

if.else.34:                                       ; preds = %if.then.31
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.33
  br label %if.end.107

if.else.36:                                       ; preds = %land.lhs.true.29, %land.lhs.true.27, %if.else.25
  %54 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp37 = icmp eq i32 %54, 8
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.63

land.lhs.true.38:                                 ; preds = %if.else.36
  %55 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp39 = icmp eq i32 %55, 1
  br i1 %cmp39, label %land.lhs.true.40, label %if.else.63

land.lhs.true.40:                                 ; preds = %land.lhs.true.38
  %56 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp41 = icmp eq i32 %56, 1
  br i1 %cmp41, label %if.then.42, label %if.else.63

if.then.42:                                       ; preds = %land.lhs.true.40
  %57 = load i32, i32* %mfs.addr, align 4, !tbaa !1
  %cmp43 = icmp sgt i32 %57, 1
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.then.42
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_mfs, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.62

if.else.45:                                       ; preds = %if.then.42
  %58 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp46 = icmp eq i32 %58, 4
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.45
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.61

if.else.48:                                       ; preds = %if.else.45
  %59 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp49 = icmp eq i32 %59, 3
  br i1 %cmp49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.48
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_3, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.60

if.else.51:                                       ; preds = %if.else.48
  %60 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp52 = icmp eq i32 %60, 2
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %if.else.51
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_2, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.59

if.else.54:                                       ; preds = %if.else.51
  %61 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp55 = icmp eq i32 %61, 1
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.54
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core_1, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.58

if.else.57:                                       ; preds = %if.else.54
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.50
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.47
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.44
  br label %if.end.106

if.else.63:                                       ; preds = %land.lhs.true.40, %land.lhs.true.38, %if.else.36
  %62 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp64 = icmp eq i32 %62, 1
  br i1 %cmp64, label %land.lhs.true.65, label %if.else.68

land.lhs.true.65:                                 ; preds = %if.else.63
  %63 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %64 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp66 = icmp eq i32 %63, %64
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %land.lhs.true.65
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* null, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.105

if.else.68:                                       ; preds = %land.lhs.true.65, %if.else.63
  %65 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp69 = icmp eq i32 %65, 8
  br i1 %cmp69, label %land.lhs.true.70, label %if.else.87

land.lhs.true.70:                                 ; preds = %if.else.68
  %66 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp71 = icmp eq i32 %66, 8
  br i1 %cmp71, label %land.lhs.true.72, label %if.else.87

land.lhs.true.72:                                 ; preds = %land.lhs.true.70
  %67 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp73 = icmp eq i32 %67, 1
  br i1 %cmp73, label %if.then.74, label %if.else.87

if.then.74:                                       ; preds = %land.lhs.true.72
  %68 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp75 = icmp eq i32 %68, 4
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.then.74
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.86

if.else.77:                                       ; preds = %if.then.74
  %69 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp78 = icmp eq i32 %69, 3
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.77
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_3, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.85

if.else.80:                                       ; preds = %if.else.77
  %70 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp81 = icmp eq i32 %70, 2
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %if.else.80
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_2, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.84

if.else.83:                                       ; preds = %if.else.80
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.79
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.76
  br label %if.end.104

if.else.87:                                       ; preds = %land.lhs.true.72, %land.lhs.true.70, %if.else.68
  %71 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp88 = icmp eq i32 %71, 8
  br i1 %cmp88, label %land.lhs.true.89, label %if.else.94

land.lhs.true.89:                                 ; preds = %if.else.87
  %72 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp90 = icmp eq i32 %72, 8
  br i1 %cmp90, label %land.lhs.true.91, label %if.else.94

land.lhs.true.91:                                 ; preds = %land.lhs.true.89
  %73 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp92 = icmp eq i32 %73, 3
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %land.lhs.true.91
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core24, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.103

if.else.94:                                       ; preds = %land.lhs.true.91, %land.lhs.true.89, %if.else.87
  %74 = load i32, i32* %src_bpc.addr, align 4, !tbaa !1
  %cmp95 = icmp eq i32 %74, 8
  br i1 %cmp95, label %land.lhs.true.96, label %if.else.101

land.lhs.true.96:                                 ; preds = %if.else.94
  %75 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp97 = icmp eq i32 %75, 8
  br i1 %cmp97, label %land.lhs.true.98, label %if.else.101

land.lhs.true.98:                                 ; preds = %land.lhs.true.96
  %76 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %cmp99 = icmp eq i32 %76, 4
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.98
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core32, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.102

if.else.101:                                      ; preds = %land.lhs.true.98, %land.lhs.true.96, %if.else.94
  store i32 -15, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end.102:                                       ; preds = %if.then.100
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.93
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.86
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.67
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.62
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.35
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.24
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108
  %77 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  %78 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %78, i32 0, i32 11
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %77, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core, align 8, !tbaa !36
  %79 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  %cmp110 = icmp ne void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %79, null
  br i1 %cmp110, label %if.then.111, label %if.end.160

if.then.111:                                      ; preds = %if.end.109
  %80 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %80, i32 0, i32 3
  %81 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !32
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %81, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %82 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !33
  %83 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory112 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %83, i32 0, i32 3
  %84 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory112, align 8, !tbaa !32
  %85 = load i32, i32* %span, align 4, !tbaa !1
  %86 = load i32, i32* %downfactor, align 4, !tbaa !1
  %mul113 = mul nsw i32 %85, %86
  %call114 = call i8* %82(%struct.gs_memory_s* %84, i32 %mul113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0)) #4
  %87 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %87, i32 0, i32 8
  store i8* %call114, i8** %data, align 8, !tbaa !41
  %88 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %data115 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %88, i32 0, i32 8
  %89 = load i8*, i8** %data115, align 8, !tbaa !41
  %cmp116 = icmp eq i8* %89, null
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.then.111
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

if.end.118:                                       ; preds = %if.then.111
  %90 = load i32, i32* %mfs.addr, align 4, !tbaa !1
  %cmp119 = icmp sgt i32 %90, 1
  br i1 %cmp119, label %if.then.120, label %if.end.134

if.then.120:                                      ; preds = %if.end.118
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory121 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 3
  %92 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory121, align 8, !tbaa !32
  %procs122 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %92, i32 0, i32 1
  %alloc_bytes123 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs122, i32 0, i32 7
  %93 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes123, align 8, !tbaa !33
  %94 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory124 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %94, i32 0, i32 3
  %95 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory124, align 8, !tbaa !32
  %96 = load i32, i32* %awidth, align 4, !tbaa !1
  %add125 = add nsw i32 %96, 1
  %call126 = call i8* %93(%struct.gs_memory_s* %95, i32 %add125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)) #4
  %97 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %97, i32 0, i32 5
  store i8* %call126, i8** %mfs_data, align 8, !tbaa !37
  %98 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data127 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %98, i32 0, i32 5
  %99 = load i8*, i8** %mfs_data127, align 8, !tbaa !37
  %cmp128 = icmp eq i8* %99, null
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.then.120
  store i32 -25, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end.130:                                       ; preds = %if.then.120
  %100 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data131 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %100, i32 0, i32 5
  %101 = load i8*, i8** %mfs_data131, align 8, !tbaa !37
  %102 = load i32, i32* %awidth, align 4, !tbaa !1
  %add132 = add nsw i32 %102, 1
  %conv = sext i32 %add132 to i64
  %call133 = call i8* @memset(i8* %101, i32 0, i64 %conv) #5
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.130, %if.end.118
  %103 = load i32, i32* %dst_bpc.addr, align 4, !tbaa !1
  %cmp135 = icmp eq i32 %103, 1
  br i1 %cmp135, label %if.then.137, label %if.end.159

if.then.137:                                      ; preds = %if.end.134
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory138 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %104, i32 0, i32 3
  %105 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory138, align 8, !tbaa !32
  %procs139 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %105, i32 0, i32 1
  %alloc_bytes140 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs139, i32 0, i32 7
  %106 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes140, align 8, !tbaa !33
  %107 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %memory141 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %107, i32 0, i32 3
  %108 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory141, align 8, !tbaa !32
  %109 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %110 = load i32, i32* %awidth, align 4, !tbaa !1
  %add142 = add nsw i32 %110, 3
  %mul143 = mul nsw i32 %109, %add142
  %conv144 = sext i32 %mul143 to i64
  %mul145 = mul i64 %conv144, 4
  %conv146 = trunc i64 %mul145 to i32
  %call147 = call i8* %106(%struct.gs_memory_s* %108, i32 %conv146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0)) #4
  %111 = bitcast i8* %call147 to i32*
  %112 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %112, i32 0, i32 7
  store i32* %111, i32** %errors, align 8, !tbaa !38
  %113 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors148 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %113, i32 0, i32 7
  %114 = load i32*, i32** %errors148, align 8, !tbaa !38
  %cmp149 = icmp eq i32* %114, null
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.then.137
  store i32 -25, i32* %code, align 4, !tbaa !1
  br label %cleanup

if.end.152:                                       ; preds = %if.then.137
  %115 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors153 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %115, i32 0, i32 7
  %116 = load i32*, i32** %errors153, align 8, !tbaa !38
  %117 = bitcast i32* %116 to i8*
  %118 = load i32, i32* %num_comps.addr, align 4, !tbaa !1
  %119 = load i32, i32* %awidth, align 4, !tbaa !1
  %add154 = add nsw i32 %119, 3
  %mul155 = mul nsw i32 %118, %add154
  %conv156 = sext i32 %mul155 to i64
  %mul157 = mul i64 %conv156, 4
  %call158 = call i8* @memset(i8* %117, i32 0, i64 %mul157) #5
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.152, %if.end.134
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.109
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

cleanup:                                          ; preds = %if.then.151, %if.then.129, %if.else.101, %if.then.19
  %120 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  call void @gx_downscaler_fin(%struct.gx_downscaler_s* %120) #4
  %121 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %121, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.161

cleanup.161:                                      ; preds = %cleanup, %if.end.160, %if.then.117
  %122 = bitcast i32* %downfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %upfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %124 = bitcast void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core to i8*
  call void @llvm.lifetime.end(i64 8, i8* %124) #1
  %125 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  %129 = bitcast i32* %span to i8*
  call void @llvm.lifetime.end(i64 4, i8* %129) #1
  %130 = bitcast i32* %size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %130) #1
  %131 = load i32, i32* %retval
  ret i32 %131
}

declare i32 @gx_device_raster(%struct.gx_device_s*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @down_core4_mfs(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %comp = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %errors = alloca i32*, align 8
  %mfs_data = alloca i8*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  %back = alloca i32, align 4
  %outp_base = alloca i8*, align 8
  %mfs = alloca i8, align 1
  %force_forward = alloca i8, align 1
  %back120 = alloca i32, align 4
  %outp_base123 = alloca i8*, align 8
  %mfs132 = alloca i8, align 1
  %force_forward133 = alloca i8, align 1
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %8 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 1
  %13 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %13, i32* %width, align 4, !tbaa !1
  %14 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 2
  %16 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %16, i32* %awidth, align 4, !tbaa !1
  %17 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %18, i32 0, i32 4
  %19 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %19, i32* %factor, align 4, !tbaa !1
  %20 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = bitcast i8** %mfs_data to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %22) #1
  %23 = load i32, i32* %factor, align 4, !tbaa !1
  %24 = load i32, i32* %factor, align 4, !tbaa !1
  %mul = mul nsw i32 %23, %24
  %mul4 = mul nsw i32 %mul, 128
  store i32 %mul4, i32* %threshold, align 4, !tbaa !1
  %25 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %25) #1
  %26 = load i32, i32* %factor, align 4, !tbaa !1
  %27 = load i32, i32* %factor, align 4, !tbaa !1
  %mul5 = mul nsw i32 %26, %27
  %mul6 = mul nsw i32 %mul5, 255
  store i32 %mul6, i32* %max_value, align 4, !tbaa !1
  %28 = load i32, i32* %awidth, align 4, !tbaa !1
  %29 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %28, %29
  %30 = load i32, i32* %factor, align 4, !tbaa !1
  %mul7 = mul nsw i32 %sub, %30
  %mul8 = mul nsw i32 %mul7, 4
  store i32 %mul8, i32* %pad_white, align 4, !tbaa !1
  %31 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %31, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %32 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %34 = load i32, i32* %width, align 4, !tbaa !1
  %35 = load i32, i32* %factor, align 4, !tbaa !1
  %mul10 = mul nsw i32 %34, %35
  %mul11 = mul nsw i32 %mul10, 4
  %idx.ext = sext i32 %mul11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  %36 = load i32, i32* %factor, align 4, !tbaa !1
  %mul12 = mul nsw i32 %36, 4
  store i32 %mul12, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %37 = load i32, i32* %y, align 4, !tbaa !1
  %cmp13 = icmp sgt i32 %37, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i8*, i8** %inp, align 8, !tbaa !5
  %39 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %39 to i64
  %call = call i8* @memset(i8* %38, i32 255, i64 %conv) #5
  %40 = load i32, i32* %span.addr, align 4, !tbaa !1
  %41 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext14 = sext i32 %40 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %41, i64 %idx.ext14
  store i8* %add.ptr15, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %43 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %43, i8** %inp, align 8, !tbaa !5
  %44 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %44, 1
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %if.then.19, label %if.else.119

if.then.19:                                       ; preds = %if.end.16
  %45 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %span.addr, align 4, !tbaa !1
  %47 = load i32, i32* %factor, align 4, !tbaa !1
  %mul20 = mul nsw i32 %46, %47
  %sub21 = sub nsw i32 %mul20, 4
  store i32 %sub21, i32* %back, align 4, !tbaa !1
  %48 = bitcast i8** %outp_base to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %49, i8** %outp_base, align 8, !tbaa !5
  store i32 0, i32* %comp, align 4, !tbaa !1
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.116, %if.then.19
  %50 = load i32, i32* %comp, align 4, !tbaa !1
  %cmp23 = icmp slt i32 %50, 4
  br i1 %cmp23, label %for.body.25, label %for.end.117

for.body.25:                                      ; preds = %for.cond.22
  call void @llvm.lifetime.start(i64 1, i8* %mfs) #1
  call void @llvm.lifetime.start(i64 1, i8* %force_forward) #1
  store i8 0, i8* %force_forward, align 1, !tbaa !39
  %51 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors26 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %51, i32 0, i32 7
  %52 = load i32*, i32** %errors26, align 8, !tbaa !38
  %53 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %53, 3
  %54 = load i32, i32* %comp, align 4, !tbaa !1
  %mul27 = mul nsw i32 %add, %54
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %52, i64 %idx.ext28
  %add.ptr30 = getelementptr inbounds i32, i32* %add.ptr29, i64 2
  store i32* %add.ptr30, i32** %errors, align 8, !tbaa !5
  %55 = load i8*, i8** %outp_base, align 8, !tbaa !5
  store i8* %55, i8** %inp, align 8, !tbaa !5
  %56 = load i8*, i8** %outp_base, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %outp_base, align 8, !tbaa !5
  store i8* %56, i8** %outp, align 8, !tbaa !5
  %57 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data31 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %57, i32 0, i32 5
  %58 = load i8*, i8** %mfs_data31, align 8, !tbaa !37
  %59 = load i32, i32* %awidth, align 4, !tbaa !1
  %add32 = add nsw i32 %59, 1
  %60 = load i32, i32* %comp, align 4, !tbaa !1
  %mul33 = mul nsw i32 %add32, %60
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %58, i64 %idx.ext34
  store i8* %add.ptr35, i8** %mfs_data, align 8, !tbaa !5
  %61 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr36 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %incdec.ptr36, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %61, align 1, !tbaa !39
  %62 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %62, i32* %x, align 4, !tbaa !1
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.113, %for.body.25
  %63 = load i32, i32* %x, align 4, !tbaa !1
  %cmp38 = icmp sgt i32 %63, 0
  br i1 %cmp38, label %for.body.40, label %for.end.115

for.body.40:                                      ; preds = %for.cond.37
  %64 = load i32, i32* %e_forward, align 4, !tbaa !1
  %65 = load i32*, i32** %errors, align 8, !tbaa !5
  %66 = load i32, i32* %65, align 4, !tbaa !1
  %add41 = add nsw i32 %64, %66
  store i32 %add41, i32* %value, align 4, !tbaa !1
  %67 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %67, i32* %xx, align 4, !tbaa !1
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.59, %for.body.40
  %68 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp43 = icmp sgt i32 %68, 0
  br i1 %cmp43, label %for.body.45, label %for.end.61

for.body.45:                                      ; preds = %for.cond.42
  %69 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %69, i32* %y, align 4, !tbaa !1
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %for.body.45
  %70 = load i32, i32* %y, align 4, !tbaa !1
  %cmp47 = icmp sgt i32 %70, 0
  br i1 %cmp47, label %for.body.49, label %for.end.56

for.body.49:                                      ; preds = %for.cond.46
  %71 = load i8*, i8** %inp, align 8, !tbaa !5
  %72 = load i8, i8* %71, align 1, !tbaa !39
  %conv50 = zext i8 %72 to i32
  %73 = load i32, i32* %value, align 4, !tbaa !1
  %add51 = add nsw i32 %73, %conv50
  store i32 %add51, i32* %value, align 4, !tbaa !1
  %74 = load i32, i32* %span.addr, align 4, !tbaa !1
  %75 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext52 = sext i32 %74 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %75, i64 %idx.ext52
  store i8* %add.ptr53, i8** %inp, align 8, !tbaa !5
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.49
  %76 = load i32, i32* %y, align 4, !tbaa !1
  %dec55 = add nsw i32 %76, -1
  store i32 %dec55, i32* %y, align 4, !tbaa !1
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  %77 = load i32, i32* %back, align 4, !tbaa !1
  %78 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext57 = sext i32 %77 to i64
  %idx.neg = sub i64 0, %idx.ext57
  %add.ptr58 = getelementptr inbounds i8, i8* %78, i64 %idx.neg
  store i8* %add.ptr58, i8** %inp, align 8, !tbaa !5
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.56
  %79 = load i32, i32* %xx, align 4, !tbaa !1
  %dec60 = add nsw i32 %79, -1
  store i32 %dec60, i32* %xx, align 4, !tbaa !1
  br label %for.cond.42

for.end.61:                                       ; preds = %for.cond.42
  %80 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %81 = load i8, i8* %80, align 1, !tbaa !39
  store i8 %81, i8* %mfs, align 1, !tbaa !39
  %82 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr62 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %incdec.ptr62, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %82, align 1, !tbaa !39
  %83 = load i8, i8* %mfs, align 1, !tbaa !39
  %conv63 = zext i8 %83 to i32
  %and64 = and i32 %conv63, 1
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.61
  %84 = load i8, i8* %force_forward, align 1, !tbaa !39
  %conv66 = zext i8 %84 to i32
  %tobool67 = icmp ne i32 %conv66, 0
  br i1 %tobool67, label %if.then.68, label %if.else

if.then.68:                                       ; preds = %lor.lhs.false, %for.end.61
  %85 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %85, align 1, !tbaa !39
  %86 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr69 = getelementptr inbounds i8, i8* %86, i64 4
  store i8* %add.ptr69, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %force_forward, align 1, !tbaa !39
  br label %if.end.99

if.else:                                          ; preds = %lor.lhs.false
  %87 = load i32, i32* %value, align 4, !tbaa !1
  %88 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp70 = icmp slt i32 %87, %88
  br i1 %cmp70, label %if.then.72, label %if.else.95

if.then.72:                                       ; preds = %if.else
  %89 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %89, align 1, !tbaa !39
  %90 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr73 = getelementptr inbounds i8, i8* %90, i64 4
  store i8* %add.ptr73, i8** %outp, align 8, !tbaa !5
  %91 = load i8, i8* %mfs, align 1, !tbaa !39
  %conv74 = zext i8 %91 to i32
  %and75 = and i32 %conv74, 6
  %cmp76 = icmp ne i32 %and75, 6
  br i1 %cmp76, label %if.then.78, label %if.else.85

if.then.78:                                       ; preds = %if.then.72
  %92 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, i8* %92, i64 -2
  %93 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv79 = zext i8 %93 to i32
  %or = or i32 %conv79, 1
  %conv80 = trunc i32 %or to i8
  store i8 %conv80, i8* %arrayidx, align 1, !tbaa !39
  %94 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx81 = getelementptr inbounds i8, i8* %94, i64 -1
  %95 = load i8, i8* %arrayidx81, align 1, !tbaa !39
  %conv82 = zext i8 %95 to i32
  %or83 = or i32 %conv82, 1
  %conv84 = trunc i32 %or83 to i8
  store i8 %conv84, i8* %arrayidx81, align 1, !tbaa !39
  store i8 1, i8* %force_forward, align 1, !tbaa !39
  br label %if.end.94

if.else.85:                                       ; preds = %if.then.72
  %96 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx86 = getelementptr inbounds i8, i8* %96, i64 -2
  %97 = load i8, i8* %arrayidx86, align 1, !tbaa !39
  %conv87 = zext i8 %97 to i32
  %or88 = or i32 %conv87, 2
  %conv89 = trunc i32 %or88 to i8
  store i8 %conv89, i8* %arrayidx86, align 1, !tbaa !39
  %98 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx90 = getelementptr inbounds i8, i8* %98, i64 -1
  %99 = load i8, i8* %arrayidx90, align 1, !tbaa !39
  %conv91 = zext i8 %99 to i32
  %or92 = or i32 %conv91, 4
  %conv93 = trunc i32 %or92 to i8
  store i8 %conv93, i8* %arrayidx90, align 1, !tbaa !39
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.85, %if.then.78
  br label %if.end.98

if.else.95:                                       ; preds = %if.else
  %100 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %100, align 1, !tbaa !39
  %101 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr96 = getelementptr inbounds i8, i8* %101, i64 4
  store i8* %add.ptr96, i8** %outp, align 8, !tbaa !5
  %102 = load i32, i32* %max_value, align 4, !tbaa !1
  %103 = load i32, i32* %value, align 4, !tbaa !1
  %sub97 = sub nsw i32 %103, %102
  store i32 %sub97, i32* %value, align 4, !tbaa !1
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.95, %if.end.94
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.68
  %104 = load i32, i32* %value, align 4, !tbaa !1
  %mul100 = mul nsw i32 %104, 7
  %div = sdiv i32 %mul100, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %105 = load i32, i32* %value, align 4, !tbaa !1
  %mul101 = mul nsw i32 %105, 3
  %div102 = sdiv i32 %mul101, 16
  store i32 %div102, i32* %e_downleft, align 4, !tbaa !1
  %106 = load i32, i32* %value, align 4, !tbaa !1
  %mul103 = mul nsw i32 %106, 5
  %div104 = sdiv i32 %mul103, 16
  store i32 %div104, i32* %e_down, align 4, !tbaa !1
  %107 = load i32, i32* %e_forward, align 4, !tbaa !1
  %108 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add105 = add nsw i32 %107, %108
  %109 = load i32, i32* %e_down, align 4, !tbaa !1
  %add106 = add nsw i32 %add105, %109
  %110 = load i32, i32* %value, align 4, !tbaa !1
  %sub107 = sub nsw i32 %110, %add106
  store i32 %sub107, i32* %value, align 4, !tbaa !1
  %111 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %112 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx108 = getelementptr inbounds i32, i32* %112, i64 -2
  %113 = load i32, i32* %arrayidx108, align 4, !tbaa !1
  %add109 = add nsw i32 %113, %111
  store i32 %add109, i32* %arrayidx108, align 4, !tbaa !1
  %114 = load i32, i32* %e_down, align 4, !tbaa !1
  %115 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx110 = getelementptr inbounds i32, i32* %115, i64 -1
  %116 = load i32, i32* %arrayidx110, align 4, !tbaa !1
  %add111 = add nsw i32 %116, %114
  store i32 %add111, i32* %arrayidx110, align 4, !tbaa !1
  %117 = load i32, i32* %value, align 4, !tbaa !1
  %118 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr112 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %incdec.ptr112, i32** %errors, align 8, !tbaa !5
  store i32 %117, i32* %118, align 4, !tbaa !1
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.99
  %119 = load i32, i32* %x, align 4, !tbaa !1
  %dec114 = add nsw i32 %119, -1
  store i32 %dec114, i32* %x, align 4, !tbaa !1
  br label %for.cond.37

for.end.115:                                      ; preds = %for.cond.37
  call void @llvm.lifetime.end(i64 1, i8* %force_forward) #1
  call void @llvm.lifetime.end(i64 1, i8* %mfs) #1
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.end.115
  %120 = load i32, i32* %comp, align 4, !tbaa !1
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* %comp, align 4, !tbaa !1
  br label %for.cond.22

for.end.117:                                      ; preds = %for.cond.22
  %121 = load i8*, i8** %outp_base, align 8, !tbaa !5
  %add.ptr118 = getelementptr inbounds i8, i8* %121, i64 -4
  store i8* %add.ptr118, i8** %outp, align 8, !tbaa !5
  %122 = bitcast i8** %outp_base to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  br label %if.end.242

if.else.119:                                      ; preds = %if.end.16
  %124 = bitcast i32* %back120 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %124) #1
  %125 = load i32, i32* %span.addr, align 4, !tbaa !1
  %126 = load i32, i32* %factor, align 4, !tbaa !1
  %mul121 = mul nsw i32 %125, %126
  %add122 = add nsw i32 %mul121, 4
  store i32 %add122, i32* %back120, align 4, !tbaa !1
  %127 = bitcast i8** %outp_base123 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %127) #1
  %128 = load i8*, i8** %inp, align 8, !tbaa !5
  %129 = load i32, i32* %awidth, align 4, !tbaa !1
  %130 = load i32, i32* %factor, align 4, !tbaa !1
  %mul124 = mul nsw i32 %129, %130
  %idx.ext125 = sext i32 %mul124 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %128, i64 %idx.ext125
  %add.ptr127 = getelementptr inbounds i8, i8* %add.ptr126, i64 -4
  store i8* %add.ptr127, i8** %outp_base123, align 8, !tbaa !5
  store i32 0, i32* %comp, align 4, !tbaa !1
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.235, %if.else.119
  %131 = load i32, i32* %comp, align 4, !tbaa !1
  %cmp129 = icmp slt i32 %131, 4
  br i1 %cmp129, label %for.body.131, label %for.end.237

for.body.131:                                     ; preds = %for.cond.128
  call void @llvm.lifetime.start(i64 1, i8* %mfs132) #1
  call void @llvm.lifetime.start(i64 1, i8* %force_forward133) #1
  store i8 0, i8* %force_forward133, align 1, !tbaa !39
  %132 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors134 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %132, i32 0, i32 7
  %133 = load i32*, i32** %errors134, align 8, !tbaa !38
  %134 = load i32, i32* %awidth, align 4, !tbaa !1
  %add135 = add nsw i32 %134, 3
  %135 = load i32, i32* %comp, align 4, !tbaa !1
  %mul136 = mul nsw i32 %add135, %135
  %idx.ext137 = sext i32 %mul136 to i64
  %add.ptr138 = getelementptr inbounds i32, i32* %133, i64 %idx.ext137
  %136 = load i32, i32* %awidth, align 4, !tbaa !1
  %idx.ext139 = sext i32 %136 to i64
  %add.ptr140 = getelementptr inbounds i32, i32* %add.ptr138, i64 %idx.ext139
  store i32* %add.ptr140, i32** %errors, align 8, !tbaa !5
  %137 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %mfs_data141 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %137, i32 0, i32 5
  %138 = load i8*, i8** %mfs_data141, align 8, !tbaa !37
  %139 = load i32, i32* %awidth, align 4, !tbaa !1
  %add142 = add nsw i32 %139, 1
  %140 = load i32, i32* %comp, align 4, !tbaa !1
  %mul143 = mul nsw i32 %add142, %140
  %idx.ext144 = sext i32 %mul143 to i64
  %add.ptr145 = getelementptr inbounds i8, i8* %138, i64 %idx.ext144
  %141 = load i32, i32* %awidth, align 4, !tbaa !1
  %idx.ext146 = sext i32 %141 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %add.ptr145, i64 %idx.ext146
  store i8* %add.ptr147, i8** %mfs_data, align 8, !tbaa !5
  %142 = load i8*, i8** %outp_base123, align 8, !tbaa !5
  store i8* %142, i8** %inp, align 8, !tbaa !5
  %143 = load i8*, i8** %outp_base123, align 8, !tbaa !5
  %incdec.ptr148 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr148, i8** %outp_base123, align 8, !tbaa !5
  store i8* %143, i8** %outp, align 8, !tbaa !5
  %144 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr149 = getelementptr inbounds i8, i8* %144, i32 -1
  store i8* %incdec.ptr149, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %144, align 1, !tbaa !39
  %145 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %145, i32* %x, align 4, !tbaa !1
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.232, %for.body.131
  %146 = load i32, i32* %x, align 4, !tbaa !1
  %cmp151 = icmp sgt i32 %146, 0
  br i1 %cmp151, label %for.body.153, label %for.end.234

for.body.153:                                     ; preds = %for.cond.150
  %147 = load i32, i32* %e_forward, align 4, !tbaa !1
  %148 = load i32*, i32** %errors, align 8, !tbaa !5
  %149 = load i32, i32* %148, align 4, !tbaa !1
  %add154 = add nsw i32 %147, %149
  store i32 %add154, i32* %value, align 4, !tbaa !1
  %150 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %150, i32* %xx, align 4, !tbaa !1
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.173, %for.body.153
  %151 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp156 = icmp sgt i32 %151, 0
  br i1 %cmp156, label %for.body.158, label %for.end.175

for.body.158:                                     ; preds = %for.cond.155
  %152 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %152, i32* %y, align 4, !tbaa !1
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.167, %for.body.158
  %153 = load i32, i32* %y, align 4, !tbaa !1
  %cmp160 = icmp sgt i32 %153, 0
  br i1 %cmp160, label %for.body.162, label %for.end.169

for.body.162:                                     ; preds = %for.cond.159
  %154 = load i8*, i8** %inp, align 8, !tbaa !5
  %155 = load i8, i8* %154, align 1, !tbaa !39
  %conv163 = zext i8 %155 to i32
  %156 = load i32, i32* %value, align 4, !tbaa !1
  %add164 = add nsw i32 %156, %conv163
  store i32 %add164, i32* %value, align 4, !tbaa !1
  %157 = load i32, i32* %span.addr, align 4, !tbaa !1
  %158 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext165 = sext i32 %157 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %158, i64 %idx.ext165
  store i8* %add.ptr166, i8** %inp, align 8, !tbaa !5
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.162
  %159 = load i32, i32* %y, align 4, !tbaa !1
  %dec168 = add nsw i32 %159, -1
  store i32 %dec168, i32* %y, align 4, !tbaa !1
  br label %for.cond.159

for.end.169:                                      ; preds = %for.cond.159
  %160 = load i32, i32* %back120, align 4, !tbaa !1
  %161 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext170 = sext i32 %160 to i64
  %idx.neg171 = sub i64 0, %idx.ext170
  %add.ptr172 = getelementptr inbounds i8, i8* %161, i64 %idx.neg171
  store i8* %add.ptr172, i8** %inp, align 8, !tbaa !5
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.end.169
  %162 = load i32, i32* %xx, align 4, !tbaa !1
  %dec174 = add nsw i32 %162, -1
  store i32 %dec174, i32* %xx, align 4, !tbaa !1
  br label %for.cond.155

for.end.175:                                      ; preds = %for.cond.155
  %163 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %164 = load i8, i8* %163, align 1, !tbaa !39
  store i8 %164, i8* %mfs132, align 1, !tbaa !39
  %165 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %incdec.ptr176 = getelementptr inbounds i8, i8* %165, i32 -1
  store i8* %incdec.ptr176, i8** %mfs_data, align 8, !tbaa !5
  store i8 0, i8* %165, align 1, !tbaa !39
  %166 = load i8, i8* %mfs132, align 1, !tbaa !39
  %conv177 = zext i8 %166 to i32
  %and178 = and i32 %conv177, 1
  %tobool179 = icmp ne i32 %and178, 0
  br i1 %tobool179, label %if.then.183, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %for.end.175
  %167 = load i8, i8* %force_forward133, align 1, !tbaa !39
  %conv181 = zext i8 %167 to i32
  %tobool182 = icmp ne i32 %conv181, 0
  br i1 %tobool182, label %if.then.183, label %if.else.185

if.then.183:                                      ; preds = %lor.lhs.false.180, %for.end.175
  %168 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %168, align 1, !tbaa !39
  %169 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr184 = getelementptr inbounds i8, i8* %169, i64 -4
  store i8* %add.ptr184, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %force_forward133, align 1, !tbaa !39
  br label %if.end.217

if.else.185:                                      ; preds = %lor.lhs.false.180
  %170 = load i32, i32* %value, align 4, !tbaa !1
  %171 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp186 = icmp slt i32 %170, %171
  br i1 %cmp186, label %if.then.188, label %if.else.213

if.then.188:                                      ; preds = %if.else.185
  %172 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %172, align 1, !tbaa !39
  %173 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr189 = getelementptr inbounds i8, i8* %173, i64 -4
  store i8* %add.ptr189, i8** %outp, align 8, !tbaa !5
  %174 = load i8, i8* %mfs132, align 1, !tbaa !39
  %conv190 = zext i8 %174 to i32
  %and191 = and i32 %conv190, 6
  %cmp192 = icmp ne i32 %and191, 6
  br i1 %cmp192, label %if.then.194, label %if.else.203

if.then.194:                                      ; preds = %if.then.188
  %175 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx195 = getelementptr inbounds i8, i8* %175, i64 1
  %176 = load i8, i8* %arrayidx195, align 1, !tbaa !39
  %conv196 = zext i8 %176 to i32
  %or197 = or i32 %conv196, 1
  %conv198 = trunc i32 %or197 to i8
  store i8 %conv198, i8* %arrayidx195, align 1, !tbaa !39
  %177 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx199 = getelementptr inbounds i8, i8* %177, i64 2
  %178 = load i8, i8* %arrayidx199, align 1, !tbaa !39
  %conv200 = zext i8 %178 to i32
  %or201 = or i32 %conv200, 1
  %conv202 = trunc i32 %or201 to i8
  store i8 %conv202, i8* %arrayidx199, align 1, !tbaa !39
  store i8 1, i8* %force_forward133, align 1, !tbaa !39
  br label %if.end.212

if.else.203:                                      ; preds = %if.then.188
  %179 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx204 = getelementptr inbounds i8, i8* %179, i64 1
  %180 = load i8, i8* %arrayidx204, align 1, !tbaa !39
  %conv205 = zext i8 %180 to i32
  %or206 = or i32 %conv205, 2
  %conv207 = trunc i32 %or206 to i8
  store i8 %conv207, i8* %arrayidx204, align 1, !tbaa !39
  %181 = load i8*, i8** %mfs_data, align 8, !tbaa !5
  %arrayidx208 = getelementptr inbounds i8, i8* %181, i64 2
  %182 = load i8, i8* %arrayidx208, align 1, !tbaa !39
  %conv209 = zext i8 %182 to i32
  %or210 = or i32 %conv209, 4
  %conv211 = trunc i32 %or210 to i8
  store i8 %conv211, i8* %arrayidx208, align 1, !tbaa !39
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.203, %if.then.194
  br label %if.end.216

if.else.213:                                      ; preds = %if.else.185
  %183 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %183, align 1, !tbaa !39
  %184 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr214 = getelementptr inbounds i8, i8* %184, i64 -4
  store i8* %add.ptr214, i8** %outp, align 8, !tbaa !5
  %185 = load i32, i32* %max_value, align 4, !tbaa !1
  %186 = load i32, i32* %value, align 4, !tbaa !1
  %sub215 = sub nsw i32 %186, %185
  store i32 %sub215, i32* %value, align 4, !tbaa !1
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.213, %if.end.212
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216, %if.then.183
  %187 = load i32, i32* %value, align 4, !tbaa !1
  %mul218 = mul nsw i32 %187, 7
  %div219 = sdiv i32 %mul218, 16
  store i32 %div219, i32* %e_forward, align 4, !tbaa !1
  %188 = load i32, i32* %value, align 4, !tbaa !1
  %mul220 = mul nsw i32 %188, 3
  %div221 = sdiv i32 %mul220, 16
  store i32 %div221, i32* %e_downleft, align 4, !tbaa !1
  %189 = load i32, i32* %value, align 4, !tbaa !1
  %mul222 = mul nsw i32 %189, 5
  %div223 = sdiv i32 %mul222, 16
  store i32 %div223, i32* %e_down, align 4, !tbaa !1
  %190 = load i32, i32* %e_forward, align 4, !tbaa !1
  %191 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add224 = add nsw i32 %190, %191
  %192 = load i32, i32* %e_down, align 4, !tbaa !1
  %add225 = add nsw i32 %add224, %192
  %193 = load i32, i32* %value, align 4, !tbaa !1
  %sub226 = sub nsw i32 %193, %add225
  store i32 %sub226, i32* %value, align 4, !tbaa !1
  %194 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %195 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx227 = getelementptr inbounds i32, i32* %195, i64 2
  %196 = load i32, i32* %arrayidx227, align 4, !tbaa !1
  %add228 = add nsw i32 %196, %194
  store i32 %add228, i32* %arrayidx227, align 4, !tbaa !1
  %197 = load i32, i32* %e_down, align 4, !tbaa !1
  %198 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx229 = getelementptr inbounds i32, i32* %198, i64 1
  %199 = load i32, i32* %arrayidx229, align 4, !tbaa !1
  %add230 = add nsw i32 %199, %197
  store i32 %add230, i32* %arrayidx229, align 4, !tbaa !1
  %200 = load i32, i32* %value, align 4, !tbaa !1
  %201 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr231 = getelementptr inbounds i32, i32* %201, i32 -1
  store i32* %incdec.ptr231, i32** %errors, align 8, !tbaa !5
  store i32 %200, i32* %201, align 4, !tbaa !1
  br label %for.inc.232

for.inc.232:                                      ; preds = %if.end.217
  %202 = load i32, i32* %x, align 4, !tbaa !1
  %dec233 = add nsw i32 %202, -1
  store i32 %dec233, i32* %x, align 4, !tbaa !1
  br label %for.cond.150

for.end.234:                                      ; preds = %for.cond.150
  call void @llvm.lifetime.end(i64 1, i8* %force_forward133) #1
  call void @llvm.lifetime.end(i64 1, i8* %mfs132) #1
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.end.234
  %203 = load i32, i32* %comp, align 4, !tbaa !1
  %inc236 = add nsw i32 %203, 1
  store i32 %inc236, i32* %comp, align 4, !tbaa !1
  br label %for.cond.128

for.end.237:                                      ; preds = %for.cond.128
  %204 = load i8*, i8** %outp_base123, align 8, !tbaa !5
  %205 = load i32, i32* %awidth, align 4, !tbaa !1
  %206 = load i32, i32* %factor, align 4, !tbaa !1
  %mul238 = mul nsw i32 %205, %206
  %idx.ext239 = sext i32 %mul238 to i64
  %idx.neg240 = sub i64 0, %idx.ext239
  %add.ptr241 = getelementptr inbounds i8, i8* %204, i64 %idx.neg240
  store i8* %add.ptr241, i8** %outp, align 8, !tbaa !5
  %207 = bitcast i8** %outp_base123 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %207) #1
  %208 = bitcast i32* %back120 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  br label %if.end.242

if.end.242:                                       ; preds = %for.end.237, %for.end.117
  %209 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %210 = load i8*, i8** %outp, align 8, !tbaa !5
  %211 = load i32, i32* %awidth, align 4, !tbaa !1
  %mul243 = mul nsw i32 %211, 4
  call void @pack_8to1(i8* %209, i8* %210, i32 %mul243) #4
  %212 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i8** %mfs_data to i8*
  call void @llvm.lifetime.end(i64 8, i8* %214) #1
  %215 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %215) #1
  %216 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %219) #1
  %220 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %220) #1
  %221 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  %226 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  %228 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core4(%struct.gx_downscaler_s* %ds, i8* %out_buffer, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_buffer.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %comp = alloca i32, align 4
  %e_downleft = alloca i32, align 4
  %e_down = alloca i32, align 4
  %e_forward = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %outp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %errors = alloca i32*, align 8
  %threshold = alloca i32, align 4
  %max_value = alloca i32, align 4
  %back = alloca i32, align 4
  %back82 = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_buffer, i8** %out_buffer.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  store i32 0, i32* %e_forward, align 4, !tbaa !1
  %8 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #1
  %12 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %12, i32 0, i32 1
  %13 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %13, i32* %width, align 4, !tbaa !1
  %14 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %15, i32 0, i32 2
  %16 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %16, i32* %awidth, align 4, !tbaa !1
  %17 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %18, i32 0, i32 4
  %19 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %19, i32* %factor, align 4, !tbaa !1
  %20 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.start(i64 8, i8* %20) #1
  %21 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors4 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %21, i32 0, i32 7
  %22 = load i32*, i32** %errors4, align 8, !tbaa !38
  store i32* %22, i32** %errors, align 8, !tbaa !5
  %23 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load i32, i32* %factor, align 4, !tbaa !1
  %25 = load i32, i32* %factor, align 4, !tbaa !1
  %mul = mul nsw i32 %24, %25
  %mul5 = mul nsw i32 %mul, 128
  store i32 %mul5, i32* %threshold, align 4, !tbaa !1
  %26 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %26) #1
  %27 = load i32, i32* %factor, align 4, !tbaa !1
  %28 = load i32, i32* %factor, align 4, !tbaa !1
  %mul6 = mul nsw i32 %27, %28
  %mul7 = mul nsw i32 %mul6, 255
  store i32 %mul7, i32* %max_value, align 4, !tbaa !1
  %29 = load i32, i32* %awidth, align 4, !tbaa !1
  %30 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %29, %30
  %31 = load i32, i32* %factor, align 4, !tbaa !1
  %mul8 = mul nsw i32 %sub, %31
  %mul9 = mul nsw i32 %mul8, 4
  store i32 %mul9, i32* %pad_white, align 4, !tbaa !1
  %32 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %32, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %33 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %33, 0
  br i1 %tobool, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end
  %34 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %35 = load i32, i32* %width, align 4, !tbaa !1
  %36 = load i32, i32* %factor, align 4, !tbaa !1
  %mul11 = mul nsw i32 %35, %36
  %mul12 = mul nsw i32 %mul11, 4
  %idx.ext = sext i32 %mul12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  %37 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %37, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %38 = load i32, i32* %y, align 4, !tbaa !1
  %cmp13 = icmp sgt i32 %38, 0
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i8*, i8** %inp, align 8, !tbaa !5
  %40 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %40 to i64
  %call = call i8* @memset(i8* %39, i32 255, i64 %conv) #5
  %41 = load i32, i32* %span.addr, align 4, !tbaa !1
  %42 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext14 = sext i32 %41 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %42, i64 %idx.ext14
  store i8* %add.ptr15, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %44 = load i32, i32* %row.addr, align 4, !tbaa !1
  %and = and i32 %44, 1
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %if.then.19, label %if.else.81

if.then.19:                                       ; preds = %if.end.16
  %45 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %span.addr, align 4, !tbaa !1
  %47 = load i32, i32* %factor, align 4, !tbaa !1
  %mul20 = mul nsw i32 %46, %47
  %sub21 = sub nsw i32 %mul20, 4
  store i32 %sub21, i32* %back, align 4, !tbaa !1
  store i32 0, i32* %comp, align 4, !tbaa !1
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.79, %if.then.19
  %48 = load i32, i32* %comp, align 4, !tbaa !1
  %cmp23 = icmp slt i32 %48, 4
  br i1 %cmp23, label %for.body.25, label %for.end.80

for.body.25:                                      ; preds = %for.cond.22
  %49 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors26 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %49, i32 0, i32 7
  %50 = load i32*, i32** %errors26, align 8, !tbaa !38
  %51 = load i32, i32* %awidth, align 4, !tbaa !1
  %add = add nsw i32 %51, 3
  %52 = load i32, i32* %comp, align 4, !tbaa !1
  %mul27 = mul nsw i32 %add, %52
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i32, i32* %50, i64 %idx.ext28
  %add.ptr30 = getelementptr inbounds i32, i32* %add.ptr29, i64 2
  store i32* %add.ptr30, i32** %errors, align 8, !tbaa !5
  %53 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %54 = load i32, i32* %comp, align 4, !tbaa !1
  %idx.ext31 = sext i32 %54 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %53, i64 %idx.ext31
  store i8* %add.ptr32, i8** %inp, align 8, !tbaa !5
  %55 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %55, i8** %outp, align 8, !tbaa !5
  %56 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %56, i32* %x, align 4, !tbaa !1
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.76, %for.body.25
  %57 = load i32, i32* %x, align 4, !tbaa !1
  %cmp34 = icmp sgt i32 %57, 0
  br i1 %cmp34, label %for.body.36, label %for.end.78

for.body.36:                                      ; preds = %for.cond.33
  %58 = load i32, i32* %e_forward, align 4, !tbaa !1
  %59 = load i32*, i32** %errors, align 8, !tbaa !5
  %60 = load i32, i32* %59, align 4, !tbaa !1
  %add37 = add nsw i32 %58, %60
  store i32 %add37, i32* %value, align 4, !tbaa !1
  %61 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %61, i32* %xx, align 4, !tbaa !1
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.55, %for.body.36
  %62 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp39 = icmp sgt i32 %62, 0
  br i1 %cmp39, label %for.body.41, label %for.end.57

for.body.41:                                      ; preds = %for.cond.38
  %63 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %63, i32* %y, align 4, !tbaa !1
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.50, %for.body.41
  %64 = load i32, i32* %y, align 4, !tbaa !1
  %cmp43 = icmp sgt i32 %64, 0
  br i1 %cmp43, label %for.body.45, label %for.end.52

for.body.45:                                      ; preds = %for.cond.42
  %65 = load i8*, i8** %inp, align 8, !tbaa !5
  %66 = load i8, i8* %65, align 1, !tbaa !39
  %conv46 = zext i8 %66 to i32
  %67 = load i32, i32* %value, align 4, !tbaa !1
  %add47 = add nsw i32 %67, %conv46
  store i32 %add47, i32* %value, align 4, !tbaa !1
  %68 = load i32, i32* %span.addr, align 4, !tbaa !1
  %69 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext48 = sext i32 %68 to i64
  %add.ptr49 = getelementptr inbounds i8, i8* %69, i64 %idx.ext48
  store i8* %add.ptr49, i8** %inp, align 8, !tbaa !5
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.45
  %70 = load i32, i32* %y, align 4, !tbaa !1
  %dec51 = add nsw i32 %70, -1
  store i32 %dec51, i32* %y, align 4, !tbaa !1
  br label %for.cond.42

for.end.52:                                       ; preds = %for.cond.42
  %71 = load i32, i32* %back, align 4, !tbaa !1
  %72 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext53 = sext i32 %71 to i64
  %idx.neg = sub i64 0, %idx.ext53
  %add.ptr54 = getelementptr inbounds i8, i8* %72, i64 %idx.neg
  store i8* %add.ptr54, i8** %inp, align 8, !tbaa !5
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.52
  %73 = load i32, i32* %xx, align 4, !tbaa !1
  %dec56 = add nsw i32 %73, -1
  store i32 %dec56, i32* %xx, align 4, !tbaa !1
  br label %for.cond.38

for.end.57:                                       ; preds = %for.cond.38
  %74 = load i32, i32* %value, align 4, !tbaa !1
  %75 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp58 = icmp sge i32 %74, %75
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %for.end.57
  %76 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %76, align 1, !tbaa !39
  %77 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr61 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %add.ptr61, i8** %outp, align 8, !tbaa !5
  %78 = load i32, i32* %max_value, align 4, !tbaa !1
  %79 = load i32, i32* %value, align 4, !tbaa !1
  %sub62 = sub nsw i32 %79, %78
  store i32 %sub62, i32* %value, align 4, !tbaa !1
  br label %if.end.64

if.else:                                          ; preds = %for.end.57
  %80 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %80, align 1, !tbaa !39
  %81 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr63 = getelementptr inbounds i8, i8* %81, i64 4
  store i8* %add.ptr63, i8** %outp, align 8, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.else, %if.then.60
  %82 = load i32, i32* %value, align 4, !tbaa !1
  %mul65 = mul nsw i32 %82, 7
  %div = sdiv i32 %mul65, 16
  store i32 %div, i32* %e_forward, align 4, !tbaa !1
  %83 = load i32, i32* %value, align 4, !tbaa !1
  %mul66 = mul nsw i32 %83, 3
  %div67 = sdiv i32 %mul66, 16
  store i32 %div67, i32* %e_downleft, align 4, !tbaa !1
  %84 = load i32, i32* %value, align 4, !tbaa !1
  %mul68 = mul nsw i32 %84, 5
  %div69 = sdiv i32 %mul68, 16
  store i32 %div69, i32* %e_down, align 4, !tbaa !1
  %85 = load i32, i32* %e_forward, align 4, !tbaa !1
  %86 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add70 = add nsw i32 %85, %86
  %87 = load i32, i32* %e_down, align 4, !tbaa !1
  %add71 = add nsw i32 %add70, %87
  %88 = load i32, i32* %value, align 4, !tbaa !1
  %sub72 = sub nsw i32 %88, %add71
  store i32 %sub72, i32* %value, align 4, !tbaa !1
  %89 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %90 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i32, i32* %90, i64 -2
  %91 = load i32, i32* %arrayidx, align 4, !tbaa !1
  %add73 = add nsw i32 %91, %89
  store i32 %add73, i32* %arrayidx, align 4, !tbaa !1
  %92 = load i32, i32* %e_down, align 4, !tbaa !1
  %93 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx74 = getelementptr inbounds i32, i32* %93, i64 -1
  %94 = load i32, i32* %arrayidx74, align 4, !tbaa !1
  %add75 = add nsw i32 %94, %92
  store i32 %add75, i32* %arrayidx74, align 4, !tbaa !1
  %95 = load i32, i32* %value, align 4, !tbaa !1
  %96 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %incdec.ptr, i32** %errors, align 8, !tbaa !5
  store i32 %95, i32* %96, align 4, !tbaa !1
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.64
  %97 = load i32, i32* %x, align 4, !tbaa !1
  %dec77 = add nsw i32 %97, -1
  store i32 %dec77, i32* %x, align 4, !tbaa !1
  br label %for.cond.33

for.end.78:                                       ; preds = %for.cond.33
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %98 = load i32, i32* %comp, align 4, !tbaa !1
  %inc = add nsw i32 %98, 1
  store i32 %inc, i32* %comp, align 4, !tbaa !1
  br label %for.cond.22

for.end.80:                                       ; preds = %for.cond.22
  %99 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %99, i8** %outp, align 8, !tbaa !5
  %100 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  br label %if.end.165

if.else.81:                                       ; preds = %if.end.16
  %101 = bitcast i32* %back82 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %101) #1
  %102 = load i32, i32* %span.addr, align 4, !tbaa !1
  %103 = load i32, i32* %factor, align 4, !tbaa !1
  %mul83 = mul nsw i32 %102, %103
  %add84 = add nsw i32 %mul83, 4
  store i32 %add84, i32* %back82, align 4, !tbaa !1
  store i32 0, i32* %comp, align 4, !tbaa !1
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.154, %if.else.81
  %104 = load i32, i32* %comp, align 4, !tbaa !1
  %cmp86 = icmp slt i32 %104, 4
  br i1 %cmp86, label %for.body.88, label %for.end.156

for.body.88:                                      ; preds = %for.cond.85
  %105 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %errors89 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %105, i32 0, i32 7
  %106 = load i32*, i32** %errors89, align 8, !tbaa !38
  %107 = load i32, i32* %awidth, align 4, !tbaa !1
  %add90 = add nsw i32 %107, 3
  %108 = load i32, i32* %comp, align 4, !tbaa !1
  %mul91 = mul nsw i32 %add90, %108
  %idx.ext92 = sext i32 %mul91 to i64
  %add.ptr93 = getelementptr inbounds i32, i32* %106, i64 %idx.ext92
  %109 = load i32, i32* %awidth, align 4, !tbaa !1
  %idx.ext94 = sext i32 %109 to i64
  %add.ptr95 = getelementptr inbounds i32, i32* %add.ptr93, i64 %idx.ext94
  store i32* %add.ptr95, i32** %errors, align 8, !tbaa !5
  %110 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %111 = load i32, i32* %awidth, align 4, !tbaa !1
  %112 = load i32, i32* %factor, align 4, !tbaa !1
  %mul96 = mul nsw i32 %111, %112
  %mul97 = mul nsw i32 %mul96, 4
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %110, i64 %idx.ext98
  %add.ptr100 = getelementptr inbounds i8, i8* %add.ptr99, i64 -4
  %113 = load i32, i32* %comp, align 4, !tbaa !1
  %idx.ext101 = sext i32 %113 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %add.ptr100, i64 %idx.ext101
  store i8* %add.ptr102, i8** %inp, align 8, !tbaa !5
  %114 = load i8*, i8** %inp, align 8, !tbaa !5
  store i8* %114, i8** %outp, align 8, !tbaa !5
  %115 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %115, i32* %x, align 4, !tbaa !1
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.151, %for.body.88
  %116 = load i32, i32* %x, align 4, !tbaa !1
  %cmp104 = icmp sgt i32 %116, 0
  br i1 %cmp104, label %for.body.106, label %for.end.153

for.body.106:                                     ; preds = %for.cond.103
  %117 = load i32, i32* %e_forward, align 4, !tbaa !1
  %118 = load i32*, i32** %errors, align 8, !tbaa !5
  %119 = load i32, i32* %118, align 4, !tbaa !1
  %add107 = add nsw i32 %117, %119
  store i32 %add107, i32* %value, align 4, !tbaa !1
  %120 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %120, i32* %xx, align 4, !tbaa !1
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.126, %for.body.106
  %121 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp109 = icmp sgt i32 %121, 0
  br i1 %cmp109, label %for.body.111, label %for.end.128

for.body.111:                                     ; preds = %for.cond.108
  %122 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %122, i32* %y, align 4, !tbaa !1
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.120, %for.body.111
  %123 = load i32, i32* %y, align 4, !tbaa !1
  %cmp113 = icmp sgt i32 %123, 0
  br i1 %cmp113, label %for.body.115, label %for.end.122

for.body.115:                                     ; preds = %for.cond.112
  %124 = load i8*, i8** %inp, align 8, !tbaa !5
  %125 = load i8, i8* %124, align 1, !tbaa !39
  %conv116 = zext i8 %125 to i32
  %126 = load i32, i32* %value, align 4, !tbaa !1
  %add117 = add nsw i32 %126, %conv116
  store i32 %add117, i32* %value, align 4, !tbaa !1
  %127 = load i32, i32* %span.addr, align 4, !tbaa !1
  %128 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext118 = sext i32 %127 to i64
  %add.ptr119 = getelementptr inbounds i8, i8* %128, i64 %idx.ext118
  store i8* %add.ptr119, i8** %inp, align 8, !tbaa !5
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.115
  %129 = load i32, i32* %y, align 4, !tbaa !1
  %dec121 = add nsw i32 %129, -1
  store i32 %dec121, i32* %y, align 4, !tbaa !1
  br label %for.cond.112

for.end.122:                                      ; preds = %for.cond.112
  %130 = load i32, i32* %back82, align 4, !tbaa !1
  %131 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext123 = sext i32 %130 to i64
  %idx.neg124 = sub i64 0, %idx.ext123
  %add.ptr125 = getelementptr inbounds i8, i8* %131, i64 %idx.neg124
  store i8* %add.ptr125, i8** %inp, align 8, !tbaa !5
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.end.122
  %132 = load i32, i32* %xx, align 4, !tbaa !1
  %dec127 = add nsw i32 %132, -1
  store i32 %dec127, i32* %xx, align 4, !tbaa !1
  br label %for.cond.108

for.end.128:                                      ; preds = %for.cond.108
  %133 = load i32, i32* %value, align 4, !tbaa !1
  %134 = load i32, i32* %threshold, align 4, !tbaa !1
  %cmp129 = icmp sge i32 %133, %134
  br i1 %cmp129, label %if.then.131, label %if.else.134

if.then.131:                                      ; preds = %for.end.128
  %135 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 1, i8* %135, align 1, !tbaa !39
  %136 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr132 = getelementptr inbounds i8, i8* %136, i64 -4
  store i8* %add.ptr132, i8** %outp, align 8, !tbaa !5
  %137 = load i32, i32* %max_value, align 4, !tbaa !1
  %138 = load i32, i32* %value, align 4, !tbaa !1
  %sub133 = sub nsw i32 %138, %137
  store i32 %sub133, i32* %value, align 4, !tbaa !1
  br label %if.end.136

if.else.134:                                      ; preds = %for.end.128
  %139 = load i8*, i8** %outp, align 8, !tbaa !5
  store i8 0, i8* %139, align 1, !tbaa !39
  %140 = load i8*, i8** %outp, align 8, !tbaa !5
  %add.ptr135 = getelementptr inbounds i8, i8* %140, i64 -4
  store i8* %add.ptr135, i8** %outp, align 8, !tbaa !5
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.then.131
  %141 = load i32, i32* %value, align 4, !tbaa !1
  %mul137 = mul nsw i32 %141, 7
  %div138 = sdiv i32 %mul137, 16
  store i32 %div138, i32* %e_forward, align 4, !tbaa !1
  %142 = load i32, i32* %value, align 4, !tbaa !1
  %mul139 = mul nsw i32 %142, 3
  %div140 = sdiv i32 %mul139, 16
  store i32 %div140, i32* %e_downleft, align 4, !tbaa !1
  %143 = load i32, i32* %value, align 4, !tbaa !1
  %mul141 = mul nsw i32 %143, 5
  %div142 = sdiv i32 %mul141, 16
  store i32 %div142, i32* %e_down, align 4, !tbaa !1
  %144 = load i32, i32* %e_forward, align 4, !tbaa !1
  %145 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %add143 = add nsw i32 %144, %145
  %146 = load i32, i32* %e_down, align 4, !tbaa !1
  %add144 = add nsw i32 %add143, %146
  %147 = load i32, i32* %value, align 4, !tbaa !1
  %sub145 = sub nsw i32 %147, %add144
  store i32 %sub145, i32* %value, align 4, !tbaa !1
  %148 = load i32, i32* %e_downleft, align 4, !tbaa !1
  %149 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx146 = getelementptr inbounds i32, i32* %149, i64 2
  %150 = load i32, i32* %arrayidx146, align 4, !tbaa !1
  %add147 = add nsw i32 %150, %148
  store i32 %add147, i32* %arrayidx146, align 4, !tbaa !1
  %151 = load i32, i32* %e_down, align 4, !tbaa !1
  %152 = load i32*, i32** %errors, align 8, !tbaa !5
  %arrayidx148 = getelementptr inbounds i32, i32* %152, i64 1
  %153 = load i32, i32* %arrayidx148, align 4, !tbaa !1
  %add149 = add nsw i32 %153, %151
  store i32 %add149, i32* %arrayidx148, align 4, !tbaa !1
  %154 = load i32, i32* %value, align 4, !tbaa !1
  %155 = load i32*, i32** %errors, align 8, !tbaa !5
  %incdec.ptr150 = getelementptr inbounds i32, i32* %155, i32 -1
  store i32* %incdec.ptr150, i32** %errors, align 8, !tbaa !5
  store i32 %154, i32* %155, align 4, !tbaa !1
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.136
  %156 = load i32, i32* %x, align 4, !tbaa !1
  %dec152 = add nsw i32 %156, -1
  store i32 %dec152, i32* %x, align 4, !tbaa !1
  br label %for.cond.103

for.end.153:                                      ; preds = %for.cond.103
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.end.153
  %157 = load i32, i32* %comp, align 4, !tbaa !1
  %inc155 = add nsw i32 %157, 1
  store i32 %inc155, i32* %comp, align 4, !tbaa !1
  br label %for.cond.85

for.end.156:                                      ; preds = %for.cond.85
  %158 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %159 = load i32, i32* %awidth, align 4, !tbaa !1
  %160 = load i32, i32* %factor, align 4, !tbaa !1
  %mul157 = mul nsw i32 %159, %160
  %mul158 = mul nsw i32 %mul157, 4
  %idx.ext159 = sext i32 %mul158 to i64
  %add.ptr160 = getelementptr inbounds i8, i8* %158, i64 %idx.ext159
  %161 = load i32, i32* %awidth, align 4, !tbaa !1
  %mul161 = mul nsw i32 %161, 4
  %idx.ext162 = sext i32 %mul161 to i64
  %idx.neg163 = sub i64 0, %idx.ext162
  %add.ptr164 = getelementptr inbounds i8, i8* %add.ptr160, i64 %idx.neg163
  store i8* %add.ptr164, i8** %outp, align 8, !tbaa !5
  %162 = bitcast i32* %back82 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %162) #1
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.156, %for.end.80
  %163 = load i8*, i8** %out_buffer.addr, align 8, !tbaa !5
  %164 = load i8*, i8** %outp, align 8, !tbaa !5
  %165 = load i32, i32* %awidth, align 4, !tbaa !1
  %mul166 = mul nsw i32 %165, 4
  call void @pack_8to1(i8* %163, i8* %164, i32 %mul166) #4
  %166 = bitcast i32* %max_value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %166) #1
  %167 = bitcast i32* %threshold to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32** %errors to i8*
  call void @llvm.lifetime.end(i64 8, i8* %168) #1
  %169 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %171) #1
  %172 = bitcast i8** %outp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %172) #1
  %173 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %173) #1
  %174 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast i32* %e_forward to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = bitcast i32* %e_down to i8*
  call void @llvm.lifetime.end(i64 4, i8* %176) #1
  %177 = bitcast i32* %e_downleft to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  %178 = bitcast i32* %comp to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core24(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %div = alloca i32, align 4
  %back = alloca i32, align 4
  %back2 = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %8, i32* %width, align 4, !tbaa !1
  %9 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %10, i32 0, i32 2
  %11 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %11, i32* %awidth, align 4, !tbaa !1
  %12 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %13, i32 0, i32 4
  %14 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %14, i32* %factor, align 4, !tbaa !1
  %15 = bitcast i32* %div to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %factor, align 4, !tbaa !1
  %17 = load i32, i32* %factor, align 4, !tbaa !1
  %mul = mul nsw i32 %16, %17
  store i32 %mul, i32* %div, align 4, !tbaa !1
  %18 = load i32, i32* %awidth, align 4, !tbaa !1
  %19 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %18, %19
  %20 = load i32, i32* %factor, align 4, !tbaa !1
  %mul4 = mul nsw i32 %sub, %20
  %mul5 = mul nsw i32 %mul4, 3
  store i32 %mul5, i32* %pad_white, align 4, !tbaa !1
  %21 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end
  %23 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %24 = load i32, i32* %width, align 4, !tbaa !1
  %25 = load i32, i32* %factor, align 4, !tbaa !1
  %mul7 = mul nsw i32 %24, %25
  %mul8 = mul nsw i32 %mul7, 3
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  %26 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %26, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %27 = load i32, i32* %y, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %27, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %29 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext10 = sext i32 %30 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %31, i64 %idx.ext10
  store i8* %add.ptr11, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %span.addr, align 4, !tbaa !1
  %36 = load i32, i32* %factor, align 4, !tbaa !1
  %mul13 = mul nsw i32 %35, %36
  %sub14 = sub nsw i32 %mul13, 3
  store i32 %sub14, i32* %back, align 4, !tbaa !1
  %37 = bitcast i32* %back2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %factor, align 4, !tbaa !1
  %mul15 = mul nsw i32 %38, 3
  %sub16 = sub nsw i32 %mul15, 1
  store i32 %sub16, i32* %back2, align 4, !tbaa !1
  %39 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %39, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.102, %if.end.12
  %40 = load i32, i32* %x, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %40, 0
  br i1 %cmp18, label %for.body.20, label %for.end.104

for.body.20:                                      ; preds = %for.cond.17
  store i32 0, i32* %value, align 4, !tbaa !1
  %41 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %41, i32* %xx, align 4, !tbaa !1
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.37, %for.body.20
  %42 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp22 = icmp sgt i32 %42, 0
  br i1 %cmp22, label %for.body.24, label %for.end.39

for.body.24:                                      ; preds = %for.cond.21
  %43 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %43, i32* %y, align 4, !tbaa !1
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.32, %for.body.24
  %44 = load i32, i32* %y, align 4, !tbaa !1
  %cmp26 = icmp sgt i32 %44, 0
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.25
  %45 = load i8*, i8** %inp, align 8, !tbaa !5
  %46 = load i8, i8* %45, align 1, !tbaa !39
  %conv29 = zext i8 %46 to i32
  %47 = load i32, i32* %value, align 4, !tbaa !1
  %add = add nsw i32 %47, %conv29
  store i32 %add, i32* %value, align 4, !tbaa !1
  %48 = load i32, i32* %span.addr, align 4, !tbaa !1
  %49 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext30 = sext i32 %48 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %49, i64 %idx.ext30
  store i8* %add.ptr31, i8** %inp, align 8, !tbaa !5
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.28
  %50 = load i32, i32* %y, align 4, !tbaa !1
  %dec33 = add nsw i32 %50, -1
  store i32 %dec33, i32* %y, align 4, !tbaa !1
  br label %for.cond.25

for.end.34:                                       ; preds = %for.cond.25
  %51 = load i32, i32* %back, align 4, !tbaa !1
  %52 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext35 = sext i32 %51 to i64
  %idx.neg = sub i64 0, %idx.ext35
  %add.ptr36 = getelementptr inbounds i8, i8* %52, i64 %idx.neg
  store i8* %add.ptr36, i8** %inp, align 8, !tbaa !5
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.34
  %53 = load i32, i32* %xx, align 4, !tbaa !1
  %dec38 = add nsw i32 %53, -1
  store i32 %dec38, i32* %xx, align 4, !tbaa !1
  br label %for.cond.21

for.end.39:                                       ; preds = %for.cond.21
  %54 = load i32, i32* %back2, align 4, !tbaa !1
  %55 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext40 = sext i32 %54 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %55, i64 %idx.neg41
  store i8* %add.ptr42, i8** %inp, align 8, !tbaa !5
  %56 = load i32, i32* %value, align 4, !tbaa !1
  %57 = load i32, i32* %div, align 4, !tbaa !1
  %shr = ashr i32 %57, 1
  %add43 = add nsw i32 %56, %shr
  %58 = load i32, i32* %div, align 4, !tbaa !1
  %div44 = sdiv i32 %add43, %58
  %conv45 = trunc i32 %div44 to i8
  %59 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv45, i8* %59, align 1, !tbaa !39
  store i32 0, i32* %value, align 4, !tbaa !1
  %60 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %60, i32* %xx, align 4, !tbaa !1
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.64, %for.end.39
  %61 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp47 = icmp sgt i32 %61, 0
  br i1 %cmp47, label %for.body.49, label %for.end.66

for.body.49:                                      ; preds = %for.cond.46
  %62 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %62, i32* %y, align 4, !tbaa !1
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.58, %for.body.49
  %63 = load i32, i32* %y, align 4, !tbaa !1
  %cmp51 = icmp sgt i32 %63, 0
  br i1 %cmp51, label %for.body.53, label %for.end.60

for.body.53:                                      ; preds = %for.cond.50
  %64 = load i8*, i8** %inp, align 8, !tbaa !5
  %65 = load i8, i8* %64, align 1, !tbaa !39
  %conv54 = zext i8 %65 to i32
  %66 = load i32, i32* %value, align 4, !tbaa !1
  %add55 = add nsw i32 %66, %conv54
  store i32 %add55, i32* %value, align 4, !tbaa !1
  %67 = load i32, i32* %span.addr, align 4, !tbaa !1
  %68 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext56 = sext i32 %67 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %68, i64 %idx.ext56
  store i8* %add.ptr57, i8** %inp, align 8, !tbaa !5
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.53
  %69 = load i32, i32* %y, align 4, !tbaa !1
  %dec59 = add nsw i32 %69, -1
  store i32 %dec59, i32* %y, align 4, !tbaa !1
  br label %for.cond.50

for.end.60:                                       ; preds = %for.cond.50
  %70 = load i32, i32* %back, align 4, !tbaa !1
  %71 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext61 = sext i32 %70 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %71, i64 %idx.neg62
  store i8* %add.ptr63, i8** %inp, align 8, !tbaa !5
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end.60
  %72 = load i32, i32* %xx, align 4, !tbaa !1
  %dec65 = add nsw i32 %72, -1
  store i32 %dec65, i32* %xx, align 4, !tbaa !1
  br label %for.cond.46

for.end.66:                                       ; preds = %for.cond.46
  %73 = load i32, i32* %back2, align 4, !tbaa !1
  %74 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext67 = sext i32 %73 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %74, i64 %idx.neg68
  store i8* %add.ptr69, i8** %inp, align 8, !tbaa !5
  %75 = load i32, i32* %value, align 4, !tbaa !1
  %76 = load i32, i32* %div, align 4, !tbaa !1
  %shr70 = ashr i32 %76, 1
  %add71 = add nsw i32 %75, %shr70
  %77 = load i32, i32* %div, align 4, !tbaa !1
  %div72 = sdiv i32 %add71, %77
  %conv73 = trunc i32 %div72 to i8
  %78 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr74 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr74, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv73, i8* %78, align 1, !tbaa !39
  store i32 0, i32* %value, align 4, !tbaa !1
  %79 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %79, i32* %xx, align 4, !tbaa !1
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.93, %for.end.66
  %80 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp76 = icmp sgt i32 %80, 0
  br i1 %cmp76, label %for.body.78, label %for.end.95

for.body.78:                                      ; preds = %for.cond.75
  %81 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %81, i32* %y, align 4, !tbaa !1
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.87, %for.body.78
  %82 = load i32, i32* %y, align 4, !tbaa !1
  %cmp80 = icmp sgt i32 %82, 0
  br i1 %cmp80, label %for.body.82, label %for.end.89

for.body.82:                                      ; preds = %for.cond.79
  %83 = load i8*, i8** %inp, align 8, !tbaa !5
  %84 = load i8, i8* %83, align 1, !tbaa !39
  %conv83 = zext i8 %84 to i32
  %85 = load i32, i32* %value, align 4, !tbaa !1
  %add84 = add nsw i32 %85, %conv83
  store i32 %add84, i32* %value, align 4, !tbaa !1
  %86 = load i32, i32* %span.addr, align 4, !tbaa !1
  %87 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext85 = sext i32 %86 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %87, i64 %idx.ext85
  store i8* %add.ptr86, i8** %inp, align 8, !tbaa !5
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.82
  %88 = load i32, i32* %y, align 4, !tbaa !1
  %dec88 = add nsw i32 %88, -1
  store i32 %dec88, i32* %y, align 4, !tbaa !1
  br label %for.cond.79

for.end.89:                                       ; preds = %for.cond.79
  %89 = load i32, i32* %back, align 4, !tbaa !1
  %90 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext90 = sext i32 %89 to i64
  %idx.neg91 = sub i64 0, %idx.ext90
  %add.ptr92 = getelementptr inbounds i8, i8* %90, i64 %idx.neg91
  store i8* %add.ptr92, i8** %inp, align 8, !tbaa !5
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.89
  %91 = load i32, i32* %xx, align 4, !tbaa !1
  %dec94 = add nsw i32 %91, -1
  store i32 %dec94, i32* %xx, align 4, !tbaa !1
  br label %for.cond.75

for.end.95:                                       ; preds = %for.cond.75
  %92 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr96 = getelementptr inbounds i8, i8* %92, i64 -2
  store i8* %add.ptr96, i8** %inp, align 8, !tbaa !5
  %93 = load i32, i32* %value, align 4, !tbaa !1
  %94 = load i32, i32* %div, align 4, !tbaa !1
  %shr97 = ashr i32 %94, 1
  %add98 = add nsw i32 %93, %shr97
  %95 = load i32, i32* %div, align 4, !tbaa !1
  %div99 = sdiv i32 %add98, %95
  %conv100 = trunc i32 %div99 to i8
  %96 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr101 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr101, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv100, i8* %96, align 1, !tbaa !39
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end.95
  %97 = load i32, i32* %x, align 4, !tbaa !1
  %dec103 = add nsw i32 %97, -1
  store i32 %dec103, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.end.104:                                      ; preds = %for.cond.17
  %98 = bitcast i32* %back2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %98) #1
  %99 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %99) #1
  %100 = bitcast i32* %div to i8*
  call void @llvm.lifetime.end(i64 4, i8* %100) #1
  %101 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %101) #1
  %102 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %102) #1
  %103 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  %105 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %108) #1
  %109 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %109) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @down_core32(%struct.gx_downscaler_s* %ds, i8* %outp, i8* %in_buffer, i32 %row, i32 %plane, i32 %span) #0 {
entry:
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %outp.addr = alloca i8*, align 8
  %in_buffer.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %plane.addr = alloca i32, align 4
  %span.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %y = alloca i32, align 4
  %value = alloca i32, align 4
  %pad_white = alloca i32, align 4
  %inp = alloca i8*, align 8
  %width = alloca i32, align 4
  %awidth = alloca i32, align 4
  %factor = alloca i32, align 4
  %div = alloca i32, align 4
  %back = alloca i32, align 4
  %back2 = alloca i32, align 4
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %in_buffer, i8** %in_buffer.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  store i32 %plane, i32* %plane.addr, align 4, !tbaa !1
  store i32 %span, i32* %span.addr, align 4, !tbaa !1
  %0 = bitcast i32* %x to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast i32* %width to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %width1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %7, i32 0, i32 1
  %8 = load i32, i32* %width1, align 4, !tbaa !23
  store i32 %8, i32* %width, align 4, !tbaa !1
  %9 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %awidth2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %10, i32 0, i32 2
  %11 = load i32, i32* %awidth2, align 4, !tbaa !24
  store i32 %11, i32* %awidth, align 4, !tbaa !1
  %12 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %13, i32 0, i32 4
  %14 = load i32, i32* %factor3, align 4, !tbaa !26
  store i32 %14, i32* %factor, align 4, !tbaa !1
  %15 = bitcast i32* %div to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %factor, align 4, !tbaa !1
  %17 = load i32, i32* %factor, align 4, !tbaa !1
  %mul = mul nsw i32 %16, %17
  store i32 %mul, i32* %div, align 4, !tbaa !1
  %18 = load i32, i32* %awidth, align 4, !tbaa !1
  %19 = load i32, i32* %width, align 4, !tbaa !1
  %sub = sub nsw i32 %18, %19
  %20 = load i32, i32* %factor, align 4, !tbaa !1
  %mul4 = mul nsw i32 %sub, %20
  %mul5 = mul nsw i32 %mul4, 4
  store i32 %mul5, i32* %pad_white, align 4, !tbaa !1
  %21 = load i32, i32* %pad_white, align 4, !tbaa !1
  %cmp = icmp slt i32 %21, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %pad_white, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %22 = load i32, i32* %pad_white, align 4, !tbaa !1
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end
  %23 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  %24 = load i32, i32* %width, align 4, !tbaa !1
  %25 = load i32, i32* %factor, align 4, !tbaa !1
  %mul7 = mul nsw i32 %24, %25
  %mul8 = mul nsw i32 %mul7, 4
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %idx.ext
  store i8* %add.ptr, i8** %inp, align 8, !tbaa !5
  %26 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %26, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %27 = load i32, i32* %y, align 4, !tbaa !1
  %cmp9 = icmp sgt i32 %27, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i8*, i8** %inp, align 8, !tbaa !5
  %29 = load i32, i32* %pad_white, align 4, !tbaa !1
  %conv = sext i32 %29 to i64
  %call = call i8* @memset(i8* %28, i32 255, i64 %conv) #5
  %30 = load i32, i32* %span.addr, align 4, !tbaa !1
  %31 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext10 = sext i32 %30 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %31, i64 %idx.ext10
  store i8* %add.ptr11, i8** %inp, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %y, align 4, !tbaa !1
  %dec = add nsw i32 %32, -1
  store i32 %dec, i32* %y, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.end
  %33 = load i8*, i8** %in_buffer.addr, align 8, !tbaa !5
  store i8* %33, i8** %inp, align 8, !tbaa !5
  %34 = bitcast i32* %back to i8*
  call void @llvm.lifetime.start(i64 4, i8* %34) #1
  %35 = load i32, i32* %span.addr, align 4, !tbaa !1
  %36 = load i32, i32* %factor, align 4, !tbaa !1
  %mul13 = mul nsw i32 %35, %36
  %sub14 = sub nsw i32 %mul13, 4
  store i32 %sub14, i32* %back, align 4, !tbaa !1
  %37 = bitcast i32* %back2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %factor, align 4, !tbaa !1
  %mul15 = mul nsw i32 %38, 4
  %sub16 = sub nsw i32 %mul15, 1
  store i32 %sub16, i32* %back2, align 4, !tbaa !1
  %39 = load i32, i32* %awidth, align 4, !tbaa !1
  store i32 %39, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.131, %if.end.12
  %40 = load i32, i32* %x, align 4, !tbaa !1
  %cmp18 = icmp sgt i32 %40, 0
  br i1 %cmp18, label %for.body.20, label %for.end.133

for.body.20:                                      ; preds = %for.cond.17
  store i32 0, i32* %value, align 4, !tbaa !1
  %41 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %41, i32* %xx, align 4, !tbaa !1
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.37, %for.body.20
  %42 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp22 = icmp sgt i32 %42, 0
  br i1 %cmp22, label %for.body.24, label %for.end.39

for.body.24:                                      ; preds = %for.cond.21
  %43 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %43, i32* %y, align 4, !tbaa !1
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.32, %for.body.24
  %44 = load i32, i32* %y, align 4, !tbaa !1
  %cmp26 = icmp sgt i32 %44, 0
  br i1 %cmp26, label %for.body.28, label %for.end.34

for.body.28:                                      ; preds = %for.cond.25
  %45 = load i8*, i8** %inp, align 8, !tbaa !5
  %46 = load i8, i8* %45, align 1, !tbaa !39
  %conv29 = zext i8 %46 to i32
  %47 = load i32, i32* %value, align 4, !tbaa !1
  %add = add nsw i32 %47, %conv29
  store i32 %add, i32* %value, align 4, !tbaa !1
  %48 = load i32, i32* %span.addr, align 4, !tbaa !1
  %49 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext30 = sext i32 %48 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %49, i64 %idx.ext30
  store i8* %add.ptr31, i8** %inp, align 8, !tbaa !5
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.28
  %50 = load i32, i32* %y, align 4, !tbaa !1
  %dec33 = add nsw i32 %50, -1
  store i32 %dec33, i32* %y, align 4, !tbaa !1
  br label %for.cond.25

for.end.34:                                       ; preds = %for.cond.25
  %51 = load i32, i32* %back, align 4, !tbaa !1
  %52 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext35 = sext i32 %51 to i64
  %idx.neg = sub i64 0, %idx.ext35
  %add.ptr36 = getelementptr inbounds i8, i8* %52, i64 %idx.neg
  store i8* %add.ptr36, i8** %inp, align 8, !tbaa !5
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.34
  %53 = load i32, i32* %xx, align 4, !tbaa !1
  %dec38 = add nsw i32 %53, -1
  store i32 %dec38, i32* %xx, align 4, !tbaa !1
  br label %for.cond.21

for.end.39:                                       ; preds = %for.cond.21
  %54 = load i32, i32* %back2, align 4, !tbaa !1
  %55 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext40 = sext i32 %54 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds i8, i8* %55, i64 %idx.neg41
  store i8* %add.ptr42, i8** %inp, align 8, !tbaa !5
  %56 = load i32, i32* %value, align 4, !tbaa !1
  %57 = load i32, i32* %div, align 4, !tbaa !1
  %shr = ashr i32 %57, 1
  %add43 = add nsw i32 %56, %shr
  %58 = load i32, i32* %div, align 4, !tbaa !1
  %div44 = sdiv i32 %add43, %58
  %conv45 = trunc i32 %div44 to i8
  %59 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv45, i8* %59, align 1, !tbaa !39
  store i32 0, i32* %value, align 4, !tbaa !1
  %60 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %60, i32* %xx, align 4, !tbaa !1
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.64, %for.end.39
  %61 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp47 = icmp sgt i32 %61, 0
  br i1 %cmp47, label %for.body.49, label %for.end.66

for.body.49:                                      ; preds = %for.cond.46
  %62 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %62, i32* %y, align 4, !tbaa !1
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.58, %for.body.49
  %63 = load i32, i32* %y, align 4, !tbaa !1
  %cmp51 = icmp sgt i32 %63, 0
  br i1 %cmp51, label %for.body.53, label %for.end.60

for.body.53:                                      ; preds = %for.cond.50
  %64 = load i8*, i8** %inp, align 8, !tbaa !5
  %65 = load i8, i8* %64, align 1, !tbaa !39
  %conv54 = zext i8 %65 to i32
  %66 = load i32, i32* %value, align 4, !tbaa !1
  %add55 = add nsw i32 %66, %conv54
  store i32 %add55, i32* %value, align 4, !tbaa !1
  %67 = load i32, i32* %span.addr, align 4, !tbaa !1
  %68 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext56 = sext i32 %67 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %68, i64 %idx.ext56
  store i8* %add.ptr57, i8** %inp, align 8, !tbaa !5
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.body.53
  %69 = load i32, i32* %y, align 4, !tbaa !1
  %dec59 = add nsw i32 %69, -1
  store i32 %dec59, i32* %y, align 4, !tbaa !1
  br label %for.cond.50

for.end.60:                                       ; preds = %for.cond.50
  %70 = load i32, i32* %back, align 4, !tbaa !1
  %71 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext61 = sext i32 %70 to i64
  %idx.neg62 = sub i64 0, %idx.ext61
  %add.ptr63 = getelementptr inbounds i8, i8* %71, i64 %idx.neg62
  store i8* %add.ptr63, i8** %inp, align 8, !tbaa !5
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.end.60
  %72 = load i32, i32* %xx, align 4, !tbaa !1
  %dec65 = add nsw i32 %72, -1
  store i32 %dec65, i32* %xx, align 4, !tbaa !1
  br label %for.cond.46

for.end.66:                                       ; preds = %for.cond.46
  %73 = load i32, i32* %back2, align 4, !tbaa !1
  %74 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext67 = sext i32 %73 to i64
  %idx.neg68 = sub i64 0, %idx.ext67
  %add.ptr69 = getelementptr inbounds i8, i8* %74, i64 %idx.neg68
  store i8* %add.ptr69, i8** %inp, align 8, !tbaa !5
  %75 = load i32, i32* %value, align 4, !tbaa !1
  %76 = load i32, i32* %div, align 4, !tbaa !1
  %shr70 = ashr i32 %76, 1
  %add71 = add nsw i32 %75, %shr70
  %77 = load i32, i32* %div, align 4, !tbaa !1
  %div72 = sdiv i32 %add71, %77
  %conv73 = trunc i32 %div72 to i8
  %78 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr74 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr74, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv73, i8* %78, align 1, !tbaa !39
  store i32 0, i32* %value, align 4, !tbaa !1
  %79 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %79, i32* %xx, align 4, !tbaa !1
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.93, %for.end.66
  %80 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp76 = icmp sgt i32 %80, 0
  br i1 %cmp76, label %for.body.78, label %for.end.95

for.body.78:                                      ; preds = %for.cond.75
  %81 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %81, i32* %y, align 4, !tbaa !1
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.87, %for.body.78
  %82 = load i32, i32* %y, align 4, !tbaa !1
  %cmp80 = icmp sgt i32 %82, 0
  br i1 %cmp80, label %for.body.82, label %for.end.89

for.body.82:                                      ; preds = %for.cond.79
  %83 = load i8*, i8** %inp, align 8, !tbaa !5
  %84 = load i8, i8* %83, align 1, !tbaa !39
  %conv83 = zext i8 %84 to i32
  %85 = load i32, i32* %value, align 4, !tbaa !1
  %add84 = add nsw i32 %85, %conv83
  store i32 %add84, i32* %value, align 4, !tbaa !1
  %86 = load i32, i32* %span.addr, align 4, !tbaa !1
  %87 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext85 = sext i32 %86 to i64
  %add.ptr86 = getelementptr inbounds i8, i8* %87, i64 %idx.ext85
  store i8* %add.ptr86, i8** %inp, align 8, !tbaa !5
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.82
  %88 = load i32, i32* %y, align 4, !tbaa !1
  %dec88 = add nsw i32 %88, -1
  store i32 %dec88, i32* %y, align 4, !tbaa !1
  br label %for.cond.79

for.end.89:                                       ; preds = %for.cond.79
  %89 = load i32, i32* %back, align 4, !tbaa !1
  %90 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext90 = sext i32 %89 to i64
  %idx.neg91 = sub i64 0, %idx.ext90
  %add.ptr92 = getelementptr inbounds i8, i8* %90, i64 %idx.neg91
  store i8* %add.ptr92, i8** %inp, align 8, !tbaa !5
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end.89
  %91 = load i32, i32* %xx, align 4, !tbaa !1
  %dec94 = add nsw i32 %91, -1
  store i32 %dec94, i32* %xx, align 4, !tbaa !1
  br label %for.cond.75

for.end.95:                                       ; preds = %for.cond.75
  %92 = load i32, i32* %back2, align 4, !tbaa !1
  %93 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext96 = sext i32 %92 to i64
  %idx.neg97 = sub i64 0, %idx.ext96
  %add.ptr98 = getelementptr inbounds i8, i8* %93, i64 %idx.neg97
  store i8* %add.ptr98, i8** %inp, align 8, !tbaa !5
  %94 = load i32, i32* %value, align 4, !tbaa !1
  %95 = load i32, i32* %div, align 4, !tbaa !1
  %shr99 = ashr i32 %95, 1
  %add100 = add nsw i32 %94, %shr99
  %96 = load i32, i32* %div, align 4, !tbaa !1
  %div101 = sdiv i32 %add100, %96
  %conv102 = trunc i32 %div101 to i8
  %97 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr103 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr103, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv102, i8* %97, align 1, !tbaa !39
  store i32 0, i32* %value, align 4, !tbaa !1
  %98 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %98, i32* %xx, align 4, !tbaa !1
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.122, %for.end.95
  %99 = load i32, i32* %xx, align 4, !tbaa !1
  %cmp105 = icmp sgt i32 %99, 0
  br i1 %cmp105, label %for.body.107, label %for.end.124

for.body.107:                                     ; preds = %for.cond.104
  %100 = load i32, i32* %factor, align 4, !tbaa !1
  store i32 %100, i32* %y, align 4, !tbaa !1
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.116, %for.body.107
  %101 = load i32, i32* %y, align 4, !tbaa !1
  %cmp109 = icmp sgt i32 %101, 0
  br i1 %cmp109, label %for.body.111, label %for.end.118

for.body.111:                                     ; preds = %for.cond.108
  %102 = load i8*, i8** %inp, align 8, !tbaa !5
  %103 = load i8, i8* %102, align 1, !tbaa !39
  %conv112 = zext i8 %103 to i32
  %104 = load i32, i32* %value, align 4, !tbaa !1
  %add113 = add nsw i32 %104, %conv112
  store i32 %add113, i32* %value, align 4, !tbaa !1
  %105 = load i32, i32* %span.addr, align 4, !tbaa !1
  %106 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext114 = sext i32 %105 to i64
  %add.ptr115 = getelementptr inbounds i8, i8* %106, i64 %idx.ext114
  store i8* %add.ptr115, i8** %inp, align 8, !tbaa !5
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.111
  %107 = load i32, i32* %y, align 4, !tbaa !1
  %dec117 = add nsw i32 %107, -1
  store i32 %dec117, i32* %y, align 4, !tbaa !1
  br label %for.cond.108

for.end.118:                                      ; preds = %for.cond.108
  %108 = load i32, i32* %back, align 4, !tbaa !1
  %109 = load i8*, i8** %inp, align 8, !tbaa !5
  %idx.ext119 = sext i32 %108 to i64
  %idx.neg120 = sub i64 0, %idx.ext119
  %add.ptr121 = getelementptr inbounds i8, i8* %109, i64 %idx.neg120
  store i8* %add.ptr121, i8** %inp, align 8, !tbaa !5
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.118
  %110 = load i32, i32* %xx, align 4, !tbaa !1
  %dec123 = add nsw i32 %110, -1
  store i32 %dec123, i32* %xx, align 4, !tbaa !1
  br label %for.cond.104

for.end.124:                                      ; preds = %for.cond.104
  %111 = load i8*, i8** %inp, align 8, !tbaa !5
  %add.ptr125 = getelementptr inbounds i8, i8* %111, i64 -3
  store i8* %add.ptr125, i8** %inp, align 8, !tbaa !5
  %112 = load i32, i32* %value, align 4, !tbaa !1
  %113 = load i32, i32* %div, align 4, !tbaa !1
  %shr126 = ashr i32 %113, 1
  %add127 = add nsw i32 %112, %shr126
  %114 = load i32, i32* %div, align 4, !tbaa !1
  %div128 = sdiv i32 %add127, %114
  %conv129 = trunc i32 %div128 to i8
  %115 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr130 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr130, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv129, i8* %115, align 1, !tbaa !39
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.124
  %116 = load i32, i32* %x, align 4, !tbaa !1
  %dec132 = add nsw i32 %116, -1
  store i32 %dec132, i32* %x, align 4, !tbaa !1
  br label %for.cond.17

for.end.133:                                      ; preds = %for.cond.17
  %117 = bitcast i32* %back2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %117) #1
  %118 = bitcast i32* %back to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %div to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %awidth to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = bitcast i32* %width to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i8** %inp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %123) #1
  %124 = bitcast i32* %pad_white to i8*
  call void @llvm.lifetime.end(i64 4, i8* %124) #1
  %125 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %125) #1
  %126 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %126) #1
  %127 = bitcast i32* %xx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %127) #1
  %128 = bitcast i32* %x to i8*
  call void @llvm.lifetime.end(i64 4, i8* %128) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_getbits(%struct.gx_downscaler_s* %ds, i8* %out_data, i32 %row) #0 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %out_data.addr = alloca i8*, align 8
  %row.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %y = alloca i32, align 4
  %y_end = alloca i32, align 4
  %data_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i8* %out_data, i8** %out_data.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %code, align 4, !tbaa !1
  %1 = bitcast i32* %y to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %y_end to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 11
  %5 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core, align 8, !tbaa !36
  %cmp = icmp eq void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %6, i32 0, i32 0
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !20
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %7, i32 0, i32 42
  %get_bits = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 12
  %8 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits, align 8, !tbaa !42
  %9 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %9, i32 0, i32 0
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !20
  %11 = load i32, i32* %row.addr, align 4, !tbaa !1
  %12 = load i8*, i8** %out_data.addr, align 8, !tbaa !5
  %call = call i32 %8(%struct.gx_device_s* %10, i32 %11, i8* %12, i8** null) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %row.addr, align 4, !tbaa !1
  %14 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %14, i32 0, i32 4
  %15 = load i32, i32* %factor, align 4, !tbaa !26
  %mul = mul nsw i32 %13, %15
  store i32 %mul, i32* %y, align 4, !tbaa !1
  %16 = load i32, i32* %y, align 4, !tbaa !1
  %17 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %17, i32 0, i32 4
  %18 = load i32, i32* %factor2, align 4, !tbaa !26
  %add = add nsw i32 %16, %18
  store i32 %add, i32* %y_end, align 4, !tbaa !1
  %19 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %19, i32 0, i32 8
  %20 = load i8*, i8** %data, align 8, !tbaa !41
  store i8* %20, i8** %data_ptr, align 8, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %21 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev3 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %21, i32 0, i32 0
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev3, align 8, !tbaa !20
  %procs4 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 42
  %get_bits5 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs4, i32 0, i32 12
  %23 = load i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)** %get_bits5, align 8, !tbaa !42
  %24 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev6 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %24, i32 0, i32 0
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev6, align 8, !tbaa !20
  %26 = load i32, i32* %y, align 4, !tbaa !1
  %27 = load i8*, i8** %data_ptr, align 8, !tbaa !5
  %call7 = call i32 %23(%struct.gx_device_s* %25, i32 %26, i8* %27, i8** null) #4
  store i32 %call7, i32* %code, align 4, !tbaa !1
  %28 = load i32, i32* %code, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %28, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body
  %29 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %do.body
  %30 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %30, i32 0, i32 3
  %31 = load i32, i32* %span, align 4, !tbaa !25
  %32 = load i8*, i8** %data_ptr, align 8, !tbaa !5
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  store i8* %add.ptr, i8** %data_ptr, align 8, !tbaa !5
  %33 = load i32, i32* %y, align 4, !tbaa !1
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %y, align 4, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %if.end.10
  %34 = load i32, i32* %y, align 4, !tbaa !1
  %35 = load i32, i32* %y_end, align 4, !tbaa !1
  %cmp11 = icmp slt i32 %34, %35
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core12 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %36, i32 0, i32 11
  %37 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core12, align 8, !tbaa !36
  %38 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %39 = load i8*, i8** %out_data.addr, align 8, !tbaa !5
  %40 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %data13 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %40, i32 0, i32 8
  %41 = load i8*, i8** %data13, align 8, !tbaa !41
  %42 = load i32, i32* %row.addr, align 4, !tbaa !1
  %43 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span14 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %43, i32 0, i32 3
  %44 = load i32, i32* %span14, align 4, !tbaa !25
  call void %37(%struct.gx_downscaler_s* %38, i8* %39, i8* %41, i32 %42, i32 0, i32 %44) #4
  %45 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %45, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.9, %if.then
  %46 = bitcast i8** %data_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i32* %y_end to i8*
  call void @llvm.lifetime.end(i64 4, i8* %47) #1
  %48 = bitcast i32* %y to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_get_bits_rectangle(%struct.gx_downscaler_s* %ds, %struct.gs_get_bits_params_s* %params, i32 %row) #0 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %params.addr = alloca %struct.gs_get_bits_params_s*, align 8
  %row.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %rect = alloca %struct.gs_int_rect_s, align 4
  %plane = alloca i32, align 4
  %factor = alloca i32, align 4
  %params2 = alloca %struct.gs_get_bits_params_s, align 8
  %upfactor = alloca i32, align 4
  %downfactor = alloca i32, align 4
  %subrow = alloca i32, align 4
  %copy = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %scaled = alloca i8*, align 8
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store %struct.gs_get_bits_params_s* %params, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  store i32 %row, i32* %row.addr, align 4, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %1) #1
  %2 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %4, i32 0, i32 4
  %5 = load i32, i32* %factor1, align 4, !tbaa !26
  store i32 %5, i32* %factor, align 4, !tbaa !1
  %6 = bitcast %struct.gs_get_bits_params_s* %params2 to i8*
  call void @llvm.lifetime.start(i64 536, i8* %6) #1
  %7 = bitcast i32* %upfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %downfactor to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %subrow to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %11, i32 0, i32 0
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !20
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i32 0, i32 13
  %13 = load i32, i32* %width, align 4, !tbaa !7
  %14 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %src_bpc = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %14, i32 0, i32 6
  %15 = load i32, i32* %src_bpc, align 4, !tbaa !28
  %mul = mul nsw i32 %13, %15
  %add = add nsw i32 %mul, 7
  %shr = ashr i32 %add, 3
  store i32 %shr, i32* %copy, align 4, !tbaa !1
  %16 = load i32, i32* %factor, align 4, !tbaa !1
  call void @decode_factor(i32 %16, i32* %upfactor, i32* %downfactor) #4
  %17 = load i32, i32* %row.addr, align 4, !tbaa !1
  %18 = load i32, i32* %upfactor, align 4, !tbaa !1
  %rem = srem i32 %17, %18
  store i32 %rem, i32* %subrow, align 4, !tbaa !1
  %19 = load i32, i32* %subrow, align 4, !tbaa !1
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %plane, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %plane, align 4, !tbaa !1
  %21 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %21, i32 0, i32 13
  %22 = load i32, i32* %num_planes, align 4, !tbaa !27
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %23, i32 0, i32 9
  %24 = load i8*, i8** %scaled_data, align 8, !tbaa !29
  %25 = load i32, i32* %upfactor, align 4, !tbaa !1
  %26 = load i32, i32* %plane, align 4, !tbaa !1
  %mul2 = mul nsw i32 %25, %26
  %27 = load i32, i32* %subrow, align 4, !tbaa !1
  %add3 = add nsw i32 %mul2, %27
  %28 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %28, i32 0, i32 10
  %29 = load i32, i32* %scaled_span, align 4, !tbaa !30
  %mul4 = mul nsw i32 %add3, %29
  %idx.ext = sext i32 %mul4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %30 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %31, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %plane, align 4, !tbaa !1
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %plane, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !43
  %33 = load i32, i32* %row.addr, align 4, !tbaa !1
  %34 = load i32, i32* %upfactor, align 4, !tbaa !1
  %div = sdiv i32 %33, %34
  %35 = load i32, i32* %downfactor, align 4, !tbaa !1
  %mul5 = mul nsw i32 %div, %35
  %p6 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p6, i32 0, i32 1
  store i32 %mul5, i32* %y, align 4, !tbaa !46
  %36 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev7 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %36, i32 0, i32 0
  %37 = load %struct.gx_device_s*, %struct.gx_device_s** %dev7, align 8, !tbaa !20
  %width8 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %37, i32 0, i32 13
  %38 = load i32, i32* %width8, align 4, !tbaa !7
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %38, i32* %x9, align 4, !tbaa !47
  %39 = load i32, i32* %row.addr, align 4, !tbaa !1
  %40 = load i32, i32* %upfactor, align 4, !tbaa !1
  %div10 = sdiv i32 %39, %40
  %add11 = add nsw i32 %div10, 1
  %41 = load i32, i32* %downfactor, align 4, !tbaa !1
  %mul12 = mul nsw i32 %add11, %41
  %q13 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y14 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q13, i32 0, i32 1
  store i32 %mul12, i32* %y14, align 4, !tbaa !48
  %42 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %42, i32 0, i32 11
  %43 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core, align 8, !tbaa !36
  %cmp15 = icmp eq void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %43, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end
  %44 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev17 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %44, i32 0, i32 0
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev17, align 8, !tbaa !20
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %46 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !49
  %47 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev18 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %47, i32 0, i32 0
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %dev18, align 8, !tbaa !20
  %49 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  %call = call i32 %46(%struct.gx_device_s* %48, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %49, %struct.gs_int_rect_s** null) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.19:                                        ; preds = %if.end
  %50 = bitcast %struct.gs_get_bits_params_s* %params2 to i8*
  %51 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params20 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %51, i32 0, i32 12
  %52 = bitcast %struct.gs_get_bits_params_s* %params20 to i8*
  %call21 = call i8* @memcpy(i8* %50, i8* %52, i64 536) #5
  %53 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev22 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %53, i32 0, i32 0
  %54 = load %struct.gx_device_s*, %struct.gx_device_s** %dev22, align 8, !tbaa !20
  %procs23 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %54, i32 0, i32 42
  %get_bits_rectangle24 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs23, i32 0, i32 38
  %55 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle24, align 8, !tbaa !49
  %56 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev25 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %56, i32 0, i32 0
  %57 = load %struct.gx_device_s*, %struct.gx_device_s** %dev25, align 8, !tbaa !20
  %call26 = call i32 %55(%struct.gx_device_s* %57, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params2, %struct.gs_int_rect_s** null) #4
  store i32 %call26, i32* %code, align 4, !tbaa !1
  %58 = load i32, i32* %code, align 4, !tbaa !1
  %cmp27 = icmp eq i32 %58, -15
  br i1 %cmp27, label %if.then.28, label %if.end.130

if.then.28:                                       ; preds = %if.end.19
  %59 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %59) #1
  %60 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %60) #1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.74, %if.then.28
  %61 = load i32, i32* %i, align 4, !tbaa !1
  %62 = load i32, i32* %downfactor, align 4, !tbaa !1
  %cmp30 = icmp slt i32 %61, %62
  br i1 %cmp30, label %for.body.31, label %for.end.76

for.body.31:                                      ; preds = %for.cond.29
  %p32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p32, i32 0, i32 1
  %63 = load i32, i32* %y33, align 4, !tbaa !46
  %add34 = add nsw i32 %63, 1
  %q35 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q35, i32 0, i32 1
  store i32 %add34, i32* %y36, align 4, !tbaa !48
  %q37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q37, i32 0, i32 1
  %64 = load i32, i32* %y38, align 4, !tbaa !48
  %65 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev39 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %65, i32 0, i32 0
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev39, align 8, !tbaa !20
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 14
  %67 = load i32, i32* %height, align 4, !tbaa !50
  %cmp40 = icmp sgt i32 %64, %67
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.31
  br label %for.end.76

if.end.42:                                        ; preds = %for.body.31
  %68 = bitcast %struct.gs_get_bits_params_s* %params2 to i8*
  %69 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params43 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %69, i32 0, i32 12
  %70 = bitcast %struct.gs_get_bits_params_s* %params43 to i8*
  %call44 = call i8* @memcpy(i8* %68, i8* %70, i64 536) #5
  %71 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev45 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %71, i32 0, i32 0
  %72 = load %struct.gx_device_s*, %struct.gx_device_s** %dev45, align 8, !tbaa !20
  %procs46 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %72, i32 0, i32 42
  %get_bits_rectangle47 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs46, i32 0, i32 38
  %73 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle47, align 8, !tbaa !49
  %74 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev48 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %74, i32 0, i32 0
  %75 = load %struct.gx_device_s*, %struct.gx_device_s** %dev48, align 8, !tbaa !20
  %call49 = call i32 %73(%struct.gx_device_s* %75, %struct.gs_int_rect_s* %rect, %struct.gs_get_bits_params_s* %params2, %struct.gs_int_rect_s** null) #4
  store i32 %call49, i32* %code, align 4, !tbaa !1
  %76 = load i32, i32* %code, align 4, !tbaa !1
  %cmp50 = icmp slt i32 %76, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.42
  br label %for.end.76

if.end.52:                                        ; preds = %if.end.42
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.68, %if.end.52
  %77 = load i32, i32* %j, align 4, !tbaa !1
  %78 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes54 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %78, i32 0, i32 13
  %79 = load i32, i32* %num_planes54, align 4, !tbaa !27
  %cmp55 = icmp slt i32 %77, %79
  br i1 %cmp55, label %for.body.56, label %for.end.70

for.body.56:                                      ; preds = %for.cond.53
  %80 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom57 = sext i32 %80 to i64
  %81 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params58 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %81, i32 0, i32 12
  %data59 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params58, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data59, i32 0, i64 %idxprom57
  %82 = load i8*, i8** %arrayidx60, align 8, !tbaa !5
  %83 = load i32, i32* %i, align 4, !tbaa !1
  %84 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %84, i32 0, i32 3
  %85 = load i32, i32* %span, align 4, !tbaa !25
  %mul61 = mul nsw i32 %83, %85
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %82, i64 %idx.ext62
  %86 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom64 = sext i32 %86 to i64
  %data65 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params2, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data65, i32 0, i64 %idxprom64
  %87 = load i8*, i8** %arrayidx66, align 8, !tbaa !5
  %88 = load i32, i32* %copy, align 4, !tbaa !1
  %conv = sext i32 %88 to i64
  %call67 = call i8* @memcpy(i8* %add.ptr63, i8* %87, i64 %conv) #5
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.56
  %89 = load i32, i32* %j, align 4, !tbaa !1
  %inc69 = add nsw i32 %89, 1
  store i32 %inc69, i32* %j, align 4, !tbaa !1
  br label %for.cond.53

for.end.70:                                       ; preds = %for.cond.53
  %p71 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %rect, i32 0, i32 0
  %y72 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p71, i32 0, i32 1
  %90 = load i32, i32* %y72, align 4, !tbaa !46
  %inc73 = add nsw i32 %90, 1
  store i32 %inc73, i32* %y72, align 4, !tbaa !46
  br label %for.inc.74

for.inc.74:                                       ; preds = %for.end.70
  %91 = load i32, i32* %i, align 4, !tbaa !1
  %inc75 = add nsw i32 %91, 1
  store i32 %inc75, i32* %i, align 4, !tbaa !1
  br label %for.cond.29

for.end.76:                                       ; preds = %if.then.51, %if.then.41, %for.cond.29
  %92 = load i32, i32* %i, align 4, !tbaa !1
  %cmp77 = icmp eq i32 %92, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.end.76
  %93 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %93, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.80:                                        ; preds = %for.end.76
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.111, %if.end.80
  %94 = load i32, i32* %i, align 4, !tbaa !1
  %95 = load i32, i32* %downfactor, align 4, !tbaa !1
  %cmp82 = icmp slt i32 %94, %95
  br i1 %cmp82, label %for.body.84, label %for.end.113

for.body.84:                                      ; preds = %for.cond.81
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.108, %for.body.84
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %97 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes86 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %97, i32 0, i32 13
  %98 = load i32, i32* %num_planes86, align 4, !tbaa !27
  %cmp87 = icmp slt i32 %96, %98
  br i1 %cmp87, label %for.body.89, label %for.end.110

for.body.89:                                      ; preds = %for.cond.85
  %99 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom90 = sext i32 %99 to i64
  %100 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params91 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %100, i32 0, i32 12
  %data92 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params91, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data92, i32 0, i64 %idxprom90
  %101 = load i8*, i8** %arrayidx93, align 8, !tbaa !5
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %103 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span94 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %103, i32 0, i32 3
  %104 = load i32, i32* %span94, align 4, !tbaa !25
  %mul95 = mul nsw i32 %102, %104
  %idx.ext96 = sext i32 %mul95 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %101, i64 %idx.ext96
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom98 = sext i32 %105 to i64
  %106 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params99 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %106, i32 0, i32 12
  %data100 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params99, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data100, i32 0, i64 %idxprom98
  %107 = load i8*, i8** %arrayidx101, align 8, !tbaa !5
  %108 = load i32, i32* %i, align 4, !tbaa !1
  %sub = sub nsw i32 %108, 1
  %109 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %span102 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %109, i32 0, i32 3
  %110 = load i32, i32* %span102, align 4, !tbaa !25
  %mul103 = mul nsw i32 %sub, %110
  %idx.ext104 = sext i32 %mul103 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %107, i64 %idx.ext104
  %111 = load i32, i32* %copy, align 4, !tbaa !1
  %conv106 = sext i32 %111 to i64
  %call107 = call i8* @memcpy(i8* %add.ptr97, i8* %add.ptr105, i64 %conv106) #5
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.89
  %112 = load i32, i32* %j, align 4, !tbaa !1
  %inc109 = add nsw i32 %112, 1
  store i32 %inc109, i32* %j, align 4, !tbaa !1
  br label %for.cond.85

for.end.110:                                      ; preds = %for.cond.85
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %113 = load i32, i32* %i, align 4, !tbaa !1
  %inc112 = add nsw i32 %113, 1
  store i32 %inc112, i32* %i, align 4, !tbaa !1
  br label %for.cond.81

for.end.113:                                      ; preds = %for.cond.81
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.126, %for.end.113
  %114 = load i32, i32* %j, align 4, !tbaa !1
  %115 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes115 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %115, i32 0, i32 13
  %116 = load i32, i32* %num_planes115, align 4, !tbaa !27
  %cmp116 = icmp slt i32 %114, %116
  br i1 %cmp116, label %for.body.118, label %for.end.128

for.body.118:                                     ; preds = %for.cond.114
  %117 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom119 = sext i32 %117 to i64
  %118 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %params120 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %118, i32 0, i32 12
  %data121 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params120, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data121, i32 0, i64 %idxprom119
  %119 = load i8*, i8** %arrayidx122, align 8, !tbaa !5
  %120 = load i32, i32* %j, align 4, !tbaa !1
  %idxprom123 = sext i32 %120 to i64
  %data124 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params2, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data124, i32 0, i64 %idxprom123
  store i8* %119, i8** %arrayidx125, align 8, !tbaa !5
  br label %for.inc.126

for.inc.126:                                      ; preds = %for.body.118
  %121 = load i32, i32* %j, align 4, !tbaa !1
  %inc127 = add nsw i32 %121, 1
  store i32 %inc127, i32* %j, align 4, !tbaa !1
  br label %for.cond.114

for.end.128:                                      ; preds = %for.cond.114
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.128, %if.then.79
  %122 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %122) #1
  %123 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %123) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.175 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.130

if.end.130:                                       ; preds = %cleanup.cont, %if.end.19
  %124 = load i32, i32* %code, align 4, !tbaa !1
  %cmp131 = icmp slt i32 %124, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  %125 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %125, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

if.end.134:                                       ; preds = %if.end.130
  %126 = load i32, i32* %upfactor, align 4, !tbaa !1
  %tobool135 = icmp ne i32 %126, 0
  br i1 %tobool135, label %if.then.136, label %if.else

if.then.136:                                      ; preds = %if.end.134
  store i32 0, i32* %plane, align 4, !tbaa !1
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.155, %if.then.136
  %127 = load i32, i32* %plane, align 4, !tbaa !1
  %128 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes138 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %128, i32 0, i32 13
  %129 = load i32, i32* %num_planes138, align 4, !tbaa !27
  %cmp139 = icmp slt i32 %127, %129
  br i1 %cmp139, label %for.body.141, label %for.end.157

for.body.141:                                     ; preds = %for.cond.137
  %130 = bitcast i8** %scaled to i8*
  call void @llvm.lifetime.start(i64 8, i8* %130) #1
  %131 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_data142 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %131, i32 0, i32 9
  %132 = load i8*, i8** %scaled_data142, align 8, !tbaa !29
  %133 = load i32, i32* %upfactor, align 4, !tbaa !1
  %134 = load i32, i32* %plane, align 4, !tbaa !1
  %mul143 = mul nsw i32 %133, %134
  %135 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %scaled_span144 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %135, i32 0, i32 10
  %136 = load i32, i32* %scaled_span144, align 4, !tbaa !30
  %mul145 = mul nsw i32 %mul143, %136
  %idx.ext146 = sext i32 %mul145 to i64
  %add.ptr147 = getelementptr inbounds i8, i8* %132, i64 %idx.ext146
  store i8* %add.ptr147, i8** %scaled, align 8, !tbaa !5
  %137 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core148 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %137, i32 0, i32 11
  %138 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core148, align 8, !tbaa !36
  %139 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %140 = load i8*, i8** %scaled, align 8, !tbaa !5
  %141 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom149 = sext i32 %141 to i64
  %data150 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params2, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data150, i32 0, i64 %idxprom149
  %142 = load i8*, i8** %arrayidx151, align 8, !tbaa !5
  %143 = load i32, i32* %row.addr, align 4, !tbaa !1
  %144 = load i32, i32* %plane, align 4, !tbaa !1
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params2, i32 0, i32 4
  %145 = load i32, i32* %raster, align 4, !tbaa !51
  call void %138(%struct.gx_downscaler_s* %139, i8* %140, i8* %142, i32 %143, i32 %144, i32 %145) #4
  %146 = load i8*, i8** %scaled, align 8, !tbaa !5
  %147 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom152 = sext i32 %147 to i64
  %148 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  %data153 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %148, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data153, i32 0, i64 %idxprom152
  store i8* %146, i8** %arrayidx154, align 8, !tbaa !5
  %149 = bitcast i8** %scaled to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.body.141
  %150 = load i32, i32* %plane, align 4, !tbaa !1
  %inc156 = add nsw i32 %150, 1
  store i32 %inc156, i32* %plane, align 4, !tbaa !1
  br label %for.cond.137

for.end.157:                                      ; preds = %for.cond.137
  br label %if.end.174

if.else:                                          ; preds = %if.end.134
  store i32 0, i32* %plane, align 4, !tbaa !1
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.171, %if.else
  %151 = load i32, i32* %plane, align 4, !tbaa !1
  %152 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %num_planes159 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %152, i32 0, i32 13
  %153 = load i32, i32* %num_planes159, align 4, !tbaa !27
  %cmp160 = icmp slt i32 %151, %153
  br i1 %cmp160, label %for.body.162, label %for.end.173

for.body.162:                                     ; preds = %for.cond.158
  %154 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %down_core163 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %154, i32 0, i32 11
  %155 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core163, align 8, !tbaa !36
  %156 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %157 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom164 = sext i32 %157 to i64
  %158 = load %struct.gs_get_bits_params_s*, %struct.gs_get_bits_params_s** %params.addr, align 8, !tbaa !5
  %data165 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %158, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data165, i32 0, i64 %idxprom164
  %159 = load i8*, i8** %arrayidx166, align 8, !tbaa !5
  %160 = load i32, i32* %plane, align 4, !tbaa !1
  %idxprom167 = sext i32 %160 to i64
  %data168 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params2, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data168, i32 0, i64 %idxprom167
  %161 = load i8*, i8** %arrayidx169, align 8, !tbaa !5
  %162 = load i32, i32* %row.addr, align 4, !tbaa !1
  %163 = load i32, i32* %plane, align 4, !tbaa !1
  %raster170 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params2, i32 0, i32 4
  %164 = load i32, i32* %raster170, align 4, !tbaa !51
  call void %155(%struct.gx_downscaler_s* %156, i8* %159, i8* %161, i32 %162, i32 %163, i32 %164) #4
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.162
  %165 = load i32, i32* %plane, align 4, !tbaa !1
  %inc172 = add nsw i32 %165, 1
  store i32 %inc172, i32* %plane, align 4, !tbaa !1
  br label %for.cond.158

for.end.173:                                      ; preds = %for.cond.158
  br label %if.end.174

if.end.174:                                       ; preds = %for.end.173, %for.end.157
  %166 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %166, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.175

cleanup.175:                                      ; preds = %if.end.174, %if.then.133, %cleanup, %if.then.16, %for.end
  %167 = bitcast i32* %copy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %167) #1
  %168 = bitcast i32* %subrow to i8*
  call void @llvm.lifetime.end(i64 4, i8* %168) #1
  %169 = bitcast i32* %downfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %169) #1
  %170 = bitcast i32* %upfactor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %171 = bitcast %struct.gs_get_bits_params_s* %params2 to i8*
  call void @llvm.lifetime.end(i64 536, i8* %171) #1
  %172 = bitcast i32* %factor to i8*
  call void @llvm.lifetime.end(i64 4, i8* %172) #1
  %173 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end(i64 4, i8* %173) #1
  %174 = bitcast %struct.gs_int_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %174) #1
  %175 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %175) #1
  %176 = load i32, i32* %retval
  ret i32 %176
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_copy_scan_lines(%struct.gx_downscaler_s* %ds, i32 %y, i8* %str, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca %struct.gx_downscaler_s*, align 8
  %y.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %line_size = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %height = alloca i32, align 4
  %dest = alloca i8*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_downscaler_s* %ds, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  store i32 %y, i32* %y.addr, align 4, !tbaa !1
  store i8* %str, i8** %str.addr, align 8, !tbaa !5
  store i32 %size, i32* %size.addr, align 4, !tbaa !1
  %0 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !20
  %call = call i32 @gx_device_raster(%struct.gx_device_s* %2, i32 0) #4
  store i32 %call, i32* %line_size, align 4, !tbaa !1
  %3 = bitcast i32* %count to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %size.addr, align 4, !tbaa !1
  %5 = load i32, i32* %line_size, align 4, !tbaa !1
  %div = udiv i32 %4, %5
  store i32 %div, i32* %count, align 4, !tbaa !1
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %height to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %dev1 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %8, i32 0, i32 0
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev1, align 8, !tbaa !20
  %height2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 14
  %10 = load i32, i32* %height2, align 4, !tbaa !50
  %11 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %factor = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %11, i32 0, i32 4
  %12 = load i32, i32* %factor, align 4, !tbaa !26
  %div3 = sdiv i32 %10, %12
  store i32 %div3, i32* %height, align 4, !tbaa !1
  %13 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i8*, i8** %str.addr, align 8, !tbaa !5
  store i8* %14, i8** %dest, align 8, !tbaa !5
  %15 = load i32, i32* %count, align 4, !tbaa !1
  %16 = load i32, i32* %height, align 4, !tbaa !1
  %17 = load i32, i32* %y.addr, align 4, !tbaa !1
  %sub = sub nsw i32 %16, %17
  %cmp = icmp slt i32 %15, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %18 = load i32, i32* %count, align 4, !tbaa !1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %19 = load i32, i32* %height, align 4, !tbaa !1
  %20 = load i32, i32* %y.addr, align 4, !tbaa !1
  %sub4 = sub nsw i32 %19, %20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %sub4, %cond.false ]
  store i32 %cond, i32* %count, align 4, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load i32, i32* %i, align 4, !tbaa !1
  %22 = load i32, i32* %count, align 4, !tbaa !1
  %cmp5 = icmp slt i32 %21, %22
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %23) #1
  %24 = load %struct.gx_downscaler_s*, %struct.gx_downscaler_s** %ds.addr, align 8, !tbaa !5
  %25 = load i8*, i8** %dest, align 8, !tbaa !5
  %26 = load i32, i32* %y.addr, align 4, !tbaa !1
  %27 = load i32, i32* %i, align 4, !tbaa !1
  %add = add nsw i32 %26, %27
  %call6 = call i32 @gx_downscaler_getbits(%struct.gx_downscaler_s* %24, i8* %25, i32 %add) #4
  store i32 %call6, i32* %code, align 4, !tbaa !1
  %28 = load i32, i32* %code, align 4, !tbaa !1
  %cmp7 = icmp slt i32 %28, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %29 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %31 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  %32 = load i32, i32* %line_size, align 4, !tbaa !1
  %33 = load i8*, i8** %dest, align 8, !tbaa !5
  %idx.ext = zext i32 %32 to i64
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %idx.ext
  store i8* %add.ptr, i8** %dest, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %count, align 4, !tbaa !1
  store i32 %34, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.8

cleanup.8:                                        ; preds = %for.end, %cleanup
  %35 = bitcast i8** %dest to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast i32* %height to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %count to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %line_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @gx_downscaler_process_page(%struct.gx_device_s* %dev, %struct.gx_process_page_options_s* %options, i32 %factor) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %options.addr = alloca %struct.gx_process_page_options_s*, align 8
  %factor.addr = alloca i32, align 4
  %arg = alloca %struct.downscaler_process_page_arg_s, align 8
  %my_options = alloca %struct.gx_process_page_options_s, align 8
  %num_comps = alloca i32, align 4
  %src_bpc = alloca i32, align 4
  %scaled_w = alloca i32, align 4
  %core = alloca void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store %struct.gx_process_page_options_s* %options, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !5
  store i32 %factor, i32* %factor.addr, align 4, !tbaa !1
  %0 = bitcast %struct.downscaler_process_page_arg_s* %arg to i8*
  call void @llvm.lifetime.start(i64 640, i8* %0) #1
  %1 = bitcast %struct.downscaler_process_page_arg_s* %arg to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 640, i32 8, i1 false)
  %2 = bitcast %struct.gx_process_page_options_s* %my_options to i8*
  call void @llvm.lifetime.start(i64 48, i8* %2) #1
  %3 = bitcast %struct.gx_process_page_options_s* %my_options to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 48, i32 8, i1 false)
  %4 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %num_components = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components, align 4, !tbaa !52
  store i32 %6, i32* %num_comps, align 4, !tbaa !1
  %7 = bitcast i32* %src_bpc to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %color_info1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 11
  %comp_bits = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info1, i32 0, i32 12
  %arrayidx = getelementptr inbounds [64 x i8], [64 x i8]* %comp_bits, i32 0, i64 0
  %9 = load i8, i8* %arrayidx, align 1, !tbaa !39
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %src_bpc, align 4, !tbaa !1
  %10 = bitcast i32* %scaled_w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = bitcast void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %options.addr, align 8, !tbaa !5
  %orig_options = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 0
  store %struct.gx_process_page_options_s* %12, %struct.gx_process_page_options_s** %orig_options, align 8, !tbaa !53
  %13 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %upfactor = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 1
  %downfactor = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 2
  call void @decode_factor(i32 %13, i32* %upfactor, i32* %downfactor) #4
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %ds = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %dev2 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds, i32 0, i32 0
  store %struct.gx_device_s* %14, %struct.gx_device_s** %dev2, align 8, !tbaa !55
  %15 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %15, i32 0, i32 13
  %16 = load i32, i32* %width, align 4, !tbaa !7
  %upfactor3 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 1
  %17 = load i32, i32* %upfactor3, align 4, !tbaa !56
  %mul = mul nsw i32 %16, %17
  %downfactor4 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 2
  %18 = load i32, i32* %downfactor4, align 4, !tbaa !57
  %add = add nsw i32 %mul, %18
  %sub = sub nsw i32 %add, 1
  %downfactor5 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 2
  %19 = load i32, i32* %downfactor5, align 4, !tbaa !57
  %div = sdiv i32 %sub, %19
  %ds6 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %width7 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds6, i32 0, i32 1
  store i32 %div, i32* %width7, align 4, !tbaa !58
  %ds8 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %width9 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds8, i32 0, i32 1
  %20 = load i32, i32* %width9, align 4, !tbaa !58
  %ds10 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %awidth = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds10, i32 0, i32 2
  store i32 %20, i32* %awidth, align 4, !tbaa !59
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width11 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 13
  %22 = load i32, i32* %width11, align 4, !tbaa !7
  %23 = load i32, i32* %num_comps, align 4, !tbaa !1
  %mul12 = mul nsw i32 %22, %23
  %24 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %mul13 = mul nsw i32 %mul12, %24
  %add14 = add nsw i32 %mul13, 63
  %shr = ashr i32 %add14, 6
  %shl = shl i32 %shr, 3
  %ds15 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds15, i32 0, i32 3
  store i32 %shl, i32* %span, align 4, !tbaa !60
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %width16 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %25, i32 0, i32 13
  %26 = load i32, i32* %width16, align 4, !tbaa !7
  %upfactor17 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 1
  %27 = load i32, i32* %upfactor17, align 4, !tbaa !56
  %mul18 = mul nsw i32 %26, %27
  %downfactor19 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 2
  %28 = load i32, i32* %downfactor19, align 4, !tbaa !57
  %add20 = add nsw i32 %mul18, %28
  %sub21 = sub nsw i32 %add20, 1
  %downfactor22 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 2
  %29 = load i32, i32* %downfactor22, align 4, !tbaa !57
  %div23 = sdiv i32 %sub21, %29
  store i32 %div23, i32* %scaled_w, align 4, !tbaa !1
  %30 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %ds24 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %factor25 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds24, i32 0, i32 4
  store i32 %30, i32* %factor25, align 4, !tbaa !61
  %31 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %ds26 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %src_bpc27 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds26, i32 0, i32 6
  store i32 %31, i32* %src_bpc27, align 4, !tbaa !62
  %32 = load i32, i32* %scaled_w, align 4, !tbaa !1
  %33 = load i32, i32* %num_comps, align 4, !tbaa !1
  %mul28 = mul nsw i32 %32, %33
  %34 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %mul29 = mul nsw i32 %mul28, %34
  %add30 = add nsw i32 %mul29, 63
  %shr31 = ashr i32 %add30, 6
  %shl32 = shl i32 %shr31, 3
  %ds33 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %scaled_span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds33, i32 0, i32 10
  store i32 %shl32, i32* %scaled_span, align 4, !tbaa !63
  %ds34 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %num_planes = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds34, i32 0, i32 13
  store i32 0, i32* %num_planes, align 4, !tbaa !64
  %35 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %35, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %36 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %cmp36 = icmp eq i32 %36, 16
  br i1 %cmp36, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.else
  %37 = load i32, i32* %num_comps, align 4, !tbaa !1
  %cmp38 = icmp eq i32 %37, 1
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core16, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.85

if.else.41:                                       ; preds = %land.lhs.true, %if.else
  %38 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp42 = icmp eq i32 %38, 1
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.else.41
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* null, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.84

if.else.45:                                       ; preds = %if.else.41
  %39 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %cmp46 = icmp eq i32 %39, 8
  br i1 %cmp46, label %land.lhs.true.48, label %if.else.66

land.lhs.true.48:                                 ; preds = %if.else.45
  %40 = load i32, i32* %num_comps, align 4, !tbaa !1
  %cmp49 = icmp eq i32 %40, 1
  br i1 %cmp49, label %if.then.51, label %if.else.66

if.then.51:                                       ; preds = %land.lhs.true.48
  %41 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp52 = icmp eq i32 %41, 4
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.then.51
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_4, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.65

if.else.55:                                       ; preds = %if.then.51
  %42 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp56 = icmp eq i32 %42, 3
  br i1 %cmp56, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %if.else.55
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_3, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.64

if.else.59:                                       ; preds = %if.else.55
  %43 = load i32, i32* %factor.addr, align 4, !tbaa !1
  %cmp60 = icmp eq i32 %43, 2
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %if.else.59
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8_2, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end

if.else.63:                                       ; preds = %if.else.59
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core8, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else.63, %if.then.62
  br label %if.end.64

if.end.64:                                        ; preds = %if.end, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.54
  br label %if.end.83

if.else.66:                                       ; preds = %land.lhs.true.48, %if.else.45
  %44 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %cmp67 = icmp eq i32 %44, 8
  br i1 %cmp67, label %land.lhs.true.69, label %if.else.73

land.lhs.true.69:                                 ; preds = %if.else.66
  %45 = load i32, i32* %num_comps, align 4, !tbaa !1
  %cmp70 = icmp eq i32 %45, 3
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.69
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core24, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.82

if.else.73:                                       ; preds = %land.lhs.true.69, %if.else.66
  %46 = load i32, i32* %src_bpc, align 4, !tbaa !1
  %cmp74 = icmp eq i32 %46, 8
  br i1 %cmp74, label %land.lhs.true.76, label %if.else.80

land.lhs.true.76:                                 ; preds = %if.else.73
  %47 = load i32, i32* %num_comps, align 4, !tbaa !1
  %cmp77 = icmp eq i32 %47, 4
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %land.lhs.true.76
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* @down_core32, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  br label %if.end.81

if.else.80:                                       ; preds = %land.lhs.true.76, %if.else.73
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.81:                                        ; preds = %if.then.79
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.72
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.65
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.44
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.40
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85
  %48 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core, align 8, !tbaa !5
  %ds87 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %arg, i32 0, i32 3
  %down_core = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds87, i32 0, i32 11
  store void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %48, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core, align 8, !tbaa !65
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %my_options, i32 0, i32 0
  store i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* @downscaler_init_fn, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !66
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %my_options, i32 0, i32 2
  store i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* @downscaler_process_fn, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !68
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %my_options, i32 0, i32 3
  store i32 (i8*, %struct.gx_device_s*, i8*)* @downscaler_output_fn, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !69
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %my_options, i32 0, i32 1
  store void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)* @downscaler_free_fn, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !70
  %49 = bitcast %struct.downscaler_process_page_arg_s* %arg to i8*
  %arg88 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %my_options, i32 0, i32 4
  store i8* %49, i8** %arg88, align 8, !tbaa !71
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 42
  %process_page = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 72
  %51 = load i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)** %process_page, align 8, !tbaa !72
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call = call i32 %51(%struct.gx_device_s* %52, %struct.gx_process_page_options_s* %my_options) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.86, %if.else.80, %if.then
  %53 = bitcast void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %core to i8*
  call void @llvm.lifetime.end(i64 8, i8* %53) #1
  %54 = bitcast i32* %scaled_w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %54) #1
  %55 = bitcast i32* %src_bpc to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #1
  %56 = bitcast i32* %num_comps to i8*
  call void @llvm.lifetime.end(i64 4, i8* %56) #1
  %57 = bitcast %struct.gx_process_page_options_s* %my_options to i8*
  call void @llvm.lifetime.end(i64 48, i8* %57) #1
  %58 = bitcast %struct.downscaler_process_page_arg_s* %arg to i8*
  call void @llvm.lifetime.end(i64 640, i8* %58) #1
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @downscaler_init_fn(i8* %arg_, %struct.gx_device_s* %dev, %struct.gs_memory_s* %memory, i32 %w, i32 %h, i8** %pbuffer) #0 {
entry:
  %retval = alloca i32, align 4
  %arg_.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %pbuffer.addr = alloca i8**, align 8
  %arg = alloca %struct.downscaler_process_page_arg_s*, align 8
  %buffer = alloca %struct.downscaler_process_page_buffer_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !1
  store i32 %h, i32* %h.addr, align 4, !tbaa !1
  store i8** %pbuffer, i8*** %pbuffer.addr, align 8, !tbaa !5
  %0 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %arg_.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.downscaler_process_page_arg_s*
  store %struct.downscaler_process_page_arg_s* %2, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %3 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %code, align 4, !tbaa !1
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %5, i32 0, i32 1
  %alloc_bytes = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 7
  %6 = load i8* (%struct.gs_memory_s*, i32, i8*)*, i8* (%struct.gs_memory_s*, i32, i8*)** %alloc_bytes, align 8, !tbaa !33
  %7 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %call = call i8* %6(%struct.gs_memory_s* %7, i32 16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #4
  %8 = bitcast i8* %call to %struct.downscaler_process_page_buffer_s*
  store %struct.downscaler_process_page_buffer_s* %8, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %9 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %cmp = icmp eq %struct.downscaler_process_page_buffer_s* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %11 = bitcast %struct.downscaler_process_page_buffer_s* %10 to i8*
  %call1 = call i8* @memset(i8* %11, i32 0, i64 16) #5
  %12 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %12, i32 0, i32 1
  %13 = load i32, i32* %upfactor, align 4, !tbaa !56
  %14 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %14, i32 0, i32 2
  %15 = load i32, i32* %downfactor, align 4, !tbaa !57
  %cmp2 = icmp sgt i32 %13, %15
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %16 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %16, i32 0, i32 0
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %18 = load i32, i32* %h.addr, align 4, !tbaa !1
  %19 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor4 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %19, i32 0, i32 1
  %20 = load i32, i32* %upfactor4, align 4, !tbaa !56
  %mul = mul nsw i32 %18, %20
  %21 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor5 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %21, i32 0, i32 2
  %22 = load i32, i32* %downfactor5, align 4, !tbaa !57
  %add = add nsw i32 %mul, %22
  %sub = sub nsw i32 %add, 1
  %23 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor6 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %23, i32 0, i32 2
  %24 = load i32, i32* %downfactor6, align 4, !tbaa !57
  %div = sdiv i32 %sub, %24
  %25 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %call7 = call i32 @gx_default_create_buf_device(%struct.gx_device_s** %bdev, %struct.gx_device_s* %17, i32 %div, %struct.gx_render_plane_s* null, %struct.gs_memory_s* %25, %struct.gx_colors_usage_s* null) #4
  store i32 %call7, i32* %code, align 4, !tbaa !1
  %26 = load i32, i32* %code, align 4, !tbaa !1
  %cmp8 = icmp slt i32 %26, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.3
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %procs10 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %27, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs10, i32 0, i32 2
  %28 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !40
  %29 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %30 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %31 = bitcast %struct.downscaler_process_page_buffer_s* %30 to i8*
  call void %28(%struct.gs_memory_s* %29, i8* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #4
  %32 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %32, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.11:                                        ; preds = %if.then.3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %33 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %33, i32 0, i32 0
  %34 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options, align 8, !tbaa !53
  %tobool = icmp ne %struct.gx_process_page_options_s* %34, null
  br i1 %tobool, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end.12
  %35 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options13 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %35, i32 0, i32 0
  %36 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options13, align 8, !tbaa !53
  %init_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %36, i32 0, i32 0
  %37 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn, align 8, !tbaa !66
  %tobool14 = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)* %37, null
  br i1 %tobool14, label %if.then.15, label %if.end.46

if.then.15:                                       ; preds = %land.lhs.true
  %38 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options16 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %38, i32 0, i32 0
  %39 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options16, align 8, !tbaa !53
  %init_buffer_fn17 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %39, i32 0, i32 0
  %40 = load i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)** %init_buffer_fn17, align 8, !tbaa !66
  %41 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options18 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %41, i32 0, i32 0
  %42 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options18, align 8, !tbaa !53
  %arg19 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %42, i32 0, i32 4
  %43 = load i8*, i8** %arg19, align 8, !tbaa !71
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %45 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %46 = load i32, i32* %w.addr, align 4, !tbaa !1
  %47 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor20 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %47, i32 0, i32 1
  %48 = load i32, i32* %upfactor20, align 4, !tbaa !56
  %mul21 = mul nsw i32 %46, %48
  %49 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor22 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %49, i32 0, i32 2
  %50 = load i32, i32* %downfactor22, align 4, !tbaa !57
  %add23 = add nsw i32 %mul21, %50
  %sub24 = sub nsw i32 %add23, 1
  %51 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor25 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %51, i32 0, i32 2
  %52 = load i32, i32* %downfactor25, align 4, !tbaa !57
  %div26 = sdiv i32 %sub24, %52
  %53 = load i32, i32* %h.addr, align 4, !tbaa !1
  %54 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor27 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %54, i32 0, i32 1
  %55 = load i32, i32* %upfactor27, align 4, !tbaa !56
  %mul28 = mul nsw i32 %53, %55
  %56 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor29 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %56, i32 0, i32 2
  %57 = load i32, i32* %downfactor29, align 4, !tbaa !57
  %add30 = add nsw i32 %mul28, %57
  %sub31 = sub nsw i32 %add30, 1
  %58 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor32 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %58, i32 0, i32 2
  %59 = load i32, i32* %downfactor32, align 4, !tbaa !57
  %div33 = sdiv i32 %sub31, %59
  %60 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %orig_buffer = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %60, i32 0, i32 1
  %call34 = call i32 %40(i8* %43, %struct.gx_device_s* %44, %struct.gs_memory_s* %45, i32 %div26, i32 %div33, i8** %orig_buffer) #4
  store i32 %call34, i32* %code, align 4, !tbaa !1
  %61 = load i32, i32* %code, align 4, !tbaa !1
  %cmp35 = icmp slt i32 %61, 0
  br i1 %cmp35, label %if.then.36, label %if.end.45

if.then.36:                                       ; preds = %if.then.15
  %62 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev37 = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %62, i32 0, i32 0
  %63 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev37, align 8, !tbaa !73
  %tobool38 = icmp ne %struct.gx_device_s* %63, null
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.then.36
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %procs40 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs40, i32 0, i32 4
  %65 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !75
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call41 = call i32 %65(%struct.gx_device_s* %66) #4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.then.36
  %67 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %procs43 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %67, i32 0, i32 1
  %free_object44 = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs43, i32 0, i32 2
  %68 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object44, align 8, !tbaa !40
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %70 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %71 = bitcast %struct.downscaler_process_page_buffer_s* %70 to i8*
  call void %68(%struct.gs_memory_s* %69, i8* %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #4
  %72 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.45:                                        ; preds = %if.then.15
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %if.end.12
  %73 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %74 = bitcast %struct.downscaler_process_page_buffer_s* %73 to i8*
  %75 = load i8**, i8*** %pbuffer.addr, align 8, !tbaa !5
  store i8* %74, i8** %75, align 8, !tbaa !5
  %76 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %76, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.46, %if.end.42, %if.then.9, %if.then
  %77 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  %79 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %79) #1
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i32 @downscaler_process_fn(i8* %arg_, %struct.gx_device_s* %dev, %struct.gx_device_s* %bdev, %struct.gs_int_rect_s* %rect, i8* %buffer_) #0 {
entry:
  %retval = alloca i32, align 4
  %arg_.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %bdev.addr = alloca %struct.gx_device_s*, align 8
  %rect.addr = alloca %struct.gs_int_rect_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %arg = alloca %struct.downscaler_process_page_arg_s*, align 8
  %buffer = alloca %struct.downscaler_process_page_buffer_s*, align 8
  %code = alloca i32, align 4
  %raster_in = alloca i32, align 4
  %raster_out = alloca i32, align 4
  %params = alloca %struct.gs_get_bits_params_s, align 8
  %in_rect = alloca %struct.gs_int_rect_s, align 4
  %out_rect = alloca %struct.gs_int_rect_s, align 4
  %in_ptr = alloca i8*, align 8
  %out_ptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  %y52 = alloca i32, align 4
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %bdev, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !5
  store %struct.gs_int_rect_s* %rect, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !5
  %0 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %arg_.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.downscaler_process_page_arg_s*
  store %struct.downscaler_process_page_arg_s* %2, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %3 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %buffer_.addr, align 8, !tbaa !5
  %5 = bitcast i8* %4 to %struct.downscaler_process_page_buffer_s*
  store %struct.downscaler_process_page_buffer_s* %5, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %raster_in to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %raster_out to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.start(i64 536, i8* %9) #1
  %10 = bitcast %struct.gs_int_rect_s* %in_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %10) #1
  %11 = bitcast %struct.gs_int_rect_s* %out_rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %11) #1
  %12 = bitcast i8** %in_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %in_rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !43
  %p1 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %in_rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p1, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !46
  %14 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %14, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  %15 = load i32, i32* %x2, align 4, !tbaa !47
  %16 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %p3 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %16, i32 0, i32 0
  %x4 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p3, i32 0, i32 0
  %17 = load i32, i32* %x4, align 4, !tbaa !43
  %sub = sub nsw i32 %15, %17
  %q5 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %in_rect, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q5, i32 0, i32 0
  store i32 %sub, i32* %x6, align 4, !tbaa !47
  %18 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %q7 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %18, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q7, i32 0, i32 1
  %19 = load i32, i32* %y8, align 4, !tbaa !48
  %20 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %p9 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %20, i32 0, i32 0
  %y10 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p9, i32 0, i32 1
  %21 = load i32, i32* %y10, align 4, !tbaa !46
  %sub11 = sub nsw i32 %19, %21
  %q12 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %in_rect, i32 0, i32 1
  %y13 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q12, i32 0, i32 1
  store i32 %sub11, i32* %y13, align 4, !tbaa !48
  %p14 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 0
  %x15 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p14, i32 0, i32 0
  store i32 0, i32* %x15, align 4, !tbaa !43
  %p16 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 0
  %y17 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p16, i32 0, i32 1
  store i32 0, i32* %y17, align 4, !tbaa !46
  %q18 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %in_rect, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q18, i32 0, i32 0
  %22 = load i32, i32* %x19, align 4, !tbaa !47
  %23 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %23, i32 0, i32 1
  %24 = load i32, i32* %upfactor, align 4, !tbaa !56
  %mul = mul nsw i32 %22, %24
  %25 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %25, i32 0, i32 2
  %26 = load i32, i32* %downfactor, align 4, !tbaa !57
  %add = add nsw i32 %mul, %26
  %sub20 = sub nsw i32 %add, 1
  %27 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor21 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %27, i32 0, i32 2
  %28 = load i32, i32* %downfactor21, align 4, !tbaa !57
  %div = sdiv i32 %sub20, %28
  %q22 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q22, i32 0, i32 0
  store i32 %div, i32* %x23, align 4, !tbaa !47
  %q24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %in_rect, i32 0, i32 1
  %y25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q24, i32 0, i32 1
  %29 = load i32, i32* %y25, align 4, !tbaa !48
  %30 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor26 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %30, i32 0, i32 1
  %31 = load i32, i32* %upfactor26, align 4, !tbaa !56
  %mul27 = mul nsw i32 %29, %31
  %32 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor28 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %32, i32 0, i32 2
  %33 = load i32, i32* %downfactor28, align 4, !tbaa !57
  %add29 = add nsw i32 %mul27, %33
  %sub30 = sub nsw i32 %add29, 1
  %34 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor31 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %34, i32 0, i32 2
  %35 = load i32, i32* %downfactor31, align 4, !tbaa !57
  %div32 = sdiv i32 %sub30, %35
  %q33 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 1
  %y34 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q33, i32 0, i32 1
  store i32 %div32, i32* %y34, align 4, !tbaa !48
  %options = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 0
  store i64 1101070353, i64* %options, align 8, !tbaa !76
  %36 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %36, i32 0, i32 42
  %get_bits_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 38
  %37 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle, align 8, !tbaa !49
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !5
  %call = call i32 %37(%struct.gx_device_s* %38, %struct.gs_int_rect_s* %in_rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #4
  store i32 %call, i32* %code, align 4, !tbaa !1
  %39 = load i32, i32* %code, align 4, !tbaa !1
  %cmp = icmp slt i32 %39, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %40 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %40, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %raster = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 4
  %41 = load i32, i32* %raster, align 4, !tbaa !51
  store i32 %41, i32* %raster_in, align 4, !tbaa !1
  %data = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx = getelementptr inbounds [64 x i8*], [64 x i8*]* %data, i32 0, i64 0
  %42 = load i8*, i8** %arrayidx, align 8, !tbaa !5
  store i8* %42, i8** %in_ptr, align 8, !tbaa !5
  %43 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev35 = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %43, i32 0, i32 0
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev35, align 8, !tbaa !73
  %tobool = icmp ne %struct.gx_device_s* %44, null
  br i1 %tobool, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.end
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !5
  %procs37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %45, i32 0, i32 42
  %get_bits_rectangle38 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs37, i32 0, i32 38
  %46 = load i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)** %get_bits_rectangle38, align 8, !tbaa !49
  %47 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev39 = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %47, i32 0, i32 0
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev39, align 8, !tbaa !73
  %call40 = call i32 %46(%struct.gx_device_s* %48, %struct.gs_int_rect_s* %out_rect, %struct.gs_get_bits_params_s* %params, %struct.gs_int_rect_s** null) #4
  store i32 %call40, i32* %code, align 4, !tbaa !1
  %49 = load i32, i32* %code, align 4, !tbaa !1
  %cmp41 = icmp slt i32 %49, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.36
  %50 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %50, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.then.36
  %raster44 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 4
  %51 = load i32, i32* %raster44, align 4, !tbaa !51
  store i32 %51, i32* %raster_out, align 4, !tbaa !1
  %data45 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data45, i32 0, i64 0
  %52 = load i8*, i8** %arrayidx46, align 8, !tbaa !5
  store i8* %52, i8** %out_ptr, align 8, !tbaa !5
  br label %if.end.49

if.else:                                          ; preds = %if.end
  %53 = load i32, i32* %raster_in, align 4, !tbaa !1
  store i32 %53, i32* %raster_out, align 4, !tbaa !1
  %data47 = getelementptr inbounds %struct.gs_get_bits_params_s, %struct.gs_get_bits_params_s* %params, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [64 x i8*], [64 x i8*]* %data47, i32 0, i64 0
  %54 = load i8*, i8** %arrayidx48, align 8, !tbaa !5
  store i8* %54, i8** %out_ptr, align 8, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.else, %if.end.43
  %55 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %ds = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %55, i32 0, i32 3
  %down_core = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds, i32 0, i32 11
  %56 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core, align 8, !tbaa !65
  %tobool50 = icmp ne void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)* %56, null
  br i1 %tobool50, label %if.then.51, label %if.end.72

if.then.51:                                       ; preds = %if.end.49
  %57 = bitcast i32* %y52 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %57) #1
  %58 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %p53 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %58, i32 0, i32 0
  %y54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p53, i32 0, i32 1
  %59 = load i32, i32* %y54, align 4, !tbaa !46
  store i32 %59, i32* %y52, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.51
  %60 = load i32, i32* %y52, align 4, !tbaa !1
  %61 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %q55 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %61, i32 0, i32 1
  %y56 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q55, i32 0, i32 1
  %62 = load i32, i32* %y56, align 4, !tbaa !48
  %cmp57 = icmp slt i32 %60, %62
  br i1 %cmp57, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %63 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %ds58 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %63, i32 0, i32 3
  %down_core59 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds58, i32 0, i32 11
  %64 = load void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)*, void (%struct.gx_downscaler_s*, i8*, i8*, i32, i32, i32)** %down_core59, align 8, !tbaa !65
  %65 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %ds60 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %65, i32 0, i32 3
  %66 = load i8*, i8** %out_ptr, align 8, !tbaa !5
  %67 = load i8*, i8** %in_ptr, align 8, !tbaa !5
  %68 = load i32, i32* %y52, align 4, !tbaa !1
  %69 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %ds61 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %69, i32 0, i32 3
  %span = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds61, i32 0, i32 3
  %70 = load i32, i32* %span, align 4, !tbaa !60
  call void %64(%struct.gx_downscaler_s* %ds60, i8* %66, i8* %67, i32 %68, i32 0, i32 %70) #4
  %71 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %ds62 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %71, i32 0, i32 3
  %span63 = getelementptr inbounds %struct.gx_downscaler_s, %struct.gx_downscaler_s* %ds62, i32 0, i32 3
  %72 = load i32, i32* %span63, align 4, !tbaa !60
  %73 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor64 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %73, i32 0, i32 2
  %74 = load i32, i32* %downfactor64, align 4, !tbaa !57
  %mul65 = mul nsw i32 %72, %74
  %75 = load i8*, i8** %in_ptr, align 8, !tbaa !5
  %idx.ext = sext i32 %mul65 to i64
  %add.ptr = getelementptr inbounds i8, i8* %75, i64 %idx.ext
  store i8* %add.ptr, i8** %in_ptr, align 8, !tbaa !5
  %76 = load i32, i32* %raster_out, align 4, !tbaa !1
  %77 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor66 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %77, i32 0, i32 1
  %78 = load i32, i32* %upfactor66, align 4, !tbaa !56
  %mul67 = mul nsw i32 %76, %78
  %79 = load i8*, i8** %out_ptr, align 8, !tbaa !5
  %idx.ext68 = sext i32 %mul67 to i64
  %add.ptr69 = getelementptr inbounds i8, i8* %79, i64 %idx.ext68
  store i8* %add.ptr69, i8** %out_ptr, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor70 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %80, i32 0, i32 2
  %81 = load i32, i32* %downfactor70, align 4, !tbaa !57
  %82 = load i32, i32* %y52, align 4, !tbaa !1
  %add71 = add nsw i32 %82, %81
  store i32 %add71, i32* %y52, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %83 = bitcast i32* %y52 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %if.end.49
  %84 = load i32, i32* %code, align 4, !tbaa !1
  %cmp73 = icmp sge i32 %84, 0
  br i1 %cmp73, label %land.lhs.true, label %if.end.100

land.lhs.true:                                    ; preds = %if.end.72
  %85 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %85, i32 0, i32 0
  %86 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options, align 8, !tbaa !53
  %tobool74 = icmp ne %struct.gx_process_page_options_s* %86, null
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.100

land.lhs.true.75:                                 ; preds = %land.lhs.true
  %87 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options76 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %87, i32 0, i32 0
  %88 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options76, align 8, !tbaa !53
  %process_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %88, i32 0, i32 2
  %89 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn, align 8, !tbaa !68
  %tobool77 = icmp ne i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)* %89, null
  br i1 %tobool77, label %if.then.78, label %if.end.100

if.then.78:                                       ; preds = %land.lhs.true.75
  %90 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %rect.addr, align 8, !tbaa !5
  %p79 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %90, i32 0, i32 0
  %y80 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p79, i32 0, i32 1
  %91 = load i32, i32* %y80, align 4, !tbaa !46
  %92 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %upfactor81 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %92, i32 0, i32 1
  %93 = load i32, i32* %upfactor81, align 4, !tbaa !56
  %mul82 = mul nsw i32 %91, %93
  %94 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %downfactor83 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %94, i32 0, i32 2
  %95 = load i32, i32* %downfactor83, align 4, !tbaa !57
  %div84 = sdiv i32 %mul82, %95
  %p85 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 0
  %y86 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p85, i32 0, i32 1
  store i32 %div84, i32* %y86, align 4, !tbaa !46
  %p87 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 0
  %y88 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p87, i32 0, i32 1
  %96 = load i32, i32* %y88, align 4, !tbaa !46
  %q89 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %out_rect, i32 0, i32 1
  %y90 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q89, i32 0, i32 1
  %97 = load i32, i32* %y90, align 4, !tbaa !48
  %add91 = add nsw i32 %97, %96
  store i32 %add91, i32* %y90, align 4, !tbaa !48
  %98 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options92 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %98, i32 0, i32 0
  %99 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options92, align 8, !tbaa !53
  %process_fn93 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %99, i32 0, i32 2
  %100 = load i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)** %process_fn93, align 8, !tbaa !68
  %101 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options94 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %101, i32 0, i32 0
  %102 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options94, align 8, !tbaa !53
  %arg95 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %102, i32 0, i32 4
  %103 = load i8*, i8** %arg95, align 8, !tbaa !71
  %104 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %105 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev96 = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %105, i32 0, i32 0
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev96, align 8, !tbaa !73
  %tobool97 = icmp ne %struct.gx_device_s* %106, null
  br i1 %tobool97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.78
  %107 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev98 = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %107, i32 0, i32 0
  %108 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev98, align 8, !tbaa !73
  br label %cond.end

cond.false:                                       ; preds = %if.then.78
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev.addr, align 8, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.gx_device_s* [ %108, %cond.true ], [ %109, %cond.false ]
  %110 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %orig_buffer = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %110, i32 0, i32 1
  %111 = load i8*, i8** %orig_buffer, align 8, !tbaa !77
  %call99 = call i32 %100(i8* %103, %struct.gx_device_s* %104, %struct.gx_device_s* %cond, %struct.gs_int_rect_s* %out_rect, i8* %111) #4
  store i32 %call99, i32* %code, align 4, !tbaa !1
  br label %if.end.100

if.end.100:                                       ; preds = %cond.end, %land.lhs.true.75, %land.lhs.true, %if.end.72
  %112 = load i32, i32* %code, align 4, !tbaa !1
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.then.42, %if.then
  %113 = bitcast i8** %out_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %113) #1
  %114 = bitcast i8** %in_ptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %114) #1
  %115 = bitcast %struct.gs_int_rect_s* %out_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %115) #1
  %116 = bitcast %struct.gs_int_rect_s* %in_rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %116) #1
  %117 = bitcast %struct.gs_get_bits_params_s* %params to i8*
  call void @llvm.lifetime.end(i64 536, i8* %117) #1
  %118 = bitcast i32* %raster_out to i8*
  call void @llvm.lifetime.end(i64 4, i8* %118) #1
  %119 = bitcast i32* %raster_in to i8*
  call void @llvm.lifetime.end(i64 4, i8* %119) #1
  %120 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %121) #1
  %122 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %122) #1
  %123 = load i32, i32* %retval
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal i32 @downscaler_output_fn(i8* %arg_, %struct.gx_device_s* %dev, i8* %buffer_) #0 {
entry:
  %arg_.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %arg = alloca %struct.downscaler_process_page_arg_s*, align 8
  %buffer = alloca %struct.downscaler_process_page_buffer_s*, align 8
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !5
  %0 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %arg_.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.downscaler_process_page_arg_s*
  store %struct.downscaler_process_page_arg_s* %2, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %3 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %buffer_.addr, align 8, !tbaa !5
  %5 = bitcast i8* %4 to %struct.downscaler_process_page_buffer_s*
  store %struct.downscaler_process_page_buffer_s* %5, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %6 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %6, i32 0, i32 0
  %7 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options, align 8, !tbaa !53
  %output_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %7, i32 0, i32 3
  %8 = load i32 (i8*, %struct.gx_device_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)** %output_fn, align 8, !tbaa !69
  %9 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options1 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %9, i32 0, i32 0
  %10 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options1, align 8, !tbaa !53
  %arg2 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %10, i32 0, i32 4
  %11 = load i8*, i8** %arg2, align 8, !tbaa !71
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %13 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %orig_buffer = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %13, i32 0, i32 1
  %14 = load i8*, i8** %orig_buffer, align 8, !tbaa !77
  %call = call i32 %8(i8* %11, %struct.gx_device_s* %12, i8* %14) #4
  %15 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %15) #1
  %16 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @downscaler_free_fn(i8* %arg_, %struct.gx_device_s* %dev, %struct.gs_memory_s* %memory, i8* %buffer_) #0 {
entry:
  %arg_.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %buffer_.addr = alloca i8*, align 8
  %arg = alloca %struct.downscaler_process_page_arg_s*, align 8
  %buffer = alloca %struct.downscaler_process_page_buffer_s*, align 8
  store i8* %arg_, i8** %arg_.addr, align 8, !tbaa !5
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  store i8* %buffer_, i8** %buffer_.addr, align 8, !tbaa !5
  %0 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %arg_.addr, align 8, !tbaa !5
  %2 = bitcast i8* %1 to %struct.downscaler_process_page_arg_s*
  store %struct.downscaler_process_page_arg_s* %2, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %3 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load i8*, i8** %buffer_.addr, align 8, !tbaa !5
  %5 = bitcast i8* %4 to %struct.downscaler_process_page_buffer_s*
  store %struct.downscaler_process_page_buffer_s* %5, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %6 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %6, i32 0, i32 0
  %7 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options, align 8, !tbaa !53
  %free_buffer_fn = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %7, i32 0, i32 1
  %8 = load void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)** %free_buffer_fn, align 8, !tbaa !70
  %9 = load %struct.downscaler_process_page_arg_s*, %struct.downscaler_process_page_arg_s** %arg, align 8, !tbaa !5
  %orig_options1 = getelementptr inbounds %struct.downscaler_process_page_arg_s, %struct.downscaler_process_page_arg_s* %9, i32 0, i32 0
  %10 = load %struct.gx_process_page_options_s*, %struct.gx_process_page_options_s** %orig_options1, align 8, !tbaa !53
  %arg2 = getelementptr inbounds %struct.gx_process_page_options_s, %struct.gx_process_page_options_s* %10, i32 0, i32 4
  %11 = load i8*, i8** %arg2, align 8, !tbaa !71
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %13 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %14 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %orig_buffer = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %14, i32 0, i32 1
  %15 = load i8*, i8** %orig_buffer, align 8, !tbaa !77
  call void %8(i8* %11, %struct.gx_device_s* %12, %struct.gs_memory_s* %13, i8* %15) #4
  %16 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %bdev = getelementptr inbounds %struct.downscaler_process_page_buffer_s, %struct.downscaler_process_page_buffer_s* %16, i32 0, i32 0
  %17 = load %struct.gx_device_s*, %struct.gx_device_s** %bdev, align 8, !tbaa !73
  %tobool = icmp ne %struct.gx_device_s* %17, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %close_device = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 4
  %19 = load i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)** %close_device, align 8, !tbaa !75
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !5
  %call = call i32 %19(%struct.gx_device_s* %20) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %procs3 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %21, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs3, i32 0, i32 2
  %22 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !40
  %23 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !5
  %24 = load %struct.downscaler_process_page_buffer_s*, %struct.downscaler_process_page_buffer_s** %buffer, align 8, !tbaa !5
  %25 = bitcast %struct.downscaler_process_page_buffer_s* %24 to i8*
  call void %22(%struct.gs_memory_s* %23, i8* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i32 0, i32 0)) #4
  %26 = bitcast %struct.downscaler_process_page_buffer_s** %buffer to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  %27 = bitcast %struct.downscaler_process_page_arg_s** %arg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pack_8to1(i8* %outp, i8* %inp, i32 %w) #0 {
entry:
  %outp.addr = alloca i8*, align 8
  %inp.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  %value = alloca i32, align 4
  store i8* %outp, i8** %outp.addr, align 8, !tbaa !5
  store i8* %inp, i8** %inp.addr, align 8, !tbaa !5
  store i32 %w, i32* %w.addr, align 4, !tbaa !1
  %0 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 128, i32* %mask, align 4, !tbaa !1
  %1 = bitcast i32* %value to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  store i32 0, i32* %value, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %w.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %inp.addr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %inp.addr, align 8, !tbaa !5
  %4 = load i8, i8* %3, align 1, !tbaa !39
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %mask, align 4, !tbaa !1
  %6 = load i32, i32* %value, align 4, !tbaa !1
  %or = or i32 %6, %5
  store i32 %or, i32* %value, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %mask, align 4, !tbaa !1
  %shr = ashr i32 %7, 1
  store i32 %shr, i32* %mask, align 4, !tbaa !1
  %8 = load i32, i32* %mask, align 4, !tbaa !1
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  store i32 128, i32* %mask, align 4, !tbaa !1
  %9 = load i32, i32* %value, align 4, !tbaa !1
  %conv = trunc i32 %9 to i8
  %10 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr3, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv, i8* %10, align 1, !tbaa !39
  store i32 0, i32* %value, align 4, !tbaa !1
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %11 = load i32, i32* %w.addr, align 4, !tbaa !1
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %w.addr, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %mask, align 4, !tbaa !1
  %cmp5 = icmp ne i32 %12, 128
  br i1 %cmp5, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %for.end
  %13 = load i32, i32* %value, align 4, !tbaa !1
  %conv8 = trunc i32 %13 to i8
  %14 = load i8*, i8** %outp.addr, align 8, !tbaa !5
  %incdec.ptr9 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr9, i8** %outp.addr, align 8, !tbaa !5
  store i8 %conv8, i8* %14, align 1, !tbaa !39
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %for.end
  %15 = bitcast i32* %value to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %mask to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret void
}

declare i32 @gx_default_create_buf_device(%struct.gx_device_s**, %struct.gx_device_s*, i32, %struct.gx_render_plane_s*, %struct.gs_memory_s*, %struct.gx_colors_usage_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }
attributes #5 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 832}
!8 = !{!"gx_device_s", !2, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40, !6, i64 48, !9, i64 56, !2, i64 80, !2, i64 84, !2, i64 88, !11, i64 96, !14, i64 816, !2, i64 832, !2, i64 836, !2, i64 840, !2, i64 844, !2, i64 848, !2, i64 852, !3, i64 856, !3, i64 864, !2, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !10, i64 928, !10, i64 936, !2, i64 944, !2, i64 948, !2, i64 952, !2, i64 956, !2, i64 960, !10, i64 968, !10, i64 976, !15, i64 984, !2, i64 1052, !2, i64 1056, !16, i64 1064, !6, i64 1104, !3, i64 1112, !18, i64 1120, !19, i64 1144}
!9 = !{!"rc_header_s", !10, i64 0, !6, i64 8, !6, i64 16}
!10 = !{!"long", !3, i64 0}
!11 = !{!"gx_device_color_info_s", !2, i64 0, !2, i64 4, !3, i64 8, !12, i64 12, !3, i64 14, !2, i64 16, !2, i64 20, !2, i64 24, !2, i64 28, !13, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !6, i64 688, !3, i64 696, !10, i64 704, !2, i64 712}
!12 = !{!"short", !3, i64 0}
!13 = !{!"gx_device_anti_alias_info_s", !2, i64 0, !2, i64 4}
!14 = !{!"gx_device_cached_colors_s", !10, i64 0, !10, i64 8}
!15 = !{!"gx_stroked_gradient_recognizer_s", !2, i64 0, !3, i64 4, !3, i64 36}
!16 = !{!"gdev_space_params_s", !10, i64 0, !10, i64 8, !17, i64 16, !2, i64 32, !3, i64 36}
!17 = !{!"gx_band_params_s", !2, i64 0, !2, i64 4, !10, i64 8}
!18 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!19 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360, !6, i64 368, !6, i64 376, !6, i64 384, !6, i64 392, !6, i64 400, !6, i64 408, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !6, i64 456, !6, i64 464, !6, i64 472, !6, i64 480, !6, i64 488, !6, i64 496, !6, i64 504, !6, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !6, i64 544, !6, i64 552, !6, i64 560, !6, i64 568, !6, i64 576}
!20 = !{!21, !6, i64 0}
!21 = !{!"gx_downscaler_s", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16, !2, i64 20, !6, i64 24, !2, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !2, i64 64, !6, i64 72, !22, i64 80, !2, i64 616}
!22 = !{!"gs_get_bits_params_s", !10, i64 0, !3, i64 8, !2, i64 520, !2, i64 524, !2, i64 528}
!23 = !{!21, !2, i64 8}
!24 = !{!21, !2, i64 12}
!25 = !{!21, !2, i64 16}
!26 = !{!21, !2, i64 20}
!27 = !{!21, !2, i64 616}
!28 = !{!21, !2, i64 32}
!29 = !{!21, !6, i64 56}
!30 = !{!21, !2, i64 64}
!31 = !{!21, !2, i64 608}
!32 = !{!8, !6, i64 24}
!33 = !{!34, !6, i64 64}
!34 = !{!"gs_memory_s", !6, i64 0, !35, i64 8, !6, i64 192, !6, i64 200, !6, i64 208}
!35 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176}
!36 = !{!21, !6, i64 72}
!37 = !{!21, !6, i64 24}
!38 = !{!21, !6, i64 40}
!39 = !{!3, !3, i64 0}
!40 = !{!34, !6, i64 24}
!41 = !{!21, !6, i64 48}
!42 = !{!8, !6, i64 1240}
!43 = !{!44, !2, i64 0}
!44 = !{!"gs_int_rect_s", !45, i64 0, !45, i64 8}
!45 = !{!"gs_int_point_s", !2, i64 0, !2, i64 4}
!46 = !{!44, !2, i64 4}
!47 = !{!44, !2, i64 8}
!48 = !{!44, !2, i64 12}
!49 = !{!8, !6, i64 1448}
!50 = !{!8, !2, i64 836}
!51 = !{!22, !2, i64 528}
!52 = !{!8, !2, i64 100}
!53 = !{!54, !6, i64 0}
!54 = !{!"downscaler_process_page_arg_s", !6, i64 0, !2, i64 8, !2, i64 12, !21, i64 16}
!55 = !{!54, !6, i64 16}
!56 = !{!54, !2, i64 8}
!57 = !{!54, !2, i64 12}
!58 = !{!54, !2, i64 24}
!59 = !{!54, !2, i64 28}
!60 = !{!54, !2, i64 32}
!61 = !{!54, !2, i64 36}
!62 = !{!54, !2, i64 48}
!63 = !{!54, !2, i64 80}
!64 = !{!54, !2, i64 632}
!65 = !{!54, !6, i64 88}
!66 = !{!67, !6, i64 0}
!67 = !{!"gx_process_page_options_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !2, i64 40}
!68 = !{!67, !6, i64 16}
!69 = !{!67, !6, i64 24}
!70 = !{!67, !6, i64 8}
!71 = !{!67, !6, i64 32}
!72 = !{!8, !6, i64 1720}
!73 = !{!74, !6, i64 0}
!74 = !{!"downscaler_process_page_buffer_s", !6, i64 0, !6, i64 8}
!75 = !{!8, !6, i64 1176}
!76 = !{!22, !10, i64 0}
!77 = !{!74, !6, i64 8}
