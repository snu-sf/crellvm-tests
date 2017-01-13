; ModuleID = './gsdfilt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gx_io_device_s = type { i8*, i8*, %struct.gx_io_device_procs_s, i8* }
%struct.gx_io_device_procs_s = type { i32 (%struct.gx_io_device_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i32, i8*, %struct.stream_s**, %struct.gs_memory_s*)*, i32 (%struct.gx_io_device_s*, i8*, i8*, %struct._IO_FILE**, i8*, i32)*, i32 (%struct.gx_io_device_s*, %struct._IO_FILE*)*, i32 (%struct.gx_io_device_s*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, i8*)*, i32 (%struct.gx_io_device_s*, i8*, %struct.stat*)*, %struct.file_enum_s* (%struct.gx_io_device_s*, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.file_enum_s*, i8*, i32)*, void (%struct.file_enum_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_io_device_s*, %struct.gs_param_list_s*)* }
%struct.stream_s = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.file_enum_s = type opaque
%struct.gs_param_list_s = type { %struct.gs_param_list_procs_s*, %struct.gs_memory_s*, i32 }
%struct.gs_param_list_procs_s = type { i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_typed_value_s*)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*, i32)*, i32 (%struct.gs_param_list_s*, i8*, %struct.gs_param_collection_s*)*, i32 (%struct.gs_param_list_s*, %union.gs_param_enumerator_s*, %struct.gs_param_string_s*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*)*, i32 (%struct.gs_param_list_s*, i8*, i32)*, i32 (%struct.gs_param_list_s*)* }
%struct.gs_param_typed_value_s = type { %union.gs_param_value_s, i32 }
%union.gs_param_value_s = type { %struct.gs_param_string_s }
%struct.gs_param_string_s = type { i8*, i32, i32 }
%struct.gs_param_collection_s = type { %struct.gs_param_list_s*, i32 }
%union.gs_param_enumerator_s = type { i64 }
%struct.gs_font_dir_s = type opaque
%struct.gs_fapi_server_s = type opaque
%struct.gs_memory_struct_type_s = type { i32, i8*, %struct.struct_shared_procs_s*, {}*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }
%struct.gc_struct_data_s = type { i16, i16, %struct.gs_memory_struct_type_s*, %struct.gc_ptr_element_s* }
%struct.gc_ptr_element_s = type { i16, i16 }
%struct.gs_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s, %struct.gs_state_s*, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, %struct.gx_path_s*, %struct.gx_clip_path_s*, %struct.gx_clip_stack_s*, %struct.gx_clip_path_s*, i64, i64, %struct.gx_clip_path_s*, i32, [2 x %struct.anon], %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_matrix_fixed_s, i32, i32, i32, %struct.gs_state_s*, i32, %struct.gx_device_s*, %struct.gs_device_filter_stack_s*, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, i32, i32, i32, float, float, float, i32, %struct.gs_matrix_s, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { float*, i32, float, i32, float, i32, i32, float }
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
%struct.gs_imager_state_s = type { i32, %struct.gs_memory_s*, i8*, %struct.gx_line_params_s, i32, %struct.gs_matrix_fixed_s, i32, %struct.gs_point_s, %struct.gs_point_s, i32, i32, i16, i32, %struct.gs_transparency_source_s, %struct.gs_transparency_source_s, %struct.gs_xstate_trans_flags, i64, i32, i32, i32, %struct.gx_device_s*, i32, i32, i32, i32, i32, i32, float, %struct.gs_fixed_point_s, i32, i32, i32, float, i32, i32, %struct.gsicc_manager_s*, %struct.gsicc_link_cache_s*, %struct.gsicc_profile_cache_s*, %struct.gx_color_map_procs_s* (%struct.gs_imager_state_s*, %struct.gx_device_s*)*, %struct.gs_halftone_s*, [2 x %struct.gs_int_point_s], %struct.gx_device_halftone_s*, %struct.gs_cie_render_s*, i32, %struct.gx_transfer_map_s*, %struct.gx_transfer_map_s*, %struct.gx_transfer_s, [64 x %struct.gx_transfer_map_s*], %struct.gx_cie_joint_caches_s*, %struct.gx_color_map_procs_s*, %struct.gs_devicen_color_map_s, %struct.gx_pattern_cache_s*, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.gx_cie_joint_caches_s*, %struct.gs_devicen_color_map_s }
%struct.gs_halftone_s = type opaque
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_device_halftone_s = type opaque
%struct.gs_cie_render_s = type opaque
%struct.gx_transfer_map_s = type { %struct.rc_header_s, float (double, %struct.gx_transfer_map_s*)*, %struct.gs_mapping_closure_s, i64, [256 x i16] }
%struct.gs_mapping_closure_s = type { float (double, %struct.gx_transfer_map_s*, i8*)*, i8* }
%struct.gx_transfer_s = type { i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s*, i32, %struct.gx_transfer_map_s* }
%struct.gx_color_map_procs_s = type { void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32, %struct.gs_color_space_s*)*, void (i16, i16, i16, i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, void (i16*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_imager_state_s*, %struct.gx_device_s*)* }
%struct.gx_device_color_s = type { %struct.gx_device_color_type_s*, %union._c, %struct.gs_int_point_s, i32, %struct.gs_client_color_s, %struct._mask }
%struct.gx_device_color_type_s = type { %struct.gs_memory_struct_type_s*, void (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*)*, %struct.gx_device_halftone_s* (%struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_int_point_s*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gx_device_color_s*, i32, i32, i32, i32, %struct.gx_device_s*, i32, %struct.gx_rop_source_s*)*, i32 (%struct.gx_device_color_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_color_saved_s*, %struct.gx_device_s*, i64, i8*, i32*)*, i32 (%struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_device_s*, i64, i8*, i32, %struct.gs_memory_s*)*, i32 (%struct.gx_device_color_s*, %struct.gx_device_s*, i64*)* }
%struct.gx_device_color_saved_s = type { %struct.gx_device_color_type_s*, %union._svc, %struct.gs_int_point_s }
%union._svc = type { %struct._svbin, [304 x i8] }
%struct._svbin = type { [2 x i64], i32, i32 }
%struct.gx_rop_source_s = type { i8*, i32, i32, i64, [2 x i64], i32, i32 }
%union._c = type { %struct._col }
%struct._col = type { %struct.gx_device_halftone_s*, i16, [64 x i8], [64 x i32], i16, i64 }
%struct.gs_client_color_s = type { %struct.gs_pattern_instance_s*, %struct.gs_paint_color_s }
%struct.gs_pattern_instance_s = type opaque
%struct.gs_paint_color_s = type { [64 x float] }
%struct._mask = type { %struct.mp_, i64, %struct.gx_color_tile_s* }
%struct.mp_ = type { i32, i32 }
%struct.gx_color_tile_s = type opaque
%struct.gx_pattern_cache_s = type opaque
%struct.gs_color_space_s = type { %struct.gs_color_space_type_s*, %struct.rc_header_s, i64, %struct.gs_color_space_s*, %struct.gs_color_space_s*, %struct.client_color_space_data_s*, %struct.cmm_profile_s*, %union.anon }
%struct.gs_color_space_type_s = type { i32, i32, i32, %struct.gs_memory_struct_type_s*, i32 (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*)*, %struct.gs_color_space_s* (%struct.gs_color_space_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i16*, %struct.gs_imager_state_s*, %struct.gx_device_s*)*, i32 (i16*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_client_color_s*, %struct.gs_color_space_s*, %struct.gx_device_color_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_state_s*)*, void (%struct.gs_color_space_s*)*, void (%struct.gs_client_color_s*, %struct.gs_color_space_s*, i32)*, i32 (%struct.gs_color_space_s*, %struct.stream_s*)*, i32 (%struct.gs_color_space_s*, %struct.gs_imager_state_s*, %struct.gx_device_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, %struct.gs_client_color_s*, float, %struct.gsicc_link_s*)*, i32 (%struct.gs_color_space_s*)* }
%struct.client_color_space_data_s = type { void (%struct.gs_color_space_s*, i32)* }
%union.anon = type { %struct.gs_device_n_params_s }
%struct.gs_device_n_params_s = type { i64*, i32, %struct.gs_device_n_map_s*, %struct.gs_device_n_attributes_s*, i32, i32 (%struct.gs_memory_s*, i64, i8**, i32*)* }
%struct.gs_device_n_map_s = type opaque
%struct.gs_device_n_attributes_s = type opaque
%struct.gx_cie_joint_caches_s = type opaque
%struct.gs_devicen_color_map_s = type { i32, i32, i32, i32, i64, [64 x i32] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gx_path_s = type opaque
%struct.gx_clip_stack_s = type opaque
%struct.gx_clip_path_s = type opaque
%struct.anon = type { %struct.gs_color_space_s*, %struct.gs_client_color_s*, %struct.gx_device_color_s* }
%struct.gs_font_s = type opaque
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i32, i32, i32 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, %struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i32, void (%struct.gx_device_s*)*, %struct.rc_header_s, i32, i32, i32, %struct.gx_device_color_info_s, %struct.gx_device_cached_colors_s, i32, i32, i32, i32, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, i32, i32, i32, i32, i64, i64, %struct.gx_stroked_gradient_recognizer_s, i32, i32, %struct.gdev_space_params_s, %struct.cmm_dev_profile_s*, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i32, i16, i8, i32, i32, i32, i32, %struct.gx_device_anti_alias_info_s, i32, [64 x i8], [64 x i8], [64 x i64], i8*, i32, i64, i32 }
%struct.gx_device_anti_alias_info_s = type { i32, i32 }
%struct.gx_device_cached_colors_s = type { i64, i64 }
%struct.gx_stroked_gradient_recognizer_s = type { i32, [4 x %struct.gs_fixed_point_s], [4 x %struct.gs_fixed_point_s] }
%struct.gdev_space_params_s = type { i64, i64, %struct.gx_band_params_s, i32, i32 }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmm_dev_profile_s = type { [4 x %struct.cmm_profile_s*], %struct.cmm_profile_s*, %struct.cmm_profile_s*, %struct.cmm_profile_s*, [4 x %struct.gsicc_rendering_param_s], i32, i32, i32, i32, i32, i32, %struct.gsicc_namelist_s*, i32, %struct.gs_memory_s*, %struct.rc_header_s }
%struct.gx_page_device_procs_s = type { i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, i32 (%struct.gx_device_s*, i32, %struct.gs_state_s*)* }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32, i32)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_tile_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i8*, i8**)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i64 (%struct.gx_device_s*, i16*)*, %struct.gx_xfont_procs_s* (%struct.gx_device_s*)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16, i16)*, %struct.gx_device_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i64, i32)*, i32 (%struct.gx_device_s*, i32, i32*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_tile_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_fill_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_path_s*, %struct.gx_stroke_params_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_edge_s*, %struct.gs_fixed_edge_s*, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_image1_s*, i32, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i8**, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_image_enum_common_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, i64, i64, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32)*, void (%struct.gx_device_s*, %struct.gs_fixed_rect_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_matrix_s*, %struct.gs_image_common_s*, %struct.gs_int_rect_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gx_image_enum_common_s**)*, i32 (%struct.gx_device_s*, %struct.gs_int_rect_s*, %struct.gs_get_bits_params_s*, %struct.gs_int_rect_s**)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, %struct.gx_device_s**, %struct.gs_composite_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_param_list_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gs_text_params_s*, %struct.gs_font_s*, %struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*, %struct.gs_memory_s*, %struct.gs_text_enum_s**)*, i32 (%struct.gx_device_s*, %struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_transparency_group_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gx_transparency_mask_params_s*, %struct.gs_rect_s*, %struct.gs_imager_state_s*, %struct.gs_memory_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, %struct.gx_cm_color_map_procs_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32)*, i64 (%struct.gx_device_s*, i16*)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i64, %struct.gs_pattern1_instance_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fixed_rect_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*, %struct.gx_clip_path_s*)*, i32 (%struct.gx_device_s*, %struct.gs_color_space_s*, i8*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, i32, i32, i32, i32*, i32*, i32*, i32)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_fill_attributes_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s*, i32*, i32*, i32*)*, i32 (%struct.gx_device_s*, %struct.gs_state_s*)*, %struct.gs_devn_params_s* (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*, %struct.gx_device_color_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, %struct.gs_imager_state_s*)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i8*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.cmm_dev_profile_s**)*, void (%struct.gx_device_s*, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i64*, %struct.gx_strip_bitmap_s*, i64*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, %struct.gx_strip_bitmap_s*, i32, i32, i32, i32, %struct.gx_device_color_s*, %struct.gx_device_color_s*, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i64, i32, i32, i32, i32, %struct.gx_device_color_s*, i32)*, i32 (%struct.gx_device_s*, %struct.gx_process_page_options_s*)* }
%struct.gx_tile_bitmap_s = type { i8*, i32, %struct.gs_int_point_s, i64, i16, i16 }
%struct.gx_xfont_procs_s = type opaque
%struct.gx_fill_params_s = type opaque
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
%struct.gx_device_clist_writer_s = type opaque
%struct.gs_text_params_s = type { i32, %union.sd_, i32, %struct.gs_point_s, %struct.gs_point_s, %union.s_, float*, float*, i32 }
%union.sd_ = type { i8* }
%union.s_ = type { i64 }
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
%struct.gs_device_filter_stack_s = type { %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_s*, %struct.gx_device_s*, %struct.rc_header_s }
%struct.gs_state_client_procs_s = type { i8* (%struct.gs_memory_s*)*, i32 (i8*, i8*)*, void (i8*, %struct.gs_memory_s*)*, i32 (i8*, i8*, i32)* }
%struct.gs_device_filter_s = type { i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s**, %struct.gx_device_s*)*, i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s*)* }

@.str = private unnamed_addr constant [17 x i8] c"gs_device_filter\00", align 1
@st_gs_device_filter = constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @gs_no_struct_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_push_device_filter\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gs_pop_device_filter\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"gs_device_filter_stack\00", align 1
@gs_device_filter_stack_reloc_ptrs = internal constant %struct.gc_struct_data_s { i16 3, i16 0, %struct.gs_memory_struct_type_s* null, %struct.gc_ptr_element_s* getelementptr inbounds ([3 x %struct.gc_ptr_element_s], [3 x %struct.gc_ptr_element_s]* @gs_device_filter_stack_enum_ptrs, i32 0, i32 0) }, align 8
@st_gs_device_filter_stack = internal constant { i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* } { i32 48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), %struct.struct_shared_procs_s* null, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)* null, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_enum_ptrs, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)* @basic_reloc_ptrs, void (%struct.gs_memory_s*, i8*)* null, i8* bitcast (%struct.gc_struct_data_s* @gs_device_filter_stack_reloc_ptrs to i8*) }, align 8
@gs_device_filter_stack_enum_ptrs = internal constant [3 x %struct.gc_ptr_element_s] [%struct.gc_ptr_element_s zeroinitializer, %struct.gc_ptr_element_s { i16 0, i16 8 }, %struct.gc_ptr_element_s { i16 0, i16 16 }], align 2

declare %struct.gs_ptr_procs_s* @gs_no_struct_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @gs_no_struct_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

; Function Attrs: nounwind uwtable
define i32 @gs_push_device_filter(%struct.gs_memory_s* %mem, %struct.gs_state_s* %pgs, %struct.gs_device_filter_s* %df) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %df.addr = alloca %struct.gs_device_filter_s*, align 8
  %dfs = alloca %struct.gs_device_filter_stack_s*, align 8
  %new_dev = alloca %struct.gx_device_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  store %struct.gs_device_filter_s* %df, %struct.gs_device_filter_s** %df.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_filter_stack_s** %dfs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  store %struct.gx_device_s* null, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %2 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %3, i32 0, i32 1
  %alloc_struct = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs, i32 0, i32 8
  %4 = load i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)*, i8* (%struct.gs_memory_s*, %struct.gs_memory_struct_type_s*, i8*)** %alloc_struct, align 8, !tbaa !5
  %5 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %call = call i8* %4(%struct.gs_memory_s* %5, %struct.gs_memory_struct_type_s* bitcast ({ i32, i8*, %struct.struct_shared_procs_s*, void (%struct.gs_memory_s*, i8*, i32, %struct.gs_memory_struct_type_s*)*, %struct.gs_ptr_procs_s* (%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*)*, void (%struct.gs_memory_s*, i8*)*, i8* }* @st_gs_device_filter_stack to %struct.gs_memory_struct_type_s*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #3
  %6 = bitcast i8* %call to %struct.gs_device_filter_stack_s*
  store %struct.gs_device_filter_stack_s* %6, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %7 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_device_filter_stack_s* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -25, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i32 0, i32 78
  %9 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !8
  %tobool = icmp ne %struct.gx_device_s* %9, null
  br i1 %tobool, label %if.then.1, label %if.end.7

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %10 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %10, i32 0, i32 78
  %11 = load %struct.gx_device_s*, %struct.gx_device_s** %device3, align 8, !tbaa !8
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %11, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %12 = load i64, i64* %ref_count, align 8, !tbaa !26
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !26
  br label %do.body.4

do.body.4:                                        ; preds = %do.body.2
  br label %do.cond

do.cond:                                          ; preds = %do.body.4
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.5

do.cond.5:                                        ; preds = %do.end
  br label %do.end.6

do.end.6:                                         ; preds = %do.cond.5
  br label %if.end.7

if.end.7:                                         ; preds = %do.end.6, %do.body
  br label %do.cond.8

do.cond.8:                                        ; preds = %if.end.7
  br label %do.end.9

do.end.9:                                         ; preds = %do.cond.8
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 78
  %14 = load %struct.gx_device_s*, %struct.gx_device_s** %device10, align 8, !tbaa !8
  %15 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %next_device = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %15, i32 0, i32 2
  store %struct.gx_device_s* %14, %struct.gx_device_s** %next_device, align 8, !tbaa !37
  %16 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df.addr, align 8, !tbaa !1
  %push = getelementptr inbounds %struct.gs_device_filter_s, %struct.gs_device_filter_s* %16, i32 0, i32 0
  %17 = load i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s**, %struct.gx_device_s*)*, i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s**, %struct.gx_device_s*)** %push, align 8, !tbaa !39
  %18 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df.addr, align 8, !tbaa !1
  %19 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %20 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %21, i32 0, i32 78
  %22 = load %struct.gx_device_s*, %struct.gx_device_s** %device11, align 8, !tbaa !8
  %call12 = call i32 %17(%struct.gs_device_filter_s* %18, %struct.gs_memory_s* %19, %struct.gs_state_s* %20, %struct.gx_device_s** %new_dev, %struct.gx_device_s* %22) #3
  store i32 %call12, i32* %code, align 4, !tbaa !41
  %23 = load i32, i32* %code, align 4, !tbaa !41
  %cmp13 = icmp slt i32 %23, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.end.9
  %24 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %procs15 = getelementptr inbounds %struct.gs_memory_s, %struct.gs_memory_s* %24, i32 0, i32 1
  %free_object = getelementptr inbounds %struct.gs_memory_procs_s, %struct.gs_memory_procs_s* %procs15, i32 0, i32 2
  %25 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free_object, align 8, !tbaa !42
  %26 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %27 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %28 = bitcast %struct.gs_device_filter_stack_s* %27 to i8*
  call void %25(%struct.gs_memory_s* %26, i8* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #3
  %29 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %29, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %do.end.9
  %30 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %30, i32 0, i32 79
  %31 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !43
  %32 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %32, i32 0, i32 0
  store %struct.gs_device_filter_stack_s* %31, %struct.gs_device_filter_stack_s** %next, align 8, !tbaa !44
  %33 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %34 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack17 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %34, i32 0, i32 79
  store %struct.gs_device_filter_stack_s* %33, %struct.gs_device_filter_stack_s** %dfilter_stack17, align 8, !tbaa !43
  %35 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df.addr, align 8, !tbaa !1
  %36 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %df18 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %36, i32 0, i32 1
  store %struct.gs_device_filter_s* %35, %struct.gs_device_filter_s** %df18, align 8, !tbaa !45
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.16
  %37 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %rc20 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %37, i32 0, i32 3
  %ref_count21 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc20, i32 0, i32 0
  store i64 1, i64* %ref_count21, align 8, !tbaa !46
  %38 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %39 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %rc22 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %39, i32 0, i32 3
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc22, i32 0, i32 1
  store %struct.gs_memory_s* %38, %struct.gs_memory_s** %memory, align 8, !tbaa !47
  %40 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs, align 8, !tbaa !1
  %rc23 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %40, i32 0, i32 3
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc23, i32 0, i32 2
  store void (%struct.gs_memory_s*, i8*, i8*)* @rc_free_struct_only, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !48
  br label %do.body.24

do.body.24:                                       ; preds = %do.body.19
  br label %do.cond.25

do.cond.25:                                       ; preds = %do.body.24
  br label %do.end.26

do.end.26:                                        ; preds = %do.cond.25
  br label %do.cond.27

do.cond.27:                                       ; preds = %do.end.26
  br label %do.end.28

do.end.28:                                        ; preds = %do.cond.27
  %41 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %42 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %call29 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %41, %struct.gx_device_s* %42) #3
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.28
  %43 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %tobool31 = icmp ne %struct.gx_device_s* %43, null
  br i1 %tobool31, label %if.then.32, label %if.end.62

if.then.32:                                       ; preds = %do.body.30
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  br label %do.body.34

do.body.34:                                       ; preds = %do.body.33
  br label %do.cond.35

do.cond.35:                                       ; preds = %do.body.34
  br label %do.end.36

do.end.36:                                        ; preds = %do.cond.35
  %44 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %rc37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %44, i32 0, i32 7
  %ref_count38 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 0
  %45 = load i64, i64* %ref_count38, align 8, !tbaa !26
  %add = add nsw i64 %45, -1
  store i64 %add, i64* %ref_count38, align 8, !tbaa !26
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.end.36
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %rc41 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i32 0, i32 7
  %ref_count42 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc41, i32 0, i32 0
  %47 = load i64, i64* %ref_count42, align 8, !tbaa !26
  %tobool43 = icmp ne i64 %47, 0
  br i1 %tobool43, label %if.else, label %if.then.44

if.then.44:                                       ; preds = %do.end.40
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.body.45
  br label %do.cond.47

do.cond.47:                                       ; preds = %do.body.46
  br label %do.end.48

do.end.48:                                        ; preds = %do.cond.47
  %48 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %rc49 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %48, i32 0, i32 7
  %free50 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc49, i32 0, i32 2
  %49 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free50, align 8, !tbaa !49
  %50 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %rc51 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %50, i32 0, i32 7
  %memory52 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc51, i32 0, i32 1
  %51 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory52, align 8, !tbaa !50
  %52 = load %struct.gx_device_s*, %struct.gx_device_s** %new_dev, align 8, !tbaa !1
  %53 = bitcast %struct.gx_device_s* %52 to i8*
  call void %49(%struct.gs_memory_s* %51, i8* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)) #3
  br label %do.cond.53

do.cond.53:                                       ; preds = %do.end.48
  br label %do.end.54

do.end.54:                                        ; preds = %do.cond.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  br label %do.cond.56

do.cond.56:                                       ; preds = %do.body.55
  br label %do.end.57

do.end.57:                                        ; preds = %do.cond.56
  br label %if.end.61

if.else:                                          ; preds = %do.end.40
  br label %do.body.58

do.body.58:                                       ; preds = %if.else
  br label %do.cond.59

do.cond.59:                                       ; preds = %do.body.58
  br label %do.end.60

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.end.57
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %do.body.30
  br label %do.cond.63

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64

do.end.64:                                        ; preds = %do.cond.63
  %54 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %54, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.64, %if.then.14, %if.then
  %55 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %55) #2
  %56 = bitcast %struct.gx_device_s** %new_dev to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast %struct.gs_device_filter_stack_s** %dfs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = load i32, i32* %retval
  ret i32 %58
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @rc_free_struct_only(%struct.gs_memory_s*, i8*, i8*) #0

declare i32 @gs_setdevice_no_init(%struct.gs_state_s*, %struct.gx_device_s*) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @gs_pop_device_filter(%struct.gs_memory_s* %mem, %struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %dfs_tos = alloca %struct.gs_device_filter_stack_s*, align 8
  %tos_device = alloca %struct.gx_device_s*, align 8
  %df = alloca %struct.gs_device_filter_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.gs_device_filter_stack_s** %dfs_tos to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 79
  %2 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !43
  store %struct.gs_device_filter_stack_s* %2, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %3 = bitcast %struct.gx_device_s** %tos_device to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %device = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %4, i32 0, i32 78
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %device, align 8, !tbaa !8
  store %struct.gx_device_s* %5, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %6 = bitcast %struct.gs_device_filter_s** %df to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #2
  %8 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %cmp = icmp eq %struct.gs_device_filter_stack_s* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -15, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %df1 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %9, i32 0, i32 1
  %10 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df1, align 8, !tbaa !45
  store %struct.gs_device_filter_s* %10, %struct.gs_device_filter_s** %df, align 8, !tbaa !1
  %11 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %11, i32 0, i32 0
  %12 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %next, align 8, !tbaa !44
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i32 0, i32 79
  store %struct.gs_device_filter_stack_s* %12, %struct.gs_device_filter_stack_s** %dfilter_stack2, align 8, !tbaa !43
  %14 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df, align 8, !tbaa !1
  %prepop = getelementptr inbounds %struct.gs_device_filter_s, %struct.gs_device_filter_s* %14, i32 0, i32 1
  %15 = load i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s*)** %prepop, align 8, !tbaa !51
  %16 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df, align 8, !tbaa !1
  %17 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %18 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %19 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %call = call i32 %15(%struct.gs_device_filter_s* %16, %struct.gs_memory_s* %17, %struct.gs_state_s* %18, %struct.gx_device_s* %19) #3
  store i32 %call, i32* %code, align 4, !tbaa !41
  br label %do.body

do.body:                                          ; preds = %if.end
  %20 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %tobool = icmp ne %struct.gx_device_s* %20, null
  br i1 %tobool, label %if.then.3, label %if.end.8

if.then.3:                                        ; preds = %do.body
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %21 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %rc = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %21, i32 0, i32 7
  %ref_count = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc, i32 0, i32 0
  %22 = load i64, i64* %ref_count, align 8, !tbaa !26
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %ref_count, align 8, !tbaa !26
  br label %do.body.5

do.body.5:                                        ; preds = %do.body.4
  br label %do.cond

do.cond:                                          ; preds = %do.body.5
  br label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.cond.6

do.cond.6:                                        ; preds = %do.end
  br label %do.end.7

do.end.7:                                         ; preds = %do.cond.6
  br label %if.end.8

if.end.8:                                         ; preds = %do.end.7, %do.body
  br label %do.cond.9

do.cond.9:                                        ; preds = %if.end.8
  br label %do.end.10

do.end.10:                                        ; preds = %do.cond.9
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %24 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %24, i32 0, i32 2
  %25 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device, align 8, !tbaa !37
  %call11 = call i32 @gs_setdevice_no_init(%struct.gs_state_s* %23, %struct.gx_device_s* %25) #3
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.10
  %26 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device13 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %26, i32 0, i32 2
  %27 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device13, align 8, !tbaa !37
  %tobool14 = icmp ne %struct.gx_device_s* %27, null
  br i1 %tobool14, label %if.then.15, label %if.end.48

if.then.15:                                       ; preds = %do.body.12
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.body.16
  br label %do.cond.18

do.cond.18:                                       ; preds = %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %do.cond.18
  %28 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device20 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %28, i32 0, i32 2
  %29 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device20, align 8, !tbaa !37
  %rc21 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %29, i32 0, i32 7
  %ref_count22 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc21, i32 0, i32 0
  %30 = load i64, i64* %ref_count22, align 8, !tbaa !26
  %add = add nsw i64 %30, -1
  store i64 %add, i64* %ref_count22, align 8, !tbaa !26
  br label %do.cond.23

do.cond.23:                                       ; preds = %do.end.19
  br label %do.end.24

do.end.24:                                        ; preds = %do.cond.23
  %31 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device25 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %31, i32 0, i32 2
  %32 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device25, align 8, !tbaa !37
  %rc26 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %32, i32 0, i32 7
  %ref_count27 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc26, i32 0, i32 0
  %33 = load i64, i64* %ref_count27, align 8, !tbaa !26
  %tobool28 = icmp ne i64 %33, 0
  br i1 %tobool28, label %if.else, label %if.then.29

if.then.29:                                       ; preds = %do.end.24
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.body.30
  br label %do.cond.32

do.cond.32:                                       ; preds = %do.body.31
  br label %do.end.33

do.end.33:                                        ; preds = %do.cond.32
  %34 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device34 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %34, i32 0, i32 2
  %35 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device34, align 8, !tbaa !37
  %rc35 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %35, i32 0, i32 7
  %free = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc35, i32 0, i32 2
  %36 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free, align 8, !tbaa !49
  %37 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device36 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %37, i32 0, i32 2
  %38 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device36, align 8, !tbaa !37
  %rc37 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %38, i32 0, i32 7
  %memory = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc37, i32 0, i32 1
  %39 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory, align 8, !tbaa !50
  %40 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %next_device38 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %40, i32 0, i32 2
  %41 = load %struct.gx_device_s*, %struct.gx_device_s** %next_device38, align 8, !tbaa !37
  %42 = bitcast %struct.gx_device_s* %41 to i8*
  call void %36(%struct.gs_memory_s* %39, i8* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.end.33
  br label %do.end.40

do.end.40:                                        ; preds = %do.cond.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  br label %do.cond.42

do.cond.42:                                       ; preds = %do.body.41
  br label %do.end.43

do.end.43:                                        ; preds = %do.cond.42
  br label %if.end.47

if.else:                                          ; preds = %do.end.24
  br label %do.body.44

do.body.44:                                       ; preds = %if.else
  br label %do.cond.45

do.cond.45:                                       ; preds = %do.body.44
  br label %do.end.46

do.end.46:                                        ; preds = %do.cond.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46, %do.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.body.12
  br label %do.cond.49

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50

do.end.50:                                        ; preds = %do.cond.49
  %43 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %df51 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %43, i32 0, i32 1
  store %struct.gs_device_filter_s* null, %struct.gs_device_filter_s** %df51, align 8, !tbaa !45
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.50
  %44 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %tobool53 = icmp ne %struct.gs_device_filter_stack_s* %44, null
  br i1 %tobool53, label %if.then.54, label %if.end.86

if.then.54:                                       ; preds = %do.body.52
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  br label %do.body.56

do.body.56:                                       ; preds = %do.body.55
  br label %do.cond.57

do.cond.57:                                       ; preds = %do.body.56
  br label %do.end.58

do.end.58:                                        ; preds = %do.cond.57
  %45 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %rc59 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %45, i32 0, i32 3
  %ref_count60 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc59, i32 0, i32 0
  %46 = load i64, i64* %ref_count60, align 8, !tbaa !46
  %add61 = add nsw i64 %46, -1
  store i64 %add61, i64* %ref_count60, align 8, !tbaa !46
  br label %do.cond.62

do.cond.62:                                       ; preds = %do.end.58
  br label %do.end.63

do.end.63:                                        ; preds = %do.cond.62
  %47 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %rc64 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %47, i32 0, i32 3
  %ref_count65 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc64, i32 0, i32 0
  %48 = load i64, i64* %ref_count65, align 8, !tbaa !46
  %tobool66 = icmp ne i64 %48, 0
  br i1 %tobool66, label %if.else.81, label %if.then.67

if.then.67:                                       ; preds = %do.end.63
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.body.68
  br label %do.cond.70

do.cond.70:                                       ; preds = %do.body.69
  br label %do.end.71

do.end.71:                                        ; preds = %do.cond.70
  %49 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %rc72 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %49, i32 0, i32 3
  %free73 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc72, i32 0, i32 2
  %50 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free73, align 8, !tbaa !48
  %51 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %rc74 = getelementptr inbounds %struct.gs_device_filter_stack_s, %struct.gs_device_filter_stack_s* %51, i32 0, i32 3
  %memory75 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc74, i32 0, i32 1
  %52 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory75, align 8, !tbaa !47
  %53 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfs_tos, align 8, !tbaa !1
  %54 = bitcast %struct.gs_device_filter_stack_s* %53 to i8*
  call void %50(%struct.gs_memory_s* %52, i8* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %do.cond.76

do.cond.76:                                       ; preds = %do.end.71
  br label %do.end.77

do.end.77:                                        ; preds = %do.cond.76
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.77
  br label %do.cond.79

do.cond.79:                                       ; preds = %do.body.78
  br label %do.end.80

do.end.80:                                        ; preds = %do.cond.79
  br label %if.end.85

if.else.81:                                       ; preds = %do.end.63
  br label %do.body.82

do.body.82:                                       ; preds = %if.else.81
  br label %do.cond.83

do.cond.83:                                       ; preds = %do.body.82
  br label %do.end.84

do.end.84:                                        ; preds = %do.cond.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.end.80
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %do.body.52
  br label %do.cond.87

do.cond.87:                                       ; preds = %if.end.86
  br label %do.end.88

do.end.88:                                        ; preds = %do.cond.87
  %55 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df, align 8, !tbaa !1
  %postpop = getelementptr inbounds %struct.gs_device_filter_s, %struct.gs_device_filter_s* %55, i32 0, i32 2
  %56 = load i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s*)*, i32 (%struct.gs_device_filter_s*, %struct.gs_memory_s*, %struct.gs_state_s*, %struct.gx_device_s*)** %postpop, align 8, !tbaa !52
  %57 = load %struct.gs_device_filter_s*, %struct.gs_device_filter_s** %df, align 8, !tbaa !1
  %58 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %59 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %60 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %call89 = call i32 %56(%struct.gs_device_filter_s* %57, %struct.gs_memory_s* %58, %struct.gs_state_s* %59, %struct.gx_device_s* %60) #3
  store i32 %call89, i32* %code, align 4, !tbaa !41
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.88
  %61 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %tobool91 = icmp ne %struct.gx_device_s* %61, null
  br i1 %tobool91, label %if.then.92, label %if.end.124

if.then.92:                                       ; preds = %do.body.90
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.body.93
  br label %do.cond.95

do.cond.95:                                       ; preds = %do.body.94
  br label %do.end.96

do.end.96:                                        ; preds = %do.cond.95
  %62 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %rc97 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %62, i32 0, i32 7
  %ref_count98 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc97, i32 0, i32 0
  %63 = load i64, i64* %ref_count98, align 8, !tbaa !26
  %add99 = add nsw i64 %63, -1
  store i64 %add99, i64* %ref_count98, align 8, !tbaa !26
  br label %do.cond.100

do.cond.100:                                      ; preds = %do.end.96
  br label %do.end.101

do.end.101:                                       ; preds = %do.cond.100
  %64 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %rc102 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %64, i32 0, i32 7
  %ref_count103 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc102, i32 0, i32 0
  %65 = load i64, i64* %ref_count103, align 8, !tbaa !26
  %tobool104 = icmp ne i64 %65, 0
  br i1 %tobool104, label %if.else.119, label %if.then.105

if.then.105:                                      ; preds = %do.end.101
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.body.106
  br label %do.cond.108

do.cond.108:                                      ; preds = %do.body.107
  br label %do.end.109

do.end.109:                                       ; preds = %do.cond.108
  %66 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %rc110 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %66, i32 0, i32 7
  %free111 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc110, i32 0, i32 2
  %67 = load void (%struct.gs_memory_s*, i8*, i8*)*, void (%struct.gs_memory_s*, i8*, i8*)** %free111, align 8, !tbaa !49
  %68 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %rc112 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %68, i32 0, i32 7
  %memory113 = getelementptr inbounds %struct.rc_header_s, %struct.rc_header_s* %rc112, i32 0, i32 1
  %69 = load %struct.gs_memory_s*, %struct.gs_memory_s** %memory113, align 8, !tbaa !50
  %70 = load %struct.gx_device_s*, %struct.gx_device_s** %tos_device, align 8, !tbaa !1
  %71 = bitcast %struct.gx_device_s* %70 to i8*
  call void %67(%struct.gs_memory_s* %69, i8* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #3
  br label %do.cond.114

do.cond.114:                                      ; preds = %do.end.109
  br label %do.end.115

do.end.115:                                       ; preds = %do.cond.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  br label %do.cond.117

do.cond.117:                                      ; preds = %do.body.116
  br label %do.end.118

do.end.118:                                       ; preds = %do.cond.117
  br label %if.end.123

if.else.119:                                      ; preds = %do.end.101
  br label %do.body.120

do.body.120:                                      ; preds = %if.else.119
  br label %do.cond.121

do.cond.121:                                      ; preds = %do.body.120
  br label %do.end.122

do.end.122:                                       ; preds = %do.cond.121
  br label %if.end.123

if.end.123:                                       ; preds = %do.end.122, %do.end.118
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %do.body.90
  br label %do.cond.125

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126

do.end.126:                                       ; preds = %do.cond.125
  %72 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %72, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %do.end.126, %if.then
  %73 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %73) #2
  %74 = bitcast %struct.gs_device_filter_s** %df to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast %struct.gx_device_s** %tos_device to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast %struct.gs_device_filter_stack_s** %dfs_tos to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define i32 @gs_clear_device_filters(%struct.gs_memory_s* %mem, %struct.gs_state_s* %pgs) #1 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.gs_memory_s*, align 8
  %pgs.addr = alloca %struct.gs_state_s*, align 8
  %code = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_memory_s* %mem, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  store %struct.gs_state_s* %pgs, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %0 = bitcast i32* %code to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %dfilter_stack = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i32 0, i32 79
  %2 = load %struct.gs_device_filter_stack_s*, %struct.gs_device_filter_stack_s** %dfilter_stack, align 8, !tbaa !43
  %cmp = icmp ne %struct.gs_device_filter_stack_s* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.gs_memory_s*, %struct.gs_memory_s** %mem.addr, align 8, !tbaa !1
  %4 = load %struct.gs_state_s*, %struct.gs_state_s** %pgs.addr, align 8, !tbaa !1
  %call = call i32 @gs_pop_device_filter(%struct.gs_memory_s* %3, %struct.gs_state_s* %4) #3
  store i32 %call, i32* %code, align 4, !tbaa !41
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %code, align 4, !tbaa !41
  store i32 %5, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %6 = bitcast i32* %code to i8*
  call void @llvm.lifetime.end(i64 4, i8* %6) #2
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare %struct.gs_ptr_procs_s* @basic_enum_ptrs(%struct.gs_memory_s*, i8*, i32, i32, %struct.enum_ptr_s*, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

declare void @basic_reloc_ptrs(i8*, i32, %struct.gs_memory_struct_type_s*, %struct.gc_state_s*) #0

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
!5 = !{!6, !2, i64 72}
!6 = !{!"gs_memory_s", !2, i64 0, !7, i64 8, !2, i64 192, !2, i64 200, !2, i64 208}
!7 = !{!"gs_memory_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176}
!8 = !{!9, !2, i64 1872}
!9 = !{!"gs_state_s", !10, i64 0, !2, i64 8, !2, i64 16, !11, i64 24, !10, i64 128, !15, i64 132, !10, i64 168, !16, i64 176, !16, i64 192, !10, i64 208, !10, i64 212, !18, i64 216, !3, i64 220, !19, i64 224, !19, i64 228, !20, i64 232, !21, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !2, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !12, i64 296, !22, i64 300, !10, i64 308, !10, i64 312, !10, i64 316, !12, i64 320, !10, i64 324, !10, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !3, i64 376, !2, i64 392, !2, i64 400, !10, i64 408, !2, i64 416, !2, i64 424, !23, i64 432, !3, i64 496, !2, i64 1008, !2, i64 1016, !24, i64 1024, !2, i64 1304, !2, i64 1312, !2, i64 1320, !2, i64 1328, !24, i64 1336, !2, i64 1616, !13, i64 1624, !10, i64 1648, !13, i64 1652, !10, i64 1676, !2, i64 1680, !2, i64 1688, !2, i64 1696, !2, i64 1704, !21, i64 1712, !21, i64 1720, !2, i64 1728, !10, i64 1736, !3, i64 1744, !2, i64 1792, !2, i64 1800, !15, i64 1808, !10, i64 1844, !3, i64 1848, !3, i64 1852, !2, i64 1856, !10, i64 1864, !2, i64 1872, !2, i64 1880, !25, i64 1888}
!10 = !{!"int", !3, i64 0}
!11 = !{!"gx_line_params_s", !12, i64 0, !3, i64 4, !3, i64 8, !3, i64 12, !3, i64 16, !10, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !10, i64 36, !13, i64 40, !14, i64 64}
!12 = !{!"float", !3, i64 0}
!13 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!14 = !{!"gx_dash_params_s", !2, i64 0, !10, i64 8, !12, i64 12, !10, i64 16, !12, i64 20, !10, i64 24, !10, i64 28, !12, i64 32}
!15 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!16 = !{!"gs_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"double", !3, i64 0}
!18 = !{!"short", !3, i64 0}
!19 = !{!"gs_transparency_source_s", !12, i64 0}
!20 = !{!"gs_xstate_trans_flags", !10, i64 0, !10, i64 4}
!21 = !{!"long", !3, i64 0}
!22 = !{!"gs_fixed_point_s", !10, i64 0, !10, i64 4}
!23 = !{!"gx_transfer_s", !10, i64 0, !2, i64 8, !10, i64 16, !2, i64 24, !10, i64 32, !2, i64 40, !10, i64 48, !2, i64 56}
!24 = !{!"gs_devicen_color_map_s", !10, i64 0, !3, i64 4, !10, i64 8, !10, i64 12, !21, i64 16, !3, i64 24}
!25 = !{!"gs_state_client_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24}
!26 = !{!27, !21, i64 56}
!27 = !{!"gx_device_s", !10, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !10, i64 40, !2, i64 48, !28, i64 56, !10, i64 80, !10, i64 84, !10, i64 88, !29, i64 96, !31, i64 816, !10, i64 832, !10, i64 836, !10, i64 840, !10, i64 844, !10, i64 848, !10, i64 852, !3, i64 856, !3, i64 864, !10, i64 880, !3, i64 884, !3, i64 892, !3, i64 900, !3, i64 908, !21, i64 928, !21, i64 936, !10, i64 944, !10, i64 948, !10, i64 952, !10, i64 956, !10, i64 960, !21, i64 968, !21, i64 976, !32, i64 984, !10, i64 1052, !10, i64 1056, !33, i64 1064, !2, i64 1104, !3, i64 1112, !35, i64 1120, !36, i64 1144}
!28 = !{!"rc_header_s", !21, i64 0, !2, i64 8, !2, i64 16}
!29 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !3, i64 8, !18, i64 12, !3, i64 14, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !30, i64 32, !3, i64 40, !3, i64 44, !3, i64 108, !3, i64 176, !2, i64 688, !3, i64 696, !21, i64 704, !10, i64 712}
!30 = !{!"gx_device_anti_alias_info_s", !10, i64 0, !10, i64 4}
!31 = !{!"gx_device_cached_colors_s", !21, i64 0, !21, i64 8}
!32 = !{!"gx_stroked_gradient_recognizer_s", !10, i64 0, !3, i64 4, !3, i64 36}
!33 = !{!"gdev_space_params_s", !21, i64 0, !21, i64 8, !34, i64 16, !10, i64 32, !3, i64 36}
!34 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !21, i64 8}
!35 = !{!"gx_page_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16}
!36 = !{!"gx_device_procs_s", !2, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !2, i64 56, !2, i64 64, !2, i64 72, !2, i64 80, !2, i64 88, !2, i64 96, !2, i64 104, !2, i64 112, !2, i64 120, !2, i64 128, !2, i64 136, !2, i64 144, !2, i64 152, !2, i64 160, !2, i64 168, !2, i64 176, !2, i64 184, !2, i64 192, !2, i64 200, !2, i64 208, !2, i64 216, !2, i64 224, !2, i64 232, !2, i64 240, !2, i64 248, !2, i64 256, !2, i64 264, !2, i64 272, !2, i64 280, !2, i64 288, !2, i64 296, !2, i64 304, !2, i64 312, !2, i64 320, !2, i64 328, !2, i64 336, !2, i64 344, !2, i64 352, !2, i64 360, !2, i64 368, !2, i64 376, !2, i64 384, !2, i64 392, !2, i64 400, !2, i64 408, !2, i64 416, !2, i64 424, !2, i64 432, !2, i64 440, !2, i64 448, !2, i64 456, !2, i64 464, !2, i64 472, !2, i64 480, !2, i64 488, !2, i64 496, !2, i64 504, !2, i64 512, !2, i64 520, !2, i64 528, !2, i64 536, !2, i64 544, !2, i64 552, !2, i64 560, !2, i64 568, !2, i64 576}
!37 = !{!38, !2, i64 16}
!38 = !{!"gs_device_filter_stack_s", !2, i64 0, !2, i64 8, !2, i64 16, !28, i64 24}
!39 = !{!40, !2, i64 0}
!40 = !{!"gs_device_filter_s", !2, i64 0, !2, i64 8, !2, i64 16}
!41 = !{!10, !10, i64 0}
!42 = !{!6, !2, i64 24}
!43 = !{!9, !2, i64 1880}
!44 = !{!38, !2, i64 0}
!45 = !{!38, !2, i64 8}
!46 = !{!38, !21, i64 24}
!47 = !{!38, !2, i64 32}
!48 = !{!38, !2, i64 40}
!49 = !{!27, !2, i64 72}
!50 = !{!27, !2, i64 64}
!51 = !{!40, !2, i64 8}
!52 = !{!40, !2, i64 16}
