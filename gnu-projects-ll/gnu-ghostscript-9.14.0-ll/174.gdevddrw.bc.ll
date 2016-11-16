; ModuleID = './gdevddrw.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
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
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_transparency_source_s = type { float }
%struct.gs_xstate_trans_flags = type { i32, i32 }
%struct.gs_fixed_point_s = type { i32, i32 }
%struct.gsicc_manager_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gsicc_devicen_s*, %struct.gsicc_smask_s*, i32, %struct.cmm_srcgtag_profile_s*, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.cmm_profile_s = type { i8, i8, i32, i32, i32, i32, %struct.gs_range_icc_s, i64, i32, [15 x i32], i32, i32, i32, %struct.gsicc_rendering_param_s, i8*, %struct.gx_device_s*, %struct.gsicc_namelist_s*, i8*, %struct.rc_header_s, i32, i8*, %struct.gs_memory_s*, %struct.gx_monitor_s* }
%struct.gs_range_icc_s = type { [15 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.gsicc_rendering_param_s = type { i32, i32, i32, i32, i32, i32 }
%struct.gsicc_namelist_s = type { i32, %struct.gsicc_colorname_s*, i8*, %struct.gs_devicen_color_map_s*, i32 }
%struct.gsicc_colorname_s = type { i8*, i32, %struct.gsicc_colorname_s* }
%struct.gx_monitor_s = type { %struct.gs_memory_s*, %union.gp_monitor }
%union.gp_monitor = type { i8* }
%struct.gsicc_devicen_s = type { %struct.gsicc_devicen_entry_s*, %struct.gsicc_devicen_entry_s*, i32 }
%struct.gsicc_devicen_entry_s = type { %struct.cmm_profile_s*, %struct.gsicc_devicen_entry_s* }
%struct.gsicc_smask_s = type { %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.gs_memory_s*, i32 }
%struct.cmm_srcgtag_profile_s = type { [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], [3 x %struct.cmm_profile_s*], [3 x %struct.gsicc_rendering_param_s], %struct.cmm_profile_s*, %struct.gs_memory_s*, i32, i8*, %struct.rc_header_s }
%struct.rc_header_s = type { i64, %struct.gs_memory_s*, void (%struct.gs_memory_s*, i8*, i8*)* }
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
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.gs_state_s = type opaque
%struct.stream_s = type opaque
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, {}*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_path_s = type opaque
%struct.gx_fill_params_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.gx_stroke_params_s = type opaque
%struct.gs_image1_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s, i32, i32, i32, [130 x float], i32, i32, i32, %struct.gs_color_space_s*, i32, i32, i32, i32 }
%struct.gx_image_type_s = type { %struct.gs_memory_struct_type_s*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gs_imager_state_s*, %struct.gs_image_common_s*, %struct.gs_int_point_s*)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s**)*, i32 (%struct.gs_image_common_s*, %struct.stream_s*, %struct.gs_color_space_s*)*, void (%struct.gs_image_common_s*, %struct.gs_memory_s*)*, i32 }
%struct.gs_image_common_s = type { %struct.gx_image_type_s*, %struct.gs_matrix_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_image_enum_common_s = type { %struct.gx_image_type_s*, %struct.gx_image_enum_procs_s*, %struct.gx_device_s*, %struct.gs_memory_s*, i64, i32, i32, [65 x i32], [65 x i32] }
%struct.gx_image_enum_procs_s = type { i32 (%struct.gx_image_enum_common_s*, %struct.gx_image_plane_s*, i32, i32*)*, i32 (%struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_image_enum_common_s*)*, i32 (%struct.gx_image_enum_common_s*, i8*)* }
%struct.gx_image_plane_s = type { i8*, i32, i32 }
%struct.gx_strip_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_get_bits_params_s = type opaque
%struct.gs_composite_s = type { %struct.gs_composite_type_s*, i64, i32, %struct.gs_composite_s*, %struct.gs_composite_s* }
%struct.gs_composite_type_s = type { i8, %struct.gs_composite_type_procs_s }
%struct.gs_composite_type_procs_s = type { i32 (%struct.gs_composite_s*, %struct.gx_device_s**, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s*)*, i32 (%struct.gs_composite_s*, i8*, i32*, %struct.gx_device_clist_writer_s*)*, i32 (%struct.gs_composite_s**, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32, i32, %struct.gs_imager_state_s*)*, i32 (%struct.gs_composite_s*, %struct.gs_composite_s**, %struct.gx_device_s*)*, i32 (%struct.gs_composite_s*, i8, i8)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gs_composite_s*, i32*, i32*, i32, i32)* }
%struct.gx_device_clist_writer_s = type opaque
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
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_transparency_mask_params_s = type { i32, i32, i32, i32, [64 x float], float, i32, i32, i32, i32, [256 x i8], i64, %struct.cmm_profile_s* }
%struct.gx_cm_color_map_procs_s = type { void (%struct.gx_device_s*, i16, i16*)*, void (%struct.gx_device_s*, %struct.gs_imager_state_s*, i16, i16, i16, i16*)*, void (%struct.gx_device_s*, i16, i16, i16, i16, i16*)* }
%struct.gs_pattern1_instance_s = type opaque
%struct.gs_fill_attributes_s = type { %struct.gs_fixed_rect_s*, i32, %struct.gx_device_halftone_s*, i32, i32, i32, %struct.patch_fill_state_s* }
%struct.patch_fill_state_s = type opaque
%struct.gs_devn_params_s = type opaque
%struct.gx_process_page_options_s = type { i32 (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i32, i32, i8**)*, void (i8*, %struct.gx_device_s*, %struct.gs_memory_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, %struct.gx_device_s*, %struct.gs_int_rect_s*, i8*)*, i32 (i8*, %struct.gx_device_s*, i8*)*, i8*, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%struct.gs_fixed_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.trap_line_s = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gs_linear_color_edge_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32*, i32*, i32 }
%struct.trap_gradient_s = type { i32*, i32*, i32*, i32 }

@gx_dc_type_data_pure = external constant %struct.gx_device_color_type_s, align 8
@.str = private unnamed_addr constant [23 x i8] c"gx_image_enum_common_t\00", align 1
@st_gx_image_enum_common = constant %struct.gs_memory_struct_type_s { i32 568, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @image_enum_common_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @image_enum_common_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define i32 @gx_fill_trapezoid_cf_fd(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, i32 %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %peak0 = alloca i32, align 4
  %peak1 = alloca i32, align 4
  %peak_y0 = alloca i32, align 4
  %peak_y1 = alloca i32, align 4
  %cindex = alloca i64, align 8
  %fill_rect = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %x106 = alloca i32, align 4
  %x263 = alloca i32, align 4
  %ixl = alloca i32, align 4
  %ixr = alloca i32, align 4
  %x365 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %fa, i32* %fa.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.483

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !10
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !7
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !10
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !11
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !11
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %peak0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and20 = and i32 %44, 1
  %cmp21 = icmp ne i32 %and20, 0
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %peak0, align 4, !tbaa !5
  %45 = bitcast i32* %peak1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and23 = and i32 %46, 2
  %cmp24 = icmp ne i32 %and23, 0
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %peak1, align 4, !tbaa !5
  %47 = bitcast i32* %peak_y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv26 = sext i32 %48 to i64
  %add27 = add nsw i64 %conv26, 128
  %conv28 = trunc i64 %add27 to i32
  store i32 %conv28, i32* %peak_y0, align 4, !tbaa !5
  %49 = bitcast i32* %peak_y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv29 = sext i32 %50 to i64
  %sub30 = sub nsw i64 %conv29, 128
  %conv31 = trunc i64 %sub30 to i32
  store i32 %conv31, i32* %peak_y1, align 4, !tbaa !5
  %51 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %52, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %53 = load i64, i64* %pure, align 8, !tbaa !12
  store i64 %53, i64* %cindex, align 8, !tbaa !12
  %54 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %56 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !14
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %56, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end32 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %57, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end32, i32 0, i32 1
  %58 = load i32, i32* %y33, align 4, !tbaa !26
  %59 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start34 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %59, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start34, i32 0, i32 1
  %60 = load i32, i32* %y35, align 4, !tbaa !11
  %sub36 = sub nsw i32 %58, %60
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub36, i32* %h, align 4, !tbaa !27
  %61 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end37 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %61, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end37, i32 0, i32 1
  %62 = load i32, i32* %y38, align 4, !tbaa !26
  %63 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start39 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %63, i32 0, i32 0
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start39, i32 0, i32 1
  %64 = load i32, i32* %y40, align 4, !tbaa !11
  %sub41 = sub nsw i32 %62, %64
  %h42 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub41, i32* %h42, align 4, !tbaa !27
  %65 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv43 = sext i32 %65 to i64
  %add44 = add nsw i64 %conv43, 127
  %conv45 = trunc i64 %add44 to i32
  %x46 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv45, i32* %x46, align 4, !tbaa !29
  %66 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv47 = sext i32 %66 to i64
  %add48 = add nsw i64 %conv47, 127
  %conv49 = trunc i64 %add48 to i32
  %x50 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv49, i32* %x50, align 4, !tbaa !29
  %67 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %67, i32* %ry, align 4, !tbaa !5
  %x51 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %68 = load i32, i32* %x51, align 4, !tbaa !29
  %conv52 = sext i32 %68 to i64
  %and53 = and i64 %conv52, -256
  %69 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv54 = sext i32 %69 to i64
  %add55 = add nsw i64 %conv54, 127
  %and56 = and i64 %add55, -256
  %cmp57 = icmp eq i64 %and53, %and56
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.73

if.else:                                          ; preds = %do.end
  %70 = load i32, i32* %dxl, align 4, !tbaa !5
  %71 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %70, i32 %71) #4
  %72 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv60 = sext i32 %72 to i64
  %cmp61 = icmp slt i64 %conv60, 256
  br i1 %cmp61, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df63 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %73 = load i32, i32* %df63, align 4, !tbaa !31
  %conv64 = sext i32 %73 to i64
  %cmp65 = icmp slt i64 %conv64, 8388607
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %74 = load i32, i32* %ysl, align 4, !tbaa !5
  %df67 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %75 = load i32, i32* %df67, align 4, !tbaa !31
  %mul = mul nsw i32 %74, %75
  %h68 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %76 = load i32, i32* %h68, align 4, !tbaa !27
  %div = sdiv i32 %mul, %76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %77 = load i32, i32* %ysl, align 4, !tbaa !5
  %df69 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %78 = load i32, i32* %df69, align 4, !tbaa !31
  %h70 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %79 = load i32, i32* %h70, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %77, i32 %78, i32 %79) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %80 = load i32, i32* %fxl, align 4, !tbaa !5
  %x71 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %81 = load i32, i32* %x71, align 4, !tbaa !29
  %add72 = add nsw i32 %81, %80
  store i32 %add72, i32* %x71, align 4, !tbaa !29
  br label %if.end.73

if.end.73:                                        ; preds = %cond.end, %if.then.59
  %x74 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %82 = load i32, i32* %x74, align 4, !tbaa !29
  %conv75 = sext i32 %82 to i64
  %and76 = and i64 %conv75, -256
  %83 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv77 = sext i32 %83 to i64
  %add78 = add nsw i64 %conv77, 127
  %and79 = and i64 %add78, -256
  %cmp80 = icmp eq i64 %and76, %and79
  br i1 %cmp80, label %if.then.82, label %if.else.130

if.then.82:                                       ; preds = %if.end.73
  %di83 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %84 = load i32, i32* %di83, align 4, !tbaa !30
  %cmp84 = icmp eq i32 %84, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.127

land.lhs.true.86:                                 ; preds = %if.then.82
  %df87 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %85 = load i32, i32* %df87, align 4, !tbaa !31
  %cmp88 = icmp eq i32 %85, 0
  br i1 %cmp88, label %if.then.90, label %if.end.127

if.then.90:                                       ; preds = %land.lhs.true.86
  %x91 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %86 = load i32, i32* %x91, align 4, !tbaa !29
  %shr92 = ashr i32 %86, 8
  store i32 %shr92, i32* %rxl, align 4, !tbaa !5
  %x93 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %87 = load i32, i32* %x93, align 4, !tbaa !29
  %shr94 = ashr i32 %87, 8
  store i32 %shr94, i32* %rxr, align 4, !tbaa !5
  %88 = load i32, i32* %rxl, align 4, !tbaa !5
  %89 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %88, %89
  br i1 %cmp95, label %if.then.97, label %if.end.120

if.then.97:                                       ; preds = %if.then.90
  %90 = load i32, i32* %peak0, align 4, !tbaa !5
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.100

lor.lhs.false:                                    ; preds = %if.then.97
  %91 = load i32, i32* %iy, align 4, !tbaa !5
  %92 = load i32, i32* %peak_y0, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %91, %92
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.119

land.lhs.true.100:                                ; preds = %lor.lhs.false, %if.then.97
  %93 = load i32, i32* %peak1, align 4, !tbaa !5
  %tobool101 = icmp ne i32 %93, 0
  br i1 %tobool101, label %lor.lhs.false.102, label %if.then.105

lor.lhs.false.102:                                ; preds = %land.lhs.true.100
  %94 = load i32, i32* %iy, align 4, !tbaa !5
  %95 = load i32, i32* %peak_y1, align 4, !tbaa !5
  %cmp103 = icmp sle i32 %94, %95
  br i1 %cmp103, label %if.then.105, label %if.end.119

if.then.105:                                      ; preds = %lor.lhs.false.102, %land.lhs.true.100
  %96 = bitcast i32* %x106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load i32, i32* %rxl, align 4, !tbaa !5
  %shl = shl i32 %97, 8
  %conv107 = sext i32 %shl to i64
  %add108 = add nsw i64 %conv107, 128
  %conv109 = trunc i64 %add108 to i32
  store i32 %conv109, i32* %x106, align 4, !tbaa !5
  %98 = load i32, i32* %x106, align 4, !tbaa !5
  %x110 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %99 = load i32, i32* %x110, align 4, !tbaa !29
  %sub111 = sub nsw i32 %98, %99
  %x112 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %100 = load i32, i32* %x112, align 4, !tbaa !29
  %101 = load i32, i32* %x106, align 4, !tbaa !5
  %sub113 = sub nsw i32 %100, %101
  %cmp114 = icmp slt i32 %sub111, %sub113
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.then.105
  %102 = load i32, i32* %rxr, align 4, !tbaa !5
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %rxr, align 4, !tbaa !5
  br label %if.end.118

if.else.117:                                      ; preds = %if.then.105
  %103 = load i32, i32* %rxl, align 4, !tbaa !5
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %rxl, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  %104 = bitcast i32* %x106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %lor.lhs.false.102, %lor.lhs.false
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.90
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.120
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %105 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %106 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %107 = load i32, i32* %rxl, align 4, !tbaa !5
  %108 = load i32, i32* %ry, align 4, !tbaa !5
  %109 = load i32, i32* %rxr, align 4, !tbaa !5
  %110 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub124 = sub nsw i32 %109, %110
  %111 = load i32, i32* %iy1, align 4, !tbaa !5
  %112 = load i32, i32* %ry, align 4, !tbaa !5
  %sub125 = sub nsw i32 %111, %112
  %113 = load i64, i64* %cindex, align 8, !tbaa !12
  %call126 = call i32 %105(%struct.gx_device_s* %106, i32 %107, i32 %108, i32 %sub124, i32 %sub125, i64 %113) #4
  store i32 %call126, i32* %code, align 4, !tbaa !5
  br label %xit

if.end.127:                                       ; preds = %land.lhs.true.86, %if.then.82
  %di128 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di128, align 4, !tbaa !30
  %df129 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df129, align 4, !tbaa !31
  br label %if.end.202

if.else.130:                                      ; preds = %if.end.73
  %114 = load i32, i32* %dxr, align 4, !tbaa !5
  %115 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp131 = icmp eq i32 %114, %115
  br i1 %cmp131, label %land.lhs.true.133, label %if.else.179

land.lhs.true.133:                                ; preds = %if.else.130
  %116 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp134 = icmp ne i32 %116, 0
  br i1 %cmp134, label %if.then.136, label %if.else.179

if.then.136:                                      ; preds = %land.lhs.true.133
  %di137 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %117 = load i32, i32* %di137, align 4, !tbaa !30
  %cmp138 = icmp eq i32 %117, 0
  br i1 %cmp138, label %if.then.140, label %if.else.144

if.then.140:                                      ; preds = %if.then.136
  %di141 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di141, align 4, !tbaa !30
  %df142 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %118 = load i32, i32* %df142, align 4, !tbaa !31
  %df143 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %118, i32* %df143, align 4, !tbaa !31
  br label %if.end.145

if.else.144:                                      ; preds = %if.then.136
  %119 = load i32, i32* %dxr, align 4, !tbaa !5
  %120 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %119, i32 %120) #4
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.144, %if.then.140
  %121 = load i32, i32* %ysr, align 4, !tbaa !5
  %122 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp146 = icmp eq i32 %121, %122
  br i1 %cmp146, label %land.lhs.true.148, label %if.else.156

land.lhs.true.148:                                ; preds = %if.end.145
  %h149 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %123 = load i32, i32* %h149, align 4, !tbaa !27
  %h150 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %124 = load i32, i32* %h150, align 4, !tbaa !27
  %cmp151 = icmp eq i32 %123, %124
  br i1 %cmp151, label %if.then.153, label %if.else.156

if.then.153:                                      ; preds = %land.lhs.true.148
  %125 = load i32, i32* %fxl, align 4, !tbaa !5
  %x154 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %126 = load i32, i32* %x154, align 4, !tbaa !29
  %add155 = add nsw i32 %126, %125
  store i32 %add155, i32* %x154, align 4, !tbaa !29
  br label %if.end.178

if.else.156:                                      ; preds = %land.lhs.true.148, %if.end.145
  %127 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv157 = sext i32 %127 to i64
  %cmp158 = icmp slt i64 %conv157, 256
  br i1 %cmp158, label %land.lhs.true.160, label %cond.false.170

land.lhs.true.160:                                ; preds = %if.else.156
  %df161 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %128 = load i32, i32* %df161, align 4, !tbaa !31
  %conv162 = sext i32 %128 to i64
  %cmp163 = icmp slt i64 %conv162, 8388607
  br i1 %cmp163, label %cond.true.165, label %cond.false.170

cond.true.165:                                    ; preds = %land.lhs.true.160
  %129 = load i32, i32* %ysr, align 4, !tbaa !5
  %df166 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %130 = load i32, i32* %df166, align 4, !tbaa !31
  %mul167 = mul nsw i32 %129, %130
  %h168 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %131 = load i32, i32* %h168, align 4, !tbaa !27
  %div169 = sdiv i32 %mul167, %131
  br label %cond.end.174

cond.false.170:                                   ; preds = %land.lhs.true.160, %if.else.156
  %132 = load i32, i32* %ysr, align 4, !tbaa !5
  %df171 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %133 = load i32, i32* %df171, align 4, !tbaa !31
  %h172 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %134 = load i32, i32* %h172, align 4, !tbaa !27
  %call173 = call i32 @fixed_mult_quo(i32 %132, i32 %133, i32 %134) #4
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.false.170, %cond.true.165
  %cond175 = phi i32 [ %div169, %cond.true.165 ], [ %call173, %cond.false.170 ]
  %x176 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %135 = load i32, i32* %x176, align 4, !tbaa !29
  %add177 = add nsw i32 %135, %cond175
  store i32 %add177, i32* %x176, align 4, !tbaa !29
  br label %if.end.178

if.end.178:                                       ; preds = %cond.end.174, %if.then.153
  br label %if.end.201

if.else.179:                                      ; preds = %land.lhs.true.133, %if.else.130
  %136 = load i32, i32* %dxr, align 4, !tbaa !5
  %137 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %136, i32 %137) #4
  %138 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv180 = sext i32 %138 to i64
  %cmp181 = icmp slt i64 %conv180, 256
  br i1 %cmp181, label %land.lhs.true.183, label %cond.false.193

land.lhs.true.183:                                ; preds = %if.else.179
  %df184 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %139 = load i32, i32* %df184, align 4, !tbaa !31
  %conv185 = sext i32 %139 to i64
  %cmp186 = icmp slt i64 %conv185, 8388607
  br i1 %cmp186, label %cond.true.188, label %cond.false.193

cond.true.188:                                    ; preds = %land.lhs.true.183
  %140 = load i32, i32* %ysr, align 4, !tbaa !5
  %df189 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %141 = load i32, i32* %df189, align 4, !tbaa !31
  %mul190 = mul nsw i32 %140, %141
  %h191 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %142 = load i32, i32* %h191, align 4, !tbaa !27
  %div192 = sdiv i32 %mul190, %142
  br label %cond.end.197

cond.false.193:                                   ; preds = %land.lhs.true.183, %if.else.179
  %143 = load i32, i32* %ysr, align 4, !tbaa !5
  %df194 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %144 = load i32, i32* %df194, align 4, !tbaa !31
  %h195 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %145 = load i32, i32* %h195, align 4, !tbaa !27
  %call196 = call i32 @fixed_mult_quo(i32 %143, i32 %144, i32 %145) #4
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.193, %cond.true.188
  %cond198 = phi i32 [ %div192, %cond.true.188 ], [ %call196, %cond.false.193 ]
  %x199 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %146 = load i32, i32* %x199, align 4, !tbaa !29
  %add200 = add nsw i32 %146, %cond198
  store i32 %add200, i32* %x199, align 4, !tbaa !29
  br label %if.end.201

if.end.201:                                       ; preds = %cond.end.197, %if.end.178
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201, %if.end.127
  %147 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %147) #4
  %148 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %148) #4
  %x203 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %149 = load i32, i32* %x203, align 4, !tbaa !29
  %conv204 = sext i32 %149 to i64
  %add205 = add nsw i64 %conv204, 1
  %conv206 = trunc i64 %add205 to i32
  store i32 %conv206, i32* %x203, align 4, !tbaa !29
  %x207 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %150 = load i32, i32* %x207, align 4, !tbaa !29
  %conv208 = sext i32 %150 to i64
  %add209 = add nsw i64 %conv208, 1
  %conv210 = trunc i64 %add209 to i32
  store i32 %conv210, i32* %x207, align 4, !tbaa !29
  %x211 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %151 = load i32, i32* %x211, align 4, !tbaa !29
  %and212 = and i32 %151, 255
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %cond.false.223, label %land.lhs.true.214

land.lhs.true.214:                                ; preds = %if.end.202
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %152 = load i32, i32* %xf, align 4, !tbaa !32
  %h215 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %153 = load i32, i32* %h215, align 4, !tbaa !27
  %sub216 = sub nsw i32 0, %153
  %cmp217 = icmp eq i32 %152, %sub216
  br i1 %cmp217, label %cond.true.219, label %cond.false.223

cond.true.219:                                    ; preds = %land.lhs.true.214
  %x220 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %154 = load i32, i32* %x220, align 4, !tbaa !29
  %conv221 = sext i32 %154 to i64
  %sub222 = sub nsw i64 %conv221, 256
  br label %cond.end.226

cond.false.223:                                   ; preds = %land.lhs.true.214, %if.end.202
  %x224 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %155 = load i32, i32* %x224, align 4, !tbaa !29
  %conv225 = sext i32 %155 to i64
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.223, %cond.true.219
  %cond227 = phi i64 [ %sub222, %cond.true.219 ], [ %conv225, %cond.false.223 ]
  %shr228 = ashr i64 %cond227, 8
  %conv229 = trunc i64 %shr228 to i32
  store i32 %conv229, i32* %rxl, align 4, !tbaa !5
  %x230 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %156 = load i32, i32* %x230, align 4, !tbaa !29
  %and231 = and i32 %156, 255
  %tobool232 = icmp ne i32 %and231, 0
  br i1 %tobool232, label %cond.false.243, label %land.lhs.true.233

land.lhs.true.233:                                ; preds = %cond.end.226
  %xf234 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %157 = load i32, i32* %xf234, align 4, !tbaa !32
  %h235 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %158 = load i32, i32* %h235, align 4, !tbaa !27
  %sub236 = sub nsw i32 0, %158
  %cmp237 = icmp eq i32 %157, %sub236
  br i1 %cmp237, label %cond.true.239, label %cond.false.243

cond.true.239:                                    ; preds = %land.lhs.true.233
  %x240 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %159 = load i32, i32* %x240, align 4, !tbaa !29
  %conv241 = sext i32 %159 to i64
  %sub242 = sub nsw i64 %conv241, 256
  br label %cond.end.246

cond.false.243:                                   ; preds = %land.lhs.true.233, %cond.end.226
  %x244 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %160 = load i32, i32* %x244, align 4, !tbaa !29
  %conv245 = sext i32 %160 to i64
  br label %cond.end.246

cond.end.246:                                     ; preds = %cond.false.243, %cond.true.239
  %cond247 = phi i64 [ %sub242, %cond.true.239 ], [ %conv245, %cond.false.243 ]
  %shr248 = ashr i64 %cond247, 8
  %conv249 = trunc i64 %shr248 to i32
  store i32 %conv249, i32* %rxr, align 4, !tbaa !5
  %161 = load i32, i32* %rxl, align 4, !tbaa !5
  %162 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp250 = icmp eq i32 %161, %162
  br i1 %cmp250, label %if.then.252, label %if.end.280

if.then.252:                                      ; preds = %cond.end.246
  %163 = load i32, i32* %peak0, align 4, !tbaa !5
  %tobool253 = icmp ne i32 %163, 0
  br i1 %tobool253, label %lor.lhs.false.254, label %land.lhs.true.257

lor.lhs.false.254:                                ; preds = %if.then.252
  %164 = load i32, i32* %iy, align 4, !tbaa !5
  %165 = load i32, i32* %peak_y0, align 4, !tbaa !5
  %cmp255 = icmp sge i32 %164, %165
  br i1 %cmp255, label %land.lhs.true.257, label %if.end.279

land.lhs.true.257:                                ; preds = %lor.lhs.false.254, %if.then.252
  %166 = load i32, i32* %peak1, align 4, !tbaa !5
  %tobool258 = icmp ne i32 %166, 0
  br i1 %tobool258, label %lor.lhs.false.259, label %if.then.262

lor.lhs.false.259:                                ; preds = %land.lhs.true.257
  %167 = load i32, i32* %iy, align 4, !tbaa !5
  %168 = load i32, i32* %peak_y1, align 4, !tbaa !5
  %cmp260 = icmp sle i32 %167, %168
  br i1 %cmp260, label %if.then.262, label %if.end.279

if.then.262:                                      ; preds = %lor.lhs.false.259, %land.lhs.true.257
  %169 = bitcast i32* %x263 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %169) #1
  %170 = load i32, i32* %rxl, align 4, !tbaa !5
  %shl264 = shl i32 %170, 8
  %conv265 = sext i32 %shl264 to i64
  %add266 = add nsw i64 %conv265, 128
  %conv267 = trunc i64 %add266 to i32
  store i32 %conv267, i32* %x263, align 4, !tbaa !5
  %171 = load i32, i32* %x263, align 4, !tbaa !5
  %x268 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %172 = load i32, i32* %x268, align 4, !tbaa !29
  %sub269 = sub nsw i32 %171, %172
  %x270 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %173 = load i32, i32* %x270, align 4, !tbaa !29
  %174 = load i32, i32* %x263, align 4, !tbaa !5
  %sub271 = sub nsw i32 %173, %174
  %cmp272 = icmp slt i32 %sub269, %sub271
  br i1 %cmp272, label %if.then.274, label %if.else.276

if.then.274:                                      ; preds = %if.then.262
  %175 = load i32, i32* %rxr, align 4, !tbaa !5
  %inc275 = add nsw i32 %175, 1
  store i32 %inc275, i32* %rxr, align 4, !tbaa !5
  br label %if.end.278

if.else.276:                                      ; preds = %if.then.262
  %176 = load i32, i32* %rxl, align 4, !tbaa !5
  %dec277 = add nsw i32 %176, -1
  store i32 %dec277, i32* %rxl, align 4, !tbaa !5
  br label %if.end.278

if.end.278:                                       ; preds = %if.else.276, %if.then.274
  %177 = bitcast i32* %x263 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %177) #1
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %lor.lhs.false.259, %lor.lhs.false.254
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %cond.end.246
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.280
  %178 = load i32, i32* %iy, align 4, !tbaa !5
  %inc281 = add nsw i32 %178, 1
  store i32 %inc281, i32* %iy, align 4, !tbaa !5
  %179 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp282 = icmp ne i32 %inc281, %179
  br i1 %cmp282, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %180 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %180) #1
  %181 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %181) #1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %182 = load i32, i32* %ldi, align 4, !tbaa !33
  %x284 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %183 = load i32, i32* %x284, align 4, !tbaa !29
  %add285 = add nsw i32 %183, %182
  store i32 %add285, i32* %x284, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %184 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf286 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %185 = load i32, i32* %xf286, align 4, !tbaa !32
  %add287 = add nsw i32 %185, %184
  store i32 %add287, i32* %xf286, align 4, !tbaa !32
  %cmp288 = icmp sge i32 %add287, 0
  br i1 %cmp288, label %if.then.290, label %if.end.296

if.then.290:                                      ; preds = %while.body
  %h291 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %186 = load i32, i32* %h291, align 4, !tbaa !27
  %xf292 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %187 = load i32, i32* %xf292, align 4, !tbaa !32
  %sub293 = sub nsw i32 %187, %186
  store i32 %sub293, i32* %xf292, align 4, !tbaa !32
  %x294 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %188 = load i32, i32* %x294, align 4, !tbaa !29
  %inc295 = add nsw i32 %188, 1
  store i32 %inc295, i32* %x294, align 4, !tbaa !29
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.290, %while.body
  %x297 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %189 = load i32, i32* %x297, align 4, !tbaa !29
  %and298 = and i32 %189, 255
  %tobool299 = icmp ne i32 %and298, 0
  br i1 %tobool299, label %cond.false.310, label %land.lhs.true.300

land.lhs.true.300:                                ; preds = %if.end.296
  %xf301 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %190 = load i32, i32* %xf301, align 4, !tbaa !32
  %h302 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %191 = load i32, i32* %h302, align 4, !tbaa !27
  %sub303 = sub nsw i32 0, %191
  %cmp304 = icmp eq i32 %190, %sub303
  br i1 %cmp304, label %cond.true.306, label %cond.false.310

cond.true.306:                                    ; preds = %land.lhs.true.300
  %x307 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %192 = load i32, i32* %x307, align 4, !tbaa !29
  %conv308 = sext i32 %192 to i64
  %sub309 = sub nsw i64 %conv308, 256
  br label %cond.end.313

cond.false.310:                                   ; preds = %land.lhs.true.300, %if.end.296
  %x311 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %193 = load i32, i32* %x311, align 4, !tbaa !29
  %conv312 = sext i32 %193 to i64
  br label %cond.end.313

cond.end.313:                                     ; preds = %cond.false.310, %cond.true.306
  %cond314 = phi i64 [ %sub309, %cond.true.306 ], [ %conv312, %cond.false.310 ]
  %shr315 = ashr i64 %cond314, 8
  %conv316 = trunc i64 %shr315 to i32
  store i32 %conv316, i32* %ixl, align 4, !tbaa !5
  %ldi317 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %194 = load i32, i32* %ldi317, align 4, !tbaa !33
  %x318 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %195 = load i32, i32* %x318, align 4, !tbaa !29
  %add319 = add nsw i32 %195, %194
  store i32 %add319, i32* %x318, align 4, !tbaa !29
  %ldf320 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %196 = load i32, i32* %ldf320, align 4, !tbaa !34
  %xf321 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %197 = load i32, i32* %xf321, align 4, !tbaa !32
  %add322 = add nsw i32 %197, %196
  store i32 %add322, i32* %xf321, align 4, !tbaa !32
  %cmp323 = icmp sge i32 %add322, 0
  br i1 %cmp323, label %if.then.325, label %if.end.331

if.then.325:                                      ; preds = %cond.end.313
  %h326 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %198 = load i32, i32* %h326, align 4, !tbaa !27
  %xf327 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %199 = load i32, i32* %xf327, align 4, !tbaa !32
  %sub328 = sub nsw i32 %199, %198
  store i32 %sub328, i32* %xf327, align 4, !tbaa !32
  %x329 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %200 = load i32, i32* %x329, align 4, !tbaa !29
  %inc330 = add nsw i32 %200, 1
  store i32 %inc330, i32* %x329, align 4, !tbaa !29
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.325, %cond.end.313
  %x332 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %201 = load i32, i32* %x332, align 4, !tbaa !29
  %and333 = and i32 %201, 255
  %tobool334 = icmp ne i32 %and333, 0
  br i1 %tobool334, label %cond.false.345, label %land.lhs.true.335

land.lhs.true.335:                                ; preds = %if.end.331
  %xf336 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %202 = load i32, i32* %xf336, align 4, !tbaa !32
  %h337 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %203 = load i32, i32* %h337, align 4, !tbaa !27
  %sub338 = sub nsw i32 0, %203
  %cmp339 = icmp eq i32 %202, %sub338
  br i1 %cmp339, label %cond.true.341, label %cond.false.345

cond.true.341:                                    ; preds = %land.lhs.true.335
  %x342 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %204 = load i32, i32* %x342, align 4, !tbaa !29
  %conv343 = sext i32 %204 to i64
  %sub344 = sub nsw i64 %conv343, 256
  br label %cond.end.348

cond.false.345:                                   ; preds = %land.lhs.true.335, %if.end.331
  %x346 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %205 = load i32, i32* %x346, align 4, !tbaa !29
  %conv347 = sext i32 %205 to i64
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.345, %cond.true.341
  %cond349 = phi i64 [ %sub344, %cond.true.341 ], [ %conv347, %cond.false.345 ]
  %shr350 = ashr i64 %cond349, 8
  %conv351 = trunc i64 %shr350 to i32
  store i32 %conv351, i32* %ixr, align 4, !tbaa !5
  %206 = load i32, i32* %ixl, align 4, !tbaa !5
  %207 = load i32, i32* %ixr, align 4, !tbaa !5
  %cmp352 = icmp eq i32 %206, %207
  br i1 %cmp352, label %if.then.354, label %if.end.382

if.then.354:                                      ; preds = %cond.end.348
  %208 = load i32, i32* %peak0, align 4, !tbaa !5
  %tobool355 = icmp ne i32 %208, 0
  br i1 %tobool355, label %lor.lhs.false.356, label %land.lhs.true.359

lor.lhs.false.356:                                ; preds = %if.then.354
  %209 = load i32, i32* %iy, align 4, !tbaa !5
  %210 = load i32, i32* %peak_y0, align 4, !tbaa !5
  %cmp357 = icmp sge i32 %209, %210
  br i1 %cmp357, label %land.lhs.true.359, label %if.end.381

land.lhs.true.359:                                ; preds = %lor.lhs.false.356, %if.then.354
  %211 = load i32, i32* %peak1, align 4, !tbaa !5
  %tobool360 = icmp ne i32 %211, 0
  br i1 %tobool360, label %lor.lhs.false.361, label %if.then.364

lor.lhs.false.361:                                ; preds = %land.lhs.true.359
  %212 = load i32, i32* %iy, align 4, !tbaa !5
  %213 = load i32, i32* %peak_y1, align 4, !tbaa !5
  %cmp362 = icmp sle i32 %212, %213
  br i1 %cmp362, label %if.then.364, label %if.end.381

if.then.364:                                      ; preds = %lor.lhs.false.361, %land.lhs.true.359
  %214 = bitcast i32* %x365 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %214) #1
  %215 = load i32, i32* %ixl, align 4, !tbaa !5
  %shl366 = shl i32 %215, 8
  %conv367 = sext i32 %shl366 to i64
  %add368 = add nsw i64 %conv367, 128
  %conv369 = trunc i64 %add368 to i32
  store i32 %conv369, i32* %x365, align 4, !tbaa !5
  %216 = load i32, i32* %x365, align 4, !tbaa !5
  %x370 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %217 = load i32, i32* %x370, align 4, !tbaa !29
  %sub371 = sub nsw i32 %216, %217
  %x372 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %218 = load i32, i32* %x372, align 4, !tbaa !29
  %219 = load i32, i32* %x365, align 4, !tbaa !5
  %sub373 = sub nsw i32 %218, %219
  %cmp374 = icmp slt i32 %sub371, %sub373
  br i1 %cmp374, label %if.then.376, label %if.else.378

if.then.376:                                      ; preds = %if.then.364
  %220 = load i32, i32* %ixr, align 4, !tbaa !5
  %inc377 = add nsw i32 %220, 1
  store i32 %inc377, i32* %ixr, align 4, !tbaa !5
  br label %if.end.380

if.else.378:                                      ; preds = %if.then.364
  %221 = load i32, i32* %ixl, align 4, !tbaa !5
  %dec379 = add nsw i32 %221, -1
  store i32 %dec379, i32* %ixl, align 4, !tbaa !5
  br label %if.end.380

if.end.380:                                       ; preds = %if.else.378, %if.then.376
  %222 = bitcast i32* %x365 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %lor.lhs.false.361, %lor.lhs.false.356
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %cond.end.348
  %223 = load i32, i32* %ixl, align 4, !tbaa !5
  %224 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp383 = icmp ne i32 %223, %224
  br i1 %cmp383, label %if.then.388, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %if.end.382
  %225 = load i32, i32* %ixr, align 4, !tbaa !5
  %226 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp386 = icmp ne i32 %225, %226
  br i1 %cmp386, label %if.then.388, label %if.end.445

if.then.388:                                      ; preds = %lor.lhs.false.385, %if.end.382
  %227 = load i32, i32* %rxr, align 4, !tbaa !5
  %228 = load i32, i32* %ixl, align 4, !tbaa !5
  %cmp389 = icmp slt i32 %227, %228
  br i1 %cmp389, label %if.then.391, label %if.end.411

if.then.391:                                      ; preds = %if.then.388
  %229 = load i32, i32* %iy, align 4, !tbaa !5
  %230 = load i32, i32* %ry, align 4, !tbaa !5
  %sub392 = sub nsw i32 %229, %230
  %cmp393 = icmp sgt i32 %sub392, 1
  br i1 %cmp393, label %if.then.395, label %if.end.408

if.then.395:                                      ; preds = %if.then.391
  br label %do.body.396

do.body.396:                                      ; preds = %if.then.395
  br label %do.cond.397

do.cond.397:                                      ; preds = %do.body.396
  br label %do.end.398

do.end.398:                                       ; preds = %do.cond.397
  %231 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %232 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %233 = load i32, i32* %rxl, align 4, !tbaa !5
  %234 = load i32, i32* %ry, align 4, !tbaa !5
  %235 = load i32, i32* %rxr, align 4, !tbaa !5
  %236 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub399 = sub nsw i32 %235, %236
  %237 = load i32, i32* %iy, align 4, !tbaa !5
  %238 = load i32, i32* %ry, align 4, !tbaa !5
  %sub400 = sub nsw i32 %237, %238
  %sub401 = sub nsw i32 %sub400, 1
  %239 = load i64, i64* %cindex, align 8, !tbaa !12
  %call402 = call i32 %231(%struct.gx_device_s* %232, i32 %233, i32 %234, i32 %sub399, i32 %sub401, i64 %239) #4
  store i32 %call402, i32* %code, align 4, !tbaa !5
  %240 = load i32, i32* %code, align 4, !tbaa !5
  %cmp403 = icmp slt i32 %240, 0
  br i1 %cmp403, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %do.end.398
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.406:                                       ; preds = %do.end.398
  %241 = load i32, i32* %iy, align 4, !tbaa !5
  %sub407 = sub nsw i32 %241, 1
  store i32 %sub407, i32* %ry, align 4, !tbaa !5
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.406, %if.then.391
  %242 = load i32, i32* %ixl, align 4, !tbaa !5
  %243 = load i32, i32* %ixl, align 4, !tbaa !5
  %add409 = add nsw i32 %242, %243
  %div410 = sdiv i32 %add409, 2
  store i32 %div410, i32* %ixl, align 4, !tbaa !5
  store i32 %div410, i32* %rxr, align 4, !tbaa !5
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.408, %if.then.388
  %244 = load i32, i32* %ixr, align 4, !tbaa !5
  %245 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp412 = icmp slt i32 %244, %245
  br i1 %cmp412, label %if.then.414, label %if.end.434

if.then.414:                                      ; preds = %if.end.411
  %246 = load i32, i32* %iy, align 4, !tbaa !5
  %247 = load i32, i32* %ry, align 4, !tbaa !5
  %sub415 = sub nsw i32 %246, %247
  %cmp416 = icmp sgt i32 %sub415, 1
  br i1 %cmp416, label %if.then.418, label %if.end.431

if.then.418:                                      ; preds = %if.then.414
  br label %do.body.419

do.body.419:                                      ; preds = %if.then.418
  br label %do.cond.420

do.cond.420:                                      ; preds = %do.body.419
  br label %do.end.421

do.end.421:                                       ; preds = %do.cond.420
  %248 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %249 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %250 = load i32, i32* %rxl, align 4, !tbaa !5
  %251 = load i32, i32* %ry, align 4, !tbaa !5
  %252 = load i32, i32* %rxr, align 4, !tbaa !5
  %253 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub422 = sub nsw i32 %252, %253
  %254 = load i32, i32* %iy, align 4, !tbaa !5
  %255 = load i32, i32* %ry, align 4, !tbaa !5
  %sub423 = sub nsw i32 %254, %255
  %sub424 = sub nsw i32 %sub423, 1
  %256 = load i64, i64* %cindex, align 8, !tbaa !12
  %call425 = call i32 %248(%struct.gx_device_s* %249, i32 %250, i32 %251, i32 %sub422, i32 %sub424, i64 %256) #4
  store i32 %call425, i32* %code, align 4, !tbaa !5
  %257 = load i32, i32* %code, align 4, !tbaa !5
  %cmp426 = icmp slt i32 %257, 0
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %do.end.421
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.429:                                       ; preds = %do.end.421
  %258 = load i32, i32* %iy, align 4, !tbaa !5
  %sub430 = sub nsw i32 %258, 1
  store i32 %sub430, i32* %ry, align 4, !tbaa !5
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.429, %if.then.414
  %259 = load i32, i32* %rxl, align 4, !tbaa !5
  %260 = load i32, i32* %rxl, align 4, !tbaa !5
  %add432 = add nsw i32 %259, %260
  %div433 = sdiv i32 %add432, 2
  store i32 %div433, i32* %rxl, align 4, !tbaa !5
  store i32 %div433, i32* %ixr, align 4, !tbaa !5
  br label %if.end.434

if.end.434:                                       ; preds = %if.end.431, %if.end.411
  br label %do.body.435

do.body.435:                                      ; preds = %if.end.434
  br label %do.cond.436

do.cond.436:                                      ; preds = %do.body.435
  br label %do.end.437

do.end.437:                                       ; preds = %do.cond.436
  %261 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %262 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %263 = load i32, i32* %rxl, align 4, !tbaa !5
  %264 = load i32, i32* %ry, align 4, !tbaa !5
  %265 = load i32, i32* %rxr, align 4, !tbaa !5
  %266 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub438 = sub nsw i32 %265, %266
  %267 = load i32, i32* %iy, align 4, !tbaa !5
  %268 = load i32, i32* %ry, align 4, !tbaa !5
  %sub439 = sub nsw i32 %267, %268
  %269 = load i64, i64* %cindex, align 8, !tbaa !12
  %call440 = call i32 %261(%struct.gx_device_s* %262, i32 %263, i32 %264, i32 %sub438, i32 %sub439, i64 %269) #4
  store i32 %call440, i32* %code, align 4, !tbaa !5
  %270 = load i32, i32* %code, align 4, !tbaa !5
  %cmp441 = icmp slt i32 %270, 0
  br i1 %cmp441, label %if.then.443, label %if.end.444

if.then.443:                                      ; preds = %do.end.437
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.444:                                       ; preds = %do.end.437
  %271 = load i32, i32* %ixl, align 4, !tbaa !5
  store i32 %271, i32* %rxl, align 4, !tbaa !5
  %272 = load i32, i32* %ixr, align 4, !tbaa !5
  store i32 %272, i32* %rxr, align 4, !tbaa !5
  %273 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %273, i32* %ry, align 4, !tbaa !5
  br label %if.end.445

if.end.445:                                       ; preds = %if.end.444, %lor.lhs.false.385
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.443, %if.then.428, %if.then.405, %if.end.445
  %274 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %274) #1
  %275 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.460 [
    i32 0, label %cleanup.cont
    i32 6, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.447

do.body.447:                                      ; preds = %while.end
  br label %do.cond.448

do.cond.448:                                      ; preds = %do.body.447
  br label %do.end.449

do.end.449:                                       ; preds = %do.cond.448
  %276 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %277 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %278 = load i32, i32* %rxl, align 4, !tbaa !5
  %279 = load i32, i32* %ry, align 4, !tbaa !5
  %280 = load i32, i32* %rxr, align 4, !tbaa !5
  %281 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub450 = sub nsw i32 %280, %281
  %282 = load i32, i32* %iy, align 4, !tbaa !5
  %283 = load i32, i32* %ry, align 4, !tbaa !5
  %sub451 = sub nsw i32 %282, %283
  %284 = load i64, i64* %cindex, align 8, !tbaa !12
  %call452 = call i32 %276(%struct.gx_device_s* %277, i32 %278, i32 %279, i32 %sub450, i32 %sub451, i64 %284) #4
  store i32 %call452, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %do.end.449, %cleanup, %do.end.123
  %285 = load i32, i32* %code, align 4, !tbaa !5
  %cmp453 = icmp slt i32 %285, 0
  br i1 %cmp453, label %if.then.455, label %if.end.456

if.then.455:                                      ; preds = %xit
  %286 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %286, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

if.end.456:                                       ; preds = %xit
  br label %do.body.457

do.body.457:                                      ; preds = %if.end.456
  br label %do.cond.458

do.cond.458:                                      ; preds = %do.body.457
  br label %do.end.459

do.end.459:                                       ; preds = %do.cond.458
  %287 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %287, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.460

cleanup.460:                                      ; preds = %do.end.459, %if.then.455, %cleanup
  %288 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i32* %peak_y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  %291 = bitcast i32* %peak_y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %291) #1
  %292 = bitcast i32* %peak1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %292) #1
  %293 = bitcast i32* %peak0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %293) #1
  %294 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %294) #1
  %295 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %295) #1
  %296 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %296) #1
  %297 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %297) #1
  %298 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %298) #1
  %299 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %299) #1
  %300 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %300) #1
  %301 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %301) #1
  %302 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %302) #1
  %303 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %303) #1
  %304 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %304) #1
  %305 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %307) #1
  %308 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %308) #1
  %309 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  br label %cleanup.483

cleanup.483:                                      ; preds = %cleanup.460, %if.then
  %311 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = load i32, i32* %retval
  ret i32 %313
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @compute_dx(%struct.trap_line_s* %tl, i32 %xd, i32 %ys) #2 {
entry:
  %tl.addr = alloca %struct.trap_line_s*, align 8
  %xd.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %h = alloca i32, align 4
  %di = alloca i32, align 4
  store %struct.trap_line_s* %tl, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  store i32 %xd, i32* %xd.addr, align 4, !tbaa !5
  store i32 %ys, i32* %ys.addr, align 4, !tbaa !5
  %0 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %h1 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %1, i32 0, i32 0
  %2 = load i32, i32* %h1, align 4, !tbaa !27
  store i32 %2, i32* %h, align 4, !tbaa !5
  %3 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %6 = load i32, i32* %h, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %di4 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %7, i32 0, i32 1
  store i32 0, i32* %di4, align 4, !tbaa !30
  %8 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %9 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %9, i32 0, i32 2
  store i32 %8, i32* %df, align 4, !tbaa !31
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %11 = load i32, i32* %h, align 4, !tbaa !5
  %div = sdiv i32 %10, %11
  store i32 %div, i32* %di, align 4, !tbaa !5
  %12 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %di5 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %12, i32 0, i32 1
  store i32 %div, i32* %di5, align 4, !tbaa !30
  %13 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %14 = load i32, i32* %di, align 4, !tbaa !5
  %15 = load i32, i32* %h, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %15
  %sub = sub nsw i32 %13, %mul
  %16 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %df6 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %16, i32 0, i32 2
  store i32 %sub, i32* %df6, align 4, !tbaa !31
  %17 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %18 = load i32, i32* %di, align 4, !tbaa !5
  %mul7 = mul nsw i32 %17, %18
  %19 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %19, i32 0, i32 3
  %20 = load i32, i32* %x, align 4, !tbaa !29
  %add = add nsw i32 %20, %mul7
  store i32 %add, i32* %x, align 4, !tbaa !29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.28

if.else.8:                                        ; preds = %entry
  %21 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %22 = load i32, i32* %h, align 4, !tbaa !5
  %add9 = add nsw i32 %21, %22
  %23 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %df10 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %23, i32 0, i32 2
  store i32 %add9, i32* %df10, align 4, !tbaa !31
  %cmp11 = icmp sge i32 %add9, 0
  br i1 %cmp11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.else.8
  %24 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %di13 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %24, i32 0, i32 1
  store i32 -1, i32* %di13, align 4, !tbaa !30
  %25 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %26 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %x14 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %26, i32 0, i32 3
  %27 = load i32, i32* %x14, align 4, !tbaa !29
  %sub15 = sub nsw i32 %27, %25
  store i32 %sub15, i32* %x14, align 4, !tbaa !29
  br label %if.end.27

if.else.16:                                       ; preds = %if.else.8
  %28 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %add17 = add nsw i32 %28, 1
  %29 = load i32, i32* %h, align 4, !tbaa !5
  %div18 = sdiv i32 %add17, %29
  %sub19 = sub nsw i32 %div18, 1
  store i32 %sub19, i32* %di, align 4, !tbaa !5
  %30 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %di20 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %30, i32 0, i32 1
  store i32 %sub19, i32* %di20, align 4, !tbaa !30
  %31 = load i32, i32* %xd.addr, align 4, !tbaa !5
  %32 = load i32, i32* %di, align 4, !tbaa !5
  %33 = load i32, i32* %h, align 4, !tbaa !5
  %mul21 = mul nsw i32 %32, %33
  %sub22 = sub nsw i32 %31, %mul21
  %34 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %df23 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %34, i32 0, i32 2
  store i32 %sub22, i32* %df23, align 4, !tbaa !31
  %35 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %36 = load i32, i32* %di, align 4, !tbaa !5
  %mul24 = mul nsw i32 %35, %36
  %37 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %x25 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %37, i32 0, i32 3
  %38 = load i32, i32* %x25, align 4, !tbaa !29
  %add26 = add nsw i32 %38, %mul24
  store i32 %add26, i32* %x25, align 4, !tbaa !29
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.16, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %39 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  ret void
}

declare i32 @fixed_mult_quo(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @compute_ldx(%struct.trap_line_s* %tl, i32 %ys) #2 {
entry:
  %tl.addr = alloca %struct.trap_line_s*, align 8
  %ys.addr = alloca i32, align 4
  %di = alloca i32, align 4
  %df = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct.trap_line_s* %tl, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  store i32 %ys, i32* %ys.addr, align 4, !tbaa !5
  %0 = bitcast i32* %di to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %di1 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %1, i32 0, i32 1
  %2 = load i32, i32* %di1, align 4, !tbaa !30
  store i32 %2, i32* %di, align 4, !tbaa !5
  %3 = bitcast i32* %df to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %df2 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %4, i32 0, i32 2
  %5 = load i32, i32* %df2, align 4, !tbaa !31
  store i32 %5, i32* %df, align 4, !tbaa !5
  %6 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %h3 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %7, i32 0, i32 0
  %8 = load i32, i32* %h3, align 4, !tbaa !27
  store i32 %8, i32* %h, align 4, !tbaa !5
  %9 = load i32, i32* %df, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %cmp = icmp slt i64 %conv, 8388607
  br i1 %cmp, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %df, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %11 = load i32, i32* %di, align 4, !tbaa !5
  %shl = shl i32 %11, 8
  %12 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %12, i32 0, i32 5
  store i32 %shl, i32* %ldi, align 4, !tbaa !33
  %13 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %13, i32 0, i32 6
  store i32 0, i32* %ldf, align 4, !tbaa !34
  %14 = load i32, i32* %h, align 4, !tbaa !5
  %sub = sub nsw i32 0, %14
  %15 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %15, i32 0, i32 4
  store i32 %sub, i32* %xf, align 4, !tbaa !32
  br label %if.end

if.else:                                          ; preds = %if.then
  %16 = load i32, i32* %di, align 4, !tbaa !5
  %shl8 = shl i32 %16, 8
  %17 = load i32, i32* %df, align 4, !tbaa !5
  %shl9 = shl i32 %17, 8
  %18 = load i32, i32* %h, align 4, !tbaa !5
  %div = sdiv i32 %shl9, %18
  %add = add nsw i32 %shl8, %div
  %19 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %ldi10 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %19, i32 0, i32 5
  store i32 %add, i32* %ldi10, align 4, !tbaa !33
  %20 = load i32, i32* %df, align 4, !tbaa !5
  %shl11 = shl i32 %20, 8
  %21 = load i32, i32* %h, align 4, !tbaa !5
  %rem = srem i32 %shl11, %21
  %22 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %ldf12 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %22, i32 0, i32 6
  store i32 %rem, i32* %ldf12, align 4, !tbaa !34
  %23 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %conv13 = sext i32 %23 to i64
  %cmp14 = icmp slt i64 %conv13, 256
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %24 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %25 = load i32, i32* %df, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %25
  %26 = load i32, i32* %h, align 4, !tbaa !5
  %rem16 = srem i32 %mul, %26
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %27 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %28 = load i32, i32* %df, align 4, !tbaa !5
  %29 = load i32, i32* %h, align 4, !tbaa !5
  %call = call i32 @fixed_mult_rem(i32 %27, i32 %28, i32 %29) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %rem16, %cond.true ], [ %call, %cond.false ]
  %30 = load i32, i32* %h, align 4, !tbaa !5
  %sub17 = sub nsw i32 %cond, %30
  %31 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %xf18 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %31, i32 0, i32 4
  store i32 %sub17, i32* %xf18, align 4, !tbaa !32
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then.7
  br label %if.end.29

if.else.19:                                       ; preds = %entry
  %32 = load i32, i32* %di, align 4, !tbaa !5
  %shl20 = shl i32 %32, 8
  %33 = load i32, i32* %df, align 4, !tbaa !5
  %34 = load i32, i32* %h, align 4, !tbaa !5
  %call21 = call i32 @fixed_mult_quo(i32 256, i32 %33, i32 %34) #4
  %add22 = add nsw i32 %shl20, %call21
  %35 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %ldi23 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %35, i32 0, i32 5
  store i32 %add22, i32* %ldi23, align 4, !tbaa !33
  %36 = load i32, i32* %df, align 4, !tbaa !5
  %37 = load i32, i32* %h, align 4, !tbaa !5
  %call24 = call i32 @fixed_mult_rem(i32 256, i32 %36, i32 %37) #4
  %38 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %ldf25 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %38, i32 0, i32 6
  store i32 %call24, i32* %ldf25, align 4, !tbaa !34
  %39 = load i32, i32* %ys.addr, align 4, !tbaa !5
  %40 = load i32, i32* %df, align 4, !tbaa !5
  %41 = load i32, i32* %h, align 4, !tbaa !5
  %call26 = call i32 @fixed_mult_rem(i32 %39, i32 %40, i32 %41) #4
  %42 = load i32, i32* %h, align 4, !tbaa !5
  %sub27 = sub nsw i32 %call26, %42
  %43 = load %struct.trap_line_s*, %struct.trap_line_s** %tl.addr, align 8, !tbaa !1
  %xf28 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %43, i32 0, i32 4
  store i32 %sub27, i32* %xf28, align 4, !tbaa !32
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.19, %if.end
  %44 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %44) #1
  %45 = bitcast i32* %df to i8*
  call void @llvm.lifetime.end(i64 4, i8* %45) #1
  %46 = bitcast i32* %di to i8*
  call void @llvm.lifetime.end(i64 4, i8* %46) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_fill_trapezoid_cf_nd(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, i32 %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %peak0 = alloca i32, align 4
  %peak1 = alloca i32, align 4
  %peak_y0 = alloca i32, align 4
  %peak_y1 = alloca i32, align 4
  %cindex = alloca i64, align 8
  %fill_rect = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %x106 = alloca i32, align 4
  %x264 = alloca i32, align 4
  %ixl = alloca i32, align 4
  %ixr = alloca i32, align 4
  %x366 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %fa, i32* %fa.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.493

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !10
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !7
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !10
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !11
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !11
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %peak0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and20 = and i32 %44, 1
  %cmp21 = icmp ne i32 %and20, 0
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %peak0, align 4, !tbaa !5
  %45 = bitcast i32* %peak1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %and23 = and i32 %46, 2
  %cmp24 = icmp ne i32 %and23, 0
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %peak1, align 4, !tbaa !5
  %47 = bitcast i32* %peak_y0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %47) #1
  %48 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv26 = sext i32 %48 to i64
  %add27 = add nsw i64 %conv26, 128
  %conv28 = trunc i64 %add27 to i32
  store i32 %conv28, i32* %peak_y0, align 4, !tbaa !5
  %49 = bitcast i32* %peak_y1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %49) #1
  %50 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv29 = sext i32 %50 to i64
  %sub30 = sub nsw i64 %conv29, 128
  %conv31 = trunc i64 %sub30 to i32
  store i32 %conv31, i32* %peak_y1, align 4, !tbaa !5
  %51 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %52, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %53 = load i64, i64* %pure, align 8, !tbaa !12
  store i64 %53, i64* %cindex, align 8, !tbaa !12
  %54 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %55, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %56 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !14
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %56, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end32 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %57, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end32, i32 0, i32 1
  %58 = load i32, i32* %y33, align 4, !tbaa !26
  %59 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start34 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %59, i32 0, i32 0
  %y35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start34, i32 0, i32 1
  %60 = load i32, i32* %y35, align 4, !tbaa !11
  %sub36 = sub nsw i32 %58, %60
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub36, i32* %h, align 4, !tbaa !27
  %61 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end37 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %61, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end37, i32 0, i32 1
  %62 = load i32, i32* %y38, align 4, !tbaa !26
  %63 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start39 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %63, i32 0, i32 0
  %y40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start39, i32 0, i32 1
  %64 = load i32, i32* %y40, align 4, !tbaa !11
  %sub41 = sub nsw i32 %62, %64
  %h42 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub41, i32* %h42, align 4, !tbaa !27
  %65 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv43 = sext i32 %65 to i64
  %add44 = add nsw i64 %conv43, 127
  %conv45 = trunc i64 %add44 to i32
  %x46 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv45, i32* %x46, align 4, !tbaa !29
  %66 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv47 = sext i32 %66 to i64
  %add48 = add nsw i64 %conv47, 127
  %conv49 = trunc i64 %add48 to i32
  %x50 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv49, i32* %x50, align 4, !tbaa !29
  %67 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %67, i32* %ry, align 4, !tbaa !5
  %x51 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %68 = load i32, i32* %x51, align 4, !tbaa !29
  %conv52 = sext i32 %68 to i64
  %and53 = and i64 %conv52, -256
  %69 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv54 = sext i32 %69 to i64
  %add55 = add nsw i64 %conv54, 127
  %and56 = and i64 %add55, -256
  %cmp57 = icmp eq i64 %and53, %and56
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.73

if.else:                                          ; preds = %do.end
  %70 = load i32, i32* %dxl, align 4, !tbaa !5
  %71 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %70, i32 %71) #4
  %72 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv60 = sext i32 %72 to i64
  %cmp61 = icmp slt i64 %conv60, 256
  br i1 %cmp61, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df63 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %73 = load i32, i32* %df63, align 4, !tbaa !31
  %conv64 = sext i32 %73 to i64
  %cmp65 = icmp slt i64 %conv64, 8388607
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %74 = load i32, i32* %ysl, align 4, !tbaa !5
  %df67 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %75 = load i32, i32* %df67, align 4, !tbaa !31
  %mul = mul nsw i32 %74, %75
  %h68 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %76 = load i32, i32* %h68, align 4, !tbaa !27
  %div = sdiv i32 %mul, %76
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %77 = load i32, i32* %ysl, align 4, !tbaa !5
  %df69 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %78 = load i32, i32* %df69, align 4, !tbaa !31
  %h70 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %79 = load i32, i32* %h70, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %77, i32 %78, i32 %79) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %80 = load i32, i32* %fxl, align 4, !tbaa !5
  %x71 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %81 = load i32, i32* %x71, align 4, !tbaa !29
  %add72 = add nsw i32 %81, %80
  store i32 %add72, i32* %x71, align 4, !tbaa !29
  br label %if.end.73

if.end.73:                                        ; preds = %cond.end, %if.then.59
  %x74 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %82 = load i32, i32* %x74, align 4, !tbaa !29
  %conv75 = sext i32 %82 to i64
  %and76 = and i64 %conv75, -256
  %83 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv77 = sext i32 %83 to i64
  %add78 = add nsw i64 %conv77, 127
  %and79 = and i64 %add78, -256
  %cmp80 = icmp eq i64 %and76, %and79
  br i1 %cmp80, label %if.then.82, label %if.else.131

if.then.82:                                       ; preds = %if.end.73
  %di83 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %84 = load i32, i32* %di83, align 4, !tbaa !30
  %cmp84 = icmp eq i32 %84, 0
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.128

land.lhs.true.86:                                 ; preds = %if.then.82
  %df87 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %85 = load i32, i32* %df87, align 4, !tbaa !31
  %cmp88 = icmp eq i32 %85, 0
  br i1 %cmp88, label %if.then.90, label %if.end.128

if.then.90:                                       ; preds = %land.lhs.true.86
  %x91 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %86 = load i32, i32* %x91, align 4, !tbaa !29
  %shr92 = ashr i32 %86, 8
  store i32 %shr92, i32* %rxl, align 4, !tbaa !5
  %x93 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %87 = load i32, i32* %x93, align 4, !tbaa !29
  %shr94 = ashr i32 %87, 8
  store i32 %shr94, i32* %rxr, align 4, !tbaa !5
  %88 = load i32, i32* %rxl, align 4, !tbaa !5
  %89 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp95 = icmp eq i32 %88, %89
  br i1 %cmp95, label %if.then.97, label %if.end.120

if.then.97:                                       ; preds = %if.then.90
  %90 = load i32, i32* %peak0, align 4, !tbaa !5
  %tobool = icmp ne i32 %90, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.100

lor.lhs.false:                                    ; preds = %if.then.97
  %91 = load i32, i32* %iy, align 4, !tbaa !5
  %92 = load i32, i32* %peak_y0, align 4, !tbaa !5
  %cmp98 = icmp sge i32 %91, %92
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.119

land.lhs.true.100:                                ; preds = %lor.lhs.false, %if.then.97
  %93 = load i32, i32* %peak1, align 4, !tbaa !5
  %tobool101 = icmp ne i32 %93, 0
  br i1 %tobool101, label %lor.lhs.false.102, label %if.then.105

lor.lhs.false.102:                                ; preds = %land.lhs.true.100
  %94 = load i32, i32* %iy, align 4, !tbaa !5
  %95 = load i32, i32* %peak_y1, align 4, !tbaa !5
  %cmp103 = icmp sle i32 %94, %95
  br i1 %cmp103, label %if.then.105, label %if.end.119

if.then.105:                                      ; preds = %lor.lhs.false.102, %land.lhs.true.100
  %96 = bitcast i32* %x106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %96) #1
  %97 = load i32, i32* %rxl, align 4, !tbaa !5
  %shl = shl i32 %97, 8
  %conv107 = sext i32 %shl to i64
  %add108 = add nsw i64 %conv107, 128
  %conv109 = trunc i64 %add108 to i32
  store i32 %conv109, i32* %x106, align 4, !tbaa !5
  %98 = load i32, i32* %x106, align 4, !tbaa !5
  %x110 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %99 = load i32, i32* %x110, align 4, !tbaa !29
  %sub111 = sub nsw i32 %98, %99
  %x112 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %100 = load i32, i32* %x112, align 4, !tbaa !29
  %101 = load i32, i32* %x106, align 4, !tbaa !5
  %sub113 = sub nsw i32 %100, %101
  %cmp114 = icmp slt i32 %sub111, %sub113
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %if.then.105
  %102 = load i32, i32* %rxr, align 4, !tbaa !5
  %inc = add nsw i32 %102, 1
  store i32 %inc, i32* %rxr, align 4, !tbaa !5
  br label %if.end.118

if.else.117:                                      ; preds = %if.then.105
  %103 = load i32, i32* %rxl, align 4, !tbaa !5
  %dec = add nsw i32 %103, -1
  store i32 %dec, i32* %rxl, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.117, %if.then.116
  %104 = bitcast i32* %x106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %lor.lhs.false.102, %lor.lhs.false
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.then.90
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.120
  br label %do.cond.122

do.cond.122:                                      ; preds = %do.body.121
  br label %do.end.123

do.end.123:                                       ; preds = %do.cond.122
  %105 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %105, i32 0, i32 0
  %106 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %fill_rectangle124 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %106, i32 0, i32 5
  %107 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle124, align 8, !tbaa !42
  %108 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %109 = load i32, i32* %rxl, align 4, !tbaa !5
  %110 = load i32, i32* %ry, align 4, !tbaa !5
  %111 = load i32, i32* %rxr, align 4, !tbaa !5
  %112 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub125 = sub nsw i32 %111, %112
  %113 = load i32, i32* %iy1, align 4, !tbaa !5
  %114 = load i32, i32* %ry, align 4, !tbaa !5
  %sub126 = sub nsw i32 %113, %114
  %115 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %116 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call127 = call i32 %107(%struct.gx_device_color_s* %108, i32 %109, i32 %110, i32 %sub125, i32 %sub126, %struct.gx_device_s* %115, i32 %116, %struct.gx_rop_source_s* null) #4
  store i32 %call127, i32* %code, align 4, !tbaa !5
  br label %xit

if.end.128:                                       ; preds = %land.lhs.true.86, %if.then.82
  %di129 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di129, align 4, !tbaa !30
  %df130 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df130, align 4, !tbaa !31
  br label %if.end.203

if.else.131:                                      ; preds = %if.end.73
  %117 = load i32, i32* %dxr, align 4, !tbaa !5
  %118 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp132 = icmp eq i32 %117, %118
  br i1 %cmp132, label %land.lhs.true.134, label %if.else.180

land.lhs.true.134:                                ; preds = %if.else.131
  %119 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp135 = icmp ne i32 %119, 0
  br i1 %cmp135, label %if.then.137, label %if.else.180

if.then.137:                                      ; preds = %land.lhs.true.134
  %di138 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %120 = load i32, i32* %di138, align 4, !tbaa !30
  %cmp139 = icmp eq i32 %120, 0
  br i1 %cmp139, label %if.then.141, label %if.else.145

if.then.141:                                      ; preds = %if.then.137
  %di142 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di142, align 4, !tbaa !30
  %df143 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %121 = load i32, i32* %df143, align 4, !tbaa !31
  %df144 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %121, i32* %df144, align 4, !tbaa !31
  br label %if.end.146

if.else.145:                                      ; preds = %if.then.137
  %122 = load i32, i32* %dxr, align 4, !tbaa !5
  %123 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %122, i32 %123) #4
  br label %if.end.146

if.end.146:                                       ; preds = %if.else.145, %if.then.141
  %124 = load i32, i32* %ysr, align 4, !tbaa !5
  %125 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp147 = icmp eq i32 %124, %125
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.157

land.lhs.true.149:                                ; preds = %if.end.146
  %h150 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %126 = load i32, i32* %h150, align 4, !tbaa !27
  %h151 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %127 = load i32, i32* %h151, align 4, !tbaa !27
  %cmp152 = icmp eq i32 %126, %127
  br i1 %cmp152, label %if.then.154, label %if.else.157

if.then.154:                                      ; preds = %land.lhs.true.149
  %128 = load i32, i32* %fxl, align 4, !tbaa !5
  %x155 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %129 = load i32, i32* %x155, align 4, !tbaa !29
  %add156 = add nsw i32 %129, %128
  store i32 %add156, i32* %x155, align 4, !tbaa !29
  br label %if.end.179

if.else.157:                                      ; preds = %land.lhs.true.149, %if.end.146
  %130 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv158 = sext i32 %130 to i64
  %cmp159 = icmp slt i64 %conv158, 256
  br i1 %cmp159, label %land.lhs.true.161, label %cond.false.171

land.lhs.true.161:                                ; preds = %if.else.157
  %df162 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %131 = load i32, i32* %df162, align 4, !tbaa !31
  %conv163 = sext i32 %131 to i64
  %cmp164 = icmp slt i64 %conv163, 8388607
  br i1 %cmp164, label %cond.true.166, label %cond.false.171

cond.true.166:                                    ; preds = %land.lhs.true.161
  %132 = load i32, i32* %ysr, align 4, !tbaa !5
  %df167 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %133 = load i32, i32* %df167, align 4, !tbaa !31
  %mul168 = mul nsw i32 %132, %133
  %h169 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %134 = load i32, i32* %h169, align 4, !tbaa !27
  %div170 = sdiv i32 %mul168, %134
  br label %cond.end.175

cond.false.171:                                   ; preds = %land.lhs.true.161, %if.else.157
  %135 = load i32, i32* %ysr, align 4, !tbaa !5
  %df172 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %136 = load i32, i32* %df172, align 4, !tbaa !31
  %h173 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %137 = load i32, i32* %h173, align 4, !tbaa !27
  %call174 = call i32 @fixed_mult_quo(i32 %135, i32 %136, i32 %137) #4
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.171, %cond.true.166
  %cond176 = phi i32 [ %div170, %cond.true.166 ], [ %call174, %cond.false.171 ]
  %x177 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %138 = load i32, i32* %x177, align 4, !tbaa !29
  %add178 = add nsw i32 %138, %cond176
  store i32 %add178, i32* %x177, align 4, !tbaa !29
  br label %if.end.179

if.end.179:                                       ; preds = %cond.end.175, %if.then.154
  br label %if.end.202

if.else.180:                                      ; preds = %land.lhs.true.134, %if.else.131
  %139 = load i32, i32* %dxr, align 4, !tbaa !5
  %140 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %139, i32 %140) #4
  %141 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv181 = sext i32 %141 to i64
  %cmp182 = icmp slt i64 %conv181, 256
  br i1 %cmp182, label %land.lhs.true.184, label %cond.false.194

land.lhs.true.184:                                ; preds = %if.else.180
  %df185 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %142 = load i32, i32* %df185, align 4, !tbaa !31
  %conv186 = sext i32 %142 to i64
  %cmp187 = icmp slt i64 %conv186, 8388607
  br i1 %cmp187, label %cond.true.189, label %cond.false.194

cond.true.189:                                    ; preds = %land.lhs.true.184
  %143 = load i32, i32* %ysr, align 4, !tbaa !5
  %df190 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %144 = load i32, i32* %df190, align 4, !tbaa !31
  %mul191 = mul nsw i32 %143, %144
  %h192 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %145 = load i32, i32* %h192, align 4, !tbaa !27
  %div193 = sdiv i32 %mul191, %145
  br label %cond.end.198

cond.false.194:                                   ; preds = %land.lhs.true.184, %if.else.180
  %146 = load i32, i32* %ysr, align 4, !tbaa !5
  %df195 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %147 = load i32, i32* %df195, align 4, !tbaa !31
  %h196 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %148 = load i32, i32* %h196, align 4, !tbaa !27
  %call197 = call i32 @fixed_mult_quo(i32 %146, i32 %147, i32 %148) #4
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.194, %cond.true.189
  %cond199 = phi i32 [ %div193, %cond.true.189 ], [ %call197, %cond.false.194 ]
  %x200 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %149 = load i32, i32* %x200, align 4, !tbaa !29
  %add201 = add nsw i32 %149, %cond199
  store i32 %add201, i32* %x200, align 4, !tbaa !29
  br label %if.end.202

if.end.202:                                       ; preds = %cond.end.198, %if.end.179
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.end.128
  %150 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %150) #4
  %151 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %151) #4
  %x204 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %152 = load i32, i32* %x204, align 4, !tbaa !29
  %conv205 = sext i32 %152 to i64
  %add206 = add nsw i64 %conv205, 1
  %conv207 = trunc i64 %add206 to i32
  store i32 %conv207, i32* %x204, align 4, !tbaa !29
  %x208 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %153 = load i32, i32* %x208, align 4, !tbaa !29
  %conv209 = sext i32 %153 to i64
  %add210 = add nsw i64 %conv209, 1
  %conv211 = trunc i64 %add210 to i32
  store i32 %conv211, i32* %x208, align 4, !tbaa !29
  %x212 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %154 = load i32, i32* %x212, align 4, !tbaa !29
  %and213 = and i32 %154, 255
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %cond.false.224, label %land.lhs.true.215

land.lhs.true.215:                                ; preds = %if.end.203
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %155 = load i32, i32* %xf, align 4, !tbaa !32
  %h216 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %156 = load i32, i32* %h216, align 4, !tbaa !27
  %sub217 = sub nsw i32 0, %156
  %cmp218 = icmp eq i32 %155, %sub217
  br i1 %cmp218, label %cond.true.220, label %cond.false.224

cond.true.220:                                    ; preds = %land.lhs.true.215
  %x221 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %157 = load i32, i32* %x221, align 4, !tbaa !29
  %conv222 = sext i32 %157 to i64
  %sub223 = sub nsw i64 %conv222, 256
  br label %cond.end.227

cond.false.224:                                   ; preds = %land.lhs.true.215, %if.end.203
  %x225 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %158 = load i32, i32* %x225, align 4, !tbaa !29
  %conv226 = sext i32 %158 to i64
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.false.224, %cond.true.220
  %cond228 = phi i64 [ %sub223, %cond.true.220 ], [ %conv226, %cond.false.224 ]
  %shr229 = ashr i64 %cond228, 8
  %conv230 = trunc i64 %shr229 to i32
  store i32 %conv230, i32* %rxl, align 4, !tbaa !5
  %x231 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %159 = load i32, i32* %x231, align 4, !tbaa !29
  %and232 = and i32 %159, 255
  %tobool233 = icmp ne i32 %and232, 0
  br i1 %tobool233, label %cond.false.244, label %land.lhs.true.234

land.lhs.true.234:                                ; preds = %cond.end.227
  %xf235 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %160 = load i32, i32* %xf235, align 4, !tbaa !32
  %h236 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %161 = load i32, i32* %h236, align 4, !tbaa !27
  %sub237 = sub nsw i32 0, %161
  %cmp238 = icmp eq i32 %160, %sub237
  br i1 %cmp238, label %cond.true.240, label %cond.false.244

cond.true.240:                                    ; preds = %land.lhs.true.234
  %x241 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %162 = load i32, i32* %x241, align 4, !tbaa !29
  %conv242 = sext i32 %162 to i64
  %sub243 = sub nsw i64 %conv242, 256
  br label %cond.end.247

cond.false.244:                                   ; preds = %land.lhs.true.234, %cond.end.227
  %x245 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %163 = load i32, i32* %x245, align 4, !tbaa !29
  %conv246 = sext i32 %163 to i64
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.false.244, %cond.true.240
  %cond248 = phi i64 [ %sub243, %cond.true.240 ], [ %conv246, %cond.false.244 ]
  %shr249 = ashr i64 %cond248, 8
  %conv250 = trunc i64 %shr249 to i32
  store i32 %conv250, i32* %rxr, align 4, !tbaa !5
  %164 = load i32, i32* %rxl, align 4, !tbaa !5
  %165 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp251 = icmp eq i32 %164, %165
  br i1 %cmp251, label %if.then.253, label %if.end.281

if.then.253:                                      ; preds = %cond.end.247
  %166 = load i32, i32* %peak0, align 4, !tbaa !5
  %tobool254 = icmp ne i32 %166, 0
  br i1 %tobool254, label %lor.lhs.false.255, label %land.lhs.true.258

lor.lhs.false.255:                                ; preds = %if.then.253
  %167 = load i32, i32* %iy, align 4, !tbaa !5
  %168 = load i32, i32* %peak_y0, align 4, !tbaa !5
  %cmp256 = icmp sge i32 %167, %168
  br i1 %cmp256, label %land.lhs.true.258, label %if.end.280

land.lhs.true.258:                                ; preds = %lor.lhs.false.255, %if.then.253
  %169 = load i32, i32* %peak1, align 4, !tbaa !5
  %tobool259 = icmp ne i32 %169, 0
  br i1 %tobool259, label %lor.lhs.false.260, label %if.then.263

lor.lhs.false.260:                                ; preds = %land.lhs.true.258
  %170 = load i32, i32* %iy, align 4, !tbaa !5
  %171 = load i32, i32* %peak_y1, align 4, !tbaa !5
  %cmp261 = icmp sle i32 %170, %171
  br i1 %cmp261, label %if.then.263, label %if.end.280

if.then.263:                                      ; preds = %lor.lhs.false.260, %land.lhs.true.258
  %172 = bitcast i32* %x264 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %172) #1
  %173 = load i32, i32* %rxl, align 4, !tbaa !5
  %shl265 = shl i32 %173, 8
  %conv266 = sext i32 %shl265 to i64
  %add267 = add nsw i64 %conv266, 128
  %conv268 = trunc i64 %add267 to i32
  store i32 %conv268, i32* %x264, align 4, !tbaa !5
  %174 = load i32, i32* %x264, align 4, !tbaa !5
  %x269 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %175 = load i32, i32* %x269, align 4, !tbaa !29
  %sub270 = sub nsw i32 %174, %175
  %x271 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %176 = load i32, i32* %x271, align 4, !tbaa !29
  %177 = load i32, i32* %x264, align 4, !tbaa !5
  %sub272 = sub nsw i32 %176, %177
  %cmp273 = icmp slt i32 %sub270, %sub272
  br i1 %cmp273, label %if.then.275, label %if.else.277

if.then.275:                                      ; preds = %if.then.263
  %178 = load i32, i32* %rxr, align 4, !tbaa !5
  %inc276 = add nsw i32 %178, 1
  store i32 %inc276, i32* %rxr, align 4, !tbaa !5
  br label %if.end.279

if.else.277:                                      ; preds = %if.then.263
  %179 = load i32, i32* %rxl, align 4, !tbaa !5
  %dec278 = add nsw i32 %179, -1
  store i32 %dec278, i32* %rxl, align 4, !tbaa !5
  br label %if.end.279

if.end.279:                                       ; preds = %if.else.277, %if.then.275
  %180 = bitcast i32* %x264 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %lor.lhs.false.260, %lor.lhs.false.255
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %cond.end.247
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end.281
  %181 = load i32, i32* %iy, align 4, !tbaa !5
  %inc282 = add nsw i32 %181, 1
  store i32 %inc282, i32* %iy, align 4, !tbaa !5
  %182 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp283 = icmp ne i32 %inc282, %182
  br i1 %cmp283, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %183 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %183) #1
  %184 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %184) #1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %185 = load i32, i32* %ldi, align 4, !tbaa !33
  %x285 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %186 = load i32, i32* %x285, align 4, !tbaa !29
  %add286 = add nsw i32 %186, %185
  store i32 %add286, i32* %x285, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %187 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf287 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %188 = load i32, i32* %xf287, align 4, !tbaa !32
  %add288 = add nsw i32 %188, %187
  store i32 %add288, i32* %xf287, align 4, !tbaa !32
  %cmp289 = icmp sge i32 %add288, 0
  br i1 %cmp289, label %if.then.291, label %if.end.297

if.then.291:                                      ; preds = %while.body
  %h292 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %189 = load i32, i32* %h292, align 4, !tbaa !27
  %xf293 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %190 = load i32, i32* %xf293, align 4, !tbaa !32
  %sub294 = sub nsw i32 %190, %189
  store i32 %sub294, i32* %xf293, align 4, !tbaa !32
  %x295 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %191 = load i32, i32* %x295, align 4, !tbaa !29
  %inc296 = add nsw i32 %191, 1
  store i32 %inc296, i32* %x295, align 4, !tbaa !29
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.291, %while.body
  %x298 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %192 = load i32, i32* %x298, align 4, !tbaa !29
  %and299 = and i32 %192, 255
  %tobool300 = icmp ne i32 %and299, 0
  br i1 %tobool300, label %cond.false.311, label %land.lhs.true.301

land.lhs.true.301:                                ; preds = %if.end.297
  %xf302 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %193 = load i32, i32* %xf302, align 4, !tbaa !32
  %h303 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %194 = load i32, i32* %h303, align 4, !tbaa !27
  %sub304 = sub nsw i32 0, %194
  %cmp305 = icmp eq i32 %193, %sub304
  br i1 %cmp305, label %cond.true.307, label %cond.false.311

cond.true.307:                                    ; preds = %land.lhs.true.301
  %x308 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %195 = load i32, i32* %x308, align 4, !tbaa !29
  %conv309 = sext i32 %195 to i64
  %sub310 = sub nsw i64 %conv309, 256
  br label %cond.end.314

cond.false.311:                                   ; preds = %land.lhs.true.301, %if.end.297
  %x312 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %196 = load i32, i32* %x312, align 4, !tbaa !29
  %conv313 = sext i32 %196 to i64
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.311, %cond.true.307
  %cond315 = phi i64 [ %sub310, %cond.true.307 ], [ %conv313, %cond.false.311 ]
  %shr316 = ashr i64 %cond315, 8
  %conv317 = trunc i64 %shr316 to i32
  store i32 %conv317, i32* %ixl, align 4, !tbaa !5
  %ldi318 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %197 = load i32, i32* %ldi318, align 4, !tbaa !33
  %x319 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %198 = load i32, i32* %x319, align 4, !tbaa !29
  %add320 = add nsw i32 %198, %197
  store i32 %add320, i32* %x319, align 4, !tbaa !29
  %ldf321 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %199 = load i32, i32* %ldf321, align 4, !tbaa !34
  %xf322 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %200 = load i32, i32* %xf322, align 4, !tbaa !32
  %add323 = add nsw i32 %200, %199
  store i32 %add323, i32* %xf322, align 4, !tbaa !32
  %cmp324 = icmp sge i32 %add323, 0
  br i1 %cmp324, label %if.then.326, label %if.end.332

if.then.326:                                      ; preds = %cond.end.314
  %h327 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %201 = load i32, i32* %h327, align 4, !tbaa !27
  %xf328 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %202 = load i32, i32* %xf328, align 4, !tbaa !32
  %sub329 = sub nsw i32 %202, %201
  store i32 %sub329, i32* %xf328, align 4, !tbaa !32
  %x330 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %203 = load i32, i32* %x330, align 4, !tbaa !29
  %inc331 = add nsw i32 %203, 1
  store i32 %inc331, i32* %x330, align 4, !tbaa !29
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.326, %cond.end.314
  %x333 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %204 = load i32, i32* %x333, align 4, !tbaa !29
  %and334 = and i32 %204, 255
  %tobool335 = icmp ne i32 %and334, 0
  br i1 %tobool335, label %cond.false.346, label %land.lhs.true.336

land.lhs.true.336:                                ; preds = %if.end.332
  %xf337 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %205 = load i32, i32* %xf337, align 4, !tbaa !32
  %h338 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %206 = load i32, i32* %h338, align 4, !tbaa !27
  %sub339 = sub nsw i32 0, %206
  %cmp340 = icmp eq i32 %205, %sub339
  br i1 %cmp340, label %cond.true.342, label %cond.false.346

cond.true.342:                                    ; preds = %land.lhs.true.336
  %x343 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %207 = load i32, i32* %x343, align 4, !tbaa !29
  %conv344 = sext i32 %207 to i64
  %sub345 = sub nsw i64 %conv344, 256
  br label %cond.end.349

cond.false.346:                                   ; preds = %land.lhs.true.336, %if.end.332
  %x347 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %208 = load i32, i32* %x347, align 4, !tbaa !29
  %conv348 = sext i32 %208 to i64
  br label %cond.end.349

cond.end.349:                                     ; preds = %cond.false.346, %cond.true.342
  %cond350 = phi i64 [ %sub345, %cond.true.342 ], [ %conv348, %cond.false.346 ]
  %shr351 = ashr i64 %cond350, 8
  %conv352 = trunc i64 %shr351 to i32
  store i32 %conv352, i32* %ixr, align 4, !tbaa !5
  %209 = load i32, i32* %ixl, align 4, !tbaa !5
  %210 = load i32, i32* %ixr, align 4, !tbaa !5
  %cmp353 = icmp eq i32 %209, %210
  br i1 %cmp353, label %if.then.355, label %if.end.383

if.then.355:                                      ; preds = %cond.end.349
  %211 = load i32, i32* %peak0, align 4, !tbaa !5
  %tobool356 = icmp ne i32 %211, 0
  br i1 %tobool356, label %lor.lhs.false.357, label %land.lhs.true.360

lor.lhs.false.357:                                ; preds = %if.then.355
  %212 = load i32, i32* %iy, align 4, !tbaa !5
  %213 = load i32, i32* %peak_y0, align 4, !tbaa !5
  %cmp358 = icmp sge i32 %212, %213
  br i1 %cmp358, label %land.lhs.true.360, label %if.end.382

land.lhs.true.360:                                ; preds = %lor.lhs.false.357, %if.then.355
  %214 = load i32, i32* %peak1, align 4, !tbaa !5
  %tobool361 = icmp ne i32 %214, 0
  br i1 %tobool361, label %lor.lhs.false.362, label %if.then.365

lor.lhs.false.362:                                ; preds = %land.lhs.true.360
  %215 = load i32, i32* %iy, align 4, !tbaa !5
  %216 = load i32, i32* %peak_y1, align 4, !tbaa !5
  %cmp363 = icmp sle i32 %215, %216
  br i1 %cmp363, label %if.then.365, label %if.end.382

if.then.365:                                      ; preds = %lor.lhs.false.362, %land.lhs.true.360
  %217 = bitcast i32* %x366 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %217) #1
  %218 = load i32, i32* %ixl, align 4, !tbaa !5
  %shl367 = shl i32 %218, 8
  %conv368 = sext i32 %shl367 to i64
  %add369 = add nsw i64 %conv368, 128
  %conv370 = trunc i64 %add369 to i32
  store i32 %conv370, i32* %x366, align 4, !tbaa !5
  %219 = load i32, i32* %x366, align 4, !tbaa !5
  %x371 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %220 = load i32, i32* %x371, align 4, !tbaa !29
  %sub372 = sub nsw i32 %219, %220
  %x373 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %221 = load i32, i32* %x373, align 4, !tbaa !29
  %222 = load i32, i32* %x366, align 4, !tbaa !5
  %sub374 = sub nsw i32 %221, %222
  %cmp375 = icmp slt i32 %sub372, %sub374
  br i1 %cmp375, label %if.then.377, label %if.else.379

if.then.377:                                      ; preds = %if.then.365
  %223 = load i32, i32* %ixr, align 4, !tbaa !5
  %inc378 = add nsw i32 %223, 1
  store i32 %inc378, i32* %ixr, align 4, !tbaa !5
  br label %if.end.381

if.else.379:                                      ; preds = %if.then.365
  %224 = load i32, i32* %ixl, align 4, !tbaa !5
  %dec380 = add nsw i32 %224, -1
  store i32 %dec380, i32* %ixl, align 4, !tbaa !5
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.379, %if.then.377
  %225 = bitcast i32* %x366 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %225) #1
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %lor.lhs.false.362, %lor.lhs.false.357
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %cond.end.349
  %226 = load i32, i32* %ixl, align 4, !tbaa !5
  %227 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp384 = icmp ne i32 %226, %227
  br i1 %cmp384, label %if.then.389, label %lor.lhs.false.386

lor.lhs.false.386:                                ; preds = %if.end.383
  %228 = load i32, i32* %ixr, align 4, !tbaa !5
  %229 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp387 = icmp ne i32 %228, %229
  br i1 %cmp387, label %if.then.389, label %if.end.452

if.then.389:                                      ; preds = %lor.lhs.false.386, %if.end.383
  %230 = load i32, i32* %rxr, align 4, !tbaa !5
  %231 = load i32, i32* %ixl, align 4, !tbaa !5
  %cmp390 = icmp slt i32 %230, %231
  br i1 %cmp390, label %if.then.392, label %if.end.414

if.then.392:                                      ; preds = %if.then.389
  %232 = load i32, i32* %iy, align 4, !tbaa !5
  %233 = load i32, i32* %ry, align 4, !tbaa !5
  %sub393 = sub nsw i32 %232, %233
  %cmp394 = icmp sgt i32 %sub393, 1
  br i1 %cmp394, label %if.then.396, label %if.end.411

if.then.396:                                      ; preds = %if.then.392
  br label %do.body.397

do.body.397:                                      ; preds = %if.then.396
  br label %do.cond.398

do.cond.398:                                      ; preds = %do.body.397
  br label %do.end.399

do.end.399:                                       ; preds = %do.cond.398
  %234 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type400 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %234, i32 0, i32 0
  %235 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type400, align 8, !tbaa !35
  %fill_rectangle401 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %235, i32 0, i32 5
  %236 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle401, align 8, !tbaa !42
  %237 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %238 = load i32, i32* %rxl, align 4, !tbaa !5
  %239 = load i32, i32* %ry, align 4, !tbaa !5
  %240 = load i32, i32* %rxr, align 4, !tbaa !5
  %241 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub402 = sub nsw i32 %240, %241
  %242 = load i32, i32* %iy, align 4, !tbaa !5
  %243 = load i32, i32* %ry, align 4, !tbaa !5
  %sub403 = sub nsw i32 %242, %243
  %sub404 = sub nsw i32 %sub403, 1
  %244 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %245 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call405 = call i32 %236(%struct.gx_device_color_s* %237, i32 %238, i32 %239, i32 %sub402, i32 %sub404, %struct.gx_device_s* %244, i32 %245, %struct.gx_rop_source_s* null) #4
  store i32 %call405, i32* %code, align 4, !tbaa !5
  %246 = load i32, i32* %code, align 4, !tbaa !5
  %cmp406 = icmp slt i32 %246, 0
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %do.end.399
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.409:                                       ; preds = %do.end.399
  %247 = load i32, i32* %iy, align 4, !tbaa !5
  %sub410 = sub nsw i32 %247, 1
  store i32 %sub410, i32* %ry, align 4, !tbaa !5
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.409, %if.then.392
  %248 = load i32, i32* %ixl, align 4, !tbaa !5
  %249 = load i32, i32* %ixl, align 4, !tbaa !5
  %add412 = add nsw i32 %248, %249
  %div413 = sdiv i32 %add412, 2
  store i32 %div413, i32* %ixl, align 4, !tbaa !5
  store i32 %div413, i32* %rxr, align 4, !tbaa !5
  br label %if.end.414

if.end.414:                                       ; preds = %if.end.411, %if.then.389
  %250 = load i32, i32* %ixr, align 4, !tbaa !5
  %251 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp415 = icmp slt i32 %250, %251
  br i1 %cmp415, label %if.then.417, label %if.end.439

if.then.417:                                      ; preds = %if.end.414
  %252 = load i32, i32* %iy, align 4, !tbaa !5
  %253 = load i32, i32* %ry, align 4, !tbaa !5
  %sub418 = sub nsw i32 %252, %253
  %cmp419 = icmp sgt i32 %sub418, 1
  br i1 %cmp419, label %if.then.421, label %if.end.436

if.then.421:                                      ; preds = %if.then.417
  br label %do.body.422

do.body.422:                                      ; preds = %if.then.421
  br label %do.cond.423

do.cond.423:                                      ; preds = %do.body.422
  br label %do.end.424

do.end.424:                                       ; preds = %do.cond.423
  %254 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type425 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %254, i32 0, i32 0
  %255 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type425, align 8, !tbaa !35
  %fill_rectangle426 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %255, i32 0, i32 5
  %256 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle426, align 8, !tbaa !42
  %257 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %258 = load i32, i32* %rxl, align 4, !tbaa !5
  %259 = load i32, i32* %ry, align 4, !tbaa !5
  %260 = load i32, i32* %rxr, align 4, !tbaa !5
  %261 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub427 = sub nsw i32 %260, %261
  %262 = load i32, i32* %iy, align 4, !tbaa !5
  %263 = load i32, i32* %ry, align 4, !tbaa !5
  %sub428 = sub nsw i32 %262, %263
  %sub429 = sub nsw i32 %sub428, 1
  %264 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %265 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call430 = call i32 %256(%struct.gx_device_color_s* %257, i32 %258, i32 %259, i32 %sub427, i32 %sub429, %struct.gx_device_s* %264, i32 %265, %struct.gx_rop_source_s* null) #4
  store i32 %call430, i32* %code, align 4, !tbaa !5
  %266 = load i32, i32* %code, align 4, !tbaa !5
  %cmp431 = icmp slt i32 %266, 0
  br i1 %cmp431, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %do.end.424
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.434:                                       ; preds = %do.end.424
  %267 = load i32, i32* %iy, align 4, !tbaa !5
  %sub435 = sub nsw i32 %267, 1
  store i32 %sub435, i32* %ry, align 4, !tbaa !5
  br label %if.end.436

if.end.436:                                       ; preds = %if.end.434, %if.then.417
  %268 = load i32, i32* %rxl, align 4, !tbaa !5
  %269 = load i32, i32* %rxl, align 4, !tbaa !5
  %add437 = add nsw i32 %268, %269
  %div438 = sdiv i32 %add437, 2
  store i32 %div438, i32* %rxl, align 4, !tbaa !5
  store i32 %div438, i32* %ixr, align 4, !tbaa !5
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.436, %if.end.414
  br label %do.body.440

do.body.440:                                      ; preds = %if.end.439
  br label %do.cond.441

do.cond.441:                                      ; preds = %do.body.440
  br label %do.end.442

do.end.442:                                       ; preds = %do.cond.441
  %270 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type443 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %270, i32 0, i32 0
  %271 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type443, align 8, !tbaa !35
  %fill_rectangle444 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %271, i32 0, i32 5
  %272 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle444, align 8, !tbaa !42
  %273 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %274 = load i32, i32* %rxl, align 4, !tbaa !5
  %275 = load i32, i32* %ry, align 4, !tbaa !5
  %276 = load i32, i32* %rxr, align 4, !tbaa !5
  %277 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub445 = sub nsw i32 %276, %277
  %278 = load i32, i32* %iy, align 4, !tbaa !5
  %279 = load i32, i32* %ry, align 4, !tbaa !5
  %sub446 = sub nsw i32 %278, %279
  %280 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %281 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call447 = call i32 %272(%struct.gx_device_color_s* %273, i32 %274, i32 %275, i32 %sub445, i32 %sub446, %struct.gx_device_s* %280, i32 %281, %struct.gx_rop_source_s* null) #4
  store i32 %call447, i32* %code, align 4, !tbaa !5
  %282 = load i32, i32* %code, align 4, !tbaa !5
  %cmp448 = icmp slt i32 %282, 0
  br i1 %cmp448, label %if.then.450, label %if.end.451

if.then.450:                                      ; preds = %do.end.442
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup

if.end.451:                                       ; preds = %do.end.442
  %283 = load i32, i32* %ixl, align 4, !tbaa !5
  store i32 %283, i32* %rxl, align 4, !tbaa !5
  %284 = load i32, i32* %ixr, align 4, !tbaa !5
  store i32 %284, i32* %rxr, align 4, !tbaa !5
  %285 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %285, i32* %ry, align 4, !tbaa !5
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %lor.lhs.false.386
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.450, %if.then.433, %if.then.408, %if.end.452
  %286 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %287) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.470 [
    i32 0, label %cleanup.cont
    i32 6, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.454

do.body.454:                                      ; preds = %while.end
  br label %do.cond.455

do.cond.455:                                      ; preds = %do.body.454
  br label %do.end.456

do.end.456:                                       ; preds = %do.cond.455
  %288 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type457 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %288, i32 0, i32 0
  %289 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type457, align 8, !tbaa !35
  %fill_rectangle458 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %289, i32 0, i32 5
  %290 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle458, align 8, !tbaa !42
  %291 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %292 = load i32, i32* %rxl, align 4, !tbaa !5
  %293 = load i32, i32* %ry, align 4, !tbaa !5
  %294 = load i32, i32* %rxr, align 4, !tbaa !5
  %295 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub459 = sub nsw i32 %294, %295
  %296 = load i32, i32* %iy, align 4, !tbaa !5
  %297 = load i32, i32* %ry, align 4, !tbaa !5
  %sub460 = sub nsw i32 %296, %297
  %298 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %299 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call461 = call i32 %290(%struct.gx_device_color_s* %291, i32 %292, i32 %293, i32 %sub459, i32 %sub460, %struct.gx_device_s* %298, i32 %299, %struct.gx_rop_source_s* null) #4
  store i32 %call461, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %do.end.456, %cleanup, %do.end.123
  %300 = load i32, i32* %code, align 4, !tbaa !5
  %cmp462 = icmp slt i32 %300, 0
  br i1 %cmp462, label %land.lhs.true.464, label %if.end.466

land.lhs.true.464:                                ; preds = %xit
  br i1 false, label %if.then.465, label %if.end.466

if.then.465:                                      ; preds = %land.lhs.true.464
  %301 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %301, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.470

if.end.466:                                       ; preds = %land.lhs.true.464, %xit
  br label %do.body.467

do.body.467:                                      ; preds = %if.end.466
  br label %do.cond.468

do.cond.468:                                      ; preds = %do.body.467
  br label %do.end.469

do.end.469:                                       ; preds = %do.cond.468
  %302 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %302, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.470

cleanup.470:                                      ; preds = %do.end.469, %if.then.465, %cleanup
  %303 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %303) #1
  %304 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %304) #1
  %305 = bitcast i32* %peak_y1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %305) #1
  %306 = bitcast i32* %peak_y0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %306) #1
  %307 = bitcast i32* %peak1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %307) #1
  %308 = bitcast i32* %peak0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %308) #1
  %309 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %309) #1
  %310 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %310) #1
  %311 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %311) #1
  %312 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %312) #1
  %313 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %313) #1
  %314 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %314) #1
  %315 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %315) #1
  %316 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %316) #1
  %317 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %317) #1
  %318 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %318) #1
  %319 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %319) #1
  %320 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %320) #1
  %321 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %321) #1
  %322 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %322) #1
  %323 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %323) #1
  %324 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %324) #1
  %325 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %325) #1
  br label %cleanup.493

cleanup.493:                                      ; preds = %cleanup.470, %if.then
  %326 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %326) #1
  %327 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %327) #1
  %328 = load i32, i32* %retval
  ret i32 %328
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %swap_axes, %struct.gx_device_color_s* %pdevc, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %swap_axes.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %fill_direct = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %swap_axes, i32* %swap_axes.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast i32* %fill_direct to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %1, i32 0, i32 0
  %2 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %cmp = icmp eq %struct.gx_device_color_type_s* %2, @gx_dc_type_data_pure
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %and = and i32 %3, 563
  %cmp1 = icmp eq i32 %and, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %fill_direct, align 4, !tbaa !5
  %5 = load i32, i32* %swap_axes.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else.5

if.then:                                          ; preds = %land.end
  %6 = load i32, i32* %fill_direct, align 4, !tbaa !5
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %8 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %9 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %10 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %11 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %12 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %13 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 @gx_fill_trapezoid_as_fd(%struct.gx_device_s* %7, %struct.gs_fixed_edge_s* %8, %struct.gs_fixed_edge_s* %9, i32 %10, i32 %11, i32 0, %struct.gx_device_color_s* %12, i32 %13) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %15 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %17 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %18 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %19 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %20 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call4 = call i32 @gx_fill_trapezoid_as_nd(%struct.gx_device_s* %14, %struct.gs_fixed_edge_s* %15, %struct.gs_fixed_edge_s* %16, i32 %17, i32 %18, i32 0, %struct.gx_device_color_s* %19, i32 %20) #4
  store i32 %call4, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.5:                                        ; preds = %land.end
  %21 = load i32, i32* %fill_direct, align 4, !tbaa !5
  %tobool6 = icmp ne i32 %21, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else.5
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %23 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %24 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %25 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %26 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %27 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %28 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call8 = call i32 @gx_fill_trapezoid_ns_fd(%struct.gx_device_s* %22, %struct.gs_fixed_edge_s* %23, %struct.gs_fixed_edge_s* %24, i32 %25, i32 %26, i32 0, %struct.gx_device_color_s* %27, i32 %28) #4
  store i32 %call8, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.9:                                        ; preds = %if.else.5
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %30 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %31 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %32 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %33 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %34 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %35 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call10 = call i32 @gx_fill_trapezoid_ns_nd(%struct.gx_device_s* %29, %struct.gs_fixed_edge_s* %30, %struct.gs_fixed_edge_s* %31, i32 %32, i32 %33, i32 0, %struct.gx_device_color_s* %34, i32 %35) #4
  store i32 %call10, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.9, %if.then.7, %if.else, %if.then.3
  %36 = bitcast i32* %fill_direct to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_fill_trapezoid_as_fd(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, i32 %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %cindex = alloca i64, align 8
  %fill_rect = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %ixl = alloca i32, align 4
  %ixr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %fa, i32* %fa.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.345

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !10
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !7
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !10
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !11
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !11
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %45 = load i64, i64* %pure, align 8, !tbaa !12
  store i64 %45, i64* %cindex, align 8, !tbaa !12
  %46 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %48 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !14
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %48, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end20 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %49, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end20, i32 0, i32 1
  %50 = load i32, i32* %y21, align 4, !tbaa !26
  %51 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %51, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  %52 = load i32, i32* %y23, align 4, !tbaa !11
  %sub24 = sub nsw i32 %50, %52
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub24, i32* %h, align 4, !tbaa !27
  %53 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end25 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %53, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end25, i32 0, i32 1
  %54 = load i32, i32* %y26, align 4, !tbaa !26
  %55 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %55, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start27, i32 0, i32 1
  %56 = load i32, i32* %y28, align 4, !tbaa !11
  %sub29 = sub nsw i32 %54, %56
  %h30 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub29, i32* %h30, align 4, !tbaa !27
  %57 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv31 = sext i32 %57 to i64
  %add32 = add nsw i64 %conv31, 127
  %conv33 = trunc i64 %add32 to i32
  %x34 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv33, i32* %x34, align 4, !tbaa !29
  %58 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv35 = sext i32 %58 to i64
  %add36 = add nsw i64 %conv35, 127
  %conv37 = trunc i64 %add36 to i32
  %x38 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv37, i32* %x38, align 4, !tbaa !29
  %59 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %59, i32* %ry, align 4, !tbaa !5
  %x39 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %60 = load i32, i32* %x39, align 4, !tbaa !29
  %conv40 = sext i32 %60 to i64
  %and41 = and i64 %conv40, -256
  %61 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv42 = sext i32 %61 to i64
  %add43 = add nsw i64 %conv42, 127
  %and44 = and i64 %add43, -256
  %cmp45 = icmp eq i64 %and41, %and44
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %do.end
  %62 = load i32, i32* %dxl, align 4, !tbaa !5
  %63 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %62, i32 %63) #4
  %64 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv48 = sext i32 %64 to i64
  %cmp49 = icmp slt i64 %conv48, 256
  br i1 %cmp49, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df51 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %65 = load i32, i32* %df51, align 4, !tbaa !31
  %conv52 = sext i32 %65 to i64
  %cmp53 = icmp slt i64 %conv52, 8388607
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %66 = load i32, i32* %ysl, align 4, !tbaa !5
  %df55 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %67 = load i32, i32* %df55, align 4, !tbaa !31
  %mul = mul nsw i32 %66, %67
  %h56 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %68 = load i32, i32* %h56, align 4, !tbaa !27
  %div = sdiv i32 %mul, %68
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %69 = load i32, i32* %ysl, align 4, !tbaa !5
  %df57 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %70 = load i32, i32* %df57, align 4, !tbaa !31
  %h58 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %71 = load i32, i32* %h58, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %69, i32 %70, i32 %71) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %72 = load i32, i32* %fxl, align 4, !tbaa !5
  %x59 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %73 = load i32, i32* %x59, align 4, !tbaa !29
  %add60 = add nsw i32 %73, %72
  store i32 %add60, i32* %x59, align 4, !tbaa !29
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end, %if.then.47
  %x62 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %74 = load i32, i32* %x62, align 4, !tbaa !29
  %conv63 = sext i32 %74 to i64
  %and64 = and i64 %conv63, -256
  %75 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv65 = sext i32 %75 to i64
  %add66 = add nsw i64 %conv65, 127
  %and67 = and i64 %add66, -256
  %cmp68 = icmp eq i64 %and64, %and67
  br i1 %cmp68, label %if.then.70, label %if.else.95

if.then.70:                                       ; preds = %if.end.61
  %di71 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %76 = load i32, i32* %di71, align 4, !tbaa !30
  %cmp72 = icmp eq i32 %76, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.92

land.lhs.true.74:                                 ; preds = %if.then.70
  %df75 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %77 = load i32, i32* %df75, align 4, !tbaa !31
  %cmp76 = icmp eq i32 %77, 0
  br i1 %cmp76, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %land.lhs.true.74
  %x79 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %78 = load i32, i32* %x79, align 4, !tbaa !29
  %shr80 = ashr i32 %78, 8
  store i32 %shr80, i32* %rxl, align 4, !tbaa !5
  %x81 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %79 = load i32, i32* %x81, align 4, !tbaa !29
  %shr82 = ashr i32 %79, 8
  store i32 %shr82, i32* %rxr, align 4, !tbaa !5
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.78
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %80 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %82 = load i32, i32* %ry, align 4, !tbaa !5
  %83 = load i32, i32* %rxl, align 4, !tbaa !5
  %84 = load i32, i32* %iy1, align 4, !tbaa !5
  %85 = load i32, i32* %ry, align 4, !tbaa !5
  %sub89 = sub nsw i32 %84, %85
  %86 = load i32, i32* %rxr, align 4, !tbaa !5
  %87 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub90 = sub nsw i32 %86, %87
  %88 = load i64, i64* %cindex, align 8, !tbaa !12
  %call91 = call i32 %80(%struct.gx_device_s* %81, i32 %82, i32 %83, i32 %sub89, i32 %sub90, i64 %88) #4
  store i32 %call91, i32* %code, align 4, !tbaa !5
  br label %xit

if.end.92:                                        ; preds = %land.lhs.true.74, %if.then.70
  %di93 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di93, align 4, !tbaa !30
  %df94 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df94, align 4, !tbaa !31
  br label %if.end.167

if.else.95:                                       ; preds = %if.end.61
  %89 = load i32, i32* %dxr, align 4, !tbaa !5
  %90 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %89, %90
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.144

land.lhs.true.98:                                 ; preds = %if.else.95
  %91 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp99 = icmp ne i32 %91, 0
  br i1 %cmp99, label %if.then.101, label %if.else.144

if.then.101:                                      ; preds = %land.lhs.true.98
  %di102 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %92 = load i32, i32* %di102, align 4, !tbaa !30
  %cmp103 = icmp eq i32 %92, 0
  br i1 %cmp103, label %if.then.105, label %if.else.109

if.then.105:                                      ; preds = %if.then.101
  %di106 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di106, align 4, !tbaa !30
  %df107 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %93 = load i32, i32* %df107, align 4, !tbaa !31
  %df108 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %93, i32* %df108, align 4, !tbaa !31
  br label %if.end.110

if.else.109:                                      ; preds = %if.then.101
  %94 = load i32, i32* %dxr, align 4, !tbaa !5
  %95 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %94, i32 %95) #4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %if.then.105
  %96 = load i32, i32* %ysr, align 4, !tbaa !5
  %97 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp111 = icmp eq i32 %96, %97
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.121

land.lhs.true.113:                                ; preds = %if.end.110
  %h114 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %98 = load i32, i32* %h114, align 4, !tbaa !27
  %h115 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %99 = load i32, i32* %h115, align 4, !tbaa !27
  %cmp116 = icmp eq i32 %98, %99
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %land.lhs.true.113
  %100 = load i32, i32* %fxl, align 4, !tbaa !5
  %x119 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %101 = load i32, i32* %x119, align 4, !tbaa !29
  %add120 = add nsw i32 %101, %100
  store i32 %add120, i32* %x119, align 4, !tbaa !29
  br label %if.end.143

if.else.121:                                      ; preds = %land.lhs.true.113, %if.end.110
  %102 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv122 = sext i32 %102 to i64
  %cmp123 = icmp slt i64 %conv122, 256
  br i1 %cmp123, label %land.lhs.true.125, label %cond.false.135

land.lhs.true.125:                                ; preds = %if.else.121
  %df126 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %103 = load i32, i32* %df126, align 4, !tbaa !31
  %conv127 = sext i32 %103 to i64
  %cmp128 = icmp slt i64 %conv127, 8388607
  br i1 %cmp128, label %cond.true.130, label %cond.false.135

cond.true.130:                                    ; preds = %land.lhs.true.125
  %104 = load i32, i32* %ysr, align 4, !tbaa !5
  %df131 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %105 = load i32, i32* %df131, align 4, !tbaa !31
  %mul132 = mul nsw i32 %104, %105
  %h133 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %106 = load i32, i32* %h133, align 4, !tbaa !27
  %div134 = sdiv i32 %mul132, %106
  br label %cond.end.139

cond.false.135:                                   ; preds = %land.lhs.true.125, %if.else.121
  %107 = load i32, i32* %ysr, align 4, !tbaa !5
  %df136 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %108 = load i32, i32* %df136, align 4, !tbaa !31
  %h137 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %109 = load i32, i32* %h137, align 4, !tbaa !27
  %call138 = call i32 @fixed_mult_quo(i32 %107, i32 %108, i32 %109) #4
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.135, %cond.true.130
  %cond140 = phi i32 [ %div134, %cond.true.130 ], [ %call138, %cond.false.135 ]
  %x141 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %110 = load i32, i32* %x141, align 4, !tbaa !29
  %add142 = add nsw i32 %110, %cond140
  store i32 %add142, i32* %x141, align 4, !tbaa !29
  br label %if.end.143

if.end.143:                                       ; preds = %cond.end.139, %if.then.118
  br label %if.end.166

if.else.144:                                      ; preds = %land.lhs.true.98, %if.else.95
  %111 = load i32, i32* %dxr, align 4, !tbaa !5
  %112 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %111, i32 %112) #4
  %113 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv145 = sext i32 %113 to i64
  %cmp146 = icmp slt i64 %conv145, 256
  br i1 %cmp146, label %land.lhs.true.148, label %cond.false.158

land.lhs.true.148:                                ; preds = %if.else.144
  %df149 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %114 = load i32, i32* %df149, align 4, !tbaa !31
  %conv150 = sext i32 %114 to i64
  %cmp151 = icmp slt i64 %conv150, 8388607
  br i1 %cmp151, label %cond.true.153, label %cond.false.158

cond.true.153:                                    ; preds = %land.lhs.true.148
  %115 = load i32, i32* %ysr, align 4, !tbaa !5
  %df154 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %116 = load i32, i32* %df154, align 4, !tbaa !31
  %mul155 = mul nsw i32 %115, %116
  %h156 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %117 = load i32, i32* %h156, align 4, !tbaa !27
  %div157 = sdiv i32 %mul155, %117
  br label %cond.end.162

cond.false.158:                                   ; preds = %land.lhs.true.148, %if.else.144
  %118 = load i32, i32* %ysr, align 4, !tbaa !5
  %df159 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %119 = load i32, i32* %df159, align 4, !tbaa !31
  %h160 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %120 = load i32, i32* %h160, align 4, !tbaa !27
  %call161 = call i32 @fixed_mult_quo(i32 %118, i32 %119, i32 %120) #4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.158, %cond.true.153
  %cond163 = phi i32 [ %div157, %cond.true.153 ], [ %call161, %cond.false.158 ]
  %x164 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %121 = load i32, i32* %x164, align 4, !tbaa !29
  %add165 = add nsw i32 %121, %cond163
  store i32 %add165, i32* %x164, align 4, !tbaa !29
  br label %if.end.166

if.end.166:                                       ; preds = %cond.end.162, %if.end.143
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.92
  %122 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %122) #4
  %123 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %123) #4
  %x168 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %124 = load i32, i32* %x168, align 4, !tbaa !29
  %conv169 = sext i32 %124 to i64
  %add170 = add nsw i64 %conv169, 1
  %conv171 = trunc i64 %add170 to i32
  store i32 %conv171, i32* %x168, align 4, !tbaa !29
  %x172 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %125 = load i32, i32* %x172, align 4, !tbaa !29
  %conv173 = sext i32 %125 to i64
  %add174 = add nsw i64 %conv173, 1
  %conv175 = trunc i64 %add174 to i32
  store i32 %conv175, i32* %x172, align 4, !tbaa !29
  %x176 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %126 = load i32, i32* %x176, align 4, !tbaa !29
  %and177 = and i32 %126, 255
  %tobool = icmp ne i32 %and177, 0
  br i1 %tobool, label %cond.false.187, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %if.end.167
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %127 = load i32, i32* %xf, align 4, !tbaa !32
  %h179 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %128 = load i32, i32* %h179, align 4, !tbaa !27
  %sub180 = sub nsw i32 0, %128
  %cmp181 = icmp eq i32 %127, %sub180
  br i1 %cmp181, label %cond.true.183, label %cond.false.187

cond.true.183:                                    ; preds = %land.lhs.true.178
  %x184 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %129 = load i32, i32* %x184, align 4, !tbaa !29
  %conv185 = sext i32 %129 to i64
  %sub186 = sub nsw i64 %conv185, 256
  br label %cond.end.190

cond.false.187:                                   ; preds = %land.lhs.true.178, %if.end.167
  %x188 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %130 = load i32, i32* %x188, align 4, !tbaa !29
  %conv189 = sext i32 %130 to i64
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.187, %cond.true.183
  %cond191 = phi i64 [ %sub186, %cond.true.183 ], [ %conv189, %cond.false.187 ]
  %shr192 = ashr i64 %cond191, 8
  %conv193 = trunc i64 %shr192 to i32
  store i32 %conv193, i32* %rxl, align 4, !tbaa !5
  %x194 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %131 = load i32, i32* %x194, align 4, !tbaa !29
  %and195 = and i32 %131, 255
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %cond.false.207, label %land.lhs.true.197

land.lhs.true.197:                                ; preds = %cond.end.190
  %xf198 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %132 = load i32, i32* %xf198, align 4, !tbaa !32
  %h199 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %133 = load i32, i32* %h199, align 4, !tbaa !27
  %sub200 = sub nsw i32 0, %133
  %cmp201 = icmp eq i32 %132, %sub200
  br i1 %cmp201, label %cond.true.203, label %cond.false.207

cond.true.203:                                    ; preds = %land.lhs.true.197
  %x204 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %134 = load i32, i32* %x204, align 4, !tbaa !29
  %conv205 = sext i32 %134 to i64
  %sub206 = sub nsw i64 %conv205, 256
  br label %cond.end.210

cond.false.207:                                   ; preds = %land.lhs.true.197, %cond.end.190
  %x208 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %135 = load i32, i32* %x208, align 4, !tbaa !29
  %conv209 = sext i32 %135 to i64
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.207, %cond.true.203
  %cond211 = phi i64 [ %sub206, %cond.true.203 ], [ %conv209, %cond.false.207 ]
  %shr212 = ashr i64 %cond211, 8
  %conv213 = trunc i64 %shr212 to i32
  store i32 %conv213, i32* %rxr, align 4, !tbaa !5
  br label %do.body.214

do.body.214:                                      ; preds = %cond.end.210
  br label %do.cond.215

do.cond.215:                                      ; preds = %do.body.214
  br label %do.end.216

do.end.216:                                       ; preds = %do.cond.215
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.216
  %136 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  %137 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp217 = icmp ne i32 %inc, %137
  br i1 %cmp217, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %138 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  %139 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %140 = load i32, i32* %ldi, align 4, !tbaa !33
  %x219 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %141 = load i32, i32* %x219, align 4, !tbaa !29
  %add220 = add nsw i32 %141, %140
  store i32 %add220, i32* %x219, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %142 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf221 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %143 = load i32, i32* %xf221, align 4, !tbaa !32
  %add222 = add nsw i32 %143, %142
  store i32 %add222, i32* %xf221, align 4, !tbaa !32
  %cmp223 = icmp sge i32 %add222, 0
  br i1 %cmp223, label %if.then.225, label %if.end.231

if.then.225:                                      ; preds = %while.body
  %h226 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %144 = load i32, i32* %h226, align 4, !tbaa !27
  %xf227 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %145 = load i32, i32* %xf227, align 4, !tbaa !32
  %sub228 = sub nsw i32 %145, %144
  store i32 %sub228, i32* %xf227, align 4, !tbaa !32
  %x229 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %146 = load i32, i32* %x229, align 4, !tbaa !29
  %inc230 = add nsw i32 %146, 1
  store i32 %inc230, i32* %x229, align 4, !tbaa !29
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.225, %while.body
  %x232 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %147 = load i32, i32* %x232, align 4, !tbaa !29
  %and233 = and i32 %147, 255
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %cond.false.245, label %land.lhs.true.235

land.lhs.true.235:                                ; preds = %if.end.231
  %xf236 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %148 = load i32, i32* %xf236, align 4, !tbaa !32
  %h237 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %149 = load i32, i32* %h237, align 4, !tbaa !27
  %sub238 = sub nsw i32 0, %149
  %cmp239 = icmp eq i32 %148, %sub238
  br i1 %cmp239, label %cond.true.241, label %cond.false.245

cond.true.241:                                    ; preds = %land.lhs.true.235
  %x242 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %150 = load i32, i32* %x242, align 4, !tbaa !29
  %conv243 = sext i32 %150 to i64
  %sub244 = sub nsw i64 %conv243, 256
  br label %cond.end.248

cond.false.245:                                   ; preds = %land.lhs.true.235, %if.end.231
  %x246 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %151 = load i32, i32* %x246, align 4, !tbaa !29
  %conv247 = sext i32 %151 to i64
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.245, %cond.true.241
  %cond249 = phi i64 [ %sub244, %cond.true.241 ], [ %conv247, %cond.false.245 ]
  %shr250 = ashr i64 %cond249, 8
  %conv251 = trunc i64 %shr250 to i32
  store i32 %conv251, i32* %ixl, align 4, !tbaa !5
  %ldi252 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %152 = load i32, i32* %ldi252, align 4, !tbaa !33
  %x253 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %153 = load i32, i32* %x253, align 4, !tbaa !29
  %add254 = add nsw i32 %153, %152
  store i32 %add254, i32* %x253, align 4, !tbaa !29
  %ldf255 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %154 = load i32, i32* %ldf255, align 4, !tbaa !34
  %xf256 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %155 = load i32, i32* %xf256, align 4, !tbaa !32
  %add257 = add nsw i32 %155, %154
  store i32 %add257, i32* %xf256, align 4, !tbaa !32
  %cmp258 = icmp sge i32 %add257, 0
  br i1 %cmp258, label %if.then.260, label %if.end.266

if.then.260:                                      ; preds = %cond.end.248
  %h261 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %156 = load i32, i32* %h261, align 4, !tbaa !27
  %xf262 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %157 = load i32, i32* %xf262, align 4, !tbaa !32
  %sub263 = sub nsw i32 %157, %156
  store i32 %sub263, i32* %xf262, align 4, !tbaa !32
  %x264 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %158 = load i32, i32* %x264, align 4, !tbaa !29
  %inc265 = add nsw i32 %158, 1
  store i32 %inc265, i32* %x264, align 4, !tbaa !29
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.260, %cond.end.248
  %x267 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %159 = load i32, i32* %x267, align 4, !tbaa !29
  %and268 = and i32 %159, 255
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %cond.false.280, label %land.lhs.true.270

land.lhs.true.270:                                ; preds = %if.end.266
  %xf271 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %160 = load i32, i32* %xf271, align 4, !tbaa !32
  %h272 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %161 = load i32, i32* %h272, align 4, !tbaa !27
  %sub273 = sub nsw i32 0, %161
  %cmp274 = icmp eq i32 %160, %sub273
  br i1 %cmp274, label %cond.true.276, label %cond.false.280

cond.true.276:                                    ; preds = %land.lhs.true.270
  %x277 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %162 = load i32, i32* %x277, align 4, !tbaa !29
  %conv278 = sext i32 %162 to i64
  %sub279 = sub nsw i64 %conv278, 256
  br label %cond.end.283

cond.false.280:                                   ; preds = %land.lhs.true.270, %if.end.266
  %x281 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %163 = load i32, i32* %x281, align 4, !tbaa !29
  %conv282 = sext i32 %163 to i64
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.280, %cond.true.276
  %cond284 = phi i64 [ %sub279, %cond.true.276 ], [ %conv282, %cond.false.280 ]
  %shr285 = ashr i64 %cond284, 8
  %conv286 = trunc i64 %shr285 to i32
  store i32 %conv286, i32* %ixr, align 4, !tbaa !5
  br label %do.body.287

do.body.287:                                      ; preds = %cond.end.283
  br label %do.cond.288

do.cond.288:                                      ; preds = %do.body.287
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  %164 = load i32, i32* %ixl, align 4, !tbaa !5
  %165 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp290 = icmp ne i32 %164, %165
  br i1 %cmp290, label %if.then.294, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.289
  %166 = load i32, i32* %ixr, align 4, !tbaa !5
  %167 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp292 = icmp ne i32 %166, %167
  br i1 %cmp292, label %if.then.294, label %if.end.311

if.then.294:                                      ; preds = %lor.lhs.false, %do.end.289
  br label %do.body.295

do.body.295:                                      ; preds = %if.then.294
  br label %do.cond.296

do.cond.296:                                      ; preds = %do.body.295
  br label %do.end.297

do.end.297:                                       ; preds = %do.cond.296
  br label %do.body.298

do.body.298:                                      ; preds = %do.end.297
  br label %do.cond.299

do.cond.299:                                      ; preds = %do.body.298
  br label %do.end.300

do.end.300:                                       ; preds = %do.cond.299
  br label %do.body.301

do.body.301:                                      ; preds = %do.end.300
  br label %do.cond.302

do.cond.302:                                      ; preds = %do.body.301
  br label %do.end.303

do.end.303:                                       ; preds = %do.cond.302
  %168 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %170 = load i32, i32* %ry, align 4, !tbaa !5
  %171 = load i32, i32* %rxl, align 4, !tbaa !5
  %172 = load i32, i32* %iy, align 4, !tbaa !5
  %173 = load i32, i32* %ry, align 4, !tbaa !5
  %sub304 = sub nsw i32 %172, %173
  %174 = load i32, i32* %rxr, align 4, !tbaa !5
  %175 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub305 = sub nsw i32 %174, %175
  %176 = load i64, i64* %cindex, align 8, !tbaa !12
  %call306 = call i32 %168(%struct.gx_device_s* %169, i32 %170, i32 %171, i32 %sub304, i32 %sub305, i64 %176) #4
  store i32 %call306, i32* %code, align 4, !tbaa !5
  %177 = load i32, i32* %code, align 4, !tbaa !5
  %cmp307 = icmp slt i32 %177, 0
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %do.end.303
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.310:                                       ; preds = %do.end.303
  %178 = load i32, i32* %ixl, align 4, !tbaa !5
  store i32 %178, i32* %rxl, align 4, !tbaa !5
  %179 = load i32, i32* %ixr, align 4, !tbaa !5
  store i32 %179, i32* %rxr, align 4, !tbaa !5
  %180 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %180, i32* %ry, align 4, !tbaa !5
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.309, %if.end.311
  %181 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.326 [
    i32 0, label %cleanup.cont
    i32 8, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.313

do.body.313:                                      ; preds = %while.end
  br label %do.cond.314

do.cond.314:                                      ; preds = %do.body.313
  br label %do.end.315

do.end.315:                                       ; preds = %do.cond.314
  %183 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %185 = load i32, i32* %ry, align 4, !tbaa !5
  %186 = load i32, i32* %rxl, align 4, !tbaa !5
  %187 = load i32, i32* %iy, align 4, !tbaa !5
  %188 = load i32, i32* %ry, align 4, !tbaa !5
  %sub316 = sub nsw i32 %187, %188
  %189 = load i32, i32* %rxr, align 4, !tbaa !5
  %190 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub317 = sub nsw i32 %189, %190
  %191 = load i64, i64* %cindex, align 8, !tbaa !12
  %call318 = call i32 %183(%struct.gx_device_s* %184, i32 %185, i32 %186, i32 %sub316, i32 %sub317, i64 %191) #4
  store i32 %call318, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %do.end.315, %cleanup, %do.end.88
  %192 = load i32, i32* %code, align 4, !tbaa !5
  %cmp319 = icmp slt i32 %192, 0
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %xit
  %193 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.322:                                       ; preds = %xit
  br label %do.body.323

do.body.323:                                      ; preds = %if.end.322
  br label %do.cond.324

do.cond.324:                                      ; preds = %do.body.323
  br label %do.end.325

do.end.325:                                       ; preds = %do.cond.324
  %194 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %194, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.326

cleanup.326:                                      ; preds = %do.end.325, %if.then.321, %cleanup
  %195 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %210) #1
  %211 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %211) #1
  %212 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  br label %cleanup.345

cleanup.345:                                      ; preds = %cleanup.326, %if.then
  %214 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = load i32, i32* %retval
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_fill_trapezoid_as_nd(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, i32 %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %cindex = alloca i64, align 8
  %fill_rect = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %ixl = alloca i32, align 4
  %ixr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %fa, i32* %fa.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.351

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !10
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !7
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !10
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !11
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !11
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %45 = load i64, i64* %pure, align 8, !tbaa !12
  store i64 %45, i64* %cindex, align 8, !tbaa !12
  %46 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %48 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !14
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %48, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end20 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %49, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end20, i32 0, i32 1
  %50 = load i32, i32* %y21, align 4, !tbaa !26
  %51 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %51, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  %52 = load i32, i32* %y23, align 4, !tbaa !11
  %sub24 = sub nsw i32 %50, %52
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub24, i32* %h, align 4, !tbaa !27
  %53 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end25 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %53, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end25, i32 0, i32 1
  %54 = load i32, i32* %y26, align 4, !tbaa !26
  %55 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %55, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start27, i32 0, i32 1
  %56 = load i32, i32* %y28, align 4, !tbaa !11
  %sub29 = sub nsw i32 %54, %56
  %h30 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub29, i32* %h30, align 4, !tbaa !27
  %57 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv31 = sext i32 %57 to i64
  %add32 = add nsw i64 %conv31, 127
  %conv33 = trunc i64 %add32 to i32
  %x34 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv33, i32* %x34, align 4, !tbaa !29
  %58 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv35 = sext i32 %58 to i64
  %add36 = add nsw i64 %conv35, 127
  %conv37 = trunc i64 %add36 to i32
  %x38 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv37, i32* %x38, align 4, !tbaa !29
  %59 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %59, i32* %ry, align 4, !tbaa !5
  %x39 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %60 = load i32, i32* %x39, align 4, !tbaa !29
  %conv40 = sext i32 %60 to i64
  %and41 = and i64 %conv40, -256
  %61 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv42 = sext i32 %61 to i64
  %add43 = add nsw i64 %conv42, 127
  %and44 = and i64 %add43, -256
  %cmp45 = icmp eq i64 %and41, %and44
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %do.end
  %62 = load i32, i32* %dxl, align 4, !tbaa !5
  %63 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %62, i32 %63) #4
  %64 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv48 = sext i32 %64 to i64
  %cmp49 = icmp slt i64 %conv48, 256
  br i1 %cmp49, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df51 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %65 = load i32, i32* %df51, align 4, !tbaa !31
  %conv52 = sext i32 %65 to i64
  %cmp53 = icmp slt i64 %conv52, 8388607
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %66 = load i32, i32* %ysl, align 4, !tbaa !5
  %df55 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %67 = load i32, i32* %df55, align 4, !tbaa !31
  %mul = mul nsw i32 %66, %67
  %h56 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %68 = load i32, i32* %h56, align 4, !tbaa !27
  %div = sdiv i32 %mul, %68
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %69 = load i32, i32* %ysl, align 4, !tbaa !5
  %df57 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %70 = load i32, i32* %df57, align 4, !tbaa !31
  %h58 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %71 = load i32, i32* %h58, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %69, i32 %70, i32 %71) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %72 = load i32, i32* %fxl, align 4, !tbaa !5
  %x59 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %73 = load i32, i32* %x59, align 4, !tbaa !29
  %add60 = add nsw i32 %73, %72
  store i32 %add60, i32* %x59, align 4, !tbaa !29
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end, %if.then.47
  %x62 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %74 = load i32, i32* %x62, align 4, !tbaa !29
  %conv63 = sext i32 %74 to i64
  %and64 = and i64 %conv63, -256
  %75 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv65 = sext i32 %75 to i64
  %add66 = add nsw i64 %conv65, 127
  %and67 = and i64 %add66, -256
  %cmp68 = icmp eq i64 %and64, %and67
  br i1 %cmp68, label %if.then.70, label %if.else.96

if.then.70:                                       ; preds = %if.end.61
  %di71 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %76 = load i32, i32* %di71, align 4, !tbaa !30
  %cmp72 = icmp eq i32 %76, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %if.then.70
  %df75 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %77 = load i32, i32* %df75, align 4, !tbaa !31
  %cmp76 = icmp eq i32 %77, 0
  br i1 %cmp76, label %if.then.78, label %if.end.93

if.then.78:                                       ; preds = %land.lhs.true.74
  %x79 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %78 = load i32, i32* %x79, align 4, !tbaa !29
  %shr80 = ashr i32 %78, 8
  store i32 %shr80, i32* %rxl, align 4, !tbaa !5
  %x81 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %79 = load i32, i32* %x81, align 4, !tbaa !29
  %shr82 = ashr i32 %79, 8
  store i32 %shr82, i32* %rxr, align 4, !tbaa !5
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.78
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  %81 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %fill_rectangle89 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %81, i32 0, i32 5
  %82 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle89, align 8, !tbaa !42
  %83 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %84 = load i32, i32* %ry, align 4, !tbaa !5
  %85 = load i32, i32* %rxl, align 4, !tbaa !5
  %86 = load i32, i32* %iy1, align 4, !tbaa !5
  %87 = load i32, i32* %ry, align 4, !tbaa !5
  %sub90 = sub nsw i32 %86, %87
  %88 = load i32, i32* %rxr, align 4, !tbaa !5
  %89 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub91 = sub nsw i32 %88, %89
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %91 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call92 = call i32 %82(%struct.gx_device_color_s* %83, i32 %84, i32 %85, i32 %sub90, i32 %sub91, %struct.gx_device_s* %90, i32 %91, %struct.gx_rop_source_s* null) #4
  store i32 %call92, i32* %code, align 4, !tbaa !5
  br label %xit

if.end.93:                                        ; preds = %land.lhs.true.74, %if.then.70
  %di94 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di94, align 4, !tbaa !30
  %df95 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df95, align 4, !tbaa !31
  br label %if.end.168

if.else.96:                                       ; preds = %if.end.61
  %92 = load i32, i32* %dxr, align 4, !tbaa !5
  %93 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %92, %93
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.145

land.lhs.true.99:                                 ; preds = %if.else.96
  %94 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp100 = icmp ne i32 %94, 0
  br i1 %cmp100, label %if.then.102, label %if.else.145

if.then.102:                                      ; preds = %land.lhs.true.99
  %di103 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %95 = load i32, i32* %di103, align 4, !tbaa !30
  %cmp104 = icmp eq i32 %95, 0
  br i1 %cmp104, label %if.then.106, label %if.else.110

if.then.106:                                      ; preds = %if.then.102
  %di107 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di107, align 4, !tbaa !30
  %df108 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %96 = load i32, i32* %df108, align 4, !tbaa !31
  %df109 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %96, i32* %df109, align 4, !tbaa !31
  br label %if.end.111

if.else.110:                                      ; preds = %if.then.102
  %97 = load i32, i32* %dxr, align 4, !tbaa !5
  %98 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %97, i32 %98) #4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.then.106
  %99 = load i32, i32* %ysr, align 4, !tbaa !5
  %100 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp112 = icmp eq i32 %99, %100
  br i1 %cmp112, label %land.lhs.true.114, label %if.else.122

land.lhs.true.114:                                ; preds = %if.end.111
  %h115 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %101 = load i32, i32* %h115, align 4, !tbaa !27
  %h116 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %102 = load i32, i32* %h116, align 4, !tbaa !27
  %cmp117 = icmp eq i32 %101, %102
  br i1 %cmp117, label %if.then.119, label %if.else.122

if.then.119:                                      ; preds = %land.lhs.true.114
  %103 = load i32, i32* %fxl, align 4, !tbaa !5
  %x120 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %104 = load i32, i32* %x120, align 4, !tbaa !29
  %add121 = add nsw i32 %104, %103
  store i32 %add121, i32* %x120, align 4, !tbaa !29
  br label %if.end.144

if.else.122:                                      ; preds = %land.lhs.true.114, %if.end.111
  %105 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv123 = sext i32 %105 to i64
  %cmp124 = icmp slt i64 %conv123, 256
  br i1 %cmp124, label %land.lhs.true.126, label %cond.false.136

land.lhs.true.126:                                ; preds = %if.else.122
  %df127 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %106 = load i32, i32* %df127, align 4, !tbaa !31
  %conv128 = sext i32 %106 to i64
  %cmp129 = icmp slt i64 %conv128, 8388607
  br i1 %cmp129, label %cond.true.131, label %cond.false.136

cond.true.131:                                    ; preds = %land.lhs.true.126
  %107 = load i32, i32* %ysr, align 4, !tbaa !5
  %df132 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %108 = load i32, i32* %df132, align 4, !tbaa !31
  %mul133 = mul nsw i32 %107, %108
  %h134 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %109 = load i32, i32* %h134, align 4, !tbaa !27
  %div135 = sdiv i32 %mul133, %109
  br label %cond.end.140

cond.false.136:                                   ; preds = %land.lhs.true.126, %if.else.122
  %110 = load i32, i32* %ysr, align 4, !tbaa !5
  %df137 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %111 = load i32, i32* %df137, align 4, !tbaa !31
  %h138 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %112 = load i32, i32* %h138, align 4, !tbaa !27
  %call139 = call i32 @fixed_mult_quo(i32 %110, i32 %111, i32 %112) #4
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.136, %cond.true.131
  %cond141 = phi i32 [ %div135, %cond.true.131 ], [ %call139, %cond.false.136 ]
  %x142 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %113 = load i32, i32* %x142, align 4, !tbaa !29
  %add143 = add nsw i32 %113, %cond141
  store i32 %add143, i32* %x142, align 4, !tbaa !29
  br label %if.end.144

if.end.144:                                       ; preds = %cond.end.140, %if.then.119
  br label %if.end.167

if.else.145:                                      ; preds = %land.lhs.true.99, %if.else.96
  %114 = load i32, i32* %dxr, align 4, !tbaa !5
  %115 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %114, i32 %115) #4
  %116 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv146 = sext i32 %116 to i64
  %cmp147 = icmp slt i64 %conv146, 256
  br i1 %cmp147, label %land.lhs.true.149, label %cond.false.159

land.lhs.true.149:                                ; preds = %if.else.145
  %df150 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %117 = load i32, i32* %df150, align 4, !tbaa !31
  %conv151 = sext i32 %117 to i64
  %cmp152 = icmp slt i64 %conv151, 8388607
  br i1 %cmp152, label %cond.true.154, label %cond.false.159

cond.true.154:                                    ; preds = %land.lhs.true.149
  %118 = load i32, i32* %ysr, align 4, !tbaa !5
  %df155 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %119 = load i32, i32* %df155, align 4, !tbaa !31
  %mul156 = mul nsw i32 %118, %119
  %h157 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %120 = load i32, i32* %h157, align 4, !tbaa !27
  %div158 = sdiv i32 %mul156, %120
  br label %cond.end.163

cond.false.159:                                   ; preds = %land.lhs.true.149, %if.else.145
  %121 = load i32, i32* %ysr, align 4, !tbaa !5
  %df160 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %122 = load i32, i32* %df160, align 4, !tbaa !31
  %h161 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %123 = load i32, i32* %h161, align 4, !tbaa !27
  %call162 = call i32 @fixed_mult_quo(i32 %121, i32 %122, i32 %123) #4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.true.154
  %cond164 = phi i32 [ %div158, %cond.true.154 ], [ %call162, %cond.false.159 ]
  %x165 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %124 = load i32, i32* %x165, align 4, !tbaa !29
  %add166 = add nsw i32 %124, %cond164
  store i32 %add166, i32* %x165, align 4, !tbaa !29
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.163, %if.end.144
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.93
  %125 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %125) #4
  %126 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %126) #4
  %x169 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %127 = load i32, i32* %x169, align 4, !tbaa !29
  %conv170 = sext i32 %127 to i64
  %add171 = add nsw i64 %conv170, 1
  %conv172 = trunc i64 %add171 to i32
  store i32 %conv172, i32* %x169, align 4, !tbaa !29
  %x173 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %128 = load i32, i32* %x173, align 4, !tbaa !29
  %conv174 = sext i32 %128 to i64
  %add175 = add nsw i64 %conv174, 1
  %conv176 = trunc i64 %add175 to i32
  store i32 %conv176, i32* %x173, align 4, !tbaa !29
  %x177 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %129 = load i32, i32* %x177, align 4, !tbaa !29
  %and178 = and i32 %129, 255
  %tobool = icmp ne i32 %and178, 0
  br i1 %tobool, label %cond.false.188, label %land.lhs.true.179

land.lhs.true.179:                                ; preds = %if.end.168
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %130 = load i32, i32* %xf, align 4, !tbaa !32
  %h180 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %131 = load i32, i32* %h180, align 4, !tbaa !27
  %sub181 = sub nsw i32 0, %131
  %cmp182 = icmp eq i32 %130, %sub181
  br i1 %cmp182, label %cond.true.184, label %cond.false.188

cond.true.184:                                    ; preds = %land.lhs.true.179
  %x185 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %132 = load i32, i32* %x185, align 4, !tbaa !29
  %conv186 = sext i32 %132 to i64
  %sub187 = sub nsw i64 %conv186, 256
  br label %cond.end.191

cond.false.188:                                   ; preds = %land.lhs.true.179, %if.end.168
  %x189 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %133 = load i32, i32* %x189, align 4, !tbaa !29
  %conv190 = sext i32 %133 to i64
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.188, %cond.true.184
  %cond192 = phi i64 [ %sub187, %cond.true.184 ], [ %conv190, %cond.false.188 ]
  %shr193 = ashr i64 %cond192, 8
  %conv194 = trunc i64 %shr193 to i32
  store i32 %conv194, i32* %rxl, align 4, !tbaa !5
  %x195 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %134 = load i32, i32* %x195, align 4, !tbaa !29
  %and196 = and i32 %134, 255
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %cond.false.208, label %land.lhs.true.198

land.lhs.true.198:                                ; preds = %cond.end.191
  %xf199 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %135 = load i32, i32* %xf199, align 4, !tbaa !32
  %h200 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %136 = load i32, i32* %h200, align 4, !tbaa !27
  %sub201 = sub nsw i32 0, %136
  %cmp202 = icmp eq i32 %135, %sub201
  br i1 %cmp202, label %cond.true.204, label %cond.false.208

cond.true.204:                                    ; preds = %land.lhs.true.198
  %x205 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %137 = load i32, i32* %x205, align 4, !tbaa !29
  %conv206 = sext i32 %137 to i64
  %sub207 = sub nsw i64 %conv206, 256
  br label %cond.end.211

cond.false.208:                                   ; preds = %land.lhs.true.198, %cond.end.191
  %x209 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %138 = load i32, i32* %x209, align 4, !tbaa !29
  %conv210 = sext i32 %138 to i64
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.208, %cond.true.204
  %cond212 = phi i64 [ %sub207, %cond.true.204 ], [ %conv210, %cond.false.208 ]
  %shr213 = ashr i64 %cond212, 8
  %conv214 = trunc i64 %shr213 to i32
  store i32 %conv214, i32* %rxr, align 4, !tbaa !5
  br label %do.body.215

do.body.215:                                      ; preds = %cond.end.211
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.body.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.217
  %139 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %139, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  %140 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp218 = icmp ne i32 %inc, %140
  br i1 %cmp218, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %141 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %143 = load i32, i32* %ldi, align 4, !tbaa !33
  %x220 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %144 = load i32, i32* %x220, align 4, !tbaa !29
  %add221 = add nsw i32 %144, %143
  store i32 %add221, i32* %x220, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %145 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf222 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %146 = load i32, i32* %xf222, align 4, !tbaa !32
  %add223 = add nsw i32 %146, %145
  store i32 %add223, i32* %xf222, align 4, !tbaa !32
  %cmp224 = icmp sge i32 %add223, 0
  br i1 %cmp224, label %if.then.226, label %if.end.232

if.then.226:                                      ; preds = %while.body
  %h227 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %147 = load i32, i32* %h227, align 4, !tbaa !27
  %xf228 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %148 = load i32, i32* %xf228, align 4, !tbaa !32
  %sub229 = sub nsw i32 %148, %147
  store i32 %sub229, i32* %xf228, align 4, !tbaa !32
  %x230 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %149 = load i32, i32* %x230, align 4, !tbaa !29
  %inc231 = add nsw i32 %149, 1
  store i32 %inc231, i32* %x230, align 4, !tbaa !29
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.226, %while.body
  %x233 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %150 = load i32, i32* %x233, align 4, !tbaa !29
  %and234 = and i32 %150, 255
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %cond.false.246, label %land.lhs.true.236

land.lhs.true.236:                                ; preds = %if.end.232
  %xf237 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %151 = load i32, i32* %xf237, align 4, !tbaa !32
  %h238 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %152 = load i32, i32* %h238, align 4, !tbaa !27
  %sub239 = sub nsw i32 0, %152
  %cmp240 = icmp eq i32 %151, %sub239
  br i1 %cmp240, label %cond.true.242, label %cond.false.246

cond.true.242:                                    ; preds = %land.lhs.true.236
  %x243 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %153 = load i32, i32* %x243, align 4, !tbaa !29
  %conv244 = sext i32 %153 to i64
  %sub245 = sub nsw i64 %conv244, 256
  br label %cond.end.249

cond.false.246:                                   ; preds = %land.lhs.true.236, %if.end.232
  %x247 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %154 = load i32, i32* %x247, align 4, !tbaa !29
  %conv248 = sext i32 %154 to i64
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %cond.true.242
  %cond250 = phi i64 [ %sub245, %cond.true.242 ], [ %conv248, %cond.false.246 ]
  %shr251 = ashr i64 %cond250, 8
  %conv252 = trunc i64 %shr251 to i32
  store i32 %conv252, i32* %ixl, align 4, !tbaa !5
  %ldi253 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %155 = load i32, i32* %ldi253, align 4, !tbaa !33
  %x254 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %156 = load i32, i32* %x254, align 4, !tbaa !29
  %add255 = add nsw i32 %156, %155
  store i32 %add255, i32* %x254, align 4, !tbaa !29
  %ldf256 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %157 = load i32, i32* %ldf256, align 4, !tbaa !34
  %xf257 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %158 = load i32, i32* %xf257, align 4, !tbaa !32
  %add258 = add nsw i32 %158, %157
  store i32 %add258, i32* %xf257, align 4, !tbaa !32
  %cmp259 = icmp sge i32 %add258, 0
  br i1 %cmp259, label %if.then.261, label %if.end.267

if.then.261:                                      ; preds = %cond.end.249
  %h262 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %159 = load i32, i32* %h262, align 4, !tbaa !27
  %xf263 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %160 = load i32, i32* %xf263, align 4, !tbaa !32
  %sub264 = sub nsw i32 %160, %159
  store i32 %sub264, i32* %xf263, align 4, !tbaa !32
  %x265 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %161 = load i32, i32* %x265, align 4, !tbaa !29
  %inc266 = add nsw i32 %161, 1
  store i32 %inc266, i32* %x265, align 4, !tbaa !29
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.261, %cond.end.249
  %x268 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %162 = load i32, i32* %x268, align 4, !tbaa !29
  %and269 = and i32 %162, 255
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %cond.false.281, label %land.lhs.true.271

land.lhs.true.271:                                ; preds = %if.end.267
  %xf272 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %163 = load i32, i32* %xf272, align 4, !tbaa !32
  %h273 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %164 = load i32, i32* %h273, align 4, !tbaa !27
  %sub274 = sub nsw i32 0, %164
  %cmp275 = icmp eq i32 %163, %sub274
  br i1 %cmp275, label %cond.true.277, label %cond.false.281

cond.true.277:                                    ; preds = %land.lhs.true.271
  %x278 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %165 = load i32, i32* %x278, align 4, !tbaa !29
  %conv279 = sext i32 %165 to i64
  %sub280 = sub nsw i64 %conv279, 256
  br label %cond.end.284

cond.false.281:                                   ; preds = %land.lhs.true.271, %if.end.267
  %x282 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %166 = load i32, i32* %x282, align 4, !tbaa !29
  %conv283 = sext i32 %166 to i64
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.281, %cond.true.277
  %cond285 = phi i64 [ %sub280, %cond.true.277 ], [ %conv283, %cond.false.281 ]
  %shr286 = ashr i64 %cond285, 8
  %conv287 = trunc i64 %shr286 to i32
  store i32 %conv287, i32* %ixr, align 4, !tbaa !5
  br label %do.body.288

do.body.288:                                      ; preds = %cond.end.284
  br label %do.cond.289

do.cond.289:                                      ; preds = %do.body.288
  br label %do.end.290

do.end.290:                                       ; preds = %do.cond.289
  %167 = load i32, i32* %ixl, align 4, !tbaa !5
  %168 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp291 = icmp ne i32 %167, %168
  br i1 %cmp291, label %if.then.295, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.290
  %169 = load i32, i32* %ixr, align 4, !tbaa !5
  %170 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp293 = icmp ne i32 %169, %170
  br i1 %cmp293, label %if.then.295, label %if.end.314

if.then.295:                                      ; preds = %lor.lhs.false, %do.end.290
  br label %do.body.296

do.body.296:                                      ; preds = %if.then.295
  br label %do.cond.297

do.cond.297:                                      ; preds = %do.body.296
  br label %do.end.298

do.end.298:                                       ; preds = %do.cond.297
  br label %do.body.299

do.body.299:                                      ; preds = %do.end.298
  br label %do.cond.300

do.cond.300:                                      ; preds = %do.body.299
  br label %do.end.301

do.end.301:                                       ; preds = %do.cond.300
  br label %do.body.302

do.body.302:                                      ; preds = %do.end.301
  br label %do.cond.303

do.cond.303:                                      ; preds = %do.body.302
  br label %do.end.304

do.end.304:                                       ; preds = %do.cond.303
  %171 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type305 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %171, i32 0, i32 0
  %172 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type305, align 8, !tbaa !35
  %fill_rectangle306 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %172, i32 0, i32 5
  %173 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle306, align 8, !tbaa !42
  %174 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %175 = load i32, i32* %ry, align 4, !tbaa !5
  %176 = load i32, i32* %rxl, align 4, !tbaa !5
  %177 = load i32, i32* %iy, align 4, !tbaa !5
  %178 = load i32, i32* %ry, align 4, !tbaa !5
  %sub307 = sub nsw i32 %177, %178
  %179 = load i32, i32* %rxr, align 4, !tbaa !5
  %180 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub308 = sub nsw i32 %179, %180
  %181 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %182 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call309 = call i32 %173(%struct.gx_device_color_s* %174, i32 %175, i32 %176, i32 %sub307, i32 %sub308, %struct.gx_device_s* %181, i32 %182, %struct.gx_rop_source_s* null) #4
  store i32 %call309, i32* %code, align 4, !tbaa !5
  %183 = load i32, i32* %code, align 4, !tbaa !5
  %cmp310 = icmp slt i32 %183, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %do.end.304
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.313:                                       ; preds = %do.end.304
  %184 = load i32, i32* %ixl, align 4, !tbaa !5
  store i32 %184, i32* %rxl, align 4, !tbaa !5
  %185 = load i32, i32* %ixr, align 4, !tbaa !5
  store i32 %185, i32* %rxr, align 4, !tbaa !5
  %186 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %186, i32* %ry, align 4, !tbaa !5
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.312, %if.end.314
  %187 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.332 [
    i32 0, label %cleanup.cont
    i32 8, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.316

do.body.316:                                      ; preds = %while.end
  br label %do.cond.317

do.cond.317:                                      ; preds = %do.body.316
  br label %do.end.318

do.end.318:                                       ; preds = %do.cond.317
  %189 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type319 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %189, i32 0, i32 0
  %190 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type319, align 8, !tbaa !35
  %fill_rectangle320 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %190, i32 0, i32 5
  %191 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle320, align 8, !tbaa !42
  %192 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %193 = load i32, i32* %ry, align 4, !tbaa !5
  %194 = load i32, i32* %rxl, align 4, !tbaa !5
  %195 = load i32, i32* %iy, align 4, !tbaa !5
  %196 = load i32, i32* %ry, align 4, !tbaa !5
  %sub321 = sub nsw i32 %195, %196
  %197 = load i32, i32* %rxr, align 4, !tbaa !5
  %198 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub322 = sub nsw i32 %197, %198
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %200 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call323 = call i32 %191(%struct.gx_device_color_s* %192, i32 %193, i32 %194, i32 %sub321, i32 %sub322, %struct.gx_device_s* %199, i32 %200, %struct.gx_rop_source_s* null) #4
  store i32 %call323, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %do.end.318, %cleanup, %do.end.88
  %201 = load i32, i32* %code, align 4, !tbaa !5
  %cmp324 = icmp slt i32 %201, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.end.328

land.lhs.true.326:                                ; preds = %xit
  br i1 false, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %land.lhs.true.326
  %202 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.328:                                       ; preds = %land.lhs.true.326, %xit
  br label %do.body.329

do.body.329:                                      ; preds = %if.end.328
  br label %do.cond.330

do.cond.330:                                      ; preds = %do.body.329
  br label %do.end.331

do.end.331:                                       ; preds = %do.cond.330
  %203 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %203, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

cleanup.332:                                      ; preds = %do.end.331, %if.then.327, %cleanup
  %204 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %219) #1
  %220 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %220) #1
  %221 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  br label %cleanup.351

cleanup.351:                                      ; preds = %cleanup.332, %if.then
  %223 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = load i32, i32* %retval
  ret i32 %225
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_fill_trapezoid_ns_fd(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, i32 %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %cindex = alloca i64, align 8
  %fill_rect = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %ixl = alloca i32, align 4
  %ixr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %fa, i32* %fa.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.345

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !10
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !7
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !10
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !11
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !11
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %45 = load i64, i64* %pure, align 8, !tbaa !12
  store i64 %45, i64* %cindex, align 8, !tbaa !12
  %46 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %48 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !14
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %48, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end20 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %49, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end20, i32 0, i32 1
  %50 = load i32, i32* %y21, align 4, !tbaa !26
  %51 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %51, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  %52 = load i32, i32* %y23, align 4, !tbaa !11
  %sub24 = sub nsw i32 %50, %52
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub24, i32* %h, align 4, !tbaa !27
  %53 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end25 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %53, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end25, i32 0, i32 1
  %54 = load i32, i32* %y26, align 4, !tbaa !26
  %55 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %55, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start27, i32 0, i32 1
  %56 = load i32, i32* %y28, align 4, !tbaa !11
  %sub29 = sub nsw i32 %54, %56
  %h30 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub29, i32* %h30, align 4, !tbaa !27
  %57 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv31 = sext i32 %57 to i64
  %add32 = add nsw i64 %conv31, 127
  %conv33 = trunc i64 %add32 to i32
  %x34 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv33, i32* %x34, align 4, !tbaa !29
  %58 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv35 = sext i32 %58 to i64
  %add36 = add nsw i64 %conv35, 127
  %conv37 = trunc i64 %add36 to i32
  %x38 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv37, i32* %x38, align 4, !tbaa !29
  %59 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %59, i32* %ry, align 4, !tbaa !5
  %x39 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %60 = load i32, i32* %x39, align 4, !tbaa !29
  %conv40 = sext i32 %60 to i64
  %and41 = and i64 %conv40, -256
  %61 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv42 = sext i32 %61 to i64
  %add43 = add nsw i64 %conv42, 127
  %and44 = and i64 %add43, -256
  %cmp45 = icmp eq i64 %and41, %and44
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %do.end
  %62 = load i32, i32* %dxl, align 4, !tbaa !5
  %63 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %62, i32 %63) #4
  %64 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv48 = sext i32 %64 to i64
  %cmp49 = icmp slt i64 %conv48, 256
  br i1 %cmp49, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df51 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %65 = load i32, i32* %df51, align 4, !tbaa !31
  %conv52 = sext i32 %65 to i64
  %cmp53 = icmp slt i64 %conv52, 8388607
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %66 = load i32, i32* %ysl, align 4, !tbaa !5
  %df55 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %67 = load i32, i32* %df55, align 4, !tbaa !31
  %mul = mul nsw i32 %66, %67
  %h56 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %68 = load i32, i32* %h56, align 4, !tbaa !27
  %div = sdiv i32 %mul, %68
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %69 = load i32, i32* %ysl, align 4, !tbaa !5
  %df57 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %70 = load i32, i32* %df57, align 4, !tbaa !31
  %h58 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %71 = load i32, i32* %h58, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %69, i32 %70, i32 %71) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %72 = load i32, i32* %fxl, align 4, !tbaa !5
  %x59 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %73 = load i32, i32* %x59, align 4, !tbaa !29
  %add60 = add nsw i32 %73, %72
  store i32 %add60, i32* %x59, align 4, !tbaa !29
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end, %if.then.47
  %x62 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %74 = load i32, i32* %x62, align 4, !tbaa !29
  %conv63 = sext i32 %74 to i64
  %and64 = and i64 %conv63, -256
  %75 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv65 = sext i32 %75 to i64
  %add66 = add nsw i64 %conv65, 127
  %and67 = and i64 %add66, -256
  %cmp68 = icmp eq i64 %and64, %and67
  br i1 %cmp68, label %if.then.70, label %if.else.95

if.then.70:                                       ; preds = %if.end.61
  %di71 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %76 = load i32, i32* %di71, align 4, !tbaa !30
  %cmp72 = icmp eq i32 %76, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.92

land.lhs.true.74:                                 ; preds = %if.then.70
  %df75 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %77 = load i32, i32* %df75, align 4, !tbaa !31
  %cmp76 = icmp eq i32 %77, 0
  br i1 %cmp76, label %if.then.78, label %if.end.92

if.then.78:                                       ; preds = %land.lhs.true.74
  %x79 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %78 = load i32, i32* %x79, align 4, !tbaa !29
  %shr80 = ashr i32 %78, 8
  store i32 %shr80, i32* %rxl, align 4, !tbaa !5
  %x81 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %79 = load i32, i32* %x81, align 4, !tbaa !29
  %shr82 = ashr i32 %79, 8
  store i32 %shr82, i32* %rxr, align 4, !tbaa !5
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.78
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %80 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %82 = load i32, i32* %rxl, align 4, !tbaa !5
  %83 = load i32, i32* %ry, align 4, !tbaa !5
  %84 = load i32, i32* %rxr, align 4, !tbaa !5
  %85 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub89 = sub nsw i32 %84, %85
  %86 = load i32, i32* %iy1, align 4, !tbaa !5
  %87 = load i32, i32* %ry, align 4, !tbaa !5
  %sub90 = sub nsw i32 %86, %87
  %88 = load i64, i64* %cindex, align 8, !tbaa !12
  %call91 = call i32 %80(%struct.gx_device_s* %81, i32 %82, i32 %83, i32 %sub89, i32 %sub90, i64 %88) #4
  store i32 %call91, i32* %code, align 4, !tbaa !5
  br label %xit

if.end.92:                                        ; preds = %land.lhs.true.74, %if.then.70
  %di93 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di93, align 4, !tbaa !30
  %df94 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df94, align 4, !tbaa !31
  br label %if.end.167

if.else.95:                                       ; preds = %if.end.61
  %89 = load i32, i32* %dxr, align 4, !tbaa !5
  %90 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp96 = icmp eq i32 %89, %90
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.144

land.lhs.true.98:                                 ; preds = %if.else.95
  %91 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp99 = icmp ne i32 %91, 0
  br i1 %cmp99, label %if.then.101, label %if.else.144

if.then.101:                                      ; preds = %land.lhs.true.98
  %di102 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %92 = load i32, i32* %di102, align 4, !tbaa !30
  %cmp103 = icmp eq i32 %92, 0
  br i1 %cmp103, label %if.then.105, label %if.else.109

if.then.105:                                      ; preds = %if.then.101
  %di106 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di106, align 4, !tbaa !30
  %df107 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %93 = load i32, i32* %df107, align 4, !tbaa !31
  %df108 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %93, i32* %df108, align 4, !tbaa !31
  br label %if.end.110

if.else.109:                                      ; preds = %if.then.101
  %94 = load i32, i32* %dxr, align 4, !tbaa !5
  %95 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %94, i32 %95) #4
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.109, %if.then.105
  %96 = load i32, i32* %ysr, align 4, !tbaa !5
  %97 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp111 = icmp eq i32 %96, %97
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.121

land.lhs.true.113:                                ; preds = %if.end.110
  %h114 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %98 = load i32, i32* %h114, align 4, !tbaa !27
  %h115 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %99 = load i32, i32* %h115, align 4, !tbaa !27
  %cmp116 = icmp eq i32 %98, %99
  br i1 %cmp116, label %if.then.118, label %if.else.121

if.then.118:                                      ; preds = %land.lhs.true.113
  %100 = load i32, i32* %fxl, align 4, !tbaa !5
  %x119 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %101 = load i32, i32* %x119, align 4, !tbaa !29
  %add120 = add nsw i32 %101, %100
  store i32 %add120, i32* %x119, align 4, !tbaa !29
  br label %if.end.143

if.else.121:                                      ; preds = %land.lhs.true.113, %if.end.110
  %102 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv122 = sext i32 %102 to i64
  %cmp123 = icmp slt i64 %conv122, 256
  br i1 %cmp123, label %land.lhs.true.125, label %cond.false.135

land.lhs.true.125:                                ; preds = %if.else.121
  %df126 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %103 = load i32, i32* %df126, align 4, !tbaa !31
  %conv127 = sext i32 %103 to i64
  %cmp128 = icmp slt i64 %conv127, 8388607
  br i1 %cmp128, label %cond.true.130, label %cond.false.135

cond.true.130:                                    ; preds = %land.lhs.true.125
  %104 = load i32, i32* %ysr, align 4, !tbaa !5
  %df131 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %105 = load i32, i32* %df131, align 4, !tbaa !31
  %mul132 = mul nsw i32 %104, %105
  %h133 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %106 = load i32, i32* %h133, align 4, !tbaa !27
  %div134 = sdiv i32 %mul132, %106
  br label %cond.end.139

cond.false.135:                                   ; preds = %land.lhs.true.125, %if.else.121
  %107 = load i32, i32* %ysr, align 4, !tbaa !5
  %df136 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %108 = load i32, i32* %df136, align 4, !tbaa !31
  %h137 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %109 = load i32, i32* %h137, align 4, !tbaa !27
  %call138 = call i32 @fixed_mult_quo(i32 %107, i32 %108, i32 %109) #4
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.135, %cond.true.130
  %cond140 = phi i32 [ %div134, %cond.true.130 ], [ %call138, %cond.false.135 ]
  %x141 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %110 = load i32, i32* %x141, align 4, !tbaa !29
  %add142 = add nsw i32 %110, %cond140
  store i32 %add142, i32* %x141, align 4, !tbaa !29
  br label %if.end.143

if.end.143:                                       ; preds = %cond.end.139, %if.then.118
  br label %if.end.166

if.else.144:                                      ; preds = %land.lhs.true.98, %if.else.95
  %111 = load i32, i32* %dxr, align 4, !tbaa !5
  %112 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %111, i32 %112) #4
  %113 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv145 = sext i32 %113 to i64
  %cmp146 = icmp slt i64 %conv145, 256
  br i1 %cmp146, label %land.lhs.true.148, label %cond.false.158

land.lhs.true.148:                                ; preds = %if.else.144
  %df149 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %114 = load i32, i32* %df149, align 4, !tbaa !31
  %conv150 = sext i32 %114 to i64
  %cmp151 = icmp slt i64 %conv150, 8388607
  br i1 %cmp151, label %cond.true.153, label %cond.false.158

cond.true.153:                                    ; preds = %land.lhs.true.148
  %115 = load i32, i32* %ysr, align 4, !tbaa !5
  %df154 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %116 = load i32, i32* %df154, align 4, !tbaa !31
  %mul155 = mul nsw i32 %115, %116
  %h156 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %117 = load i32, i32* %h156, align 4, !tbaa !27
  %div157 = sdiv i32 %mul155, %117
  br label %cond.end.162

cond.false.158:                                   ; preds = %land.lhs.true.148, %if.else.144
  %118 = load i32, i32* %ysr, align 4, !tbaa !5
  %df159 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %119 = load i32, i32* %df159, align 4, !tbaa !31
  %h160 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %120 = load i32, i32* %h160, align 4, !tbaa !27
  %call161 = call i32 @fixed_mult_quo(i32 %118, i32 %119, i32 %120) #4
  br label %cond.end.162

cond.end.162:                                     ; preds = %cond.false.158, %cond.true.153
  %cond163 = phi i32 [ %div157, %cond.true.153 ], [ %call161, %cond.false.158 ]
  %x164 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %121 = load i32, i32* %x164, align 4, !tbaa !29
  %add165 = add nsw i32 %121, %cond163
  store i32 %add165, i32* %x164, align 4, !tbaa !29
  br label %if.end.166

if.end.166:                                       ; preds = %cond.end.162, %if.end.143
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.92
  %122 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %122) #4
  %123 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %123) #4
  %x168 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %124 = load i32, i32* %x168, align 4, !tbaa !29
  %conv169 = sext i32 %124 to i64
  %add170 = add nsw i64 %conv169, 1
  %conv171 = trunc i64 %add170 to i32
  store i32 %conv171, i32* %x168, align 4, !tbaa !29
  %x172 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %125 = load i32, i32* %x172, align 4, !tbaa !29
  %conv173 = sext i32 %125 to i64
  %add174 = add nsw i64 %conv173, 1
  %conv175 = trunc i64 %add174 to i32
  store i32 %conv175, i32* %x172, align 4, !tbaa !29
  %x176 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %126 = load i32, i32* %x176, align 4, !tbaa !29
  %and177 = and i32 %126, 255
  %tobool = icmp ne i32 %and177, 0
  br i1 %tobool, label %cond.false.187, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %if.end.167
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %127 = load i32, i32* %xf, align 4, !tbaa !32
  %h179 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %128 = load i32, i32* %h179, align 4, !tbaa !27
  %sub180 = sub nsw i32 0, %128
  %cmp181 = icmp eq i32 %127, %sub180
  br i1 %cmp181, label %cond.true.183, label %cond.false.187

cond.true.183:                                    ; preds = %land.lhs.true.178
  %x184 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %129 = load i32, i32* %x184, align 4, !tbaa !29
  %conv185 = sext i32 %129 to i64
  %sub186 = sub nsw i64 %conv185, 256
  br label %cond.end.190

cond.false.187:                                   ; preds = %land.lhs.true.178, %if.end.167
  %x188 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %130 = load i32, i32* %x188, align 4, !tbaa !29
  %conv189 = sext i32 %130 to i64
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.187, %cond.true.183
  %cond191 = phi i64 [ %sub186, %cond.true.183 ], [ %conv189, %cond.false.187 ]
  %shr192 = ashr i64 %cond191, 8
  %conv193 = trunc i64 %shr192 to i32
  store i32 %conv193, i32* %rxl, align 4, !tbaa !5
  %x194 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %131 = load i32, i32* %x194, align 4, !tbaa !29
  %and195 = and i32 %131, 255
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %cond.false.207, label %land.lhs.true.197

land.lhs.true.197:                                ; preds = %cond.end.190
  %xf198 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %132 = load i32, i32* %xf198, align 4, !tbaa !32
  %h199 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %133 = load i32, i32* %h199, align 4, !tbaa !27
  %sub200 = sub nsw i32 0, %133
  %cmp201 = icmp eq i32 %132, %sub200
  br i1 %cmp201, label %cond.true.203, label %cond.false.207

cond.true.203:                                    ; preds = %land.lhs.true.197
  %x204 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %134 = load i32, i32* %x204, align 4, !tbaa !29
  %conv205 = sext i32 %134 to i64
  %sub206 = sub nsw i64 %conv205, 256
  br label %cond.end.210

cond.false.207:                                   ; preds = %land.lhs.true.197, %cond.end.190
  %x208 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %135 = load i32, i32* %x208, align 4, !tbaa !29
  %conv209 = sext i32 %135 to i64
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.false.207, %cond.true.203
  %cond211 = phi i64 [ %sub206, %cond.true.203 ], [ %conv209, %cond.false.207 ]
  %shr212 = ashr i64 %cond211, 8
  %conv213 = trunc i64 %shr212 to i32
  store i32 %conv213, i32* %rxr, align 4, !tbaa !5
  br label %do.body.214

do.body.214:                                      ; preds = %cond.end.210
  br label %do.cond.215

do.cond.215:                                      ; preds = %do.body.214
  br label %do.end.216

do.end.216:                                       ; preds = %do.cond.215
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.216
  %136 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %136, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  %137 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp217 = icmp ne i32 %inc, %137
  br i1 %cmp217, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %138 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %138) #1
  %139 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %139) #1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %140 = load i32, i32* %ldi, align 4, !tbaa !33
  %x219 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %141 = load i32, i32* %x219, align 4, !tbaa !29
  %add220 = add nsw i32 %141, %140
  store i32 %add220, i32* %x219, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %142 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf221 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %143 = load i32, i32* %xf221, align 4, !tbaa !32
  %add222 = add nsw i32 %143, %142
  store i32 %add222, i32* %xf221, align 4, !tbaa !32
  %cmp223 = icmp sge i32 %add222, 0
  br i1 %cmp223, label %if.then.225, label %if.end.231

if.then.225:                                      ; preds = %while.body
  %h226 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %144 = load i32, i32* %h226, align 4, !tbaa !27
  %xf227 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %145 = load i32, i32* %xf227, align 4, !tbaa !32
  %sub228 = sub nsw i32 %145, %144
  store i32 %sub228, i32* %xf227, align 4, !tbaa !32
  %x229 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %146 = load i32, i32* %x229, align 4, !tbaa !29
  %inc230 = add nsw i32 %146, 1
  store i32 %inc230, i32* %x229, align 4, !tbaa !29
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.225, %while.body
  %x232 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %147 = load i32, i32* %x232, align 4, !tbaa !29
  %and233 = and i32 %147, 255
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %cond.false.245, label %land.lhs.true.235

land.lhs.true.235:                                ; preds = %if.end.231
  %xf236 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %148 = load i32, i32* %xf236, align 4, !tbaa !32
  %h237 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %149 = load i32, i32* %h237, align 4, !tbaa !27
  %sub238 = sub nsw i32 0, %149
  %cmp239 = icmp eq i32 %148, %sub238
  br i1 %cmp239, label %cond.true.241, label %cond.false.245

cond.true.241:                                    ; preds = %land.lhs.true.235
  %x242 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %150 = load i32, i32* %x242, align 4, !tbaa !29
  %conv243 = sext i32 %150 to i64
  %sub244 = sub nsw i64 %conv243, 256
  br label %cond.end.248

cond.false.245:                                   ; preds = %land.lhs.true.235, %if.end.231
  %x246 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %151 = load i32, i32* %x246, align 4, !tbaa !29
  %conv247 = sext i32 %151 to i64
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.245, %cond.true.241
  %cond249 = phi i64 [ %sub244, %cond.true.241 ], [ %conv247, %cond.false.245 ]
  %shr250 = ashr i64 %cond249, 8
  %conv251 = trunc i64 %shr250 to i32
  store i32 %conv251, i32* %ixl, align 4, !tbaa !5
  %ldi252 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %152 = load i32, i32* %ldi252, align 4, !tbaa !33
  %x253 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %153 = load i32, i32* %x253, align 4, !tbaa !29
  %add254 = add nsw i32 %153, %152
  store i32 %add254, i32* %x253, align 4, !tbaa !29
  %ldf255 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %154 = load i32, i32* %ldf255, align 4, !tbaa !34
  %xf256 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %155 = load i32, i32* %xf256, align 4, !tbaa !32
  %add257 = add nsw i32 %155, %154
  store i32 %add257, i32* %xf256, align 4, !tbaa !32
  %cmp258 = icmp sge i32 %add257, 0
  br i1 %cmp258, label %if.then.260, label %if.end.266

if.then.260:                                      ; preds = %cond.end.248
  %h261 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %156 = load i32, i32* %h261, align 4, !tbaa !27
  %xf262 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %157 = load i32, i32* %xf262, align 4, !tbaa !32
  %sub263 = sub nsw i32 %157, %156
  store i32 %sub263, i32* %xf262, align 4, !tbaa !32
  %x264 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %158 = load i32, i32* %x264, align 4, !tbaa !29
  %inc265 = add nsw i32 %158, 1
  store i32 %inc265, i32* %x264, align 4, !tbaa !29
  br label %if.end.266

if.end.266:                                       ; preds = %if.then.260, %cond.end.248
  %x267 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %159 = load i32, i32* %x267, align 4, !tbaa !29
  %and268 = and i32 %159, 255
  %tobool269 = icmp ne i32 %and268, 0
  br i1 %tobool269, label %cond.false.280, label %land.lhs.true.270

land.lhs.true.270:                                ; preds = %if.end.266
  %xf271 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %160 = load i32, i32* %xf271, align 4, !tbaa !32
  %h272 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %161 = load i32, i32* %h272, align 4, !tbaa !27
  %sub273 = sub nsw i32 0, %161
  %cmp274 = icmp eq i32 %160, %sub273
  br i1 %cmp274, label %cond.true.276, label %cond.false.280

cond.true.276:                                    ; preds = %land.lhs.true.270
  %x277 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %162 = load i32, i32* %x277, align 4, !tbaa !29
  %conv278 = sext i32 %162 to i64
  %sub279 = sub nsw i64 %conv278, 256
  br label %cond.end.283

cond.false.280:                                   ; preds = %land.lhs.true.270, %if.end.266
  %x281 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %163 = load i32, i32* %x281, align 4, !tbaa !29
  %conv282 = sext i32 %163 to i64
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.280, %cond.true.276
  %cond284 = phi i64 [ %sub279, %cond.true.276 ], [ %conv282, %cond.false.280 ]
  %shr285 = ashr i64 %cond284, 8
  %conv286 = trunc i64 %shr285 to i32
  store i32 %conv286, i32* %ixr, align 4, !tbaa !5
  br label %do.body.287

do.body.287:                                      ; preds = %cond.end.283
  br label %do.cond.288

do.cond.288:                                      ; preds = %do.body.287
  br label %do.end.289

do.end.289:                                       ; preds = %do.cond.288
  %164 = load i32, i32* %ixl, align 4, !tbaa !5
  %165 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp290 = icmp ne i32 %164, %165
  br i1 %cmp290, label %if.then.294, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.289
  %166 = load i32, i32* %ixr, align 4, !tbaa !5
  %167 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp292 = icmp ne i32 %166, %167
  br i1 %cmp292, label %if.then.294, label %if.end.311

if.then.294:                                      ; preds = %lor.lhs.false, %do.end.289
  br label %do.body.295

do.body.295:                                      ; preds = %if.then.294
  br label %do.cond.296

do.cond.296:                                      ; preds = %do.body.295
  br label %do.end.297

do.end.297:                                       ; preds = %do.cond.296
  br label %do.body.298

do.body.298:                                      ; preds = %do.end.297
  br label %do.cond.299

do.cond.299:                                      ; preds = %do.body.298
  br label %do.end.300

do.end.300:                                       ; preds = %do.cond.299
  br label %do.body.301

do.body.301:                                      ; preds = %do.end.300
  br label %do.cond.302

do.cond.302:                                      ; preds = %do.body.301
  br label %do.end.303

do.end.303:                                       ; preds = %do.cond.302
  %168 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %170 = load i32, i32* %rxl, align 4, !tbaa !5
  %171 = load i32, i32* %ry, align 4, !tbaa !5
  %172 = load i32, i32* %rxr, align 4, !tbaa !5
  %173 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub304 = sub nsw i32 %172, %173
  %174 = load i32, i32* %iy, align 4, !tbaa !5
  %175 = load i32, i32* %ry, align 4, !tbaa !5
  %sub305 = sub nsw i32 %174, %175
  %176 = load i64, i64* %cindex, align 8, !tbaa !12
  %call306 = call i32 %168(%struct.gx_device_s* %169, i32 %170, i32 %171, i32 %sub304, i32 %sub305, i64 %176) #4
  store i32 %call306, i32* %code, align 4, !tbaa !5
  %177 = load i32, i32* %code, align 4, !tbaa !5
  %cmp307 = icmp slt i32 %177, 0
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %do.end.303
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.310:                                       ; preds = %do.end.303
  %178 = load i32, i32* %ixl, align 4, !tbaa !5
  store i32 %178, i32* %rxl, align 4, !tbaa !5
  %179 = load i32, i32* %ixr, align 4, !tbaa !5
  store i32 %179, i32* %rxr, align 4, !tbaa !5
  %180 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %180, i32* %ry, align 4, !tbaa !5
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.309, %if.end.311
  %181 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %182) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.326 [
    i32 0, label %cleanup.cont
    i32 8, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.313

do.body.313:                                      ; preds = %while.end
  br label %do.cond.314

do.cond.314:                                      ; preds = %do.body.313
  br label %do.end.315

do.end.315:                                       ; preds = %do.cond.314
  %183 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  %184 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %185 = load i32, i32* %rxl, align 4, !tbaa !5
  %186 = load i32, i32* %ry, align 4, !tbaa !5
  %187 = load i32, i32* %rxr, align 4, !tbaa !5
  %188 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub316 = sub nsw i32 %187, %188
  %189 = load i32, i32* %iy, align 4, !tbaa !5
  %190 = load i32, i32* %ry, align 4, !tbaa !5
  %sub317 = sub nsw i32 %189, %190
  %191 = load i64, i64* %cindex, align 8, !tbaa !12
  %call318 = call i32 %183(%struct.gx_device_s* %184, i32 %185, i32 %186, i32 %sub316, i32 %sub317, i64 %191) #4
  store i32 %call318, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %do.end.315, %cleanup, %do.end.88
  %192 = load i32, i32* %code, align 4, !tbaa !5
  %cmp319 = icmp slt i32 %192, 0
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %xit
  %193 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %193, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.326

if.end.322:                                       ; preds = %xit
  br label %do.body.323

do.body.323:                                      ; preds = %if.end.322
  br label %do.cond.324

do.cond.324:                                      ; preds = %do.body.323
  br label %do.end.325

do.end.325:                                       ; preds = %do.cond.324
  %194 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %194, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.326

cleanup.326:                                      ; preds = %do.end.325, %if.then.321, %cleanup
  %195 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %195) #1
  %196 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %196) #1
  %197 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %197) #1
  %198 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %198) #1
  %199 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %199) #1
  %200 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %200) #1
  %201 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %201) #1
  %202 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %202) #1
  %203 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %203) #1
  %204 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %204) #1
  %205 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %205) #1
  %206 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %210) #1
  %211 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %211) #1
  %212 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  br label %cleanup.345

cleanup.345:                                      ; preds = %cleanup.326, %if.then
  %214 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = load i32, i32* %retval
  ret i32 %216
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_fill_trapezoid_ns_nd(%struct.gx_device_s* %dev, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, i32 %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %right.addr = alloca %struct.gs_fixed_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca i32, align 4
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %cindex = alloca i64, align 8
  %fill_rect = alloca i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, align 8
  %ixl = alloca i32, align 4
  %ixr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_fixed_edge_s* %right, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %fa, i32* %fa.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.351

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !7
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !10
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !7
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !10
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !11
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !11
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %colors = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %44, i32 0, i32 1
  %pure = bitcast %union._c* %colors to i64*
  %45 = load i64, i64* %pure, align 8, !tbaa !12
  store i64 %45, i64* %cindex, align 8, !tbaa !12
  %46 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.start(i64 8, i8* %46) #1
  %47 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %47, i32 0, i32 42
  %fill_rectangle = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 7
  %48 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rectangle, align 8, !tbaa !14
  store i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)* %48, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect, align 8, !tbaa !1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %49 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %end20 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %49, i32 0, i32 1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end20, i32 0, i32 1
  %50 = load i32, i32* %y21, align 4, !tbaa !26
  %51 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %left.addr, align 8, !tbaa !1
  %start22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %51, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  %52 = load i32, i32* %y23, align 4, !tbaa !11
  %sub24 = sub nsw i32 %50, %52
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub24, i32* %h, align 4, !tbaa !27
  %53 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %end25 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %53, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end25, i32 0, i32 1
  %54 = load i32, i32* %y26, align 4, !tbaa !26
  %55 = load %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s** %right.addr, align 8, !tbaa !1
  %start27 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %55, i32 0, i32 0
  %y28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start27, i32 0, i32 1
  %56 = load i32, i32* %y28, align 4, !tbaa !11
  %sub29 = sub nsw i32 %54, %56
  %h30 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub29, i32* %h30, align 4, !tbaa !27
  %57 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv31 = sext i32 %57 to i64
  %add32 = add nsw i64 %conv31, 127
  %conv33 = trunc i64 %add32 to i32
  %x34 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv33, i32* %x34, align 4, !tbaa !29
  %58 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv35 = sext i32 %58 to i64
  %add36 = add nsw i64 %conv35, 127
  %conv37 = trunc i64 %add36 to i32
  %x38 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv37, i32* %x38, align 4, !tbaa !29
  %59 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %59, i32* %ry, align 4, !tbaa !5
  %x39 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %60 = load i32, i32* %x39, align 4, !tbaa !29
  %conv40 = sext i32 %60 to i64
  %and41 = and i64 %conv40, -256
  %61 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv42 = sext i32 %61 to i64
  %add43 = add nsw i64 %conv42, 127
  %and44 = and i64 %add43, -256
  %cmp45 = icmp eq i64 %and41, %and44
  br i1 %cmp45, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.61

if.else:                                          ; preds = %do.end
  %62 = load i32, i32* %dxl, align 4, !tbaa !5
  %63 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %62, i32 %63) #4
  %64 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv48 = sext i32 %64 to i64
  %cmp49 = icmp slt i64 %conv48, 256
  br i1 %cmp49, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df51 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %65 = load i32, i32* %df51, align 4, !tbaa !31
  %conv52 = sext i32 %65 to i64
  %cmp53 = icmp slt i64 %conv52, 8388607
  br i1 %cmp53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %66 = load i32, i32* %ysl, align 4, !tbaa !5
  %df55 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %67 = load i32, i32* %df55, align 4, !tbaa !31
  %mul = mul nsw i32 %66, %67
  %h56 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %68 = load i32, i32* %h56, align 4, !tbaa !27
  %div = sdiv i32 %mul, %68
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %69 = load i32, i32* %ysl, align 4, !tbaa !5
  %df57 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %70 = load i32, i32* %df57, align 4, !tbaa !31
  %h58 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %71 = load i32, i32* %h58, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %69, i32 %70, i32 %71) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %72 = load i32, i32* %fxl, align 4, !tbaa !5
  %x59 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %73 = load i32, i32* %x59, align 4, !tbaa !29
  %add60 = add nsw i32 %73, %72
  store i32 %add60, i32* %x59, align 4, !tbaa !29
  br label %if.end.61

if.end.61:                                        ; preds = %cond.end, %if.then.47
  %x62 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %74 = load i32, i32* %x62, align 4, !tbaa !29
  %conv63 = sext i32 %74 to i64
  %and64 = and i64 %conv63, -256
  %75 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv65 = sext i32 %75 to i64
  %add66 = add nsw i64 %conv65, 127
  %and67 = and i64 %add66, -256
  %cmp68 = icmp eq i64 %and64, %and67
  br i1 %cmp68, label %if.then.70, label %if.else.96

if.then.70:                                       ; preds = %if.end.61
  %di71 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %76 = load i32, i32* %di71, align 4, !tbaa !30
  %cmp72 = icmp eq i32 %76, 0
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.93

land.lhs.true.74:                                 ; preds = %if.then.70
  %df75 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %77 = load i32, i32* %df75, align 4, !tbaa !31
  %cmp76 = icmp eq i32 %77, 0
  br i1 %cmp76, label %if.then.78, label %if.end.93

if.then.78:                                       ; preds = %land.lhs.true.74
  %x79 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %78 = load i32, i32* %x79, align 4, !tbaa !29
  %shr80 = ashr i32 %78, 8
  store i32 %shr80, i32* %rxl, align 4, !tbaa !5
  %x81 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %79 = load i32, i32* %x81, align 4, !tbaa !29
  %shr82 = ashr i32 %79, 8
  store i32 %shr82, i32* %rxr, align 4, !tbaa !5
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.78
  br label %do.cond.84

do.cond.84:                                       ; preds = %do.body.83
  br label %do.end.85

do.end.85:                                        ; preds = %do.cond.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  br label %do.cond.87

do.cond.87:                                       ; preds = %do.body.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %80 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %80, i32 0, i32 0
  %81 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %fill_rectangle89 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %81, i32 0, i32 5
  %82 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle89, align 8, !tbaa !42
  %83 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %84 = load i32, i32* %rxl, align 4, !tbaa !5
  %85 = load i32, i32* %ry, align 4, !tbaa !5
  %86 = load i32, i32* %rxr, align 4, !tbaa !5
  %87 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub90 = sub nsw i32 %86, %87
  %88 = load i32, i32* %iy1, align 4, !tbaa !5
  %89 = load i32, i32* %ry, align 4, !tbaa !5
  %sub91 = sub nsw i32 %88, %89
  %90 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %91 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call92 = call i32 %82(%struct.gx_device_color_s* %83, i32 %84, i32 %85, i32 %sub90, i32 %sub91, %struct.gx_device_s* %90, i32 %91, %struct.gx_rop_source_s* null) #4
  store i32 %call92, i32* %code, align 4, !tbaa !5
  br label %xit

if.end.93:                                        ; preds = %land.lhs.true.74, %if.then.70
  %di94 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di94, align 4, !tbaa !30
  %df95 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df95, align 4, !tbaa !31
  br label %if.end.168

if.else.96:                                       ; preds = %if.end.61
  %92 = load i32, i32* %dxr, align 4, !tbaa !5
  %93 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %92, %93
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.145

land.lhs.true.99:                                 ; preds = %if.else.96
  %94 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp100 = icmp ne i32 %94, 0
  br i1 %cmp100, label %if.then.102, label %if.else.145

if.then.102:                                      ; preds = %land.lhs.true.99
  %di103 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %95 = load i32, i32* %di103, align 4, !tbaa !30
  %cmp104 = icmp eq i32 %95, 0
  br i1 %cmp104, label %if.then.106, label %if.else.110

if.then.106:                                      ; preds = %if.then.102
  %di107 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di107, align 4, !tbaa !30
  %df108 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %96 = load i32, i32* %df108, align 4, !tbaa !31
  %df109 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %96, i32* %df109, align 4, !tbaa !31
  br label %if.end.111

if.else.110:                                      ; preds = %if.then.102
  %97 = load i32, i32* %dxr, align 4, !tbaa !5
  %98 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %97, i32 %98) #4
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.then.106
  %99 = load i32, i32* %ysr, align 4, !tbaa !5
  %100 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp112 = icmp eq i32 %99, %100
  br i1 %cmp112, label %land.lhs.true.114, label %if.else.122

land.lhs.true.114:                                ; preds = %if.end.111
  %h115 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %101 = load i32, i32* %h115, align 4, !tbaa !27
  %h116 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %102 = load i32, i32* %h116, align 4, !tbaa !27
  %cmp117 = icmp eq i32 %101, %102
  br i1 %cmp117, label %if.then.119, label %if.else.122

if.then.119:                                      ; preds = %land.lhs.true.114
  %103 = load i32, i32* %fxl, align 4, !tbaa !5
  %x120 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %104 = load i32, i32* %x120, align 4, !tbaa !29
  %add121 = add nsw i32 %104, %103
  store i32 %add121, i32* %x120, align 4, !tbaa !29
  br label %if.end.144

if.else.122:                                      ; preds = %land.lhs.true.114, %if.end.111
  %105 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv123 = sext i32 %105 to i64
  %cmp124 = icmp slt i64 %conv123, 256
  br i1 %cmp124, label %land.lhs.true.126, label %cond.false.136

land.lhs.true.126:                                ; preds = %if.else.122
  %df127 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %106 = load i32, i32* %df127, align 4, !tbaa !31
  %conv128 = sext i32 %106 to i64
  %cmp129 = icmp slt i64 %conv128, 8388607
  br i1 %cmp129, label %cond.true.131, label %cond.false.136

cond.true.131:                                    ; preds = %land.lhs.true.126
  %107 = load i32, i32* %ysr, align 4, !tbaa !5
  %df132 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %108 = load i32, i32* %df132, align 4, !tbaa !31
  %mul133 = mul nsw i32 %107, %108
  %h134 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %109 = load i32, i32* %h134, align 4, !tbaa !27
  %div135 = sdiv i32 %mul133, %109
  br label %cond.end.140

cond.false.136:                                   ; preds = %land.lhs.true.126, %if.else.122
  %110 = load i32, i32* %ysr, align 4, !tbaa !5
  %df137 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %111 = load i32, i32* %df137, align 4, !tbaa !31
  %h138 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %112 = load i32, i32* %h138, align 4, !tbaa !27
  %call139 = call i32 @fixed_mult_quo(i32 %110, i32 %111, i32 %112) #4
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.136, %cond.true.131
  %cond141 = phi i32 [ %div135, %cond.true.131 ], [ %call139, %cond.false.136 ]
  %x142 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %113 = load i32, i32* %x142, align 4, !tbaa !29
  %add143 = add nsw i32 %113, %cond141
  store i32 %add143, i32* %x142, align 4, !tbaa !29
  br label %if.end.144

if.end.144:                                       ; preds = %cond.end.140, %if.then.119
  br label %if.end.167

if.else.145:                                      ; preds = %land.lhs.true.99, %if.else.96
  %114 = load i32, i32* %dxr, align 4, !tbaa !5
  %115 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %114, i32 %115) #4
  %116 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv146 = sext i32 %116 to i64
  %cmp147 = icmp slt i64 %conv146, 256
  br i1 %cmp147, label %land.lhs.true.149, label %cond.false.159

land.lhs.true.149:                                ; preds = %if.else.145
  %df150 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %117 = load i32, i32* %df150, align 4, !tbaa !31
  %conv151 = sext i32 %117 to i64
  %cmp152 = icmp slt i64 %conv151, 8388607
  br i1 %cmp152, label %cond.true.154, label %cond.false.159

cond.true.154:                                    ; preds = %land.lhs.true.149
  %118 = load i32, i32* %ysr, align 4, !tbaa !5
  %df155 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %119 = load i32, i32* %df155, align 4, !tbaa !31
  %mul156 = mul nsw i32 %118, %119
  %h157 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %120 = load i32, i32* %h157, align 4, !tbaa !27
  %div158 = sdiv i32 %mul156, %120
  br label %cond.end.163

cond.false.159:                                   ; preds = %land.lhs.true.149, %if.else.145
  %121 = load i32, i32* %ysr, align 4, !tbaa !5
  %df160 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %122 = load i32, i32* %df160, align 4, !tbaa !31
  %h161 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %123 = load i32, i32* %h161, align 4, !tbaa !27
  %call162 = call i32 @fixed_mult_quo(i32 %121, i32 %122, i32 %123) #4
  br label %cond.end.163

cond.end.163:                                     ; preds = %cond.false.159, %cond.true.154
  %cond164 = phi i32 [ %div158, %cond.true.154 ], [ %call162, %cond.false.159 ]
  %x165 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %124 = load i32, i32* %x165, align 4, !tbaa !29
  %add166 = add nsw i32 %124, %cond164
  store i32 %add166, i32* %x165, align 4, !tbaa !29
  br label %if.end.167

if.end.167:                                       ; preds = %cond.end.163, %if.end.144
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.93
  %125 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %125) #4
  %126 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %126) #4
  %x169 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %127 = load i32, i32* %x169, align 4, !tbaa !29
  %conv170 = sext i32 %127 to i64
  %add171 = add nsw i64 %conv170, 1
  %conv172 = trunc i64 %add171 to i32
  store i32 %conv172, i32* %x169, align 4, !tbaa !29
  %x173 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %128 = load i32, i32* %x173, align 4, !tbaa !29
  %conv174 = sext i32 %128 to i64
  %add175 = add nsw i64 %conv174, 1
  %conv176 = trunc i64 %add175 to i32
  store i32 %conv176, i32* %x173, align 4, !tbaa !29
  %x177 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %129 = load i32, i32* %x177, align 4, !tbaa !29
  %and178 = and i32 %129, 255
  %tobool = icmp ne i32 %and178, 0
  br i1 %tobool, label %cond.false.188, label %land.lhs.true.179

land.lhs.true.179:                                ; preds = %if.end.168
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %130 = load i32, i32* %xf, align 4, !tbaa !32
  %h180 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %131 = load i32, i32* %h180, align 4, !tbaa !27
  %sub181 = sub nsw i32 0, %131
  %cmp182 = icmp eq i32 %130, %sub181
  br i1 %cmp182, label %cond.true.184, label %cond.false.188

cond.true.184:                                    ; preds = %land.lhs.true.179
  %x185 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %132 = load i32, i32* %x185, align 4, !tbaa !29
  %conv186 = sext i32 %132 to i64
  %sub187 = sub nsw i64 %conv186, 256
  br label %cond.end.191

cond.false.188:                                   ; preds = %land.lhs.true.179, %if.end.168
  %x189 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %133 = load i32, i32* %x189, align 4, !tbaa !29
  %conv190 = sext i32 %133 to i64
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.188, %cond.true.184
  %cond192 = phi i64 [ %sub187, %cond.true.184 ], [ %conv190, %cond.false.188 ]
  %shr193 = ashr i64 %cond192, 8
  %conv194 = trunc i64 %shr193 to i32
  store i32 %conv194, i32* %rxl, align 4, !tbaa !5
  %x195 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %134 = load i32, i32* %x195, align 4, !tbaa !29
  %and196 = and i32 %134, 255
  %tobool197 = icmp ne i32 %and196, 0
  br i1 %tobool197, label %cond.false.208, label %land.lhs.true.198

land.lhs.true.198:                                ; preds = %cond.end.191
  %xf199 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %135 = load i32, i32* %xf199, align 4, !tbaa !32
  %h200 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %136 = load i32, i32* %h200, align 4, !tbaa !27
  %sub201 = sub nsw i32 0, %136
  %cmp202 = icmp eq i32 %135, %sub201
  br i1 %cmp202, label %cond.true.204, label %cond.false.208

cond.true.204:                                    ; preds = %land.lhs.true.198
  %x205 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %137 = load i32, i32* %x205, align 4, !tbaa !29
  %conv206 = sext i32 %137 to i64
  %sub207 = sub nsw i64 %conv206, 256
  br label %cond.end.211

cond.false.208:                                   ; preds = %land.lhs.true.198, %cond.end.191
  %x209 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %138 = load i32, i32* %x209, align 4, !tbaa !29
  %conv210 = sext i32 %138 to i64
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.208, %cond.true.204
  %cond212 = phi i64 [ %sub207, %cond.true.204 ], [ %conv210, %cond.false.208 ]
  %shr213 = ashr i64 %cond212, 8
  %conv214 = trunc i64 %shr213 to i32
  store i32 %conv214, i32* %rxr, align 4, !tbaa !5
  br label %do.body.215

do.body.215:                                      ; preds = %cond.end.211
  br label %do.cond.216

do.cond.216:                                      ; preds = %do.body.215
  br label %do.end.217

do.end.217:                                       ; preds = %do.cond.216
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %do.end.217
  %139 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %139, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  %140 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp218 = icmp ne i32 %inc, %140
  br i1 %cmp218, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %141 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %141) #1
  %142 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %142) #1
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %143 = load i32, i32* %ldi, align 4, !tbaa !33
  %x220 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %144 = load i32, i32* %x220, align 4, !tbaa !29
  %add221 = add nsw i32 %144, %143
  store i32 %add221, i32* %x220, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %145 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf222 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %146 = load i32, i32* %xf222, align 4, !tbaa !32
  %add223 = add nsw i32 %146, %145
  store i32 %add223, i32* %xf222, align 4, !tbaa !32
  %cmp224 = icmp sge i32 %add223, 0
  br i1 %cmp224, label %if.then.226, label %if.end.232

if.then.226:                                      ; preds = %while.body
  %h227 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %147 = load i32, i32* %h227, align 4, !tbaa !27
  %xf228 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %148 = load i32, i32* %xf228, align 4, !tbaa !32
  %sub229 = sub nsw i32 %148, %147
  store i32 %sub229, i32* %xf228, align 4, !tbaa !32
  %x230 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %149 = load i32, i32* %x230, align 4, !tbaa !29
  %inc231 = add nsw i32 %149, 1
  store i32 %inc231, i32* %x230, align 4, !tbaa !29
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.226, %while.body
  %x233 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %150 = load i32, i32* %x233, align 4, !tbaa !29
  %and234 = and i32 %150, 255
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %cond.false.246, label %land.lhs.true.236

land.lhs.true.236:                                ; preds = %if.end.232
  %xf237 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %151 = load i32, i32* %xf237, align 4, !tbaa !32
  %h238 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %152 = load i32, i32* %h238, align 4, !tbaa !27
  %sub239 = sub nsw i32 0, %152
  %cmp240 = icmp eq i32 %151, %sub239
  br i1 %cmp240, label %cond.true.242, label %cond.false.246

cond.true.242:                                    ; preds = %land.lhs.true.236
  %x243 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %153 = load i32, i32* %x243, align 4, !tbaa !29
  %conv244 = sext i32 %153 to i64
  %sub245 = sub nsw i64 %conv244, 256
  br label %cond.end.249

cond.false.246:                                   ; preds = %land.lhs.true.236, %if.end.232
  %x247 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %154 = load i32, i32* %x247, align 4, !tbaa !29
  %conv248 = sext i32 %154 to i64
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %cond.true.242
  %cond250 = phi i64 [ %sub245, %cond.true.242 ], [ %conv248, %cond.false.246 ]
  %shr251 = ashr i64 %cond250, 8
  %conv252 = trunc i64 %shr251 to i32
  store i32 %conv252, i32* %ixl, align 4, !tbaa !5
  %ldi253 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %155 = load i32, i32* %ldi253, align 4, !tbaa !33
  %x254 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %156 = load i32, i32* %x254, align 4, !tbaa !29
  %add255 = add nsw i32 %156, %155
  store i32 %add255, i32* %x254, align 4, !tbaa !29
  %ldf256 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %157 = load i32, i32* %ldf256, align 4, !tbaa !34
  %xf257 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %158 = load i32, i32* %xf257, align 4, !tbaa !32
  %add258 = add nsw i32 %158, %157
  store i32 %add258, i32* %xf257, align 4, !tbaa !32
  %cmp259 = icmp sge i32 %add258, 0
  br i1 %cmp259, label %if.then.261, label %if.end.267

if.then.261:                                      ; preds = %cond.end.249
  %h262 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %159 = load i32, i32* %h262, align 4, !tbaa !27
  %xf263 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %160 = load i32, i32* %xf263, align 4, !tbaa !32
  %sub264 = sub nsw i32 %160, %159
  store i32 %sub264, i32* %xf263, align 4, !tbaa !32
  %x265 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %161 = load i32, i32* %x265, align 4, !tbaa !29
  %inc266 = add nsw i32 %161, 1
  store i32 %inc266, i32* %x265, align 4, !tbaa !29
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.261, %cond.end.249
  %x268 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %162 = load i32, i32* %x268, align 4, !tbaa !29
  %and269 = and i32 %162, 255
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %cond.false.281, label %land.lhs.true.271

land.lhs.true.271:                                ; preds = %if.end.267
  %xf272 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %163 = load i32, i32* %xf272, align 4, !tbaa !32
  %h273 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %164 = load i32, i32* %h273, align 4, !tbaa !27
  %sub274 = sub nsw i32 0, %164
  %cmp275 = icmp eq i32 %163, %sub274
  br i1 %cmp275, label %cond.true.277, label %cond.false.281

cond.true.277:                                    ; preds = %land.lhs.true.271
  %x278 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %165 = load i32, i32* %x278, align 4, !tbaa !29
  %conv279 = sext i32 %165 to i64
  %sub280 = sub nsw i64 %conv279, 256
  br label %cond.end.284

cond.false.281:                                   ; preds = %land.lhs.true.271, %if.end.267
  %x282 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %166 = load i32, i32* %x282, align 4, !tbaa !29
  %conv283 = sext i32 %166 to i64
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.281, %cond.true.277
  %cond285 = phi i64 [ %sub280, %cond.true.277 ], [ %conv283, %cond.false.281 ]
  %shr286 = ashr i64 %cond285, 8
  %conv287 = trunc i64 %shr286 to i32
  store i32 %conv287, i32* %ixr, align 4, !tbaa !5
  br label %do.body.288

do.body.288:                                      ; preds = %cond.end.284
  br label %do.cond.289

do.cond.289:                                      ; preds = %do.body.288
  br label %do.end.290

do.end.290:                                       ; preds = %do.cond.289
  %167 = load i32, i32* %ixl, align 4, !tbaa !5
  %168 = load i32, i32* %rxl, align 4, !tbaa !5
  %cmp291 = icmp ne i32 %167, %168
  br i1 %cmp291, label %if.then.295, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.290
  %169 = load i32, i32* %ixr, align 4, !tbaa !5
  %170 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp293 = icmp ne i32 %169, %170
  br i1 %cmp293, label %if.then.295, label %if.end.314

if.then.295:                                      ; preds = %lor.lhs.false, %do.end.290
  br label %do.body.296

do.body.296:                                      ; preds = %if.then.295
  br label %do.cond.297

do.cond.297:                                      ; preds = %do.body.296
  br label %do.end.298

do.end.298:                                       ; preds = %do.cond.297
  br label %do.body.299

do.body.299:                                      ; preds = %do.end.298
  br label %do.cond.300

do.cond.300:                                      ; preds = %do.body.299
  br label %do.end.301

do.end.301:                                       ; preds = %do.cond.300
  br label %do.body.302

do.body.302:                                      ; preds = %do.end.301
  br label %do.cond.303

do.cond.303:                                      ; preds = %do.body.302
  br label %do.end.304

do.end.304:                                       ; preds = %do.cond.303
  %171 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type305 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %171, i32 0, i32 0
  %172 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type305, align 8, !tbaa !35
  %fill_rectangle306 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %172, i32 0, i32 5
  %173 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle306, align 8, !tbaa !42
  %174 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %175 = load i32, i32* %rxl, align 4, !tbaa !5
  %176 = load i32, i32* %ry, align 4, !tbaa !5
  %177 = load i32, i32* %rxr, align 4, !tbaa !5
  %178 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub307 = sub nsw i32 %177, %178
  %179 = load i32, i32* %iy, align 4, !tbaa !5
  %180 = load i32, i32* %ry, align 4, !tbaa !5
  %sub308 = sub nsw i32 %179, %180
  %181 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %182 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call309 = call i32 %173(%struct.gx_device_color_s* %174, i32 %175, i32 %176, i32 %sub307, i32 %sub308, %struct.gx_device_s* %181, i32 %182, %struct.gx_rop_source_s* null) #4
  store i32 %call309, i32* %code, align 4, !tbaa !5
  %183 = load i32, i32* %code, align 4, !tbaa !5
  %cmp310 = icmp slt i32 %183, 0
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %do.end.304
  store i32 8, i32* %cleanup.dest.slot
  br label %cleanup

if.end.313:                                       ; preds = %do.end.304
  %184 = load i32, i32* %ixl, align 4, !tbaa !5
  store i32 %184, i32* %rxl, align 4, !tbaa !5
  %185 = load i32, i32* %ixr, align 4, !tbaa !5
  store i32 %185, i32* %rxr, align 4, !tbaa !5
  %186 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %186, i32* %ry, align 4, !tbaa !5
  br label %if.end.314

if.end.314:                                       ; preds = %if.end.313, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.then.312, %if.end.314
  %187 = bitcast i32* %ixr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %188 = bitcast i32* %ixl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %188) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.332 [
    i32 0, label %cleanup.cont
    i32 8, label %xit
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.316

do.body.316:                                      ; preds = %while.end
  br label %do.cond.317

do.cond.317:                                      ; preds = %do.body.316
  br label %do.end.318

do.end.318:                                       ; preds = %do.cond.317
  %189 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type319 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %189, i32 0, i32 0
  %190 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type319, align 8, !tbaa !35
  %fill_rectangle320 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %190, i32 0, i32 5
  %191 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle320, align 8, !tbaa !42
  %192 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %193 = load i32, i32* %rxl, align 4, !tbaa !5
  %194 = load i32, i32* %ry, align 4, !tbaa !5
  %195 = load i32, i32* %rxr, align 4, !tbaa !5
  %196 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub321 = sub nsw i32 %195, %196
  %197 = load i32, i32* %iy, align 4, !tbaa !5
  %198 = load i32, i32* %ry, align 4, !tbaa !5
  %sub322 = sub nsw i32 %197, %198
  %199 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %200 = load i32, i32* %fa.addr, align 4, !tbaa !5
  %call323 = call i32 %191(%struct.gx_device_color_s* %192, i32 %193, i32 %194, i32 %sub321, i32 %sub322, %struct.gx_device_s* %199, i32 %200, %struct.gx_rop_source_s* null) #4
  store i32 %call323, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %do.end.318, %cleanup, %do.end.88
  %201 = load i32, i32* %code, align 4, !tbaa !5
  %cmp324 = icmp slt i32 %201, 0
  br i1 %cmp324, label %land.lhs.true.326, label %if.end.328

land.lhs.true.326:                                ; preds = %xit
  br i1 false, label %if.then.327, label %if.end.328

if.then.327:                                      ; preds = %land.lhs.true.326
  %202 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %202, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

if.end.328:                                       ; preds = %land.lhs.true.326, %xit
  br label %do.body.329

do.body.329:                                      ; preds = %if.end.328
  br label %do.cond.330

do.cond.330:                                      ; preds = %do.body.329
  br label %do.end.331

do.end.331:                                       ; preds = %do.cond.330
  %203 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %203, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.332

cleanup.332:                                      ; preds = %do.end.331, %if.then.327, %cleanup
  %204 = bitcast i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %fill_rect to i8*
  call void @llvm.lifetime.end(i64 8, i8* %204) #1
  %205 = bitcast i64* %cindex to i8*
  call void @llvm.lifetime.end(i64 8, i8* %205) #1
  %206 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %206) #1
  %207 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %207) #1
  %208 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %208) #1
  %209 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %209) #1
  %210 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %219) #1
  %220 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %220) #1
  %221 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  br label %cleanup.351

cleanup.351:                                      ; preds = %cleanup.332, %if.then
  %223 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %224) #1
  %225 = load i32, i32* %retval
  ret i32 %225
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s* %p3, i32* %c0, i32* %c1, i32* %c2, i32* %c3) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p3.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %c3.addr = alloca i32*, align 8
  %le = alloca %struct.gs_linear_color_edge_s, align 8
  %re = alloca %struct.gs_linear_color_edge_s, align 8
  %num_components = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p3, %struct.gs_fixed_point_s** %p3.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  store i32* %c3, i32** %c3.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_linear_color_edge_s* %le to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #1
  %1 = bitcast %struct.gs_linear_color_edge_s* %re to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #1
  %2 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 11
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %4 = load i32, i32* %num_components1, align 4, !tbaa !44
  store i32 %4, i32* %num_components, align 4, !tbaa !5
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %le, i32 0, i32 0
  %5 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %6 = bitcast %struct.gs_fixed_point_s* %start to i8*
  %7 = bitcast %struct.gs_fixed_point_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %le, i32 0, i32 1
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_fixed_point_s* %end to i8*
  %10 = bitcast %struct.gs_fixed_point_s* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 8, i32 4, i1 false), !tbaa.struct !45
  %11 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %c02 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %le, i32 0, i32 2
  store i32* %11, i32** %c02, align 8, !tbaa !46
  %12 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %c13 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %le, i32 0, i32 3
  store i32* %12, i32** %c13, align 8, !tbaa !48
  %13 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %13, i32 0, i32 0
  %14 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !49
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %14, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %15 = load i32, i32* %x, align 4, !tbaa !51
  %clip_x = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %le, i32 0, i32 4
  store i32 %15, i32* %clip_x, align 4, !tbaa !53
  %start4 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %re, i32 0, i32 0
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %17 = bitcast %struct.gs_fixed_point_s* %start4 to i8*
  %18 = bitcast %struct.gs_fixed_point_s* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end5 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %re, i32 0, i32 1
  %19 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p3.addr, align 8, !tbaa !1
  %20 = bitcast %struct.gs_fixed_point_s* %end5 to i8*
  %21 = bitcast %struct.gs_fixed_point_s* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 8, i32 4, i1 false), !tbaa.struct !45
  %22 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %c06 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %re, i32 0, i32 2
  store i32* %22, i32** %c06, align 8, !tbaa !46
  %23 = load i32*, i32** %c3.addr, align 8, !tbaa !1
  %c17 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %re, i32 0, i32 3
  store i32* %23, i32** %c17, align 8, !tbaa !48
  %24 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip8 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %24, i32 0, i32 0
  %25 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip8, align 8, !tbaa !49
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %25, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %26 = load i32, i32* %x9, align 4, !tbaa !54
  %clip_x10 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %re, i32 0, i32 4
  store i32 %26, i32* %clip_x10, align 4, !tbaa !53
  %27 = load i32, i32* %num_components, align 4, !tbaa !5
  %call = call i32 @check_gradient_overflow(%struct.gs_linear_color_edge_s* %le, %struct.gs_linear_color_edge_s* %re, i32 %27) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %28 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %29 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %call11 = call i32 @fill_linear_color_trapezoid_nocheck(%struct.gx_device_s* %28, %struct.gs_fill_attributes_s* %29, %struct.gs_linear_color_edge_s* %le, %struct.gs_linear_color_edge_s* %re) #4
  store i32 %call11, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %30 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %31 = bitcast %struct.gs_linear_color_edge_s* %re to i8*
  call void @llvm.lifetime.end(i64 40, i8* %31) #1
  %32 = bitcast %struct.gs_linear_color_edge_s* %le to i8*
  call void @llvm.lifetime.end(i64 40, i8* %32) #1
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @check_gradient_overflow(%struct.gs_linear_color_edge_s* %le, %struct.gs_linear_color_edge_s* %re, i32 %num_components) #2 {
entry:
  %retval = alloca i32, align 4
  %le.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %re.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %num_components.addr = alloca i32, align 4
  %xl = alloca i32, align 4
  %xr = alloca i32, align 4
  store %struct.gs_linear_color_edge_s* %le, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %re, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %c1 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %0, i32 0, i32 3
  %1 = load i32*, i32** %c1, align 8, !tbaa !48
  %cmp = icmp eq i32* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %c11 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %2, i32 0, i32 3
  %3 = load i32*, i32** %c11, align 8, !tbaa !48
  %cmp2 = icmp eq i32* %3, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %5, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %6 = load i32, i32* %x, align 4, !tbaa !55
  %7 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %7, i32 0, i32 1
  %x3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %8 = load i32, i32* %x3, align 4, !tbaa !56
  %cmp4 = icmp slt i32 %6, %8
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %9 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %start5 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %9, i32 0, i32 0
  %x6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start5, i32 0, i32 0
  %10 = load i32, i32* %x6, align 4, !tbaa !55
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %11 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %end7 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %11, i32 0, i32 1
  %x8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end7, i32 0, i32 0
  %12 = load i32, i32* %x8, align 4, !tbaa !56
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %xl, align 4, !tbaa !5
  %13 = bitcast i32* %xr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %start9 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %14, i32 0, i32 0
  %x10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start9, i32 0, i32 0
  %15 = load i32, i32* %x10, align 4, !tbaa !55
  %16 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %end11 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %16, i32 0, i32 1
  %x12 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end11, i32 0, i32 0
  %17 = load i32, i32* %x12, align 4, !tbaa !56
  %cmp13 = icmp slt i32 %15, %17
  br i1 %cmp13, label %cond.true.14, label %cond.false.17

cond.true.14:                                     ; preds = %cond.end
  %18 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %18, i32 0, i32 0
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 0
  %19 = load i32, i32* %x16, align 4, !tbaa !55
  br label %cond.end.20

cond.false.17:                                    ; preds = %cond.end
  %20 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %end18 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %20, i32 0, i32 1
  %x19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end18, i32 0, i32 0
  %21 = load i32, i32* %x19, align 4, !tbaa !56
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.17, %cond.true.14
  %cond21 = phi i32 [ %19, %cond.true.14 ], [ %21, %cond.false.17 ]
  store i32 %cond21, i32* %xr, align 4, !tbaa !5
  %22 = load i32, i32* %xr, align 4, !tbaa !5
  %shr = ashr i32 %22, 1
  %23 = load i32, i32* %xl, align 4, !tbaa !5
  %shr22 = ashr i32 %23, 1
  %sub = sub nsw i32 %shr, %shr22
  %cmp23 = icmp sge i32 %sub, 1073741822
  %conv = zext i1 %cmp23 to i32
  store i32 %conv, i32* %retval
  %24 = bitcast i32* %xr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %24) #1
  %25 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %25) #1
  br label %return

return:                                           ; preds = %cond.end.20, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fill_linear_color_trapezoid_nocheck(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_linear_color_edge_s* %le, %struct.gs_linear_color_edge_s* %re) #2 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %le.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %re.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %y02 = alloca i32, align 4
  %ymin = alloca i32, align 4
  %y1316 = alloca i32, align 4
  %ymax = alloca i32, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %le, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %re, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %0 = bitcast i32* %y02 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %1, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %2 = load i32, i32* %y, align 4, !tbaa !57
  %3 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %start1 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %3, i32 0, i32 0
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start1, i32 0, i32 1
  %4 = load i32, i32* %y2, align 4, !tbaa !57
  %cmp = icmp sgt i32 %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %start3 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %5, i32 0, i32 0
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start3, i32 0, i32 1
  %6 = load i32, i32* %y4, align 4, !tbaa !57
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %start5 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %7, i32 0, i32 0
  %y6 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start5, i32 0, i32 1
  %8 = load i32, i32* %y6, align 4, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %y02, align 4, !tbaa !5
  %9 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load i32, i32* %y02, align 4, !tbaa !5
  %11 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %11, i32 0, i32 0
  %12 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !49
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %12, i32 0, i32 0
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  %13 = load i32, i32* %y7, align 4, !tbaa !58
  %cmp8 = icmp sgt i32 %10, %13
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  %14 = load i32, i32* %y02, align 4, !tbaa !5
  br label %cond.end.14

cond.false.10:                                    ; preds = %cond.end
  %15 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip11 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %15, i32 0, i32 0
  %16 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip11, align 8, !tbaa !49
  %p12 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %16, i32 0, i32 0
  %y13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p12, i32 0, i32 1
  %17 = load i32, i32* %y13, align 4, !tbaa !58
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.10, %cond.true.9
  %cond15 = phi i32 [ %14, %cond.true.9 ], [ %17, %cond.false.10 ]
  store i32 %cond15, i32* %ymin, align 4, !tbaa !5
  %18 = bitcast i32* %y1316 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %19, i32 0, i32 1
  %y17 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %20 = load i32, i32* %y17, align 4, !tbaa !59
  %21 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %end18 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %21, i32 0, i32 1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end18, i32 0, i32 1
  %22 = load i32, i32* %y19, align 4, !tbaa !59
  %cmp20 = icmp slt i32 %20, %22
  br i1 %cmp20, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.end.14
  %23 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %end22 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %23, i32 0, i32 1
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end22, i32 0, i32 1
  %24 = load i32, i32* %y23, align 4, !tbaa !59
  br label %cond.end.27

cond.false.24:                                    ; preds = %cond.end.14
  %25 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %end25 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %25, i32 0, i32 1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end25, i32 0, i32 1
  %26 = load i32, i32* %y26, align 4, !tbaa !59
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.24, %cond.true.21
  %cond28 = phi i32 [ %24, %cond.true.21 ], [ %26, %cond.false.24 ]
  store i32 %cond28, i32* %y1316, align 4, !tbaa !5
  %27 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %y1316, align 4, !tbaa !5
  %29 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip29 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %29, i32 0, i32 0
  %30 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip29, align 8, !tbaa !49
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %30, i32 0, i32 1
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 1
  %31 = load i32, i32* %y30, align 4, !tbaa !60
  %cmp31 = icmp slt i32 %28, %31
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.end.27
  %32 = load i32, i32* %y1316, align 4, !tbaa !5
  br label %cond.end.37

cond.false.33:                                    ; preds = %cond.end.27
  %33 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip34 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %33, i32 0, i32 0
  %34 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip34, align 8, !tbaa !49
  %q35 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %34, i32 0, i32 1
  %y36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q35, i32 0, i32 1
  %35 = load i32, i32* %y36, align 4, !tbaa !60
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.33, %cond.true.32
  %cond38 = phi i32 [ %32, %cond.true.32 ], [ %35, %cond.false.33 ]
  store i32 %cond38, i32* %ymax, align 4, !tbaa !5
  %36 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %36) #1
  %37 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %swap_axes = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %37, i32 0, i32 1
  %38 = load i32, i32* %swap_axes, align 4, !tbaa !61
  %tobool = icmp ne i32 %38, 0
  %cond39 = select i1 %tobool, i32 (%struct.gx_device_s*, %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, %struct.gs_fill_attributes_s*)* @gx_fill_trapezoid_as_lc, i32 (%struct.gx_device_s*, %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, %struct.gs_fill_attributes_s*)* @gx_fill_trapezoid_ns_lc
  %39 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %40 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %le.addr, align 8, !tbaa !1
  %41 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %re.addr, align 8, !tbaa !1
  %42 = load i32, i32* %ymin, align 4, !tbaa !5
  %43 = load i32, i32* %ymax, align 4, !tbaa !5
  %44 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %call = call i32 %cond39(%struct.gx_device_s* %39, %struct.gs_linear_color_edge_s* %40, %struct.gs_linear_color_edge_s* %41, i32 %42, i32 %43, i32 0, %struct.gx_device_color_s* null, %struct.gs_fill_attributes_s* %44) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %45 = load i32, i32* %code, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %45, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.37
  %46 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %46, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.37
  %47 = load i32, i32* %code, align 4, !tbaa !5
  %tobool41 = icmp ne i32 %47, 0
  %lnot = xor i1 %tobool41, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %48 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  %49 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %50 = bitcast i32* %y1316 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %50) #1
  %51 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %51) #1
  %52 = bitcast i32* %y02 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %52) #1
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_linear_color_triangle(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, i32* %c0, i32* %c1, i32* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %dx1 = alloca i32, align 4
  %dy1 = alloca i32, align 4
  %dx2 = alloca i32, align 4
  %dy2 = alloca i32, align 4
  %p = alloca %struct.gs_fixed_point_s*, align 8
  %c = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %1, i32 0, i32 0
  %2 = load i32, i32* %x, align 4, !tbaa !62
  %3 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %x1 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i32 0, i32 0
  %4 = load i32, i32* %x1, align 4, !tbaa !62
  %sub = sub nsw i32 %2, %4
  store i32 %sub, i32* %dx1, align 4, !tbaa !5
  %5 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i32 0, i32 1
  %7 = load i32, i32* %y, align 4, !tbaa !63
  %8 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i32 0, i32 1
  %9 = load i32, i32* %y2, align 4, !tbaa !63
  %sub3 = sub nsw i32 %7, %9
  store i32 %sub3, i32* %dy1, align 4, !tbaa !5
  %10 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 0
  %12 = load i32, i32* %x4, align 4, !tbaa !62
  %13 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %x5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %13, i32 0, i32 0
  %14 = load i32, i32* %x5, align 4, !tbaa !62
  %sub6 = sub nsw i32 %12, %14
  store i32 %sub6, i32* %dx2, align 4, !tbaa !5
  %15 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %y7 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %16, i32 0, i32 1
  %17 = load i32, i32* %y7, align 4, !tbaa !63
  %18 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y8 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %18, i32 0, i32 1
  %19 = load i32, i32* %y8, align 4, !tbaa !63
  %sub9 = sub nsw i32 %17, %19
  store i32 %sub9, i32* %dy2, align 4, !tbaa !5
  %20 = load i32, i32* %dx1, align 4, !tbaa !5
  %conv = sext i32 %20 to i64
  %21 = load i32, i32* %dy2, align 4, !tbaa !5
  %conv10 = sext i32 %21 to i64
  %mul = mul nsw i64 %conv, %conv10
  %22 = load i32, i32* %dx2, align 4, !tbaa !5
  %conv11 = sext i32 %22 to i64
  %23 = load i32, i32* %dy1, align 4, !tbaa !5
  %conv12 = sext i32 %23 to i64
  %mul13 = mul nsw i64 %conv11, %conv12
  %cmp = icmp slt i64 %mul, %mul13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = bitcast %struct.gs_fixed_point_s** %p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %25, %struct.gs_fixed_point_s** %p, align 8, !tbaa !1
  %26 = bitcast i32** %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %26) #1
  %27 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  store i32* %27, i32** %c, align 8, !tbaa !1
  %28 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %28, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %29 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %29, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %30 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  store i32* %30, i32** %c1.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %c, align 8, !tbaa !1
  store i32* %31, i32** %c2.addr, align 8, !tbaa !1
  %32 = bitcast i32** %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #1
  %33 = bitcast %struct.gs_fixed_point_s** %p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %34 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y15 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %34, i32 0, i32 1
  %35 = load i32, i32* %y15, align 4, !tbaa !63
  %36 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %36, i32 0, i32 1
  %37 = load i32, i32* %y16, align 4, !tbaa !63
  %cmp17 = icmp sle i32 %35, %37
  br i1 %cmp17, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end
  %38 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %38, i32 0, i32 1
  %39 = load i32, i32* %y19, align 4, !tbaa !63
  %40 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %y20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %40, i32 0, i32 1
  %41 = load i32, i32* %y20, align 4, !tbaa !63
  %cmp21 = icmp sle i32 %39, %41
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %43 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %44 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %45 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %46 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %47 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %48 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %49 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %call = call i32 @fill_linear_color_triangle(%struct.gx_device_s* %42, %struct.gs_fill_attributes_s* %43, %struct.gs_fixed_point_s* %44, %struct.gs_fixed_point_s* %45, %struct.gs_fixed_point_s* %46, i32* %47, i32* %48, i32* %49) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.24:                                        ; preds = %land.lhs.true, %if.end
  %50 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %50, i32 0, i32 1
  %51 = load i32, i32* %y25, align 4, !tbaa !63
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i32 0, i32 1
  %53 = load i32, i32* %y26, align 4, !tbaa !63
  %cmp27 = icmp sle i32 %51, %53
  br i1 %cmp27, label %land.lhs.true.29, label %if.else

land.lhs.true.29:                                 ; preds = %if.end.24
  %54 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %54, i32 0, i32 1
  %55 = load i32, i32* %y30, align 4, !tbaa !63
  %56 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %y31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %56, i32 0, i32 1
  %57 = load i32, i32* %y31, align 4, !tbaa !63
  %cmp32 = icmp sle i32 %55, %57
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true.29
  %58 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %59 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %60 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %61 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %62 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %63 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %64 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %65 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %call35 = call i32 @fill_linear_color_triangle(%struct.gx_device_s* %58, %struct.gs_fill_attributes_s* %59, %struct.gs_fixed_point_s* %60, %struct.gs_fixed_point_s* %61, %struct.gs_fixed_point_s* %62, i32* %63, i32* %64, i32* %65) #4
  store i32 %call35, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.29, %if.end.24
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %67 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %68 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %69 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %70 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %71 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %72 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %73 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %call36 = call i32 @fill_linear_color_triangle(%struct.gx_device_s* %66, %struct.gs_fill_attributes_s* %67, %struct.gs_fixed_point_s* %68, %struct.gs_fixed_point_s* %69, %struct.gs_fixed_point_s* %70, i32* %71, i32* %72, i32* %73) #4
  store i32 %call36, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then.34, %if.then.23
  %74 = bitcast i32* %dy2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  %75 = bitcast i32* %dx2 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %75) #1
  %76 = bitcast i32* %dy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  %77 = bitcast i32* %dx1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %77) #1
  %78 = load i32, i32* %retval
  ret i32 %78
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fill_linear_color_triangle(%struct.gx_device_s* %dev, %struct.gs_fill_attributes_s* %fa, %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s* %p2, i32* %c0, i32* %c1, i32* %c2) #2 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %p0.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p1.addr = alloca %struct.gs_fixed_point_s*, align 8
  %p2.addr = alloca %struct.gs_fixed_point_s*, align 8
  %c0.addr = alloca i32*, align 8
  %c1.addr = alloca i32*, align 8
  %c2.addr = alloca i32*, align 8
  %code = alloca i32, align 4
  %e0 = alloca %struct.gs_linear_color_edge_s, align 8
  %e1 = alloca %struct.gs_linear_color_edge_s, align 8
  %e2 = alloca %struct.gs_linear_color_edge_s, align 8
  %num_components = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p0, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p1, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  store %struct.gs_fixed_point_s* %p2, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  store i32* %c0, i32** %c0.addr, align 8, !tbaa !1
  store i32* %c1, i32** %c1.addr, align 8, !tbaa !1
  store i32* %c2, i32** %c2.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.gs_linear_color_edge_s* %e0 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %1) #1
  %2 = bitcast %struct.gs_linear_color_edge_s* %e1 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %2) #1
  %3 = bitcast %struct.gs_linear_color_edge_s* %e2 to i8*
  call void @llvm.lifetime.start(i64 40, i8* %3) #1
  %4 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i32 0, i32 11
  %num_components1 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %6 = load i32, i32* %num_components1, align 4, !tbaa !44
  store i32 %6, i32* %num_components, align 4, !tbaa !5
  %7 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %7, i32 0, i32 1
  %8 = load i32, i32* %y, align 4, !tbaa !63
  %9 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i32 0, i32 1
  %10 = load i32, i32* %y2, align 4, !tbaa !63
  %cmp = icmp eq i32 %8, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %12 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %13 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %14 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %15 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %16 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %17 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %18 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %19 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %20 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %call = call i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s* %11, %struct.gs_fill_attributes_s* %12, %struct.gs_fixed_point_s* %13, %struct.gs_fixed_point_s* %14, %struct.gs_fixed_point_s* %15, %struct.gs_fixed_point_s* %16, i32* %17, i32* %18, i32* %19, i32* %20) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %21 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i32 0, i32 1
  %22 = load i32, i32* %y3, align 4, !tbaa !63
  %23 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %y4 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %23, i32 0, i32 1
  %24 = load i32, i32* %y4, align 4, !tbaa !63
  %cmp5 = icmp eq i32 %22, %24
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %26 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %27 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %28 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %29 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %30 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %31 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %32 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %33 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %34 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %call7 = call i32 @gx_default_fill_linear_color_trapezoid(%struct.gx_device_s* %25, %struct.gs_fill_attributes_s* %26, %struct.gs_fixed_point_s* %27, %struct.gs_fixed_point_s* %28, %struct.gs_fixed_point_s* %29, %struct.gs_fixed_point_s* %30, i32* %31, i32* %32, i32* %33, i32* %34) #4
  store i32 %call7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.8:                                         ; preds = %if.end
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e0, i32 0, i32 0
  %35 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %36 = bitcast %struct.gs_fixed_point_s* %start to i8*
  %37 = bitcast %struct.gs_fixed_point_s* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e0, i32 0, i32 1
  %38 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %39 = bitcast %struct.gs_fixed_point_s* %end to i8*
  %40 = bitcast %struct.gs_fixed_point_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 8, i32 4, i1 false), !tbaa.struct !45
  %41 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %c09 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e0, i32 0, i32 2
  store i32* %41, i32** %c09, align 8, !tbaa !46
  %42 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %c110 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e0, i32 0, i32 3
  store i32* %42, i32** %c110, align 8, !tbaa !48
  %43 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %43, i32 0, i32 0
  %44 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip, align 8, !tbaa !49
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %44, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 0
  %45 = load i32, i32* %x, align 4, !tbaa !51
  %clip_x = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e0, i32 0, i32 4
  store i32 %45, i32* %clip_x, align 4, !tbaa !53
  %start11 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e1, i32 0, i32 0
  %46 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %47 = bitcast %struct.gs_fixed_point_s* %start11 to i8*
  %48 = bitcast %struct.gs_fixed_point_s* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end12 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e1, i32 0, i32 1
  %49 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %50 = bitcast %struct.gs_fixed_point_s* %end12 to i8*
  %51 = bitcast %struct.gs_fixed_point_s* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 4, i1 false), !tbaa.struct !45
  %52 = load i32*, i32** %c0.addr, align 8, !tbaa !1
  %c013 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e1, i32 0, i32 2
  store i32* %52, i32** %c013, align 8, !tbaa !46
  %53 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %c114 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e1, i32 0, i32 3
  store i32* %53, i32** %c114, align 8, !tbaa !48
  %54 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip15 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %54, i32 0, i32 0
  %55 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip15, align 8, !tbaa !49
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %55, i32 0, i32 1
  %x16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  %56 = load i32, i32* %x16, align 4, !tbaa !54
  %clip_x17 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e1, i32 0, i32 4
  store i32 %56, i32* %clip_x17, align 4, !tbaa !53
  %57 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p0.addr, align 8, !tbaa !1
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %57, i32 0, i32 1
  %58 = load i32, i32* %y18, align 4, !tbaa !63
  %59 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y19 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %59, i32 0, i32 1
  %60 = load i32, i32* %y19, align 4, !tbaa !63
  %cmp20 = icmp slt i32 %58, %60
  br i1 %cmp20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.8
  %61 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %y21 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %61, i32 0, i32 1
  %62 = load i32, i32* %y21, align 4, !tbaa !63
  %63 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %63, i32 0, i32 1
  %64 = load i32, i32* %y22, align 4, !tbaa !63
  %cmp23 = icmp slt i32 %62, %64
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  %start25 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 0
  %65 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %66 = bitcast %struct.gs_fixed_point_s* %start25 to i8*
  %67 = bitcast %struct.gs_fixed_point_s* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end26 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 1
  %68 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %69 = bitcast %struct.gs_fixed_point_s* %end26 to i8*
  %70 = bitcast %struct.gs_fixed_point_s* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %70, i64 8, i32 4, i1 false), !tbaa.struct !45
  %71 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %c027 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 2
  store i32* %71, i32** %c027, align 8, !tbaa !46
  %72 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %c128 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 3
  store i32* %72, i32** %c128, align 8, !tbaa !48
  %73 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip29 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %73, i32 0, i32 0
  %74 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip29, align 8, !tbaa !49
  %q30 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %74, i32 0, i32 1
  %x31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q30, i32 0, i32 0
  %75 = load i32, i32* %x31, align 4, !tbaa !54
  %clip_x32 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 4
  store i32 %75, i32* %clip_x32, align 4, !tbaa !53
  %76 = load i32, i32* %num_components, align 4, !tbaa !5
  %call33 = call i32 @check_gradient_overflow(%struct.gs_linear_color_edge_s* %e0, %struct.gs_linear_color_edge_s* %e1, i32 %76) #4
  %tobool = icmp ne i32 %call33, 0
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %if.then.24
  %77 = load i32, i32* %num_components, align 4, !tbaa !5
  %call36 = call i32 @check_gradient_overflow(%struct.gs_linear_color_edge_s* %e0, %struct.gs_linear_color_edge_s* %e2, i32 %77) #4
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.39:                                        ; preds = %if.end.35
  %78 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %79 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %call40 = call i32 @fill_linear_color_trapezoid_nocheck(%struct.gx_device_s* %78, %struct.gs_fill_attributes_s* %79, %struct.gs_linear_color_edge_s* %e0, %struct.gs_linear_color_edge_s* %e1) #4
  store i32 %call40, i32* %code, align 4, !tbaa !5
  %80 = load i32, i32* %code, align 4, !tbaa !5
  %cmp41 = icmp sle i32 %80, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %81 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %81, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.39
  %82 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %83 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %call44 = call i32 @fill_linear_color_trapezoid_nocheck(%struct.gx_device_s* %82, %struct.gs_fill_attributes_s* %83, %struct.gs_linear_color_edge_s* %e0, %struct.gs_linear_color_edge_s* %e2) #4
  store i32 %call44, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %if.end.8
  %start45 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 0
  %84 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p2.addr, align 8, !tbaa !1
  %85 = bitcast %struct.gs_fixed_point_s* %start45 to i8*
  %86 = bitcast %struct.gs_fixed_point_s* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end46 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 1
  %87 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p1.addr, align 8, !tbaa !1
  %88 = bitcast %struct.gs_fixed_point_s* %end46 to i8*
  %89 = bitcast %struct.gs_fixed_point_s* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 8, i32 4, i1 false), !tbaa.struct !45
  %90 = load i32*, i32** %c2.addr, align 8, !tbaa !1
  %c047 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 2
  store i32* %90, i32** %c047, align 8, !tbaa !46
  %91 = load i32*, i32** %c1.addr, align 8, !tbaa !1
  %c148 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 3
  store i32* %91, i32** %c148, align 8, !tbaa !48
  %92 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %clip49 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %92, i32 0, i32 0
  %93 = load %struct.gs_fixed_rect_s*, %struct.gs_fixed_rect_s** %clip49, align 8, !tbaa !49
  %q50 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %93, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q50, i32 0, i32 0
  %94 = load i32, i32* %x51, align 4, !tbaa !54
  %clip_x52 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %e2, i32 0, i32 4
  store i32 %94, i32* %clip_x52, align 4, !tbaa !53
  %95 = load i32, i32* %num_components, align 4, !tbaa !5
  %call53 = call i32 @check_gradient_overflow(%struct.gs_linear_color_edge_s* %e0, %struct.gs_linear_color_edge_s* %e1, i32 %95) #4
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.56:                                        ; preds = %if.else
  %96 = load i32, i32* %num_components, align 4, !tbaa !5
  %call57 = call i32 @check_gradient_overflow(%struct.gs_linear_color_edge_s* %e2, %struct.gs_linear_color_edge_s* %e1, i32 %96) #4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.56
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.60:                                        ; preds = %if.end.56
  %97 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %98 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %call61 = call i32 @fill_linear_color_trapezoid_nocheck(%struct.gx_device_s* %97, %struct.gs_fill_attributes_s* %98, %struct.gs_linear_color_edge_s* %e0, %struct.gs_linear_color_edge_s* %e1) #4
  store i32 %call61, i32* %code, align 4, !tbaa !5
  %99 = load i32, i32* %code, align 4, !tbaa !5
  %cmp62 = icmp sle i32 %99, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  %100 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %100, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.64:                                        ; preds = %if.end.60
  %101 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %102 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %call65 = call i32 @fill_linear_color_trapezoid_nocheck(%struct.gx_device_s* %101, %struct.gs_fill_attributes_s* %102, %struct.gs_linear_color_edge_s* %e2, %struct.gs_linear_color_edge_s* %e1) #4
  store i32 %call65, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.64, %if.then.63, %if.then.59, %if.then.55, %if.end.43, %if.then.42, %if.then.38, %if.then.34, %if.then.6, %if.then
  %103 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast %struct.gs_linear_color_edge_s* %e2 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %104) #1
  %105 = bitcast %struct.gs_linear_color_edge_s* %e1 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %105) #1
  %106 = bitcast %struct.gs_linear_color_edge_s* %e0 to i8*
  call void @llvm.lifetime.end(i64 40, i8* %106) #1
  %107 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_parallelogram(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdevc, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %qx = alloca i32, align 4
  %qy = alloca i32, align 4
  %ym = alloca i32, align 4
  %fill_trapezoid = alloca i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  %left = alloca %struct.gs_fixed_edge_s, align 4
  %right = alloca %struct.gs_fixed_edge_s, align 4
  %code = alloca i32, align 4
  %r = alloca %struct.gs_int_rect_s, align 4
  %px_ = alloca i32, align 4
  %py_ = alloca i32, align 4
  %qx_ = alloca i32, align 4
  %qy_ = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !5
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  store i32 %by, i32* %by.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ym to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %9 = load i32, i32* %by.addr, align 4, !tbaa !5
  %or = or i32 %8, %9
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %11 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %or1 = or i32 %10, %11
  %cmp2 = icmp eq i32 %or1, 0
  br i1 %cmp2, label %if.then, label %if.end.56

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = bitcast %struct.gs_int_rect_s* %r to i8*
  call void @llvm.lifetime.start(i64 16, i8* %12) #1
  br label %do.body

do.body:                                          ; preds = %if.then
  %13 = bitcast i32* %px_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = load i32, i32* %px.addr, align 4, !tbaa !5
  %conv = sext i32 %14 to i64
  %add = add nsw i64 %conv, 127
  %shr = ashr i64 %add, 8
  %conv3 = trunc i64 %shr to i32
  store i32 %conv3, i32* %px_, align 4, !tbaa !5
  %15 = bitcast i32* %py_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load i32, i32* %py.addr, align 4, !tbaa !5
  %conv4 = sext i32 %16 to i64
  %add5 = add nsw i64 %conv4, 127
  %shr6 = ashr i64 %add5, 8
  %conv7 = trunc i64 %shr6 to i32
  store i32 %conv7, i32* %py_, align 4, !tbaa !5
  %17 = bitcast i32* %qx_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %17) #1
  %18 = load i32, i32* %px.addr, align 4, !tbaa !5
  %19 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add8 = add nsw i32 %18, %19
  %20 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %add8, %20
  %conv10 = sext i32 %add9 to i64
  %add11 = add nsw i64 %conv10, 127
  %shr12 = ashr i64 %add11, 8
  %conv13 = trunc i64 %shr12 to i32
  store i32 %conv13, i32* %qx_, align 4, !tbaa !5
  %21 = bitcast i32* %qy_ to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load i32, i32* %py.addr, align 4, !tbaa !5
  %23 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add14 = add nsw i32 %22, %23
  %24 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add15 = add nsw i32 %add14, %24
  %conv16 = sext i32 %add15 to i64
  %add17 = add nsw i64 %conv16, 127
  %shr18 = ashr i64 %add17, 8
  %conv19 = trunc i64 %shr18 to i32
  store i32 %conv19, i32* %qy_, align 4, !tbaa !5
  %25 = load i32, i32* %qx_, align 4, !tbaa !5
  %26 = load i32, i32* %px_, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %25, %26
  br i1 %cmp20, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  %27 = load i32, i32* %qx_, align 4, !tbaa !5
  %p = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p, i32 0, i32 0
  store i32 %27, i32* %x, align 4, !tbaa !64
  %28 = load i32, i32* %px_, align 4, !tbaa !5
  %q = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %x23 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q, i32 0, i32 0
  store i32 %28, i32* %x23, align 4, !tbaa !66
  br label %if.end

if.else:                                          ; preds = %do.body
  %29 = load i32, i32* %px_, align 4, !tbaa !5
  %p24 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x25 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p24, i32 0, i32 0
  store i32 %29, i32* %x25, align 4, !tbaa !64
  %30 = load i32, i32* %qx_, align 4, !tbaa !5
  %q26 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %x27 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q26, i32 0, i32 0
  store i32 %30, i32* %x27, align 4, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.22
  %31 = load i32, i32* %qy_, align 4, !tbaa !5
  %32 = load i32, i32* %py_, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %31, %32
  br i1 %cmp28, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.end
  %33 = load i32, i32* %qy_, align 4, !tbaa !5
  %p31 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p31, i32 0, i32 1
  store i32 %33, i32* %y, align 4, !tbaa !67
  %34 = load i32, i32* %py_, align 4, !tbaa !5
  %q32 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %y33 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q32, i32 0, i32 1
  store i32 %34, i32* %y33, align 4, !tbaa !68
  br label %if.end.39

if.else.34:                                       ; preds = %if.end
  %35 = load i32, i32* %py_, align 4, !tbaa !5
  %p35 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y36 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p35, i32 0, i32 1
  store i32 %35, i32* %y36, align 4, !tbaa !67
  %36 = load i32, i32* %qy_, align 4, !tbaa !5
  %q37 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %y38 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q37, i32 0, i32 1
  store i32 %36, i32* %y38, align 4, !tbaa !68
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.34, %if.then.30
  %37 = bitcast i32* %qy_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %37) #1
  %38 = bitcast i32* %qx_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast i32* %py_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %40 = bitcast i32* %px_ to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  br label %do.cond

do.cond:                                          ; preds = %if.end.39
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.40

do.body.40:                                       ; preds = %do.end
  br label %do.cond.41

do.cond.41:                                       ; preds = %do.body.40
  br label %do.end.42

do.end.42:                                        ; preds = %do.cond.41
  %41 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %41, i32 0, i32 0
  %42 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %42, i32 0, i32 5
  %43 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !42
  %44 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %p43 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x44 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p43, i32 0, i32 0
  %45 = load i32, i32* %x44, align 4, !tbaa !64
  %p45 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y46 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p45, i32 0, i32 1
  %46 = load i32, i32* %y46, align 4, !tbaa !67
  %q47 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %x48 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q47, i32 0, i32 0
  %47 = load i32, i32* %x48, align 4, !tbaa !66
  %p49 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %x50 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p49, i32 0, i32 0
  %48 = load i32, i32* %x50, align 4, !tbaa !64
  %sub = sub nsw i32 %47, %48
  %q51 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 1
  %y52 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %q51, i32 0, i32 1
  %49 = load i32, i32* %y52, align 4, !tbaa !68
  %p53 = getelementptr inbounds %struct.gs_int_rect_s, %struct.gs_int_rect_s* %r, i32 0, i32 0
  %y54 = getelementptr inbounds %struct.gs_int_point_s, %struct.gs_int_point_s* %p53, i32 0, i32 1
  %50 = load i32, i32* %y54, align 4, !tbaa !67
  %sub55 = sub nsw i32 %49, %50
  %51 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %52 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 %43(%struct.gx_device_color_s* %44, i32 %45, i32 %46, i32 %sub, i32 %sub55, %struct.gx_device_s* %51, i32 %52, %struct.gx_rop_source_s* null) #4
  store i32 %call, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  %53 = bitcast %struct.gs_int_rect_s* %r to i8*
  call void @llvm.lifetime.end(i64 16, i8* %53) #1
  br label %cleanup

if.end.56:                                        ; preds = %lor.lhs.false
  %54 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %cmp57 = icmp slt i32 %54, 0
  br i1 %cmp57, label %if.then.59, label %if.end.64

if.then.59:                                       ; preds = %if.end.56
  %55 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %56 = load i32, i32* %px.addr, align 4, !tbaa !5
  %add60 = add nsw i32 %56, %55
  store i32 %add60, i32* %px.addr, align 4, !tbaa !5
  %57 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %58 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add61 = add nsw i32 %58, %57
  store i32 %add61, i32* %py.addr, align 4, !tbaa !5
  %59 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %sub62 = sub nsw i32 0, %59
  store i32 %sub62, i32* %ax.addr, align 4, !tbaa !5
  %60 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %sub63 = sub nsw i32 0, %60
  store i32 %sub63, i32* %ay.addr, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.59, %if.end.56
  %61 = load i32, i32* %by.addr, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %61, 0
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.64
  %62 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %63 = load i32, i32* %px.addr, align 4, !tbaa !5
  %add68 = add nsw i32 %63, %62
  store i32 %add68, i32* %px.addr, align 4, !tbaa !5
  %64 = load i32, i32* %by.addr, align 4, !tbaa !5
  %65 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %65, %64
  store i32 %add69, i32* %py.addr, align 4, !tbaa !5
  %66 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %sub70 = sub nsw i32 0, %66
  store i32 %sub70, i32* %bx.addr, align 4, !tbaa !5
  %67 = load i32, i32* %by.addr, align 4, !tbaa !5
  %sub71 = sub nsw i32 0, %67
  store i32 %sub71, i32* %by.addr, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %if.end.64
  %68 = load i32, i32* %px.addr, align 4, !tbaa !5
  %69 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add73 = add nsw i32 %68, %69
  %70 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add74 = add nsw i32 %add73, %70
  store i32 %add74, i32* %qx, align 4, !tbaa !5
  %71 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %72 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %xor = xor i32 %71, %72
  %cmp75 = icmp slt i32 %xor, 0
  br i1 %cmp75, label %if.then.77, label %if.else.82

if.then.77:                                       ; preds = %if.end.72
  %73 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %74 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %73, %74
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.77
  %75 = load i32, i32* %ax.addr, align 4, !tbaa !5
  store i32 %75, i32* %t, align 4, !tbaa !5
  %76 = load i32, i32* %bx.addr, align 4, !tbaa !5
  store i32 %76, i32* %ax.addr, align 4, !tbaa !5
  %77 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %77, i32* %bx.addr, align 4, !tbaa !5
  %78 = load i32, i32* %ay.addr, align 4, !tbaa !5
  store i32 %78, i32* %t, align 4, !tbaa !5
  %79 = load i32, i32* %by.addr, align 4, !tbaa !5
  store i32 %79, i32* %ay.addr, align 4, !tbaa !5
  %80 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %80, i32* %by.addr, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.then.77
  br label %if.end.92

if.else.82:                                       ; preds = %if.end.72
  %81 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %conv83 = sitofp i32 %81 to double
  %82 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %conv84 = sitofp i32 %82 to double
  %mul = fmul double %conv83, %conv84
  %83 = load i32, i32* %by.addr, align 4, !tbaa !5
  %conv85 = sitofp i32 %83 to double
  %84 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %conv86 = sitofp i32 %84 to double
  %mul87 = fmul double %conv85, %conv86
  %cmp88 = fcmp olt double %mul, %mul87
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.82
  %85 = load i32, i32* %ax.addr, align 4, !tbaa !5
  store i32 %85, i32* %t, align 4, !tbaa !5
  %86 = load i32, i32* %bx.addr, align 4, !tbaa !5
  store i32 %86, i32* %ax.addr, align 4, !tbaa !5
  %87 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %87, i32* %bx.addr, align 4, !tbaa !5
  %88 = load i32, i32* %ay.addr, align 4, !tbaa !5
  store i32 %88, i32* %t, align 4, !tbaa !5
  %89 = load i32, i32* %by.addr, align 4, !tbaa !5
  store i32 %89, i32* %ay.addr, align 4, !tbaa !5
  %90 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %90, i32* %by.addr, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.else.82
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.81
  %91 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %91, i32 0, i32 42
  %fill_trapezoid93 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 27
  %fill_trapezoid94 = bitcast {}** %fill_trapezoid93 to i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)**
  %92 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid94, align 8, !tbaa !69
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* %92, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %93 = load i32, i32* %py.addr, align 4, !tbaa !5
  %94 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add95 = add nsw i32 %93, %94
  %95 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add96 = add nsw i32 %add95, %95
  store i32 %add96, i32* %qy, align 4, !tbaa !5
  %96 = load i32, i32* %px.addr, align 4, !tbaa !5
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x97 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  store i32 %96, i32* %x97, align 4, !tbaa !7
  %start98 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x99 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start98, i32 0, i32 0
  store i32 %96, i32* %x99, align 4, !tbaa !7
  %97 = load i32, i32* %py.addr, align 4, !tbaa !5
  %start100 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start100, i32 0, i32 1
  store i32 %97, i32* %y101, align 4, !tbaa !11
  %start102 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y103 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start102, i32 0, i32 1
  store i32 %97, i32* %y103, align 4, !tbaa !11
  %98 = load i32, i32* %px.addr, align 4, !tbaa !5
  %99 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add104 = add nsw i32 %98, %99
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x105 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  store i32 %add104, i32* %x105, align 4, !tbaa !10
  %100 = load i32, i32* %py.addr, align 4, !tbaa !5
  %101 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add106 = add nsw i32 %100, %101
  %end107 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y108 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end107, i32 0, i32 1
  store i32 %add106, i32* %y108, align 4, !tbaa !26
  %102 = load i32, i32* %px.addr, align 4, !tbaa !5
  %103 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add109 = add nsw i32 %102, %103
  %end110 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x111 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end110, i32 0, i32 0
  store i32 %add109, i32* %x111, align 4, !tbaa !10
  %104 = load i32, i32* %py.addr, align 4, !tbaa !5
  %105 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add112 = add nsw i32 %104, %105
  %end113 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end113, i32 0, i32 1
  store i32 %add112, i32* %y114, align 4, !tbaa !26
  %106 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %107 = load i32, i32* %by.addr, align 4, !tbaa !5
  %cmp115 = icmp slt i32 %106, %107
  br i1 %cmp115, label %if.then.117, label %if.else.169

if.then.117:                                      ; preds = %if.end.92
  %108 = load i32, i32* %py.addr, align 4, !tbaa !5
  %conv118 = sext i32 %108 to i64
  %add119 = add nsw i64 %conv118, 127
  %and = and i64 %add119, -256
  %end120 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y121 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end120, i32 0, i32 1
  %109 = load i32, i32* %y121, align 4, !tbaa !26
  %conv122 = sext i32 %109 to i64
  %add123 = add nsw i64 %conv122, 127
  %and124 = and i64 %add123, -256
  %cmp125 = icmp eq i64 %and, %and124
  br i1 %cmp125, label %if.end.135, label %if.then.127

if.then.127:                                      ; preds = %if.then.117
  %110 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %112 = load i32, i32* %py.addr, align 4, !tbaa !5
  %end128 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y129 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end128, i32 0, i32 1
  %113 = load i32, i32* %y129, align 4, !tbaa !26
  %114 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %115 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call130 = call i32 %110(%struct.gx_device_s* %111, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %112, i32 %113, i32 0, %struct.gx_device_color_s* %114, i32 %115) #4
  store i32 %call130, i32* %code, align 4, !tbaa !5
  %116 = load i32, i32* %code, align 4, !tbaa !5
  %cmp131 = icmp slt i32 %116, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.then.127
  %117 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %117, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.134:                                       ; preds = %if.then.127
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.117
  %start136 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %end137 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %118 = bitcast %struct.gs_fixed_point_s* %start136 to i8*
  %119 = bitcast %struct.gs_fixed_point_s* %end137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 8, i32 4, i1 false), !tbaa.struct !45
  %120 = load i32, i32* %qx, align 4, !tbaa !5
  %end138 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x139 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end138, i32 0, i32 0
  store i32 %120, i32* %x139, align 4, !tbaa !10
  %121 = load i32, i32* %qy, align 4, !tbaa !5
  %end140 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y141 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end140, i32 0, i32 1
  store i32 %121, i32* %y141, align 4, !tbaa !26
  %end142 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y143 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end142, i32 0, i32 1
  %122 = load i32, i32* %y143, align 4, !tbaa !26
  store i32 %122, i32* %ym, align 4, !tbaa !5
  %start144 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y145 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start144, i32 0, i32 1
  %123 = load i32, i32* %y145, align 4, !tbaa !11
  %conv146 = sext i32 %123 to i64
  %add147 = add nsw i64 %conv146, 127
  %and148 = and i64 %add147, -256
  %124 = load i32, i32* %ym, align 4, !tbaa !5
  %conv149 = sext i32 %124 to i64
  %add150 = add nsw i64 %conv149, 127
  %and151 = and i64 %add150, -256
  %cmp152 = icmp eq i64 %and148, %and151
  br i1 %cmp152, label %if.end.162, label %if.then.154

if.then.154:                                      ; preds = %if.end.135
  %125 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %126 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %start155 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y156 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start155, i32 0, i32 1
  %127 = load i32, i32* %y156, align 4, !tbaa !11
  %128 = load i32, i32* %ym, align 4, !tbaa !5
  %129 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %130 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call157 = call i32 %125(%struct.gx_device_s* %126, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %127, i32 %128, i32 0, %struct.gx_device_color_s* %129, i32 %130) #4
  store i32 %call157, i32* %code, align 4, !tbaa !5
  %131 = load i32, i32* %code, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %131, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.154
  %132 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %132, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.161:                                       ; preds = %if.then.154
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.135
  %start163 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %end164 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %133 = bitcast %struct.gs_fixed_point_s* %start163 to i8*
  %134 = bitcast %struct.gs_fixed_point_s* %end164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %133, i8* %134, i64 8, i32 4, i1 false), !tbaa.struct !45
  %135 = load i32, i32* %qx, align 4, !tbaa !5
  %end165 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x166 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end165, i32 0, i32 0
  store i32 %135, i32* %x166, align 4, !tbaa !10
  %136 = load i32, i32* %qy, align 4, !tbaa !5
  %end167 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y168 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end167, i32 0, i32 1
  store i32 %136, i32* %y168, align 4, !tbaa !26
  br label %if.end.222

if.else.169:                                      ; preds = %if.end.92
  %137 = load i32, i32* %py.addr, align 4, !tbaa !5
  %conv170 = sext i32 %137 to i64
  %add171 = add nsw i64 %conv170, 127
  %and172 = and i64 %add171, -256
  %end173 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y174 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end173, i32 0, i32 1
  %138 = load i32, i32* %y174, align 4, !tbaa !26
  %conv175 = sext i32 %138 to i64
  %add176 = add nsw i64 %conv175, 127
  %and177 = and i64 %add176, -256
  %cmp178 = icmp eq i64 %and172, %and177
  br i1 %cmp178, label %if.end.188, label %if.then.180

if.then.180:                                      ; preds = %if.else.169
  %139 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %140 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %141 = load i32, i32* %py.addr, align 4, !tbaa !5
  %end181 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y182 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end181, i32 0, i32 1
  %142 = load i32, i32* %y182, align 4, !tbaa !26
  %143 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %144 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call183 = call i32 %139(%struct.gx_device_s* %140, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %141, i32 %142, i32 0, %struct.gx_device_color_s* %143, i32 %144) #4
  store i32 %call183, i32* %code, align 4, !tbaa !5
  %145 = load i32, i32* %code, align 4, !tbaa !5
  %cmp184 = icmp slt i32 %145, 0
  br i1 %cmp184, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.then.180
  %146 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %146, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.187:                                       ; preds = %if.then.180
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.else.169
  %start189 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %end190 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %147 = bitcast %struct.gs_fixed_point_s* %start189 to i8*
  %148 = bitcast %struct.gs_fixed_point_s* %end190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 8, i32 4, i1 false), !tbaa.struct !45
  %149 = load i32, i32* %qx, align 4, !tbaa !5
  %end191 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x192 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end191, i32 0, i32 0
  store i32 %149, i32* %x192, align 4, !tbaa !10
  %150 = load i32, i32* %qy, align 4, !tbaa !5
  %end193 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y194 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end193, i32 0, i32 1
  store i32 %150, i32* %y194, align 4, !tbaa !26
  %end195 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y196 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end195, i32 0, i32 1
  %151 = load i32, i32* %y196, align 4, !tbaa !26
  store i32 %151, i32* %ym, align 4, !tbaa !5
  %start197 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y198 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start197, i32 0, i32 1
  %152 = load i32, i32* %y198, align 4, !tbaa !11
  %conv199 = sext i32 %152 to i64
  %add200 = add nsw i64 %conv199, 127
  %and201 = and i64 %add200, -256
  %153 = load i32, i32* %ym, align 4, !tbaa !5
  %conv202 = sext i32 %153 to i64
  %add203 = add nsw i64 %conv202, 127
  %and204 = and i64 %add203, -256
  %cmp205 = icmp eq i64 %and201, %and204
  br i1 %cmp205, label %if.end.215, label %if.then.207

if.then.207:                                      ; preds = %if.end.188
  %154 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %155 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %start208 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y209 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start208, i32 0, i32 1
  %156 = load i32, i32* %y209, align 4, !tbaa !11
  %157 = load i32, i32* %ym, align 4, !tbaa !5
  %158 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %159 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call210 = call i32 %154(%struct.gx_device_s* %155, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %156, i32 %157, i32 0, %struct.gx_device_color_s* %158, i32 %159) #4
  store i32 %call210, i32* %code, align 4, !tbaa !5
  %160 = load i32, i32* %code, align 4, !tbaa !5
  %cmp211 = icmp slt i32 %160, 0
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.then.207
  %161 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %161, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.214:                                       ; preds = %if.then.207
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.188
  %start216 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %end217 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %162 = bitcast %struct.gs_fixed_point_s* %start216 to i8*
  %163 = bitcast %struct.gs_fixed_point_s* %end217 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 8, i32 4, i1 false), !tbaa.struct !45
  %164 = load i32, i32* %qx, align 4, !tbaa !5
  %end218 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x219 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end218, i32 0, i32 0
  store i32 %164, i32* %x219, align 4, !tbaa !10
  %165 = load i32, i32* %qy, align 4, !tbaa !5
  %end220 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y221 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end220, i32 0, i32 1
  store i32 %165, i32* %y221, align 4, !tbaa !26
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.215, %if.end.162
  %166 = load i32, i32* %ym, align 4, !tbaa !5
  %conv223 = sext i32 %166 to i64
  %add224 = add nsw i64 %conv223, 127
  %and225 = and i64 %add224, -256
  %167 = load i32, i32* %qy, align 4, !tbaa !5
  %conv226 = sext i32 %167 to i64
  %add227 = add nsw i64 %conv226, 127
  %and228 = and i64 %add227, -256
  %cmp229 = icmp eq i64 %and225, %and228
  br i1 %cmp229, label %if.else.233, label %if.then.231

if.then.231:                                      ; preds = %if.end.222
  %168 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %169 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %170 = load i32, i32* %ym, align 4, !tbaa !5
  %171 = load i32, i32* %qy, align 4, !tbaa !5
  %172 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %173 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call232 = call i32 %168(%struct.gx_device_s* %169, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %170, i32 %171, i32 0, %struct.gx_device_color_s* %172, i32 %173) #4
  store i32 %call232, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else.233:                                      ; preds = %if.end.222
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else.233, %if.then.231, %if.then.213, %if.then.186, %if.then.160, %if.then.133, %do.end.42
  %174 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %174) #1
  %175 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.end(i64 16, i8* %175) #1
  %176 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.end(i64 16, i8* %176) #1
  %177 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %177) #1
  %178 = bitcast i32* %ym to i8*
  call void @llvm.lifetime.end(i64 4, i8* %178) #1
  %179 = bitcast i32* %qy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %179) #1
  %180 = bitcast i32* %qx to i8*
  call void @llvm.lifetime.end(i64 4, i8* %180) #1
  %181 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %181) #1
  %182 = load i32, i32* %retval
  ret i32 %182
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_fill_triangle(%struct.gx_device_s* %dev, i32 %px, i32 %py, i32 %ax, i32 %ay, i32 %bx, i32 %by, %struct.gx_device_color_s* %pdevc, i32 %lop) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %px.addr = alloca i32, align 4
  %py.addr = alloca i32, align 4
  %ax.addr = alloca i32, align 4
  %ay.addr = alloca i32, align 4
  %bx.addr = alloca i32, align 4
  %by.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %t = alloca i32, align 4
  %ym = alloca i32, align 4
  %fill_trapezoid = alloca i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, align 8
  %left = alloca %struct.gs_fixed_edge_s, align 4
  %right = alloca %struct.gs_fixed_edge_s, align 4
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %px, i32* %px.addr, align 4, !tbaa !5
  store i32 %py, i32* %py.addr, align 4, !tbaa !5
  store i32 %ax, i32* %ax.addr, align 4, !tbaa !5
  store i32 %ay, i32* %ay.addr, align 4, !tbaa !5
  store i32 %bx, i32* %bx.addr, align 4, !tbaa !5
  store i32 %by, i32* %by.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  %0 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %ym to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %3, i32 0, i32 42
  %fill_trapezoid1 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 27
  %fill_trapezoid2 = bitcast {}** %fill_trapezoid1 to i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)**
  %4 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid2, align 8, !tbaa !69
  store i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)* %4, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %5 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %6 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #1
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %10 = load i32, i32* %px.addr, align 4, !tbaa !5
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %px.addr, align 4, !tbaa !5
  %11 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %12 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add3 = add nsw i32 %12, %11
  store i32 %add3, i32* %py.addr, align 4, !tbaa !5
  %13 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %14 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %14, %13
  store i32 %sub, i32* %bx.addr, align 4, !tbaa !5
  %15 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %16 = load i32, i32* %by.addr, align 4, !tbaa !5
  %sub4 = sub nsw i32 %16, %15
  store i32 %sub4, i32* %by.addr, align 4, !tbaa !5
  %17 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %sub5 = sub nsw i32 0, %17
  store i32 %sub5, i32* %ax.addr, align 4, !tbaa !5
  %18 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %sub6 = sub nsw i32 0, %18
  store i32 %sub6, i32* %ay.addr, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %by.addr, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %19, 0
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %if.end
  %20 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %21 = load i32, i32* %px.addr, align 4, !tbaa !5
  %add9 = add nsw i32 %21, %20
  store i32 %add9, i32* %px.addr, align 4, !tbaa !5
  %22 = load i32, i32* %by.addr, align 4, !tbaa !5
  %23 = load i32, i32* %py.addr, align 4, !tbaa !5
  %add10 = add nsw i32 %23, %22
  store i32 %add10, i32* %py.addr, align 4, !tbaa !5
  %24 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %25 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %sub11 = sub nsw i32 %25, %24
  store i32 %sub11, i32* %ax.addr, align 4, !tbaa !5
  %26 = load i32, i32* %by.addr, align 4, !tbaa !5
  %27 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %sub12 = sub nsw i32 %27, %26
  store i32 %sub12, i32* %ay.addr, align 4, !tbaa !5
  %28 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %sub13 = sub nsw i32 0, %28
  store i32 %sub13, i32* %bx.addr, align 4, !tbaa !5
  %29 = load i32, i32* %by.addr, align 4, !tbaa !5
  %sub14 = sub nsw i32 0, %29
  store i32 %sub14, i32* %by.addr, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.8, %if.end
  %30 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %31 = load i32, i32* %by.addr, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %30, %31
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %32 = load i32, i32* %ax.addr, align 4, !tbaa !5
  store i32 %32, i32* %t, align 4, !tbaa !5
  %33 = load i32, i32* %bx.addr, align 4, !tbaa !5
  store i32 %33, i32* %ax.addr, align 4, !tbaa !5
  %34 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %34, i32* %bx.addr, align 4, !tbaa !5
  %35 = load i32, i32* %ay.addr, align 4, !tbaa !5
  store i32 %35, i32* %t, align 4, !tbaa !5
  %36 = load i32, i32* %by.addr, align 4, !tbaa !5
  store i32 %36, i32* %ay.addr, align 4, !tbaa !5
  %37 = load i32, i32* %t, align 4, !tbaa !5
  store i32 %37, i32* %by.addr, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %38 = load i32, i32* %px.addr, align 4, !tbaa !5
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  store i32 %38, i32* %x, align 4, !tbaa !7
  %start19 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start19, i32 0, i32 0
  store i32 %38, i32* %x20, align 4, !tbaa !7
  %39 = load i32, i32* %py.addr, align 4, !tbaa !5
  %start21 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start21, i32 0, i32 1
  store i32 %39, i32* %y, align 4, !tbaa !11
  %start22 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start22, i32 0, i32 1
  store i32 %39, i32* %y23, align 4, !tbaa !11
  %40 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %40, 0
  br i1 %cmp24, label %if.then.25, label %if.else.44

if.then.25:                                       ; preds = %if.end.18
  %41 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %41, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.25
  %42 = load i32, i32* %px.addr, align 4, !tbaa !5
  %43 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add28 = add nsw i32 %42, %43
  %start29 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start29, i32 0, i32 0
  store i32 %add28, i32* %x30, align 4, !tbaa !7
  br label %if.end.34

if.else:                                          ; preds = %if.then.25
  %44 = load i32, i32* %px.addr, align 4, !tbaa !5
  %45 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add31 = add nsw i32 %44, %45
  %start32 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start32, i32 0, i32 0
  store i32 %add31, i32* %x33, align 4, !tbaa !7
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.27
  %46 = load i32, i32* %px.addr, align 4, !tbaa !5
  %47 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add35 = add nsw i32 %46, %47
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  store i32 %add35, i32* %x36, align 4, !tbaa !10
  %end37 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end37, i32 0, i32 0
  store i32 %add35, i32* %x38, align 4, !tbaa !10
  %48 = load i32, i32* %py.addr, align 4, !tbaa !5
  %49 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add39 = add nsw i32 %48, %49
  %end40 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y41 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end40, i32 0, i32 1
  store i32 %add39, i32* %y41, align 4, !tbaa !26
  %end42 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end42, i32 0, i32 1
  store i32 %add39, i32* %y43, align 4, !tbaa !26
  %50 = load i32, i32* %py.addr, align 4, !tbaa !5
  store i32 %50, i32* %ym, align 4, !tbaa !5
  br label %if.end.112

if.else.44:                                       ; preds = %if.end.18
  %51 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %52 = load i32, i32* %by.addr, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %51, %52
  br i1 %cmp45, label %if.then.46, label %if.else.68

if.then.46:                                       ; preds = %if.else.44
  %53 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %54 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %53, %54
  br i1 %cmp47, label %if.then.48, label %if.else.55

if.then.48:                                       ; preds = %if.then.46
  %55 = load i32, i32* %px.addr, align 4, !tbaa !5
  %56 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add49 = add nsw i32 %55, %56
  %end50 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end50, i32 0, i32 0
  store i32 %add49, i32* %x51, align 4, !tbaa !10
  %57 = load i32, i32* %px.addr, align 4, !tbaa !5
  %58 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add52 = add nsw i32 %57, %58
  %end53 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x54 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end53, i32 0, i32 0
  store i32 %add52, i32* %x54, align 4, !tbaa !10
  br label %if.end.62

if.else.55:                                       ; preds = %if.then.46
  %59 = load i32, i32* %px.addr, align 4, !tbaa !5
  %60 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add56 = add nsw i32 %59, %60
  %end57 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end57, i32 0, i32 0
  store i32 %add56, i32* %x58, align 4, !tbaa !10
  %61 = load i32, i32* %px.addr, align 4, !tbaa !5
  %62 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add59 = add nsw i32 %61, %62
  %end60 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end60, i32 0, i32 0
  store i32 %add59, i32* %x61, align 4, !tbaa !10
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.55, %if.then.48
  %63 = load i32, i32* %py.addr, align 4, !tbaa !5
  %64 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add63 = add nsw i32 %63, %64
  %end64 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end64, i32 0, i32 1
  store i32 %add63, i32* %y65, align 4, !tbaa !26
  %end66 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y67 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end66, i32 0, i32 1
  store i32 %add63, i32* %y67, align 4, !tbaa !26
  %65 = load i32, i32* %py.addr, align 4, !tbaa !5
  store i32 %65, i32* %ym, align 4, !tbaa !5
  br label %if.end.111

if.else.68:                                       ; preds = %if.else.44
  %66 = load i32, i32* %py.addr, align 4, !tbaa !5
  %67 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add69 = add nsw i32 %66, %67
  store i32 %add69, i32* %ym, align 4, !tbaa !5
  %68 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %69 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %70 = load i32, i32* %by.addr, align 4, !tbaa !5
  %call = call i32 @fixed_mult_quo(i32 %68, i32 %69, i32 %70) #4
  %71 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %call, %71
  br i1 %cmp70, label %if.then.71, label %if.else.89

if.then.71:                                       ; preds = %if.else.68
  %72 = load i32, i32* %px.addr, align 4, !tbaa !5
  %73 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add72 = add nsw i32 %72, %73
  %end73 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x74 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end73, i32 0, i32 0
  store i32 %add72, i32* %x74, align 4, !tbaa !10
  %74 = load i32, i32* %py.addr, align 4, !tbaa !5
  %75 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add75 = add nsw i32 %74, %75
  %end76 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y77 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end76, i32 0, i32 1
  store i32 %add75, i32* %y77, align 4, !tbaa !26
  %76 = load i32, i32* %px.addr, align 4, !tbaa !5
  %77 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add78 = add nsw i32 %76, %77
  %end79 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x80 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end79, i32 0, i32 0
  store i32 %add78, i32* %x80, align 4, !tbaa !10
  %78 = load i32, i32* %py.addr, align 4, !tbaa !5
  %79 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add81 = add nsw i32 %78, %79
  %end82 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y83 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end82, i32 0, i32 1
  store i32 %add81, i32* %y83, align 4, !tbaa !26
  %80 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %81 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %82 = load i32, i32* %py.addr, align 4, !tbaa !5
  %83 = load i32, i32* %ym, align 4, !tbaa !5
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %85 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call84 = call i32 %80(%struct.gx_device_s* %81, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %82, i32 %83, i32 0, %struct.gx_device_color_s* %84, i32 %85) #4
  store i32 %call84, i32* %code, align 4, !tbaa !5
  %start85 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %end86 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %86 = bitcast %struct.gs_fixed_point_s* %start85 to i8*
  %87 = bitcast %struct.gs_fixed_point_s* %end86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %87, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end87 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %end88 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %88 = bitcast %struct.gs_fixed_point_s* %end87 to i8*
  %89 = bitcast %struct.gs_fixed_point_s* %end88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %88, i8* %89, i64 8, i32 4, i1 false), !tbaa.struct !45
  br label %if.end.107

if.else.89:                                       ; preds = %if.else.68
  %90 = load i32, i32* %px.addr, align 4, !tbaa !5
  %91 = load i32, i32* %ax.addr, align 4, !tbaa !5
  %add90 = add nsw i32 %90, %91
  %end91 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x92 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end91, i32 0, i32 0
  store i32 %add90, i32* %x92, align 4, !tbaa !10
  %92 = load i32, i32* %py.addr, align 4, !tbaa !5
  %93 = load i32, i32* %ay.addr, align 4, !tbaa !5
  %add93 = add nsw i32 %92, %93
  %end94 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y95 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end94, i32 0, i32 1
  store i32 %add93, i32* %y95, align 4, !tbaa !26
  %94 = load i32, i32* %px.addr, align 4, !tbaa !5
  %95 = load i32, i32* %bx.addr, align 4, !tbaa !5
  %add96 = add nsw i32 %94, %95
  %end97 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end97, i32 0, i32 0
  store i32 %add96, i32* %x98, align 4, !tbaa !10
  %96 = load i32, i32* %py.addr, align 4, !tbaa !5
  %97 = load i32, i32* %by.addr, align 4, !tbaa !5
  %add99 = add nsw i32 %96, %97
  %end100 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y101 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end100, i32 0, i32 1
  store i32 %add99, i32* %y101, align 4, !tbaa !26
  %98 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %99 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %100 = load i32, i32* %py.addr, align 4, !tbaa !5
  %101 = load i32, i32* %ym, align 4, !tbaa !5
  %102 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %103 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call102 = call i32 %98(%struct.gx_device_s* %99, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %100, i32 %101, i32 0, %struct.gx_device_color_s* %102, i32 %103) #4
  store i32 %call102, i32* %code, align 4, !tbaa !5
  %start103 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %end104 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %104 = bitcast %struct.gs_fixed_point_s* %start103 to i8*
  %105 = bitcast %struct.gs_fixed_point_s* %end104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %104, i8* %105, i64 8, i32 4, i1 false), !tbaa.struct !45
  %end105 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %end106 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %106 = bitcast %struct.gs_fixed_point_s* %end105 to i8*
  %107 = bitcast %struct.gs_fixed_point_s* %end106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 8, i32 4, i1 false), !tbaa.struct !45
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.89, %if.then.71
  %108 = load i32, i32* %code, align 4, !tbaa !5
  %cmp108 = icmp slt i32 %108, 0
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.107
  %109 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %109, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.110:                                       ; preds = %if.end.107
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.end.62
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.end.34
  %110 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid, align 8, !tbaa !1
  %111 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %112 = load i32, i32* %ym, align 4, !tbaa !5
  %end113 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y114 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end113, i32 0, i32 1
  %113 = load i32, i32* %y114, align 4, !tbaa !26
  %114 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %115 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call115 = call i32 %110(%struct.gx_device_s* %111, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %112, i32 %113, i32 0, %struct.gx_device_color_s* %114, i32 %115) #4
  store i32 %call115, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.112, %if.then.109
  %116 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %116) #1
  %117 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.end(i64 16, i8* %117) #1
  %118 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.end(i64 16, i8* %118) #1
  %119 = bitcast i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid to i8*
  call void @llvm.lifetime.end(i64 8, i8* %119) #1
  %120 = bitcast i32* %ym to i8*
  call void @llvm.lifetime.end(i64 4, i8* %120) #1
  %121 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end(i64 4, i8* %121) #1
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_draw_thin_line(%struct.gx_device_s* %dev, i32 %fx0, i32 %fy0, i32 %fx1, i32 %fy1, %struct.gx_device_color_s* %pdevc, i32 %lop, i32 %adjustx, i32 %adjusty) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %fx0.addr = alloca i32, align 4
  %fy0.addr = alloca i32, align 4
  %fx1.addr = alloca i32, align 4
  %fy1.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %lop.addr = alloca i32, align 4
  %adjustx.addr = alloca i32, align 4
  %adjusty.addr = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %itox = alloca i32, align 4
  %itoy = alloca i32, align 4
  %epsilon = alloca i32, align 4
  %h = alloca i32, align 4
  %w = alloca i32, align 4
  %tf = alloca i32, align 4
  %swap_axes = alloca i32, align 4
  %left = alloca %struct.gs_fixed_edge_s, align 4
  %right = alloca %struct.gs_fixed_edge_s, align 4
  %deltay = alloca i32, align 4
  %c = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %c54 = alloca i32, align 4
  %deltax = alloca i32, align 4
  %deltay74 = alloca i32, align 4
  %c106 = alloca i32, align 4
  %c152 = alloca i32, align 4
  %deltax243 = alloca i32, align 4
  %c258 = alloca i32, align 4
  %c286 = alloca i32, align 4
  %deltax307 = alloca i32, align 4
  %deltay308 = alloca i32, align 4
  %c340 = alloca i32, align 4
  %c386 = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %fx0, i32* %fx0.addr, align 4, !tbaa !5
  store i32 %fy0, i32* %fy0.addr, align 4, !tbaa !5
  store i32 %fx1, i32* %fx1.addr, align 4, !tbaa !5
  store i32 %fy1, i32* %fy1.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store i32 %lop, i32* %lop.addr, align 4, !tbaa !5
  store i32 %adjustx, i32* %adjustx.addr, align 4, !tbaa !5
  store i32 %adjusty, i32* %adjusty.addr, align 4, !tbaa !5
  %0 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %itox to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %itoy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %epsilon to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %adjustx.addr, align 4, !tbaa !5
  %6 = load i32, i32* %adjusty.addr, align 4, !tbaa !5
  %or = or i32 %5, %6
  %cmp = icmp eq i32 %or, 0
  %cond = select i1 %cmp, i64 1, i64 0
  %conv = trunc i64 %cond to i32
  store i32 %conv, i32* %epsilon, align 4, !tbaa !5
  %7 = bitcast i32* %h to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %9 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %h, align 4, !tbaa !5
  %10 = bitcast i32* %w to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %12 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %sub1 = sub nsw i32 %11, %12
  store i32 %sub1, i32* %w, align 4, !tbaa !5
  %13 = bitcast i32* %tf to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %swap_axes to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.start(i64 16, i8* %15) #1
  %16 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.start(i64 16, i8* %16) #1
  %17 = load i32, i32* %w, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %17, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end
  %18 = load i32, i32* %w, align 4, !tbaa !5
  %sub4 = sub nsw i32 0, %18
  br label %cond.end

cond.false:                                       ; preds = %do.end
  %19 = load i32, i32* %w, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %sub4, %cond.true ], [ %19, %cond.false ]
  %20 = load i32, i32* %h, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %20, 0
  br i1 %cmp6, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.end
  %21 = load i32, i32* %h, align 4, !tbaa !5
  %sub9 = sub nsw i32 0, %21
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  %22 = load i32, i32* %h, align 4, !tbaa !5
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.8
  %cond12 = phi i32 [ %sub9, %cond.true.8 ], [ %22, %cond.false.10 ]
  %cmp13 = icmp sle i32 %cond5, %cond12
  br i1 %cmp13, label %if.then, label %if.else.232

if.then:                                          ; preds = %cond.end.11
  %23 = load i32, i32* %h, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %24 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  store i32 %24, i32* %tf, align 4, !tbaa !5
  %25 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  store i32 %25, i32* %fx0.addr, align 4, !tbaa !5
  %26 = load i32, i32* %tf, align 4, !tbaa !5
  store i32 %26, i32* %fx1.addr, align 4, !tbaa !5
  %27 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  store i32 %27, i32* %tf, align 4, !tbaa !5
  %28 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  store i32 %28, i32* %fy0.addr, align 4, !tbaa !5
  %29 = load i32, i32* %tf, align 4, !tbaa !5
  store i32 %29, i32* %fy1.addr, align 4, !tbaa !5
  %30 = load i32, i32* %h, align 4, !tbaa !5
  %sub18 = sub nsw i32 0, %30
  store i32 %sub18, i32* %h, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  %31 = load i32, i32* %w, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %31, 0
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %32 = load i32, i32* %adjusty.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %33 = bitcast i32* %deltay to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr = ashr i32 %34, 8
  %shl = shl i32 %shr, 8
  %conv22 = sext i32 %shl to i64
  %add = add nsw i64 %conv22, 128
  %35 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %conv23 = sext i32 %35 to i64
  %sub24 = sub nsw i64 %add, %conv23
  %conv25 = trunc i64 %sub24 to i32
  store i32 %conv25, i32* %deltay, align 4, !tbaa !5
  %36 = load i32, i32* %deltay, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %36, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.end.39

land.lhs.true.28:                                 ; preds = %if.then.21
  %37 = load i32, i32* %deltay, align 4, !tbaa !5
  %conv29 = sext i32 %37 to i64
  %cmp30 = icmp sle i64 %conv29, 128
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %land.lhs.true.28
  %38 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start(i64 4, i8* %38) #1
  %39 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %39, i32 0, i32 0
  %40 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %40, i32 0, i32 5
  %41 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !42
  %42 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %43 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr33 = ashr i32 %43, 8
  %44 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr34 = ashr i32 %44, 8
  %45 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %46 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call = call i32 %41(%struct.gx_device_color_s* %42, i32 %shr33, i32 %shr34, i32 1, i32 1, %struct.gx_device_s* %45, i32 %46, %struct.gx_rop_source_s* null) #4
  store i32 %call, i32* %c, align 4, !tbaa !5
  %47 = load i32, i32* %c, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %47, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.32
  %48 = load i32, i32* %c, align 4, !tbaa !5
  store i32 %48, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.38:                                        ; preds = %if.then.32
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.38, %if.then.37
  %49 = bitcast i32* %c to i8*
  call void @llvm.lifetime.end(i64 4, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.68 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.39

if.end.39:                                        ; preds = %cleanup.cont, %land.lhs.true.28, %if.then.21
  %50 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr40 = ashr i32 %50, 8
  %shl41 = shl i32 %shr40, 8
  %conv42 = sext i32 %shl41 to i64
  %add43 = add nsw i64 %conv42, 128
  %51 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %conv44 = sext i32 %51 to i64
  %sub45 = sub nsw i64 %add43, %conv44
  %conv46 = trunc i64 %sub45 to i32
  store i32 %conv46, i32* %deltay, align 4, !tbaa !5
  %52 = load i32, i32* %deltay, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %52, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.67

land.lhs.true.49:                                 ; preds = %if.end.39
  %53 = load i32, i32* %deltay, align 4, !tbaa !5
  %conv50 = sext i32 %53 to i64
  %cmp51 = icmp sge i64 %conv50, -128
  br i1 %cmp51, label %if.then.53, label %if.end.67

if.then.53:                                       ; preds = %land.lhs.true.49
  %54 = bitcast i32* %c54 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %54) #1
  %55 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type55 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %55, i32 0, i32 0
  %56 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type55, align 8, !tbaa !35
  %fill_rectangle56 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %56, i32 0, i32 5
  %57 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle56, align 8, !tbaa !42
  %58 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %59 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr57 = ashr i32 %59, 8
  %60 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr58 = ashr i32 %60, 8
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %62 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call59 = call i32 %57(%struct.gx_device_color_s* %58, i32 %shr57, i32 %shr58, i32 1, i32 1, %struct.gx_device_s* %61, i32 %62, %struct.gx_rop_source_s* null) #4
  store i32 %call59, i32* %c54, align 4, !tbaa !5
  %63 = load i32, i32* %c54, align 4, !tbaa !5
  %cmp60 = icmp slt i32 %63, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.53
  %64 = load i32, i32* %c54, align 4, !tbaa !5
  store i32 %64, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.64

if.end.63:                                        ; preds = %if.then.53
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.64

cleanup.64:                                       ; preds = %if.end.63, %if.then.62
  %65 = bitcast i32* %c54 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %cleanup.dest.65 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.65, label %cleanup.68 [
    i32 0, label %cleanup.cont.66
  ]

cleanup.cont.66:                                  ; preds = %cleanup.64
  br label %if.end.67

if.end.67:                                        ; preds = %cleanup.cont.66, %land.lhs.true.49, %if.end.39
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.68

cleanup.68:                                       ; preds = %if.end.67, %cleanup.64, %cleanup
  %66 = bitcast i32* %deltay to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cleanup.dest.69 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.69, label %cleanup.477 [
    i32 0, label %cleanup.cont.70
  ]

cleanup.cont.70:                                  ; preds = %cleanup.68
  br label %if.end.171

if.else:                                          ; preds = %land.lhs.true, %if.end
  %67 = load i32, i32* %w, align 4, !tbaa !5
  %cmp71 = icmp ne i32 %67, 0
  br i1 %cmp71, label %if.then.73, label %if.end.170

if.then.73:                                       ; preds = %if.else
  %68 = bitcast i32* %deltax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %68) #1
  %69 = bitcast i32* %deltay74 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %69) #1
  %70 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr75 = ashr i32 %70, 8
  %shl76 = shl i32 %shr75, 8
  %conv77 = sext i32 %shl76 to i64
  %add78 = add nsw i64 %conv77, 128
  %71 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %conv79 = sext i32 %71 to i64
  %sub80 = sub nsw i64 %add78, %conv79
  %conv81 = trunc i64 %sub80 to i32
  store i32 %conv81, i32* %deltay74, align 4, !tbaa !5
  %72 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr82 = ashr i32 %72, 8
  %shl83 = shl i32 %shr82, 8
  %conv84 = sext i32 %shl83 to i64
  %add85 = add nsw i64 %conv84, 128
  %73 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %conv86 = sext i32 %73 to i64
  %sub87 = sub nsw i64 %add85, %conv86
  %conv88 = trunc i64 %sub87 to i32
  store i32 %conv88, i32* %deltax, align 4, !tbaa !5
  %74 = load i32, i32* %deltax, align 4, !tbaa !5
  %cmp89 = icmp slt i32 %74, 0
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.then.73
  %75 = load i32, i32* %deltax, align 4, !tbaa !5
  %sub92 = sub nsw i32 0, %75
  store i32 %sub92, i32* %deltax, align 4, !tbaa !5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.then.73
  %76 = load i32, i32* %deltay74, align 4, !tbaa !5
  %cmp94 = icmp sgt i32 %76, 0
  br i1 %cmp94, label %land.lhs.true.96, label %if.end.119

land.lhs.true.96:                                 ; preds = %if.end.93
  %77 = load i32, i32* %deltay74, align 4, !tbaa !5
  %conv97 = sext i32 %77 to i64
  %cmp98 = icmp sle i64 %conv97, 128
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.119

land.lhs.true.100:                                ; preds = %land.lhs.true.96
  %78 = load i32, i32* %deltay74, align 4, !tbaa !5
  %79 = load i32, i32* %deltax, align 4, !tbaa !5
  %add101 = add nsw i32 %78, %79
  %conv102 = sext i32 %add101 to i64
  %cmp103 = icmp sle i64 %conv102, 128
  br i1 %cmp103, label %if.then.105, label %if.end.119

if.then.105:                                      ; preds = %land.lhs.true.100
  %80 = bitcast i32* %c106 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %80) #1
  %81 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type107 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %81, i32 0, i32 0
  %82 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type107, align 8, !tbaa !35
  %fill_rectangle108 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %82, i32 0, i32 5
  %83 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle108, align 8, !tbaa !42
  %84 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %85 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr109 = ashr i32 %85, 8
  %86 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr110 = ashr i32 %86, 8
  %87 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %88 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call111 = call i32 %83(%struct.gx_device_color_s* %84, i32 %shr109, i32 %shr110, i32 1, i32 1, %struct.gx_device_s* %87, i32 %88, %struct.gx_rop_source_s* null) #4
  store i32 %call111, i32* %c106, align 4, !tbaa !5
  %89 = load i32, i32* %c106, align 4, !tbaa !5
  %cmp112 = icmp slt i32 %89, 0
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.105
  %90 = load i32, i32* %c106, align 4, !tbaa !5
  store i32 %90, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.116

if.end.115:                                       ; preds = %if.then.105
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.116

cleanup.116:                                      ; preds = %if.end.115, %if.then.114
  %91 = bitcast i32* %c106 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %91) #1
  %cleanup.dest.117 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.117, label %cleanup.166 [
    i32 0, label %cleanup.cont.118
  ]

cleanup.cont.118:                                 ; preds = %cleanup.116
  br label %if.end.119

if.end.119:                                       ; preds = %cleanup.cont.118, %land.lhs.true.100, %land.lhs.true.96, %if.end.93
  %92 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr120 = ashr i32 %92, 8
  %shl121 = shl i32 %shr120, 8
  %conv122 = sext i32 %shl121 to i64
  %add123 = add nsw i64 %conv122, 128
  %93 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %conv124 = sext i32 %93 to i64
  %sub125 = sub nsw i64 %add123, %conv124
  %conv126 = trunc i64 %sub125 to i32
  store i32 %conv126, i32* %deltay74, align 4, !tbaa !5
  %94 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr127 = ashr i32 %94, 8
  %shl128 = shl i32 %shr127, 8
  %conv129 = sext i32 %shl128 to i64
  %add130 = add nsw i64 %conv129, 128
  %95 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %conv131 = sext i32 %95 to i64
  %sub132 = sub nsw i64 %add130, %conv131
  %conv133 = trunc i64 %sub132 to i32
  store i32 %conv133, i32* %deltax, align 4, !tbaa !5
  %96 = load i32, i32* %deltax, align 4, !tbaa !5
  %cmp134 = icmp slt i32 %96, 0
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %if.end.119
  %97 = load i32, i32* %deltax, align 4, !tbaa !5
  %sub137 = sub nsw i32 0, %97
  store i32 %sub137, i32* %deltax, align 4, !tbaa !5
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %if.end.119
  %98 = load i32, i32* %deltay74, align 4, !tbaa !5
  %cmp139 = icmp slt i32 %98, 0
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.165

land.lhs.true.141:                                ; preds = %if.end.138
  %99 = load i32, i32* %deltay74, align 4, !tbaa !5
  %conv142 = sext i32 %99 to i64
  %cmp143 = icmp sge i64 %conv142, -128
  br i1 %cmp143, label %land.lhs.true.145, label %if.end.165

land.lhs.true.145:                                ; preds = %land.lhs.true.141
  %100 = load i32, i32* %deltay74, align 4, !tbaa !5
  %sub146 = sub nsw i32 0, %100
  %101 = load i32, i32* %deltax, align 4, !tbaa !5
  %add147 = add nsw i32 %sub146, %101
  %conv148 = sext i32 %add147 to i64
  %cmp149 = icmp sle i64 %conv148, 128
  br i1 %cmp149, label %if.then.151, label %if.end.165

if.then.151:                                      ; preds = %land.lhs.true.145
  %102 = bitcast i32* %c152 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %102) #1
  %103 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type153 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %103, i32 0, i32 0
  %104 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type153, align 8, !tbaa !35
  %fill_rectangle154 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %104, i32 0, i32 5
  %105 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle154, align 8, !tbaa !42
  %106 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %107 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr155 = ashr i32 %107, 8
  %108 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr156 = ashr i32 %108, 8
  %109 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %110 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call157 = call i32 %105(%struct.gx_device_color_s* %106, i32 %shr155, i32 %shr156, i32 1, i32 1, %struct.gx_device_s* %109, i32 %110, %struct.gx_rop_source_s* null) #4
  store i32 %call157, i32* %c152, align 4, !tbaa !5
  %111 = load i32, i32* %c152, align 4, !tbaa !5
  %cmp158 = icmp slt i32 %111, 0
  br i1 %cmp158, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.151
  %112 = load i32, i32* %c152, align 4, !tbaa !5
  store i32 %112, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.162

if.end.161:                                       ; preds = %if.then.151
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.162

cleanup.162:                                      ; preds = %if.end.161, %if.then.160
  %113 = bitcast i32* %c152 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %cleanup.dest.163 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.163, label %cleanup.166 [
    i32 0, label %cleanup.cont.164
  ]

cleanup.cont.164:                                 ; preds = %cleanup.162
  br label %if.end.165

if.end.165:                                       ; preds = %cleanup.cont.164, %land.lhs.true.145, %land.lhs.true.141, %if.end.138
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.166

cleanup.166:                                      ; preds = %if.end.165, %cleanup.162, %cleanup.116
  %114 = bitcast i32* %deltay74 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %deltax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %cleanup.dest.168 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.168, label %cleanup.477 [
    i32 0, label %cleanup.cont.169
  ]

cleanup.cont.169:                                 ; preds = %cleanup.166
  br label %if.end.170

if.end.170:                                       ; preds = %cleanup.cont.169, %if.else
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %cleanup.cont.70
  %116 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %117 = load i32, i32* %epsilon, align 4, !tbaa !5
  %sub172 = sub nsw i32 %116, %117
  %shr173 = ashr i32 %sub172, 8
  store i32 %shr173, i32* %ix, align 4, !tbaa !5
  %118 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %119 = load i32, i32* %epsilon, align 4, !tbaa !5
  %sub174 = sub nsw i32 %118, %119
  %shr175 = ashr i32 %sub174, 8
  store i32 %shr175, i32* %itox, align 4, !tbaa !5
  %120 = load i32, i32* %itox, align 4, !tbaa !5
  %121 = load i32, i32* %ix, align 4, !tbaa !5
  %cmp176 = icmp eq i32 %120, %121
  br i1 %cmp176, label %if.then.178, label %if.end.197

if.then.178:                                      ; preds = %if.end.171
  %122 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %conv179 = sext i32 %122 to i64
  %add180 = add nsw i64 %conv179, 128
  %sub181 = sub nsw i64 %add180, 1
  %shr182 = ashr i64 %sub181, 8
  %conv183 = trunc i64 %shr182 to i32
  store i32 %conv183, i32* %iy, align 4, !tbaa !5
  %123 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %conv184 = sext i32 %123 to i64
  %add185 = add nsw i64 %conv184, 128
  %sub186 = sub nsw i64 %add185, 1
  %shr187 = ashr i64 %sub186, 8
  %conv188 = trunc i64 %shr187 to i32
  store i32 %conv188, i32* %itoy, align 4, !tbaa !5
  %124 = load i32, i32* %itoy, align 4, !tbaa !5
  %125 = load i32, i32* %iy, align 4, !tbaa !5
  %sub189 = sub nsw i32 %124, %125
  store i32 %sub189, i32* %itoy, align 4, !tbaa !5
  %126 = load i32, i32* %itoy, align 4, !tbaa !5
  %cmp190 = icmp sle i32 %126, 0
  br i1 %cmp190, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.then.178
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.193:                                       ; preds = %if.then.178
  %127 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type194 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %127, i32 0, i32 0
  %128 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type194, align 8, !tbaa !35
  %fill_rectangle195 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %128, i32 0, i32 5
  %129 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle195, align 8, !tbaa !42
  %130 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %131 = load i32, i32* %ix, align 4, !tbaa !5
  %132 = load i32, i32* %iy, align 4, !tbaa !5
  %133 = load i32, i32* %itoy, align 4, !tbaa !5
  %134 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %135 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call196 = call i32 %129(%struct.gx_device_color_s* %130, i32 %131, i32 %132, i32 1, i32 %133, %struct.gx_device_s* %134, i32 %135, %struct.gx_rop_source_s* null) #4
  store i32 %call196, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.197:                                       ; preds = %if.end.171
  %136 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %conv198 = sext i32 %136 to i64
  %sub199 = sub nsw i64 %conv198, 128
  %add200 = add nsw i64 %sub199, 1
  %137 = load i32, i32* %epsilon, align 4, !tbaa !5
  %conv201 = sext i32 %137 to i64
  %sub202 = sub nsw i64 %add200, %conv201
  %conv203 = trunc i64 %sub202 to i32
  %start = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  store i32 %conv203, i32* %x, align 4, !tbaa !7
  %start204 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x205 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start204, i32 0, i32 0
  %138 = load i32, i32* %x205, align 4, !tbaa !7
  %conv206 = sext i32 %138 to i64
  %add207 = add nsw i64 %conv206, 256
  %conv208 = trunc i64 %add207 to i32
  %start209 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x210 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start209, i32 0, i32 0
  store i32 %conv208, i32* %x210, align 4, !tbaa !7
  %139 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %conv211 = sext i32 %139 to i64
  %sub212 = sub nsw i64 %conv211, 128
  %add213 = add nsw i64 %sub212, 1
  %140 = load i32, i32* %epsilon, align 4, !tbaa !5
  %conv214 = sext i32 %140 to i64
  %sub215 = sub nsw i64 %add213, %conv214
  %conv216 = trunc i64 %sub215 to i32
  %end = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x217 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  store i32 %conv216, i32* %x217, align 4, !tbaa !10
  %end218 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x219 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end218, i32 0, i32 0
  %141 = load i32, i32* %x219, align 4, !tbaa !10
  %conv220 = sext i32 %141 to i64
  %add221 = add nsw i64 %conv220, 256
  %conv222 = trunc i64 %add221 to i32
  %end223 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x224 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end223, i32 0, i32 0
  store i32 %conv222, i32* %x224, align 4, !tbaa !10
  %142 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %start225 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start225, i32 0, i32 1
  store i32 %142, i32* %y, align 4, !tbaa !11
  %start226 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y227 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start226, i32 0, i32 1
  store i32 %142, i32* %y227, align 4, !tbaa !11
  %143 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %end228 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y229 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end228, i32 0, i32 1
  store i32 %143, i32* %y229, align 4, !tbaa !26
  %end230 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y231 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end230, i32 0, i32 1
  store i32 %143, i32* %y231, align 4, !tbaa !26
  store i32 0, i32* %swap_axes, align 4, !tbaa !5
  br label %if.end.470

if.else.232:                                      ; preds = %cond.end.11
  %144 = load i32, i32* %w, align 4, !tbaa !5
  %cmp233 = icmp slt i32 %144, 0
  br i1 %cmp233, label %if.then.235, label %if.end.237

if.then.235:                                      ; preds = %if.else.232
  %145 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  store i32 %145, i32* %tf, align 4, !tbaa !5
  %146 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  store i32 %146, i32* %fx0.addr, align 4, !tbaa !5
  %147 = load i32, i32* %tf, align 4, !tbaa !5
  store i32 %147, i32* %fx1.addr, align 4, !tbaa !5
  %148 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  store i32 %148, i32* %tf, align 4, !tbaa !5
  %149 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  store i32 %149, i32* %fy0.addr, align 4, !tbaa !5
  %150 = load i32, i32* %tf, align 4, !tbaa !5
  store i32 %150, i32* %fy1.addr, align 4, !tbaa !5
  %151 = load i32, i32* %w, align 4, !tbaa !5
  %sub236 = sub nsw i32 0, %151
  store i32 %sub236, i32* %w, align 4, !tbaa !5
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.else.232
  %152 = load i32, i32* %h, align 4, !tbaa !5
  %cmp238 = icmp eq i32 %152, 0
  br i1 %cmp238, label %land.lhs.true.240, label %if.else.303

land.lhs.true.240:                                ; preds = %if.end.237
  %153 = load i32, i32* %adjustx.addr, align 4, !tbaa !5
  %tobool241 = icmp ne i32 %153, 0
  br i1 %tobool241, label %if.then.242, label %if.else.303

if.then.242:                                      ; preds = %land.lhs.true.240
  %154 = bitcast i32* %deltax243 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %154) #1
  %155 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr244 = ashr i32 %155, 8
  %shl245 = shl i32 %shr244, 8
  %conv246 = sext i32 %shl245 to i64
  %add247 = add nsw i64 %conv246, 128
  %156 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %conv248 = sext i32 %156 to i64
  %sub249 = sub nsw i64 %add247, %conv248
  %conv250 = trunc i64 %sub249 to i32
  store i32 %conv250, i32* %deltax243, align 4, !tbaa !5
  %157 = load i32, i32* %deltax243, align 4, !tbaa !5
  %cmp251 = icmp sgt i32 %157, 0
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.271

land.lhs.true.253:                                ; preds = %if.then.242
  %158 = load i32, i32* %deltax243, align 4, !tbaa !5
  %conv254 = sext i32 %158 to i64
  %cmp255 = icmp sle i64 %conv254, 128
  br i1 %cmp255, label %if.then.257, label %if.end.271

if.then.257:                                      ; preds = %land.lhs.true.253
  %159 = bitcast i32* %c258 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %159) #1
  %160 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type259 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %160, i32 0, i32 0
  %161 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type259, align 8, !tbaa !35
  %fill_rectangle260 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %161, i32 0, i32 5
  %162 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle260, align 8, !tbaa !42
  %163 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %164 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr261 = ashr i32 %164, 8
  %165 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr262 = ashr i32 %165, 8
  %166 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %167 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call263 = call i32 %162(%struct.gx_device_color_s* %163, i32 %shr261, i32 %shr262, i32 1, i32 1, %struct.gx_device_s* %166, i32 %167, %struct.gx_rop_source_s* null) #4
  store i32 %call263, i32* %c258, align 4, !tbaa !5
  %168 = load i32, i32* %c258, align 4, !tbaa !5
  %cmp264 = icmp slt i32 %168, 0
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.then.257
  %169 = load i32, i32* %c258, align 4, !tbaa !5
  store i32 %169, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.268

if.end.267:                                       ; preds = %if.then.257
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.268

cleanup.268:                                      ; preds = %if.end.267, %if.then.266
  %170 = bitcast i32* %c258 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  %cleanup.dest.269 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.269, label %cleanup.300 [
    i32 0, label %cleanup.cont.270
  ]

cleanup.cont.270:                                 ; preds = %cleanup.268
  br label %if.end.271

if.end.271:                                       ; preds = %cleanup.cont.270, %land.lhs.true.253, %if.then.242
  %171 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr272 = ashr i32 %171, 8
  %shl273 = shl i32 %shr272, 8
  %conv274 = sext i32 %shl273 to i64
  %add275 = add nsw i64 %conv274, 128
  %172 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %conv276 = sext i32 %172 to i64
  %sub277 = sub nsw i64 %add275, %conv276
  %conv278 = trunc i64 %sub277 to i32
  store i32 %conv278, i32* %deltax243, align 4, !tbaa !5
  %173 = load i32, i32* %deltax243, align 4, !tbaa !5
  %cmp279 = icmp slt i32 %173, 0
  br i1 %cmp279, label %land.lhs.true.281, label %if.end.299

land.lhs.true.281:                                ; preds = %if.end.271
  %174 = load i32, i32* %deltax243, align 4, !tbaa !5
  %conv282 = sext i32 %174 to i64
  %cmp283 = icmp sge i64 %conv282, -128
  br i1 %cmp283, label %if.then.285, label %if.end.299

if.then.285:                                      ; preds = %land.lhs.true.281
  %175 = bitcast i32* %c286 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %175) #1
  %176 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type287 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %176, i32 0, i32 0
  %177 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type287, align 8, !tbaa !35
  %fill_rectangle288 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %177, i32 0, i32 5
  %178 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle288, align 8, !tbaa !42
  %179 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %180 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr289 = ashr i32 %180, 8
  %181 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr290 = ashr i32 %181, 8
  %182 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %183 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call291 = call i32 %178(%struct.gx_device_color_s* %179, i32 %shr289, i32 %shr290, i32 1, i32 1, %struct.gx_device_s* %182, i32 %183, %struct.gx_rop_source_s* null) #4
  store i32 %call291, i32* %c286, align 4, !tbaa !5
  %184 = load i32, i32* %c286, align 4, !tbaa !5
  %cmp292 = icmp slt i32 %184, 0
  br i1 %cmp292, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.then.285
  %185 = load i32, i32* %c286, align 4, !tbaa !5
  store i32 %185, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.296

if.end.295:                                       ; preds = %if.then.285
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.296

cleanup.296:                                      ; preds = %if.end.295, %if.then.294
  %186 = bitcast i32* %c286 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %186) #1
  %cleanup.dest.297 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.297, label %cleanup.300 [
    i32 0, label %cleanup.cont.298
  ]

cleanup.cont.298:                                 ; preds = %cleanup.296
  br label %if.end.299

if.end.299:                                       ; preds = %cleanup.cont.298, %land.lhs.true.281, %if.end.271
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.300

cleanup.300:                                      ; preds = %if.end.299, %cleanup.296, %cleanup.268
  %187 = bitcast i32* %deltax243 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %187) #1
  %cleanup.dest.301 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.301, label %cleanup.477 [
    i32 0, label %cleanup.cont.302
  ]

cleanup.cont.302:                                 ; preds = %cleanup.300
  br label %if.end.405

if.else.303:                                      ; preds = %land.lhs.true.240, %if.end.237
  %188 = load i32, i32* %h, align 4, !tbaa !5
  %cmp304 = icmp ne i32 %188, 0
  br i1 %cmp304, label %if.then.306, label %if.end.404

if.then.306:                                      ; preds = %if.else.303
  %189 = bitcast i32* %deltax307 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %189) #1
  %190 = bitcast i32* %deltay308 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %190) #1
  %191 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr309 = ashr i32 %191, 8
  %shl310 = shl i32 %shr309, 8
  %conv311 = sext i32 %shl310 to i64
  %add312 = add nsw i64 %conv311, 128
  %192 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %conv313 = sext i32 %192 to i64
  %sub314 = sub nsw i64 %add312, %conv313
  %conv315 = trunc i64 %sub314 to i32
  store i32 %conv315, i32* %deltax307, align 4, !tbaa !5
  %193 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr316 = ashr i32 %193, 8
  %shl317 = shl i32 %shr316, 8
  %conv318 = sext i32 %shl317 to i64
  %add319 = add nsw i64 %conv318, 128
  %194 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %conv320 = sext i32 %194 to i64
  %sub321 = sub nsw i64 %add319, %conv320
  %conv322 = trunc i64 %sub321 to i32
  store i32 %conv322, i32* %deltay308, align 4, !tbaa !5
  %195 = load i32, i32* %deltay308, align 4, !tbaa !5
  %cmp323 = icmp slt i32 %195, 0
  br i1 %cmp323, label %if.then.325, label %if.end.327

if.then.325:                                      ; preds = %if.then.306
  %196 = load i32, i32* %deltay308, align 4, !tbaa !5
  %sub326 = sub nsw i32 0, %196
  store i32 %sub326, i32* %deltay308, align 4, !tbaa !5
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %if.then.306
  %197 = load i32, i32* %deltax307, align 4, !tbaa !5
  %cmp328 = icmp sgt i32 %197, 0
  br i1 %cmp328, label %land.lhs.true.330, label %if.end.353

land.lhs.true.330:                                ; preds = %if.end.327
  %198 = load i32, i32* %deltax307, align 4, !tbaa !5
  %conv331 = sext i32 %198 to i64
  %cmp332 = icmp sle i64 %conv331, 128
  br i1 %cmp332, label %land.lhs.true.334, label %if.end.353

land.lhs.true.334:                                ; preds = %land.lhs.true.330
  %199 = load i32, i32* %deltax307, align 4, !tbaa !5
  %200 = load i32, i32* %deltay308, align 4, !tbaa !5
  %add335 = add nsw i32 %199, %200
  %conv336 = sext i32 %add335 to i64
  %cmp337 = icmp sle i64 %conv336, 128
  br i1 %cmp337, label %if.then.339, label %if.end.353

if.then.339:                                      ; preds = %land.lhs.true.334
  %201 = bitcast i32* %c340 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %201) #1
  %202 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type341 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %202, i32 0, i32 0
  %203 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type341, align 8, !tbaa !35
  %fill_rectangle342 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %203, i32 0, i32 5
  %204 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle342, align 8, !tbaa !42
  %205 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %206 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %shr343 = ashr i32 %206, 8
  %207 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %shr344 = ashr i32 %207, 8
  %208 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %209 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call345 = call i32 %204(%struct.gx_device_color_s* %205, i32 %shr343, i32 %shr344, i32 1, i32 1, %struct.gx_device_s* %208, i32 %209, %struct.gx_rop_source_s* null) #4
  store i32 %call345, i32* %c340, align 4, !tbaa !5
  %210 = load i32, i32* %c340, align 4, !tbaa !5
  %cmp346 = icmp slt i32 %210, 0
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.then.339
  %211 = load i32, i32* %c340, align 4, !tbaa !5
  store i32 %211, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.350

if.end.349:                                       ; preds = %if.then.339
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.350

cleanup.350:                                      ; preds = %if.end.349, %if.then.348
  %212 = bitcast i32* %c340 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %cleanup.dest.351 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.351, label %cleanup.400 [
    i32 0, label %cleanup.cont.352
  ]

cleanup.cont.352:                                 ; preds = %cleanup.350
  br label %if.end.353

if.end.353:                                       ; preds = %cleanup.cont.352, %land.lhs.true.334, %land.lhs.true.330, %if.end.327
  %213 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr354 = ashr i32 %213, 8
  %shl355 = shl i32 %shr354, 8
  %conv356 = sext i32 %shl355 to i64
  %add357 = add nsw i64 %conv356, 128
  %214 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %conv358 = sext i32 %214 to i64
  %sub359 = sub nsw i64 %add357, %conv358
  %conv360 = trunc i64 %sub359 to i32
  store i32 %conv360, i32* %deltax307, align 4, !tbaa !5
  %215 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr361 = ashr i32 %215, 8
  %shl362 = shl i32 %shr361, 8
  %conv363 = sext i32 %shl362 to i64
  %add364 = add nsw i64 %conv363, 128
  %216 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %conv365 = sext i32 %216 to i64
  %sub366 = sub nsw i64 %add364, %conv365
  %conv367 = trunc i64 %sub366 to i32
  store i32 %conv367, i32* %deltay308, align 4, !tbaa !5
  %217 = load i32, i32* %deltay308, align 4, !tbaa !5
  %cmp368 = icmp slt i32 %217, 0
  br i1 %cmp368, label %if.then.370, label %if.end.372

if.then.370:                                      ; preds = %if.end.353
  %218 = load i32, i32* %deltay308, align 4, !tbaa !5
  %sub371 = sub nsw i32 0, %218
  store i32 %sub371, i32* %deltay308, align 4, !tbaa !5
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.370, %if.end.353
  %219 = load i32, i32* %deltax307, align 4, !tbaa !5
  %cmp373 = icmp slt i32 %219, 0
  br i1 %cmp373, label %land.lhs.true.375, label %if.end.399

land.lhs.true.375:                                ; preds = %if.end.372
  %220 = load i32, i32* %deltax307, align 4, !tbaa !5
  %conv376 = sext i32 %220 to i64
  %cmp377 = icmp sge i64 %conv376, -128
  br i1 %cmp377, label %land.lhs.true.379, label %if.end.399

land.lhs.true.379:                                ; preds = %land.lhs.true.375
  %221 = load i32, i32* %deltax307, align 4, !tbaa !5
  %sub380 = sub nsw i32 0, %221
  %222 = load i32, i32* %deltay308, align 4, !tbaa !5
  %add381 = add nsw i32 %sub380, %222
  %conv382 = sext i32 %add381 to i64
  %cmp383 = icmp sle i64 %conv382, 128
  br i1 %cmp383, label %if.then.385, label %if.end.399

if.then.385:                                      ; preds = %land.lhs.true.379
  %223 = bitcast i32* %c386 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %223) #1
  %224 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type387 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %224, i32 0, i32 0
  %225 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type387, align 8, !tbaa !35
  %fill_rectangle388 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %225, i32 0, i32 5
  %226 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle388, align 8, !tbaa !42
  %227 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %228 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %shr389 = ashr i32 %228, 8
  %229 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %shr390 = ashr i32 %229, 8
  %230 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %231 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call391 = call i32 %226(%struct.gx_device_color_s* %227, i32 %shr389, i32 %shr390, i32 1, i32 1, %struct.gx_device_s* %230, i32 %231, %struct.gx_rop_source_s* null) #4
  store i32 %call391, i32* %c386, align 4, !tbaa !5
  %232 = load i32, i32* %c386, align 4, !tbaa !5
  %cmp392 = icmp slt i32 %232, 0
  br i1 %cmp392, label %if.then.394, label %if.end.395

if.then.394:                                      ; preds = %if.then.385
  %233 = load i32, i32* %c386, align 4, !tbaa !5
  store i32 %233, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.396

if.end.395:                                       ; preds = %if.then.385
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.396

cleanup.396:                                      ; preds = %if.end.395, %if.then.394
  %234 = bitcast i32* %c386 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %234) #1
  %cleanup.dest.397 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.397, label %cleanup.400 [
    i32 0, label %cleanup.cont.398
  ]

cleanup.cont.398:                                 ; preds = %cleanup.396
  br label %if.end.399

if.end.399:                                       ; preds = %cleanup.cont.398, %land.lhs.true.379, %land.lhs.true.375, %if.end.372
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.400

cleanup.400:                                      ; preds = %if.end.399, %cleanup.396, %cleanup.350
  %235 = bitcast i32* %deltay308 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %235) #1
  %236 = bitcast i32* %deltax307 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %236) #1
  %cleanup.dest.402 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.402, label %cleanup.477 [
    i32 0, label %cleanup.cont.403
  ]

cleanup.cont.403:                                 ; preds = %cleanup.400
  br label %if.end.404

if.end.404:                                       ; preds = %cleanup.cont.403, %if.else.303
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %cleanup.cont.302
  %237 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %238 = load i32, i32* %epsilon, align 4, !tbaa !5
  %sub406 = sub nsw i32 %237, %238
  %shr407 = ashr i32 %sub406, 8
  store i32 %shr407, i32* %iy, align 4, !tbaa !5
  %239 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %240 = load i32, i32* %epsilon, align 4, !tbaa !5
  %sub408 = sub nsw i32 %239, %240
  %shr409 = ashr i32 %sub408, 8
  store i32 %shr409, i32* %itoy, align 4, !tbaa !5
  %241 = load i32, i32* %itoy, align 4, !tbaa !5
  %242 = load i32, i32* %iy, align 4, !tbaa !5
  %cmp410 = icmp eq i32 %241, %242
  br i1 %cmp410, label %if.then.412, label %if.end.431

if.then.412:                                      ; preds = %if.end.405
  %243 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %conv413 = sext i32 %243 to i64
  %add414 = add nsw i64 %conv413, 128
  %sub415 = sub nsw i64 %add414, 1
  %shr416 = ashr i64 %sub415, 8
  %conv417 = trunc i64 %shr416 to i32
  store i32 %conv417, i32* %ix, align 4, !tbaa !5
  %244 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %conv418 = sext i32 %244 to i64
  %add419 = add nsw i64 %conv418, 128
  %sub420 = sub nsw i64 %add419, 1
  %shr421 = ashr i64 %sub420, 8
  %conv422 = trunc i64 %shr421 to i32
  store i32 %conv422, i32* %itox, align 4, !tbaa !5
  %245 = load i32, i32* %itox, align 4, !tbaa !5
  %246 = load i32, i32* %ix, align 4, !tbaa !5
  %sub423 = sub nsw i32 %245, %246
  store i32 %sub423, i32* %itox, align 4, !tbaa !5
  %247 = load i32, i32* %itox, align 4, !tbaa !5
  %cmp424 = icmp sle i32 %247, 0
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.then.412
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.427:                                       ; preds = %if.then.412
  %248 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type428 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %248, i32 0, i32 0
  %249 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type428, align 8, !tbaa !35
  %fill_rectangle429 = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %249, i32 0, i32 5
  %250 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle429, align 8, !tbaa !42
  %251 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %252 = load i32, i32* %ix, align 4, !tbaa !5
  %253 = load i32, i32* %iy, align 4, !tbaa !5
  %254 = load i32, i32* %itox, align 4, !tbaa !5
  %255 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %256 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call430 = call i32 %250(%struct.gx_device_color_s* %251, i32 %252, i32 %253, i32 %254, i32 1, %struct.gx_device_s* %255, i32 %256, %struct.gx_rop_source_s* null) #4
  store i32 %call430, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

if.end.431:                                       ; preds = %if.end.405
  %257 = load i32, i32* %fy0.addr, align 4, !tbaa !5
  %conv432 = sext i32 %257 to i64
  %sub433 = sub nsw i64 %conv432, 128
  %add434 = add nsw i64 %sub433, 1
  %258 = load i32, i32* %epsilon, align 4, !tbaa !5
  %conv435 = sext i32 %258 to i64
  %sub436 = sub nsw i64 %add434, %conv435
  %conv437 = trunc i64 %sub436 to i32
  %start438 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x439 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start438, i32 0, i32 0
  store i32 %conv437, i32* %x439, align 4, !tbaa !7
  %start440 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %x441 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start440, i32 0, i32 0
  %259 = load i32, i32* %x441, align 4, !tbaa !7
  %conv442 = sext i32 %259 to i64
  %add443 = add nsw i64 %conv442, 256
  %conv444 = trunc i64 %add443 to i32
  %start445 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %x446 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start445, i32 0, i32 0
  store i32 %conv444, i32* %x446, align 4, !tbaa !7
  %260 = load i32, i32* %fy1.addr, align 4, !tbaa !5
  %conv447 = sext i32 %260 to i64
  %sub448 = sub nsw i64 %conv447, 128
  %add449 = add nsw i64 %sub448, 1
  %261 = load i32, i32* %epsilon, align 4, !tbaa !5
  %conv450 = sext i32 %261 to i64
  %sub451 = sub nsw i64 %add449, %conv450
  %conv452 = trunc i64 %sub451 to i32
  %end453 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x454 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end453, i32 0, i32 0
  store i32 %conv452, i32* %x454, align 4, !tbaa !10
  %end455 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %x456 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end455, i32 0, i32 0
  %262 = load i32, i32* %x456, align 4, !tbaa !10
  %conv457 = sext i32 %262 to i64
  %add458 = add nsw i64 %conv457, 256
  %conv459 = trunc i64 %add458 to i32
  %end460 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %x461 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end460, i32 0, i32 0
  store i32 %conv459, i32* %x461, align 4, !tbaa !10
  %263 = load i32, i32* %fx0.addr, align 4, !tbaa !5
  %start462 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 0
  %y463 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start462, i32 0, i32 1
  store i32 %263, i32* %y463, align 4, !tbaa !11
  %start464 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y465 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start464, i32 0, i32 1
  store i32 %263, i32* %y465, align 4, !tbaa !11
  %264 = load i32, i32* %fx1.addr, align 4, !tbaa !5
  %end466 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %right, i32 0, i32 1
  %y467 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end466, i32 0, i32 1
  store i32 %264, i32* %y467, align 4, !tbaa !26
  %end468 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y469 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end468, i32 0, i32 1
  store i32 %264, i32* %y469, align 4, !tbaa !26
  store i32 1, i32* %swap_axes, align 4, !tbaa !5
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.431, %if.end.197
  %265 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %265, i32 0, i32 42
  %fill_trapezoid = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 27
  %fill_trapezoid471 = bitcast {}** %fill_trapezoid to i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)**
  %266 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)** %fill_trapezoid471, align 8, !tbaa !69
  %267 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %start472 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 0
  %y473 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start472, i32 0, i32 1
  %268 = load i32, i32* %y473, align 4, !tbaa !11
  %end474 = getelementptr inbounds %struct.gs_fixed_edge_s, %struct.gs_fixed_edge_s* %left, i32 0, i32 1
  %y475 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end474, i32 0, i32 1
  %269 = load i32, i32* %y475, align 4, !tbaa !26
  %270 = load i32, i32* %swap_axes, align 4, !tbaa !5
  %271 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %272 = load i32, i32* %lop.addr, align 4, !tbaa !5
  %call476 = call i32 %266(%struct.gx_device_s* %267, %struct.gs_fixed_edge_s* %left, %struct.gs_fixed_edge_s* %right, i32 %268, i32 %269, i32 %270, %struct.gx_device_color_s* %271, i32 %272) #4
  store i32 %call476, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.477

cleanup.477:                                      ; preds = %if.end.470, %if.end.427, %if.then.426, %cleanup.400, %cleanup.300, %if.end.193, %if.then.192, %cleanup.166, %cleanup.68
  %273 = bitcast %struct.gs_fixed_edge_s* %right to i8*
  call void @llvm.lifetime.end(i64 16, i8* %273) #1
  %274 = bitcast %struct.gs_fixed_edge_s* %left to i8*
  call void @llvm.lifetime.end(i64 16, i8* %274) #1
  %275 = bitcast i32* %swap_axes to i8*
  call void @llvm.lifetime.end(i64 4, i8* %275) #1
  %276 = bitcast i32* %tf to i8*
  call void @llvm.lifetime.end(i64 4, i8* %276) #1
  %277 = bitcast i32* %w to i8*
  call void @llvm.lifetime.end(i64 4, i8* %277) #1
  %278 = bitcast i32* %h to i8*
  call void @llvm.lifetime.end(i64 4, i8* %278) #1
  %279 = bitcast i32* %epsilon to i8*
  call void @llvm.lifetime.end(i64 4, i8* %279) #1
  %280 = bitcast i32* %itoy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %280) #1
  %281 = bitcast i32* %itox to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %282) #1
  %283 = bitcast i32* %ix to i8*
  call void @llvm.lifetime.end(i64 4, i8* %283) #1
  %284 = load i32, i32* %retval
  ret i32 %284
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_draw_line(%struct.gx_device_s* %dev, i32 %x0, i32 %y0, i32 %x1, i32 %y1, i64 %color) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %color.addr = alloca i64, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store i32 %x0, i32* %x0.addr, align 4, !tbaa !5
  store i32 %y0, i32* %y0.addr, align 4, !tbaa !5
  store i32 %x1, i32* %x1.addr, align 4, !tbaa !5
  store i32 %y1, i32* %y1.addr, align 4, !tbaa !5
  store i64 %color, i64* %color.addr, align 8, !tbaa !12
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define internal %struct.gs_ptr_procs_s* @image_enum_common_enum_ptrs(%struct.gs_memory_s* %mem, i8* %vptr, i32 %size, i32 %index, %struct.enum_ptr_s* %pep, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %retval = alloca %struct.gs_ptr_procs_s*, align 8
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %pep.addr = alloca %struct.enum_ptr_s*, align 8
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gx_image_enum_common_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store i32 %index, i32* %index.addr, align 4, !tbaa !5
  store %struct.enum_ptr_s* %pep, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_common_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_image_enum_common_s*
  store %struct.gx_image_enum_common_s* %2, %struct.gx_image_enum_common_s** %eptr, align 8, !tbaa !1
  %3 = load i32, i32* %index.addr, align 4, !tbaa !5
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.default:                                       ; preds = %entry
  store %struct.gs_ptr_procs_s* null, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %eptr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %4, i32 0, i32 2
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !70
  %call = call %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s* %5) #4
  %6 = bitcast %struct.gx_device_s* %call to i8*
  %7 = load %struct.enum_ptr_s*, %struct.enum_ptr_s** %pep.addr, align 8, !tbaa !1
  %ptr = getelementptr inbounds %struct.enum_ptr_s, %struct.enum_ptr_s* %7, i32 0, i32 0
  store i8* %6, i8** %ptr, align 8, !tbaa !72
  store %struct.gs_ptr_procs_s* @ptr_struct_procs, %struct.gs_ptr_procs_s** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %sw.default
  %8 = bitcast %struct.gx_image_enum_common_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  %9 = load %struct.gs_ptr_procs_s*, %struct.gs_ptr_procs_s** %retval
  ret %struct.gs_ptr_procs_s* %9
}

; Function Attrs: nounwind uwtable
define internal void @image_enum_common_reloc_ptrs(i8* %vptr, i32 %size, %struct.gs_memory_struct_type_s* %pstype, %struct.gc_state_s* %gcst) #0 {
entry:
  %vptr.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %pstype.addr = alloca %struct.gs_memory_struct_type_s*, align 8
  %gcst.addr = alloca %struct.gc_state_s*, align 8
  %eptr = alloca %struct.gx_image_enum_common_s*, align 8
  store i8* %vptr, i8** %vptr.addr, align 8, !tbaa !1
  store i32 %size, i32* %size.addr, align 4, !tbaa !5
  store %struct.gs_memory_struct_type_s* %pstype, %struct.gs_memory_struct_type_s** %pstype.addr, align 8, !tbaa !1
  store %struct.gc_state_s* %gcst, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gx_image_enum_common_s** %eptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %vptr.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.gx_image_enum_common_s*
  store %struct.gx_image_enum_common_s* %2, %struct.gx_image_enum_common_s** %eptr, align 8, !tbaa !1
  %3 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %eptr, align 8, !tbaa !1
  %dev = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %3, i32 0, i32 2
  %4 = load %struct.gx_device_s*, %struct.gx_device_s** %dev, align 8, !tbaa !70
  %5 = load %struct.gc_state_s*, %struct.gc_state_s** %gcst.addr, align 8, !tbaa !1
  %call = call %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s* %4, %struct.gc_state_s* %5) #4
  %6 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %eptr, align 8, !tbaa !1
  %dev1 = getelementptr inbounds %struct.gx_image_enum_common_s, %struct.gx_image_enum_common_s* %6, i32 0, i32 2
  store %struct.gx_device_s* %call, %struct.gx_device_s** %dev1, align 8, !tbaa !70
  %7 = bitcast %struct.gx_image_enum_common_s** %eptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_begin_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %save_begin_image = alloca i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, align 8
  %image = alloca %struct.gs_image1_s, align 8
  %ptim = alloca %struct.gs_image1_s*, align 8
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !74
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %save_begin_image to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %begin_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 31
  %2 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image, align 8, !tbaa !75
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %2, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %save_begin_image, align 8, !tbaa !1
  %3 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.start(i64 600, i8* %3) #1
  %4 = bitcast %struct.gs_image1_s** %ptim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs1 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs1, i32 0, i32 68
  %7 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !76
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %7(%struct.gx_device_s* %8, i32 2) #4
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs2 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %9, i32 0, i32 42
  %begin_image3 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs2, i32 0, i32 31
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* @gx_no_begin_image, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image3, align 8, !tbaa !75
  %10 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %format4 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %10, i32 0, i32 7
  %11 = load i32, i32* %format4, align 4, !tbaa !77
  %12 = load i32, i32* %format.addr, align 4, !tbaa !74
  %cmp = icmp eq i32 %11, %12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %13 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %13, %struct.gs_image1_s** %ptim, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  %15 = bitcast %struct.gs_image1_s* %image to i8*
  %16 = bitcast %struct.gs_image1_s* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 600, i32 8, i1 false), !tbaa.struct !81
  %17 = load i32, i32* %format.addr, align 4, !tbaa !74
  %format5 = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %image, i32 0, i32 7
  store i32 %17, i32* %format5, align 4, !tbaa !77
  store %struct.gs_image1_s* %image, %struct.gs_image1_s** %ptim, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %18, i32 0, i32 42
  %begin_typed_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 37
  %19 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !83
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %21 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %22 = load %struct.gs_image1_s*, %struct.gs_image1_s** %ptim, align 8, !tbaa !1
  %23 = bitcast %struct.gs_image1_s* %22 to %struct.gs_image_common_s*
  %24 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %25 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %26 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %27 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %28 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call = call i32 %19(%struct.gx_device_s* %20, %struct.gs_imager_state_s* %21, %struct.gs_matrix_s* null, %struct.gs_image_common_s* %23, %struct.gs_int_rect_s* %24, %struct.gx_device_color_s* %25, %struct.gx_clip_path_s* %26, %struct.gs_memory_s* %27, %struct.gx_image_enum_common_s** %28) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  %29 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %save_begin_image, align 8, !tbaa !1
  %30 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs7 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %30, i32 0, i32 42
  %begin_image8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs7, i32 0, i32 31
  store i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %29, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image8, align 8, !tbaa !75
  %31 = load i32, i32* %code, align 4, !tbaa !5
  %32 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %32) #1
  %33 = bitcast %struct.gs_image1_s** %ptim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %34 = bitcast %struct.gs_image1_s* %image to i8*
  call void @llvm.lifetime.end(i64 600, i8* %34) #1
  %35 = bitcast i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %save_begin_image to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_no_begin_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_image1_s* %pim, i32 %format, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pim.addr = alloca %struct.gs_image1_s*, align 8
  %format.addr = alloca i32, align 4
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_image1_s* %pim, %struct.gs_image1_s** %pim.addr, align 8, !tbaa !1
  store i32 %format, i32* %format.addr, align 4, !tbaa !74
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gx_default_begin_typed_image(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gs_matrix_s* %pmat, %struct.gs_image_common_s* %pic, %struct.gs_int_rect_s* %prect, %struct.gx_device_color_s* %pdcolor, %struct.gx_clip_path_s* %pcpath, %struct.gs_memory_s* %memory, %struct.gx_image_enum_common_s** %pinfo) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pmat.addr = alloca %struct.gs_matrix_s*, align 8
  %pic.addr = alloca %struct.gs_image_common_s*, align 8
  %prect.addr = alloca %struct.gs_int_rect_s*, align 8
  %pdcolor.addr = alloca %struct.gx_device_color_s*, align 8
  %pcpath.addr = alloca %struct.gx_clip_path_s*, align 8
  %memory.addr = alloca %struct.gs_memory_s*, align 8
  %pinfo.addr = alloca %struct.gx_image_enum_common_s**, align 8
  %pim = alloca %struct.gs_image1_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gs_matrix_s* %pmat, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  store %struct.gs_image_common_s* %pic, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  store %struct.gs_int_rect_s* %prect, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdcolor, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  store %struct.gx_clip_path_s* %pcpath, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  store %struct.gs_memory_s* %memory, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s** %pinfo, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %0 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.gs_imager_state_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %1, i32 0, i32 42
  %set_graphics_type_tag = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 68
  %2 = load void (%struct.gx_device_s*, i32)*, void (%struct.gx_device_s*, i32)** %set_graphics_type_tag, align 8, !tbaa !76
  %3 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  call void %2(%struct.gx_device_s* %3, i32 2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %4, i32 0, i32 0
  %5 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type, align 8, !tbaa !84
  %begin_typed_image = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %5, i32 0, i32 1
  %6 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image, align 8, !tbaa !86
  %cmp1 = icmp eq i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)* %6, @gx_begin_image1
  br i1 %cmp1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  %7 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %9 = bitcast %struct.gs_image_common_s* %8 to %struct.gs_image1_s*
  store %struct.gs_image1_s* %9, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %cmp3 = icmp eq %struct.gs_matrix_s* %10, null
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %11 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %cmp4 = icmp ne %struct.gs_imager_state_s* %11, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %lor.lhs.false
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %ctm = getelementptr inbounds %struct.gs_imager_state_s, %struct.gs_imager_state_s* %13, i32 0, i32 5
  %14 = bitcast %struct.gs_matrix_fixed_s* %ctm to %struct.gs_matrix_s*
  %call = call i32 @gs_matrix_compare(%struct.gs_matrix_s* %12, %struct.gs_matrix_s* %14) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.11, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true, %if.then.2
  %15 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %16, i32 0, i32 42
  %begin_image = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs6, i32 0, i32 31
  %17 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_image, align 8, !tbaa !75
  %18 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %19 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %20 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %21 = load %struct.gs_image1_s*, %struct.gs_image1_s** %pim, align 8, !tbaa !1
  %format = getelementptr inbounds %struct.gs_image1_s, %struct.gs_image1_s* %21, i32 0, i32 7
  %22 = load i32, i32* %format, align 4, !tbaa !77
  %23 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %24 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %25 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %27 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call7 = call i32 %17(%struct.gx_device_s* %18, %struct.gs_imager_state_s* %19, %struct.gs_image1_s* %20, i32 %22, %struct.gs_int_rect_s* %23, %struct.gx_device_color_s* %24, %struct.gx_clip_path_s* %25, %struct.gs_memory_s* %26, %struct.gx_image_enum_common_s** %27) #4
  store i32 %call7, i32* %code, align 4, !tbaa !5
  %28 = load i32, i32* %code, align 4, !tbaa !5
  %cmp8 = icmp sge i32 %28, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  %29 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.then.5
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.10, %if.then.9
  %30 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %30) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.12 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.11

if.end.11:                                        ; preds = %cleanup.cont, %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.12

cleanup.12:                                       ; preds = %if.end.11, %cleanup
  %31 = bitcast %struct.gs_image1_s** %pim to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest.13 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.13, label %unreachable [
    i32 0, label %cleanup.cont.14
    i32 1, label %return
  ]

cleanup.cont.14:                                  ; preds = %cleanup.12
  br label %if.end.15

if.end.15:                                        ; preds = %cleanup.cont.14, %if.end
  %32 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %type16 = getelementptr inbounds %struct.gs_image_common_s, %struct.gs_image_common_s* %32, i32 0, i32 0
  %33 = load %struct.gx_image_type_s*, %struct.gx_image_type_s** %type16, align 8, !tbaa !84
  %begin_typed_image17 = getelementptr inbounds %struct.gx_image_type_s, %struct.gx_image_type_s* %33, i32 0, i32 1
  %34 = load i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)** %begin_typed_image17, align 8, !tbaa !86
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %36 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %37 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %pmat.addr, align 8, !tbaa !1
  %38 = load %struct.gs_image_common_s*, %struct.gs_image_common_s** %pic.addr, align 8, !tbaa !1
  %39 = load %struct.gs_int_rect_s*, %struct.gs_int_rect_s** %prect.addr, align 8, !tbaa !1
  %40 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdcolor.addr, align 8, !tbaa !1
  %41 = load %struct.gx_clip_path_s*, %struct.gx_clip_path_s** %pcpath.addr, align 8, !tbaa !1
  %42 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory.addr, align 8, !tbaa !1
  %43 = load %struct.gx_image_enum_common_s**, %struct.gx_image_enum_common_s*** %pinfo.addr, align 8, !tbaa !1
  %call18 = call i32 %34(%struct.gx_device_s* %35, %struct.gs_imager_state_s* %36, %struct.gs_matrix_s* %37, %struct.gs_image_common_s* %38, %struct.gs_int_rect_s* %39, %struct.gx_device_color_s* %40, %struct.gx_clip_path_s* %41, %struct.gs_memory_s* %42, %struct.gx_image_enum_common_s** %43) #4
  store i32 %call18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %cleanup.12
  %44 = load i32, i32* %retval
  ret i32 %44

unreachable:                                      ; preds = %cleanup.12
  unreachable
}

declare i32 @gx_begin_image1(%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**) #3

declare i32 @gs_matrix_compare(%struct.gs_matrix_s*, %struct.gs_matrix_s*) #3

; Function Attrs: nounwind uwtable
define i32 @gx_default_image_data(%struct.gx_device_s* %dev, %struct.gx_image_enum_common_s* %info, i8** %plane_data, i32 %data_x, i32 %raster, i32 %height) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %plane_data.addr = alloca i8**, align 8
  %data_x.addr = alloca i32, align 4
  %raster.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %code = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i8** %plane_data, i8*** %plane_data.addr, align 8, !tbaa !1
  store i32 %data_x, i32* %data_x.addr, align 4, !tbaa !5
  store i32 %raster, i32* %raster.addr, align 4, !tbaa !5
  store i32 %height, i32* %height.addr, align 4, !tbaa !5
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  br label %do.cond.2

do.cond.2:                                        ; preds = %do.body.1
  br label %do.end.3

do.end.3:                                         ; preds = %do.cond.2
  br label %do.body.4

do.body.4:                                        ; preds = %do.end.3
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.body.4
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  br label %do.cond.8

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %1 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %2 = load i8**, i8*** %plane_data.addr, align 8, !tbaa !1
  %3 = load i32, i32* %data_x.addr, align 4, !tbaa !5
  %4 = load i32, i32* %raster.addr, align 4, !tbaa !5
  %5 = load i32, i32* %height.addr, align 4, !tbaa !5
  %call = call i32 @gx_image_data(%struct.gx_image_enum_common_s* %1, i8** %2, i32 %3, i32 %4, i32 %5) #4
  store i32 %call, i32* %code, align 4, !tbaa !5
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  br label %do.cond.11

do.cond.11:                                       ; preds = %do.body.10
  br label %do.end.12

do.end.12:                                        ; preds = %do.cond.11
  %6 = load i32, i32* %code, align 4, !tbaa !5
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %7) #1
  ret i32 %6
}

declare i32 @gx_image_data(%struct.gx_image_enum_common_s*, i8**, i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gx_default_end_image(%struct.gx_device_s* %dev, %struct.gx_image_enum_common_s* %info, i32 %draw_last) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %info.addr = alloca %struct.gx_image_enum_common_s*, align 8
  %draw_last.addr = alloca i32, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gx_image_enum_common_s* %info, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  store i32 %draw_last, i32* %draw_last.addr, align 4, !tbaa !5
  %0 = load %struct.gx_image_enum_common_s*, %struct.gx_image_enum_common_s** %info.addr, align 8, !tbaa !1
  %1 = load i32, i32* %draw_last.addr, align 4, !tbaa !5
  %call = call i32 @gx_image_end(%struct.gx_image_enum_common_s* %0, i32 %1) #4
  ret i32 %call
}

declare i32 @gx_image_end(%struct.gx_image_enum_common_s*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gx_default_fillpage(%struct.gx_device_s* %dev, %struct.gs_imager_state_s* %pis, %struct.gx_device_color_s* %pdevc) #0 {
entry:
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %pis.addr = alloca %struct.gs_imager_state_s*, align 8
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %hl_color_available = alloca i32, align 4
  %code = alloca i32, align 4
  %rect = alloca %struct.gs_fixed_rect_s, align 4
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_imager_state_s* %pis, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %0 = bitcast i32* %hl_color_available to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %2 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call = call i32 @gx_hld_is_hl_color_available(%struct.gs_imager_state_s* %1, %struct.gx_device_color_s* %2) #4
  store i32 %call, i32* %hl_color_available, align 4, !tbaa !5
  %3 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  store i32 0, i32* %code, align 4, !tbaa !5
  %4 = load i32, i32* %hl_color_available, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #1
  %p = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p, i32 0, i32 1
  store i32 0, i32* %y, align 4, !tbaa !58
  %p1 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %p1, i32 0, i32 0
  store i32 0, i32* %x, align 4, !tbaa !51
  %6 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %6, i32 0, i32 13
  %7 = load i32, i32* %width, align 4, !tbaa !88
  %shl = shl i32 %7, 8
  %q = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %x2 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q, i32 0, i32 0
  store i32 %shl, i32* %x2, align 4, !tbaa !54
  %8 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %8, i32 0, i32 14
  %9 = load i32, i32* %height, align 4, !tbaa !89
  %shl3 = shl i32 %9, 8
  %q4 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %rect, i32 0, i32 1
  %y5 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %q4, i32 0, i32 1
  store i32 %shl3, i32* %y5, align 4, !tbaa !60
  %10 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %10, i32 0, i32 42
  %fill_rectangle_hl_color = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 54
  %11 = load i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)** %fill_rectangle_hl_color, align 8, !tbaa !90
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %13 = load %struct.gs_imager_state_s*, %struct.gs_imager_state_s** %pis.addr, align 8, !tbaa !1
  %14 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %call6 = call i32 %11(%struct.gx_device_s* %12, %struct.gs_fixed_rect_s* %rect, %struct.gs_imager_state_s* %13, %struct.gx_device_color_s* %14, %struct.gx_clip_path_s* null) #4
  store i32 %call6, i32* %code, align 4, !tbaa !5
  %15 = bitcast %struct.gs_fixed_rect_s* %rect to i8*
  call void @llvm.lifetime.end(i64 16, i8* %15) #1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load i32, i32* %hl_color_available, align 4, !tbaa !5
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i32, i32* %code, align 4, !tbaa !5
  %cmp = icmp eq i32 %17, -15
  br i1 %cmp, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %18 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %type = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %18, i32 0, i32 0
  %19 = load %struct.gx_device_color_type_s*, %struct.gx_device_color_type_s** %type, align 8, !tbaa !35
  %fill_rectangle = getelementptr inbounds %struct.gx_device_color_type_s, %struct.gx_device_color_type_s* %19, i32 0, i32 5
  %20 = load i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)** %fill_rectangle, align 8, !tbaa !42
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %width9 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %22, i32 0, i32 13
  %23 = load i32, i32* %width9, align 4, !tbaa !88
  %24 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %height10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %24, i32 0, i32 14
  %25 = load i32, i32* %height10, align 4, !tbaa !89
  %26 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %call11 = call i32 %20(%struct.gx_device_color_s* %21, i32 0, i32 0, i32 %23, i32 %25, %struct.gx_device_s* %26, i32 252, %struct.gx_rop_source_s* null) #4
  store i32 %call11, i32* %code, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %lor.lhs.false
  %27 = load i32, i32* %code, align 4, !tbaa !5
  %28 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  %29 = bitcast i32* %hl_color_available to i8*
  call void @llvm.lifetime.end(i64 4, i8* %29) #1
  ret i32 %27
}

declare i32 @gx_hld_is_hl_color_available(%struct.gs_imager_state_s*, %struct.gx_device_color_s*) #3

; Function Attrs: nounwind uwtable
define internal i32 @fixed_mult_rem(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4, !tbaa !5
  store i32 %b, i32* %b.addr, align 4, !tbaa !5
  store i32 %c, i32* %c.addr, align 4, !tbaa !5
  %0 = load i32, i32* %a.addr, align 4, !tbaa !5
  %1 = load i32, i32* %b.addr, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %a.addr, align 4, !tbaa !5
  %3 = load i32, i32* %b.addr, align 4, !tbaa !5
  %4 = load i32, i32* %c.addr, align 4, !tbaa !5
  %call = call i32 @fixed_mult_quo(i32 %2, i32 %3, i32 %4) #4
  %5 = load i32, i32* %c.addr, align 4, !tbaa !5
  %mul1 = mul nsw i32 %call, %5
  %sub = sub nsw i32 %mul, %mul1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_fill_trapezoid_as_lc(%struct.gx_device_s* %dev, %struct.gs_linear_color_edge_s* %left, %struct.gs_linear_color_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, %struct.gs_fill_attributes_s* %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %right.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %num_components = alloca i32, align 4
  %lgc = alloca [64 x i32], align 16
  %lgf = alloca [64 x i32], align 16
  %lgnum = alloca [64 x i32], align 16
  %rgc = alloca [64 x i32], align 16
  %rgf = alloca [64 x i32], align 16
  %rgnum = alloca [64 x i32], align 16
  %xgc = alloca [64 x i32], align 16
  %xgf = alloca [64 x i32], align 16
  %xgnum = alloca [64 x i32], align 16
  %lg = alloca %struct.trap_gradient_s, align 8
  %rg = alloca %struct.trap_gradient_s, align 8
  %xg = alloca %struct.trap_gradient_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %left, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %right, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.352

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !55
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !56
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !55
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !56
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !57
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !57
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 11
  %num_components20 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %45 = load i32, i32* %num_components20, align 4, !tbaa !44
  store i32 %45, i32* %num_components, align 4, !tbaa !5
  %46 = bitcast [64 x i32]* %lgc to i8*
  call void @llvm.lifetime.start(i64 256, i8* %46) #1
  %47 = bitcast [64 x i32]* %lgf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %47) #1
  %48 = bitcast [64 x i32]* %lgnum to i8*
  call void @llvm.lifetime.start(i64 256, i8* %48) #1
  %49 = bitcast [64 x i32]* %rgc to i8*
  call void @llvm.lifetime.start(i64 256, i8* %49) #1
  %50 = bitcast [64 x i32]* %rgf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %50) #1
  %51 = bitcast [64 x i32]* %rgnum to i8*
  call void @llvm.lifetime.start(i64 256, i8* %51) #1
  %52 = bitcast [64 x i32]* %xgc to i8*
  call void @llvm.lifetime.start(i64 256, i8* %52) #1
  %53 = bitcast [64 x i32]* %xgf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %53) #1
  %54 = bitcast [64 x i32]* %xgnum to i8*
  call void @llvm.lifetime.start(i64 256, i8* %54) #1
  %55 = bitcast %struct.trap_gradient_s* %lg to i8*
  call void @llvm.lifetime.start(i64 32, i8* %55) #1
  %56 = bitcast %struct.trap_gradient_s* %rg to i8*
  call void @llvm.lifetime.start(i64 32, i8* %56) #1
  %57 = bitcast %struct.trap_gradient_s* %xg to i8*
  call void @llvm.lifetime.start(i64 32, i8* %57) #1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %58 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %end21 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %58, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end21, i32 0, i32 1
  %59 = load i32, i32* %y22, align 4, !tbaa !59
  %60 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %start23 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %60, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start23, i32 0, i32 1
  %61 = load i32, i32* %y24, align 4, !tbaa !57
  %sub25 = sub nsw i32 %59, %61
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub25, i32* %h, align 4, !tbaa !27
  %62 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %end26 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %62, i32 0, i32 1
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end26, i32 0, i32 1
  %63 = load i32, i32* %y27, align 4, !tbaa !59
  %64 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %start28 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %64, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start28, i32 0, i32 1
  %65 = load i32, i32* %y29, align 4, !tbaa !57
  %sub30 = sub nsw i32 %63, %65
  %h31 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub30, i32* %h31, align 4, !tbaa !27
  %66 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv32 = sext i32 %66 to i64
  %add33 = add nsw i64 %conv32, 127
  %conv34 = trunc i64 %add33 to i32
  %x35 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv34, i32* %x35, align 4, !tbaa !29
  %67 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv36 = sext i32 %67 to i64
  %add37 = add nsw i64 %conv36, 127
  %conv38 = trunc i64 %add37 to i32
  %x39 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv38, i32* %x39, align 4, !tbaa !29
  %68 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %68, i32* %ry, align 4, !tbaa !5
  %x40 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %69 = load i32, i32* %x40, align 4, !tbaa !29
  %conv41 = sext i32 %69 to i64
  %and42 = and i64 %conv41, -256
  %70 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv43 = sext i32 %70 to i64
  %add44 = add nsw i64 %conv43, 127
  %and45 = and i64 %add44, -256
  %cmp46 = icmp eq i64 %and42, %and45
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.62

if.else:                                          ; preds = %do.end
  %71 = load i32, i32* %dxl, align 4, !tbaa !5
  %72 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %71, i32 %72) #4
  %73 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv49 = sext i32 %73 to i64
  %cmp50 = icmp slt i64 %conv49, 256
  br i1 %cmp50, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df52 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %74 = load i32, i32* %df52, align 4, !tbaa !31
  %conv53 = sext i32 %74 to i64
  %cmp54 = icmp slt i64 %conv53, 8388607
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %75 = load i32, i32* %ysl, align 4, !tbaa !5
  %df56 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %76 = load i32, i32* %df56, align 4, !tbaa !31
  %mul = mul nsw i32 %75, %76
  %h57 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %77 = load i32, i32* %h57, align 4, !tbaa !27
  %div = sdiv i32 %mul, %77
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %78 = load i32, i32* %ysl, align 4, !tbaa !5
  %df58 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %79 = load i32, i32* %df58, align 4, !tbaa !31
  %h59 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %80 = load i32, i32* %h59, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %78, i32 %79, i32 %80) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %81 = load i32, i32* %fxl, align 4, !tbaa !5
  %x60 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %82 = load i32, i32* %x60, align 4, !tbaa !29
  %add61 = add nsw i32 %82, %81
  store i32 %add61, i32* %x60, align 4, !tbaa !29
  br label %if.end.62

if.end.62:                                        ; preds = %cond.end, %if.then.48
  %x63 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %83 = load i32, i32* %x63, align 4, !tbaa !29
  %conv64 = sext i32 %83 to i64
  %and65 = and i64 %conv64, -256
  %84 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv66 = sext i32 %84 to i64
  %add67 = add nsw i64 %conv66, 127
  %and68 = and i64 %add67, -256
  %cmp69 = icmp eq i64 %and65, %and68
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.end.62
  %di72 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di72, align 4, !tbaa !30
  %df73 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df73, align 4, !tbaa !31
  br label %if.end.146

if.else.74:                                       ; preds = %if.end.62
  %85 = load i32, i32* %dxr, align 4, !tbaa !5
  %86 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %85, %86
  br i1 %cmp75, label %land.lhs.true.77, label %if.else.123

land.lhs.true.77:                                 ; preds = %if.else.74
  %87 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp78 = icmp ne i32 %87, 0
  br i1 %cmp78, label %if.then.80, label %if.else.123

if.then.80:                                       ; preds = %land.lhs.true.77
  %di81 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %88 = load i32, i32* %di81, align 4, !tbaa !30
  %cmp82 = icmp eq i32 %88, 0
  br i1 %cmp82, label %if.then.84, label %if.else.88

if.then.84:                                       ; preds = %if.then.80
  %di85 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di85, align 4, !tbaa !30
  %df86 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %89 = load i32, i32* %df86, align 4, !tbaa !31
  %df87 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %89, i32* %df87, align 4, !tbaa !31
  br label %if.end.89

if.else.88:                                       ; preds = %if.then.80
  %90 = load i32, i32* %dxr, align 4, !tbaa !5
  %91 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %90, i32 %91) #4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.then.84
  %92 = load i32, i32* %ysr, align 4, !tbaa !5
  %93 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %92, %93
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.100

land.lhs.true.92:                                 ; preds = %if.end.89
  %h93 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %94 = load i32, i32* %h93, align 4, !tbaa !27
  %h94 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %95 = load i32, i32* %h94, align 4, !tbaa !27
  %cmp95 = icmp eq i32 %94, %95
  br i1 %cmp95, label %if.then.97, label %if.else.100

if.then.97:                                       ; preds = %land.lhs.true.92
  %96 = load i32, i32* %fxl, align 4, !tbaa !5
  %x98 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %97 = load i32, i32* %x98, align 4, !tbaa !29
  %add99 = add nsw i32 %97, %96
  store i32 %add99, i32* %x98, align 4, !tbaa !29
  br label %if.end.122

if.else.100:                                      ; preds = %land.lhs.true.92, %if.end.89
  %98 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv101 = sext i32 %98 to i64
  %cmp102 = icmp slt i64 %conv101, 256
  br i1 %cmp102, label %land.lhs.true.104, label %cond.false.114

land.lhs.true.104:                                ; preds = %if.else.100
  %df105 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %99 = load i32, i32* %df105, align 4, !tbaa !31
  %conv106 = sext i32 %99 to i64
  %cmp107 = icmp slt i64 %conv106, 8388607
  br i1 %cmp107, label %cond.true.109, label %cond.false.114

cond.true.109:                                    ; preds = %land.lhs.true.104
  %100 = load i32, i32* %ysr, align 4, !tbaa !5
  %df110 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %101 = load i32, i32* %df110, align 4, !tbaa !31
  %mul111 = mul nsw i32 %100, %101
  %h112 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %102 = load i32, i32* %h112, align 4, !tbaa !27
  %div113 = sdiv i32 %mul111, %102
  br label %cond.end.118

cond.false.114:                                   ; preds = %land.lhs.true.104, %if.else.100
  %103 = load i32, i32* %ysr, align 4, !tbaa !5
  %df115 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %104 = load i32, i32* %df115, align 4, !tbaa !31
  %h116 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %105 = load i32, i32* %h116, align 4, !tbaa !27
  %call117 = call i32 @fixed_mult_quo(i32 %103, i32 %104, i32 %105) #4
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.114, %cond.true.109
  %cond119 = phi i32 [ %div113, %cond.true.109 ], [ %call117, %cond.false.114 ]
  %x120 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %106 = load i32, i32* %x120, align 4, !tbaa !29
  %add121 = add nsw i32 %106, %cond119
  store i32 %add121, i32* %x120, align 4, !tbaa !29
  br label %if.end.122

if.end.122:                                       ; preds = %cond.end.118, %if.then.97
  br label %if.end.145

if.else.123:                                      ; preds = %land.lhs.true.77, %if.else.74
  %107 = load i32, i32* %dxr, align 4, !tbaa !5
  %108 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %107, i32 %108) #4
  %109 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv124 = sext i32 %109 to i64
  %cmp125 = icmp slt i64 %conv124, 256
  br i1 %cmp125, label %land.lhs.true.127, label %cond.false.137

land.lhs.true.127:                                ; preds = %if.else.123
  %df128 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %110 = load i32, i32* %df128, align 4, !tbaa !31
  %conv129 = sext i32 %110 to i64
  %cmp130 = icmp slt i64 %conv129, 8388607
  br i1 %cmp130, label %cond.true.132, label %cond.false.137

cond.true.132:                                    ; preds = %land.lhs.true.127
  %111 = load i32, i32* %ysr, align 4, !tbaa !5
  %df133 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %112 = load i32, i32* %df133, align 4, !tbaa !31
  %mul134 = mul nsw i32 %111, %112
  %h135 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %113 = load i32, i32* %h135, align 4, !tbaa !27
  %div136 = sdiv i32 %mul134, %113
  br label %cond.end.141

cond.false.137:                                   ; preds = %land.lhs.true.127, %if.else.123
  %114 = load i32, i32* %ysr, align 4, !tbaa !5
  %df138 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %115 = load i32, i32* %df138, align 4, !tbaa !31
  %h139 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %116 = load i32, i32* %h139, align 4, !tbaa !27
  %call140 = call i32 @fixed_mult_quo(i32 %114, i32 %115, i32 %116) #4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.137, %cond.true.132
  %cond142 = phi i32 [ %div136, %cond.true.132 ], [ %call140, %cond.false.137 ]
  %x143 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %117 = load i32, i32* %x143, align 4, !tbaa !29
  %add144 = add nsw i32 %117, %cond142
  store i32 %add144, i32* %x143, align 4, !tbaa !29
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.141, %if.end.122
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.71
  %118 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %118) #4
  %119 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %119) #4
  %x147 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %120 = load i32, i32* %x147, align 4, !tbaa !29
  %conv148 = sext i32 %120 to i64
  %add149 = add nsw i64 %conv148, 1
  %conv150 = trunc i64 %add149 to i32
  store i32 %conv150, i32* %x147, align 4, !tbaa !29
  %x151 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %121 = load i32, i32* %x151, align 4, !tbaa !29
  %conv152 = sext i32 %121 to i64
  %add153 = add nsw i64 %conv152, 1
  %conv154 = trunc i64 %add153 to i32
  store i32 %conv154, i32* %x151, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %lgc, i32 0, i32 0
  %c = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %lg, i32 0, i32 0
  store i32* %arraydecay, i32** %c, align 8, !tbaa !91
  %arraydecay155 = getelementptr inbounds [64 x i32], [64 x i32]* %lgf, i32 0, i32 0
  %f = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %lg, i32 0, i32 1
  store i32* %arraydecay155, i32** %f, align 8, !tbaa !93
  %arraydecay156 = getelementptr inbounds [64 x i32], [64 x i32]* %lgnum, i32 0, i32 0
  %num = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %lg, i32 0, i32 2
  store i32* %arraydecay156, i32** %num, align 8, !tbaa !94
  %arraydecay157 = getelementptr inbounds [64 x i32], [64 x i32]* %rgc, i32 0, i32 0
  %c158 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %rg, i32 0, i32 0
  store i32* %arraydecay157, i32** %c158, align 8, !tbaa !91
  %arraydecay159 = getelementptr inbounds [64 x i32], [64 x i32]* %rgf, i32 0, i32 0
  %f160 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %rg, i32 0, i32 1
  store i32* %arraydecay159, i32** %f160, align 8, !tbaa !93
  %arraydecay161 = getelementptr inbounds [64 x i32], [64 x i32]* %rgnum, i32 0, i32 0
  %num162 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %rg, i32 0, i32 2
  store i32* %arraydecay161, i32** %num162, align 8, !tbaa !94
  %arraydecay163 = getelementptr inbounds [64 x i32], [64 x i32]* %xgc, i32 0, i32 0
  %c164 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 0
  store i32* %arraydecay163, i32** %c164, align 8, !tbaa !91
  %arraydecay165 = getelementptr inbounds [64 x i32], [64 x i32]* %xgf, i32 0, i32 0
  %f166 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 1
  store i32* %arraydecay165, i32** %f166, align 8, !tbaa !93
  %arraydecay167 = getelementptr inbounds [64 x i32], [64 x i32]* %xgnum, i32 0, i32 0
  %num168 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 2
  store i32* %arraydecay167, i32** %num168, align 8, !tbaa !94
  %122 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %123 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %124 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %125 = load i32, i32* %ymin, align 4, !tbaa !5
  %126 = load i32, i32* %num_components, align 4, !tbaa !5
  %call169 = call i32 @init_gradient(%struct.trap_gradient_s* %lg, %struct.gs_fill_attributes_s* %122, %struct.gs_linear_color_edge_s* %123, %struct.gs_linear_color_edge_s* %124, %struct.trap_line_s* %l, i32 %125, i32 %126) #4
  store i32 %call169, i32* %code, align 4, !tbaa !5
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %cmp170 = icmp slt i32 %127, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.146
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %if.end.146
  %129 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %130 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %131 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %132 = load i32, i32* %ymin, align 4, !tbaa !5
  %133 = load i32, i32* %num_components, align 4, !tbaa !5
  %call174 = call i32 @init_gradient(%struct.trap_gradient_s* %rg, %struct.gs_fill_attributes_s* %129, %struct.gs_linear_color_edge_s* %130, %struct.gs_linear_color_edge_s* %131, %struct.trap_line_s* %r, i32 %132, i32 %133) #4
  store i32 %call174, i32* %code, align 4, !tbaa !5
  %134 = load i32, i32* %code, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %134, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.173
  %135 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.end.173
  %x179 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %136 = load i32, i32* %x179, align 4, !tbaa !29
  %and180 = and i32 %136, 255
  %tobool = icmp ne i32 %and180, 0
  br i1 %tobool, label %cond.false.190, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %if.end.178
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %137 = load i32, i32* %xf, align 4, !tbaa !32
  %h182 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %138 = load i32, i32* %h182, align 4, !tbaa !27
  %sub183 = sub nsw i32 0, %138
  %cmp184 = icmp eq i32 %137, %sub183
  br i1 %cmp184, label %cond.true.186, label %cond.false.190

cond.true.186:                                    ; preds = %land.lhs.true.181
  %x187 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %139 = load i32, i32* %x187, align 4, !tbaa !29
  %conv188 = sext i32 %139 to i64
  %sub189 = sub nsw i64 %conv188, 256
  br label %cond.end.193

cond.false.190:                                   ; preds = %land.lhs.true.181, %if.end.178
  %x191 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %140 = load i32, i32* %x191, align 4, !tbaa !29
  %conv192 = sext i32 %140 to i64
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.190, %cond.true.186
  %cond194 = phi i64 [ %sub189, %cond.true.186 ], [ %conv192, %cond.false.190 ]
  %shr195 = ashr i64 %cond194, 8
  %conv196 = trunc i64 %shr195 to i32
  store i32 %conv196, i32* %rxl, align 4, !tbaa !5
  %x197 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %141 = load i32, i32* %x197, align 4, !tbaa !29
  %and198 = and i32 %141, 255
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %cond.false.210, label %land.lhs.true.200

land.lhs.true.200:                                ; preds = %cond.end.193
  %xf201 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %142 = load i32, i32* %xf201, align 4, !tbaa !32
  %h202 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %143 = load i32, i32* %h202, align 4, !tbaa !27
  %sub203 = sub nsw i32 0, %143
  %cmp204 = icmp eq i32 %142, %sub203
  br i1 %cmp204, label %cond.true.206, label %cond.false.210

cond.true.206:                                    ; preds = %land.lhs.true.200
  %x207 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %144 = load i32, i32* %x207, align 4, !tbaa !29
  %conv208 = sext i32 %144 to i64
  %sub209 = sub nsw i64 %conv208, 256
  br label %cond.end.213

cond.false.210:                                   ; preds = %land.lhs.true.200, %cond.end.193
  %x211 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %145 = load i32, i32* %x211, align 4, !tbaa !29
  %conv212 = sext i32 %145 to i64
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.206
  %cond214 = phi i64 [ %sub209, %cond.true.206 ], [ %conv212, %cond.false.210 ]
  %shr215 = ashr i64 %cond214, 8
  %conv216 = trunc i64 %shr215 to i32
  store i32 %conv216, i32* %rxr, align 4, !tbaa !5
  br label %do.body.217

do.body.217:                                      ; preds = %cond.end.213
  br label %do.cond.218

do.cond.218:                                      ; preds = %do.body.217
  br label %do.end.219

do.end.219:                                       ; preds = %do.cond.218
  br label %while.cond

while.cond:                                       ; preds = %cond.end.312, %do.end.219
  br label %while.body

while.body:                                       ; preds = %while.cond
  %146 = load i32, i32* %rxl, align 4, !tbaa !5
  %147 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp220 = icmp ne i32 %146, %147
  br i1 %cmp220, label %if.then.222, label %if.end.243

if.then.222:                                      ; preds = %while.body
  %148 = load i32, i32* %rxl, align 4, !tbaa !5
  %149 = load i32, i32* %rxr, align 4, !tbaa !5
  %150 = load i32, i32* %num_components, align 4, !tbaa !5
  %call223 = call i32 @set_x_gradient(%struct.trap_gradient_s* %xg, %struct.trap_gradient_s* %lg, %struct.trap_gradient_s* %rg, %struct.trap_line_s* %l, %struct.trap_line_s* %r, i32 %148, i32 %149, i32 %150) #4
  store i32 %call223, i32* %code, align 4, !tbaa !5
  %151 = load i32, i32* %code, align 4, !tbaa !5
  %cmp224 = icmp slt i32 %151, 0
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.then.222
  br label %xit

if.end.227:                                       ; preds = %if.then.222
  %152 = load i32, i32* %rxr, align 4, !tbaa !5
  %153 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub228 = sub nsw i32 %152, %153
  %tobool229 = icmp ne i32 %sub228, 0
  br i1 %tobool229, label %cond.false.231, label %cond.true.230

cond.true.230:                                    ; preds = %if.end.227
  br label %cond.end.237

cond.false.231:                                   ; preds = %if.end.227
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 42
  %fill_linear_color_scanline = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 56
  %155 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline, align 8, !tbaa !95
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %157 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %158 = load i32, i32* %rxl, align 4, !tbaa !5
  %159 = load i32, i32* %iy, align 4, !tbaa !5
  %160 = load i32, i32* %rxr, align 4, !tbaa !5
  %161 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub232 = sub nsw i32 %160, %161
  %c233 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 0
  %162 = load i32*, i32** %c233, align 8, !tbaa !91
  %f234 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 1
  %163 = load i32*, i32** %f234, align 8, !tbaa !93
  %num235 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 2
  %164 = load i32*, i32** %num235, align 8, !tbaa !94
  %den = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 3
  %165 = load i32, i32* %den, align 4, !tbaa !96
  %call236 = call i32 %155(%struct.gx_device_s* %156, %struct.gs_fill_attributes_s* %157, i32 %158, i32 %159, i32 %sub232, i32* %162, i32* %163, i32* %164, i32 %165) #4
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.231, %cond.true.230
  %cond238 = phi i32 [ 0, %cond.true.230 ], [ %call236, %cond.false.231 ]
  store i32 %cond238, i32* %code, align 4, !tbaa !5
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp239 = icmp slt i32 %166, 0
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %cond.end.237
  br label %xit

if.end.242:                                       ; preds = %cond.end.237
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %while.body
  %167 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %167, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  %168 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp244 = icmp eq i32 %inc, %168
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.243
  br label %while.end

if.end.247:                                       ; preds = %if.end.243
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %169 = load i32, i32* %ldi, align 4, !tbaa !33
  %x248 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %170 = load i32, i32* %x248, align 4, !tbaa !29
  %add249 = add nsw i32 %170, %169
  store i32 %add249, i32* %x248, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %171 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf250 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %172 = load i32, i32* %xf250, align 4, !tbaa !32
  %add251 = add nsw i32 %172, %171
  store i32 %add251, i32* %xf250, align 4, !tbaa !32
  %cmp252 = icmp sge i32 %add251, 0
  br i1 %cmp252, label %if.then.254, label %if.end.260

if.then.254:                                      ; preds = %if.end.247
  %h255 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %173 = load i32, i32* %h255, align 4, !tbaa !27
  %xf256 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %174 = load i32, i32* %xf256, align 4, !tbaa !32
  %sub257 = sub nsw i32 %174, %173
  store i32 %sub257, i32* %xf256, align 4, !tbaa !32
  %x258 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %175 = load i32, i32* %x258, align 4, !tbaa !29
  %inc259 = add nsw i32 %175, 1
  store i32 %inc259, i32* %x258, align 4, !tbaa !29
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.254, %if.end.247
  %x261 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %176 = load i32, i32* %x261, align 4, !tbaa !29
  %and262 = and i32 %176, 255
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %cond.false.274, label %land.lhs.true.264

land.lhs.true.264:                                ; preds = %if.end.260
  %xf265 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %177 = load i32, i32* %xf265, align 4, !tbaa !32
  %h266 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %178 = load i32, i32* %h266, align 4, !tbaa !27
  %sub267 = sub nsw i32 0, %178
  %cmp268 = icmp eq i32 %177, %sub267
  br i1 %cmp268, label %cond.true.270, label %cond.false.274

cond.true.270:                                    ; preds = %land.lhs.true.264
  %x271 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %179 = load i32, i32* %x271, align 4, !tbaa !29
  %conv272 = sext i32 %179 to i64
  %sub273 = sub nsw i64 %conv272, 256
  br label %cond.end.277

cond.false.274:                                   ; preds = %land.lhs.true.264, %if.end.260
  %x275 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %180 = load i32, i32* %x275, align 4, !tbaa !29
  %conv276 = sext i32 %180 to i64
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.274, %cond.true.270
  %cond278 = phi i64 [ %sub273, %cond.true.270 ], [ %conv276, %cond.false.274 ]
  %shr279 = ashr i64 %cond278, 8
  %conv280 = trunc i64 %shr279 to i32
  store i32 %conv280, i32* %rxl, align 4, !tbaa !5
  %ldi281 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %181 = load i32, i32* %ldi281, align 4, !tbaa !33
  %x282 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %182 = load i32, i32* %x282, align 4, !tbaa !29
  %add283 = add nsw i32 %182, %181
  store i32 %add283, i32* %x282, align 4, !tbaa !29
  %ldf284 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %183 = load i32, i32* %ldf284, align 4, !tbaa !34
  %xf285 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %184 = load i32, i32* %xf285, align 4, !tbaa !32
  %add286 = add nsw i32 %184, %183
  store i32 %add286, i32* %xf285, align 4, !tbaa !32
  %cmp287 = icmp sge i32 %add286, 0
  br i1 %cmp287, label %if.then.289, label %if.end.295

if.then.289:                                      ; preds = %cond.end.277
  %h290 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %185 = load i32, i32* %h290, align 4, !tbaa !27
  %xf291 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %186 = load i32, i32* %xf291, align 4, !tbaa !32
  %sub292 = sub nsw i32 %186, %185
  store i32 %sub292, i32* %xf291, align 4, !tbaa !32
  %x293 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %187 = load i32, i32* %x293, align 4, !tbaa !29
  %inc294 = add nsw i32 %187, 1
  store i32 %inc294, i32* %x293, align 4, !tbaa !29
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.289, %cond.end.277
  %x296 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %188 = load i32, i32* %x296, align 4, !tbaa !29
  %and297 = and i32 %188, 255
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %cond.false.309, label %land.lhs.true.299

land.lhs.true.299:                                ; preds = %if.end.295
  %xf300 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %189 = load i32, i32* %xf300, align 4, !tbaa !32
  %h301 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %190 = load i32, i32* %h301, align 4, !tbaa !27
  %sub302 = sub nsw i32 0, %190
  %cmp303 = icmp eq i32 %189, %sub302
  br i1 %cmp303, label %cond.true.305, label %cond.false.309

cond.true.305:                                    ; preds = %land.lhs.true.299
  %x306 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %191 = load i32, i32* %x306, align 4, !tbaa !29
  %conv307 = sext i32 %191 to i64
  %sub308 = sub nsw i64 %conv307, 256
  br label %cond.end.312

cond.false.309:                                   ; preds = %land.lhs.true.299, %if.end.295
  %x310 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %192 = load i32, i32* %x310, align 4, !tbaa !29
  %conv311 = sext i32 %192 to i64
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.309, %cond.true.305
  %cond313 = phi i64 [ %sub308, %cond.true.305 ], [ %conv311, %cond.false.309 ]
  %shr314 = ashr i64 %cond313, 8
  %conv315 = trunc i64 %shr314 to i32
  store i32 %conv315, i32* %rxr, align 4, !tbaa !5
  %193 = load i32, i32* %num_components, align 4, !tbaa !5
  call void @step_gradient(%struct.trap_gradient_s* %lg, i32 %193) #4
  %194 = load i32, i32* %num_components, align 4, !tbaa !5
  call void @step_gradient(%struct.trap_gradient_s* %rg, i32 %194) #4
  br label %while.cond

while.end:                                        ; preds = %if.then.246
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %while.end, %if.then.241, %if.then.226
  %195 = load i32, i32* %code, align 4, !tbaa !5
  %cmp316 = icmp slt i32 %195, 0
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %xit
  %196 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %196, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.319:                                       ; preds = %xit
  br label %do.body.320

do.body.320:                                      ; preds = %if.end.319
  br label %do.cond.321

do.cond.321:                                      ; preds = %do.body.320
  br label %do.end.322

do.end.322:                                       ; preds = %do.cond.321
  %197 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %197, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.322, %if.then.318, %if.then.177, %if.then.172
  %198 = bitcast %struct.trap_gradient_s* %xg to i8*
  call void @llvm.lifetime.end(i64 32, i8* %198) #1
  %199 = bitcast %struct.trap_gradient_s* %rg to i8*
  call void @llvm.lifetime.end(i64 32, i8* %199) #1
  %200 = bitcast %struct.trap_gradient_s* %lg to i8*
  call void @llvm.lifetime.end(i64 32, i8* %200) #1
  %201 = bitcast [64 x i32]* %xgnum to i8*
  call void @llvm.lifetime.end(i64 256, i8* %201) #1
  %202 = bitcast [64 x i32]* %xgf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %202) #1
  %203 = bitcast [64 x i32]* %xgc to i8*
  call void @llvm.lifetime.end(i64 256, i8* %203) #1
  %204 = bitcast [64 x i32]* %rgnum to i8*
  call void @llvm.lifetime.end(i64 256, i8* %204) #1
  %205 = bitcast [64 x i32]* %rgf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %205) #1
  %206 = bitcast [64 x i32]* %rgc to i8*
  call void @llvm.lifetime.end(i64 256, i8* %206) #1
  %207 = bitcast [64 x i32]* %lgnum to i8*
  call void @llvm.lifetime.end(i64 256, i8* %207) #1
  %208 = bitcast [64 x i32]* %lgf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %208) #1
  %209 = bitcast [64 x i32]* %lgc to i8*
  call void @llvm.lifetime.end(i64 256, i8* %209) #1
  %210 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %224) #1
  %225 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %225) #1
  %226 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  br label %cleanup.352

cleanup.352:                                      ; preds = %cleanup, %if.then
  %228 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = load i32, i32* %retval
  ret i32 %230
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_fill_trapezoid_ns_lc(%struct.gx_device_s* %dev, %struct.gs_linear_color_edge_s* %left, %struct.gs_linear_color_edge_s* %right, i32 %ybot, i32 %ytop, i32 %flags, %struct.gx_device_color_s* %pdevc, %struct.gs_fill_attributes_s* %fa) #0 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.gx_device_s*, align 8
  %left.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %right.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %ybot.addr = alloca i32, align 4
  %ytop.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %pdevc.addr = alloca %struct.gx_device_color_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %ymin = alloca i32, align 4
  %ymax = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %iy = alloca i32, align 4
  %iy1 = alloca i32, align 4
  %l = alloca %struct.trap_line_s, align 4
  %r = alloca %struct.trap_line_s, align 4
  %rxl = alloca i32, align 4
  %rxr = alloca i32, align 4
  %ry = alloca i32, align 4
  %x0l = alloca i32, align 4
  %x1l = alloca i32, align 4
  %x0r = alloca i32, align 4
  %x1r = alloca i32, align 4
  %dxl = alloca i32, align 4
  %dxr = alloca i32, align 4
  %ysl = alloca i32, align 4
  %ysr = alloca i32, align 4
  %fxl = alloca i32, align 4
  %code = alloca i32, align 4
  %num_components = alloca i32, align 4
  %lgc = alloca [64 x i32], align 16
  %lgf = alloca [64 x i32], align 16
  %lgnum = alloca [64 x i32], align 16
  %rgc = alloca [64 x i32], align 16
  %rgf = alloca [64 x i32], align 16
  %rgnum = alloca [64 x i32], align 16
  %xgc = alloca [64 x i32], align 16
  %xgf = alloca [64 x i32], align 16
  %xgnum = alloca [64 x i32], align 16
  %lg = alloca %struct.trap_gradient_s, align 8
  %rg = alloca %struct.trap_gradient_s, align 8
  %xg = alloca %struct.trap_gradient_s, align 8
  store %struct.gx_device_s* %dev, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %left, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %right, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %ytop, i32* %ytop.addr, align 4, !tbaa !5
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  store %struct.gx_device_color_s* %pdevc, %struct.gx_device_color_s** %pdevc.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %0 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %add = add nsw i64 %conv, 127
  %and = and i64 %add, -256
  %add1 = add nsw i64 %and, 128
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, i32* %ymin, align 4, !tbaa !5
  %2 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load i32, i32* %ytop.addr, align 4, !tbaa !5
  %conv3 = sext i32 %3 to i64
  %add4 = add nsw i64 %conv3, 127
  %and5 = and i64 %add4, -256
  %conv6 = trunc i64 %and5 to i32
  store i32 %conv6, i32* %ymax, align 4, !tbaa !5
  %4 = load i32, i32* %ymin, align 4, !tbaa !5
  %5 = load i32, i32* %ymax, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.352

if.end:                                           ; preds = %entry
  %6 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = load i32, i32* %ymin, align 4, !tbaa !5
  %shr = ashr i32 %7, 8
  store i32 %shr, i32* %iy, align 4, !tbaa !5
  %8 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load i32, i32* %ymax, align 4, !tbaa !5
  %shr8 = ashr i32 %9, 8
  store i32 %shr8, i32* %iy1, align 4, !tbaa !5
  %10 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.start(i64 28, i8* %10) #1
  %11 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.start(i64 28, i8* %11) #1
  %12 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #1
  %13 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #1
  %14 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %15) #1
  %16 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %16, i32 0, i32 0
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 0
  %17 = load i32, i32* %x, align 4, !tbaa !55
  store i32 %17, i32* %x0l, align 4, !tbaa !5
  %18 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %19, i32 0, i32 1
  %x9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 0
  %20 = load i32, i32* %x9, align 4, !tbaa !56
  store i32 %20, i32* %x1l, align 4, !tbaa !5
  %21 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %21) #1
  %22 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %start10 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %22, i32 0, i32 0
  %x11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start10, i32 0, i32 0
  %23 = load i32, i32* %x11, align 4, !tbaa !55
  store i32 %23, i32* %x0r, align 4, !tbaa !5
  %24 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.start(i64 4, i8* %24) #1
  %25 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %end12 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %25, i32 0, i32 1
  %x13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end12, i32 0, i32 0
  %26 = load i32, i32* %x13, align 4, !tbaa !56
  store i32 %26, i32* %x1r, align 4, !tbaa !5
  %27 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %x1l, align 4, !tbaa !5
  %29 = load i32, i32* %x0l, align 4, !tbaa !5
  %sub = sub nsw i32 %28, %29
  store i32 %sub, i32* %dxl, align 4, !tbaa !5
  %30 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %30) #1
  %31 = load i32, i32* %x1r, align 4, !tbaa !5
  %32 = load i32, i32* %x0r, align 4, !tbaa !5
  %sub14 = sub nsw i32 %31, %32
  store i32 %sub14, i32* %dxr, align 4, !tbaa !5
  %33 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %33) #1
  %34 = load i32, i32* %ymin, align 4, !tbaa !5
  %35 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %start15 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %35, i32 0, i32 0
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start15, i32 0, i32 1
  %36 = load i32, i32* %y, align 4, !tbaa !57
  %sub16 = sub nsw i32 %34, %36
  store i32 %sub16, i32* %ysl, align 4, !tbaa !5
  %37 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %ymin, align 4, !tbaa !5
  %39 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %start17 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %39, i32 0, i32 0
  %y18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start17, i32 0, i32 1
  %40 = load i32, i32* %y18, align 4, !tbaa !57
  %sub19 = sub nsw i32 %38, %40
  store i32 %sub19, i32* %ysr, align 4, !tbaa !5
  %41 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %42 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %42) #1
  %43 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.start(i64 4, i8* %43) #1
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %color_info = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 11
  %num_components20 = getelementptr inbounds %struct.gx_device_color_info_s, %struct.gx_device_color_info_s* %color_info, i32 0, i32 1
  %45 = load i32, i32* %num_components20, align 4, !tbaa !44
  store i32 %45, i32* %num_components, align 4, !tbaa !5
  %46 = bitcast [64 x i32]* %lgc to i8*
  call void @llvm.lifetime.start(i64 256, i8* %46) #1
  %47 = bitcast [64 x i32]* %lgf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %47) #1
  %48 = bitcast [64 x i32]* %lgnum to i8*
  call void @llvm.lifetime.start(i64 256, i8* %48) #1
  %49 = bitcast [64 x i32]* %rgc to i8*
  call void @llvm.lifetime.start(i64 256, i8* %49) #1
  %50 = bitcast [64 x i32]* %rgf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %50) #1
  %51 = bitcast [64 x i32]* %rgnum to i8*
  call void @llvm.lifetime.start(i64 256, i8* %51) #1
  %52 = bitcast [64 x i32]* %xgc to i8*
  call void @llvm.lifetime.start(i64 256, i8* %52) #1
  %53 = bitcast [64 x i32]* %xgf to i8*
  call void @llvm.lifetime.start(i64 256, i8* %53) #1
  %54 = bitcast [64 x i32]* %xgnum to i8*
  call void @llvm.lifetime.start(i64 256, i8* %54) #1
  %55 = bitcast %struct.trap_gradient_s* %lg to i8*
  call void @llvm.lifetime.start(i64 32, i8* %55) #1
  %56 = bitcast %struct.trap_gradient_s* %rg to i8*
  call void @llvm.lifetime.start(i64 32, i8* %56) #1
  %57 = bitcast %struct.trap_gradient_s* %xg to i8*
  call void @llvm.lifetime.start(i64 32, i8* %57) #1
  br label %do.body

do.body:                                          ; preds = %if.end
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %58 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %end21 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %58, i32 0, i32 1
  %y22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end21, i32 0, i32 1
  %59 = load i32, i32* %y22, align 4, !tbaa !59
  %60 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %start23 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %60, i32 0, i32 0
  %y24 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start23, i32 0, i32 1
  %61 = load i32, i32* %y24, align 4, !tbaa !57
  %sub25 = sub nsw i32 %59, %61
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  store i32 %sub25, i32* %h, align 4, !tbaa !27
  %62 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %end26 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %62, i32 0, i32 1
  %y27 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end26, i32 0, i32 1
  %63 = load i32, i32* %y27, align 4, !tbaa !59
  %64 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %start28 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %64, i32 0, i32 0
  %y29 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start28, i32 0, i32 1
  %65 = load i32, i32* %y29, align 4, !tbaa !57
  %sub30 = sub nsw i32 %63, %65
  %h31 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  store i32 %sub30, i32* %h31, align 4, !tbaa !27
  %66 = load i32, i32* %x0l, align 4, !tbaa !5
  %conv32 = sext i32 %66 to i64
  %add33 = add nsw i64 %conv32, 127
  %conv34 = trunc i64 %add33 to i32
  %x35 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  store i32 %conv34, i32* %x35, align 4, !tbaa !29
  %67 = load i32, i32* %x0r, align 4, !tbaa !5
  %conv36 = sext i32 %67 to i64
  %add37 = add nsw i64 %conv36, 127
  %conv38 = trunc i64 %add37 to i32
  %x39 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  store i32 %conv38, i32* %x39, align 4, !tbaa !29
  %68 = load i32, i32* %iy, align 4, !tbaa !5
  store i32 %68, i32* %ry, align 4, !tbaa !5
  %x40 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %69 = load i32, i32* %x40, align 4, !tbaa !29
  %conv41 = sext i32 %69 to i64
  %and42 = and i64 %conv41, -256
  %70 = load i32, i32* %x1l, align 4, !tbaa !5
  %conv43 = sext i32 %70 to i64
  %add44 = add nsw i64 %conv43, 127
  %and45 = and i64 %add44, -256
  %cmp46 = icmp eq i64 %and42, %and45
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %do.end
  %di = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  store i32 0, i32* %di, align 4, !tbaa !30
  %df = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  store i32 0, i32* %df, align 4, !tbaa !31
  store i32 0, i32* %fxl, align 4, !tbaa !5
  br label %if.end.62

if.else:                                          ; preds = %do.end
  %71 = load i32, i32* %dxl, align 4, !tbaa !5
  %72 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %l, i32 %71, i32 %72) #4
  %73 = load i32, i32* %ysl, align 4, !tbaa !5
  %conv49 = sext i32 %73 to i64
  %cmp50 = icmp slt i64 %conv49, 256
  br i1 %cmp50, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.else
  %df52 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %74 = load i32, i32* %df52, align 4, !tbaa !31
  %conv53 = sext i32 %74 to i64
  %cmp54 = icmp slt i64 %conv53, 8388607
  br i1 %cmp54, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %75 = load i32, i32* %ysl, align 4, !tbaa !5
  %df56 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %76 = load i32, i32* %df56, align 4, !tbaa !31
  %mul = mul nsw i32 %75, %76
  %h57 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %77 = load i32, i32* %h57, align 4, !tbaa !27
  %div = sdiv i32 %mul, %77
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.else
  %78 = load i32, i32* %ysl, align 4, !tbaa !5
  %df58 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %79 = load i32, i32* %df58, align 4, !tbaa !31
  %h59 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %80 = load i32, i32* %h59, align 4, !tbaa !27
  %call = call i32 @fixed_mult_quo(i32 %78, i32 %79, i32 %80) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %fxl, align 4, !tbaa !5
  %81 = load i32, i32* %fxl, align 4, !tbaa !5
  %x60 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %82 = load i32, i32* %x60, align 4, !tbaa !29
  %add61 = add nsw i32 %82, %81
  store i32 %add61, i32* %x60, align 4, !tbaa !29
  br label %if.end.62

if.end.62:                                        ; preds = %cond.end, %if.then.48
  %x63 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %83 = load i32, i32* %x63, align 4, !tbaa !29
  %conv64 = sext i32 %83 to i64
  %and65 = and i64 %conv64, -256
  %84 = load i32, i32* %x1r, align 4, !tbaa !5
  %conv66 = sext i32 %84 to i64
  %add67 = add nsw i64 %conv66, 127
  %and68 = and i64 %add67, -256
  %cmp69 = icmp eq i64 %and65, %and68
  br i1 %cmp69, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.end.62
  %di72 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di72, align 4, !tbaa !30
  %df73 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 0, i32* %df73, align 4, !tbaa !31
  br label %if.end.146

if.else.74:                                       ; preds = %if.end.62
  %85 = load i32, i32* %dxr, align 4, !tbaa !5
  %86 = load i32, i32* %dxl, align 4, !tbaa !5
  %cmp75 = icmp eq i32 %85, %86
  br i1 %cmp75, label %land.lhs.true.77, label %if.else.123

land.lhs.true.77:                                 ; preds = %if.else.74
  %87 = load i32, i32* %fxl, align 4, !tbaa !5
  %cmp78 = icmp ne i32 %87, 0
  br i1 %cmp78, label %if.then.80, label %if.else.123

if.then.80:                                       ; preds = %land.lhs.true.77
  %di81 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 1
  %88 = load i32, i32* %di81, align 4, !tbaa !30
  %cmp82 = icmp eq i32 %88, 0
  br i1 %cmp82, label %if.then.84, label %if.else.88

if.then.84:                                       ; preds = %if.then.80
  %di85 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 1
  store i32 0, i32* %di85, align 4, !tbaa !30
  %df86 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 2
  %89 = load i32, i32* %df86, align 4, !tbaa !31
  %df87 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  store i32 %89, i32* %df87, align 4, !tbaa !31
  br label %if.end.89

if.else.88:                                       ; preds = %if.then.80
  %90 = load i32, i32* %dxr, align 4, !tbaa !5
  %91 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %90, i32 %91) #4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88, %if.then.84
  %92 = load i32, i32* %ysr, align 4, !tbaa !5
  %93 = load i32, i32* %ysl, align 4, !tbaa !5
  %cmp90 = icmp eq i32 %92, %93
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.100

land.lhs.true.92:                                 ; preds = %if.end.89
  %h93 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %94 = load i32, i32* %h93, align 4, !tbaa !27
  %h94 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %95 = load i32, i32* %h94, align 4, !tbaa !27
  %cmp95 = icmp eq i32 %94, %95
  br i1 %cmp95, label %if.then.97, label %if.else.100

if.then.97:                                       ; preds = %land.lhs.true.92
  %96 = load i32, i32* %fxl, align 4, !tbaa !5
  %x98 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %97 = load i32, i32* %x98, align 4, !tbaa !29
  %add99 = add nsw i32 %97, %96
  store i32 %add99, i32* %x98, align 4, !tbaa !29
  br label %if.end.122

if.else.100:                                      ; preds = %land.lhs.true.92, %if.end.89
  %98 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv101 = sext i32 %98 to i64
  %cmp102 = icmp slt i64 %conv101, 256
  br i1 %cmp102, label %land.lhs.true.104, label %cond.false.114

land.lhs.true.104:                                ; preds = %if.else.100
  %df105 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %99 = load i32, i32* %df105, align 4, !tbaa !31
  %conv106 = sext i32 %99 to i64
  %cmp107 = icmp slt i64 %conv106, 8388607
  br i1 %cmp107, label %cond.true.109, label %cond.false.114

cond.true.109:                                    ; preds = %land.lhs.true.104
  %100 = load i32, i32* %ysr, align 4, !tbaa !5
  %df110 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %101 = load i32, i32* %df110, align 4, !tbaa !31
  %mul111 = mul nsw i32 %100, %101
  %h112 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %102 = load i32, i32* %h112, align 4, !tbaa !27
  %div113 = sdiv i32 %mul111, %102
  br label %cond.end.118

cond.false.114:                                   ; preds = %land.lhs.true.104, %if.else.100
  %103 = load i32, i32* %ysr, align 4, !tbaa !5
  %df115 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %104 = load i32, i32* %df115, align 4, !tbaa !31
  %h116 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %105 = load i32, i32* %h116, align 4, !tbaa !27
  %call117 = call i32 @fixed_mult_quo(i32 %103, i32 %104, i32 %105) #4
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.114, %cond.true.109
  %cond119 = phi i32 [ %div113, %cond.true.109 ], [ %call117, %cond.false.114 ]
  %x120 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %106 = load i32, i32* %x120, align 4, !tbaa !29
  %add121 = add nsw i32 %106, %cond119
  store i32 %add121, i32* %x120, align 4, !tbaa !29
  br label %if.end.122

if.end.122:                                       ; preds = %cond.end.118, %if.then.97
  br label %if.end.145

if.else.123:                                      ; preds = %land.lhs.true.77, %if.else.74
  %107 = load i32, i32* %dxr, align 4, !tbaa !5
  %108 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_dx(%struct.trap_line_s* %r, i32 %107, i32 %108) #4
  %109 = load i32, i32* %ysr, align 4, !tbaa !5
  %conv124 = sext i32 %109 to i64
  %cmp125 = icmp slt i64 %conv124, 256
  br i1 %cmp125, label %land.lhs.true.127, label %cond.false.137

land.lhs.true.127:                                ; preds = %if.else.123
  %df128 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %110 = load i32, i32* %df128, align 4, !tbaa !31
  %conv129 = sext i32 %110 to i64
  %cmp130 = icmp slt i64 %conv129, 8388607
  br i1 %cmp130, label %cond.true.132, label %cond.false.137

cond.true.132:                                    ; preds = %land.lhs.true.127
  %111 = load i32, i32* %ysr, align 4, !tbaa !5
  %df133 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %112 = load i32, i32* %df133, align 4, !tbaa !31
  %mul134 = mul nsw i32 %111, %112
  %h135 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %113 = load i32, i32* %h135, align 4, !tbaa !27
  %div136 = sdiv i32 %mul134, %113
  br label %cond.end.141

cond.false.137:                                   ; preds = %land.lhs.true.127, %if.else.123
  %114 = load i32, i32* %ysr, align 4, !tbaa !5
  %df138 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 2
  %115 = load i32, i32* %df138, align 4, !tbaa !31
  %h139 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %116 = load i32, i32* %h139, align 4, !tbaa !27
  %call140 = call i32 @fixed_mult_quo(i32 %114, i32 %115, i32 %116) #4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.137, %cond.true.132
  %cond142 = phi i32 [ %div136, %cond.true.132 ], [ %call140, %cond.false.137 ]
  %x143 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %117 = load i32, i32* %x143, align 4, !tbaa !29
  %add144 = add nsw i32 %117, %cond142
  store i32 %add144, i32* %x143, align 4, !tbaa !29
  br label %if.end.145

if.end.145:                                       ; preds = %cond.end.141, %if.end.122
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.71
  %118 = load i32, i32* %ysl, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %l, i32 %118) #4
  %119 = load i32, i32* %ysr, align 4, !tbaa !5
  call void @compute_ldx(%struct.trap_line_s* %r, i32 %119) #4
  %x147 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %120 = load i32, i32* %x147, align 4, !tbaa !29
  %conv148 = sext i32 %120 to i64
  %add149 = add nsw i64 %conv148, 1
  %conv150 = trunc i64 %add149 to i32
  store i32 %conv150, i32* %x147, align 4, !tbaa !29
  %x151 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %121 = load i32, i32* %x151, align 4, !tbaa !29
  %conv152 = sext i32 %121 to i64
  %add153 = add nsw i64 %conv152, 1
  %conv154 = trunc i64 %add153 to i32
  store i32 %conv154, i32* %x151, align 4, !tbaa !29
  %arraydecay = getelementptr inbounds [64 x i32], [64 x i32]* %lgc, i32 0, i32 0
  %c = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %lg, i32 0, i32 0
  store i32* %arraydecay, i32** %c, align 8, !tbaa !91
  %arraydecay155 = getelementptr inbounds [64 x i32], [64 x i32]* %lgf, i32 0, i32 0
  %f = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %lg, i32 0, i32 1
  store i32* %arraydecay155, i32** %f, align 8, !tbaa !93
  %arraydecay156 = getelementptr inbounds [64 x i32], [64 x i32]* %lgnum, i32 0, i32 0
  %num = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %lg, i32 0, i32 2
  store i32* %arraydecay156, i32** %num, align 8, !tbaa !94
  %arraydecay157 = getelementptr inbounds [64 x i32], [64 x i32]* %rgc, i32 0, i32 0
  %c158 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %rg, i32 0, i32 0
  store i32* %arraydecay157, i32** %c158, align 8, !tbaa !91
  %arraydecay159 = getelementptr inbounds [64 x i32], [64 x i32]* %rgf, i32 0, i32 0
  %f160 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %rg, i32 0, i32 1
  store i32* %arraydecay159, i32** %f160, align 8, !tbaa !93
  %arraydecay161 = getelementptr inbounds [64 x i32], [64 x i32]* %rgnum, i32 0, i32 0
  %num162 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %rg, i32 0, i32 2
  store i32* %arraydecay161, i32** %num162, align 8, !tbaa !94
  %arraydecay163 = getelementptr inbounds [64 x i32], [64 x i32]* %xgc, i32 0, i32 0
  %c164 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 0
  store i32* %arraydecay163, i32** %c164, align 8, !tbaa !91
  %arraydecay165 = getelementptr inbounds [64 x i32], [64 x i32]* %xgf, i32 0, i32 0
  %f166 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 1
  store i32* %arraydecay165, i32** %f166, align 8, !tbaa !93
  %arraydecay167 = getelementptr inbounds [64 x i32], [64 x i32]* %xgnum, i32 0, i32 0
  %num168 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 2
  store i32* %arraydecay167, i32** %num168, align 8, !tbaa !94
  %122 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %123 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %124 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %125 = load i32, i32* %ymin, align 4, !tbaa !5
  %126 = load i32, i32* %num_components, align 4, !tbaa !5
  %call169 = call i32 @init_gradient(%struct.trap_gradient_s* %lg, %struct.gs_fill_attributes_s* %122, %struct.gs_linear_color_edge_s* %123, %struct.gs_linear_color_edge_s* %124, %struct.trap_line_s* %l, i32 %125, i32 %126) #4
  store i32 %call169, i32* %code, align 4, !tbaa !5
  %127 = load i32, i32* %code, align 4, !tbaa !5
  %cmp170 = icmp slt i32 %127, 0
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.146
  %128 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %128, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.173:                                       ; preds = %if.end.146
  %129 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %130 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %right.addr, align 8, !tbaa !1
  %131 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %left.addr, align 8, !tbaa !1
  %132 = load i32, i32* %ymin, align 4, !tbaa !5
  %133 = load i32, i32* %num_components, align 4, !tbaa !5
  %call174 = call i32 @init_gradient(%struct.trap_gradient_s* %rg, %struct.gs_fill_attributes_s* %129, %struct.gs_linear_color_edge_s* %130, %struct.gs_linear_color_edge_s* %131, %struct.trap_line_s* %r, i32 %132, i32 %133) #4
  store i32 %call174, i32* %code, align 4, !tbaa !5
  %134 = load i32, i32* %code, align 4, !tbaa !5
  %cmp175 = icmp slt i32 %134, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %if.end.173
  %135 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %135, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.178:                                       ; preds = %if.end.173
  %x179 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %136 = load i32, i32* %x179, align 4, !tbaa !29
  %and180 = and i32 %136, 255
  %tobool = icmp ne i32 %and180, 0
  br i1 %tobool, label %cond.false.190, label %land.lhs.true.181

land.lhs.true.181:                                ; preds = %if.end.178
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %137 = load i32, i32* %xf, align 4, !tbaa !32
  %h182 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %138 = load i32, i32* %h182, align 4, !tbaa !27
  %sub183 = sub nsw i32 0, %138
  %cmp184 = icmp eq i32 %137, %sub183
  br i1 %cmp184, label %cond.true.186, label %cond.false.190

cond.true.186:                                    ; preds = %land.lhs.true.181
  %x187 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %139 = load i32, i32* %x187, align 4, !tbaa !29
  %conv188 = sext i32 %139 to i64
  %sub189 = sub nsw i64 %conv188, 256
  br label %cond.end.193

cond.false.190:                                   ; preds = %land.lhs.true.181, %if.end.178
  %x191 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %140 = load i32, i32* %x191, align 4, !tbaa !29
  %conv192 = sext i32 %140 to i64
  br label %cond.end.193

cond.end.193:                                     ; preds = %cond.false.190, %cond.true.186
  %cond194 = phi i64 [ %sub189, %cond.true.186 ], [ %conv192, %cond.false.190 ]
  %shr195 = ashr i64 %cond194, 8
  %conv196 = trunc i64 %shr195 to i32
  store i32 %conv196, i32* %rxl, align 4, !tbaa !5
  %x197 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %141 = load i32, i32* %x197, align 4, !tbaa !29
  %and198 = and i32 %141, 255
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %cond.false.210, label %land.lhs.true.200

land.lhs.true.200:                                ; preds = %cond.end.193
  %xf201 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %142 = load i32, i32* %xf201, align 4, !tbaa !32
  %h202 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %143 = load i32, i32* %h202, align 4, !tbaa !27
  %sub203 = sub nsw i32 0, %143
  %cmp204 = icmp eq i32 %142, %sub203
  br i1 %cmp204, label %cond.true.206, label %cond.false.210

cond.true.206:                                    ; preds = %land.lhs.true.200
  %x207 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %144 = load i32, i32* %x207, align 4, !tbaa !29
  %conv208 = sext i32 %144 to i64
  %sub209 = sub nsw i64 %conv208, 256
  br label %cond.end.213

cond.false.210:                                   ; preds = %land.lhs.true.200, %cond.end.193
  %x211 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %145 = load i32, i32* %x211, align 4, !tbaa !29
  %conv212 = sext i32 %145 to i64
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.206
  %cond214 = phi i64 [ %sub209, %cond.true.206 ], [ %conv212, %cond.false.210 ]
  %shr215 = ashr i64 %cond214, 8
  %conv216 = trunc i64 %shr215 to i32
  store i32 %conv216, i32* %rxr, align 4, !tbaa !5
  br label %do.body.217

do.body.217:                                      ; preds = %cond.end.213
  br label %do.cond.218

do.cond.218:                                      ; preds = %do.body.217
  br label %do.end.219

do.end.219:                                       ; preds = %do.cond.218
  br label %while.cond

while.cond:                                       ; preds = %cond.end.312, %do.end.219
  br label %while.body

while.body:                                       ; preds = %while.cond
  %146 = load i32, i32* %rxl, align 4, !tbaa !5
  %147 = load i32, i32* %rxr, align 4, !tbaa !5
  %cmp220 = icmp ne i32 %146, %147
  br i1 %cmp220, label %if.then.222, label %if.end.243

if.then.222:                                      ; preds = %while.body
  %148 = load i32, i32* %rxl, align 4, !tbaa !5
  %149 = load i32, i32* %rxr, align 4, !tbaa !5
  %150 = load i32, i32* %num_components, align 4, !tbaa !5
  %call223 = call i32 @set_x_gradient(%struct.trap_gradient_s* %xg, %struct.trap_gradient_s* %lg, %struct.trap_gradient_s* %rg, %struct.trap_line_s* %l, %struct.trap_line_s* %r, i32 %148, i32 %149, i32 %150) #4
  store i32 %call223, i32* %code, align 4, !tbaa !5
  %151 = load i32, i32* %code, align 4, !tbaa !5
  %cmp224 = icmp slt i32 %151, 0
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.then.222
  br label %xit

if.end.227:                                       ; preds = %if.then.222
  %152 = load i32, i32* %rxr, align 4, !tbaa !5
  %153 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub228 = sub nsw i32 %152, %153
  %tobool229 = icmp ne i32 %sub228, 0
  br i1 %tobool229, label %cond.false.231, label %cond.true.230

cond.true.230:                                    ; preds = %if.end.227
  br label %cond.end.237

cond.false.231:                                   ; preds = %if.end.227
  %154 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %154, i32 0, i32 42
  %fill_linear_color_scanline = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %procs, i32 0, i32 56
  %155 = load i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)** %fill_linear_color_scanline, align 8, !tbaa !95
  %156 = load %struct.gx_device_s*, %struct.gx_device_s** %dev.addr, align 8, !tbaa !1
  %157 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %158 = load i32, i32* %rxl, align 4, !tbaa !5
  %159 = load i32, i32* %iy, align 4, !tbaa !5
  %160 = load i32, i32* %rxr, align 4, !tbaa !5
  %161 = load i32, i32* %rxl, align 4, !tbaa !5
  %sub232 = sub nsw i32 %160, %161
  %c233 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 0
  %162 = load i32*, i32** %c233, align 8, !tbaa !91
  %f234 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 1
  %163 = load i32*, i32** %f234, align 8, !tbaa !93
  %num235 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 2
  %164 = load i32*, i32** %num235, align 8, !tbaa !94
  %den = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %xg, i32 0, i32 3
  %165 = load i32, i32* %den, align 4, !tbaa !96
  %call236 = call i32 %155(%struct.gx_device_s* %156, %struct.gs_fill_attributes_s* %157, i32 %158, i32 %159, i32 %sub232, i32* %162, i32* %163, i32* %164, i32 %165) #4
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.231, %cond.true.230
  %cond238 = phi i32 [ 0, %cond.true.230 ], [ %call236, %cond.false.231 ]
  store i32 %cond238, i32* %code, align 4, !tbaa !5
  %166 = load i32, i32* %code, align 4, !tbaa !5
  %cmp239 = icmp slt i32 %166, 0
  br i1 %cmp239, label %if.then.241, label %if.end.242

if.then.241:                                      ; preds = %cond.end.237
  br label %xit

if.end.242:                                       ; preds = %cond.end.237
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %while.body
  %167 = load i32, i32* %iy, align 4, !tbaa !5
  %inc = add nsw i32 %167, 1
  store i32 %inc, i32* %iy, align 4, !tbaa !5
  %168 = load i32, i32* %iy1, align 4, !tbaa !5
  %cmp244 = icmp eq i32 %inc, %168
  br i1 %cmp244, label %if.then.246, label %if.end.247

if.then.246:                                      ; preds = %if.end.243
  br label %while.end

if.end.247:                                       ; preds = %if.end.243
  %ldi = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 5
  %169 = load i32, i32* %ldi, align 4, !tbaa !33
  %x248 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %170 = load i32, i32* %x248, align 4, !tbaa !29
  %add249 = add nsw i32 %170, %169
  store i32 %add249, i32* %x248, align 4, !tbaa !29
  %ldf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 6
  %171 = load i32, i32* %ldf, align 4, !tbaa !34
  %xf250 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %172 = load i32, i32* %xf250, align 4, !tbaa !32
  %add251 = add nsw i32 %172, %171
  store i32 %add251, i32* %xf250, align 4, !tbaa !32
  %cmp252 = icmp sge i32 %add251, 0
  br i1 %cmp252, label %if.then.254, label %if.end.260

if.then.254:                                      ; preds = %if.end.247
  %h255 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %173 = load i32, i32* %h255, align 4, !tbaa !27
  %xf256 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %174 = load i32, i32* %xf256, align 4, !tbaa !32
  %sub257 = sub nsw i32 %174, %173
  store i32 %sub257, i32* %xf256, align 4, !tbaa !32
  %x258 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %175 = load i32, i32* %x258, align 4, !tbaa !29
  %inc259 = add nsw i32 %175, 1
  store i32 %inc259, i32* %x258, align 4, !tbaa !29
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.254, %if.end.247
  %x261 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %176 = load i32, i32* %x261, align 4, !tbaa !29
  %and262 = and i32 %176, 255
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %cond.false.274, label %land.lhs.true.264

land.lhs.true.264:                                ; preds = %if.end.260
  %xf265 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 4
  %177 = load i32, i32* %xf265, align 4, !tbaa !32
  %h266 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 0
  %178 = load i32, i32* %h266, align 4, !tbaa !27
  %sub267 = sub nsw i32 0, %178
  %cmp268 = icmp eq i32 %177, %sub267
  br i1 %cmp268, label %cond.true.270, label %cond.false.274

cond.true.270:                                    ; preds = %land.lhs.true.264
  %x271 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %179 = load i32, i32* %x271, align 4, !tbaa !29
  %conv272 = sext i32 %179 to i64
  %sub273 = sub nsw i64 %conv272, 256
  br label %cond.end.277

cond.false.274:                                   ; preds = %land.lhs.true.264, %if.end.260
  %x275 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %l, i32 0, i32 3
  %180 = load i32, i32* %x275, align 4, !tbaa !29
  %conv276 = sext i32 %180 to i64
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.274, %cond.true.270
  %cond278 = phi i64 [ %sub273, %cond.true.270 ], [ %conv276, %cond.false.274 ]
  %shr279 = ashr i64 %cond278, 8
  %conv280 = trunc i64 %shr279 to i32
  store i32 %conv280, i32* %rxl, align 4, !tbaa !5
  %ldi281 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 5
  %181 = load i32, i32* %ldi281, align 4, !tbaa !33
  %x282 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %182 = load i32, i32* %x282, align 4, !tbaa !29
  %add283 = add nsw i32 %182, %181
  store i32 %add283, i32* %x282, align 4, !tbaa !29
  %ldf284 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 6
  %183 = load i32, i32* %ldf284, align 4, !tbaa !34
  %xf285 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %184 = load i32, i32* %xf285, align 4, !tbaa !32
  %add286 = add nsw i32 %184, %183
  store i32 %add286, i32* %xf285, align 4, !tbaa !32
  %cmp287 = icmp sge i32 %add286, 0
  br i1 %cmp287, label %if.then.289, label %if.end.295

if.then.289:                                      ; preds = %cond.end.277
  %h290 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %185 = load i32, i32* %h290, align 4, !tbaa !27
  %xf291 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %186 = load i32, i32* %xf291, align 4, !tbaa !32
  %sub292 = sub nsw i32 %186, %185
  store i32 %sub292, i32* %xf291, align 4, !tbaa !32
  %x293 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %187 = load i32, i32* %x293, align 4, !tbaa !29
  %inc294 = add nsw i32 %187, 1
  store i32 %inc294, i32* %x293, align 4, !tbaa !29
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.289, %cond.end.277
  %x296 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %188 = load i32, i32* %x296, align 4, !tbaa !29
  %and297 = and i32 %188, 255
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %cond.false.309, label %land.lhs.true.299

land.lhs.true.299:                                ; preds = %if.end.295
  %xf300 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 4
  %189 = load i32, i32* %xf300, align 4, !tbaa !32
  %h301 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 0
  %190 = load i32, i32* %h301, align 4, !tbaa !27
  %sub302 = sub nsw i32 0, %190
  %cmp303 = icmp eq i32 %189, %sub302
  br i1 %cmp303, label %cond.true.305, label %cond.false.309

cond.true.305:                                    ; preds = %land.lhs.true.299
  %x306 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %191 = load i32, i32* %x306, align 4, !tbaa !29
  %conv307 = sext i32 %191 to i64
  %sub308 = sub nsw i64 %conv307, 256
  br label %cond.end.312

cond.false.309:                                   ; preds = %land.lhs.true.299, %if.end.295
  %x310 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %r, i32 0, i32 3
  %192 = load i32, i32* %x310, align 4, !tbaa !29
  %conv311 = sext i32 %192 to i64
  br label %cond.end.312

cond.end.312:                                     ; preds = %cond.false.309, %cond.true.305
  %cond313 = phi i64 [ %sub308, %cond.true.305 ], [ %conv311, %cond.false.309 ]
  %shr314 = ashr i64 %cond313, 8
  %conv315 = trunc i64 %shr314 to i32
  store i32 %conv315, i32* %rxr, align 4, !tbaa !5
  %193 = load i32, i32* %num_components, align 4, !tbaa !5
  call void @step_gradient(%struct.trap_gradient_s* %lg, i32 %193) #4
  %194 = load i32, i32* %num_components, align 4, !tbaa !5
  call void @step_gradient(%struct.trap_gradient_s* %rg, i32 %194) #4
  br label %while.cond

while.end:                                        ; preds = %if.then.246
  store i32 0, i32* %code, align 4, !tbaa !5
  br label %xit

xit:                                              ; preds = %while.end, %if.then.241, %if.then.226
  %195 = load i32, i32* %code, align 4, !tbaa !5
  %cmp316 = icmp slt i32 %195, 0
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %xit
  %196 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %196, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.319:                                       ; preds = %xit
  br label %do.body.320

do.body.320:                                      ; preds = %if.end.319
  br label %do.cond.321

do.cond.321:                                      ; preds = %do.body.320
  br label %do.end.322

do.end.322:                                       ; preds = %do.cond.321
  %197 = load i32, i32* %code, align 4, !tbaa !5
  store i32 %197, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.322, %if.then.318, %if.then.177, %if.then.172
  %198 = bitcast %struct.trap_gradient_s* %xg to i8*
  call void @llvm.lifetime.end(i64 32, i8* %198) #1
  %199 = bitcast %struct.trap_gradient_s* %rg to i8*
  call void @llvm.lifetime.end(i64 32, i8* %199) #1
  %200 = bitcast %struct.trap_gradient_s* %lg to i8*
  call void @llvm.lifetime.end(i64 32, i8* %200) #1
  %201 = bitcast [64 x i32]* %xgnum to i8*
  call void @llvm.lifetime.end(i64 256, i8* %201) #1
  %202 = bitcast [64 x i32]* %xgf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %202) #1
  %203 = bitcast [64 x i32]* %xgc to i8*
  call void @llvm.lifetime.end(i64 256, i8* %203) #1
  %204 = bitcast [64 x i32]* %rgnum to i8*
  call void @llvm.lifetime.end(i64 256, i8* %204) #1
  %205 = bitcast [64 x i32]* %rgf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %205) #1
  %206 = bitcast [64 x i32]* %rgc to i8*
  call void @llvm.lifetime.end(i64 256, i8* %206) #1
  %207 = bitcast [64 x i32]* %lgnum to i8*
  call void @llvm.lifetime.end(i64 256, i8* %207) #1
  %208 = bitcast [64 x i32]* %lgf to i8*
  call void @llvm.lifetime.end(i64 256, i8* %208) #1
  %209 = bitcast [64 x i32]* %lgc to i8*
  call void @llvm.lifetime.end(i64 256, i8* %209) #1
  %210 = bitcast i32* %num_components to i8*
  call void @llvm.lifetime.end(i64 4, i8* %210) #1
  %211 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %211) #1
  %212 = bitcast i32* %fxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %212) #1
  %213 = bitcast i32* %ysr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %213) #1
  %214 = bitcast i32* %ysl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %214) #1
  %215 = bitcast i32* %dxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %215) #1
  %216 = bitcast i32* %dxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %216) #1
  %217 = bitcast i32* %x1r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %217) #1
  %218 = bitcast i32* %x0r to i8*
  call void @llvm.lifetime.end(i64 4, i8* %218) #1
  %219 = bitcast i32* %x1l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %219) #1
  %220 = bitcast i32* %x0l to i8*
  call void @llvm.lifetime.end(i64 4, i8* %220) #1
  %221 = bitcast i32* %ry to i8*
  call void @llvm.lifetime.end(i64 4, i8* %221) #1
  %222 = bitcast i32* %rxr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %222) #1
  %223 = bitcast i32* %rxl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %223) #1
  %224 = bitcast %struct.trap_line_s* %r to i8*
  call void @llvm.lifetime.end(i64 28, i8* %224) #1
  %225 = bitcast %struct.trap_line_s* %l to i8*
  call void @llvm.lifetime.end(i64 28, i8* %225) #1
  %226 = bitcast i32* %iy1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %226) #1
  %227 = bitcast i32* %iy to i8*
  call void @llvm.lifetime.end(i64 4, i8* %227) #1
  br label %cleanup.352

cleanup.352:                                      ; preds = %cleanup, %if.then
  %228 = bitcast i32* %ymax to i8*
  call void @llvm.lifetime.end(i64 4, i8* %228) #1
  %229 = bitcast i32* %ymin to i8*
  call void @llvm.lifetime.end(i64 4, i8* %229) #1
  %230 = load i32, i32* %retval
  ret i32 %230
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @init_gradient(%struct.trap_gradient_s* %g, %struct.gs_fill_attributes_s* %fa, %struct.gs_linear_color_edge_s* %e, %struct.gs_linear_color_edge_s* %e1, %struct.trap_line_s* %l, i32 %ybot, i32 %num_components) #2 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.trap_gradient_s*, align 8
  %fa.addr = alloca %struct.gs_fill_attributes_s*, align 8
  %e.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %e1.addr = alloca %struct.gs_linear_color_edge_s*, align 8
  %l.addr = alloca %struct.trap_line_s*, align 8
  %ybot.addr = alloca i32, align 4
  %num_components.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i64, align 8
  %d = alloca i32, align 4
  %ends_from_fa = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.trap_gradient_s* %g, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  store %struct.gs_fill_attributes_s* %fa, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %e, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  store %struct.gs_linear_color_edge_s* %e1, %struct.gs_linear_color_edge_s** %e1.addr, align 8, !tbaa !1
  store %struct.trap_line_s* %l, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  store i32 %ybot, i32* %ybot.addr, align 4, !tbaa !5
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i64* %c to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast i32* %d to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %c1 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %3, i32 0, i32 3
  %4 = load i32*, i32** %c1, align 8, !tbaa !48
  %cmp = icmp eq i32* %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %c0 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %5, i32 0, i32 2
  %6 = load i32*, i32** %c0, align 8, !tbaa !46
  %cmp1 = icmp eq i32* %6, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %7, i32 0, i32 3
  store i32 0, i32* %den, align 4, !tbaa !96
  br label %if.end.60

if.else:                                          ; preds = %lor.lhs.false
  %8 = bitcast i32* %ends_from_fa to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e1.addr, align 8, !tbaa !1
  %c12 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %9, i32 0, i32 3
  %10 = load i32*, i32** %c12, align 8, !tbaa !48
  %cmp3 = icmp eq i32* %10, null
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %11 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e1.addr, align 8, !tbaa !1
  %c04 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %11, i32 0, i32 2
  %12 = load i32*, i32** %c04, align 8, !tbaa !46
  %cmp5 = icmp eq i32* %12, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %13 = phi i1 [ true, %if.else ], [ %cmp5, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  store i32 %lor.ext, i32* %ends_from_fa, align 4, !tbaa !5
  %14 = load i32, i32* %ends_from_fa, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %lor.end
  %15 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %yend = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %15, i32 0, i32 5
  %16 = load i32, i32* %yend, align 4, !tbaa !97
  %17 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %ystart = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %17, i32 0, i32 4
  %18 = load i32, i32* %ystart, align 4, !tbaa !98
  %sub = sub nsw i32 %16, %18
  %19 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den7 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %19, i32 0, i32 3
  store i32 %sub, i32* %den7, align 4, !tbaa !96
  br label %if.end.15

if.else.8:                                        ; preds = %lor.end
  %20 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %end = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %20, i32 0, i32 1
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %end, i32 0, i32 1
  %21 = load i32, i32* %y, align 4, !tbaa !59
  %22 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %start = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %22, i32 0, i32 0
  %y9 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start, i32 0, i32 1
  %23 = load i32, i32* %y9, align 4, !tbaa !57
  %sub10 = sub nsw i32 %21, %23
  %24 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den11 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %24, i32 0, i32 3
  store i32 %sub10, i32* %den11, align 4, !tbaa !96
  %25 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den12 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %25, i32 0, i32 3
  %26 = load i32, i32* %den12, align 4, !tbaa !96
  %27 = load %struct.trap_line_s*, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %27, i32 0, i32 0
  %28 = load i32, i32* %h, align 4, !tbaa !27
  %cmp13 = icmp ne i32 %26, %28
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else.8
  store i32 -28, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.6
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.15
  %29 = load i32, i32* %i, align 4, !tbaa !5
  %30 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %29, %30
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %c117 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %32, i32 0, i32 3
  %33 = load i32*, i32** %c117, align 8, !tbaa !48
  %arrayidx = getelementptr inbounds i32, i32* %33, i64 %idxprom
  %34 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %35 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %35 to i64
  %36 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %c019 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %36, i32 0, i32 2
  %37 = load i32*, i32** %c019, align 8, !tbaa !46
  %arrayidx20 = getelementptr inbounds i32, i32* %37, i64 %idxprom18
  %38 = load i32, i32* %arrayidx20, align 4, !tbaa !5
  %sub21 = sub nsw i32 %34, %38
  %39 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %39 to i64
  %40 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %num = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %40, i32 0, i32 2
  %41 = load i32*, i32** %num, align 8, !tbaa !94
  %arrayidx23 = getelementptr inbounds i32, i32* %41, i64 %idxprom22
  store i32 %sub21, i32* %arrayidx23, align 4, !tbaa !5
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %42 to i64
  %43 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %num25 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %43, i32 0, i32 2
  %44 = load i32*, i32** %num25, align 8, !tbaa !94
  %arrayidx26 = getelementptr inbounds i32, i32* %44, i64 %idxprom24
  %45 = load i32, i32* %arrayidx26, align 4, !tbaa !5
  %conv = sext i32 %45 to i64
  %46 = load i32, i32* %ybot.addr, align 4, !tbaa !5
  %47 = load i32, i32* %ends_from_fa, align 4, !tbaa !5
  %tobool27 = icmp ne i32 %47, 0
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %48 = load %struct.gs_fill_attributes_s*, %struct.gs_fill_attributes_s** %fa.addr, align 8, !tbaa !1
  %ystart28 = getelementptr inbounds %struct.gs_fill_attributes_s, %struct.gs_fill_attributes_s* %48, i32 0, i32 4
  %49 = load i32, i32* %ystart28, align 4, !tbaa !98
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %50 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %start29 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %50, i32 0, i32 0
  %y30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %start29, i32 0, i32 1
  %51 = load i32, i32* %y30, align 4, !tbaa !57
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %49, %cond.true ], [ %51, %cond.false ]
  %sub31 = sub nsw i32 %46, %cond
  %conv32 = zext i32 %sub31 to i64
  %mul = mul nsw i64 %conv, %conv32
  store i64 %mul, i64* %c, align 8, !tbaa !12
  %52 = load i64, i64* %c, align 8, !tbaa !12
  %53 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den33 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %53, i32 0, i32 3
  %54 = load i32, i32* %den33, align 4, !tbaa !96
  %conv34 = sext i32 %54 to i64
  %div = sdiv i64 %52, %conv34
  %conv35 = trunc i64 %div to i32
  store i32 %conv35, i32* %d, align 4, !tbaa !5
  %55 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %55 to i64
  %56 = load %struct.gs_linear_color_edge_s*, %struct.gs_linear_color_edge_s** %e.addr, align 8, !tbaa !1
  %c037 = getelementptr inbounds %struct.gs_linear_color_edge_s, %struct.gs_linear_color_edge_s* %56, i32 0, i32 2
  %57 = load i32*, i32** %c037, align 8, !tbaa !46
  %arrayidx38 = getelementptr inbounds i32, i32* %57, i64 %idxprom36
  %58 = load i32, i32* %arrayidx38, align 4, !tbaa !5
  %59 = load i32, i32* %d, align 4, !tbaa !5
  %add = add nsw i32 %58, %59
  %60 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %60 to i64
  %61 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %c40 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %61, i32 0, i32 0
  %62 = load i32*, i32** %c40, align 8, !tbaa !91
  %arrayidx41 = getelementptr inbounds i32, i32* %62, i64 %idxprom39
  store i32 %add, i32* %arrayidx41, align 4, !tbaa !5
  %63 = load i32, i32* %d, align 4, !tbaa !5
  %conv42 = sext i32 %63 to i64
  %64 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den43 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %64, i32 0, i32 3
  %65 = load i32, i32* %den43, align 4, !tbaa !96
  %conv44 = sext i32 %65 to i64
  %mul45 = mul nsw i64 %conv42, %conv44
  %66 = load i64, i64* %c, align 8, !tbaa !12
  %sub46 = sub nsw i64 %66, %mul45
  store i64 %sub46, i64* %c, align 8, !tbaa !12
  %67 = load i64, i64* %c, align 8, !tbaa !12
  %cmp47 = icmp slt i64 %67, 0
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %cond.end
  %68 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %68 to i64
  %69 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %c51 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %69, i32 0, i32 0
  %70 = load i32*, i32** %c51, align 8, !tbaa !91
  %arrayidx52 = getelementptr inbounds i32, i32* %70, i64 %idxprom50
  %71 = load i32, i32* %arrayidx52, align 4, !tbaa !5
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %arrayidx52, align 4, !tbaa !5
  %72 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den53 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %72, i32 0, i32 3
  %73 = load i32, i32* %den53, align 4, !tbaa !96
  %conv54 = sext i32 %73 to i64
  %74 = load i64, i64* %c, align 8, !tbaa !12
  %add55 = add nsw i64 %74, %conv54
  store i64 %add55, i64* %c, align 8, !tbaa !12
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.49, %cond.end
  %75 = load i64, i64* %c, align 8, !tbaa !12
  %conv57 = trunc i64 %75 to i32
  %76 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %76 to i64
  %77 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %77, i32 0, i32 1
  %78 = load i32*, i32** %f, align 8, !tbaa !93
  %arrayidx59 = getelementptr inbounds i32, i32* %78, i64 %idxprom58
  store i32 %conv57, i32* %arrayidx59, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %79 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.14
  %80 = bitcast i32* %ends_from_fa to i8*
  call void @llvm.lifetime.end(i64 4, i8* %80) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.61 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.60

if.end.60:                                        ; preds = %cleanup.cont, %if.then
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.61

cleanup.61:                                       ; preds = %if.end.60, %cleanup
  %81 = bitcast i32* %d to i8*
  call void @llvm.lifetime.end(i64 4, i8* %81) #1
  %82 = bitcast i64* %c to i8*
  call void @llvm.lifetime.end(i64 8, i8* %82) #1
  %83 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %83) #1
  %84 = load i32, i32* %retval
  ret i32 %84
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @set_x_gradient(%struct.trap_gradient_s* %xg, %struct.trap_gradient_s* %lg, %struct.trap_gradient_s* %rg, %struct.trap_line_s* %l, %struct.trap_line_s* %r, i32 %il, i32 %ir, i32 %num_components) #2 {
entry:
  %retval = alloca i32, align 4
  %xg.addr = alloca %struct.trap_gradient_s*, align 8
  %lg.addr = alloca %struct.trap_gradient_s*, align 8
  %rg.addr = alloca %struct.trap_gradient_s*, align 8
  %l.addr = alloca %struct.trap_line_s*, align 8
  %r.addr = alloca %struct.trap_line_s*, align 8
  %il.addr = alloca i32, align 4
  %ir.addr = alloca i32, align 4
  %num_components.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.trap_gradient_s* %xg, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  store %struct.trap_gradient_s* %lg, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  store %struct.trap_gradient_s* %rg, %struct.trap_gradient_s** %rg.addr, align 8, !tbaa !1
  store %struct.trap_line_s* %l, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  store %struct.trap_line_s* %r, %struct.trap_line_s** %r.addr, align 8, !tbaa !1
  store i32 %il, i32* %il.addr, align 4, !tbaa !5
  store i32 %ir, i32* %ir.addr, align 4, !tbaa !5
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  %den = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %0, i32 0, i32 3
  %1 = load i32, i32* %den, align 4, !tbaa !96
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %rg.addr, align 8, !tbaa !1
  %den1 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %2, i32 0, i32 3
  %3 = load i32, i32* %den1, align 4, !tbaa !96
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  %5 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %den3 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %5, i32 0, i32 3
  store i32 1, i32* %den3, align 4, !tbaa !96
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %7 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  %den5 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %8, i32 0, i32 3
  %9 = load i32, i32* %den5, align 4, !tbaa !96
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %rg.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %11, i32 0, i32 0
  %12 = load i32*, i32** %c, align 8, !tbaa !91
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  %c8 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %15, i32 0, i32 0
  %16 = load i32*, i32** %c8, align 8, !tbaa !91
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %17 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %17, %cond.false ]
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %c11 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %19, i32 0, i32 0
  %20 = load i32*, i32** %c11, align 8, !tbaa !91
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  store i32 %cond, i32* %arrayidx12, align 4, !tbaa !5
  %21 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %21 to i64
  %22 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %22, i32 0, i32 1
  %23 = load i32*, i32** %f, align 8, !tbaa !93
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4, !tbaa !5
  %24 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %24 to i64
  %25 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %num = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %25, i32 0, i32 2
  %26 = load i32*, i32** %num, align 8, !tbaa !94
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %27 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %29 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %30 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  %31 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %rg.addr, align 8, !tbaa !1
  %32 = load %struct.trap_line_s*, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  %33 = load %struct.trap_line_s*, %struct.trap_line_s** %r.addr, align 8, !tbaa !1
  %34 = load i32, i32* %il.addr, align 4, !tbaa !5
  %35 = load i32, i32* %ir.addr, align 4, !tbaa !5
  %36 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %call = call i32 @set_x_gradient_nowedge(%struct.trap_gradient_s* %29, %struct.trap_gradient_s* %30, %struct.trap_gradient_s* %31, %struct.trap_line_s* %32, %struct.trap_line_s* %33, i32 %34, i32 %35, i32 %36) #4
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %for.end
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @step_gradient(%struct.trap_gradient_s* %g, i32 %num_components) #2 {
entry:
  %g.addr = alloca %struct.trap_gradient_s*, align 8
  %num_components.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %fc = alloca i64, align 8
  %fc32 = alloca i32, align 4
  store %struct.trap_gradient_s* %g, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %1, i32 0, i32 3
  %2 = load i32, i32* %den, align 4, !tbaa !96
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !tbaa !5
  %4 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = bitcast i64* %fc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %7, i32 0, i32 1
  %8 = load i32*, i32** %f, align 8, !tbaa !93
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4, !tbaa !5
  %conv = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %num = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %11, i32 0, i32 2
  %12 = load i32*, i32** %num, align 8, !tbaa !94
  %arrayidx3 = getelementptr inbounds i32, i32* %12, i64 %idxprom2
  %13 = load i32, i32* %arrayidx3, align 4, !tbaa !5
  %conv4 = sext i32 %13 to i64
  %mul = mul nsw i64 %conv4, 256
  %add = add nsw i64 %conv, %mul
  store i64 %add, i64* %fc, align 8, !tbaa !12
  %14 = bitcast i32* %fc32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i64, i64* %fc, align 8, !tbaa !12
  %16 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den5 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %16, i32 0, i32 3
  %17 = load i32, i32* %den5, align 4, !tbaa !96
  %conv6 = sext i32 %17 to i64
  %div = sdiv i64 %15, %conv6
  %conv7 = trunc i64 %div to i32
  %18 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %19, i32 0, i32 0
  %20 = load i32*, i32** %c, align 8, !tbaa !91
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 %idxprom8
  %21 = load i32, i32* %arrayidx9, align 4, !tbaa !5
  %add10 = add nsw i32 %21, %conv7
  store i32 %add10, i32* %arrayidx9, align 4, !tbaa !5
  %22 = load i64, i64* %fc, align 8, !tbaa !12
  %23 = load i64, i64* %fc, align 8, !tbaa !12
  %24 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den11 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %24, i32 0, i32 3
  %25 = load i32, i32* %den11, align 4, !tbaa !96
  %conv12 = sext i32 %25 to i64
  %div13 = sdiv i64 %23, %conv12
  %26 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den14 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %26, i32 0, i32 3
  %27 = load i32, i32* %den14, align 4, !tbaa !96
  %conv15 = sext i32 %27 to i64
  %mul16 = mul nsw i64 %div13, %conv15
  %sub = sub nsw i64 %22, %mul16
  %conv17 = trunc i64 %sub to i32
  store i32 %conv17, i32* %fc32, align 4, !tbaa !5
  %28 = load i32, i32* %fc32, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %28, 0
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %for.body
  %29 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %den21 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %29, i32 0, i32 3
  %30 = load i32, i32* %den21, align 4, !tbaa !96
  %31 = load i32, i32* %fc32, align 4, !tbaa !5
  %add22 = add nsw i32 %31, %30
  store i32 %add22, i32* %fc32, align 4, !tbaa !5
  %32 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %32 to i64
  %33 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %c24 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %33, i32 0, i32 0
  %34 = load i32*, i32** %c24, align 8, !tbaa !91
  %arrayidx25 = getelementptr inbounds i32, i32* %34, i64 %idxprom23
  %35 = load i32, i32* %arrayidx25, align 4, !tbaa !5
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %arrayidx25, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.20, %for.body
  %36 = load i32, i32* %fc32, align 4, !tbaa !5
  %37 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %37 to i64
  %38 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %g.addr, align 8, !tbaa !1
  %f28 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %38, i32 0, i32 1
  %39 = load i32*, i32** %f28, align 8, !tbaa !93
  %arrayidx29 = getelementptr inbounds i32, i32* %39, i64 %idxprom27
  store i32 %36, i32* %arrayidx29, align 4, !tbaa !5
  %40 = bitcast i32* %fc32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %40) #1
  %41 = bitcast i64* %fc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %42 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %43) #1
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @set_x_gradient_nowedge(%struct.trap_gradient_s* %xg, %struct.trap_gradient_s* %lg, %struct.trap_gradient_s* %rg, %struct.trap_line_s* %l, %struct.trap_line_s* %r, i32 %il, i32 %ir, i32 %num_components) #2 {
entry:
  %xg.addr = alloca %struct.trap_gradient_s*, align 8
  %lg.addr = alloca %struct.trap_gradient_s*, align 8
  %rg.addr = alloca %struct.trap_gradient_s*, align 8
  %l.addr = alloca %struct.trap_line_s*, align 8
  %r.addr = alloca %struct.trap_line_s*, align 8
  %il.addr = alloca i32, align 4
  %ir.addr = alloca i32, align 4
  %num_components.addr = alloca i32, align 4
  %xl = alloca i32, align 4
  %xr = alloca i32, align 4
  %x0 = alloca i32, align 4
  %x1 = alloca i32, align 4
  %i = alloca i32, align 4
  %cl = alloca i32, align 4
  %cr = alloca i32, align 4
  %c0 = alloca i32, align 4
  %c1 = alloca i32, align 4
  store %struct.trap_gradient_s* %xg, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  store %struct.trap_gradient_s* %lg, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  store %struct.trap_gradient_s* %rg, %struct.trap_gradient_s** %rg.addr, align 8, !tbaa !1
  store %struct.trap_line_s* %l, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  store %struct.trap_line_s* %r, %struct.trap_line_s** %r.addr, align 8, !tbaa !1
  store i32 %il, i32* %il.addr, align 4, !tbaa !5
  store i32 %ir, i32* %ir.addr, align 4, !tbaa !5
  store i32 %num_components, i32* %num_components.addr, align 4, !tbaa !5
  %0 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct.trap_line_s*, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %1, i32 0, i32 3
  %2 = load i32, i32* %x, align 4, !tbaa !29
  %3 = load %struct.trap_line_s*, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  %xf = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %3, i32 0, i32 4
  %4 = load i32, i32* %xf, align 4, !tbaa !32
  %5 = load %struct.trap_line_s*, %struct.trap_line_s** %l.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %5, i32 0, i32 0
  %6 = load i32, i32* %h, align 4, !tbaa !27
  %sub = sub nsw i32 0, %6
  %cmp = icmp eq i32 %4, %sub
  %cond = select i1 %cmp, i32 1, i32 0
  %sub1 = sub nsw i32 %2, %cond
  %conv = sext i32 %sub1 to i64
  %sub2 = sub nsw i64 %conv, 128
  %conv3 = trunc i64 %sub2 to i32
  store i32 %conv3, i32* %xl, align 4, !tbaa !5
  %7 = bitcast i32* %xr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = load %struct.trap_line_s*, %struct.trap_line_s** %r.addr, align 8, !tbaa !1
  %x4 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %8, i32 0, i32 3
  %9 = load i32, i32* %x4, align 4, !tbaa !29
  %10 = load %struct.trap_line_s*, %struct.trap_line_s** %r.addr, align 8, !tbaa !1
  %xf5 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %10, i32 0, i32 4
  %11 = load i32, i32* %xf5, align 4, !tbaa !32
  %12 = load %struct.trap_line_s*, %struct.trap_line_s** %r.addr, align 8, !tbaa !1
  %h6 = getelementptr inbounds %struct.trap_line_s, %struct.trap_line_s* %12, i32 0, i32 0
  %13 = load i32, i32* %h6, align 4, !tbaa !27
  %sub7 = sub nsw i32 0, %13
  %cmp8 = icmp eq i32 %11, %sub7
  %cond10 = select i1 %cmp8, i32 1, i32 0
  %sub11 = sub nsw i32 %9, %cond10
  %conv12 = sext i32 %sub11 to i64
  %sub13 = sub nsw i64 %conv12, 128
  %conv14 = trunc i64 %sub13 to i32
  store i32 %conv14, i32* %xr, align 4, !tbaa !5
  %14 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %14) #1
  %15 = load i32, i32* %il.addr, align 4, !tbaa !5
  %shl = shl i32 %15, 8
  %conv15 = sext i32 %shl to i64
  %add = add nsw i64 %conv15, 128
  %conv16 = trunc i64 %add to i32
  store i32 %conv16, i32* %x0, align 4, !tbaa !5
  %16 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %16) #1
  %17 = load i32, i32* %ir.addr, align 4, !tbaa !5
  %shl17 = shl i32 %17, 8
  %conv18 = sext i32 %shl17 to i64
  %sub19 = sub nsw i64 %conv18, 128
  %conv20 = trunc i64 %sub19 to i32
  store i32 %conv20, i32* %x1, align 4, !tbaa !5
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %18) #1
  %19 = load i32, i32* %x1, align 4, !tbaa !5
  %20 = load i32, i32* %x0, align 4, !tbaa !5
  %sub21 = sub nsw i32 %19, %20
  %shr = ashr i32 %sub21, 8
  %21 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %den = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %21, i32 0, i32 3
  store i32 %shr, i32* %den, align 4, !tbaa !96
  %22 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %den22 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %22, i32 0, i32 3
  %23 = load i32, i32* %den22, align 4, !tbaa !96
  %cmp23 = icmp sle i32 %23, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %24 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %den25 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %24, i32 0, i32 3
  store i32 1, i32* %den25, align 4, !tbaa !96
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %i, align 4, !tbaa !5
  %26 = load i32, i32* %num_components.addr, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %25, %26
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = bitcast i32* %cl to i8*
  call void @llvm.lifetime.start(i64 4, i8* %27) #1
  %28 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %lg.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %29, i32 0, i32 0
  %30 = load i32*, i32** %c, align 8, !tbaa !91
  %arrayidx = getelementptr inbounds i32, i32* %30, i64 %idxprom
  %31 = load i32, i32* %arrayidx, align 4, !tbaa !5
  store i32 %31, i32* %cl, align 4, !tbaa !5
  %32 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.start(i64 4, i8* %32) #1
  %33 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %rg.addr, align 8, !tbaa !1
  %c29 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %34, i32 0, i32 0
  %35 = load i32*, i32** %c29, align 8, !tbaa !91
  %arrayidx30 = getelementptr inbounds i32, i32* %35, i64 %idxprom28
  %36 = load i32, i32* %arrayidx30, align 4, !tbaa !5
  store i32 %36, i32* %cr, align 4, !tbaa !5
  %37 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %37) #1
  %38 = load i32, i32* %cl, align 4, !tbaa !5
  %conv31 = sext i32 %38 to i64
  %39 = load i32, i32* %cr, align 4, !tbaa !5
  %conv32 = sext i32 %39 to i64
  %40 = load i32, i32* %cl, align 4, !tbaa !5
  %conv33 = sext i32 %40 to i64
  %sub34 = sub nsw i64 %conv32, %conv33
  %41 = load i32, i32* %x0, align 4, !tbaa !5
  %42 = load i32, i32* %xl, align 4, !tbaa !5
  %sub35 = sub nsw i32 %41, %42
  %conv36 = sext i32 %sub35 to i64
  %mul = mul nsw i64 %sub34, %conv36
  %43 = load i32, i32* %xr, align 4, !tbaa !5
  %44 = load i32, i32* %xl, align 4, !tbaa !5
  %sub37 = sub nsw i32 %43, %44
  %conv38 = sext i32 %sub37 to i64
  %div = sdiv i64 %mul, %conv38
  %add39 = add nsw i64 %conv31, %div
  %conv40 = trunc i64 %add39 to i32
  store i32 %conv40, i32* %c0, align 4, !tbaa !5
  %45 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %45) #1
  %46 = load i32, i32* %cl, align 4, !tbaa !5
  %conv41 = sext i32 %46 to i64
  %47 = load i32, i32* %cr, align 4, !tbaa !5
  %conv42 = sext i32 %47 to i64
  %48 = load i32, i32* %cl, align 4, !tbaa !5
  %conv43 = sext i32 %48 to i64
  %sub44 = sub nsw i64 %conv42, %conv43
  %49 = load i32, i32* %x1, align 4, !tbaa !5
  %50 = load i32, i32* %xl, align 4, !tbaa !5
  %sub45 = sub nsw i32 %49, %50
  %conv46 = sext i32 %sub45 to i64
  %mul47 = mul nsw i64 %sub44, %conv46
  %51 = load i32, i32* %xr, align 4, !tbaa !5
  %52 = load i32, i32* %xl, align 4, !tbaa !5
  %sub48 = sub nsw i32 %51, %52
  %conv49 = sext i32 %sub48 to i64
  %div50 = sdiv i64 %mul47, %conv49
  %add51 = add nsw i64 %conv41, %div50
  %conv52 = trunc i64 %add51 to i32
  store i32 %conv52, i32* %c1, align 4, !tbaa !5
  %53 = load i32, i32* %c0, align 4, !tbaa !5
  %54 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom53 = sext i32 %54 to i64
  %55 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %c54 = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %55, i32 0, i32 0
  %56 = load i32*, i32** %c54, align 8, !tbaa !91
  %arrayidx55 = getelementptr inbounds i32, i32* %56, i64 %idxprom53
  store i32 %53, i32* %arrayidx55, align 4, !tbaa !5
  %57 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom56 = sext i32 %57 to i64
  %58 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %f = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %58, i32 0, i32 1
  %59 = load i32*, i32** %f, align 8, !tbaa !93
  %arrayidx57 = getelementptr inbounds i32, i32* %59, i64 %idxprom56
  store i32 0, i32* %arrayidx57, align 4, !tbaa !5
  %60 = load i32, i32* %c1, align 4, !tbaa !5
  %61 = load i32, i32* %c0, align 4, !tbaa !5
  %sub58 = sub nsw i32 %60, %61
  %62 = load i32, i32* %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %62 to i64
  %63 = load %struct.trap_gradient_s*, %struct.trap_gradient_s** %xg.addr, align 8, !tbaa !1
  %num = getelementptr inbounds %struct.trap_gradient_s, %struct.trap_gradient_s* %63, i32 0, i32 2
  %64 = load i32*, i32** %num, align 8, !tbaa !94
  %arrayidx60 = getelementptr inbounds i32, i32* %64, i64 %idxprom59
  store i32 %sub58, i32* %arrayidx60, align 4, !tbaa !5
  %65 = bitcast i32* %c1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %66 = bitcast i32* %c0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %67 = bitcast i32* %cr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %67) #1
  %68 = bitcast i32* %cl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %68) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %69 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %70 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %70) #1
  %71 = bitcast i32* %x1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %71) #1
  %72 = bitcast i32* %x0 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %72) #1
  %73 = bitcast i32* %xr to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #1
  %74 = bitcast i32* %xl to i8*
  call void @llvm.lifetime.end(i64 4, i8* %74) #1
  ret i32 0
}

declare %struct.gx_device_s* @gx_device_enum_ptr(%struct.gx_device_s*) #3

declare %struct.gx_device_s* @gx_device_reloc_ptr(%struct.gx_device_s*, %struct.gc_state_s*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"gs_fixed_edge_s", !9, i64 0, !9, i64 8}
!9 = !{!"gs_fixed_point_s", !6, i64 0, !6, i64 4}
!10 = !{!8, !6, i64 8}
!11 = !{!8, !6, i64 4}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !3, i64 0}
!14 = !{!15, !2, i64 1200}
!15 = !{!"gx_device_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !6, i64 40, !2, i64 48, !16, i64 56, !6, i64 80, !6, i64 84, !6, i64 88, !17, i64 96, !20, i64 816, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !3, i64 856, !3, i64 864, !6, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !13, i64 928, !13, i64 936, !6, i64 944, !6, i64 948, !6, i64 952, !6, i64 956, !6, i64 960, !13, i64 968, !13, i64 976, !21, i64 984, !6, i64 1052, !6, i64 1056, !22, i64 1064, !2, i64 1104, !3, i64 1112, !24, i64 1120, !25, i64 1144}
!16 = !{!"rc_header_s", !13, i64 0, !2, i64 8, !2, i64 16}
!17 = !{!"gx_device_color_info_s", !6, i64 0, !6, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !19, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !13, i64 704, !6, i64 712}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gx_device_anti_alias_info_s", !6, i64 0, !6, i64 4}
!20 = !{!"gx_device_cached_colors_s", !13, i64 0, !13, i64 8}
!21 = !{!"gx_stroked_gradient_recognizer_s", !6, i64 0, !3, i64 4, !3, i64 36}
!22 = !{!"gdev_space_params_s", !13, i64 0, !13, i64 8, !23, i64 16, !6, i64 32, !3, i64 36}
!23 = !{!"gx_band_params_s", !6, i64 0, !6, i64 4, !13, i64 8}
!24 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!25 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!26 = !{!8, !6, i64 12}
!27 = !{!28, !6, i64 0}
!28 = !{!"trap_line_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!29 = !{!28, !6, i64 12}
!30 = !{!28, !6, i64 4}
!31 = !{!28, !6, i64 8}
!32 = !{!28, !6, i64 16}
!33 = !{!28, !6, i64 20}
!34 = !{!28, !6, i64 24}
!35 = !{!36, !2, i64 0}
!36 = !{!"gx_device_color_s", !2, i64 0, !3, i64 8, !37, i64 352, !6, i64 360, !38, i64 368, !40, i64 632}
!37 = !{!"gs_int_point_s", !6, i64 0, !6, i64 4}
!38 = !{!"gs_client_color_s", !2, i64 0, !39, i64 8}
!39 = !{!"gs_paint_color_s", !3, i64 0}
!40 = !{!"_mask", !41, i64 0, !13, i64 8, !2, i64 16}
!41 = !{!"mp_", !6, i64 0, !6, i64 4}
!42 = !{!43, !2, i64 40}
!43 = !{!"gx_device_color_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80}
!44 = !{!15, !6, i64 100}
!45 = !{i64 0, i64 4, !5, i64 4, i64 4, !5}
!46 = !{!47, !2, i64 16}
!47 = !{!"gs_linear_color_edge_s", !9, i64 0, !9, i64 8, !2, i64 16, !2, i64 24, !6, i64 32}
!48 = !{!47, !2, i64 24}
!49 = !{!50, !2, i64 0}
!50 = !{!"gs_fill_attributes_s", !2, i64 0, !6, i64 8, !2, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !2, i64 40}
!51 = !{!52, !6, i64 0}
!52 = !{!"gs_fixed_rect_s", !9, i64 0, !9, i64 8}
!53 = !{!47, !6, i64 32}
!54 = !{!52, !6, i64 8}
!55 = !{!47, !6, i64 0}
!56 = !{!47, !6, i64 8}
!57 = !{!47, !6, i64 4}
!58 = !{!52, !6, i64 4}
!59 = !{!47, !6, i64 12}
!60 = !{!52, !6, i64 12}
!61 = !{!50, !6, i64 8}
!62 = !{!9, !6, i64 0}
!63 = !{!9, !6, i64 4}
!64 = !{!65, !6, i64 0}
!65 = !{!"gs_int_rect_s", !37, i64 0, !37, i64 8}
!66 = !{!65, !6, i64 8}
!67 = !{!65, !6, i64 4}
!68 = !{!65, !6, i64 12}
!69 = !{!15, !2, i64 1360}
!70 = !{!71, !2, i64 16}
!71 = !{!"gx_image_enum_common_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !3, i64 48, !3, i64 308}
!72 = !{!73, !2, i64 0}
!73 = !{!"enum_ptr_s", !2, i64 0, !6, i64 8}
!74 = !{!3, !3, i64 0}
!75 = !{!15, !2, i64 1392}
!76 = !{!15, !2, i64 1688}
!77 = !{!78, !3, i64 568}
!78 = !{!"gs_image1_s", !2, i64 0, !79, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !3, i64 44, !6, i64 564, !3, i64 568, !6, i64 572, !2, i64 576, !6, i64 584, !6, i64 588, !3, i64 592, !3, i64 596}
!79 = !{!"gs_matrix_s", !80, i64 0, !80, i64 4, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20}
!80 = !{!"float", !3, i64 0}
!81 = !{i64 0, i64 8, !1, i64 8, i64 4, !82, i64 12, i64 4, !82, i64 16, i64 4, !82, i64 20, i64 4, !82, i64 24, i64 4, !82, i64 28, i64 4, !82, i64 32, i64 4, !5, i64 36, i64 4, !5, i64 40, i64 4, !5, i64 44, i64 520, !74, i64 564, i64 4, !5, i64 568, i64 4, !74, i64 572, i64 4, !5, i64 576, i64 8, !1, i64 584, i64 4, !5, i64 588, i64 4, !5, i64 592, i64 4, !74, i64 596, i64 4, !74}
!82 = !{!80, !80, i64 0}
!83 = !{!15, !2, i64 1440}
!84 = !{!85, !2, i64 0}
!85 = !{!"gs_image_common_s", !2, i64 0, !79, i64 8}
!86 = !{!87, !2, i64 8}
!87 = !{!"gx_image_type_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !6, i64 48}
!88 = !{!15, !6, i64 832}
!89 = !{!15, !6, i64 836}
!90 = !{!15, !2, i64 1576}
!91 = !{!92, !2, i64 0}
!92 = !{!"trap_gradient_s", !2, i64 0, !2, i64 8, !2, i64 16, !6, i64 24}
!93 = !{!92, !2, i64 8}
!94 = !{!92, !2, i64 16}
!95 = !{!15, !2, i64 1592}
!96 = !{!92, !6, i64 24}
!97 = !{!50, !6, i64 32}
!98 = !{!50, !6, i64 28}
